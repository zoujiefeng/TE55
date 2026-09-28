# 1 "bswcdd\\PreDriver\\PreDrv.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\PreDriver\\PreDrv.c"
# 12 "bswcdd\\PreDriver\\PreDrv.c"
# 1 "bswcdd\\PreDriver\\PreDrv_Cfg.h" 1







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
# 9 "bswcdd\\PreDriver\\PreDrv_Cfg.h" 2
# 13 "bswcdd\\PreDriver\\PreDrv.c" 2
# 1 ".\\output\\inc/TLE9180.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\PreDriver\\TLE9180\\TLE9180.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\PreDriver\\TLE9180\\TLE9180.h" 2
# 68 ".\\output\\inc/..\\..\\bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
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
# 2 ".\\output\\inc/TLE9180.h" 2
# 14 "bswcdd\\PreDriver\\PreDrv.c" 2
# 1 ".\\output\\inc/DRV8340.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\PreDriver\\Drv8340\\DRV8340.h" 1







# 1 ".\\output\\inc/Std_Types.h" 1
# 9 ".\\output\\inc/..\\..\\bswcdd\\PreDriver\\Drv8340\\DRV8340.h" 2
# 29 ".\\output\\inc/..\\..\\bswcdd\\PreDriver\\Drv8340\\DRV8340.h"
extern void DRV8340_vidModuleInit(void);
extern void DRV8340_vidMainFunction(void);
extern boolean DRV8340_bIsWorkModeNormal(void);

boolean DRV8340_bGetErrorPinLevel(void);
boolean DRV8340_bGetDrvUnderVolt(void);
boolean DRV8340_bGetDrvOverVolt(void);
boolean DRV8340_bGetDrvOverCurr(void);
boolean DRV8340_bGetDrvOverTemp(void);
boolean DRV8340_bGetPhsShortHigh(void);
boolean DRV8340_bGetPhsShortLow(void);
# 2 ".\\output\\inc/DRV8340.h" 2
# 15 "bswcdd\\PreDriver\\PreDrv.c" 2
# 35 "bswcdd\\PreDriver\\PreDrv.c"
void PreDrv_vidInit(void)
{
   TLE9180_vidInit();

}
# 70 "bswcdd\\PreDriver\\PreDrv.c"
void PreDrv_vidMainFunction(void)
{
   TLE9180_vidMainFunction();

}

boolean PreDrv_bIsWorkNormal(void)
{
   return DRV8340_bIsWorkModeNormal();
}
