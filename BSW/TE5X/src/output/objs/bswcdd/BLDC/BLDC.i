# 1 "bswcdd\\BLDC\\BLDC.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\BLDC\\BLDC.c"
# 9 "bswcdd\\BLDC\\BLDC.c"
# 1 "bswcdd\\BLDC\\BLDC.h" 1
# 41 "bswcdd\\BLDC\\BLDC.h"
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
# 42 "bswcdd\\BLDC\\BLDC.h" 2
# 58 "bswcdd\\BLDC\\BLDC.h"
void BLDCDev_vidInit(const uint8 ku8DevID);
void BLDCDev_vidMotorStateMng(const uint8 ku8DevID);
void BLDCDev_vidMotPosPwmMng(const uint8 ku8DevID);
void BLDCDev_vidGetPosSigPerd(const uint8 ku8DevID, uint32* pu32PosSigPerd);
void BLDCDev_vidGetPositionDuty(const uint8 ku8DevID, float32* pf32PosDuty);
extern boolean BLDC_bPwmIsReady(void);
void BLDCDev_vidHallDiagMainfunction(const uint8 ku8DevID, const uint8 u8CurHallStt);
uint8 BLDCDev_u8GetHallStt(const uint8 ku8DevID);
void BLDCDev_vidChgHallPattern(const uint8 ku8DevID);
void BLDCDev_vidSetPwmBcDuty(const uint8 ku8DevID, const float32 f32Duty);

uint8 BLDCDev_u8GetHallState(const uint8 ku8DevID);
uint8 BLDCDev_u8GetCurDirSts(const uint8 ku8DevID);
uint8 BLDCDev_u8GetDutyModeStt(const uint8 ku8DevID);
boolean BLDCDev_bGetHallUndefFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetHallInvalidFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetP5vAD2SOverVolFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetP5vAD2SUnderVolFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetUvwShortGnd(const uint8 ku8DevID);
boolean BLDCDev_bGetUvwShortVs(const uint8 ku8DevID);
# 10 "bswcdd\\BLDC\\BLDC.c" 2
# 1 ".\\output\\inc/BLDC_Device.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_Device.h" 1
# 10 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_Device.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceCfg.h" 1
# 15 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceCfg.h"
enum {
   eBLDC_DEV_GTM_START_INDEX = 0,
   eBLDC_DEV_GTM_DRV8340_INDEX = eBLDC_DEV_GTM_START_INDEX,
   eBLDC_DEV_GTM_TLE9180_INDEX,
   eBLDC_DEV_GTM_END_INDEX,

   eBLDC_DEV_MAX_NUM = eBLDC_DEV_GTM_END_INDEX
};
# 11 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_Device.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceType.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 8 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceType.h" 2
# 1 ".\\output\\inc/BLDC_GeneFunc.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_GeneFunc.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_GeneFunc.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_GeneFunc.h" 2
# 24 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_GeneFunc.h"
typedef struct BLDC_Device BLDC_Device;
typedef struct BLDC_GeneModule BLDC_GeneModule;


enum BLDC_DUTY_STATE{
   BLDC_DUTY_CLOSE = 0,
   BLDC_DUTY_REVRSE,
   BLDC_DUTY_BRAKE,
   BLDC_DUTY_SWDIR,
   BLDC_DUTY_GOING
};
# 56 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_GeneFunc.h"
typedef struct BLDC_HallCtrlTable{
   uint8 BLDC_u8CurHall;
   uint8 BLDC_u8ExpHall;
   uint8 BLDC_u8ExpOutput;
}BLDC_HallCtrlTable;


typedef struct BLDC_PwmCtrlVarSet{
   uint16 BLDC_u16DutyDelayCnt;
   uint8 BLDC_u8PrevDirSts;
   uint8 BLDC_u8CurDirSts;
   uint8 BLDC_u8DutyModeStt;
   uint8 BLDC_u8DutyHoldTicks;
   float32 BLDC_f32CurCycleDuty;
}BLDC_PwmCtrlVarSet;


typedef struct BLDC_HallCtrlVarSet{
   uint8 BLDC_u8CurHallStt;
   uint8 BLDC_u8ConfirmDirSts;
   uint8 BLDC_u8WrCurHallStt;
   uint8 BLDC_u8WrExpOutput;
}BLDC_HallCtrlVarSet;

struct BLDC_GeneModule{
   BLDC_PwmCtrlVarSet *PwmCtrlVar;
   BLDC_HallCtrlVarSet *HallCtrlVar;

   void (*vidDebug)(void);
   void (*vidModuleInit)(const BLDC_Device * const kpktDev);
   uint8 (*u8GetHallState)(const BLDC_Device * const kpktDev);
   void (*vidChgHallPattern)(const BLDC_Device * const kpktDev);
   void (*vidSetPwmBcDuty)(const BLDC_Device * const kpktDev, const float32 f32Duty);
   void (*vidStartRotation)(const BLDC_Device * const kpktDev, const uint8 u8BldcDir);


   uint8 (*u8GetHallStt)(const BLDC_Device * const kpktDev);
   uint8 (*u8GetCurDirSts)(const BLDC_Device * const kpktDev);
   uint8 (*u8GetDutyModeStt)(const BLDC_Device * const kpktDev);
};




extern const BLDC_HallCtrlTable BLDC_au8BackwardTable[6];
extern const BLDC_HallCtrlTable BLDC_au8ForwardTable[6];
extern const BLDC_GeneModule BLDC_xGeneModule;
# 2 ".\\output\\inc/BLDC_GeneFunc.h" 2
# 9 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceType.h" 2
# 17 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceType.h"
typedef struct BLDC_TimerDriver BLDC_TimerDriver;
typedef struct BLDC_AppFunc BLDC_AppFunc;
typedef struct BLDC_Device BLDC_Device;

