pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F407.svd

pragma Restrictions (No_Elaboration_Code);

with A0B.Types.SVD;
with System;

package A0B.STM32F407.SVD.Ethernet is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DMABMR_DSL_Field is A0B.Types.SVD.UInt5;
   subtype DMABMR_PBL_Field is A0B.Types.SVD.UInt6;
   subtype DMABMR_RTPR_Field is A0B.Types.SVD.UInt2;
   subtype DMABMR_RDP_Field is A0B.Types.SVD.UInt6;

   --  Ethernet DMA bus mode register
   type DMABMR_Register is record
      --  SR
      SR             : Boolean := True;
      --  DA
      DA             : Boolean := False;
      --  DSL
      DSL            : DMABMR_DSL_Field := 16#0#;
      --  EDFE
      EDFE           : Boolean := False;
      --  PBL
      PBL            : DMABMR_PBL_Field := 16#21#;
      --  RTPR
      RTPR           : DMABMR_RTPR_Field := 16#0#;
      --  FB
      FB             : Boolean := False;
      --  RDP
      RDP            : DMABMR_RDP_Field := 16#0#;
      --  USP
      USP            : Boolean := False;
      --  FPM
      FPM            : Boolean := False;
      --  AAB
      AAB            : Boolean := False;
      --  MB
      MB             : Boolean := False;
      --  unspecified
      Reserved_27_31 : A0B.Types.SVD.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for DMABMR_Register use record
      SR             at 0 range 0 .. 0;
      DA             at 0 range 1 .. 1;
      DSL            at 0 range 2 .. 6;
      EDFE           at 0 range 7 .. 7;
      PBL            at 0 range 8 .. 13;
      RTPR           at 0 range 14 .. 15;
      FB             at 0 range 16 .. 16;
      RDP            at 0 range 17 .. 22;
      USP            at 0 range 23 .. 23;
      FPM            at 0 range 24 .. 24;
      AAB            at 0 range 25 .. 25;
      MB             at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DMASR_RPS_Field is A0B.Types.SVD.UInt3;
   subtype DMASR_TPS_Field is A0B.Types.SVD.UInt3;
   subtype DMASR_EBS_Field is A0B.Types.SVD.UInt3;

   --  Ethernet DMA status register
   type DMASR_Register is record
      --  TS
      TS             : Boolean := False;
      --  TPSS
      TPSS           : Boolean := False;
      --  TBUS
      TBUS           : Boolean := False;
      --  TJTS
      TJTS           : Boolean := False;
      --  ROS
      ROS            : Boolean := False;
      --  TUS
      TUS            : Boolean := False;
      --  RS
      RS             : Boolean := False;
      --  RBUS
      RBUS           : Boolean := False;
      --  RPSS
      RPSS           : Boolean := False;
      --  PWTS
      PWTS           : Boolean := False;
      --  ETS
      ETS            : Boolean := False;
      --  unspecified
      Reserved_11_12 : A0B.Types.SVD.UInt2 := 16#0#;
      --  FBES
      FBES           : Boolean := False;
      --  ERS
      ERS            : Boolean := False;
      --  AIS
      AIS            : Boolean := False;
      --  NIS
      NIS            : Boolean := False;
      --  Read-only. RPS
      RPS            : DMASR_RPS_Field := 16#0#;
      --  Read-only. TPS
      TPS            : DMASR_TPS_Field := 16#0#;
      --  Read-only. EBS
      EBS            : DMASR_EBS_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : A0B.Types.SVD.Bit := 16#0#;
      --  Read-only. MMCS
      MMCS           : Boolean := False;
      --  Read-only. PMTS
      PMTS           : Boolean := False;
      --  Read-only. TSTS
      TSTS           : Boolean := False;
      --  unspecified
      Reserved_30_31 : A0B.Types.SVD.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for DMASR_Register use record
      TS             at 0 range 0 .. 0;
      TPSS           at 0 range 1 .. 1;
      TBUS           at 0 range 2 .. 2;
      TJTS           at 0 range 3 .. 3;
      ROS            at 0 range 4 .. 4;
      TUS            at 0 range 5 .. 5;
      RS             at 0 range 6 .. 6;
      RBUS           at 0 range 7 .. 7;
      RPSS           at 0 range 8 .. 8;
      PWTS           at 0 range 9 .. 9;
      ETS            at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      FBES           at 0 range 13 .. 13;
      ERS            at 0 range 14 .. 14;
      AIS            at 0 range 15 .. 15;
      NIS            at 0 range 16 .. 16;
      RPS            at 0 range 17 .. 19;
      TPS            at 0 range 20 .. 22;
      EBS            at 0 range 23 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      MMCS           at 0 range 27 .. 27;
      PMTS           at 0 range 28 .. 28;
      TSTS           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DMAOMR_RTC_Field is A0B.Types.SVD.UInt2;
   subtype DMAOMR_TTC_Field is A0B.Types.SVD.UInt3;

   --  Ethernet DMA operation mode register
   type DMAOMR_Register is record
      --  unspecified
      Reserved_0_0   : A0B.Types.SVD.Bit := 16#0#;
      --  SR
      SR             : Boolean := False;
      --  OSF
      OSF            : Boolean := False;
      --  RTC
      RTC            : DMAOMR_RTC_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : A0B.Types.SVD.Bit := 16#0#;
      --  FUGF
      FUGF           : Boolean := False;
      --  FEF
      FEF            : Boolean := False;
      --  unspecified
      Reserved_8_12  : A0B.Types.SVD.UInt5 := 16#0#;
      --  ST
      ST             : Boolean := False;
      --  TTC
      TTC            : DMAOMR_TTC_Field := 16#0#;
      --  unspecified
      Reserved_17_19 : A0B.Types.SVD.UInt3 := 16#0#;
      --  FTF
      FTF            : Boolean := False;
      --  TSF
      TSF            : Boolean := False;
      --  unspecified
      Reserved_22_23 : A0B.Types.SVD.UInt2 := 16#0#;
      --  DFRF
      DFRF           : Boolean := False;
      --  RSF
      RSF            : Boolean := False;
      --  DTCEFD
      DTCEFD         : Boolean := False;
      --  unspecified
      Reserved_27_31 : A0B.Types.SVD.UInt5 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for DMAOMR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SR             at 0 range 1 .. 1;
      OSF            at 0 range 2 .. 2;
      RTC            at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      FUGF           at 0 range 6 .. 6;
      FEF            at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      ST             at 0 range 13 .. 13;
      TTC            at 0 range 14 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      FTF            at 0 range 20 .. 20;
      TSF            at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DFRF           at 0 range 24 .. 24;
      RSF            at 0 range 25 .. 25;
      DTCEFD         at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Ethernet DMA interrupt enable register
   type DMAIER_Register is record
      --  TIE
      TIE            : Boolean := False;
      --  TPSIE
      TPSIE          : Boolean := False;
      --  TBUIE
      TBUIE          : Boolean := False;
      --  TJTIE
      TJTIE          : Boolean := False;
      --  ROIE
      ROIE           : Boolean := False;
      --  TUIE
      TUIE           : Boolean := False;
      --  RIE
      RIE            : Boolean := False;
      --  RBUIE
      RBUIE          : Boolean := False;
      --  RPSIE
      RPSIE          : Boolean := False;
      --  RWTIE
      RWTIE          : Boolean := False;
      --  ETIE
      ETIE           : Boolean := False;
      --  unspecified
      Reserved_11_12 : A0B.Types.SVD.UInt2 := 16#0#;
      --  FBEIE
      FBEIE          : Boolean := False;
      --  ERIE
      ERIE           : Boolean := False;
      --  AISE
      AISE           : Boolean := False;
      --  NISE
      NISE           : Boolean := False;
      --  unspecified
      Reserved_17_31 : A0B.Types.SVD.UInt15 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for DMAIER_Register use record
      TIE            at 0 range 0 .. 0;
      TPSIE          at 0 range 1 .. 1;
      TBUIE          at 0 range 2 .. 2;
      TJTIE          at 0 range 3 .. 3;
      ROIE           at 0 range 4 .. 4;
      TUIE           at 0 range 5 .. 5;
      RIE            at 0 range 6 .. 6;
      RBUIE          at 0 range 7 .. 7;
      RPSIE          at 0 range 8 .. 8;
      RWTIE          at 0 range 9 .. 9;
      ETIE           at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      FBEIE          at 0 range 13 .. 13;
      ERIE           at 0 range 14 .. 14;
      AISE           at 0 range 15 .. 15;
      NISE           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype DMAMFBOCR_MFC_Field is A0B.Types.SVD.UInt16;
   subtype DMAMFBOCR_MFA_Field is A0B.Types.SVD.UInt11;

   --  Ethernet DMA missed frame and buffer overflow counter register
   type DMAMFBOCR_Register is record
      --  MFC
      MFC            : DMAMFBOCR_MFC_Field := 16#0#;
      --  OMFC
      OMFC           : Boolean := False;
      --  MFA
      MFA            : DMAMFBOCR_MFA_Field := 16#0#;
      --  OFOC
      OFOC           : Boolean := False;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for DMAMFBOCR_Register use record
      MFC            at 0 range 0 .. 15;
      OMFC           at 0 range 16 .. 16;
      MFA            at 0 range 17 .. 27;
      OFOC           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DMARSWTR_RSWTC_Field is A0B.Types.SVD.Byte;

   --  Ethernet DMA receive status watchdog timer register
   type DMARSWTR_Register is record
      --  RSWTC
      RSWTC         : DMARSWTR_RSWTC_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for DMARSWTR_Register use record
      RSWTC         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MACCR_BL_Field is A0B.Types.SVD.UInt2;
   subtype MACCR_IFG_Field is A0B.Types.SVD.UInt3;

   --  Ethernet MAC configuration register
   type MACCR_Register is record
      --  unspecified
      Reserved_0_1   : A0B.Types.SVD.UInt2 := 16#0#;
      --  RE
      RE             : Boolean := False;
      --  TE
      TE             : Boolean := False;
      --  DC
      DC             : Boolean := False;
      --  BL
      BL             : MACCR_BL_Field := 16#0#;
      --  APCS
      APCS           : Boolean := False;
      --  unspecified
      Reserved_8_8   : A0B.Types.SVD.Bit := 16#0#;
      --  RD
      RD             : Boolean := False;
      --  IPCO
      IPCO           : Boolean := False;
      --  DM
      DM             : Boolean := False;
      --  LM
      LM             : Boolean := False;
      --  ROD
      ROD            : Boolean := False;
      --  FES
      FES            : Boolean := False;
      --  unspecified
      Reserved_15_15 : A0B.Types.SVD.Bit := 16#1#;
      --  CSD
      CSD            : Boolean := False;
      --  IFG
      IFG            : MACCR_IFG_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : A0B.Types.SVD.UInt2 := 16#0#;
      --  JD
      JD             : Boolean := False;
      --  WD
      WD             : Boolean := False;
      --  unspecified
      Reserved_24_24 : A0B.Types.SVD.Bit := 16#0#;
      --  CSTF
      CSTF           : Boolean := False;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACCR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RE             at 0 range 2 .. 2;
      TE             at 0 range 3 .. 3;
      DC             at 0 range 4 .. 4;
      BL             at 0 range 5 .. 6;
      APCS           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      RD             at 0 range 9 .. 9;
      IPCO           at 0 range 10 .. 10;
      DM             at 0 range 11 .. 11;
      LM             at 0 range 12 .. 12;
      ROD            at 0 range 13 .. 13;
      FES            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSD            at 0 range 16 .. 16;
      IFG            at 0 range 17 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      JD             at 0 range 22 .. 22;
      WD             at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      CSTF           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Ethernet MAC frame filter register
   type MACFFR_Register is record
      --  PM
      PM             : Boolean := False;
      --  HU
      HU             : Boolean := False;
      --  HM
      HM             : Boolean := False;
      --  DAIF
      DAIF           : Boolean := False;
      --  RAM
      RAM            : Boolean := False;
      --  BFD
      BFD            : Boolean := False;
      --  PCF
      PCF            : Boolean := False;
      --  SAIF
      SAIF           : Boolean := False;
      --  SAF
      SAF            : Boolean := False;
      --  HPF
      HPF            : Boolean := False;
      --  unspecified
      Reserved_10_30 : A0B.Types.SVD.UInt21 := 16#0#;
      --  RA
      RA             : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACFFR_Register use record
      PM             at 0 range 0 .. 0;
      HU             at 0 range 1 .. 1;
      HM             at 0 range 2 .. 2;
      DAIF           at 0 range 3 .. 3;
      RAM            at 0 range 4 .. 4;
      BFD            at 0 range 5 .. 5;
      PCF            at 0 range 6 .. 6;
      SAIF           at 0 range 7 .. 7;
      SAF            at 0 range 8 .. 8;
      HPF            at 0 range 9 .. 9;
      Reserved_10_30 at 0 range 10 .. 30;
      RA             at 0 range 31 .. 31;
   end record;

   subtype MACMIIAR_CR_Field is A0B.Types.SVD.UInt3;
   subtype MACMIIAR_MR_Field is A0B.Types.SVD.UInt5;
   subtype MACMIIAR_PA_Field is A0B.Types.SVD.UInt5;

   --  Ethernet MAC MII address register
   type MACMIIAR_Register is record
      --  MB
      MB             : Boolean := False;
      --  MW
      MW             : Boolean := False;
      --  CR
      CR             : MACMIIAR_CR_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : A0B.Types.SVD.Bit := 16#0#;
      --  MR
      MR             : MACMIIAR_MR_Field := 16#0#;
      --  PA
      PA             : MACMIIAR_PA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACMIIAR_Register use record
      MB             at 0 range 0 .. 0;
      MW             at 0 range 1 .. 1;
      CR             at 0 range 2 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      MR             at 0 range 6 .. 10;
      PA             at 0 range 11 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MACMIIDR_TD_Field is A0B.Types.SVD.UInt16;

   --  Ethernet MAC MII data register
   type MACMIIDR_Register is record
      --  TD
      TD             : MACMIIDR_TD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACMIIDR_Register use record
      TD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MACFCR_PLT_Field is A0B.Types.SVD.UInt2;
   subtype MACFCR_PT_Field is A0B.Types.SVD.UInt16;

   --  Ethernet MAC flow control register
   type MACFCR_Register is record
      --  FCB
      FCB           : Boolean := False;
      --  TFCE
      TFCE          : Boolean := False;
      --  RFCE
      RFCE          : Boolean := False;
      --  UPFD
      UPFD          : Boolean := False;
      --  PLT
      PLT           : MACFCR_PLT_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : A0B.Types.SVD.Bit := 16#0#;
      --  ZQPD
      ZQPD          : Boolean := False;
      --  unspecified
      Reserved_8_15 : A0B.Types.SVD.Byte := 16#0#;
      --  PT
      PT            : MACFCR_PT_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACFCR_Register use record
      FCB           at 0 range 0 .. 0;
      TFCE          at 0 range 1 .. 1;
      RFCE          at 0 range 2 .. 2;
      UPFD          at 0 range 3 .. 3;
      PLT           at 0 range 4 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      ZQPD          at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      PT            at 0 range 16 .. 31;
   end record;

   subtype MACVLANTR_VLANTI_Field is A0B.Types.SVD.UInt16;

   --  Ethernet MAC VLAN tag register
   type MACVLANTR_Register is record
      --  VLANTI
      VLANTI         : MACVLANTR_VLANTI_Field := 16#0#;
      --  VLANTC
      VLANTC         : Boolean := False;
      --  unspecified
      Reserved_17_31 : A0B.Types.SVD.UInt15 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACVLANTR_Register use record
      VLANTI         at 0 range 0 .. 15;
      VLANTC         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Ethernet MAC PMT control and status register
   type MACPMTCSR_Register is record
      --  PD
      PD             : Boolean := False;
      --  MPE
      MPE            : Boolean := False;
      --  WFE
      WFE            : Boolean := False;
      --  unspecified
      Reserved_3_4   : A0B.Types.SVD.UInt2 := 16#0#;
      --  MPR
      MPR            : Boolean := False;
      --  WFR
      WFR            : Boolean := False;
      --  unspecified
      Reserved_7_8   : A0B.Types.SVD.UInt2 := 16#0#;
      --  GU
      GU             : Boolean := False;
      --  unspecified
      Reserved_10_30 : A0B.Types.SVD.UInt21 := 16#0#;
      --  WFFRPR
      WFFRPR         : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACPMTCSR_Register use record
      PD             at 0 range 0 .. 0;
      MPE            at 0 range 1 .. 1;
      WFE            at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      MPR            at 0 range 5 .. 5;
      WFR            at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      GU             at 0 range 9 .. 9;
      Reserved_10_30 at 0 range 10 .. 30;
      WFFRPR         at 0 range 31 .. 31;
   end record;

   --  Ethernet MAC debug register
   type MACDBGR_Register is record
      --  Read-only. CR
      CR            : Boolean;
      --  Read-only. CSR
      CSR           : Boolean;
      --  Read-only. ROR
      ROR           : Boolean;
      --  Read-only. MCF
      MCF           : Boolean;
      --  Read-only. MCP
      MCP           : Boolean;
      --  Read-only. MCFHP
      MCFHP         : Boolean;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACDBGR_Register use record
      CR            at 0 range 0 .. 0;
      CSR           at 0 range 1 .. 1;
      ROR           at 0 range 2 .. 2;
      MCF           at 0 range 3 .. 3;
      MCP           at 0 range 4 .. 4;
      MCFHP         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Ethernet MAC interrupt status register
   type MACSR_Register is record
      --  unspecified
      Reserved_0_2   : A0B.Types.SVD.UInt3 := 16#0#;
      --  Read-only. PMTS
      PMTS           : Boolean := False;
      --  Read-only. MMCS
      MMCS           : Boolean := False;
      --  Read-only. MMCRS
      MMCRS          : Boolean := False;
      --  Read-only. MMCTS
      MMCTS          : Boolean := False;
      --  unspecified
      Reserved_7_8   : A0B.Types.SVD.UInt2 := 16#0#;
      --  TSTS
      TSTS           : Boolean := False;
      --  unspecified
      Reserved_10_31 : A0B.Types.SVD.UInt22 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACSR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PMTS           at 0 range 3 .. 3;
      MMCS           at 0 range 4 .. 4;
      MMCRS          at 0 range 5 .. 5;
      MMCTS          at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      TSTS           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Ethernet MAC interrupt mask register
   type MACIMR_Register is record
      --  unspecified
      Reserved_0_2   : A0B.Types.SVD.UInt3 := 16#0#;
      --  PMTIM
      PMTIM          : Boolean := False;
      --  unspecified
      Reserved_4_8   : A0B.Types.SVD.UInt5 := 16#0#;
      --  TSTIM
      TSTIM          : Boolean := False;
      --  unspecified
      Reserved_10_31 : A0B.Types.SVD.UInt22 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACIMR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PMTIM          at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      TSTIM          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype MACA0HR_MACA0H_Field is A0B.Types.SVD.UInt16;

   --  Ethernet MAC address 0 high register
   type MACA0HR_Register is record
      --  MAC address0 high
      MACA0H         : MACA0HR_MACA0H_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_30 : A0B.Types.SVD.UInt15 := 16#10#;
      --  Read-only. Always 1
      MO             : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACA0HR_Register use record
      MACA0H         at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      MO             at 0 range 31 .. 31;
   end record;

   subtype MACA1HR_MACA1H_Field is A0B.Types.SVD.UInt16;
   subtype MACA1HR_MBC_Field is A0B.Types.SVD.UInt6;

   --  Ethernet MAC address 1 high register
   type MACA1HR_Register is record
      --  MACA1H
      MACA1H         : MACA1HR_MACA1H_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_23 : A0B.Types.SVD.Byte := 16#0#;
      --  MBC
      MBC            : MACA1HR_MBC_Field := 16#0#;
      --  SA
      SA             : Boolean := False;
      --  AE
      AE             : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACA1HR_Register use record
      MACA1H         at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      MBC            at 0 range 24 .. 29;
      SA             at 0 range 30 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   subtype MACA2HR_MAC2AH_Field is A0B.Types.SVD.UInt16;
   subtype MACA2HR_MBC_Field is A0B.Types.SVD.UInt6;

   --  Ethernet MAC address 2 high register
   type MACA2HR_Register is record
      --  MAC2AH
      MAC2AH         : MACA2HR_MAC2AH_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_23 : A0B.Types.SVD.Byte := 16#0#;
      --  MBC
      MBC            : MACA2HR_MBC_Field := 16#0#;
      --  SA
      SA             : Boolean := False;
      --  AE
      AE             : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACA2HR_Register use record
      MAC2AH         at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      MBC            at 0 range 24 .. 29;
      SA             at 0 range 30 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   subtype MACA2LR_MACA2L_Field is A0B.Types.SVD.UInt31;

   --  Ethernet MAC address 2 low register
   type MACA2LR_Register is record
      --  MACA2L
      MACA2L         : MACA2LR_MACA2L_Field := 16#7FFFFFFF#;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit := 16#1#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACA2LR_Register use record
      MACA2L         at 0 range 0 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MACA3HR_MACA3H_Field is A0B.Types.SVD.UInt16;
   subtype MACA3HR_MBC_Field is A0B.Types.SVD.UInt6;

   --  Ethernet MAC address 3 high register
   type MACA3HR_Register is record
      --  MACA3H
      MACA3H         : MACA3HR_MACA3H_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_23 : A0B.Types.SVD.Byte := 16#0#;
      --  MBC
      MBC            : MACA3HR_MBC_Field := 16#0#;
      --  SA
      SA             : Boolean := False;
      --  AE
      AE             : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MACA3HR_Register use record
      MACA3H         at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      MBC            at 0 range 24 .. 29;
      SA             at 0 range 30 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Ethernet MMC control register
   type MMCCR_Register is record
      --  CR
      CR            : Boolean := False;
      --  CSR
      CSR           : Boolean := False;
      --  ROR
      ROR           : Boolean := False;
      --  MCF
      MCF           : Boolean := False;
      --  MCP
      MCP           : Boolean := False;
      --  MCFHP
      MCFHP         : Boolean := False;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MMCCR_Register use record
      CR            at 0 range 0 .. 0;
      CSR           at 0 range 1 .. 1;
      ROR           at 0 range 2 .. 2;
      MCF           at 0 range 3 .. 3;
      MCP           at 0 range 4 .. 4;
      MCFHP         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Ethernet MMC receive interrupt register
   type MMCRIR_Register is record
      --  unspecified
      Reserved_0_4   : A0B.Types.SVD.UInt5 := 16#0#;
      --  RFCES
      RFCES          : Boolean := False;
      --  RFAES
      RFAES          : Boolean := False;
      --  unspecified
      Reserved_7_16  : A0B.Types.SVD.UInt10 := 16#0#;
      --  RGUFS
      RGUFS          : Boolean := False;
      --  unspecified
      Reserved_18_31 : A0B.Types.SVD.UInt14 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MMCRIR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      RFCES          at 0 range 5 .. 5;
      RFAES          at 0 range 6 .. 6;
      Reserved_7_16  at 0 range 7 .. 16;
      RGUFS          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Ethernet MMC transmit interrupt register
   type MMCTIR_Register is record
      --  unspecified
      Reserved_0_13  : A0B.Types.SVD.UInt14;
      --  Read-only. TGFSCS
      TGFSCS         : Boolean;
      --  Read-only. TGFMSCS
      TGFMSCS        : Boolean;
      --  unspecified
      Reserved_16_20 : A0B.Types.SVD.UInt5;
      --  Read-only. TGFS
      TGFS           : Boolean;
      --  unspecified
      Reserved_22_31 : A0B.Types.SVD.UInt10;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MMCTIR_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      TGFSCS         at 0 range 14 .. 14;
      TGFMSCS        at 0 range 15 .. 15;
      Reserved_16_20 at 0 range 16 .. 20;
      TGFS           at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Ethernet MMC receive interrupt mask register
   type MMCRIMR_Register is record
      --  unspecified
      Reserved_0_4   : A0B.Types.SVD.UInt5 := 16#0#;
      --  RFCEM
      RFCEM          : Boolean := False;
      --  RFAEM
      RFAEM          : Boolean := False;
      --  unspecified
      Reserved_7_16  : A0B.Types.SVD.UInt10 := 16#0#;
      --  RGUFM
      RGUFM          : Boolean := False;
      --  unspecified
      Reserved_18_31 : A0B.Types.SVD.UInt14 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MMCRIMR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      RFCEM          at 0 range 5 .. 5;
      RFAEM          at 0 range 6 .. 6;
      Reserved_7_16  at 0 range 7 .. 16;
      RGUFM          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Ethernet MMC transmit interrupt mask register
   type MMCTIMR_Register is record
      --  unspecified
      Reserved_0_13  : A0B.Types.SVD.UInt14 := 16#0#;
      --  TGFSCM
      TGFSCM         : Boolean := False;
      --  TGFMSCM
      TGFMSCM        : Boolean := False;
      --  TGFM
      TGFM           : Boolean := False;
      --  unspecified
      Reserved_17_31 : A0B.Types.SVD.UInt15 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for MMCTIMR_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      TGFSCM         at 0 range 14 .. 14;
      TGFMSCM        at 0 range 15 .. 15;
      TGFM           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype PTPTSCR_TSCNT_Field is A0B.Types.SVD.UInt2;

   --  Ethernet PTP time stamp control register
   type PTPTSCR_Register is record
      --  TSE
      TSE            : Boolean := False;
      --  TSFCU
      TSFCU          : Boolean := False;
      --  TSSTI
      TSSTI          : Boolean := False;
      --  TSSTU
      TSSTU          : Boolean := False;
      --  TSITE
      TSITE          : Boolean := False;
      --  TTSARU
      TTSARU         : Boolean := False;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2 := 16#0#;
      --  TSSARFE
      TSSARFE        : Boolean := False;
      --  TSSSR
      TSSSR          : Boolean := False;
      --  TSPTPPSV2E
      TSPTPPSV2E     : Boolean := False;
      --  TSSPTPOEFE
      TSSPTPOEFE     : Boolean := False;
      --  TSSIPV6FE
      TSSIPV6FE      : Boolean := False;
      --  TSSIPV4FE
      TSSIPV4FE      : Boolean := True;
      --  TSSEME
      TSSEME         : Boolean := False;
      --  TSSMRME
      TSSMRME        : Boolean := False;
      --  TSCNT
      TSCNT          : PTPTSCR_TSCNT_Field := 16#0#;
      --  TSPFFMAE
      TSPFFMAE       : Boolean := False;
      --  unspecified
      Reserved_19_31 : A0B.Types.SVD.UInt13 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PTPTSCR_Register use record
      TSE            at 0 range 0 .. 0;
      TSFCU          at 0 range 1 .. 1;
      TSSTI          at 0 range 2 .. 2;
      TSSTU          at 0 range 3 .. 3;
      TSITE          at 0 range 4 .. 4;
      TTSARU         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TSSARFE        at 0 range 8 .. 8;
      TSSSR          at 0 range 9 .. 9;
      TSPTPPSV2E     at 0 range 10 .. 10;
      TSSPTPOEFE     at 0 range 11 .. 11;
      TSSIPV6FE      at 0 range 12 .. 12;
      TSSIPV4FE      at 0 range 13 .. 13;
      TSSEME         at 0 range 14 .. 14;
      TSSMRME        at 0 range 15 .. 15;
      TSCNT          at 0 range 16 .. 17;
      TSPFFMAE       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype PTPSSIR_STSSI_Field is A0B.Types.SVD.Byte;

   --  Ethernet PTP subsecond increment register
   type PTPSSIR_Register is record
      --  STSSI
      STSSI         : PTPSSIR_STSSI_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PTPSSIR_Register use record
      STSSI         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PTPTSLR_STSS_Field is A0B.Types.SVD.UInt31;

   --  Ethernet PTP time stamp low register
   type PTPTSLR_Register is record
      --  Read-only. STSS
      STSS  : PTPTSLR_STSS_Field;
      --  Read-only. STPNS
      STPNS : Boolean;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PTPTSLR_Register use record
      STSS  at 0 range 0 .. 30;
      STPNS at 0 range 31 .. 31;
   end record;

   subtype PTPTSLUR_TSUSS_Field is A0B.Types.SVD.UInt31;

   --  Ethernet PTP time stamp low update register
   type PTPTSLUR_Register is record
      --  TSUSS
      TSUSS  : PTPTSLUR_TSUSS_Field := 16#0#;
      --  TSUPNS
      TSUPNS : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PTPTSLUR_Register use record
      TSUSS  at 0 range 0 .. 30;
      TSUPNS at 0 range 31 .. 31;
   end record;

   --  Ethernet PTP time stamp status register
   type PTPTSSR_Register is record
      --  Read-only. TSSO
      TSSO          : Boolean;
      --  Read-only. TSTTR
      TSTTR         : Boolean;
      --  unspecified
      Reserved_2_31 : A0B.Types.SVD.UInt30;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PTPTSSR_Register use record
      TSSO          at 0 range 0 .. 0;
      TSTTR         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Ethernet PTP PPS control register
   type PTPPPSCR_Register is record
      --  Read-only. TSSO
      TSSO          : Boolean;
      --  Read-only. TSTTR
      TSTTR         : Boolean;
      --  unspecified
      Reserved_2_31 : A0B.Types.SVD.UInt30;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PTPPPSCR_Register use record
      TSSO          at 0 range 0 .. 0;
      TSTTR         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Ethernet: DMA controller operation
   type Ethernet_DMA_Peripheral is record
      --  Ethernet DMA bus mode register
      DMABMR    : aliased DMABMR_Register;
      pragma Volatile_Full_Access (DMABMR);
      --  Ethernet DMA transmit poll demand register
      DMATPDR   : aliased A0B.Types.SVD.UInt32;
      --  EHERNET DMA receive poll demand register
      DMARPDR   : aliased A0B.Types.SVD.UInt32;
      --  Ethernet DMA receive descriptor list address register
      DMARDLAR  : aliased A0B.Types.SVD.UInt32;
      --  Ethernet DMA transmit descriptor list address register
      DMATDLAR  : aliased A0B.Types.SVD.UInt32;
      --  Ethernet DMA status register
      DMASR     : aliased DMASR_Register;
      pragma Volatile_Full_Access (DMASR);
      --  Ethernet DMA operation mode register
      DMAOMR    : aliased DMAOMR_Register;
      pragma Volatile_Full_Access (DMAOMR);
      --  Ethernet DMA interrupt enable register
      DMAIER    : aliased DMAIER_Register;
      pragma Volatile_Full_Access (DMAIER);
      --  Ethernet DMA missed frame and buffer overflow counter register
      DMAMFBOCR : aliased DMAMFBOCR_Register;
      pragma Volatile_Full_Access (DMAMFBOCR);
      --  Ethernet DMA receive status watchdog timer register
      DMARSWTR  : aliased DMARSWTR_Register;
      pragma Volatile_Full_Access (DMARSWTR);
      --  Ethernet DMA current host transmit descriptor register
      DMACHTDR  : aliased A0B.Types.SVD.UInt32;
      --  Ethernet DMA current host receive descriptor register
      DMACHRDR  : aliased A0B.Types.SVD.UInt32;
      --  Ethernet DMA current host transmit buffer address register
      DMACHTBAR : aliased A0B.Types.SVD.UInt32;
      --  Ethernet DMA current host receive buffer address register
      DMACHRBAR : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for Ethernet_DMA_Peripheral use record
      DMABMR    at 16#0# range 0 .. 31;
      DMATPDR   at 16#4# range 0 .. 31;
      DMARPDR   at 16#8# range 0 .. 31;
      DMARDLAR  at 16#C# range 0 .. 31;
      DMATDLAR  at 16#10# range 0 .. 31;
      DMASR     at 16#14# range 0 .. 31;
      DMAOMR    at 16#18# range 0 .. 31;
      DMAIER    at 16#1C# range 0 .. 31;
      DMAMFBOCR at 16#20# range 0 .. 31;
      DMARSWTR  at 16#24# range 0 .. 31;
      DMACHTDR  at 16#48# range 0 .. 31;
      DMACHRDR  at 16#4C# range 0 .. 31;
      DMACHTBAR at 16#50# range 0 .. 31;
      DMACHRBAR at 16#54# range 0 .. 31;
   end record;

   --  Ethernet: DMA controller operation
   Ethernet_DMA_Periph : aliased Ethernet_DMA_Peripheral
     with Import, Address => Ethernet_DMA_Base;

   --  Ethernet: media access control (MAC)
   type Ethernet_MAC_Peripheral is record
      --  Ethernet MAC configuration register
      MACCR     : aliased MACCR_Register;
      pragma Volatile_Full_Access (MACCR);
      --  Ethernet MAC frame filter register
      MACFFR    : aliased MACFFR_Register;
      pragma Volatile_Full_Access (MACFFR);
      --  Ethernet MAC hash table high register
      MACHTHR   : aliased A0B.Types.SVD.UInt32;
      --  Ethernet MAC hash table low register
      MACHTLR   : aliased A0B.Types.SVD.UInt32;
      --  Ethernet MAC MII address register
      MACMIIAR  : aliased MACMIIAR_Register;
      pragma Volatile_Full_Access (MACMIIAR);
      --  Ethernet MAC MII data register
      MACMIIDR  : aliased MACMIIDR_Register;
      pragma Volatile_Full_Access (MACMIIDR);
      --  Ethernet MAC flow control register
      MACFCR    : aliased MACFCR_Register;
      pragma Volatile_Full_Access (MACFCR);
      --  Ethernet MAC VLAN tag register
      MACVLANTR : aliased MACVLANTR_Register;
      pragma Volatile_Full_Access (MACVLANTR);
      --  Ethernet MAC PMT control and status register
      MACPMTCSR : aliased MACPMTCSR_Register;
      pragma Volatile_Full_Access (MACPMTCSR);
      --  Ethernet MAC debug register
      MACDBGR   : aliased MACDBGR_Register;
      pragma Volatile_Full_Access (MACDBGR);
      --  Ethernet MAC interrupt status register
      MACSR     : aliased MACSR_Register;
      pragma Volatile_Full_Access (MACSR);
      --  Ethernet MAC interrupt mask register
      MACIMR    : aliased MACIMR_Register;
      pragma Volatile_Full_Access (MACIMR);
      --  Ethernet MAC address 0 high register
      MACA0HR   : aliased MACA0HR_Register;
      pragma Volatile_Full_Access (MACA0HR);
      --  Ethernet MAC address 0 low register
      MACA0LR   : aliased A0B.Types.SVD.UInt32;
      --  Ethernet MAC address 1 high register
      MACA1HR   : aliased MACA1HR_Register;
      pragma Volatile_Full_Access (MACA1HR);
      --  Ethernet MAC address1 low register
      MACA1LR   : aliased A0B.Types.SVD.UInt32;
      --  Ethernet MAC address 2 high register
      MACA2HR   : aliased MACA2HR_Register;
      pragma Volatile_Full_Access (MACA2HR);
      --  Ethernet MAC address 2 low register
      MACA2LR   : aliased MACA2LR_Register;
      pragma Volatile_Full_Access (MACA2LR);
      --  Ethernet MAC address 3 high register
      MACA3HR   : aliased MACA3HR_Register;
      pragma Volatile_Full_Access (MACA3HR);
      --  Ethernet MAC address 3 low register
      MACA3LR   : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for Ethernet_MAC_Peripheral use record
      MACCR     at 16#0# range 0 .. 31;
      MACFFR    at 16#4# range 0 .. 31;
      MACHTHR   at 16#8# range 0 .. 31;
      MACHTLR   at 16#C# range 0 .. 31;
      MACMIIAR  at 16#10# range 0 .. 31;
      MACMIIDR  at 16#14# range 0 .. 31;
      MACFCR    at 16#18# range 0 .. 31;
      MACVLANTR at 16#1C# range 0 .. 31;
      MACPMTCSR at 16#2C# range 0 .. 31;
      MACDBGR   at 16#34# range 0 .. 31;
      MACSR     at 16#38# range 0 .. 31;
      MACIMR    at 16#3C# range 0 .. 31;
      MACA0HR   at 16#40# range 0 .. 31;
      MACA0LR   at 16#44# range 0 .. 31;
      MACA1HR   at 16#48# range 0 .. 31;
      MACA1LR   at 16#4C# range 0 .. 31;
      MACA2HR   at 16#50# range 0 .. 31;
      MACA2LR   at 16#54# range 0 .. 31;
      MACA3HR   at 16#58# range 0 .. 31;
      MACA3LR   at 16#5C# range 0 .. 31;
   end record;

   --  Ethernet: media access control (MAC)
   Ethernet_MAC_Periph : aliased Ethernet_MAC_Peripheral
     with Import, Address => Ethernet_MAC_Base;

   --  Ethernet: MAC management counters
   type Ethernet_MMC_Peripheral is record
      --  Ethernet MMC control register
      MMCCR       : aliased MMCCR_Register;
      pragma Volatile_Full_Access (MMCCR);
      --  Ethernet MMC receive interrupt register
      MMCRIR      : aliased MMCRIR_Register;
      pragma Volatile_Full_Access (MMCRIR);
      --  Ethernet MMC transmit interrupt register
      MMCTIR      : aliased MMCTIR_Register;
      pragma Volatile_Full_Access (MMCTIR);
      --  Ethernet MMC receive interrupt mask register
      MMCRIMR     : aliased MMCRIMR_Register;
      pragma Volatile_Full_Access (MMCRIMR);
      --  Ethernet MMC transmit interrupt mask register
      MMCTIMR     : aliased MMCTIMR_Register;
      pragma Volatile_Full_Access (MMCTIMR);
      --  Ethernet MMC transmitted good frames after a single collision counter
      MMCTGFSCCR  : aliased A0B.Types.SVD.UInt32;
      --  Ethernet MMC transmitted good frames after more than a single
      --  collision
      MMCTGFMSCCR : aliased A0B.Types.SVD.UInt32;
      --  Ethernet MMC transmitted good frames counter register
      MMCTGFCR    : aliased A0B.Types.SVD.UInt32;
      --  Ethernet MMC received frames with CRC error counter register
      MMCRFCECR   : aliased A0B.Types.SVD.UInt32;
      --  Ethernet MMC received frames with alignment error counter register
      MMCRFAECR   : aliased A0B.Types.SVD.UInt32;
      --  MMC received good unicast frames counter register
      MMCRGUFCR   : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for Ethernet_MMC_Peripheral use record
      MMCCR       at 16#0# range 0 .. 31;
      MMCRIR      at 16#4# range 0 .. 31;
      MMCTIR      at 16#8# range 0 .. 31;
      MMCRIMR     at 16#C# range 0 .. 31;
      MMCTIMR     at 16#10# range 0 .. 31;
      MMCTGFSCCR  at 16#4C# range 0 .. 31;
      MMCTGFMSCCR at 16#50# range 0 .. 31;
      MMCTGFCR    at 16#68# range 0 .. 31;
      MMCRFCECR   at 16#94# range 0 .. 31;
      MMCRFAECR   at 16#98# range 0 .. 31;
      MMCRGUFCR   at 16#C4# range 0 .. 31;
   end record;

   --  Ethernet: MAC management counters
   Ethernet_MMC_Periph : aliased Ethernet_MMC_Peripheral
     with Import, Address => Ethernet_MMC_Base;

   --  Ethernet: Precision time protocol
   type Ethernet_PTP_Peripheral is record
      --  Ethernet PTP time stamp control register
      PTPTSCR  : aliased PTPTSCR_Register;
      pragma Volatile_Full_Access (PTPTSCR);
      --  Ethernet PTP subsecond increment register
      PTPSSIR  : aliased PTPSSIR_Register;
      pragma Volatile_Full_Access (PTPSSIR);
      --  Ethernet PTP time stamp high register
      PTPTSHR  : aliased A0B.Types.SVD.UInt32;
      --  Ethernet PTP time stamp low register
      PTPTSLR  : aliased PTPTSLR_Register;
      pragma Volatile_Full_Access (PTPTSLR);
      --  Ethernet PTP time stamp high update register
      PTPTSHUR : aliased A0B.Types.SVD.UInt32;
      --  Ethernet PTP time stamp low update register
      PTPTSLUR : aliased PTPTSLUR_Register;
      pragma Volatile_Full_Access (PTPTSLUR);
      --  Ethernet PTP time stamp addend register
      PTPTSAR  : aliased A0B.Types.SVD.UInt32;
      --  Ethernet PTP target time high register
      PTPTTHR  : aliased A0B.Types.SVD.UInt32;
      --  Ethernet PTP target time low register
      PTPTTLR  : aliased A0B.Types.SVD.UInt32;
      --  Ethernet PTP time stamp status register
      PTPTSSR  : aliased PTPTSSR_Register;
      pragma Volatile_Full_Access (PTPTSSR);
      --  Ethernet PTP PPS control register
      PTPPPSCR : aliased PTPPPSCR_Register;
      pragma Volatile_Full_Access (PTPPPSCR);
   end record
     with Volatile;

   for Ethernet_PTP_Peripheral use record
      PTPTSCR  at 16#0# range 0 .. 31;
      PTPSSIR  at 16#4# range 0 .. 31;
      PTPTSHR  at 16#8# range 0 .. 31;
      PTPTSLR  at 16#C# range 0 .. 31;
      PTPTSHUR at 16#10# range 0 .. 31;
      PTPTSLUR at 16#14# range 0 .. 31;
      PTPTSAR  at 16#18# range 0 .. 31;
      PTPTTHR  at 16#1C# range 0 .. 31;
      PTPTTLR  at 16#20# range 0 .. 31;
      PTPTSSR  at 16#28# range 0 .. 31;
      PTPPPSCR at 16#2C# range 0 .. 31;
   end record;

   --  Ethernet: Precision time protocol
   Ethernet_PTP_Periph : aliased Ethernet_PTP_Peripheral
     with Import, Address => Ethernet_PTP_Base;

end A0B.STM32F407.SVD.Ethernet;
