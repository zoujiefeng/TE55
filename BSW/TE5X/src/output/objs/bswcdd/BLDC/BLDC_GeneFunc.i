# 1 "bswcdd\\BLDC\\BLDC_GeneFunc.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\BLDC\\BLDC_GeneFunc.c"
# 9 "bswcdd\\BLDC\\BLDC_GeneFunc.c"
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
# 10 "bswcdd\\BLDC\\BLDC_GeneFunc.c" 2
# 1 "bswcdd\\BLDC\\BLDC_GeneFunc.h" 1
# 11 "bswcdd\\BLDC\\BLDC_GeneFunc.c" 2





# 1 "bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 88 "bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 89 "bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 17 "bswcdd\\BLDC\\BLDC_GeneFunc.c" 2
const uint16 BLDC_ku16RvsDutyDelayC = 100;

# 1 "bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 93 "bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 94 "bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 20 "bswcdd\\BLDC\\BLDC_GeneFunc.c" 2




void BLDC_vidDebug(void);
void BLDC_vidModuleInit(const BLDC_Device * const kpktDev);
uint8 BLDC_u8GetHallState(const BLDC_Device * const kpktDev);
uint8 BLDC_u8GetCurDirSts(const BLDC_Device * const kpktDev);
uint8 BLDC_u8GetDutyModeStt(const BLDC_Device * const kpktDev);
uint8 BLDC_u8GetHallStt(const BLDC_Device * const kpktDev);
void BLDC_vidStartRotation(const BLDC_Device * const kpktDev, const uint8 u8BldcDir);
void BLDC_vidChgHallPattern(const BLDC_Device * const kpktDev);
void BLDC_vidSetPwmBcDuty(const BLDC_Device * const kpktDev, const float32 f32Duty);




static BLDC_PwmCtrlVarSet BLDC_xPwmCtrlVarSet[eBLDC_DEV_MAX_NUM];
static BLDC_HallCtrlVarSet BLDC_xHallCtrlVarSet[eBLDC_DEV_MAX_NUM];






const BLDC_HallCtrlTable BLDC_au8BackwardTable[6] = {
   {1, 5, 0x09},
   {2, 3, 0x12},
   {3, 1, 0x18},
   {4, 6, 0x24},
   {5, 4, 0x21},
   {6, 2, 0x06}
};



const BLDC_HallCtrlTable BLDC_au8ForwardTable[6] = {
   {1, 3, 0x21},
   {2, 6, 0x18},
   {3, 2, 0x09},
   {4, 5, 0x06},
   {5, 1, 0x24},
   {6, 4, 0x12}
};

const BLDC_GeneModule BLDC_xGeneModule = {
   .PwmCtrlVar = &BLDC_xPwmCtrlVarSet[0],
   .HallCtrlVar = &BLDC_xHallCtrlVarSet[0],

   .vidDebug = BLDC_vidDebug,
   .vidModuleInit = BLDC_vidModuleInit,
   .u8GetHallState = BLDC_u8GetHallStt,
   .vidSetPwmBcDuty = BLDC_vidSetPwmBcDuty,
   .vidStartRotation = BLDC_vidStartRotation,
   .vidChgHallPattern = BLDC_vidChgHallPattern,

   .u8GetHallStt = BLDC_u8GetHallState,
   .u8GetCurDirSts = BLDC_u8GetCurDirSts,
   .u8GetDutyModeStt = BLDC_u8GetDutyModeStt
};




__attribute__ ((optimize("O0"))) void BLDC_vidModuleInit(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID;

   if(kpktDev != ((void *)0))
   {
      u8DevID = kpktDev->u8DeviceID;

      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt = 0;
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts = (0x00);
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8PrevDirSts = (0x00);
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_GOING;

      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts = (0x00);
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8CurHallStt = 0;
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrCurHallStt = 0;
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrExpOutput = 0;
   }
   else
   {
      kpktDev->ptGeneModule->vidDebug();
   }
}

uint8 BLDC_u8GetHallState(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID = kpktDev->u8DeviceID;
   return BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8CurHallStt;
}

uint8 BLDC_u8GetCurDirSts(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID = kpktDev->u8DeviceID;
   return BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts;
}

