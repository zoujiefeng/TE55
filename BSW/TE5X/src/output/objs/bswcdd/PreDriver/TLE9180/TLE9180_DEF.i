# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c"
# 31 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c"
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
# 32 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h" 1
# 37 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h" 2
# 68 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
extern boolean TLE9180_bIsModeReq;
extern boolean TLE9180_bIsInIdleMode;
extern boolean TLE9180_bIsInCfgLockMode;
extern boolean TLE9180_bDrvOverCurrent;
extern boolean TLE9180_bDrvOverTemp;
extern boolean TLE9180_bDrvOverVoltage;
extern boolean TLE9180_bDrvUnderVoltage;
extern boolean TLE9180_bErrorPinLevel;
extern boolean TLE9180_bInitFailFlg;
extern boolean TLE9180_bPhaseShortHigh;
extern boolean TLE9180_bPhaseShortLow;
extern boolean TLE9180_bPhsOverVolt;
extern boolean TLE9180_bReadErrInfoFlg;
extern boolean TLE9180_bTestReadReg;
extern boolean TLE9180_bTestWriteReg;
extern uint32 TLE9180_u32ReinitTotalTime;
extern uint32 TLE9180_u32ReinitEndTime;
extern uint32 TLE9180_u32ReinitStartTime;
extern float32 TLE9180_af32ReadPhsTempPhys[( 6 )];
extern float32 TLE9180_f32MaxPhsTempPhys;
extern float32 TLE9180_f32BatteryVoltage;
extern uint32 TLE9180_au32SpiReadFrame[( 30 )];
extern uint32 TLE9180_au32SpiTstReadFrame[( 30 )];
extern uint32 TLE9180_au32SpiTstWriteFrame[( 30 )];
extern uint32 TLE9180_au32ErrRegsReadFrame[( 30 )];
extern uint32 TLE9180_au32SpiWriteFrame[( 30 )];
extern uint32 TLE9180_au32ICInitSpiFrame[( 30 )];
extern uint32 TLE9180_au32StateRegs[( 30 )];
extern uint8 TLE9180_au8CfgRegister[( 30 )];
extern uint8 TLE9180_au8CfgRegReadBk[( 30 )];
extern uint8 TLE9180_au8ReadPhsTemp[( 6 )];
extern uint8 TLE9180_au8ReadRegs[( 30 )];
extern uint8 TLE9180_u8ReCfgCnt;
extern uint8 TLE9180_u8InitFailedCnt;
extern uint8 TLE9180_u8ErrRecoverCnt;
extern uint8 TLE9180_u8Mode;
extern uint8 TLE9180_u8RdRegTimCnt;
extern uint8 TLE9180_u8ReadRegAddr;
extern uint8 TLE9180_u8SelfTestStep;
extern uint8 TLE9180_u8SpiTxFrameMaxNb;
extern uint8 TLE9180_u8WriteData;
extern uint8 TLE9180_u8WriteRegAddr;
extern uint16 TLE9180_u16EnaResetTime;
extern uint16 TLE9180_u16ErrPinChkCnt;




void TLE9180_vidInit(void);
void TLE9180_vidMainFunction(void);
boolean TLE9180_bIsWorkModeNormal(void);
# 33 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 1
# 37 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
# 52 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h"
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 105 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 106 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 53 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const boolean TLE9180_bManualReadRegC;
extern const boolean TLE9180_bDrvOverVoltageTestOnC;
extern const boolean TLE9180_bDrvUnderVoltageTestOnC;
extern const boolean TLE9180_bDrvOverTempTestOnC;
extern const boolean TLE9180_bPhaseShortHighTestOnC;
extern const boolean TLE9180_bPhaseShortLowTestOnC;
extern const boolean TLE9180_bDrvOverCurrentTestOnC;
extern const boolean TLE9180_bPhsOverVoltTestOnC;
extern const boolean TLE9180_bPhasePerfTestOnC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 110 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 111 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 64 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 94 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 67 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const uint8 TLE9180_ku8MaxInitTimeC;
extern const uint8 TLE9180_ku8MaxReCfgTimeC;
extern const uint8 TLE9180_ku8EnaResetCntC;
extern const uint8 TLE9180_ku8ErrRecvMaxNumC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 99 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 100 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 73 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 83 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 76 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const uint16 TLE9180_ku16EnaResetTimeC;
extern const uint16 TLE9180_ku16ErrPinChkTimC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 88 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 80 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 116 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 117 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 83 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const float32 TLE9180_kf32PhsTempFaultC;
extern const float32 TLE9180_kf32PhsTempFltRecoverC;
extern const float32 TLE9180_kf32BatteryVolValidThrdC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 121 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 122 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 88 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2




