--
--  Copyright (C) 2024-2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with A0B.ARMv7M;

package A0B.STM32F407
  with Preelaborate, No_Elaboration_Code_All
is

   EXTI0        : constant A0B.ARMv7M.External_Interrupt_Number := 6;
   EXTI1        : constant A0B.ARMv7M.External_Interrupt_Number := 7;
   EXTI2        : constant A0B.ARMv7M.External_Interrupt_Number := 8;
   EXTI3        : constant A0B.ARMv7M.External_Interrupt_Number := 9;
   EXTI4        : constant A0B.ARMv7M.External_Interrupt_Number := 10;
   DMA1_Stream0 : constant A0B.ARMv7M.External_Interrupt_Number := 11;
   DMA1_Stream1 : constant A0B.ARMv7M.External_Interrupt_Number := 12;
   DMA1_Stream2 : constant A0B.ARMv7M.External_Interrupt_Number := 13;
   DMA1_Stream3 : constant A0B.ARMv7M.External_Interrupt_Number := 14;
   DMA1_Stream4 : constant A0B.ARMv7M.External_Interrupt_Number := 15;
   DMA1_Stream5 : constant A0B.ARMv7M.External_Interrupt_Number := 16;
   DMA1_Stream6 : constant A0B.ARMv7M.External_Interrupt_Number := 17;

   EXTI9_5      : constant A0B.ARMv7M.External_Interrupt_Number := 23;

   SPI1         : constant A0B.ARMv7M.External_Interrupt_Number := 35;
   SPI2         : constant A0B.ARMv7M.External_Interrupt_Number := 36;

   EXTI15_10    : constant A0B.ARMv7M.External_Interrupt_Number := 40;

   DMA1_Stream7 : constant A0B.ARMv7M.External_Interrupt_Number := 47;

   SPI3         : constant A0B.ARMv7M.External_Interrupt_Number := 51;

   DMA2_Stream0 : constant A0B.ARMv7M.External_Interrupt_Number := 56;
   DMA2_Stream1 : constant A0B.ARMv7M.External_Interrupt_Number := 57;
   DMA2_Stream2 : constant A0B.ARMv7M.External_Interrupt_Number := 58;
   DMA2_Stream3 : constant A0B.ARMv7M.External_Interrupt_Number := 59;
   DMA2_Stream4 : constant A0B.ARMv7M.External_Interrupt_Number := 60;

   DMA2_Stream5 : constant A0B.ARMv7M.External_Interrupt_Number := 68;
   DMA2_Stream6 : constant A0B.ARMv7M.External_Interrupt_Number := 69;
   DMA2_Stream7 : constant A0B.ARMv7M.External_Interrupt_Number := 70;

   type Function_Line is
     (SPI1_MISO,
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
      SPI3_SCK);

end A0B.STM32F407;
