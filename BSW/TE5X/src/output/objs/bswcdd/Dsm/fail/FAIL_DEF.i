# 1 "bswcdd\\Dsm\\fail\\FAIL_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\Dsm\\fail\\FAIL_DEF.c"
# 31 "bswcdd\\Dsm\\fail\\FAIL_DEF.c"
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
# 32 "bswcdd\\Dsm\\fail\\FAIL_DEF.c" 2
# 1 "bswcdd\\Dsm\\fail\\FAIL_Nvm.h" 1
# 32 "bswcdd\\Dsm\\fail\\FAIL_Nvm.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 "bswcdd\\Dsm\\fail\\FAIL_Nvm.h" 2






# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 40 "bswcdd\\Dsm\\fail\\FAIL_Nvm.h" 2



extern uint16 FAIL_u16RstStartUpCntNvm;
extern uint16 FAIL_u16RstHotCntNvm;
extern boolean FAIL_bRstHotFlagNvm;




extern uint32 FAIL_u32TimestampLifeNvm;
extern uint16 FAIL_u16TimestampIgnNvm;


# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 55 "bswcdd\\Dsm\\fail\\FAIL_Nvm.h" 2
# 33 "bswcdd\\Dsm\\fail\\FAIL_DEF.c" 2
# 1 "bswcdd\\Dsm\\fail\\FAIL.h" 1
# 37 "bswcdd\\Dsm\\fail\\FAIL.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\Dsm\\fail\\FAIL.h" 2
# 48 "bswcdd\\Dsm\\fail\\FAIL.h"
enum
{
   FAIL_enuFLTDET_IDLE = 0,
   FAIL_enuFLTDET_STANDBY,
   FAIL_enuFLTDET_STOP_DIAG,
   FAIL_enuFLTDET_WAIT_RECV,
   FAIL_enuFLTDET_START_DIAG
};
# 66 "bswcdd\\Dsm\\fail\\FAIL.h"
# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 67 "bswcdd\\Dsm\\fail\\FAIL.h" 2
extern uint16 FAIL_u16KeyOnValue;

# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 70 "bswcdd\\Dsm\\fail\\FAIL.h" 2






# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 87 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h"
#pragma section ".text" ax
# 77 "bswcdd\\Dsm\\fail\\FAIL.h" 2
void FAIL_vidCheckBatVolt(void);
void FAIL_vidClearComLostFlg(void);
void FAIL_vidEnableEmbFltCheck(void);
void FAIL_vidDisableEmbFltCheck(void);
void FAIL_vidFailDetection_1000ms(void);
void FAIL_vidFailDetection_100ms(void);
void FAIL_vidFailDetection_10ms(void);
void FAIL_vidInit(void);
void FAIL_vidInitVSICounters(void);
void FAIL_vidPowerDown(void);
void FAIL_vidPowerUp(void);
void FAIL_vidFailDetection_1ms(void);
void GFAIL_vidFailDetection_1ms(void);
void AFAIL_vidFailDetection_1ms(void);
void OFAIL_vidFailDetection_1ms(void);

# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 128 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h"
#pragma section
# 94 "bswcdd\\Dsm\\fail\\FAIL.h" 2
# 34 "bswcdd\\Dsm\\fail\\FAIL_DEF.c" 2
# 1 "bswcdd\\Dsm\\fail\\FAIL_L.h" 1
# 37 "bswcdd\\Dsm\\fail\\FAIL_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\Dsm\\fail\\FAIL_L.h" 2
# 54 "bswcdd\\Dsm\\fail\\FAIL_L.h"
# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 65 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 66 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 2
# 55 "bswcdd\\Dsm\\fail\\FAIL_L.h" 2
extern const boolean FAIL_bCanErrCheckonC;
extern const boolean FAIL_bErrCheckonC_ECU1;
extern const boolean FAIL_bErrCheckonC_ECU2;
extern const boolean FAIL_bErrCheckonC_ECU3;
extern const boolean FAIL_bErrCheckonC_ECU4;
extern const boolean FAIL_bErrCheckonC_ECU5;
extern const float32 FAIL_kf32DiagVoltOffLowC;
extern const float32 FAIL_kf32DiagVoltOffHighC;
extern const float32 FAIL_kf32DiagVoltOnLowC;
extern const float32 FAIL_kf32DiagVoltOnHighC;
extern const float32 FAIL_ku16UnderVolFiltTimC;
extern const float32 FAIL_ku16RcvVolFiltTimC;

# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 70 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 71 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 2
# 69 "bswcdd\\Dsm\\fail\\FAIL_L.h" 2






# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 76 "bswcdd\\Dsm\\fail\\FAIL_L.h" 2
extern boolean FAIL_bCanErrChkDisabled;
extern boolean FAIL_bComLostDiagTEna;
extern boolean FAIL_bComLostDiagVEna;
extern boolean FAIL_bComLostDiagVHigh;
extern boolean FAIL_bComLostDiagVLow;
extern boolean FAIL_bDebug1;
extern boolean FAIL_bRstHotFlag;
extern uint8 FAIL_u8Can01BusoffCnt;
extern uint8 FAIL_u8CCP_FaultLevel;
extern uint16 FAIL_u16ComLostDiagEnaCnt;
extern uint16 FAIL_u16ComLostDiagVRecCnt;
extern uint16 FAIL_u16KeyOnDelay;
extern uint16 FAIL_u16Test;

# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 91 "bswcdd\\Dsm\\fail\\FAIL_L.h" 2
# 35 "bswcdd\\Dsm\\fail\\FAIL_DEF.c" 2






# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 65 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 66 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 2
# 42 "bswcdd\\Dsm\\fail\\FAIL_DEF.c" 2
const boolean FAIL_bCanErrCheckonC = (1 != 0);
const boolean FAIL_bErrCheckonC_ECU1 = (1 != 0);
const boolean FAIL_bErrCheckonC_ECU2 = (1 != 0);
const boolean FAIL_bErrCheckonC_ECU3 = (1 != 0);
const boolean FAIL_bErrCheckonC_ECU4 = (1 != 0);
const boolean FAIL_bErrCheckonC_ECU5 = (1 != 0);
const float32 FAIL_kf32DiagVoltOffLowC = 14.0f;
const float32 FAIL_kf32DiagVoltOffHighC = 36.0f;
const float32 FAIL_kf32DiagVoltOnLowC = 16.0f;
const float32 FAIL_kf32DiagVoltOnHighC = 34.0f;
const float32 FAIL_ku16UnderVolFiltTimC = 50;
const float32 FAIL_ku16RcvVolFiltTimC = 50;

# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 70 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 71 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 2
# 56 "bswcdd\\Dsm\\fail\\FAIL_DEF.c" 2






# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 63 "bswcdd\\Dsm\\fail\\FAIL_DEF.c" 2
boolean FAIL_bCanErrChkDisabled;
boolean FAIL_bComLostDiagTEna;
boolean FAIL_bComLostDiagVEna;
boolean FAIL_bComLostDiagVHigh;
boolean FAIL_bComLostDiagVLow;
boolean FAIL_bDebug1;
boolean FAIL_bRstHotFlag;
uint8 FAIL_u8Can01BusoffCnt;
uint8 FAIL_u8CCP_FaultLevel;
uint16 FAIL_u16ComLostDiagEnaCnt;
uint16 FAIL_u16ComLostDiagVRecCnt;
uint16 FAIL_u16KeyOnDelay;
uint16 FAIL_u16KeyOnValue;
uint16 FAIL_u16Test;

# 1 "bswcdd\\Dsm\\fail\\FAIL_MemMap.h" 1
# 79 "bswcdd\\Dsm\\fail\\FAIL_DEF.c" 2
