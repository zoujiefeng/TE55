# 1 "bswcdd\\J1939\\J1939.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\J1939\\J1939.c"
# 1 "bswcdd\\J1939\\J1939.h" 1
# 12 "bswcdd\\J1939\\J1939.h"
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
# 13 "bswcdd\\J1939\\J1939.h" 2
# 1 "bswcdd\\J1939\\J1939TP.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 8 "bswcdd\\J1939\\J1939TP.h" 2
# 23 "bswcdd\\J1939\\J1939TP.h"
typedef struct J1939_FaultCfg{
   uint16 u16FMI;
   uint16 u16SPNIdx;
   uint32 u32SPN;
}J1939_FaultCfg;

typedef struct J1939_EcuVarSet{
   uint8 u8TxFrameCnt;
   uint8 u8PackFrameNum;
   uint8 u8TgtMainState;
   uint8 u8CurMainState;
   uint8 u8CurFaultNum;
   uint16 u16TaskCnt;
}J1939_EcuVarSet;

typedef struct J1939_EcuCfg
{
   uint16 u16SPNNum;
   uint8 u8FillByte;

   uint8 *pau8SPNBuf;
   uint32 *pau32StateBuf;

   uint8 *pau8DM1TxBuf;
   uint8 *pau8BAMTxBuf;
   uint8 *pau8TPDTTxBuf;

   J1939_EcuVarSet *ptVarSet;

   void (*vidSPNBufInit)(void);
   void (*vidSendDM1)(void);
   void (*vidSendBAM)(void);
   void (*vidSendTPDT)(void);
}J1939_EcuCfg;




extern void J1939_vidSPNHandler(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg);
extern void J1939_vidMainFunction(const J1939_EcuCfg * const kpktEcuCfg);
void J1939_vidDM1_Periodic_Send_Ctr_Func( boolean Sta ) ;
# 14 "bswcdd\\J1939\\J1939.h" 2
# 2 "bswcdd\\J1939\\J1939.c" 2
