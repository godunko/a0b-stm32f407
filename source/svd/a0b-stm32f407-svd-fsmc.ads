pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F407.svd


with A0B.Types.SVD;
with System;

package A0B.STM32F407.SVD.FSMC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype BCR_MTYP_Field is A0B.Types.SVD.UInt2;
   subtype BCR_MWID_Field is A0B.Types.SVD.UInt2;
   subtype BCR_CPSIZE_Field is A0B.Types.SVD.UInt3;

   --  SRAM/NOR-Flash chip-select control register 1
   type BCR_Register is record
      --  MBKEN
      MBKEN          : Boolean := False;
      --  MUXEN
      MUXEN          : Boolean := False;
      --  MTYP
      MTYP           : BCR_MTYP_Field := 16#0#;
      --  MWID
      MWID           : BCR_MWID_Field := 16#1#;
      --  FACCEN
      FACCEN         : Boolean := True;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#1#;
      --  BURSTEN
      BURSTEN        : Boolean := False;
      --  WAITPOL
      WAITPOL        : Boolean := False;
      --  WRAPMOD
      WRAPMOD        : Boolean := False;
      --  WAITCFG
      WAITCFG        : Boolean := False;
      --  WREN
      WREN           : Boolean := True;
      --  WAITEN
      WAITEN         : Boolean := True;
      --  EXTMOD
      EXTMOD         : Boolean := False;
      --  ASYNCWAIT
      ASYNCWAIT      : Boolean := False;
      --  CPSIZE
      CPSIZE         : BCR_CPSIZE_Field := 16#0#;
      --  CBURSTRW
      CBURSTRW       : Boolean := False;
      --  unspecified
      Reserved_20_31 : A0B.Types.SVD.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for BCR_Register use record
      MBKEN          at 0 range 0 .. 0;
      MUXEN          at 0 range 1 .. 1;
      MTYP           at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      FACCEN         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      BURSTEN        at 0 range 8 .. 8;
      WAITPOL        at 0 range 9 .. 9;
      WRAPMOD        at 0 range 10 .. 10;
      WAITCFG        at 0 range 11 .. 11;
      WREN           at 0 range 12 .. 12;
      WAITEN         at 0 range 13 .. 13;
      EXTMOD         at 0 range 14 .. 14;
      ASYNCWAIT      at 0 range 15 .. 15;
      CPSIZE         at 0 range 16 .. 18;
      CBURSTRW       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BTR_ADDSET_Field is A0B.Types.SVD.UInt4;
   subtype BTR_ADDHLD_Field is A0B.Types.SVD.UInt4;
   subtype BTR_DATAST_Field is A0B.Types.SVD.Byte;
   subtype BTR_BUSTURN_Field is A0B.Types.SVD.UInt4;
   subtype BTR_CLKDIV_Field is A0B.Types.SVD.UInt4;
   subtype BTR_DATLAT_Field is A0B.Types.SVD.UInt4;
   subtype BTR_ACCMOD_Field is A0B.Types.SVD.UInt2;

   --  SRAM/NOR-Flash chip-select timing register 1
   type BTR_Register is record
      --  ADDSET
      ADDSET         : BTR_ADDSET_Field := 16#F#;
      --  ADDHLD
      ADDHLD         : BTR_ADDHLD_Field := 16#F#;
      --  DATAST
      DATAST         : BTR_DATAST_Field := 16#FF#;
      --  BUSTURN
      BUSTURN        : BTR_BUSTURN_Field := 16#F#;
      --  CLKDIV
      CLKDIV         : BTR_CLKDIV_Field := 16#F#;
      --  DATLAT
      DATLAT         : BTR_DATLAT_Field := 16#F#;
      --  ACCMOD
      ACCMOD         : BTR_ACCMOD_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : A0B.Types.SVD.UInt2 := 16#3#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for BTR_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      BUSTURN        at 0 range 16 .. 19;
      CLKDIV         at 0 range 20 .. 23;
      DATLAT         at 0 range 24 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype PCR_PWID_Field is A0B.Types.SVD.UInt2;
   subtype PCR_TCLR_Field is A0B.Types.SVD.UInt4;
   subtype PCR_TAR_Field is A0B.Types.SVD.UInt4;
   subtype PCR_ECCPS_Field is A0B.Types.SVD.UInt3;

   --  PC Card/NAND Flash control register 2
   type PCR_Register is record
      --  unspecified
      Reserved_0_0   : A0B.Types.SVD.Bit := 16#0#;
      --  PWAITEN
      PWAITEN        : Boolean := False;
      --  PBKEN
      PBKEN          : Boolean := False;
      --  PTYP
      PTYP           : Boolean := True;
      --  PWID
      PWID           : PCR_PWID_Field := 16#1#;
      --  ECCEN
      ECCEN          : Boolean := False;
      --  unspecified
      Reserved_7_8   : A0B.Types.SVD.UInt2 := 16#0#;
      --  TCLR
      TCLR           : PCR_TCLR_Field := 16#0#;
      --  TAR
      TAR            : PCR_TAR_Field := 16#0#;
      --  ECCPS
      ECCPS          : PCR_ECCPS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : A0B.Types.SVD.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      PWAITEN        at 0 range 1 .. 1;
      PBKEN          at 0 range 2 .. 2;
      PTYP           at 0 range 3 .. 3;
      PWID           at 0 range 4 .. 5;
      ECCEN          at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      TCLR           at 0 range 9 .. 12;
      TAR            at 0 range 13 .. 16;
      ECCPS          at 0 range 17 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  FIFO status and interrupt register 2
   type SR_Register is record
      --  IRS
      IRS           : Boolean := False;
      --  ILS
      ILS           : Boolean := False;
      --  IFS
      IFS           : Boolean := False;
      --  IREN
      IREN          : Boolean := False;
      --  ILEN
      ILEN          : Boolean := False;
      --  IFEN
      IFEN          : Boolean := False;
      --  Read-only. FEMPT
      FEMPT         : Boolean := True;
      --  unspecified
      Reserved_7_31 : A0B.Types.SVD.UInt25 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SR_Register use record
      IRS           at 0 range 0 .. 0;
      ILS           at 0 range 1 .. 1;
      IFS           at 0 range 2 .. 2;
      IREN          at 0 range 3 .. 3;
      ILEN          at 0 range 4 .. 4;
      IFEN          at 0 range 5 .. 5;
      FEMPT         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PMEM_MEMSETx_Field is A0B.Types.SVD.Byte;
   subtype PMEM_MEMWAITx_Field is A0B.Types.SVD.Byte;
   subtype PMEM_MEMHOLDx_Field is A0B.Types.SVD.Byte;
   subtype PMEM_MEMHIZx_Field is A0B.Types.SVD.Byte;

   --  Common memory space timing register 2
   type PMEM_Register is record
      --  MEMSETx
      MEMSETx  : PMEM_MEMSETx_Field := 16#FC#;
      --  MEMWAITx
      MEMWAITx : PMEM_MEMWAITx_Field := 16#FC#;
      --  MEMHOLDx
      MEMHOLDx : PMEM_MEMHOLDx_Field := 16#FC#;
      --  MEMHIZx
      MEMHIZx  : PMEM_MEMHIZx_Field := 16#FC#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PMEM_Register use record
      MEMSETx  at 0 range 0 .. 7;
      MEMWAITx at 0 range 8 .. 15;
      MEMHOLDx at 0 range 16 .. 23;
      MEMHIZx  at 0 range 24 .. 31;
   end record;

   subtype PATT_ATTSETx_Field is A0B.Types.SVD.Byte;
   subtype PATT_ATTWAITx_Field is A0B.Types.SVD.Byte;
   subtype PATT_ATTHOLDx_Field is A0B.Types.SVD.Byte;
   subtype PATT_ATTHIZx_Field is A0B.Types.SVD.Byte;

   --  Attribute memory space timing register 2
   type PATT_Register is record
      --  ATTSETx
      ATTSETx  : PATT_ATTSETx_Field := 16#FC#;
      --  ATTWAITx
      ATTWAITx : PATT_ATTWAITx_Field := 16#FC#;
      --  ATTHOLDx
      ATTHOLDx : PATT_ATTHOLDx_Field := 16#FC#;
      --  ATTHIZx
      ATTHIZx  : PATT_ATTHIZx_Field := 16#FC#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PATT_Register use record
      ATTSETx  at 0 range 0 .. 7;
      ATTWAITx at 0 range 8 .. 15;
      ATTHOLDx at 0 range 16 .. 23;
      ATTHIZx  at 0 range 24 .. 31;
   end record;

   subtype PIO4_IOSETx_Field is A0B.Types.SVD.Byte;
   subtype PIO4_IOWAITx_Field is A0B.Types.SVD.Byte;
   subtype PIO4_IOHOLDx_Field is A0B.Types.SVD.Byte;
   subtype PIO4_IOHIZx_Field is A0B.Types.SVD.Byte;

   --  I/O space timing register 4
   type PIO4_Register is record
      --  IOSETx
      IOSETx  : PIO4_IOSETx_Field := 16#FC#;
      --  IOWAITx
      IOWAITx : PIO4_IOWAITx_Field := 16#FC#;
      --  IOHOLDx
      IOHOLDx : PIO4_IOHOLDx_Field := 16#FC#;
      --  IOHIZx
      IOHIZx  : PIO4_IOHIZx_Field := 16#FC#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for PIO4_Register use record
      IOSETx  at 0 range 0 .. 7;
      IOWAITx at 0 range 8 .. 15;
      IOHOLDx at 0 range 16 .. 23;
      IOHIZx  at 0 range 24 .. 31;
   end record;

   subtype BWTR_ADDSET_Field is A0B.Types.SVD.UInt4;
   subtype BWTR_ADDHLD_Field is A0B.Types.SVD.UInt4;
   subtype BWTR_DATAST_Field is A0B.Types.SVD.Byte;
   subtype BWTR_BUSTURN_Field is A0B.Types.SVD.UInt4;
   subtype BWTR_ACCMOD_Field is A0B.Types.SVD.UInt2;

   --  SRAM/NOR-Flash write timing registers 1
   type BWTR_Register is record
      --  ADDSET
      ADDSET         : BWTR_ADDSET_Field := 16#F#;
      --  ADDHLD
      ADDHLD         : BWTR_ADDHLD_Field := 16#F#;
      --  DATAST
      DATAST         : BWTR_DATAST_Field := 16#FF#;
      --  BUSTURN
      BUSTURN        : BWTR_BUSTURN_Field := 16#F#;
      --  unspecified
      Reserved_20_27 : A0B.Types.SVD.Byte := 16#FF#;
      --  ACCMOD
      ACCMOD         : BWTR_ACCMOD_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : A0B.Types.SVD.UInt2 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for BWTR_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      BUSTURN        at 0 range 16 .. 19;
      Reserved_20_27 at 0 range 20 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SDCR1_NC_Field is A0B.Types.SVD.UInt2;
   subtype SDCR1_NR_Field is A0B.Types.SVD.UInt2;
   subtype SDCR1_MWID_Field is A0B.Types.SVD.UInt2;
   subtype SDCR1_CAS_Field is A0B.Types.SVD.UInt2;
   subtype SDCR1_SDCLK_Field is A0B.Types.SVD.UInt2;
   subtype SDCR1_RPIPE_Field is A0B.Types.SVD.UInt2;

   --  SDRAM Control Register 1
   type SDCR1_Register is record
      --  Number of column address bits
      NC             : SDCR1_NC_Field := 16#0#;
      --  Number of row address bits
      NR             : SDCR1_NR_Field := 16#0#;
      --  Memory data bus width
      MWID           : SDCR1_MWID_Field := 16#1#;
      --  Number of internal banks
      NB             : Boolean := True;
      --  CAS latency
      CAS            : SDCR1_CAS_Field := 16#1#;
      --  Write protection
      WP             : Boolean := True;
      --  SDRAM clock configuration
      SDCLK          : SDCR1_SDCLK_Field := 16#0#;
      --  Burst read
      RBURST         : Boolean := False;
      --  Read pipe
      RPIPE          : SDCR1_RPIPE_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : A0B.Types.SVD.UInt17 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SDCR1_Register use record
      NC             at 0 range 0 .. 1;
      NR             at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      NB             at 0 range 6 .. 6;
      CAS            at 0 range 7 .. 8;
      WP             at 0 range 9 .. 9;
      SDCLK          at 0 range 10 .. 11;
      RBURST         at 0 range 12 .. 12;
      RPIPE          at 0 range 13 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SDCR2_NC_Field is A0B.Types.SVD.UInt2;
   subtype SDCR2_NR_Field is A0B.Types.SVD.UInt2;
   subtype SDCR2_MWID_Field is A0B.Types.SVD.UInt2;
   subtype SDCR2_CAS_Field is A0B.Types.SVD.UInt2;
   subtype SDCR2_SDCLK_Field is A0B.Types.SVD.UInt2;

   --  SDRAM Control Register 2
   type SDCR2_Register is record
      --  Number of column address bits
      NC             : SDCR2_NC_Field := 16#0#;
      --  Number of row address bits
      NR             : SDCR2_NR_Field := 16#0#;
      --  Memory data bus width
      MWID           : SDCR2_MWID_Field := 16#1#;
      --  Number of internal banks
      NB             : Boolean := True;
      --  CAS latency
      CAS            : SDCR2_CAS_Field := 16#1#;
      --  Write protection
      WP             : Boolean := True;
      --  SDRAM clock configuration
      SDCLK          : SDCR2_SDCLK_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SDCR2_Register use record
      NC             at 0 range 0 .. 1;
      NR             at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      NB             at 0 range 6 .. 6;
      CAS            at 0 range 7 .. 8;
      WP             at 0 range 9 .. 9;
      SDCLK          at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SDTR_TMRD_Field is A0B.Types.SVD.UInt4;
   subtype SDTR_TXSR_Field is A0B.Types.SVD.UInt4;
   subtype SDTR_TRAS_Field is A0B.Types.SVD.UInt4;
   subtype SDTR_TRC_Field is A0B.Types.SVD.UInt4;
   subtype SDTR_TWR_Field is A0B.Types.SVD.UInt4;
   subtype SDTR_TRP_Field is A0B.Types.SVD.UInt4;
   subtype SDTR_TRCD_Field is A0B.Types.SVD.UInt4;

   --  SDRAM Timing register 1
   type SDTR_Register is record
      --  Load Mode Register to Active
      TMRD           : SDTR_TMRD_Field := 16#F#;
      --  Exit self-refresh delay
      TXSR           : SDTR_TXSR_Field := 16#F#;
      --  Self refresh time
      TRAS           : SDTR_TRAS_Field := 16#F#;
      --  Row cycle delay
      TRC            : SDTR_TRC_Field := 16#F#;
      --  Recovery delay
      TWR            : SDTR_TWR_Field := 16#F#;
      --  Row precharge delay
      TRP            : SDTR_TRP_Field := 16#F#;
      --  Row to column delay
      TRCD           : SDTR_TRCD_Field := 16#F#;
      --  unspecified
      Reserved_28_31 : A0B.Types.SVD.UInt4 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SDTR_Register use record
      TMRD           at 0 range 0 .. 3;
      TXSR           at 0 range 4 .. 7;
      TRAS           at 0 range 8 .. 11;
      TRC            at 0 range 12 .. 15;
      TWR            at 0 range 16 .. 19;
      TRP            at 0 range 20 .. 23;
      TRCD           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype SDCMR_MODE_Field is A0B.Types.SVD.UInt3;
   subtype SDCMR_NRFS_Field is A0B.Types.SVD.UInt4;
   subtype SDCMR_MRD_Field is A0B.Types.SVD.UInt13;

   --  SDRAM Command Mode register
   type SDCMR_Register is record
      --  Write-only. Command mode
      MODE           : SDCMR_MODE_Field := 16#0#;
      --  Write-only. Command target bank 2
      CTB2           : Boolean := False;
      --  Write-only. Command target bank 1
      CTB1           : Boolean := False;
      --  Number of Auto-refresh
      NRFS           : SDCMR_NRFS_Field := 16#0#;
      --  Mode Register definition
      MRD            : SDCMR_MRD_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : A0B.Types.SVD.UInt10 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SDCMR_Register use record
      MODE           at 0 range 0 .. 2;
      CTB2           at 0 range 3 .. 3;
      CTB1           at 0 range 4 .. 4;
      NRFS           at 0 range 5 .. 8;
      MRD            at 0 range 9 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype SDRTR_COUNT_Field is A0B.Types.SVD.UInt13;

   --  SDRAM Refresh Timer register
   type SDRTR_Register is record
      --  Write-only. Clear Refresh error flag
      CRE            : Boolean := False;
      --  Refresh Timer Count
      COUNT          : SDRTR_COUNT_Field := 16#0#;
      --  RES Interrupt Enable
      REIE           : Boolean := False;
      --  unspecified
      Reserved_15_31 : A0B.Types.SVD.UInt17 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SDRTR_Register use record
      CRE            at 0 range 0 .. 0;
      COUNT          at 0 range 1 .. 13;
      REIE           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  SDSR_MODES array element
   subtype SDSR_MODES_Element is A0B.Types.SVD.UInt2;

   --  SDSR_MODES array
   type SDSR_MODES_Field_Array is array (1 .. 2) of SDSR_MODES_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for SDSR_MODES
   type SDSR_MODES_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODES as a value
            Val : A0B.Types.SVD.UInt4;
         when True =>
            --  MODES as an array
            Arr : SDSR_MODES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SDSR_MODES_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SDRAM Status register
   type SDSR_Register is record
      --  Read-only. Refresh error flag
      RE            : Boolean;
      --  Read-only. Status Mode for Bank 1
      MODES         : SDSR_MODES_Field;
      --  Read-only. Busy status
      BUSY          : Boolean;
      --  unspecified
      Reserved_6_31 : A0B.Types.SVD.UInt26;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SDSR_Register use record
      RE            at 0 range 0 .. 0;
      MODES         at 0 range 1 .. 4;
      BUSY          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type FSMC_Disc is
     (Val_1,
      Val_3,
      Val_2,
      Val_4);

   --  Flexible memory controller
   type FSMC_Peripheral
     (Discriminent : FSMC_Disc := Val_1)
   is record
      --  SRAM/NOR-Flash chip-select control register 1
      BCR1  : aliased BCR_Register;
      pragma Volatile_Full_Access (BCR1);
      --  SRAM/NOR-Flash chip-select timing register 1
      BTR1  : aliased BTR_Register;
      pragma Volatile_Full_Access (BTR1);
      --  SRAM/NOR-Flash chip-select control register 2
      BCR2  : aliased BCR_Register;
      pragma Volatile_Full_Access (BCR2);
      --  SRAM/NOR-Flash chip-select timing register 2
      BTR2  : aliased BTR_Register;
      pragma Volatile_Full_Access (BTR2);
      --  SRAM/NOR-Flash chip-select control register 3
      BCR3  : aliased BCR_Register;
      pragma Volatile_Full_Access (BCR3);
      --  SRAM/NOR-Flash chip-select timing register 3
      BTR3  : aliased BTR_Register;
      pragma Volatile_Full_Access (BTR3);
      --  SRAM/NOR-Flash chip-select control register 4
      BCR4  : aliased BCR_Register;
      pragma Volatile_Full_Access (BCR4);
      --  SRAM/NOR-Flash chip-select timing register 4
      BTR4  : aliased BTR_Register;
      pragma Volatile_Full_Access (BTR4);
      --  PC Card/NAND Flash control register 2
      PCR2  : aliased PCR_Register;
      pragma Volatile_Full_Access (PCR2);
      --  FIFO status and interrupt register 2
      SR2   : aliased SR_Register;
      pragma Volatile_Full_Access (SR2);
      --  Common memory space timing register 2
      PMEM2 : aliased PMEM_Register;
      pragma Volatile_Full_Access (PMEM2);
      --  Attribute memory space timing register 2
      PATT2 : aliased PATT_Register;
      pragma Volatile_Full_Access (PATT2);
      --  ECC result register 2
      ECCR2 : aliased A0B.Types.SVD.UInt32;
      --  PC Card/NAND Flash control register 3
      PCR3  : aliased PCR_Register;
      pragma Volatile_Full_Access (PCR3);
      --  FIFO status and interrupt register 3
      SR3   : aliased SR_Register;
      pragma Volatile_Full_Access (SR3);
      --  Common memory space timing register 3
      PMEM3 : aliased PMEM_Register;
      pragma Volatile_Full_Access (PMEM3);
      --  Attribute memory space timing register 3
      PATT3 : aliased PATT_Register;
      pragma Volatile_Full_Access (PATT3);
      --  ECC result register 3
      ECCR3 : aliased A0B.Types.SVD.UInt32;
      --  PC Card/NAND Flash control register 4
      PCR4  : aliased PCR_Register;
      pragma Volatile_Full_Access (PCR4);
      --  FIFO status and interrupt register 4
      SR4   : aliased SR_Register;
      pragma Volatile_Full_Access (SR4);
      --  Common memory space timing register 4
      PMEM4 : aliased PMEM_Register;
      pragma Volatile_Full_Access (PMEM4);
      --  Attribute memory space timing register 4
      PATT4 : aliased PATT_Register;
      pragma Volatile_Full_Access (PATT4);
      --  I/O space timing register 4
      PIO4  : aliased PIO4_Register;
      pragma Volatile_Full_Access (PIO4);
      --  SDRAM Control Register 1
      SDCR1 : aliased SDCR1_Register;
      pragma Volatile_Full_Access (SDCR1);
      --  SDRAM Control Register 2
      SDCR2 : aliased SDCR2_Register;
      pragma Volatile_Full_Access (SDCR2);
      --  SDRAM Timing register 1
      SDTR1 : aliased SDTR_Register;
      pragma Volatile_Full_Access (SDTR1);
      --  SDRAM Timing register 2
      SDTR2 : aliased SDTR_Register;
      pragma Volatile_Full_Access (SDTR2);
      --  SDRAM Command Mode register
      SDCMR : aliased SDCMR_Register;
      pragma Volatile_Full_Access (SDCMR);
      --  SDRAM Refresh Timer register
      SDRTR : aliased SDRTR_Register;
      pragma Volatile_Full_Access (SDRTR);
      --  SDRAM Status register
      SDSR  : aliased SDSR_Register;
      pragma Volatile_Full_Access (SDSR);
      case Discriminent is
         when Val_1 =>
            --  SRAM/NOR-Flash write timing registers 1
            BWTR1 : aliased BWTR_Register;
            pragma Volatile_Full_Access (BWTR1);
         when Val_3 =>
            --  SRAM/NOR-Flash write timing registers 3
            BWTR3 : aliased BWTR_Register;
            pragma Volatile_Full_Access (BWTR3);
         when Val_2 =>
            --  SRAM/NOR-Flash write timing registers 2
            BWTR2 : aliased BWTR_Register;
            pragma Volatile_Full_Access (BWTR2);
         when Val_4 =>
            --  SRAM/NOR-Flash write timing registers 4
            BWTR4 : aliased BWTR_Register;
            pragma Volatile_Full_Access (BWTR4);
      end case;
   end record
     with Unchecked_Union, Volatile;

   for FSMC_Peripheral use record
      BCR1  at 16#0# range 0 .. 31;
      BTR1  at 16#4# range 0 .. 31;
      BCR2  at 16#8# range 0 .. 31;
      BTR2  at 16#C# range 0 .. 31;
      BCR3  at 16#10# range 0 .. 31;
      BTR3  at 16#14# range 0 .. 31;
      BCR4  at 16#18# range 0 .. 31;
      BTR4  at 16#1C# range 0 .. 31;
      PCR2  at 16#60# range 0 .. 31;
      SR2   at 16#64# range 0 .. 31;
      PMEM2 at 16#68# range 0 .. 31;
      PATT2 at 16#6C# range 0 .. 31;
      ECCR2 at 16#74# range 0 .. 31;
      PCR3  at 16#80# range 0 .. 31;
      SR3   at 16#84# range 0 .. 31;
      PMEM3 at 16#88# range 0 .. 31;
      PATT3 at 16#8C# range 0 .. 31;
      ECCR3 at 16#94# range 0 .. 31;
      PCR4  at 16#A0# range 0 .. 31;
      SR4   at 16#A4# range 0 .. 31;
      PMEM4 at 16#A8# range 0 .. 31;
      PATT4 at 16#AC# range 0 .. 31;
      PIO4  at 16#B0# range 0 .. 31;
      SDCR1 at 16#140# range 0 .. 31;
      SDCR2 at 16#144# range 0 .. 31;
      SDTR1 at 16#148# range 0 .. 31;
      SDTR2 at 16#14C# range 0 .. 31;
      SDCMR at 16#150# range 0 .. 31;
      SDRTR at 16#154# range 0 .. 31;
      SDSR  at 16#158# range 0 .. 31;
      BWTR1 at 16#104# range 0 .. 31;
      BWTR3 at 16#104# range 0 .. 31;
      BWTR2 at 16#10C# range 0 .. 31;
      BWTR4 at 16#10C# range 0 .. 31;
   end record;

   --  Flexible memory controller
   FSMC_Periph : aliased FSMC_Peripheral
     with Import, Address => FSMC_Base;

end A0B.STM32F407.SVD.FSMC;
