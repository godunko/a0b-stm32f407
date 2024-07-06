--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with A0B.ARMv7M;

package A0B.STM32F407
  with Preelaborate
is

   EXTI0     : constant A0B.ARMv7M.External_Interrupt_Number := 6;
   EXTI1     : constant A0B.ARMv7M.External_Interrupt_Number := 7;
   EXTI2     : constant A0B.ARMv7M.External_Interrupt_Number := 8;
   EXTI3     : constant A0B.ARMv7M.External_Interrupt_Number := 9;
   EXTI4     : constant A0B.ARMv7M.External_Interrupt_Number := 10;

   EXTI9_5   : constant A0B.ARMv7M.External_Interrupt_Number := 23;

   SPI1      : constant A0B.ARMv7M.External_Interrupt_Number := 35;
   SPI2      : constant A0B.ARMv7M.External_Interrupt_Number := 36;

   EXTI15_10 : constant A0B.ARMv7M.External_Interrupt_Number := 40;

   SPI3      : constant A0B.ARMv7M.External_Interrupt_Number := 51;

   type Function_Line is
     (
      SPI1_MISO,
      SPI1_MOSI,
      SPI1_NSS,
      SPI1_SCK,
      SPI2_MISO,
      SPI2_MOSI,
      SPI2_NSS,
      SPI2_SCK,
      SPI3_MISO,
      SPI3_MOSI,
      SPI3_NSS,
      SPI3_SCK
     );

end A0B.STM32F407;
