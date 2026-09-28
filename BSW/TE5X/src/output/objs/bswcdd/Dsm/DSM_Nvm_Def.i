# 1 "bswcdd\\Dsm\\DSM_Nvm_Def.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\Dsm\\DSM_Nvm_Def.c"
# 29 "bswcdd\\Dsm\\DSM_Nvm_Def.c"
# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 30 "bswcdd\\Dsm\\DSM_Nvm_Def.c" 2
# 1 "bswcdd\\Dsm\\DSM_Nvm.h" 1
# 32 "bswcdd\\Dsm\\DSM_Nvm.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 "bswcdd\\Dsm\\DSM_Nvm.h" 2
# 1 "bswcdd\\Dsm\\DSM_Typ.h" 1
# 32 "bswcdd\\Dsm\\DSM_Typ.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 "bswcdd\\Dsm\\DSM_Typ.h" 2




typedef uint8 FaultFunctionType;
typedef uint8 FaultIndexType;
typedef uint16 FaultBitFieldType;
typedef FaultBitFieldType FaultMaskType;
typedef uint16 FaultOffsetType;

typedef FaultBitFieldType FaultStateType;

typedef uint8 FaultCntType;
typedef uint8 FaultFailModType;
typedef uint8 FaultFailureLevelType;
typedef uint32 FaultDtcNbType;
typedef uint8 FaultDtcFailTypeType;

typedef struct
{
   FaultDtcNbType DTCNb;
   FaultDtcFailTypeType DTCFt;
   uint8 DTCHistoryCount;
} FaultDtcRecordType;

typedef struct{
   uint32 u32StartIndex;
   uint32 u32StopIndex;
}DSM_tFaultElementIndex;
# 34 "bswcdd\\Dsm\\DSM_Nvm.h" 2
# 1 ".\\output\\inc/FAULT_FF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF_Drv.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF_Drv.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 31 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF_Drv.h" 2
# 408 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF_Drv.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 409 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF_Drv.h" 2


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 412 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF_Drv.h" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 417 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF_Drv.h" 2



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 421 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF_Drv.h" 2
# 34 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h" 2







