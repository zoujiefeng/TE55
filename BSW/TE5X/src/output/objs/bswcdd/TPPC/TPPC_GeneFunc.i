# 1 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
# 9 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
# 1 ".\\output\\inc/TPPC_Device.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_Device.h" 1
# 11 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_Device.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h" 1
# 36 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
enum {
   eTPPC_DEV_GTM_START_INDEX = 0,
   eTPPC_DEV_GTM_ACM_INDEX = eTPPC_DEV_GTM_START_INDEX,
   eTPPC_DEV_GTM_EPS_INDEX,
   eTPPC_DEV_GTM_END_INDEX,

   eTPPC_DEV_MAX_NUM = eTPPC_DEV_GTM_END_INDEX
};
# 12 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_Device.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceType.h" 1






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
# 8 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceType.h" 2
# 16 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceType.h"
typedef struct TPPC_Duty TPPC_Duty;
typedef struct TPPC_Device TPPC_Device;
typedef struct TPPC_AppFunc TPPC_AppFunc;
typedef struct TPPC_GeneVarSet TPPC_GeneVarSet;
typedef struct TPPC_GeneModule TPPC_GeneModule;
typedef struct TPPC_TimerDriver TPPC_TimerDriver;

struct TPPC_Duty{
   float32 f32Duty1;
   float32 f32Duty2;
   float32 f32Duty3;
};

struct TPPC_TimerDriver{
   void *pvCommDrv;
   const void *pkvCfgHandle;

   void (*vidIntHwInit)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidIntTrigEnable)(const TPPC_TimerDriver * const kpktDrv, boolean bEnable);
   void (*vidStartTimer)(const TPPC_TimerDriver * const kpktDrv, boolean bStartCmd);

   void (*vidTrigLowAsc)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidTrigHighAsc)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidPwmEnable)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidPwmDisable)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidPwmDisableImmediately)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidSetPwmOutState)(const TPPC_TimerDriver * const kpktDrv, uint8 u8Dir, uint8 u8Index);
   void (*vidSetPwmDuty)(const TPPC_TimerDriver * const kpktDrv, const TPPC_Duty *const kpktDuty);
   void (*vidSetPwmFreq)(const TPPC_TimerDriver * const kpktDrv, float32 f32Freq);
   void (*vidSetSingleChPhase)(const TPPC_TimerDriver * const kpktDrv, float32 f32Freq, uint8 u8ChIndex);
};

struct TPPC_AppFunc{
   void (*vidInit)(const TPPC_Device * const kpktDev);
   void (*vidAscEntry)(const TPPC_Device * const kpktDev);
   void (*vidMotorStateMng)(const TPPC_Device * const kpktDev);
   void (*vidSetPwmModReq)(const uint16 u16PwmMod);
   void (*vidSetClrFaultReq)(boolean bClrFaultReq);
   void (*vidSetMotorSpdRdyFlg)(boolean bMotorSpdRdy);
   uint8 (*u8GetPwmState)(void);
   boolean (*bGetPwmRunFlag)(void);
   boolean (*bGetHwFaultIgbt)(void);
   boolean (*bGetHwFaultIgbtL)(void);
   boolean (*bGetHwFaultIgbtH)(void);
   boolean (*bGetAscisClose)(void);
};

struct TPPC_Device{
   uint8 u8DeviceID;

   const TPPC_AppFunc *pktAppFunc;
   const TPPC_TimerDriver *pktTimerDrv;

