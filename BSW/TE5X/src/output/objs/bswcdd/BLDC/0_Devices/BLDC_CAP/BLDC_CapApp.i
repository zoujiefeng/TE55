# 1 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"



# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
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
# 46 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2






# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{



  if (irqs_on)
    _enable();
  else
    _disable();

}
# 54 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2
# 75 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
typedef unsigned int unsigned_int;
# 201 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned __crc32bw( unsigned b, unsigned a )
 __attribute__ ((always_inline));






static __inline__ unsigned __crc32bw( unsigned b, unsigned a ) {
  unsigned res;
  __asm__ volatile("crc32b.w %0, %1, %2" :"=d"(res) : "d"(b), "d"(a): "memory");
    return res;
}
# 223 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned __crc32b( unsigned b, unsigned a )
 __attribute__ ((always_inline));






static __inline__ unsigned __crc32b( unsigned b, unsigned a ) {
  unsigned res;
  __asm__ volatile("crc32.b %0, %1, %2" :"=d"(res) : "d"(b), "d"(a): "memory");
    return res;
}
# 613 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned _extru(unsigned a, unsigned p, unsigned w) {
  unsigned res;
  __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                    : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14","d15");
  return res;
}
# 717 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned int cmpswap_w (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
  __extension__ unsigned long long reg64
    = value | (unsigned long long) condition << 32;

  __asm__ __volatile__ ("cmpswap.w [%[addr]]0, %A[reg]"
                        : [reg] "+d" (reg64)
                        : [addr] "a" (address)
                        : "memory");
    return reg64;
}
# 839 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned int swapmskw (unsigned int *address,
                                           unsigned int value,unsigned int mask)
{
  __extension__ unsigned long long reg64
    = value | (unsigned long long) mask << 32;

    __asm__ __volatile__( "swapmsk.w [%[addr]] 0,%A[reg]"
        : [reg]"+d" (reg64)
        : [addr]"a" (address)
        : "memory");
     return ((unsigned int)reg64 & mask);
}
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 5 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c" 2




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
# 10 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c" 2
# 1 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapDataType.h" 1







# 1 ".\\output\\inc/Std_Types.h" 1
# 9 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapDataType.h" 2
# 30 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapDataType.h"
typedef struct BLDC_tMotorMgrVarSet{
   uint16 BLDC_u16PowerOnDelay;
   uint8 BLDC_u8MotorMgrSts;
}BLDC_tMotorMgrVarSet;


typedef struct BLDC_tDtcRptVarSet{
   uint16 BLDC_u16OilPressureRaw;
   boolean BLDC_bOilPressShortGndFlt;
   boolean BLDC_bOilPressShortVccFlt;
   float32 BLDC_f32BatteryVoltage;
   float32 BLDC_f32BkpVoltage;
}BLDC_tDtcRptVarSet;


typedef struct BLDC_tHallDetVarSet{
   boolean BLDC_bHallInvalidFlt;
   boolean BLDC_bHallUndefFlt;
   boolean BLDC_bP5vAD2SOverVolFlt;
   boolean BLDC_bP5vAD2SUnderVolFlt;
   float32 BLDC_f32P5vAD2SPhys;
   uint8 BLDC_u8DiagHallStt;
   uint8 BLDC_u8DiagHallSttPre;
   uint16 BLDC_u16P5vAD2SRaw;
}BLDC_tHallDetVarSet;


typedef struct BLDC_tMidPDetVarSet{
   boolean BLDC_bUShortGnd;
   boolean BLDC_bUShortVs;
   boolean BLDC_bVShortGnd;
   boolean BLDC_bVShortVs;
   boolean BLDC_bWShortGnd;
   boolean BLDC_bWShortVs;
   boolean BLDC_bUvwShortGnd;
   boolean BLDC_bUvwShortVs;
   uint8 BLDC_u8PfbDutyCnt;
   uint8 BLDC_u8WrExpOutputLast;
   uint16 BLDC_u16TgtDutyRisingDelay;
   uint16 BLDC_u16ShortRecoveryCnt;
   uint16 BLDC_u16ShortConfirmCnt;
   float32 BLDC_f32TgtDutyPhysSum;
   float32 BLDC_f32Pfb1DutyPhysSum;
   float32 BLDC_f32Pfb2DutyPhysSum;
   float32 BLDC_f32Pfb3DutyPhysSum;
   float32 BLDC_f32PrevTgtDuty;
   float32 BLDC_f32TgtDutyDeltVal;
   float32 BLDC_f32Pfb1DutyPhys[( 8 )];
   float32 BLDC_f32Pfb2DutyPhys[( 8 )];
   float32 BLDC_f32Pfb3DutyPhys[( 8 )];
   float32 BLDC_f32TgtDutyPhys[( 8 )];
}BLDC_tMidPDetVarSet;