typedef union
{
   uint32 au32Data[87];
   uint8 au8Data[350];
   struct
   {
      uint16 Item_0xDF20;
      uint16 Item_0xDF21;
      uint16 Item_0xDF23;
      uint8 Item_0xDF29;
      uint8 Item_0xDF2A;
      uint8 Item_0xDF2C;
      uint8 Item_0x0D01;
      uint16 Item_0x0D02;
      uint16 Item_0x0D03;
      uint16 Item_0x0D04;
      uint8 Item_0x0D05;
      uint16 Item_0x0D06;
      uint8 Item_0x0D07;
      uint16 Item_0x0D08;
      uint8 Item_0x0D09;
      uint8 Item_0x0D0A;
      uint8 Item_0x0D0B;
      uint16 Item_0x0D0C;
      uint16 Item_0x0D0C_1;
      uint16 Item_0x0D0C_2;
      uint16 Item_0x0D0D;
      uint16 Item_0x0D0E;
      uint16 Item_0x0D0F;
      uint16 Item_0x0D13;
      uint16 Item_0x0D14;
      uint16 Item_0x0D15;
      uint16 Item_0x0D16;
      uint16 Item_0x0D17;
      uint16 Item_0x0D18;
      uint16 Item_0x0D19;
      uint16 Item_0x0D1A;
      uint16 Item_0x0D1B;
      uint16 Item_0x0D1C;
      uint16 Item_0x0D1D;
      uint16 Item_0x0D1E;
      uint16 Item_0x0D1F;
      uint16 Item_0x0D20;
      uint16 Item_0x0D21;
      uint16 Item_0x0D22;
      uint16 Item_0x0D23;
      uint16 Item_0x0D24;
      uint16 Item_0x0D25;
      uint16 Item_0x0D26;
      uint16 Item_0x0D27;
      uint16 Item_0x0D28;
      uint16 Item_0x0D29;
      uint8 Item_0x1D01;
      uint16 Item_0x1D02;
      uint16 Item_0x1D03;
      uint16 Item_0x1D04;
      uint8 Item_0x1D05;
      uint16 Item_0x1D06;
      uint8 Item_0x1D07;
      uint16 Item_0x1D08;
      uint8 Item_0x1D09;
      uint8 Item_0x1D0A;
      uint8 Item_0x1D0B;
      uint16 Item_0x1D0C;
      uint16 Item_0x1D0C_1;
      uint16 Item_0x1D0C_2;
      uint16 Item_0x1D0D;
      uint16 Item_0x1D0E;
      uint16 Item_0x1D0F;
      uint16 Item_0x1D13;
      uint16 Item_0x1D14;
      uint16 Item_0x1D15;
      uint16 Item_0x1D16;
      uint16 Item_0x1D17;
      uint16 Item_0x1D18;
      uint16 Item_0x1D19;
      uint16 Item_0x1D1A;
      uint16 Item_0x1D1B;
      uint16 Item_0x1D1C;
      uint16 Item_0x1D1D;
      uint16 Item_0x1D1E;
      uint16 Item_0x1D1F;
      uint16 Item_0x1D20;
      uint16 Item_0x1D21;
      uint16 Item_0x1D22;
      uint16 Item_0x1D23;
      uint16 Item_0x1D24;
      uint16 Item_0x1D25;
      uint16 Item_0x1D26;
      uint16 Item_0x1D27;
      uint16 Item_0x1D28;
      uint16 Item_0x1D29;
      uint16 Item_0x2D02;
      uint16 Item_0x2D03;
      uint16 Item_0x2D04;
      uint8 Item_0x2D05;
      uint16 Item_0x2D06;
      uint8 Item_0x2D07;
      uint16 Item_0x2D08;
      uint16 Item_0x2D0E;
      uint16 Item_0x2D13;
      uint16 Item_0x2D14;
      uint16 Item_0x2D15;
      uint16 Item_0x2D1C;
      uint16 Item_0x2D1D;
      uint16 Item_0x2D1E;
      uint16 Item_0x2D1F;
      uint16 Item_0x2D20;
      uint16 Item_0x2D21;
      uint16 Item_0x2D22;
      uint16 Item_0x2D25;
      uint16 Item_0x2D26;
      uint16 Item_0x3D02;
      uint16 Item_0x3D03;
      uint16 Item_0x3D04;
      uint8 Item_0x3D05;
      uint16 Item_0x3D06;
      uint8 Item_0x3D07;
      uint16 Item_0x3D08;
      uint16 Item_0x3D0E;
      uint16 Item_0x3D13;
      uint16 Item_0x3D14;
      uint16 Item_0x3D15;
      uint16 Item_0x3D1C;
      uint16 Item_0x3D1D;
      uint16 Item_0x3D1E;
      uint16 Item_0x3D1F;
      uint16 Item_0x3D20;
      uint16 Item_0x3D21;
      uint16 Item_0x3D22;
      uint16 Item_0x3D25;
      uint16 Item_0x3D26;
      uint16 Item_0x4D27;
      uint16 Item_0x4D28;
      uint16 Item_0x4D29;
      uint16 Item_0x4D2A;
      uint16 Item_0x4D2B;
      uint16 Item_0x4D2C;
      uint16 Item_0x4D2D;
      uint16 Item_0x4D2E;
      uint16 Item_0x4D2F;
      uint16 Item_0x4D30;
      uint16 Item_0x4D31;
      uint16 Item_0x4D32;
      uint8 Item_0x4D33;
      uint16 Item_0x4D34;
      uint8 Item_0x4D35;
      uint16 Item_0x4D36;
      uint8 Item_0x4D37;
      uint16 Item_0x4D38;
      uint8 Item_0x4D39;
      uint16 Item_0x4D3A;
      uint8 Item_0x4D3B;
      uint16 Item_0x4D3C;
      uint8 Item_0x4D3D;
   }Item;
} FAULT_FF_FF1_Typ;
# 812 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 813 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h" 2

extern FAULT_FF_FF1_Typ FAULT_FF_Frame_FF1;

