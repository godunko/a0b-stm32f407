--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with System;

with A0B.STM32F407.SVD.FLASH; use A0B.STM32F407.SVD.FLASH;
with A0B.STM32F407.SVD.PWR;   use A0B.STM32F407.SVD.PWR;
with A0B.STM32F407.SVD.RCC;   use A0B.STM32F407.SVD.RCC;
with A0B.Types.SVD;

package body A0B.STM32F407.Startup_Utilities is

   type CR_Register is record
      LPDS           : Boolean := False;
      PDDS           : Boolean := False;
      CWUF           : Boolean := False;
      CSBF           : Boolean := False;
      PVDE           : Boolean := False;
      PLS            : CR_PLS_Field := 16#0#;
      DBP            : Boolean := False;
      FPDS           : Boolean := False;
      Reserved_10_13 : A0B.Types.SVD.UInt4 := 16#0#;
      VOS            : Boolean := False;
      Reserved_15_31 : A0B.Types.SVD.UInt17 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;
   --  VOS bit is not defined in SVD

   for CR_Register use record
      LPDS           at 0 range 0 .. 0;
      PDDS           at 0 range 1 .. 1;
      CWUF           at 0 range 2 .. 2;
      CSBF           at 0 range 3 .. 3;
      PVDE           at 0 range 4 .. 4;
      PLS            at 0 range 5 .. 7;
      DBP            at 0 range 8 .. 8;
      FPDS           at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      VOS            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   -------------------------------------
   -- Generic_Configure_System_Clocks --
   -------------------------------------

   procedure Generic_Configure_System_Clocks is
      use type A0B.Types.Unsigned_2;
      use type A0B.Types.Unsigned_3;

   begin
      --  Enable PWR peripheral.

      declare
         Aux_APB1ENR : APB1ENR_Register with Unreferenced;

      begin
         RCC_Periph.APB1ENR.PWREN := True;
         Aux_APB1ENR := RCC_Periph.APB1ENR;
      end;

      --  Set Flash Latancy first (CPU clock frequency is going to be
      --  increased)

      FLASH_Periph.ACR.LATENCY := A0B.Types.Unsigned_3 (FLASH_LATENCY);

      while FLASH_Periph.ACR.LATENCY
              /= A0B.Types.Unsigned_3 (FLASH_LATENCY)
      loop
         --  Wait till it is taken into account

         null;
      end loop;

      --  Set regulator voltage scaling to run @84 MHz

      declare
         CR : CR_Register with Import, Address => PWR_Periph.CR'Address;

      begin
         CR.VOS :=
           (case VOS_SCALE is
               when 0 => False,
               when 1 => True,
               when others => raise Program_Error);
      end;

      --  Enable HSE and wait till it is ready.

      RCC_Periph.CR.HSEON := True;

      while not RCC_Periph.CR.HSERDY loop
         null;
      end loop;

      --  Configure PLL

      declare
         Aux : PLLCFGR_Register := RCC_Periph.PLLCFGR;

      begin
         Aux.PLLSRC   := True;  --  HSE oscillator clock selected as PLL
         Aux.PLLM.Val := A0B.Types.Unsigned_6 (PLL_M);
         Aux.PLLN.Val := A0B.Types.Unsigned_9 (PLL_N);
         Aux.PLLP.Val :=
           (case PLL_P is
               when 2      => 2#00#,
               when 4      => 2#01#,
               when 6      => 2#10#,
               when 8      => 2#11#,
               when others => raise Constraint_Error);
         Aux.PLLQ.Val := A0B.Types.Unsigned_4 (PLL_Q);

         RCC_Periph.PLLCFGR := Aux;
      end;

      --  Enable PLL and wait till it is ready.

      RCC_Periph.CR.PLLON := True;

      while not RCC_Periph.CR.PLLRDY loop
         null;
      end loop;

      --  Wait till VOSRDY flag set

      while not PWR_Periph.CSR.VOSRDY loop
         null;
      end loop;

      --  Configure AHB/APB1/APB2 prescalers

      declare
         Aux : CFGR_Register := RCC_Periph.CFGR;

      begin
         Aux.HPRE     :=
           (case AHB is
               when 1      => 2#0000#,
               when 2      => 2#1000#,
               when 4      => 2#1001#,
               when 8      => 2#1010#,
               when 16     => 2#1011#,
               when 64     => 2#1100#,
               when 128    => 2#1101#,
               when 256    => 2#1110#,
               when 512    => 2#1111#,
               when others => raise Constraint_Error);
         Aux.PPRE.Val :=
           (case APB1 is
               when 1      => 2#000#,
               when 2      => 2#100#,
               when 4      => 2#101#,
               when 8      => 2#110#,
               when 16     => 2#111#,
               when others => raise Constraint_Error)
              or
           (case APB2 is
               when 1      => 2#000_000#,
               when 2      => 2#100_000#,
               when 4      => 2#101_000#,
               when 8      => 2#110_000#,
               when 16     => 2#111_000#,
               when others => raise Constraint_Error);

         RCC_Periph.CFGR := Aux;
      end;

      --  Switch system clock source to PLL and wait when it is completed.

      RCC_Periph.CFGR.SW.Val := 2#10#;  --  10: PLL selected as system clock

      while RCC_Periph.CFGR.SWS.Val /= 2#10# loop
         null;
      end loop;

      --  Enable Instruction and Data cache in the Embedded Flash memory
      --  interface
      --
      --  Note: as recommended by [ES0182] 2.2.15, prefetch is disabled to
      --  minimize internal noise impacting ADC accuracy.

      declare
         Aux : ACR_Register := FLASH_Periph.ACR;

      begin
         Aux.ICEN   := True;
         Aux.DCEN   := True;
         Aux.PRFTEN := False;

         FLASH_Periph.ACR := Aux;
      end;
   end Generic_Configure_System_Clocks;

end A0B.STM32F407.Startup_Utilities;