extern boolean TLE9180_bPhasePerf;
extern boolean TLE9180_bTempWarning;
# 34 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2






# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 105 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 106 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 41 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2
const boolean TLE9180_bManualReadRegC = 0;
const boolean TLE9180_bDrvOverVoltageTestOnC = 0;
const boolean TLE9180_bDrvUnderVoltageTestOnC = 0;
const boolean TLE9180_bDrvOverTempTestOnC = 0;
const boolean TLE9180_bPhaseShortHighTestOnC = 0;
const boolean TLE9180_bPhaseShortLowTestOnC = 0;
const boolean TLE9180_bDrvOverCurrentTestOnC = 0;
const boolean TLE9180_bPhsOverVoltTestOnC = 0;
const boolean TLE9180_bPhasePerfTestOnC = 0;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 110 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 111 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 52 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 94 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 55 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2
const uint8 TLE9180_ku8MaxInitTimeC = 10;
const uint8 TLE9180_ku8MaxReCfgTimeC = 50;
const uint8 TLE9180_ku8EnaResetCntC = 5;
const uint8 TLE9180_ku8ErrRecvMaxNumC = 0x06;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 99 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 100 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 61 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 83 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 64 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2
const uint16 TLE9180_ku16EnaResetTimeC = 100;
const uint16 TLE9180_ku16ErrPinChkTimC = 10;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 88 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 68 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 116 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 117 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 71 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2
const float32 TLE9180_kf32PhsTempFaultC = 130;
const float32 TLE9180_kf32PhsTempFltRecoverC = 127;
const float32 TLE9180_kf32BatteryVolValidThrdC = 8.0f;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 121 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 122 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 76 "bswcdd\\PreDriver\\TLE9180\\TLE9180_DEF.c" 2





boolean TLE9180_bIsModeReq;
boolean TLE9180_bIsInIdleMode;
boolean TLE9180_bIsInCfgLockMode;
boolean TLE9180_bDrvOverCurrent;
boolean TLE9180_bDrvOverTemp;
boolean TLE9180_bDrvOverVoltage;
boolean TLE9180_bDrvUnderVoltage;
boolean TLE9180_bErrorPinLevel;
boolean TLE9180_bInitFailFlg;
boolean TLE9180_bPhaseShortHigh;
boolean TLE9180_bPhaseShortLow;
boolean TLE9180_bPhsOverVolt;
boolean TLE9180_bReadErrInfoFlg;
boolean TLE9180_bTestReadReg;
boolean TLE9180_bTestWriteReg;
uint32 TLE9180_u32ReinitTotalTime;
uint32 TLE9180_u32ReinitEndTime;
uint32 TLE9180_u32ReinitStartTime;
float32 TLE9180_af32ReadPhsTempPhys[( 6 )] = {0};
float32 TLE9180_f32MaxPhsTempPhys;
float32 TLE9180_f32BatteryVoltage;
uint32 TLE9180_au32SpiReadFrame[( 30 )] = {0};
uint32 TLE9180_au32SpiTstReadFrame[( 30 )] = {0};
uint32 TLE9180_au32SpiTstWriteFrame[( 30 )] = {0};
uint32 TLE9180_au32ErrRegsReadFrame[( 30 )] = {0};
uint32 TLE9180_au32SpiWriteFrame[( 30 )] = {0};
uint32 TLE9180_au32ICInitSpiFrame[( 30 )] = {0};
uint32 TLE9180_au32StateRegs[( 30 )] = {0};
uint8 TLE9180_au8CfgRegister[( 30 )] = {0};
uint8 TLE9180_au8CfgRegReadBk[( 30 )] = {0};
uint8 TLE9180_au8ReadPhsTemp[( 6 )] = {0};
uint8 TLE9180_au8ReadRegs[( 30 )] = {0};
uint8 TLE9180_u8ReCfgCnt;
uint8 TLE9180_u8InitFailedCnt;
uint8 TLE9180_u8ErrRecoverCnt;
uint8 TLE9180_u8Mode;
uint8 TLE9180_u8RdRegTimCnt;
uint8 TLE9180_u8ReadRegAddr;
uint8 TLE9180_u8SelfTestStep;
uint8 TLE9180_u8SpiTxFrameMaxNb;
uint8 TLE9180_u8WriteData;
uint8 TLE9180_u8WriteRegAddr;
uint16 TLE9180_u16EnaResetTime;
uint16 TLE9180_u16ErrPinChkCnt;