extern boolean FAULT_FF_bFrameLock_FF1;





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 823 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h" 2
# 831 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 832 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h" 2

extern void FAULT_vidSetFFItem_FF1_Item_0xDF20(uint16 arg_Item_0xDF20);
extern void FAULT_vidSetFFItem_FF1_Item_0xDF21(uint16 arg_Item_0xDF21);
extern void FAULT_vidSetFFItem_FF1_Item_0xDF23(uint16 arg_Item_0xDF23);
extern void FAULT_vidSetFFItem_FF1_Item_0xDF29(uint8 arg_Item_0xDF29);
extern void FAULT_vidSetFFItem_FF1_Item_0xDF2A(uint8 arg_Item_0xDF2A);
extern void FAULT_vidSetFFItem_FF1_Item_0xDF2C(uint8 arg_Item_0xDF2C);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D01(uint8 arg_Item_0x0D01);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D02(uint16 arg_Item_0x0D02);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D03(uint16 arg_Item_0x0D03);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D04(uint16 arg_Item_0x0D04);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D05(uint8 arg_Item_0x0D05);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D06(uint16 arg_Item_0x0D06);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D07(uint8 arg_Item_0x0D07);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D08(uint16 arg_Item_0x0D08);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D09(uint8 arg_Item_0x0D09);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D0A(uint8 arg_Item_0x0D0A);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D0B(uint8 arg_Item_0x0D0B);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D0C(uint16 arg_Item_0x0D0C);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D0C_1(uint16 arg_Item_0x0D0C_1);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D0C_2(uint16 arg_Item_0x0D0C_2);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D0D(uint16 arg_Item_0x0D0D);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D0E(uint16 arg_Item_0x0D0E);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D0F(uint16 arg_Item_0x0D0F);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D13(uint16 arg_Item_0x0D13);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D14(uint16 arg_Item_0x0D14);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D15(uint16 arg_Item_0x0D15);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D16(uint16 arg_Item_0x0D16);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D17(uint16 arg_Item_0x0D17);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D18(uint16 arg_Item_0x0D18);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D19(uint16 arg_Item_0x0D19);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D1A(uint16 arg_Item_0x0D1A);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D1B(uint16 arg_Item_0x0D1B);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D1C(uint16 arg_Item_0x0D1C);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D1D(uint16 arg_Item_0x0D1D);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D1E(uint16 arg_Item_0x0D1E);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D1F(uint16 arg_Item_0x0D1F);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D20(uint16 arg_Item_0x0D20);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D21(uint16 arg_Item_0x0D21);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D22(uint16 arg_Item_0x0D22);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D23(uint16 arg_Item_0x0D23);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D24(uint16 arg_Item_0x0D24);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D25(uint16 arg_Item_0x0D25);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D26(uint16 arg_Item_0x0D26);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D27(uint16 arg_Item_0x0D27);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D28(uint16 arg_Item_0x0D28);
extern void FAULT_vidSetFFItem_FF1_Item_0x0D29(uint16 arg_Item_0x0D29);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D01(uint8 arg_Item_0x1D01);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D02(uint16 arg_Item_0x1D02);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D03(uint16 arg_Item_0x1D03);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D04(uint16 arg_Item_0x1D04);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D05(uint8 arg_Item_0x1D05);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D06(uint16 arg_Item_0x1D06);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D07(uint8 arg_Item_0x1D07);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D08(uint16 arg_Item_0x1D08);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D09(uint8 arg_Item_0x1D09);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D0A(uint8 arg_Item_0x1D0A);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D0B(uint8 arg_Item_0x1D0B);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D0C(uint16 arg_Item_0x1D0C);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D0C_1(uint16 arg_Item_0x1D0C_1);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D0C_2(uint16 arg_Item_0x1D0C_2);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D0D(uint16 arg_Item_0x1D0D);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D0E(uint16 arg_Item_0x1D0E);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D0F(uint16 arg_Item_0x1D0F);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D13(uint16 arg_Item_0x1D13);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D14(uint16 arg_Item_0x1D14);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D15(uint16 arg_Item_0x1D15);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D16(uint16 arg_Item_0x1D16);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D17(uint16 arg_Item_0x1D17);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D18(uint16 arg_Item_0x1D18);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D19(uint16 arg_Item_0x1D19);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D1A(uint16 arg_Item_0x1D1A);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D1B(uint16 arg_Item_0x1D1B);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D1C(uint16 arg_Item_0x1D1C);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D1D(uint16 arg_Item_0x1D1D);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D1E(uint16 arg_Item_0x1D1E);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D1F(uint16 arg_Item_0x1D1F);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D20(uint16 arg_Item_0x1D20);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D21(uint16 arg_Item_0x1D21);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D22(uint16 arg_Item_0x1D22);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D23(uint16 arg_Item_0x1D23);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D24(uint16 arg_Item_0x1D24);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D25(uint16 arg_Item_0x1D25);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D26(uint16 arg_Item_0x1D26);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D27(uint16 arg_Item_0x1D27);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D28(uint16 arg_Item_0x1D28);
extern void FAULT_vidSetFFItem_FF1_Item_0x1D29(uint16 arg_Item_0x1D29);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D02(uint16 arg_Item_0x2D02);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D03(uint16 arg_Item_0x2D03);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D04(uint16 arg_Item_0x2D04);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D05(uint8 arg_Item_0x2D05);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D06(uint16 arg_Item_0x2D06);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D07(uint8 arg_Item_0x2D07);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D08(uint16 arg_Item_0x2D08);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D0E(uint16 arg_Item_0x2D0E);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D13(uint16 arg_Item_0x2D13);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D14(uint16 arg_Item_0x2D14);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D15(uint16 arg_Item_0x2D15);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D1C(uint16 arg_Item_0x2D1C);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D1D(uint16 arg_Item_0x2D1D);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D1E(uint16 arg_Item_0x2D1E);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D1F(uint16 arg_Item_0x2D1F);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D20(uint16 arg_Item_0x2D20);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D21(uint16 arg_Item_0x2D21);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D22(uint16 arg_Item_0x2D22);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D25(uint16 arg_Item_0x2D25);
extern void FAULT_vidSetFFItem_FF1_Item_0x2D26(uint16 arg_Item_0x2D26);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D02(uint16 arg_Item_0x3D02);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D03(uint16 arg_Item_0x3D03);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D04(uint16 arg_Item_0x3D04);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D05(uint8 arg_Item_0x3D05);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D06(uint16 arg_Item_0x3D06);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D07(uint8 arg_Item_0x3D07);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D08(uint16 arg_Item_0x3D08);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D0E(uint16 arg_Item_0x3D0E);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D13(uint16 arg_Item_0x3D13);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D14(uint16 arg_Item_0x3D14);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D15(uint16 arg_Item_0x3D15);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D1C(uint16 arg_Item_0x3D1C);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D1D(uint16 arg_Item_0x3D1D);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D1E(uint16 arg_Item_0x3D1E);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D1F(uint16 arg_Item_0x3D1F);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D20(uint16 arg_Item_0x3D20);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D21(uint16 arg_Item_0x3D21);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D22(uint16 arg_Item_0x3D22);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D25(uint16 arg_Item_0x3D25);
extern void FAULT_vidSetFFItem_FF1_Item_0x3D26(uint16 arg_Item_0x3D26);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D27(uint16 arg_Item_0x4D27);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D28(uint16 arg_Item_0x4D28);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D29(uint16 arg_Item_0x4D29);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D2A(uint16 arg_Item_0x4D2A);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D2B(uint16 arg_Item_0x4D2B);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D2C(uint16 arg_Item_0x4D2C);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D2D(uint16 arg_Item_0x4D2D);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D2E(uint16 arg_Item_0x4D2E);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D2F(uint16 arg_Item_0x4D2F);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D30(uint16 arg_Item_0x4D30);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D31(uint16 arg_Item_0x4D31);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D32(uint16 arg_Item_0x4D32);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D33(uint8 arg_Item_0x4D33);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D34(uint16 arg_Item_0x4D34);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D35(uint8 arg_Item_0x4D35);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D36(uint16 arg_Item_0x4D36);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D37(uint8 arg_Item_0x4D37);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D38(uint16 arg_Item_0x4D38);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D39(uint8 arg_Item_0x4D39);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D3A(uint16 arg_Item_0x4D3A);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D3B(uint8 arg_Item_0x4D3B);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D3C(uint16 arg_Item_0x4D3C);
extern void FAULT_vidSetFFItem_FF1_Item_0x4D3D(uint8 arg_Item_0x4D3D);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 986 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h" 2
# 2 ".\\output\\inc/FAULT_FF.h" 2
# 35 "bswcdd\\Dsm\\DSM_Nvm.h" 2
# 58 "bswcdd\\Dsm\\DSM_Nvm.h"
typedef uint8 DSM_DtcStatusType;