typedef struct BLDC_tBoolCalibSet{
   boolean bHallInvalidFltTestOnC;
   boolean bHallUndefFltTestOnC;
   boolean bP5vAD2SOverVolFltTestOnC;
   boolean bP5vAD2SUnderVolFltTestOnC;
   boolean bOilPressShortGndFltTestOnC;
   boolean bOilPressShortVccFltTestOnC;
}BLDC_tBoolCalibSet;

typedef struct BLDC_tUint16CalibSet{
   uint16 u16TgtDutyRisingTimC;
   uint16 u16MidPotRcvTimC;
   uint16 u16MidPotFltConfirmC;
   uint16 u16MidPotFltIncStepC;
}BLDC_tUint16CalibSet;

typedef struct BLDC_tFloatCalibSet{
   float32 f32LVThdHighC;
   float32 f32LVThdLowC;
   float32 f32P5vAD2SOverVolC;
   float32 f32P5vAD2SUnderVolC;
   float32 f32MidPotShrtGndDutyC;
   float32 f32MidPotShrtVccDutyC;
   float32 f32MidPotTgtHighC;
   float32 f32MidPotTgtLowC;
   float32 f32TgtDutyDeltMaxC;
   float32 f32MidPotMaxMonitorDutyC;
   float32 f32MidPotMinMonitorDutyC;
   float32 f32MotorSpeedC;
}BLDC_tFloatCalibSet;

typedef struct BLDC_HalApi{

   uint16 (*u16ADReadOilPressure)(void);
   uint16 (*u16ADRead12VBattery)(void);
   uint16 (*u16ADRead12VBackup)(void);
   uint16 (*u16ADReadP5VAD2S)(void);

   void (*vidStartPosSample)(void);
   void (*vidBusKeyConfig) (float32 f32Percent);
   boolean (*bGetMotPosDuty)(float32 *pf32Duty, uint32 *pu32PeriodT, uint32 *pu32ActiveT);



   void (*vidSetHallInvalidState)(boolean bStatus);
   void (*vidSetHallUndefinedState)(boolean bStatus);
   void (*vidSetHallSupplyLowState)(boolean bStatus);
   void (*vidSetPhaseShortGndState)(boolean bStatus);
   void (*vidSetPhaseShortVccState)(boolean bStatus);

   uint16 (*u16ReadHallUndefineLogged)(void);
   uint16 (*u16ReadHallSupplyLowLogged)(void);

   boolean (*bGetReadyState)(void);
}BLDC_HalApi;
# 11 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c" 2
# 1 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 1
# 11 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
# 21 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h"
# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 22 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
extern const boolean BLDC_bHallInvalidFltTestOnC;
extern const boolean BLDC_bHallUndefFltTestOnC;
extern const boolean BLDC_bP5vAD2SOverVolFltTestOnC;
extern const boolean BLDC_bP5vAD2SUnderVolFltTestOnC;
extern const boolean BLDC_bOilPressShortGndFltTestOnC;
extern const boolean BLDC_bOilPressShortVccFltTestOnC;

# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 115 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 116 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 30 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2


# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 33 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
extern const uint16 BLDC_ku16TgtDutyRisingTimC;
extern const uint16 BLDC_ku16MidPotRcvTimC;
extern const uint16 BLDC_ku16MidPotFltConfirmC;
extern const uint16 BLDC_ku16MidPotFltIncStepC;

# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 93 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 94 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 39 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2


# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 42 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
extern const float32 BLDC_kf32LVThdHighC;
extern const float32 BLDC_kf32LVThdLowC;
extern const float32 BLDC_kf32P5vAD2SOverVolC;
extern const float32 BLDC_kf32P5vAD2SUnderVolC;
extern const float32 BLDC_kf32MidPotShrtGndDutyC;
extern const float32 BLDC_kf32MidPotShrtVccDutyC;
extern const float32 BLDC_kf32MidPotTgtHighC;
extern const float32 BLDC_kf32MidPotTgtLowC;
extern const float32 BLDC_kf32TgtDutyDeltMaxC;
extern const float32 BLDC_kf32MidPotMaxMonitorDutyC;
extern const float32 BLDC_kf32MidPotMinMonitorDutyC;
extern const float32 BLDC_kf32MotorSpeedC;

# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 56 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
# 12 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c" 2





enum BLDC_MGR_STATE{
   BLDC_MGR_SW_INIT_STATE = 0,
   BLDC_MGR_HW_INIT_STATE,
   BLDC_MGR_READY_STATE,
   BLDC_MGR_RUNNING_STATE
};
# 58 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidInit(void);
static void BLDC_vidMotorStateMng(const BLDC_Device * const kpktDev);
static void BLDC_vidMotPosPwmMng(const BLDC_Device * const kpktDev);
static void BLDC_vidGetPosSigPerd(uint32* pu32PosSigPerd);
static void BLDC_vidGetPositionDuty(float32* pf32PosDuty);
static void BLDC_vidHallDiagMainfunction(const BLDC_Device * const kpktDev, const uint8 u8CurHallStt);

static void BLDC_vidAd2sVolDet(const BLDC_Device * const kpktDev);
static void BLDC_vidHallFaultCheck(const BLDC_Device * const kpktDev);
static boolean BLDC_bFaultRptConditionCheck(const BLDC_Device * const kpktDev);
static void BLDC_vidDtcReportMainFunction(const BLDC_Device * const kpktDev);
static void BLDC_bMidPointFaultClear(const BLDC_Device * const kpktDev);

static void BLDC_vidMotorMgrVarInit(void);
static void BLDC_vidHallDetVarInit(void);
static void BLDC_vidMidPDetVarInit(void);
static void BLDC_vidDtcRptVarInit(void);

boolean BLDC_bGetHallUndefFlt(void);
boolean BLDC_bGetHallInvalidFlt(void);
boolean BLDC_bGetP5vAD2SOverVolFlt(void);
boolean BLDC_bGetP5vAD2SUnderVolFlt(void);
boolean BLDC_bGetUvwShortGnd(void);
boolean BLDC_bGetUvwShortVs(void);





const BLDC_AppFunc BLDC_xCapAswFunc = {
   .vidInit = BLDC_vidInit,
   .vidMotorStateMng = BLDC_vidMotorStateMng,
   .vidMotPosPwmMng = BLDC_vidMotPosPwmMng,
   .vidGetPosSigPerd = BLDC_vidGetPosSigPerd,
   .vidGetPositionDuty = BLDC_vidGetPositionDuty,
   .vidHallDiagMainfunction = BLDC_vidHallDiagMainfunction,

   .bGetHallUndefFlt = BLDC_bGetHallUndefFlt,
   .bGetHallInvalidFlt = BLDC_bGetHallInvalidFlt,
   .bGetP5vAD2SOverVolFlt = BLDC_bGetP5vAD2SOverVolFlt,
   .bGetP5vAD2SUnderVolFlt = BLDC_bGetP5vAD2SUnderVolFlt,
   .bGetUvwShortGnd = BLDC_bGetUvwShortGnd,
   .bGetUvwShortVs = BLDC_bGetUvwShortVs
};




static BLDC_tMotorMgrVarSet BLDC_xMotorMgrVarSet;
static BLDC_tHallDetVarSet BLDC_xHallDetVarSet;
static BLDC_tMidPDetVarSet BLDC_xMidPDetVarSet;
static BLDC_tDtcRptVarSet BLDC_xDtcRptVarSet;
float32 BLDC_f32BldcPosDuty;
uint32 BLDC_u32MotPosSigPerd;
uint32 BLDC_u32MotPosSigDuty;