   void (*vidDebug)(void);
   void (*vidModuleInit)(const TPPC_Device * const kpktDev);
   void (*vidStartPwmOutput)(const TPPC_Device * const kpktDev, boolean bStartCmd);
   void (*vidStartTimer)(const TPPC_Device * const kpktDev, boolean bStartCmd);
   void (*vidSetPwmBcDuty)(const TPPC_Device * const kpktDev, float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);
   void (*vidSetPwmFreq)(const TPPC_Device * const kpktDev, float32 f32Freq);
};
# 13 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_Device.h" 2
# 29 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_Device.h"
extern const TPPC_Device TPPC_axDeviceSet[eTPPC_DEV_MAX_NUM];
# 2 ".\\output\\inc/TPPC_Device.h" 2
# 10 "bswcdd\\TPPC\\TPPC_GeneFunc.c" 2
# 21 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
typedef struct TPPC_GeneVarSet{
   uint16 TPPC_u16DutyDelayCnt;
   uint8 TPPC_u8PrevDirSts;
   uint8 TPPC_u8CurDirSts;
   uint8 TPPC_u8DutyModeStt;
   uint8 TPPC_u8DutyHoldTicks;
   float32 TPPC_f32CurCycleDuty;

   float32 f32PwmDutyPhysUZ;
   float32 f32PwmDutyPhysVZ;
   float32 f32PwmDutyPhysWZ;
}TPPC_GeneVarSet;
# 45 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
static TPPC_GeneVarSet TPPC_xGeneVarSet[eTPPC_DEV_MAX_NUM];
# 55 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
# 1 "bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 90 "bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 591 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".cpu3_psram" axwc3
# 2 ".\\output\\inc/CddMemMap.h" 2
# 91 "bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 56 "bswcdd\\TPPC\\TPPC_GeneFunc.c" 2
__attribute__ ((optimize("O0"))) void TPPC_vidModuleInit(const TPPC_Device * const kpktDev)
{
   uint8 u8DevID;

   if(kpktDev != ((void *)0))
   {
      u8DevID = kpktDev->u8DeviceID;
   }
   else
   {
      kpktDev->vidDebug();
   }
}
# 79 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
uint16 TPPC_u16GetPwmDeadTime(const TPPC_Device * const kpktDev)
{
   uint16 u16LocPwmDeadTime = 0;



   return (u16LocPwmDeadTime);
}
# 98 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
void TPPC_vidStartPwmOutput(const TPPC_Device * const kpktDev, boolean bStartCmd)
{
   if((1 != 0) == bStartCmd)
   {
      kpktDev->pktTimerDrv->vidPwmEnable(kpktDev->pktTimerDrv);
   }
   else
   {
      kpktDev->pktTimerDrv->vidPwmDisable(kpktDev->pktTimerDrv);
   }
}
# 120 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
void TPPC_vidStartTimer(const TPPC_Device * const kpktDev, boolean bStartCmd)
{
   kpktDev->pktTimerDrv->vidStartTimer(kpktDev->pktTimerDrv, bStartCmd);
}
# 134 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
void TPPC_vidSetPwmBcDuty(const TPPC_Device * const kpktDev,
                          float32 f32DutyU,
                          float32 f32DutyV,
                          float32 f32DutyW)
{
   TPPC_Duty tDuty;


   do{ f32DutyU = (((f32DutyU) < (0.0f)) ? (0.0f) : (((f32DutyU) > (100.0f)) ? (100.0f) : (f32DutyU))); }while(0);
   do{ f32DutyV = (((f32DutyV) < (0.0f)) ? (0.0f) : (((f32DutyV) > (100.0f)) ? (100.0f) : (f32DutyV))); }while(0);
   do{ f32DutyW = (((f32DutyW) < (0.0f)) ? (0.0f) : (((f32DutyW) > (100.0f)) ? (100.0f) : (f32DutyW))); }while(0);

   tDuty.f32Duty1 = f32DutyU;
   tDuty.f32Duty2 = f32DutyV;
   tDuty.f32Duty3 = f32DutyW;
   kpktDev->pktTimerDrv->vidSetPwmDuty(kpktDev->pktTimerDrv, &tDuty);
}
# 161 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
void TPPC_vidSetPwmFreq(const TPPC_Device * const kpktDev, float32 f32Freq)
{
   kpktDev->pktTimerDrv->vidSetPwmFreq(kpktDev->pktTimerDrv, f32Freq);
}
# 177 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
void TPPC_vidSwitchPwmUpdEvent(const TPPC_Device * const kpktDev)
{
# 208 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
}


# 1 "bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 95 "bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 594 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 96 "bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 212 "bswcdd\\TPPC\\TPPC_GeneFunc.c" 2