typedef struct
{
   uint8 u8DtcAgingCycleCnt;
   uint8 u8DtcOccurCnt;
   uint8 u8DtcEnvDataSpare1;
   uint8 u8DtcEnvDataSpare2;
}DSM_DtcEnvDataType;

typedef struct
{
   uint32 DtcNumber;
   uint8 DtcFreezeFrame[224];
}DSM_DtcSavedContextType;






# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 80 "bswcdd\\Dsm\\DSM_Nvm.h" 2

extern DSM_DtcEnvDataType DSM_DtcEnvDataNvm[10];
extern DSM_DtcStatusType DSM_DtcStatusNvm[10];

extern DSM_DtcSavedContextType DSM_DtcSavedFreezeFrameNvm[10];


# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 88 "bswcdd\\Dsm\\DSM_Nvm.h" 2






# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 98 "bswcdd\\Dsm\\DSM_MemMap.h"
#pragma section ".const" a
# 95 "bswcdd\\Dsm\\DSM_Nvm.h" 2

extern const DSM_DtcEnvDataType DSM_DtcEnvDataNvm_def[10];
extern const DSM_DtcStatusType DSM_DtcStatusNvm_def[10];




# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 143 "bswcdd\\Dsm\\DSM_MemMap.h"
#pragma section
# 103 "bswcdd\\Dsm\\DSM_Nvm.h" 2






# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 83 "bswcdd\\Dsm\\DSM_MemMap.h"
#pragma section ".text" ax
# 110 "bswcdd\\Dsm\\DSM_Nvm.h" 2

extern boolean DSM_bDtcSupported(uint32 DtcNumber);
extern boolean DSM_bDtcLogged(uint32 DtcNumber, uint8 *NvmFaultId);
extern void DSM_vidAgingCycleCnt(void);
extern void DSM_vidDtcStsInit(void);
extern void DSM_vidClrDtcStsTFBit(const uint8 u8LocalListIdx);


# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 124 "bswcdd\\Dsm\\DSM_MemMap.h"
#pragma section
# 119 "bswcdd\\Dsm\\DSM_Nvm.h" 2
# 31 "bswcdd\\Dsm\\DSM_Nvm_Def.c" 2






# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 38 "bswcdd\\Dsm\\DSM_Nvm_Def.c" 2



uint8 DSM_au8NvmDummySpace01[50];

DSM_DtcEnvDataType DSM_DtcEnvDataNvm[10];
DSM_DtcStatusType DSM_DtcStatusNvm [10];



DSM_DtcSavedContextType DSM_DtcSavedFreezeFrameNvm[10];


# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 52 "bswcdd\\Dsm\\DSM_Nvm_Def.c" 2






# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 98 "bswcdd\\Dsm\\DSM_MemMap.h"
#pragma section ".const" a
# 59 "bswcdd\\Dsm\\DSM_Nvm_Def.c" 2

const DSM_DtcStatusType DSM_DtcStatusNvm_def[10];
const DSM_DtcEnvDataType DSM_DtcEnvDataNvm_def[10];




# 1 "bswcdd\\Dsm\\DSM_MemMap.h" 1
# 143 "bswcdd\\Dsm\\DSM_MemMap.h"
#pragma section
# 67 "bswcdd\\Dsm\\DSM_Nvm_Def.c" 2