boolean BLDC_bPwmIsReady(void)
{
   boolean bPwmIsReady = (0 != 0);

   if(BLDC_MGR_RUNNING_STATE == BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts)
   {
      bPwmIsReady = (1 != 0);
   }

   return bPwmIsReady;
}

boolean BLDC_bGetHallUndefFlt(void)
{
   return BLDC_xHallDetVarSet.BLDC_bHallUndefFlt;
}

boolean BLDC_bGetHallInvalidFlt(void)
{
   return BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt;
}

boolean BLDC_bGetP5vAD2SOverVolFlt(void)
{
   return BLDC_xHallDetVarSet.BLDC_bP5vAD2SOverVolFlt;
}

boolean BLDC_bGetP5vAD2SUnderVolFlt(void)
{
   return BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt;
}

boolean BLDC_bGetUvwShortGnd(void)
{
   return BLDC_xMidPDetVarSet.BLDC_bUvwShortGnd;
}

boolean BLDC_bGetUvwShortVs(void)
{
   return BLDC_xMidPDetVarSet.BLDC_bUvwShortVs;
}
# 169 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidInit(void)
{
   BLDC_vidMotorMgrVarInit();
   BLDC_vidDtcRptVarInit();
   BLDC_vidMidPDetVarInit();
   BLDC_vidHallDetVarInit();
}
# 186 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidMotorStateMng(const BLDC_Device * const kpktDev)
{
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   switch(BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts)
   {
      case BLDC_MGR_SW_INIT_STATE:
      {
         BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay++;


         pktHalApi->vidBusKeyConfig((0.4f));

         BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts = BLDC_MGR_HW_INIT_STATE;
         break;
      }
      case BLDC_MGR_HW_INIT_STATE:
      {
         BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay++;

         if(((10U) / 2) == BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay)
         {
            kpktDev->ptTimerDrv->vidIntHwInit(kpktDev->ptTimerDrv);

            pktHalApi->vidStartPosSample();
         }

         if(((10U) - 1) == BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay)
         {
            BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts = BLDC_MGR_READY_STATE;
         }
         break;
      }
      case BLDC_MGR_READY_STATE:
      {

         pktHalApi->vidBusKeyConfig((1.0f));

         kpktDev->ptGeneModule->vidStartRotation(kpktDev, (0x00));


         kpktDev->ptTimerDrv->vidIntTrigEnable(kpktDev->ptTimerDrv, (1 != 0));

         BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts = BLDC_MGR_RUNNING_STATE;
         break;
      }
      case BLDC_MGR_RUNNING_STATE:
      {
         BLDC_vidDtcReportMainFunction(kpktDev);
         BLDC_bMidPointFaultClear(kpktDev);
         break;
      }
      default:
      {
         break;
      }
   }
}

static void BLDC_vidMotPosPwmMng(const BLDC_Device * const kpktDev)
{
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   if(pktHalApi->bGetMotPosDuty != ((void *)0))
   {
      (void)pktHalApi->bGetMotPosDuty(&BLDC_f32BldcPosDuty, &BLDC_u32MotPosSigPerd, &BLDC_u32MotPosSigDuty);
   }
}

static void BLDC_vidGetPosSigPerd(uint32* pu32PosSigPerd)
{
   *pu32PosSigPerd = BLDC_u32MotPosSigPerd;
}