uint8 BLDC_u8GetDutyModeStt(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID = kpktDev->u8DeviceID;
   return BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt;
}
# 137 "bswcdd\\BLDC\\BLDC_GeneFunc.c"
uint8 BLDC_u8GetHallStt(const BLDC_Device * const kpktDev)
{
   uint16 u16LocPos0;
   uint16 u16LocPos1;
   uint16 u16LocPos2;
   uint16 u16LocFirstHall;

   u16LocPos0 = kpktDev->ptHalModule->u16IOReadHall_1();
   u16LocPos1 = kpktDev->ptHalModule->u16IOReadHall_2();
   u16LocPos2 = kpktDev->ptHalModule->u16IOReadHall_3();
   u16LocFirstHall = (u16LocPos0 << 2) | (u16LocPos1 << 1) | u16LocPos2;

   return (uint8)u16LocFirstHall;
}
# 164 "bswcdd\\BLDC\\BLDC_GeneFunc.c"
void BLDC_vidStartRotation(const BLDC_Device * const kpktDev, const uint8 u8BldcDir)
{
   uint8 u8LocIdx;
   uint8 u8LocCurHall;
   uint8 u8LocFirstOutput;

   uint8 u8DevID = kpktDev->u8DeviceID;
   boolean bLocOutIdxFind = (0 != 0);

   BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts = u8BldcDir;


   u8LocCurHall = BLDC_u8GetHallStt(kpktDev);
   BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8CurHallStt = u8LocCurHall;

   if ((0x00) == u8BldcDir)
   {
      for(u8LocIdx = 0; u8LocIdx < 6; u8LocIdx++)
      {
         if (BLDC_au8ForwardTable[u8LocIdx].BLDC_u8ExpHall == u8LocCurHall)
         {
            bLocOutIdxFind = (1 != 0);
            u8LocFirstOutput = BLDC_au8ForwardTable[u8LocIdx].BLDC_u8ExpOutput;
            break;
         }
      }
   }
   else
   {
      for(u8LocIdx = 0; u8LocIdx < 6; u8LocIdx++)
      {
         if (BLDC_au8BackwardTable[u8LocIdx].BLDC_u8ExpHall == u8LocCurHall)
         {
            bLocOutIdxFind = (1 != 0);
            u8LocFirstOutput = BLDC_au8BackwardTable[u8LocIdx].BLDC_u8ExpOutput;
            break;
         }
      }
   }

   if ((1 != 0) == bLocOutIdxFind)
   {

      kpktDev->ptTimerDrv->vidSetPwmOutState(kpktDev->ptTimerDrv, u8BldcDir, u8LocIdx);

      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrCurHallStt = u8LocCurHall;
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrExpOutput = u8LocFirstOutput;
   }
}
# 225 "bswcdd\\BLDC\\BLDC_GeneFunc.c"
void BLDC_vidChgHallPattern(const BLDC_Device * const kpktDev)
{
   boolean bLocIdxFind;
   uint8 u8LocIdx;
   uint8 u8LocCurHall;
   uint8 u8LocExpOutput;

   uint8 u8DevID = kpktDev->u8DeviceID;

   if (BLDC_DUTY_GOING == BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt)
   {
      bLocIdxFind = (0 != 0);


      u8LocCurHall = BLDC_u8GetHallStt(kpktDev);
      BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8CurHallStt = u8LocCurHall;

      if ((0x00) == BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts)
      {
         for(u8LocIdx = 0; u8LocIdx < 6; u8LocIdx++)
         {
            if (BLDC_au8ForwardTable[u8LocIdx].BLDC_u8ExpHall == u8LocCurHall)
            {
               bLocIdxFind = (1 != 0);
               u8LocExpOutput = BLDC_au8ForwardTable[u8LocIdx].BLDC_u8ExpOutput;
               break;
            }
         }
      }
      else
      {
         for(u8LocIdx = 0; u8LocIdx < 6; u8LocIdx++)
         {
            if (BLDC_au8BackwardTable[u8LocIdx].BLDC_u8ExpHall == u8LocCurHall)
            {
               bLocIdxFind = (1 != 0);
               u8LocExpOutput = BLDC_au8BackwardTable[u8LocIdx].BLDC_u8ExpOutput;
               break;
            }
         }
      }

      if (bLocIdxFind)
      {
         kpktDev->ptTimerDrv->vidSetPwmOutState(kpktDev->ptTimerDrv, BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts, u8LocIdx);

         BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrCurHallStt = u8LocCurHall;
         BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8WrExpOutput = u8LocExpOutput;
      }
   }
}
# 286 "bswcdd\\BLDC\\BLDC_GeneFunc.c"
void BLDC_vidSetPwmBcDuty(const BLDC_Device * const kpktDev, const float32 f32Duty)
{
   float f32LocPwmDuty;
   uint8 u8DevID = kpktDev->u8DeviceID;

   if (f32Duty >= 0.0f)
   {
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts = (0x00);
      f32LocPwmDuty = f32Duty;
   }
   else
   {
      BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts = (0x01);
      f32LocPwmDuty = f32Duty * (-1.0f);
   }

   switch (BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt)
   {
      case BLDC_DUTY_CLOSE:
      {
         f32LocPwmDuty = 0.0f;
         kpktDev->ptTimerDrv->vidPwmDisable(kpktDev->ptTimerDrv);
         break;
      }

      case BLDC_DUTY_REVRSE:
      {
         f32LocPwmDuty = 0.0f;
         BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt = 0;
         BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_BRAKE;
         break;
      }

      case BLDC_DUTY_BRAKE:

      {
         f32LocPwmDuty = 0.0f;
         if (BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt < BLDC_ku16RvsDutyDelayC)
         {
            BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt++;
            kpktDev->ptTimerDrv->vidPwmDisable(kpktDev->ptTimerDrv);
         }
         else
         {
            BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u16DutyDelayCnt = 0;
            BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_SWDIR;
         }
         break;
      }

      case BLDC_DUTY_SWDIR:
      {
         f32LocPwmDuty = 0.0f;
         BLDC_vidStartRotation(kpktDev, BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts);
         BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_GOING;
         break;
      }

      case BLDC_DUTY_GOING:
      {
         if((BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8PrevDirSts != BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts)
         || (BLDC_xHallCtrlVarSet[u8DevID].BLDC_u8ConfirmDirSts != BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts))
         {
            BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_REVRSE;
            f32LocPwmDuty = 0.0f;
         }
         break;
      }

      default:
         break;
   }

   BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8PrevDirSts = BLDC_xPwmCtrlVarSet[u8DevID].BLDC_u8CurDirSts;

   if (f32LocPwmDuty < 0.0f)
   {
      f32LocPwmDuty = 0.0f;
   }
   else if (f32LocPwmDuty >= 1.0f)
   {
      f32LocPwmDuty = 1.0f;
   }
   else
   {

   }

   kpktDev->ptTimerDrv->vidSetPwmDuty(kpktDev->ptTimerDrv, f32LocPwmDuty * 100.0f);
}
