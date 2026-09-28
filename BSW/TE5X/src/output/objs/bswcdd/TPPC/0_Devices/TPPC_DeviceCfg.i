# 1 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.c"







# 1 "bswcdd\\TPPC\\0_Devices\\TPPC_Device.h" 1
# 11 "bswcdd\\TPPC\\0_Devices\\TPPC_Device.h"
# 1 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h" 1
# 36 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
enum {
   eTPPC_DEV_GTM_START_INDEX = 0,
   eTPPC_DEV_GTM_ACM_INDEX = eTPPC_DEV_GTM_START_INDEX,
   eTPPC_DEV_GTM_EPS_INDEX,
   eTPPC_DEV_GTM_END_INDEX,

   eTPPC_DEV_MAX_NUM = eTPPC_DEV_GTM_END_INDEX
};
# 12 "bswcdd\\TPPC\\0_Devices\\TPPC_Device.h" 2
# 1 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceType.h" 1






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
# 8 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceType.h" 2
# 16 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceType.h"
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
# 13 "bswcdd\\TPPC\\0_Devices\\TPPC_Device.h" 2
# 29 "bswcdd\\TPPC\\0_Devices\\TPPC_Device.h"
extern const TPPC_Device TPPC_axDeviceSet[eTPPC_DEV_MAX_NUM];
# 9 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.c" 2
# 17 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.c"
void TPPC_vidDebug(void);
void TPPC_vidModuleInit(const TPPC_Device * const kpktDev);
void TPPC_vidStartTimer(const TPPC_Device * const kpktDev, boolean bStartCmd);
void TPPC_vidStartPwmOutput(const TPPC_Device * const kpktDev, boolean bStartCmd);
void TPPC_vidSetPwmFreq(const TPPC_Device * const kpktDev, float32 f32Freq);
void TPPC_vidSetPwmBcDuty(const TPPC_Device * const kpktDev, float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);




extern const TPPC_TimerDriver TPPC_GtmTDriver[];
extern const TPPC_GeneModule TPPC_xGeneModule;

extern const TPPC_AppFunc TPPC_xACMAswFunc;
extern const TPPC_AppFunc TPPC_xEPSAswFunc;
# 40 "bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.c"
const TPPC_Device TPPC_axDeviceSet[eTPPC_DEV_MAX_NUM] = {
   {
      .u8DeviceID = eTPPC_DEV_GTM_ACM_INDEX,
      .pktAppFunc = &TPPC_xACMAswFunc,
      .pktTimerDrv = &TPPC_GtmTDriver[eTPPC_DEV_GTM_ACM_INDEX],

      .vidDebug = TPPC_vidDebug,
      .vidModuleInit = TPPC_vidModuleInit,
      .vidStartPwmOutput = TPPC_vidStartPwmOutput,
      .vidStartTimer = TPPC_vidStartTimer,
      .vidSetPwmBcDuty = TPPC_vidSetPwmBcDuty,
      .vidSetPwmFreq = TPPC_vidSetPwmFreq
   },
   {
      .u8DeviceID = eTPPC_DEV_GTM_EPS_INDEX,
      .pktAppFunc = &TPPC_xEPSAswFunc,
      .pktTimerDrv = &TPPC_GtmTDriver[eTPPC_DEV_GTM_EPS_INDEX],

      .vidDebug = TPPC_vidDebug,
      .vidModuleInit = TPPC_vidModuleInit,
      .vidStartPwmOutput = TPPC_vidStartPwmOutput,
      .vidStartTimer = TPPC_vidStartTimer,
      .vidSetPwmBcDuty = TPPC_vidSetPwmBcDuty,
      .vidSetPwmFreq = TPPC_vidSetPwmFreq
   }
};