static void BLDC_vidGetPositionDuty(float32* pf32PosDuty)
{
   *pf32PosDuty = BLDC_f32BldcPosDuty;
}
# 274 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidHallDiagMainfunction(const BLDC_Device * const kpktDev, const uint8 u8CurHallStt)
{
   uint8 u8LocPreHallSttIdx = 0;
   uint8 u8LocExpForwdHallStt = 0;
   uint8 u8LocExpBacwdHallStt = 0;

   BLDC_xHallDetVarSet.BLDC_u8DiagHallStt = u8CurHallStt;

   if ( (BLDC_xHallDetVarSet.BLDC_u8DiagHallStt > 0)
     && (BLDC_xHallDetVarSet.BLDC_u8DiagHallStt < 7) )
   {
      BLDC_xHallDetVarSet.BLDC_bHallUndefFlt = (0 != 0);

      if (BLDC_xHallDetVarSet.BLDC_u8DiagHallSttPre != BLDC_xHallDetVarSet.BLDC_u8DiagHallStt)
      {
         u8LocPreHallSttIdx = BLDC_xHallDetVarSet.BLDC_u8DiagHallSttPre - 1;
         if (u8LocPreHallSttIdx < 6)
         {
            u8LocExpForwdHallStt = BLDC_au8ForwardTable[u8LocPreHallSttIdx].BLDC_u8ExpHall;
            u8LocExpBacwdHallStt = BLDC_au8BackwardTable[u8LocPreHallSttIdx].BLDC_u8ExpHall;

            if ( (u8CurHallStt != u8LocExpForwdHallStt)
              && (u8CurHallStt != u8LocExpBacwdHallStt) )
            {
               BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt = (1 != 0);
            }
            else
            {
               BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt = (0 != 0);
            }
         }

         BLDC_xHallDetVarSet.BLDC_u8DiagHallSttPre = u8CurHallStt;
      }
   }
   else
   {
      BLDC_xHallDetVarSet.BLDC_bHallUndefFlt = (1 != 0);
   }

   BLDC_vidAd2sVolDet(kpktDev);
}
# 555 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_bMidPointFaultClear(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID;

   u8DevID = kpktDev->u8DeviceID;

   if(BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt > 0)
   {
      BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt--;

      BLDC_xMidPDetVarSet.BLDC_bUShortGnd = (0 != 0);
      BLDC_xMidPDetVarSet.BLDC_bUShortVs = (0 != 0);
      BLDC_xMidPDetVarSet.BLDC_bVShortGnd = (0 != 0);
      BLDC_xMidPDetVarSet.BLDC_bVShortVs = (0 != 0);
      BLDC_xMidPDetVarSet.BLDC_bWShortGnd = (0 != 0);
      BLDC_xMidPDetVarSet.BLDC_bWShortVs = (0 != 0);
      BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt = 0;

      if(0 == BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt)
      {
         BLDC_xMidPDetVarSet.BLDC_u16ShortConfirmCnt = 0;
         BLDC_xMidPDetVarSet.BLDC_bUvwShortGnd = (0 != 0);
         BLDC_xMidPDetVarSet.BLDC_bUvwShortVs = (0 != 0);

         kpktDev->ptGeneModule->PwmCtrlVar[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_REVRSE;
      }
   }
   else
   {
      BLDC_vidHallFaultCheck(kpktDev);
   }
}
# 598 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidDtcReportMainFunction(const BLDC_Device * const kpktDev)
{
   boolean bCheckCondition;
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   bCheckCondition = BLDC_bFaultRptConditionCheck(kpktDev);

   BLDC_xDtcRptVarSet.BLDC_u16OilPressureRaw = pktHalApi->u16ADReadOilPressure();

   if((1 != 0) == bCheckCondition)
   {
      if ((0 != 0) == BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt)
      {
         pktHalApi->vidSetHallInvalidState(BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt);
         pktHalApi->vidSetHallUndefinedState(BLDC_xHallDetVarSet.BLDC_bHallUndefFlt);
      }

      pktHalApi->vidSetHallSupplyLowState(BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt);

      if (BLDC_xDtcRptVarSet.BLDC_u16OilPressureRaw > (4050))
      {
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortVccFlt = (1 != 0);
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortGndFlt = (0 != 0);
      }
      else if (BLDC_xDtcRptVarSet.BLDC_u16OilPressureRaw < (50))
      {
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortVccFlt = (0 != 0);
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortGndFlt = (1 != 0);
      }
      else
      {
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortVccFlt = (0 != 0);
         BLDC_xDtcRptVarSet.BLDC_bOilPressShortGndFlt = (0 != 0);
      }

      pktHalApi->vidSetPhaseShortGndState((((1 != 0) == BLDC_xMidPDetVarSet.BLDC_bUShortGnd)
                                         || ((1 != 0) == BLDC_xMidPDetVarSet.BLDC_bVShortGnd)
                                         || ((1 != 0) == BLDC_xMidPDetVarSet.BLDC_bWShortGnd)));
      pktHalApi->vidSetPhaseShortVccState((((1 != 0) == BLDC_xMidPDetVarSet.BLDC_bUShortVs)
                                         || ((1 != 0) == BLDC_xMidPDetVarSet.BLDC_bVShortVs)
                                         || ((1 != 0) == BLDC_xMidPDetVarSet.BLDC_bWShortVs)));
   }
}
# 651 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidAd2sVolDet(const BLDC_Device * const kpktDev)
{
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   BLDC_xHallDetVarSet.BLDC_u16P5vAD2SRaw = pktHalApi->u16ADReadP5VAD2S();
   BLDC_xHallDetVarSet.BLDC_f32P5vAD2SPhys = (((float32)BLDC_xHallDetVarSet.BLDC_u16P5vAD2SRaw) / 4095.0f) * 10;

   if (BLDC_xHallDetVarSet.BLDC_f32P5vAD2SPhys > BLDC_kf32P5vAD2SOverVolC)
   {
      BLDC_xHallDetVarSet.BLDC_bP5vAD2SOverVolFlt = (1 != 0);
   }
   else
   {
      BLDC_xHallDetVarSet.BLDC_bP5vAD2SOverVolFlt = (0 != 0);
   }

   if (BLDC_xHallDetVarSet.BLDC_f32P5vAD2SPhys < BLDC_kf32P5vAD2SUnderVolC)
   {
      BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt = (1 != 0);
   }
   else
   {
      BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt = (0 != 0);
   }
}
# 687 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidHallFaultCheck(const BLDC_Device * const kpktDev)
{
   uint8 u8DevID;
   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   u8DevID = kpktDev->u8DeviceID;


   if ((pktHalApi->u16ReadHallUndefineLogged() != 0)
   || (pktHalApi->u16ReadHallSupplyLowLogged() != 0) )
   {
      BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt = BLDC_ku16MidPotRcvTimC;
      kpktDev->ptGeneModule->PwmCtrlVar[u8DevID].BLDC_u8DutyModeStt = BLDC_DUTY_CLOSE;
   }
}
# 713 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static boolean BLDC_bFaultRptConditionCheck(const BLDC_Device * const kpktDev)
{
   boolean bBswReadySts;
   boolean bRetVal = (0 != 0);
   uint16 u16LocAdVal;

   const BLDC_HalApi *pktHalApi = (const BLDC_HalApi *)(kpktDev->ptHalModule->pvApi);

   bBswReadySts = pktHalApi->bGetReadyState();


   u16LocAdVal = pktHalApi->u16ADRead12VBattery();
   BLDC_xDtcRptVarSet.BLDC_f32BatteryVoltage = ((float32)u16LocAdVal * 0.0124) + 0.1336;

   u16LocAdVal = pktHalApi->u16ADRead12VBackup();
   BLDC_xDtcRptVarSet.BLDC_f32BkpVoltage = 0;

   if(((BLDC_xDtcRptVarSet.BLDC_f32BatteryVoltage >= BLDC_kf32LVThdLowC) && (BLDC_xDtcRptVarSet.BLDC_f32BatteryVoltage <= BLDC_kf32LVThdHighC))
   || ((BLDC_xDtcRptVarSet.BLDC_f32BkpVoltage >= BLDC_kf32LVThdLowC) && (BLDC_xDtcRptVarSet.BLDC_f32BkpVoltage <= BLDC_kf32LVThdHighC)))
   {
      if (bBswReadySts)
      {
         bRetVal = (1 != 0);
      }
   }

   return bRetVal;
}
# 752 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidMotorMgrVarInit(void)
{
   BLDC_xMotorMgrVarSet.BLDC_u16PowerOnDelay = 0;
   BLDC_xMotorMgrVarSet.BLDC_u8MotorMgrSts = BLDC_MGR_SW_INIT_STATE;
   BLDC_f32BldcPosDuty = 0.0f;
   BLDC_u32MotPosSigPerd = 0;
   BLDC_u32MotPosSigDuty = 0;
}
# 771 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidHallDetVarInit(void)
{
   BLDC_xHallDetVarSet.BLDC_u8DiagHallStt = 0;
   BLDC_xHallDetVarSet.BLDC_u8DiagHallSttPre = 0;
   BLDC_xHallDetVarSet.BLDC_bHallUndefFlt = (0 != 0);
   BLDC_xHallDetVarSet.BLDC_bHallInvalidFlt = (0 != 0);
   BLDC_xHallDetVarSet.BLDC_u16P5vAD2SRaw = 0;
   BLDC_xHallDetVarSet.BLDC_f32P5vAD2SPhys = 0.0f;
   BLDC_xHallDetVarSet.BLDC_bP5vAD2SOverVolFlt = (0 != 0);
   BLDC_xHallDetVarSet.BLDC_bP5vAD2SUnderVolFlt = (0 != 0);
}
# 793 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidMidPDetVarInit(void)
{
   uint8 u8Index;

   BLDC_xMidPDetVarSet.BLDC_bUShortGnd = (0 != 0);
   BLDC_xMidPDetVarSet.BLDC_bUShortVs = (0 != 0);
   BLDC_xMidPDetVarSet.BLDC_bUvwShortGnd = (0 != 0);
   BLDC_xMidPDetVarSet.BLDC_bUvwShortVs = (0 != 0);
   BLDC_xMidPDetVarSet.BLDC_bVShortGnd = (0 != 0);
   BLDC_xMidPDetVarSet.BLDC_bVShortVs = (0 != 0);
   BLDC_xMidPDetVarSet.BLDC_bWShortGnd = (0 != 0);
   BLDC_xMidPDetVarSet.BLDC_bWShortVs = (0 != 0);
   BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhysSum = 0.0f;
   BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhysSum = 0.0f;
   BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhysSum = 0.0f;
   BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhysSum = 0.0f;
   BLDC_xMidPDetVarSet.BLDC_u8PfbDutyCnt = 0;
   BLDC_xMidPDetVarSet.BLDC_u8WrExpOutputLast = 0;
   BLDC_xMidPDetVarSet.BLDC_u16TgtDutyRisingDelay = 0;
   BLDC_xMidPDetVarSet.BLDC_u16ShortRecoveryCnt = 0;
   BLDC_xMidPDetVarSet.BLDC_u16ShortConfirmCnt = 0;
   BLDC_xMidPDetVarSet.BLDC_f32PrevTgtDuty = 0.0f;
   BLDC_xMidPDetVarSet.BLDC_f32TgtDutyDeltVal = 0.0f;

   for(u8Index = 0; u8Index < ( 8 ); u8Index++)
   {
      BLDC_xMidPDetVarSet.BLDC_f32Pfb1DutyPhys[u8Index] = 0.0f;
   }
   for(u8Index = 0; u8Index < ( 8 ); u8Index++)
   {
      BLDC_xMidPDetVarSet.BLDC_f32Pfb2DutyPhys[u8Index] = 0.0f;
   }
   for(u8Index = 0; u8Index < ( 8 ); u8Index++)
   {
      BLDC_xMidPDetVarSet.BLDC_f32Pfb3DutyPhys[u8Index] = 0.0f;
   }
   for(u8Index = 0; u8Index < ( 8 ); u8Index++)
   {
      BLDC_xMidPDetVarSet.BLDC_f32TgtDutyPhys[u8Index] = 0.0f;
   }
}
# 845 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapApp.c"
static void BLDC_vidDtcRptVarInit(void)
{
   BLDC_xDtcRptVarSet.BLDC_u16OilPressureRaw = 0;
   BLDC_xDtcRptVarSet.BLDC_bOilPressShortGndFlt = (0 != 0);
   BLDC_xDtcRptVarSet.BLDC_bOilPressShortVccFlt = (0 != 0);
   BLDC_xDtcRptVarSet.BLDC_f32BatteryVoltage = 0;
   BLDC_xDtcRptVarSet.BLDC_f32BkpVoltage = 0;
}