struct BLDC_TimerDriver{
   void *pvCommDrv;
   const void *pkvCfgHandle;

   void (*vidIntHwInit)(const BLDC_TimerDriver * const kpktDrv);
   void (*vidIntTrigEnable)(const BLDC_TimerDriver * const kpktDrv, boolean bEnable);

   void (*vidPwmDisable)(const BLDC_TimerDriver * const kpktDrv);
   void (*vidSetPwmOutState)(const BLDC_TimerDriver * const kpktDrv, uint8 u8Dir, uint8 u8Index);
   void (*vidSetPwmDuty)(const BLDC_TimerDriver * const kpktDrv, float32 f32Duty);
   void (*vidSetPwmFreq)(const BLDC_TimerDriver * const kpktDrv, float32 f32Freq);
   void (*vidSetSingleChPhase)(const BLDC_TimerDriver * const kpktDrv, float32 f32Freq, uint8 u8ChIndex);
};

typedef struct BLDC_HalModule{
   const void *pvApi;
   uint16 (*u16IOReadHall_1)(void);
   uint16 (*u16IOReadHall_2)(void);
   uint16 (*u16IOReadHall_3)(void);
}BLDC_HalModule;

struct BLDC_AppFunc{
   void (*vidInit)(void);
   void (*vidMotPosPwmMng)(const BLDC_Device * const kpktDev);
   void (*vidMotorStateMng)(const BLDC_Device * const kpktDev);
   void (*vidGetPosSigPerd)(uint32* pu32PosSigPerd);
   void (*vidGetPositionDuty)(float32* pf32PosDuty);
   void (*vidHallDiagMainfunction)(const BLDC_Device * const kpktDev, const uint8 u8CurHallStt);


   boolean (*bGetHallUndefFlt)(void);
   boolean (*bGetHallInvalidFlt)(void);
   boolean (*bGetP5vAD2SOverVolFlt)(void);
   boolean (*bGetP5vAD2SUnderVolFlt)(void);
   boolean (*bGetUvwShortGnd)(void);
   boolean (*bGetUvwShortVs)(void);
};

struct BLDC_Device{
   uint8 u8DeviceID;

   const BLDC_AppFunc *ptAppFunc;
   const BLDC_HalModule *ptHalModule;
   const BLDC_TimerDriver *ptTimerDrv;
   const BLDC_GeneModule *ptGeneModule;
};
# 12 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_Device.h" 2
# 28 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_Device.h"
extern const BLDC_Device BLDC_axDeviceSet[eBLDC_DEV_MAX_NUM];
# 2 ".\\output\\inc/BLDC_Device.h" 2
# 11 "bswcdd\\BLDC\\BLDC.c" 2
# 41 "bswcdd\\BLDC\\BLDC.c"
void BLDCDev_vidInit(const uint8 ku8DevID)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidInit();
   BLDC_axDeviceSet[ku8DevID].ptGeneModule->vidModuleInit(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidMotorStateMng(const uint8 ku8DevID)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidMotorStateMng(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidMotPosPwmMng(const uint8 ku8DevID)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidMotPosPwmMng(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidGetPosSigPerd(const uint8 ku8DevID, uint32* pu32PosSigPerd)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidGetPosSigPerd(pu32PosSigPerd);
}

void BLDCDev_vidGetPositionDuty(const uint8 ku8DevID, float32* pf32PosDuty)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidGetPositionDuty(pf32PosDuty);
}
# 76 "bswcdd\\BLDC\\BLDC.c"
void BLDCDev_vidHallDiagMainfunction(const uint8 ku8DevID, const uint8 u8CurHallStt)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidHallDiagMainfunction(&BLDC_axDeviceSet[ku8DevID], u8CurHallStt);
}

uint8 BLDCDev_u8GetHallStt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptGeneModule->u8GetHallState(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidChgHallPattern(const uint8 ku8DevID)
{
   BLDC_axDeviceSet[ku8DevID].ptGeneModule->vidChgHallPattern(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidSetPwmBcDuty(const uint8 ku8DevID, const float32 f32Duty)
{
   BLDC_axDeviceSet[ku8DevID].ptGeneModule->vidSetPwmBcDuty(&BLDC_axDeviceSet[ku8DevID], f32Duty);
}


uint8 BLDCDev_u8GetHallState(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptGeneModule->u8GetHallStt(&BLDC_axDeviceSet[ku8DevID]);
}

uint8 BLDCDev_u8GetCurDirSts(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptGeneModule->u8GetCurDirSts(&BLDC_axDeviceSet[ku8DevID]);
}

uint8 BLDCDev_u8GetDutyModeStt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptGeneModule->u8GetDutyModeStt(&BLDC_axDeviceSet[ku8DevID]);
}

boolean BLDCDev_bGetHallUndefFlt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetHallUndefFlt();
}

boolean BLDCDev_bGetHallInvalidFlt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetHallInvalidFlt();
}

boolean BLDCDev_bGetP5vAD2SOverVolFlt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetP5vAD2SOverVolFlt();
}

boolean BLDCDev_bGetP5vAD2SUnderVolFlt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetP5vAD2SUnderVolFlt();
}

boolean BLDCDev_bGetUvwShortGnd(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetUvwShortGnd();
}

boolean BLDCDev_bGetUvwShortVs(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetUvwShortVs();
}
