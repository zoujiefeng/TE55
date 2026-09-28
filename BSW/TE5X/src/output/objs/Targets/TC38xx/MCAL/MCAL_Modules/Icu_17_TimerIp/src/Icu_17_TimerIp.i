# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 59 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/McalLib.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 1
# 41 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
# 1 ".\\output\\inc/McalLib_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\McalLib_Cfg.h" 1
# 2 ".\\output\\inc/McalLib_Cfg.h" 2
# 42 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
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
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 273 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
# 1 ".\\output\\inc/McalLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/McalLib_MemMap.h" 2
# 274 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 297 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetCpuWdgPassword(void);
# 324 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_SetCpuWdgPassword(const uint32 Password);
# 350 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteCpuEndInitProtReg
(volatile void* const RegAddress, const uint32 DataValue);
# 377 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetSafetyEndInitPassword(void);
# 405 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_SetSafetyEndInitPassword(const uint32 Password);
# 432 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteSafetyEndInitProtReg
( volatile void* const RegAddress, const uint32 DataValue);
# 466 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteSafetyEndInitProtRegMask
(volatile void* const RegAddress, const uint32 DataValue, uint32 Mask);
# 492 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetPeripheralEndInitPassword(void);
# 520 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_SetPeripheralEndInitPassword(const uint32 Password);
# 547 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WritePeripEndInitProtReg
( volatile void* const RegAddress, const uint32 DataValue);
# 573 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetCpuPhysicalId(void);
# 609 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetGlobalDsprAddress
(const uint32 CpuId, const uint32 LocalDsprAddress);
# 642 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetLocalDsprAddress(const uint32 GlobalDsprAddress);
# 677 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetGlobalPsprAddress
(const uint32 CpuId, const uint32 LocalPsprAddress);
# 711 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetLocalPsprAddress(const uint32 GlobalPsprAddress);
# 734 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_DelayTickResolution(void);
# 762 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_DelayResetTickCalibration(void);
# 794 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_DelayGetTick(void);
# 821 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetCpuIndex(void);
# 853 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_GetSpinlock
(volatile uint32 * const LockAddress, const uint32 Timeout);
# 879 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_ReleaseSpinlock(volatile uint32 * const LockAddress);
# 903 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void McalLib_GetVersionInfo( Std_VersionInfoType* const versioninfo);
# 930 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteSafetyEndInitProtReg16(volatile void* const RegAddress,
                                      const uint16 DataValue);
# 963 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_UpdateSafetyEndInit(const uint32 NewPassword,
                                       const boolean UpdatePassword,
                                       const boolean SetResetProtection);
# 995 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_UpdatePeripheralEndInit(const uint32 NewPassword,
                                           const boolean UpdatePassword,
                                           const boolean SetResetProtection);





# 1 ".\\output\\inc/McalLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h" 1
# 149 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/McalLib_MemMap.h" 2
# 1004 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 2 ".\\output\\inc/McalLib.h" 2
# 60 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2



# 1 ".\\output\\inc/Icu_17_TimerIp.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 1
# 49 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 50 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2

# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 52 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2


# 1 ".\\output\\inc/Icu_17_TimerIp_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_Cfg.h" 1
# 2 ".\\output\\inc/Icu_17_TimerIp_Cfg.h" 2
# 55 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2
# 286 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{


  ICU_17_TIMERIP_MODE_NORMAL = 0U,


  ICU_17_TIMERIP_MODE_SLEEP = 1U
} Icu_17_TimerIp_ModeType;



typedef uint8 Icu_17_TimerIp_ChannelType;


typedef enum
{


  ICU_17_TIMERIP_IDLE = 0U,

  ICU_17_TIMERIP_ACTIVE = 1U
} Icu_17_TimerIp_InputStateType;





typedef enum
{


  ICU_17_TIMERIP_RISING_EDGE = 0U,


  ICU_17_TIMERIP_FALLING_EDGE = 1U,


  ICU_17_TIMERIP_BOTH_EDGES = 2U,
  ICU_17_TIMERIP_NO_EDGE = 3U
} Icu_17_TimerIp_ActivationType;



typedef uint32 Icu_17_TimerIp_ValueType;





typedef struct
{

  Icu_17_TimerIp_ValueType ActiveTime;

  Icu_17_TimerIp_ValueType PeriodTime;
} Icu_17_TimerIp_DutyCycleType;






typedef uint16 Icu_17_TimerIp_IndexType;






typedef uint32 Icu_17_TimerIp_EdgeNumberType;
# 367 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{
  ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT = 0U,
  ICU_17_TIMERIP_MODE_SIGNAL_MEASUREMENT = 1U,
  ICU_17_TIMERIP_MODE_TIMESTAMP = 2U,
  ICU_17_TIMERIP_MODE_EDGE_COUNTER = 3U,
  ICU_17_TIMERIP_MODE_INCREMENTAL_INTERFACE = 4U
} Icu_17_TimerIp_MeasurementModeType;
# 383 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{
  ICU_17_TIMERIP_LOW_TIME = 0U,
  ICU_17_TIMERIP_HIGH_TIME = 1U,
  ICU_17_TIMERIP_PERIOD_TIME = 2U,
  ICU_17_TIMERIP_DUTY_CYCLE = 3U
} Icu_17_TimerIp_SignalMeasurementPropertyType;
# 398 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{
  ICU_17_TIMERIP_LINEAR_BUFFER = 0U,
  ICU_17_TIMERIP_CIRCULAR_BUFFER = 1U
} Icu_17_TimerIp_TimestampBufferType;



typedef void (*Icu_17_TimerIp_NotifiPtrType)(void);
# 415 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{
  ICU_17_TIMERIP_1_COUNT_INPUT = 1U,
  ICU_17_TIMERIP_2_COUNT_INPUT = 3U
} Icu_17_TimerIp_IncrementType;







typedef enum
{
  ICU_17_TIMERIP_ENC_COUNT_UP = 0U,
  ICU_17_TIMERIP_ENC_COUNT_DOWN = 1U
} Icu_17_TimerIp_EncCountDirType;
# 455 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef struct
{
# 467 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
  Icu_17_TimerIp_NotifiPtrType NotificationPointer;

  struct
  {

    unsigned_int MeasurementMode : 3;


    unsigned_int DefaultStartEdge: 2;


    unsigned_int MeasurementProperty: 2;


    unsigned_int WakeupCapability: 2;

    unsigned_int AssignedHwUnitNumber: 16;
# 492 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
    unsigned_int AssignedHwUnit: 2;

    unsigned_int PinSelection: 4;

    unsigned_int Reserved: 1;

    uint32 TimChFilterTimeForRisingEdge;

    uint32 TimChFilterTimeForFallingEdge;

    uint32 OverflowISRThreshold;

    uint16 InterruptMode;

    uint8 TimChannelClockSelect;

    uint8 TimChannelGpr0InputSelect;

    uint8 TimChannelFilterEnable;

    uint8 TimChFilterCounterFreqSelect;

    uint8 TimChFilterModeForRisingEdge;

    uint8 TimChFilterModeForFallingEdge;

    uint8 TimChannelInputSelect;
  } IcuProperties;




  uint8 ModeMappingIndex;
} Icu_17_TimerIp_ChannelConfigType;



typedef struct
{

  const Icu_17_TimerIp_ChannelConfigType* ChannelConfigPtr;

  Icu_17_TimerIp_ChannelType MaxChannelCore;

  Icu_17_TimerIp_ChannelType MaxDataChannelCore;
} Icu_17_TimerIp_CoreConfigType;



typedef struct
{

  const Icu_17_TimerIp_CoreConfigType * CoreConfig[6];







} Icu_17_TimerIp_ConfigType;
# 569 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 627 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 570 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2
# 604 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_Init
(
  const Icu_17_TimerIp_ConfigType *const ConfigPtr
);
# 824 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_SetActivationCondition
(
  const Icu_17_TimerIp_ChannelType Channel,
  const Icu_17_TimerIp_ActivationType Activation
);
# 853 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_DisableEdgeDetection
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 886 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_EnableEdgeDetection
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 918 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_EnableMultiEdgeDetection
(const Icu_17_TimerIp_ChannelType Channel,
 const uint32 EdgeCount);
# 951 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_DisableNotification
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 980 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_EnableNotification
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 1307 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_StartSignalMeasurement
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 1342 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_StopSignalMeasurement
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 1421 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_GetDutyCycleValues
(
  const Icu_17_TimerIp_ChannelType Channel,
  Icu_17_TimerIp_DutyCycleType *const DutyCycleValues
);
# 1680 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 639 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 1681 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2


# 1 ".\\output\\inc/Icu_17_TimerIp_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h" 1
# 59 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 430 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 60 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h" 2

extern const Icu_17_TimerIp_ConfigType Icu_17_TimerIp_Config;
# 75 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 443 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 76 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h" 2
# 2 ".\\output\\inc/Icu_17_TimerIp_PBcfg.h" 2
# 1684 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2
# 2 ".\\output\\inc/Icu_17_TimerIp.h" 2
# 64 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 1 ".\\output\\inc/Icu_17_TimerIp_Local.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Local.h" 1
# 442 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Local.h"
typedef struct
{

  Icu_17_TimerIp_ValueType *Address;

  uint16 Size;

  volatile uint16 Counter;

  uint16 Notify;

  volatile uint16 NotifyCounter;
} Icu_17_TimerIp_TimeCaptureParasType;
# 471 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Local.h"
typedef struct
{

  volatile uint32 ActiveTime;

  volatile uint32 RegValue;

  volatile uint32 FirstEdgeFlag;
} Icu_17_TimerIp_SigMeasureParasCcu6Type;
# 495 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Local.h"
typedef struct
{

  volatile uint32 EdgeCounter;

  uint32 Reserved1;

  uint32 Reserved2;
} Icu_17_TimerIp_EdgeCountParasType;
# 519 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Local.h"
typedef struct
{

  uint32 EdgeDetectCount;

  uint32 Reserved1;

  uint32 Reserved2;
} Icu_17_TimerIp_EdgeDetectParasType;


typedef union {
  Icu_17_TimerIp_TimeCaptureParasType TimeCaptureParas;
  Icu_17_TimerIp_SigMeasureParasCcu6Type SigMeasureParasCcu6;
  Icu_17_TimerIp_EdgeCountParasType EdgeCountParas;
  Icu_17_TimerIp_EdgeDetectParasType EdgeDetectParas;
} Icu_17_TimerIp_ChannelData;





typedef struct
{
  uint32* GlbIndexStatusBasePtr;
  Icu_17_TimerIp_ChannelData* ChannelDataBasePtr;





  Icu_17_TimerIp_ModeType GlobalMode;
} Icu_17_TimerIp_CoreType;
# 2 ".\\output\\inc/Icu_17_TimerIp_Local.h" 2
# 65 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 1 ".\\output\\inc/Icu_17_TimerIp_Cbk.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Cbk.h" 1
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Cbk.h"
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 1
# 44 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Cbk.h" 2
# 53 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Cbk.h"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 627 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Cbk.h" 2
# 77 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Cbk.h"
extern void Icu_17_TimerIp_Timer_Isr(const Icu_17_TimerIp_ChannelType Channel,
                                     const uint32 StatusFlags);






# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 639 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 86 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp_Cbk.h" 2
# 2 ".\\output\\inc/Icu_17_TimerIp_Cbk.h" 2
# 66 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 75 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/IfxGtm_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h" 2
# 73 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef struct _Ifx_GTM_ACCEN0_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_GTM_ACCEN0_Bits;


typedef struct _Ifx_GTM_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_GTM_ACCEN1_Bits;


typedef struct _Ifx_GTM_ADCTRIG_OUT0_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_ADCTRIG_OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG_OUT1_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GTM_ADCTRIG_OUT1_Bits;


typedef struct _Ifx_GTM_AEI_ADDR_XPT_Bits
{
    volatile unsigned int TO_ADDR:20;
    volatile unsigned int TO_W1R0:1;
    volatile unsigned int reserved_21:11;
} Ifx_GTM_AEI_ADDR_XPT_Bits;


typedef struct _Ifx_GTM_AEI_STA_XPT_Bits
{
    volatile unsigned int ADDR:20;
    volatile unsigned int W1R0:1;
    volatile unsigned int reserved_21:11;
} Ifx_GTM_AEI_STA_XPT_Bits;


typedef struct _Ifx_GTM_ARU_ACCESS_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int RREQ:1;
    volatile unsigned int WREQ:1;
    volatile unsigned int reserved_14:18;
} Ifx_GTM_ARU_ACCESS_Bits;


typedef struct _Ifx_GTM_ARU_CADDR_Bits
{
    volatile unsigned int CADDR_0:7;
    volatile unsigned int reserved_7:9;
    volatile unsigned int CADDR_1:7;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_ARU_CADDR_Bits;


typedef struct _Ifx_GTM_ARU_CADDR_END_Bits
{
    volatile unsigned int CADDR_END:7;
    volatile unsigned int reserved_7:25;
} Ifx_GTM_ARU_CADDR_END_Bits;


typedef struct _Ifx_GTM_ARU_CTRL_Bits
{
    volatile unsigned int ARU_0_DYN_EN:2;
    volatile unsigned int ARU_1_DYN_EN:2;
    volatile unsigned int ARU_DYN_RING_MODE:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_ARU_CTRL_Bits;


typedef struct _Ifx_GTM_ARU_DATA_H_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DATA_H_Bits;


typedef struct _Ifx_GTM_ARU_DATA_L_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DATA_L_Bits;


typedef struct _Ifx_GTM_ARU_DBG_ACCESS0_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_ARU_DBG_ACCESS0_Bits;


typedef struct _Ifx_GTM_ARU_DBG_ACCESS1_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_ARU_DBG_ACCESS1_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA0_H_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA0_H_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA0_L_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA0_L_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA1_H_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA1_H_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA1_L_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA1_L_Bits;


typedef struct _Ifx_GTM_ARU_DYN_CTRL_Bits
{
    volatile unsigned int DYN_ARU_UPDATE_EN:1;
    volatile unsigned int DYN_ROUTE_SWAP:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ARU_DYN_CTRL_Bits;


typedef struct _Ifx_GTM_ARU_DYN_RDADDR_Bits
{
    volatile unsigned int DYN_ARU_RDADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_ARU_DYN_RDADDR_Bits;


typedef struct _Ifx_GTM_ARU_DYN_ROUTE_HIGH_Bits
{
    volatile unsigned int DYN_READ_ID3:8;
    volatile unsigned int DYN_READ_ID4:8;
    volatile unsigned int DYN_READ_ID5:8;
    volatile unsigned int DYN_CLK_WAIT:4;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_ARU_DYN_ROUTE_HIGH_Bits;


typedef struct _Ifx_GTM_ARU_DYN_ROUTE_LOW_Bits
{
    volatile unsigned int DYN_READ_ID0:8;
    volatile unsigned int DYN_READ_ID1:8;
    volatile unsigned int DYN_READ_ID2:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ARU_DYN_ROUTE_LOW_Bits;


typedef struct _Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH_Bits
{
    volatile unsigned int DYN_READ_ID9:8;
    volatile unsigned int DYN_READ_ID10:8;
    volatile unsigned int DYN_READ_ID11:8;
    volatile unsigned int DYN_CLK_WAIT:4;
    volatile unsigned int DYN_UPDATE_EN:1;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH_Bits;


typedef struct _Ifx_GTM_ARU_DYN_ROUTE_SR_LOW_Bits
{
    volatile unsigned int DYN_READ_ID6:8;
    volatile unsigned int DYN_READ_ID7:8;
    volatile unsigned int DYN_READ_ID8:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ARU_DYN_ROUTE_SR_LOW_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_EN_Bits
{
    volatile unsigned int NEW_DATA0_IRQ_EN:1;
    volatile unsigned int NEW_DATA1_IRQ_EN:1;
    volatile unsigned int ACC_ACK_IRQ_EN:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_ARU_IRQ_EN_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEW_DATA0:1;
    volatile unsigned int TRG_NEW_DATA1:1;
    volatile unsigned int TRG_ACC_ACK:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_ARU_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ARU_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEW_DATA0:1;
    volatile unsigned int NEW_DATA1:1;
    volatile unsigned int ACC_ACK:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_ARU_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ACT_TB_Bits
{
    volatile unsigned int ACT_TB:24;
    volatile unsigned int TB_TRIG:1;
    volatile unsigned int TBU_SEL:2;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_ATOM_AGC_ACT_TB_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0:2;
    volatile unsigned int ENDIS_CTRL1:2;
    volatile unsigned int ENDIS_CTRL2:2;
    volatile unsigned int ENDIS_CTRL3:2;
    volatile unsigned int ENDIS_CTRL4:2;
    volatile unsigned int ENDIS_CTRL5:2;
    volatile unsigned int ENDIS_CTRL6:2;
    volatile unsigned int ENDIS_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_CTRL0:2;
    volatile unsigned int ENDIS_CTRL1:2;
    volatile unsigned int ENDIS_CTRL2:2;
    volatile unsigned int ENDIS_CTRL3:2;
    volatile unsigned int ENDIS_CTRL4:2;
    volatile unsigned int ENDIS_CTRL5:2;
    volatile unsigned int ENDIS_CTRL6:2;
    volatile unsigned int ENDIS_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0:2;
    volatile unsigned int FUPD_CTRL1:2;
    volatile unsigned int FUPD_CTRL2:2;
    volatile unsigned int FUPD_CTRL3:2;
    volatile unsigned int FUPD_CTRL4:2;
    volatile unsigned int FUPD_CTRL5:2;
    volatile unsigned int FUPD_CTRL6:2;
    volatile unsigned int FUPD_CTRL7:2;
    volatile unsigned int RSTCN0_CH0:2;
    volatile unsigned int RSTCN0_CH1:2;
    volatile unsigned int RSTCN0_CH2:2;
    volatile unsigned int RSTCN0_CH3:2;
    volatile unsigned int RSTCN0_CH4:2;
    volatile unsigned int RSTCN0_CH5:2;
    volatile unsigned int RSTCN0_CH6:2;
    volatile unsigned int RSTCN0_CH7:2;
} Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG:1;
    volatile unsigned int reserved_1:7;
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int UPEN_CTRL0:2;
    volatile unsigned int UPEN_CTRL1:2;
    volatile unsigned int UPEN_CTRL2:2;
    volatile unsigned int UPEN_CTRL3:2;
    volatile unsigned int UPEN_CTRL4:2;
    volatile unsigned int UPEN_CTRL5:2;
    volatile unsigned int UPEN_CTRL6:2;
    volatile unsigned int UPEN_CTRL7:2;
} Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0:2;
    volatile unsigned int INT_TRIG1:2;
    volatile unsigned int INT_TRIG2:2;
    volatile unsigned int INT_TRIG3:2;
    volatile unsigned int INT_TRIG4:2;
    volatile unsigned int INT_TRIG5:2;
    volatile unsigned int INT_TRIG6:2;
    volatile unsigned int INT_TRIG7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_INT_TRIG_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0:2;
    volatile unsigned int OUTEN_CTRL1:2;
    volatile unsigned int OUTEN_CTRL2:2;
    volatile unsigned int OUTEN_CTRL3:2;
    volatile unsigned int OUTEN_CTRL4:2;
    volatile unsigned int OUTEN_CTRL5:2;
    volatile unsigned int OUTEN_CTRL6:2;
    volatile unsigned int OUTEN_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0:2;
    volatile unsigned int OUTEN_STAT1:2;
    volatile unsigned int OUTEN_STAT2:2;
    volatile unsigned int OUTEN_STAT3:2;
    volatile unsigned int OUTEN_STAT4:2;
    volatile unsigned int OUTEN_STAT5:2;
    volatile unsigned int OUTEN_STAT6:2;
    volatile unsigned int OUTEN_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CM0_Bits
{
    volatile unsigned int CM0:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CM1_Bits
{
    volatile unsigned int CM1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CN0_Bits
{
    volatile unsigned int CN0:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CTRL_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int TB12_SEL:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB:5;
    volatile unsigned int CMP_CTRL:1;
    volatile unsigned int EUPM:1;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int ECLK_SRC:1;
    volatile unsigned int WR_REQ:1;
    volatile unsigned int TRIG_PULSE:1;
    volatile unsigned int UDMODE:2;
    volatile unsigned int RST_CCU0:1;
    volatile unsigned int OSM_TRIG:1;
    volatile unsigned int EXT_TRIG:1;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int SLA:1;
    volatile unsigned int OSM:1;
    volatile unsigned int ABM:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int EXT_FUPD:1;
    volatile unsigned int SOMB:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN:1;
    volatile unsigned int CCU1TC_IRQ_EN:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC:1;
    volatile unsigned int TRG_CCU1TC:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC:1;
    volatile unsigned int CCU1TC:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_ATOM_CH_RDADDR_Bits
{
    volatile unsigned int RDADDR0:9;
    volatile unsigned int reserved_9:7;
    volatile unsigned int RDADDR1:9;
    volatile unsigned int reserved_25:7;
} Ifx_GTM_ATOM_CH_RDADDR_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMB_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int TB12_SEL:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB_1_0:2;
    volatile unsigned int ACB_4_3_2:3;
    volatile unsigned int CMP_CTRL:1;
    volatile unsigned int EUPM:1;
    volatile unsigned int SL:1;
    volatile unsigned int reserved_12:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int WR_REQ:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:2;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int ABM:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int SOMB:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMB_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMC_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int TB12_SEL:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB_1_0:2;
    volatile unsigned int ACB_4_3_2:3;
    volatile unsigned int CMP_CTRL:1;
    volatile unsigned int EUPM:1;
    volatile unsigned int SL:1;
    volatile unsigned int reserved_12:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int WR_REQ:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:2;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int SLA:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int ABM:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMC_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMI_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int reserved_2:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB0:1;
    volatile unsigned int reserved_5:4;
    volatile unsigned int reserved_9:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int SL:1;
    volatile unsigned int reserved_12:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMI_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMP_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int reserved_2:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ADL:2;
    volatile unsigned int BITREV:1;
    volatile unsigned int SR0_TRIG:1;
    volatile unsigned int reserved_8:1;
    volatile unsigned int reserved_9:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int ECLK_SRC:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int TRIG_PULSE:1;
    volatile unsigned int UDMODE:2;
    volatile unsigned int RST_CCU0:1;
    volatile unsigned int OSM_TRIG:1;
    volatile unsigned int EXT_TRIG:1;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int OSM:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int EXT_FUPD:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMP_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMS_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int reserved_2:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB0:1;
    volatile unsigned int reserved_5:2;
    volatile unsigned int DSO:1;
    volatile unsigned int reserved_8:1;
    volatile unsigned int reserved_9:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int ECLK_SRC:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int OSM:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int EXT_FUPD:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMS_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SR0_Bits
{
    volatile unsigned int SR0:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SR1_Bits
{
    volatile unsigned int SR1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_ATOM_CH_STAT_Bits
{
    volatile unsigned int OL:1;
    volatile unsigned int reserved_1:15;
    volatile unsigned int ACBI:5;
    volatile unsigned int DV:1;
    volatile unsigned int WRF:1;
    volatile unsigned int DR:1;
    volatile unsigned int ACBO:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ATOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_AUX_IN_SRC_TIM_Bits
{
    volatile unsigned int SRC_CH0:1;
    volatile unsigned int SRC_CH1:1;
    volatile unsigned int SRC_CH2:1;
    volatile unsigned int SRC_CH3:1;
    volatile unsigned int SRC_CH4:1;
    volatile unsigned int SRC_CH5:1;
    volatile unsigned int SRC_CH6:1;
    volatile unsigned int SRC_CH7:1;
    volatile unsigned int reserved_8:8;
    volatile unsigned int SEL_OUT_N_CH0:1;
    volatile unsigned int SEL_OUT_N_CH1:1;
    volatile unsigned int SEL_OUT_N_CH2:1;
    volatile unsigned int SEL_OUT_N_CH3:1;
    volatile unsigned int SEL_OUT_N_CH4:1;
    volatile unsigned int SEL_OUT_N_CH5:1;
    volatile unsigned int SEL_OUT_N_CH6:1;
    volatile unsigned int SEL_OUT_N_CH7:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_AUX_IN_SRC_TIM_Bits;


typedef struct _Ifx_GTM_BRC_EIRQ_EN_Bits
{
    volatile unsigned int DEST_ERR_EIRQ_EN:1;
    volatile unsigned int DID_EIRQ_EN0:1;
    volatile unsigned int DID_EIRQ_EN1:1;
    volatile unsigned int DID_EIRQ_EN2:1;
    volatile unsigned int DID_EIRQ_EN3:1;
    volatile unsigned int DID_EIRQ_EN4:1;
    volatile unsigned int DID_EIRQ_EN5:1;
    volatile unsigned int DID_EIRQ_EN6:1;
    volatile unsigned int DID_EIRQ_EN7:1;
    volatile unsigned int DID_EIRQ_EN8:1;
    volatile unsigned int DID_EIRQ_EN9:1;
    volatile unsigned int DID_EIRQ_EN10:1;
    volatile unsigned int DID_EIRQ_EN11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_EN_Bits
{
    volatile unsigned int DEST_ERR_IRQ_EN:1;
    volatile unsigned int DID_IRQ_EN0:1;
    volatile unsigned int DID_IRQ_EN1:1;
    volatile unsigned int DID_IRQ_EN2:1;
    volatile unsigned int DID_IRQ_EN3:1;
    volatile unsigned int DID_IRQ_EN4:1;
    volatile unsigned int DID_IRQ_EN5:1;
    volatile unsigned int DID_IRQ_EN6:1;
    volatile unsigned int DID_IRQ_EN7:1;
    volatile unsigned int DID_IRQ_EN8:1;
    volatile unsigned int DID_IRQ_EN9:1;
    volatile unsigned int DID_IRQ_EN10:1;
    volatile unsigned int DID_IRQ_EN11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_IRQ_EN_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_DEST_ERR:1;
    volatile unsigned int TRG_DID0:1;
    volatile unsigned int TRG_DID1:1;
    volatile unsigned int TRG_DID2:1;
    volatile unsigned int TRG_DID3:1;
    volatile unsigned int TRG_DID4:1;
    volatile unsigned int TRG_DID5:1;
    volatile unsigned int TRG_DID6:1;
    volatile unsigned int TRG_DID7:1;
    volatile unsigned int TRG_DID8:1;
    volatile unsigned int TRG_DID9:1;
    volatile unsigned int TRG_DID10:1;
    volatile unsigned int TRG_DID11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_BRC_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_NOTIFY_Bits
{
    volatile unsigned int DEST_ERR:1;
    volatile unsigned int DID0:1;
    volatile unsigned int DID1:1;
    volatile unsigned int DID2:1;
    volatile unsigned int DID3:1;
    volatile unsigned int DID4:1;
    volatile unsigned int DID5:1;
    volatile unsigned int DID6:1;
    volatile unsigned int DID7:1;
    volatile unsigned int DID8:1;
    volatile unsigned int DID9:1;
    volatile unsigned int DID10:1;
    volatile unsigned int DID11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_BRC_RST_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_BRC_RST_Bits;


typedef struct _Ifx_GTM_BRC_SRC_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC_DEST_Bits;


typedef struct _Ifx_GTM_BRIDGE_MODE_Bits
{
    volatile unsigned int BRG_MODE:1;
    volatile unsigned int MSK_WR_RSP:1;
    volatile unsigned int BYPASS_SYNC:1;
    volatile unsigned int reserved_3:5;
    volatile unsigned int MODE_UP_PGR:1;
    volatile unsigned int BUFF_OVL:1;
    volatile unsigned int reserved_10:2;
    volatile unsigned int SYNC_INPUT_REG:1;
    volatile unsigned int reserved_13:3;
    volatile unsigned int BRG_RST:1;
    volatile unsigned int reserved_17:7;
    volatile unsigned int BUFF_DPT:8;
} Ifx_GTM_BRIDGE_MODE_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR1_Bits
{
    volatile unsigned int NEW_TRAN_PTR:5;
    volatile unsigned int FIRST_RSP_PTR:5;
    volatile unsigned int TRAN_IN_PGR:5;
    volatile unsigned int ABT_TRAN_PGR:5;
    volatile unsigned int FBC:6;
    volatile unsigned int RSP_TRAN_RDY:6;
} Ifx_GTM_BRIDGE_PTR1_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR2_Bits
{
    volatile unsigned int TRAN_IN_PGR2:5;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_BRIDGE_PTR2_Bits;


typedef struct _Ifx_GTM_CANOUTSEL0_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_CANOUTSEL0_Bits;


typedef struct _Ifx_GTM_CANOUTSEL1_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GTM_CANOUTSEL1_Bits;


typedef struct _Ifx_GTM_CCM_AEIM_STA_Bits
{
    volatile unsigned int AEIM_XPT_ADDR:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int AEIM_XPT_STA:2;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_CCM_AEIM_STA_Bits;


typedef struct _Ifx_GTM_CCM_ARP_CTRL_Bits
{
    volatile unsigned int ADDR:16;
    volatile unsigned int SIZE:4;
    volatile unsigned int reserved_20:4;
    volatile unsigned int DIS_PROT:1;
    volatile unsigned int reserved_25:6;
    volatile unsigned int WPROT_AEI:1;
} Ifx_GTM_CCM_ARP_CTRL_Bits;


typedef struct _Ifx_GTM_CCM_ARP_PROT_Bits
{
    volatile unsigned int WPROT0:1;
    volatile unsigned int WPROT1:1;
    volatile unsigned int WPROT2:1;
    volatile unsigned int WPROT3:1;
    volatile unsigned int WPROT4:1;
    volatile unsigned int WPROT5:1;
    volatile unsigned int WPROT6:1;
    volatile unsigned int WPROT7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_CCM_ARP_PROT_Bits;


typedef struct _Ifx_GTM_CCM_ATOM_OUT_Bits
{
    volatile unsigned int ATOM_I_OUT:8;
    volatile unsigned int ATOM_I_OUT_N:8;
    volatile unsigned int ATOM_IP1_OUT:8;
    volatile unsigned int ATOM_IP1_OUT_N:8;
} Ifx_GTM_CCM_ATOM_OUT_Bits;


typedef struct _Ifx_GTM_CCM_CFG_Bits
{
    volatile unsigned int EN_TIM:1;
    volatile unsigned int EN_TOM_SPE_TDTM:1;
    volatile unsigned int EN_ATOM_ADTM:1;
    volatile unsigned int EN_MCS:1;
    volatile unsigned int EN_DPLL_MAP:1;
    volatile unsigned int EN_BRC:1;
    volatile unsigned int EN_PSM:1;
    volatile unsigned int EN_CMP_MON:1;
    volatile unsigned int reserved_8:8;
    volatile unsigned int CLS_CLK_DIV:2;
    volatile unsigned int reserved_18:12;
    volatile unsigned int TBU_DIR1:1;
    volatile unsigned int TBU_DIR2:1;
} Ifx_GTM_CCM_CFG_Bits;


typedef struct _Ifx_GTM_CCM_CMU_CLK_CFG_Bits
{
    volatile unsigned int CLK0_SRC:2;
    volatile unsigned int reserved_2:2;
    volatile unsigned int CLK1_SRC:2;
    volatile unsigned int reserved_6:2;
    volatile unsigned int CLK2_SRC:2;
    volatile unsigned int reserved_10:2;
    volatile unsigned int CLK3_SRC:2;
    volatile unsigned int reserved_14:2;
    volatile unsigned int CLK4_SRC:2;
    volatile unsigned int reserved_18:2;
    volatile unsigned int CLK5_SRC:2;
    volatile unsigned int reserved_22:2;
    volatile unsigned int CLK6_SRC:2;
    volatile unsigned int reserved_26:2;
    volatile unsigned int CLK7_SRC:2;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_CCM_CMU_CLK_CFG_Bits;


typedef struct _Ifx_GTM_CCM_CMU_FXCLK_CFG_Bits
{
    volatile unsigned int FXCLK0_SRC:4;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_CCM_CMU_FXCLK_CFG_Bits;


typedef struct _Ifx_GTM_CCM_EXT_CAP_EN_Bits
{
    volatile unsigned int TIM_I_EXT_CAP_EN:8;
    volatile unsigned int TIM_IP1_EXT_CAP_EN:8;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_CCM_EXT_CAP_EN_Bits;


typedef struct _Ifx_GTM_CCM_HW_CONF_Bits
{
    volatile unsigned int GRSTEN:1;
    volatile unsigned int BRIDGE_MODE_RST:1;
    volatile unsigned int SYNC_INPUT_REG:1;
    volatile unsigned int CFG_CLOCK_RATE:1;
    volatile unsigned int ATOM_OUT_RST:1;
    volatile unsigned int ATOM_TRIG_CHAIN:3;
    volatile unsigned int TOM_OUT_RST:1;
    volatile unsigned int TOM_TRIG_CHAIN:3;
    volatile unsigned int RAM_INIT_RST:1;
    volatile unsigned int ERM:1;
    volatile unsigned int ARU_CONNECT_CONFIG:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int IRQ_MODE_LEVEL:1;
    volatile unsigned int IRQ_MODE_PULSE:1;
    volatile unsigned int IRQ_MODE_PULSE_NOTIFY:1;
    volatile unsigned int IRQ_MODE_SINGLE_PULSE:1;
    volatile unsigned int ATOM_TRIG_INTCHAIN:4;
    volatile unsigned int TOM_TRIG_INTCHAIN:5;
    volatile unsigned int INT_CLK_EN_GEN:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_CCM_HW_CONF_Bits;


typedef struct _Ifx_GTM_CCM_PROT_Bits
{
    volatile unsigned int CLS_PROT:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_CCM_PROT_Bits;


typedef struct _Ifx_GTM_CCM_TIM_AUX_IN_SRC_Bits
{
    volatile unsigned int SRC_CH0:1;
    volatile unsigned int SRC_CH1:1;
    volatile unsigned int SRC_CH2:1;
    volatile unsigned int SRC_CH3:1;
    volatile unsigned int SRC_CH4:1;
    volatile unsigned int SRC_CH5:1;
    volatile unsigned int SRC_CH6:1;
    volatile unsigned int SRC_CH7:1;
    volatile unsigned int reserved_8:8;
    volatile unsigned int SEL_OUT_N_CH0:1;
    volatile unsigned int SEL_OUT_N_CH1:1;
    volatile unsigned int SEL_OUT_N_CH2:1;
    volatile unsigned int SEL_OUT_N_CH3:1;
    volatile unsigned int SEL_OUT_N_CH4:1;
    volatile unsigned int SEL_OUT_N_CH5:1;
    volatile unsigned int SEL_OUT_N_CH6:1;
    volatile unsigned int SEL_OUT_N_CH7:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CCM_TIM_AUX_IN_SRC_Bits;


typedef struct _Ifx_GTM_CCM_TOM_OUT_Bits
{
    volatile unsigned int TOM_OUT:16;
    volatile unsigned int TOM_OUT_N:16;
} Ifx_GTM_CCM_TOM_OUT_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_CTRL1_Bits
{
    volatile unsigned int O1SEL_0:1;
    volatile unsigned int I1SEL_0:1;
    volatile unsigned int reserved_2:1;
    volatile unsigned int SWAP_0:1;
    volatile unsigned int O1F_0:2;
    volatile unsigned int XDT_EN_0_1:1;
    volatile unsigned int reserved_7:1;
    volatile unsigned int O1SEL_1:1;
    volatile unsigned int I1SEL_1:1;
    volatile unsigned int SH_EN_1:1;
    volatile unsigned int SWAP_1:1;
    volatile unsigned int O1F_1:2;
    volatile unsigned int reserved_14:2;
    volatile unsigned int O1SEL_2:1;
    volatile unsigned int I1SEL_2:1;
    volatile unsigned int SH_EN_2:1;
    volatile unsigned int SWAP_2:1;
    volatile unsigned int O1F_2:2;
    volatile unsigned int XDT_EN_2_3:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int O1SEL_3:1;
    volatile unsigned int I1SEL_3:1;
    volatile unsigned int SH_EN_3:1;
    volatile unsigned int SWAP_3:1;
    volatile unsigned int O1F_3:2;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_CDTM_DTM_CH_CTRL1_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_CTRL2_Bits
{
    volatile unsigned int POL0_0:1;
    volatile unsigned int OC0_0:1;
    volatile unsigned int SL0_0:1;
    volatile unsigned int DT0_0:1;
    volatile unsigned int POL1_0:1;
    volatile unsigned int OC1_0:1;
    volatile unsigned int SL1_0:1;
    volatile unsigned int DT1_0:1;
    volatile unsigned int POL0_1:1;
    volatile unsigned int OC0_1:1;
    volatile unsigned int SL0_1:1;
    volatile unsigned int DT0_1:1;
    volatile unsigned int POL1_1:1;
    volatile unsigned int OC1_1:1;
    volatile unsigned int SL1_1:1;
    volatile unsigned int DT1_1:1;
    volatile unsigned int POL0_2:1;
    volatile unsigned int OC0_2:1;
    volatile unsigned int SL0_2:1;
    volatile unsigned int DT0_2:1;
    volatile unsigned int POL1_2:1;
    volatile unsigned int OC1_2:1;
    volatile unsigned int SL1_2:1;
    volatile unsigned int DT1_2:1;
    volatile unsigned int POL0_3:1;
    volatile unsigned int OC0_3:1;
    volatile unsigned int SL0_3:1;
    volatile unsigned int DT0_3:1;
    volatile unsigned int POL1_3:1;
    volatile unsigned int OC1_3:1;
    volatile unsigned int SL1_3:1;
    volatile unsigned int DT1_3:1;
} Ifx_GTM_CDTM_DTM_CH_CTRL2_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_CTRL2_SR_Bits
{
    volatile unsigned int POL0_0_SR:1;
    volatile unsigned int OC0_0_SR:1;
    volatile unsigned int SL0_0_SR:1;
    volatile unsigned int DT0_0_SR:1;
    volatile unsigned int POL1_0_SR:1;
    volatile unsigned int OC1_0_SR:1;
    volatile unsigned int SL1_0_SR:1;
    volatile unsigned int DT1_0_SR:1;
    volatile unsigned int POL0_1_SR:1;
    volatile unsigned int OC0_1_SR:1;
    volatile unsigned int SL0_1_SR:1;
    volatile unsigned int DT0_1_SR:1;
    volatile unsigned int POL1_1_SR:1;
    volatile unsigned int OC1_1_SR:1;
    volatile unsigned int SL1_1_SR:1;
    volatile unsigned int DT1_1_SR:1;
    volatile unsigned int POL0_2_SR:1;
    volatile unsigned int OC0_2_SR:1;
    volatile unsigned int SL0_2_SR:1;
    volatile unsigned int DT0_2_SR:1;
    volatile unsigned int POL1_2_SR:1;
    volatile unsigned int OC1_2_SR:1;
    volatile unsigned int SL1_2_SR:1;
    volatile unsigned int DT1_2_SR:1;
    volatile unsigned int POL0_3_SR:1;
    volatile unsigned int OC0_3_SR:1;
    volatile unsigned int SL0_3_SR:1;
    volatile unsigned int DT0_3_SR:1;
    volatile unsigned int POL1_3_SR:1;
    volatile unsigned int OC1_3_SR:1;
    volatile unsigned int SL1_3_SR:1;
    volatile unsigned int DT1_3_SR:1;
} Ifx_GTM_CDTM_DTM_CH_CTRL2_SR_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_CTRL3_Bits
{
    volatile unsigned int CII0:1;
    volatile unsigned int CIS0:1;
    volatile unsigned int TSEL0_0:1;
    volatile unsigned int TSEL1_0:1;
    volatile unsigned int reserved_4:4;
    volatile unsigned int CII1:1;
    volatile unsigned int CIS1:1;
    volatile unsigned int TSEL0_1:1;
    volatile unsigned int TSEL1_1:1;
    volatile unsigned int reserved_12:4;
    volatile unsigned int CII2:1;
    volatile unsigned int CIS2:1;
    volatile unsigned int TSEL0_2:1;
    volatile unsigned int TSEL1_2:1;
    volatile unsigned int reserved_20:4;
    volatile unsigned int CII3:1;
    volatile unsigned int CIS3:1;
    volatile unsigned int TSEL0_3:1;
    volatile unsigned int TSEL1_3:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_CDTM_DTM_CH_CTRL3_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_DTV_Bits
{
    volatile unsigned int RELRISE:10;
    volatile unsigned int reserved_10:6;
    volatile unsigned int RELFALL:10;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_CDTM_DTM_CH_DTV_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_SR_Bits
{
    volatile unsigned int SL0_0_SR_SR:1;
    volatile unsigned int SL1_0_SR_SR:1;
    volatile unsigned int SL0_1_SR_SR:1;
    volatile unsigned int SL1_1_SR_SR:1;
    volatile unsigned int SL0_2_SR_SR:1;
    volatile unsigned int SL1_2_SR_SR:1;
    volatile unsigned int SL0_3_SR_SR:1;
    volatile unsigned int SL1_3_SR_SR:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_CDTM_DTM_CH_SR_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CTRL_Bits
{
    volatile unsigned int CLK_SEL:2;
    volatile unsigned int DTM_SEL:2;
    volatile unsigned int UPD_MODE:3;
    volatile unsigned int reserved_7:1;
    volatile unsigned int SR_UPD_EN:1;
    volatile unsigned int reserved_9:7;
    volatile unsigned int SHUT_OFF_RST:1;
    volatile unsigned int reserved_17:15;
} Ifx_GTM_CDTM_DTM_CTRL_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_PS_CTRL_Bits
{
    volatile unsigned int RELBLK:10;
    volatile unsigned int reserved_10:6;
    volatile unsigned int PSU_IN_SEL:1;
    volatile unsigned int IN_POL:1;
    volatile unsigned int TIM_SEL:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int SHIFT_SEL:2;
    volatile unsigned int reserved_22:10;
} Ifx_GTM_CDTM_DTM_PS_CTRL_Bits;


typedef struct _Ifx_GTM_CFG_Bits
{
    volatile unsigned int SRC_IN_MUX:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_CFG_Bits;


typedef struct _Ifx_GTM_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_GTM_CLC_Bits;


typedef struct _Ifx_GTM_CLS_CLK_CFG_Bits
{
    volatile unsigned int CLS0_CLK_DIV:2;
    volatile unsigned int CLS1_CLK_DIV:2;
    volatile unsigned int CLS2_CLK_DIV:2;
    volatile unsigned int CLS3_CLK_DIV:2;
    volatile unsigned int CLS4_CLK_DIV:2;
    volatile unsigned int CLS5_CLK_DIV:2;
    volatile unsigned int CLS6_CLK_DIV:2;
    volatile unsigned int CLS7_CLK_DIV:2;
    volatile unsigned int CLS8_CLK_DIV:2;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:2;
    volatile unsigned int reserved_22:2;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CLS_CLK_CFG_Bits;


typedef struct _Ifx_GTM_CMP_EIRQ_EN_Bits
{
    volatile unsigned int ABWC0_EN_EIRQ:1;
    volatile unsigned int ABWC1_EN_EIRQ:1;
    volatile unsigned int ABWC2_EN_EIRQ:1;
    volatile unsigned int ABWC3_EN_EIRQ:1;
    volatile unsigned int ABWC4_EN_EIRQ:1;
    volatile unsigned int ABWC5_EN_EIRQ:1;
    volatile unsigned int ABWC6_EN_EIRQ:1;
    volatile unsigned int ABWC7_EN_EIRQ:1;
    volatile unsigned int ABWC8_EN_EIRQ:1;
    volatile unsigned int ABWC9_EN_EIRQ:1;
    volatile unsigned int ABWC10_EN_EIRQ:1;
    volatile unsigned int ABWC11_EN_EIRQ:1;
    volatile unsigned int TBWC0_EN_EIRQ:1;
    volatile unsigned int TBWC1_EN_EIRQ:1;
    volatile unsigned int TBWC2_EN_EIRQ:1;
    volatile unsigned int TBWC3_EN_EIRQ:1;
    volatile unsigned int TBWC4_EN_EIRQ:1;
    volatile unsigned int TBWC5_EN_EIRQ:1;
    volatile unsigned int TBWC6_EN_EIRQ:1;
    volatile unsigned int TBWC7_EN_EIRQ:1;
    volatile unsigned int TBWC8_EN_EIRQ:1;
    volatile unsigned int TBWC9_EN_EIRQ:1;
    volatile unsigned int TBWC10_EN_EIRQ:1;
    volatile unsigned int TBWC11_EN_EIRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_CMP_EN_Bits
{
    volatile unsigned int ABWC0_EN:1;
    volatile unsigned int ABWC1_EN:1;
    volatile unsigned int ABWC2_EN:1;
    volatile unsigned int ABWC3_EN:1;
    volatile unsigned int ABWC4_EN:1;
    volatile unsigned int ABWC5_EN:1;
    volatile unsigned int ABWC6_EN:1;
    volatile unsigned int ABWC7_EN:1;
    volatile unsigned int ABWC8_EN:1;
    volatile unsigned int ABWC9_EN:1;
    volatile unsigned int ABWC10_EN:1;
    volatile unsigned int ABWC11_EN:1;
    volatile unsigned int TBWC0_EN:1;
    volatile unsigned int TBWC1_EN:1;
    volatile unsigned int TBWC2_EN:1;
    volatile unsigned int TBWC3_EN:1;
    volatile unsigned int TBWC4_EN:1;
    volatile unsigned int TBWC5_EN:1;
    volatile unsigned int TBWC6_EN:1;
    volatile unsigned int TBWC7_EN:1;
    volatile unsigned int TBWC8_EN:1;
    volatile unsigned int TBWC9_EN:1;
    volatile unsigned int TBWC10_EN:1;
    volatile unsigned int TBWC11_EN:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_EN_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_EN_Bits
{
    volatile unsigned int ABWC0_EN_IRQ:1;
    volatile unsigned int ABWC1_EN_IRQ:1;
    volatile unsigned int ABWC2_EN_IRQ:1;
    volatile unsigned int ABWC3_EN_IRQ:1;
    volatile unsigned int ABWC4_EN_IRQ:1;
    volatile unsigned int ABWC5_EN_IRQ:1;
    volatile unsigned int ABWC6_EN_IRQ:1;
    volatile unsigned int ABWC7_EN_IRQ:1;
    volatile unsigned int ABWC8_EN_IRQ:1;
    volatile unsigned int ABWC9_EN_IRQ:1;
    volatile unsigned int ABWC10_EN_IRQ:1;
    volatile unsigned int ABWC11_EN_IRQ:1;
    volatile unsigned int TBWC0_EN_IRQ:1;
    volatile unsigned int TBWC1_EN_IRQ:1;
    volatile unsigned int TBWC2_EN_IRQ:1;
    volatile unsigned int TBWC3_EN_IRQ:1;
    volatile unsigned int TBWC4_EN_IRQ:1;
    volatile unsigned int TBWC5_EN_IRQ:1;
    volatile unsigned int TBWC6_EN_IRQ:1;
    volatile unsigned int TBWC7_EN_IRQ:1;
    volatile unsigned int TBWC8_EN_IRQ:1;
    volatile unsigned int TBWC9_EN_IRQ:1;
    volatile unsigned int TBWC10_EN_IRQ:1;
    volatile unsigned int TBWC11_EN_IRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_IRQ_EN_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_ABWC0:1;
    volatile unsigned int TRG_ABWC1:1;
    volatile unsigned int TRG_ABWC2:1;
    volatile unsigned int TRG_ABWC3:1;
    volatile unsigned int TRG_ABWC4:1;
    volatile unsigned int TRG_ABWC5:1;
    volatile unsigned int TRG_ABWC6:1;
    volatile unsigned int TRG_ABWC7:1;
    volatile unsigned int TRG_ABWC8:1;
    volatile unsigned int TRG_ABWC9:1;
    volatile unsigned int TRG_ABWC10:1;
    volatile unsigned int TRG_ABWC11:1;
    volatile unsigned int TRG_TBWC0:1;
    volatile unsigned int TRG_TBWC1:1;
    volatile unsigned int TRG_TBWC2:1;
    volatile unsigned int TRG_TBWC3:1;
    volatile unsigned int TRG_TBWC4:1;
    volatile unsigned int TRG_TBWC5:1;
    volatile unsigned int TRG_TBWC6:1;
    volatile unsigned int TRG_TBWC7:1;
    volatile unsigned int TRG_TBWC8:1;
    volatile unsigned int TRG_TBWC9:1;
    volatile unsigned int TRG_TBWC10:1;
    volatile unsigned int TRG_TBWC11:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_CMP_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_NOTIFY_Bits
{
    volatile unsigned int ABWC0:1;
    volatile unsigned int ABWC1:1;
    volatile unsigned int ABWC2:1;
    volatile unsigned int ABWC3:1;
    volatile unsigned int ABWC4:1;
    volatile unsigned int ABWC5:1;
    volatile unsigned int ABWC6:1;
    volatile unsigned int ABWC7:1;
    volatile unsigned int ABWC8:1;
    volatile unsigned int ABWC9:1;
    volatile unsigned int ABWC10:1;
    volatile unsigned int ABWC11:1;
    volatile unsigned int TBWC0:1;
    volatile unsigned int TBWC1:1;
    volatile unsigned int TBWC2:1;
    volatile unsigned int TBWC3:1;
    volatile unsigned int TBWC4:1;
    volatile unsigned int TBWC5:1;
    volatile unsigned int TBWC6:1;
    volatile unsigned int TBWC7:1;
    volatile unsigned int TBWC8:1;
    volatile unsigned int TBWC9:1;
    volatile unsigned int TBWC10:1;
    volatile unsigned int TBWC11:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_CMU_CLK_CTRL_Bits
{
    volatile unsigned int CLK0_EXT_DIVIDER:1;
    volatile unsigned int CLK1_EXT_DIVIDER:1;
    volatile unsigned int CLK2_EXT_DIVIDER:1;
    volatile unsigned int CLK3_EXT_DIVIDER:1;
    volatile unsigned int CLK4_EXT_DIVIDER:1;
    volatile unsigned int CLK5_EXT_DIVIDER:1;
    volatile unsigned int CLK6_EXT_DIVIDER:1;
    volatile unsigned int CLK7_EXT_DIVIDER:1;
    volatile unsigned int CLK8_EXT_DIVIDER:1;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_CMU_CLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_EN_Bits
{
    volatile unsigned int EN_CLK0:2;
    volatile unsigned int EN_CLK1:2;
    volatile unsigned int EN_CLK2:2;
    volatile unsigned int EN_CLK3:2;
    volatile unsigned int EN_CLK4:2;
    volatile unsigned int EN_CLK5:2;
    volatile unsigned int EN_CLK6:2;
    volatile unsigned int EN_CLK7:2;
    volatile unsigned int EN_ECLK0:2;
    volatile unsigned int EN_ECLK1:2;
    volatile unsigned int EN_ECLK2:2;
    volatile unsigned int EN_FXCLK:2;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_CLK_EN_Bits;


typedef struct _Ifx_GTM_CMU_CLK__CTRL_Bits
{
    volatile unsigned int CLK_CNT:24;
    volatile unsigned int CLK_SEL:2;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_CMU_CLK__CTRL_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_DEN_Bits
{
    volatile unsigned int ECLK_DEN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_ECLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_NUM_Bits
{
    volatile unsigned int ECLK_NUM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_ECLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_FXCLK_CTRL_Bits
{
    volatile unsigned int FXCLK_SEL:4;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_CMU_FXCLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_DEN_Bits
{
    volatile unsigned int GCLK_DEN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_GCLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_NUM_Bits
{
    volatile unsigned int GCLK_NUM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_GCLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_GLB_CTRL_Bits
{
    volatile unsigned int ARU_ADDR_RSTGLB:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_CMU_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_CTRL_Bits
{
    volatile unsigned int RF_PROT:1;
    volatile unsigned int TO_MODE:1;
    volatile unsigned int reserved_2:2;
    volatile unsigned int TO_VAL:5;
    volatile unsigned int reserved_9:3;
    volatile unsigned int AEIM_CLUSTER:4;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_CTRL_Bits;


typedef struct _Ifx_GTM_DATAIN_Bits
{
    Ifx_UReg_32Bit DATA:32;
} Ifx_GTM_DATAIN_Bits;


typedef struct _Ifx_GTM_DPLL_ACB_Bits
{
    volatile unsigned int ACB_0:5;
    volatile unsigned int reserved_5:3;
    volatile unsigned int ACB_1:5;
    volatile unsigned int reserved_13:3;
    volatile unsigned int ACB_2:5;
    volatile unsigned int reserved_21:3;
    volatile unsigned int ACB_3:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_DPLL_ACB_Bits;


typedef struct _Ifx_GTM_DPLL_ACT_STA_Bits
{
    volatile unsigned int ACT_N:32;
} Ifx_GTM_DPLL_ACT_STA_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_CAL1_Bits
{
    volatile unsigned int ADD_IN_CAL1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_CAL1_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_CAL2_Bits
{
    volatile unsigned int ADD_IN_CAL2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_CAL2_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_LD1_Bits
{
    volatile unsigned int ADD_IN_LD1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_LD1_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_LD2_Bits
{
    volatile unsigned int ADD_IN_LD2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_LD2_Bits;


typedef struct _Ifx_GTM_DPLL_ADT_S_Bits
{
    volatile unsigned int PD_S:16;
    volatile unsigned int NS:6;
    volatile unsigned int reserved_22:2;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADT_S_Bits;


typedef struct _Ifx_GTM_DPLL_ADT_TI_Bits
{
    volatile unsigned int PD:13;
    volatile unsigned int TINT:3;
    volatile unsigned int NT:3;
    volatile unsigned int reserved_19:5;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADT_TI_Bits;


typedef struct _Ifx_GTM_DPLL_AOSV_2_Bits
{
    volatile unsigned int AOSV_2A:8;
    volatile unsigned int AOSV_2B:8;
    volatile unsigned int AOSV_2C:8;
    volatile unsigned int AOSV_2D:8;
} Ifx_GTM_DPLL_AOSV_2_Bits;


typedef struct _Ifx_GTM_DPLL_APS_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int WAPS:1;
    volatile unsigned int APS:6;
    volatile unsigned int reserved_8:5;
    volatile unsigned int WAPS_1C2:1;
    volatile unsigned int APS_1C2:6;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_APS_Bits;


typedef struct _Ifx_GTM_DPLL_APS_1C3_Bits
{
    volatile unsigned int reserved_0:2;
    volatile unsigned int APS_1C3:6;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_DPLL_APS_1C3_Bits;


typedef struct _Ifx_GTM_DPLL_APS_1C3_EXT_Bits
{
    volatile unsigned int reserved_0:2;
    volatile unsigned int APS_1C3:7;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_DPLL_APS_1C3_EXT_Bits;


typedef struct _Ifx_GTM_DPLL_APS_EXT_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int WAPS:1;
    volatile unsigned int APS:7;
    volatile unsigned int reserved_9:4;
    volatile unsigned int WAPS_1C2:1;
    volatile unsigned int APS_1C2:7;
    volatile unsigned int reserved_21:11;
} Ifx_GTM_DPLL_APS_EXT_Bits;


typedef struct _Ifx_GTM_DPLL_APS_SYNC_Bits
{
    volatile unsigned int APS_1C2_EXT:6;
    volatile unsigned int APS_1C2_STATUS:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int APS_1C2_OLD:6;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_APS_SYNC_Bits;


typedef struct _Ifx_GTM_DPLL_APS_SYNC_EXT_Bits
{
    volatile unsigned int APS_1C2_EXT:7;
    volatile unsigned int reserved_7:8;
    volatile unsigned int APS_1C2_STATUS:1;
    volatile unsigned int APS_1C2_OLD:7;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_DPLL_APS_SYNC_EXT_Bits;


typedef struct _Ifx_GTM_DPLL_APT_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int WAPT:1;
    volatile unsigned int APT:10;
    volatile unsigned int reserved_12:1;
    volatile unsigned int WAPT_2B:1;
    volatile unsigned int APT_2B:10;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_APT_Bits;


typedef struct _Ifx_GTM_DPLL_APT_2C_Bits
{
    volatile unsigned int reserved_0:2;
    volatile unsigned int APT_2C:10;
    volatile unsigned int reserved_12:20;
} Ifx_GTM_DPLL_APT_2C_Bits;


typedef struct _Ifx_GTM_DPLL_APT_SYNC_Bits
{
    volatile unsigned int APT_2B_EXT:6;
    volatile unsigned int APT_2B_STATUS:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int APT_2B_OLD:10;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_APT_SYNC_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_SX_Bits
{
    volatile unsigned int CDT_SX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_SX_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_SX_NOM_Bits
{
    volatile unsigned int CDT_SX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_SX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_TX_Bits
{
    volatile unsigned int CDT_TX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_TX_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_TX_NOM_Bits
{
    volatile unsigned int CDT_TX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_TX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_CNT_NUM_1_Bits
{
    volatile unsigned int CNT_NUM_1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CNT_NUM_1_Bits;


typedef struct _Ifx_GTM_DPLL_CNT_NUM_2_Bits
{
    volatile unsigned int CNT_NUM_2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CNT_NUM_2_Bits;


typedef struct _Ifx_GTM_DPLL_CSN_MAX_Bits
{
    volatile unsigned int CSN_MAX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CSN_MAX_Bits;


typedef struct _Ifx_GTM_DPLL_CSN_MIN_Bits
{
    volatile unsigned int CSN_MIN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CSN_MIN_Bits;


typedef struct _Ifx_GTM_DPLL_CTN_MAX_Bits
{
    volatile unsigned int CTN_MAX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTN_MAX_Bits;


typedef struct _Ifx_GTM_DPLL_CTN_MIN_Bits
{
    volatile unsigned int CTN_MIN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTN_MIN_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_Bits
{
    volatile unsigned int MLT:10;
    volatile unsigned int IFP:1;
    volatile unsigned int SNU:5;
    volatile unsigned int TNU:9;
    volatile unsigned int AMS:1;
    volatile unsigned int AMT:1;
    volatile unsigned int IDS:1;
    volatile unsigned int IDT:1;
    volatile unsigned int SEN:1;
    volatile unsigned int TEN:1;
    volatile unsigned int RMO:1;
} Ifx_GTM_DPLL_CTRL_0_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits
{
    volatile unsigned int reserved_0:10;
    volatile unsigned int IFP:1;
    volatile unsigned int reserved_11:14;
    volatile unsigned int AMS:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int IDS:1;
    volatile unsigned int reserved_28:3;
    volatile unsigned int RMO:1;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits
{
    volatile unsigned int MLT:10;
    volatile unsigned int IFP:1;
    volatile unsigned int reserved_11:15;
    volatile unsigned int AMT:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int IDT:1;
    volatile unsigned int reserved_29:2;
    volatile unsigned int RMO:1;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_Bits
{
    volatile unsigned int DMO:1;
    volatile unsigned int DEN:1;
    volatile unsigned int IDDS:1;
    volatile unsigned int COA:1;
    volatile unsigned int PIT:1;
    volatile unsigned int SGE1:1;
    volatile unsigned int DLM1:1;
    volatile unsigned int PCM1:1;
    volatile unsigned int SGE2:1;
    volatile unsigned int DLM2:1;
    volatile unsigned int PCM2:1;
    volatile unsigned int SYN_NS:5;
    volatile unsigned int SYN_NT:6;
    volatile unsigned int LCD:1;
    volatile unsigned int SWR:1;
    volatile unsigned int SYSF:1;
    volatile unsigned int TS0_HRS:1;
    volatile unsigned int TS0_HRT:1;
    volatile unsigned int SMC:1;
    volatile unsigned int SSL:2;
    volatile unsigned int TSL:2;
} Ifx_GTM_DPLL_CTRL_1_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_11_Bits
{
    volatile unsigned int SIP1:1;
    volatile unsigned int ERZ1:1;
    volatile unsigned int PCMF1:1;
    volatile unsigned int FSYL1:1;
    volatile unsigned int INCF1:1;
    volatile unsigned int PCMF1_INCCNT_B:1;
    volatile unsigned int ADT:1;
    volatile unsigned int ADS:1;
    volatile unsigned int SIP2:1;
    volatile unsigned int ERZ2:1;
    volatile unsigned int PCMF2:1;
    volatile unsigned int FSYL2:1;
    volatile unsigned int INCF2:1;
    volatile unsigned int PCMF2_INCCNT_B:1;
    volatile unsigned int STATE_EXT:1;
    volatile unsigned int ACBU:1;
    volatile unsigned int WSIP1:1;
    volatile unsigned int WERZ1:1;
    volatile unsigned int WPCMF1:1;
    volatile unsigned int WFSYL1:1;
    volatile unsigned int WINCF1:1;
    volatile unsigned int WPCMF1_INCCNT_B:1;
    volatile unsigned int WADT:1;
    volatile unsigned int WADS:1;
    volatile unsigned int WSIP2:1;
    volatile unsigned int WERZ2:1;
    volatile unsigned int WPCMF2:1;
    volatile unsigned int WFSYL2:1;
    volatile unsigned int WINCF2:1;
    volatile unsigned int WPCMF2_INCCNT_B:1;
    volatile unsigned int WSTATE_EXT:1;
    volatile unsigned int WACBU:1;
} Ifx_GTM_DPLL_CTRL_11_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE_Bits
{
    volatile unsigned int DMO:1;
    volatile unsigned int reserved_1:2;
    volatile unsigned int COA:1;
    volatile unsigned int reserved_4:1;
    volatile unsigned int SGE1:1;
    volatile unsigned int DLM1:1;
    volatile unsigned int PCM1:1;
    volatile unsigned int SGE2:1;
    volatile unsigned int DLM2:1;
    volatile unsigned int PCM2:1;
    volatile unsigned int reserved_11:21;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits
{
    volatile unsigned int DMO:1;
    volatile unsigned int reserved_1:2;
    volatile unsigned int COA:1;
    volatile unsigned int PIT:1;
    volatile unsigned int SGE1:1;
    volatile unsigned int DLM1:1;
    volatile unsigned int PCM1:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_2_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN0:1;
    volatile unsigned int AEN1:1;
    volatile unsigned int AEN2:1;
    volatile unsigned int AEN3:1;
    volatile unsigned int AEN4:1;
    volatile unsigned int AEN5:1;
    volatile unsigned int AEN6:1;
    volatile unsigned int AEN7:1;
    volatile unsigned int WAD0:1;
    volatile unsigned int WAD1:1;
    volatile unsigned int WAD2:1;
    volatile unsigned int WAD3:1;
    volatile unsigned int WAD4:1;
    volatile unsigned int WAD5:1;
    volatile unsigned int WAD6:1;
    volatile unsigned int WAD7:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_2_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_3_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN8:1;
    volatile unsigned int AEN9:1;
    volatile unsigned int AEN10:1;
    volatile unsigned int AEN11:1;
    volatile unsigned int AEN12:1;
    volatile unsigned int AEN13:1;
    volatile unsigned int AEN14:1;
    volatile unsigned int AEN15:1;
    volatile unsigned int WAD8:1;
    volatile unsigned int WAD9:1;
    volatile unsigned int WAD10:1;
    volatile unsigned int WAD11:1;
    volatile unsigned int WAD12:1;
    volatile unsigned int WAD13:1;
    volatile unsigned int WAD14:1;
    volatile unsigned int WAD15:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_3_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_4_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN16:1;
    volatile unsigned int AEN17:1;
    volatile unsigned int AEN18:1;
    volatile unsigned int AEN19:1;
    volatile unsigned int AEN20:1;
    volatile unsigned int AEN21:1;
    volatile unsigned int AEN22:1;
    volatile unsigned int AEN23:1;
    volatile unsigned int WAD16:1;
    volatile unsigned int WAD17:1;
    volatile unsigned int WAD18:1;
    volatile unsigned int WAD19:1;
    volatile unsigned int WAD20:1;
    volatile unsigned int WAD21:1;
    volatile unsigned int WAD22:1;
    volatile unsigned int WAD23:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_4_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_5_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN24:1;
    volatile unsigned int AEN25:1;
    volatile unsigned int AEN26:1;
    volatile unsigned int AEN27:1;
    volatile unsigned int AEN28:1;
    volatile unsigned int AEN29:1;
    volatile unsigned int AEN30:1;
    volatile unsigned int AEN31:1;
    volatile unsigned int WAD24:1;
    volatile unsigned int WAD25:1;
    volatile unsigned int WAD26:1;
    volatile unsigned int WAD27:1;
    volatile unsigned int WAD28:1;
    volatile unsigned int WAD29:1;
    volatile unsigned int WAD30:1;
    volatile unsigned int WAD31:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_5_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_EXT_Bits
{
    volatile unsigned int SNU:6;
    volatile unsigned int reserved_6:10;
    volatile unsigned int SYN_NS:6;
    volatile unsigned int reserved_22:10;
} Ifx_GTM_DPLL_CTRL_EXT_Bits;


typedef struct _Ifx_GTM_DPLL_DLA_Bits
{
    volatile unsigned int DLA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DLA_Bits;


typedef struct _Ifx_GTM_DPLL_DTA_Bits
{
    volatile unsigned int DTA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DTA_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_Bits
{
    volatile unsigned int DT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_S_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_ACT_Bits
{
    volatile unsigned int DT_S_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_S_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_START_Bits
{
    volatile unsigned int DPLL_DT_S_START:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_S_START_Bits;


typedef struct _Ifx_GTM_DPLL_DT_TI_Bits
{
    volatile unsigned int DT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_TI_Bits;


typedef struct _Ifx_GTM_DPLL_DT_T_ACT_Bits
{
    volatile unsigned int DT_T_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_T_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_DT_T_START_Bits
{
    volatile unsigned int DPLL_DT_T_START:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_T_START_Bits;


typedef struct _Ifx_GTM_DPLL_EDT_S_Bits
{
    volatile unsigned int EDT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_EDT_S_Bits;


typedef struct _Ifx_GTM_DPLL_EDT_T_Bits
{
    volatile unsigned int EDT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_EDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_EIRQ_EN_Bits
{
    volatile unsigned int PDI_EIRQ_EN:1;
    volatile unsigned int PEI_EIRQ_EN:1;
    volatile unsigned int TINI_EIRQ_EN:1;
    volatile unsigned int TAXI_EIRQ_EN:1;
    volatile unsigned int SISI_EIRQ_EN:1;
    volatile unsigned int TISI_EIRQ_EN:1;
    volatile unsigned int MSI_EIRQ_EN:1;
    volatile unsigned int MTI_EIRQ_EN:1;
    volatile unsigned int SASI_EIRQ_EN:1;
    volatile unsigned int TASI_EIRQ_EN:1;
    volatile unsigned int PWI_EIRQ_EN:1;
    volatile unsigned int W2I_EIRQ_EN:1;
    volatile unsigned int W1I_EIRQ_EN:1;
    volatile unsigned int GL1I_EIRQ_EN:1;
    volatile unsigned int LL1I_EIRQ_EN:1;
    volatile unsigned int EI_EIRQ_EN:1;
    volatile unsigned int GL2I_EIRQ_EN:1;
    volatile unsigned int LL2I_EIRQ_EN:1;
    volatile unsigned int TE0I_EIRQ_EN:1;
    volatile unsigned int TE1I_EIRQ_EN:1;
    volatile unsigned int TE2I_EIRQ_EN:1;
    volatile unsigned int TE3I_EIRQ_EN:1;
    volatile unsigned int TE4I_EIRQ_EN:1;
    volatile unsigned int CDTI_EIRQ_EN:1;
    volatile unsigned int CDSI_EIRQ_EN:1;
    volatile unsigned int TORI_EIRQ_EN:1;
    volatile unsigned int SORI_EIRQ_EN:1;
    volatile unsigned int DCGI_EIRQ_EN:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_DPLL_FTV_S_Bits
{
    volatile unsigned int STATE_FT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_FTV_S_Bits;


typedef struct _Ifx_GTM_DPLL_FTV_T_Bits
{
    volatile unsigned int TRIGGER_FT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_FTV_T_Bits;


typedef struct _Ifx_GTM_DPLL_ID_PMTR_Bits
{
    volatile unsigned int ID_PMTR_X:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_DPLL_ID_PMTR_Bits;


typedef struct _Ifx_GTM_DPLL_INCF1_OFFSET_Bits
{
    volatile unsigned int DPLL_INCF1_OFFSET:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INCF1_OFFSET_Bits;


typedef struct _Ifx_GTM_DPLL_INCF2_OFFSET_Bits
{
    volatile unsigned int DPLL_INCF2_OFFSET:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INCF2_OFFSET_Bits;


typedef struct _Ifx_GTM_DPLL_INC_CNT1_Bits
{
    volatile unsigned int INC_CNT1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT1_Bits;


typedef struct _Ifx_GTM_DPLL_INC_CNT1_MASK_Bits
{
    volatile unsigned int INC_CNT1_NOTIFY:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT1_MASK_Bits;


typedef struct _Ifx_GTM_DPLL_INC_CNT2_Bits
{
    volatile unsigned int INC_CNT2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT2_Bits;


typedef struct _Ifx_GTM_DPLL_INC_CNT2_MASK_Bits
{
    volatile unsigned int INC_CNT2_NOTIFY:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT2_MASK_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_EN_Bits
{
    volatile unsigned int PDI_IRQ_EN:1;
    volatile unsigned int PEI_IRQ_EN:1;
    volatile unsigned int TINI_IRQ_EN:1;
    volatile unsigned int TAXI_IRQ_EN:1;
    volatile unsigned int SISI_IRQ_EN:1;
    volatile unsigned int TISI_IRQ_EN:1;
    volatile unsigned int MSI_IRQ_EN:1;
    volatile unsigned int MTI_IRQ_EN:1;
    volatile unsigned int SASI_IRQ_EN:1;
    volatile unsigned int TASI_IRQ_EN:1;
    volatile unsigned int PWI_IRQ_EN:1;
    volatile unsigned int W2I_IRQ_EN:1;
    volatile unsigned int W1I_IRQ_EN:1;
    volatile unsigned int GL1I_IRQ_EN:1;
    volatile unsigned int LL1I_IRQ_EN:1;
    volatile unsigned int EI_IRQ_EN:1;
    volatile unsigned int GL2I_IRQ_EN:1;
    volatile unsigned int LL2I_IRQ_EN:1;
    volatile unsigned int TE0I_IRQ_EN:1;
    volatile unsigned int TE1I_IRQ_EN:1;
    volatile unsigned int TE2I_IRQ_EN:1;
    volatile unsigned int TE3I_IRQ_EN:1;
    volatile unsigned int TE4I_IRQ_EN:1;
    volatile unsigned int CDTI_IRQ_EN:1;
    volatile unsigned int CDSI_IRQ_EN:1;
    volatile unsigned int TORI_IRQ_EN:1;
    volatile unsigned int SORI_IRQ_EN:1;
    volatile unsigned int DCGI_IRQ_EN:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_IRQ_EN_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_PDI:1;
    volatile unsigned int TRG_PEI:1;
    volatile unsigned int TRG_TINI:1;
    volatile unsigned int TRG_TAXI:1;
    volatile unsigned int TRG_SISI:1;
    volatile unsigned int TRG_TISI:1;
    volatile unsigned int TRG_MSI:1;
    volatile unsigned int TRG_MTI:1;
    volatile unsigned int TRG_SASI:1;
    volatile unsigned int TRG_TASI:1;
    volatile unsigned int TRG_PWI:1;
    volatile unsigned int TRG_W2I:1;
    volatile unsigned int TRG_W1I:1;
    volatile unsigned int TRG_GL1I:1;
    volatile unsigned int TRG_LL1I:1;
    volatile unsigned int TRG_EI:1;
    volatile unsigned int TRG_GL2I:1;
    volatile unsigned int TRG_LL2I:1;
    volatile unsigned int TRG_TE0I:1;
    volatile unsigned int TRG_TE1I:1;
    volatile unsigned int TRG_TE2I:1;
    volatile unsigned int TRG_TE3I:1;
    volatile unsigned int TRG_TE4I:1;
    volatile unsigned int TRG_CDTI:1;
    volatile unsigned int TRG_CDSI:1;
    volatile unsigned int TRG_TORI:1;
    volatile unsigned int TRG_SORI:1;
    volatile unsigned int TRG_DCGI:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_DPLL_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_NOTIFY_Bits
{
    volatile unsigned int PDI:1;
    volatile unsigned int PEI:1;
    volatile unsigned int TINI:1;
    volatile unsigned int TAXI:1;
    volatile unsigned int SISI:1;
    volatile unsigned int TISI:1;
    volatile unsigned int MSI:1;
    volatile unsigned int MTI:1;
    volatile unsigned int SASI:1;
    volatile unsigned int TASI:1;
    volatile unsigned int PWI:1;
    volatile unsigned int W2I:1;
    volatile unsigned int W1I:1;
    volatile unsigned int GL1I:1;
    volatile unsigned int LL1I:1;
    volatile unsigned int EI:1;
    volatile unsigned int GL2I:1;
    volatile unsigned int LL2I:1;
    volatile unsigned int TE0I:1;
    volatile unsigned int TE1I:1;
    volatile unsigned int TE2I:1;
    volatile unsigned int TE3I:1;
    volatile unsigned int TE4I:1;
    volatile unsigned int CDTI:1;
    volatile unsigned int CDSI:1;
    volatile unsigned int TORI:1;
    volatile unsigned int SORI:1;
    volatile unsigned int DCGI:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_DPLL_MEDT_S_Bits
{
    volatile unsigned int MEDT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MEDT_S_Bits;


typedef struct _Ifx_GTM_DPLL_MEDT_T_Bits
{
    volatile unsigned int MEDT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MEDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_MLS1_Bits
{
    volatile unsigned int MLS1:18;
    volatile unsigned int reserved_18:6;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MLS1_Bits;


typedef struct _Ifx_GTM_DPLL_MLS2_Bits
{
    volatile unsigned int MLS2:18;
    volatile unsigned int reserved_18:6;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MLS2_Bits;


typedef struct _Ifx_GTM_DPLL_MPVAL1_Bits
{
    volatile unsigned int MPVAL1:16;
    volatile unsigned int SIX1:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MPVAL1_Bits;


typedef struct _Ifx_GTM_DPLL_MPVAL2_Bits
{
    volatile unsigned int MPVAL2:16;
    volatile unsigned int SIX2:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MPVAL2_Bits;


typedef struct _Ifx_GTM_DPLL_NA_Bits
{
    volatile unsigned int DB:10;
    volatile unsigned int DW:10;
    volatile unsigned int reserved_20:4;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NA_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_Bits
{
    volatile unsigned int NMB_S:20;
    volatile unsigned int reserved_20:4;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_S_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_TAR_Bits
{
    volatile unsigned int NMB_S_TAR:20;
    volatile unsigned int reserved_20:4;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_S_TAR_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits
{
    volatile unsigned int NMB_S_TAR_OLD:20;
    volatile unsigned int reserved_20:4;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_Bits
{
    volatile unsigned int NMB_T:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_T_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_TAR_Bits
{
    volatile unsigned int NMB_T_TAR:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_T_TAR_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits
{
    volatile unsigned int NMB_T_TAR_OLD:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_NTI_CNT_Bits
{
    volatile unsigned int NTI_CNT:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_DPLL_NTI_CNT_Bits;


typedef struct _Ifx_GTM_DPLL_NUSC_Bits
{
    volatile unsigned int NUSE:6;
    volatile unsigned int FSS:1;
    volatile unsigned int SYN_S:6;
    volatile unsigned int SYN_S_OLD:6;
    volatile unsigned int VSN:6;
    volatile unsigned int reserved_25:4;
    volatile unsigned int WNUS:1;
    volatile unsigned int WSYN:1;
    volatile unsigned int WVSN:1;
} Ifx_GTM_DPLL_NUSC_Bits;


typedef struct _Ifx_GTM_DPLL_NUSC_EXT1_Bits
{
    volatile unsigned int SYN_S:7;
    volatile unsigned int reserved_7:9;
    volatile unsigned int SYN_S_OLD:7;
    volatile unsigned int reserved_23:7;
    volatile unsigned int WSYN:1;
    volatile unsigned int reserved_31:1;
} Ifx_GTM_DPLL_NUSC_EXT1_Bits;


typedef struct _Ifx_GTM_DPLL_NUSC_EXT2_Bits
{
    volatile unsigned int NUSE:7;
    volatile unsigned int reserved_7:8;
    volatile unsigned int FSS:1;
    volatile unsigned int VSN:7;
    volatile unsigned int reserved_23:6;
    volatile unsigned int WNUS:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int WVSN:1;
} Ifx_GTM_DPLL_NUSC_EXT2_Bits;


typedef struct _Ifx_GTM_DPLL_NUTC_Bits
{
    volatile unsigned int NUTE:10;
    volatile unsigned int FST:1;
    volatile unsigned int reserved_11:2;
    volatile unsigned int SYN_T:3;
    volatile unsigned int SYN_T_OLD:3;
    volatile unsigned int VTN:6;
    volatile unsigned int reserved_25:4;
    volatile unsigned int WNUT:1;
    volatile unsigned int WSYN:1;
    volatile unsigned int WVTN:1;
} Ifx_GTM_DPLL_NUTC_Bits;


typedef struct _Ifx_GTM_DPLL_OSW_Bits
{
    volatile unsigned int SWON_S:1;
    volatile unsigned int SWON_T:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int OSS:2;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_DPLL_OSW_Bits;


typedef struct _Ifx_GTM_DPLL_PDT_Bits
{
    volatile unsigned int DB:14;
    volatile unsigned int DW:10;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PDT_Bits;


typedef struct _Ifx_GTM_DPLL_PSA_Bits
{
    volatile unsigned int PSA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSA_Bits;


typedef struct _Ifx_GTM_DPLL_PSAC_Bits
{
    volatile unsigned int PSAC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSAC_Bits;


typedef struct _Ifx_GTM_DPLL_PSSC_Bits
{
    volatile unsigned int PSSC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSSC_Bits;


typedef struct _Ifx_GTM_DPLL_PSSM_Bits
{
    volatile unsigned int PSSM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSSM_Bits;


typedef struct _Ifx_GTM_DPLL_PSSM_OLD_Bits
{
    volatile unsigned int PSSM_OLD:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSSM_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_PSTC_Bits
{
    volatile unsigned int PSTC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSTC_Bits;


typedef struct _Ifx_GTM_DPLL_PSTM_Bits
{
    volatile unsigned int PSTM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSTM_Bits;


typedef struct _Ifx_GTM_DPLL_PSTM_OLD_Bits
{
    volatile unsigned int PSTM_OLD:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSTM_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_PVT_Bits
{
    volatile unsigned int PVT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PVT_Bits;


typedef struct _Ifx_GTM_DPLL_RAM_INI_Bits
{
    volatile unsigned int INIT_1A:1;
    volatile unsigned int INIT_1BC:1;
    volatile unsigned int INIT_2:1;
    volatile unsigned int reserved_3:1;
    volatile unsigned int INIT_RAM:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_DPLL_RAM_INI_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_SX_Bits
{
    volatile unsigned int RCDT_SX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_SX_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_SX_NOM_Bits
{
    volatile unsigned int RCDT_SX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_SX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_TX_Bits
{
    volatile unsigned int RCDT_TX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_TX_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_TX_NOM_Bits
{
    volatile unsigned int RCDT_TX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_TX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_S_Bits
{
    volatile unsigned int RDT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_S_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_S_ACT_Bits
{
    volatile unsigned int RDT_S_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_S_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_TI_Bits
{
    volatile unsigned int RDT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_TI_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_T_ACT_Bits
{
    volatile unsigned int RDT_T_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_T_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_SIDEL_Bits
{
    volatile unsigned int SIDEL:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_SIDEL_Bits;


typedef struct _Ifx_GTM_DPLL_SLR_Bits
{
    volatile unsigned int SLR:8;
    volatile unsigned int reserved_8:16;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_SLR_Bits;


typedef struct _Ifx_GTM_DPLL_STA_Bits
{
    volatile unsigned int STA_T:8;
    volatile unsigned int reserved_8:1;
    volatile unsigned int CNT_T:3;
    volatile unsigned int STA_S:8;
    volatile unsigned int reserved_20:1;
    volatile unsigned int CNT_S:3;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_STA_Bits;


typedef struct _Ifx_GTM_DPLL_STATUS_Bits
{
    volatile unsigned int FPCE:1;
    volatile unsigned int CSO:1;
    volatile unsigned int reserved_2:1;
    volatile unsigned int CTO:1;
    volatile unsigned int CRO:1;
    volatile unsigned int RCS:1;
    volatile unsigned int RCT:1;
    volatile unsigned int PSE:1;
    volatile unsigned int SOR:1;
    volatile unsigned int MS:1;
    volatile unsigned int TOR:1;
    volatile unsigned int MT:1;
    volatile unsigned int RAM2_ERR:1;
    volatile unsigned int reserved_13:2;
    volatile unsigned int LOW_RES:1;
    volatile unsigned int CSVS:1;
    volatile unsigned int CSVT:1;
    volatile unsigned int CAIP2:1;
    volatile unsigned int CAIP1:1;
    volatile unsigned int ISN:1;
    volatile unsigned int ITN:1;
    volatile unsigned int BWD2:1;
    volatile unsigned int BWD1:1;
    volatile unsigned int reserved_24:1;
    volatile unsigned int LOCK2:1;
    volatile unsigned int SYS:1;
    volatile unsigned int SYT:1;
    volatile unsigned int FSD:1;
    volatile unsigned int FTD:1;
    volatile unsigned int LOCK1:1;
    volatile unsigned int ERR:1;
} Ifx_GTM_DPLL_STATUS_Bits;


typedef struct _Ifx_GTM_DPLL_STA_FLAG_Bits
{
    volatile unsigned int STA_FLAG_T:1;
    volatile unsigned int reserved_1:7;
    volatile unsigned int STA_FLAG_S:1;
    volatile unsigned int INC_CNT1_FLAG:1;
    volatile unsigned int INC_CNT2_FLAG:1;
    volatile unsigned int reserved_11:21;
} Ifx_GTM_DPLL_STA_FLAG_Bits;


typedef struct _Ifx_GTM_DPLL_STA_MASK_Bits
{
    volatile unsigned int STA_NOTIFY_T:8;
    volatile unsigned int STA_NOTIFY_S:8;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_STA_MASK_Bits;


typedef struct _Ifx_GTM_DPLL_TBU_TS0_S_Bits
{
    volatile unsigned int TBU_TS0_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TBU_TS0_S_Bits;


typedef struct _Ifx_GTM_DPLL_TBU_TS0_T_Bits
{
    volatile unsigned int TBU_TS0_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TBU_TS0_T_Bits;


typedef struct _Ifx_GTM_DPLL_THMA_Bits
{
    volatile unsigned int THMA:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_THMA_Bits;


typedef struct _Ifx_GTM_DPLL_THMI_Bits
{
    volatile unsigned int THMI:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_THMI_Bits;


typedef struct _Ifx_GTM_DPLL_THVAL_Bits
{
    volatile unsigned int THVAL:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_THVAL_Bits;


typedef struct _Ifx_GTM_DPLL_THVAL2_Bits
{
    volatile unsigned int THVAL:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_THVAL2_Bits;


typedef struct _Ifx_GTM_DPLL_TIDEL_Bits
{
    volatile unsigned int TIDEL:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TIDEL_Bits;


typedef struct _Ifx_GTM_DPLL_TLR_Bits
{
    volatile unsigned int TLR:8;
    volatile unsigned int reserved_8:16;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TLR_Bits;


typedef struct _Ifx_GTM_DPLL_TOV_Bits
{
    volatile unsigned int TOV_DB:10;
    volatile unsigned int TOV_DW:6;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TOV_Bits;


typedef struct _Ifx_GTM_DPLL_TOV_S_Bits
{
    volatile unsigned int DB:10;
    volatile unsigned int DW:6;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TOV_S_Bits;


typedef struct _Ifx_GTM_DPLL_TSAC_Bits
{
    volatile unsigned int TSAC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TSAC_Bits;


typedef struct _Ifx_GTM_DPLL_TSF_S_Bits
{
    volatile unsigned int TSF_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TSF_S_Bits;


typedef struct _Ifx_GTM_DPLL_TSF_TI_Bits
{
    volatile unsigned int TSF_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TSF_TI_Bits;


typedef struct _Ifx_GTM_DPLL_TS_S_Bits
{
    volatile unsigned int STATE_TS:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_S_Bits;


typedef struct _Ifx_GTM_DPLL_TS_S_OLD_Bits
{
    volatile unsigned int STATE_TS_OLD:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_S_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_TS_T_Bits
{
    volatile unsigned int TRIGGER_TS:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_T_Bits;


typedef struct _Ifx_GTM_DPLL_TS_T_OLD_Bits
{
    volatile unsigned int TRIGGER_TS_OLD:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_T_OLD_Bits;


typedef struct _Ifx_GTM_DSADCINSEL_Bits
{
    Ifx_UReg_32Bit INSEL0:4;
    Ifx_UReg_32Bit INSEL1:4;
    Ifx_UReg_32Bit INSEL2:4;
    Ifx_UReg_32Bit INSEL3:4;
    Ifx_UReg_32Bit INSEL4:4;
    Ifx_UReg_32Bit INSEL5:4;
    Ifx_UReg_32Bit INSEL6:4;
    Ifx_UReg_32Bit INSEL7:4;
} Ifx_GTM_DSADCINSEL_Bits;


typedef struct _Ifx_GTM_DSADC_OUTSEL0_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_DSADC_OUTSEL0_Bits;


typedef struct _Ifx_GTM_DSADC_OUTSEL1_Bits
{
    Ifx_UReg_32Bit SEL8:4;
    Ifx_UReg_32Bit SEL9:4;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_GTM_DSADC_OUTSEL1_Bits;


typedef struct _Ifx_GTM_DTMAUXINSEL_Bits
{
    Ifx_UReg_32Bit ASEL0:2;
    Ifx_UReg_32Bit ASEL1:2;
    Ifx_UReg_32Bit ASEL2:2;
    Ifx_UReg_32Bit ASEL3:2;
    Ifx_UReg_32Bit ASEL4:2;
    Ifx_UReg_32Bit ASEL5:2;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit TSEL0:2;
    Ifx_UReg_32Bit TSEL1:2;
    Ifx_UReg_32Bit TSEL2:2;
    Ifx_UReg_32Bit TSEL3:2;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_GTM_DTMAUXINSEL_Bits;


typedef struct _Ifx_GTM_DXINCON_Bits
{
    Ifx_UReg_32Bit IN0:1;
    Ifx_UReg_32Bit IN1:1;
    Ifx_UReg_32Bit IN2:1;
    Ifx_UReg_32Bit IN3:1;
    Ifx_UReg_32Bit IN4:1;
    Ifx_UReg_32Bit IN5:1;
    Ifx_UReg_32Bit IN6:1;
    Ifx_UReg_32Bit reserved_7:9;
    Ifx_UReg_32Bit DSS0:1;
    Ifx_UReg_32Bit DSS1:1;
    Ifx_UReg_32Bit DSS2:1;
    Ifx_UReg_32Bit DSS3:1;
    Ifx_UReg_32Bit DSS4:1;
    Ifx_UReg_32Bit DSS5:1;
    Ifx_UReg_32Bit DSS6:1;
    Ifx_UReg_32Bit reserved_23:9;
} Ifx_GTM_DXINCON_Bits;


typedef struct _Ifx_GTM_DXOUTCON_Bits
{
    Ifx_UReg_32Bit OUT0:1;
    Ifx_UReg_32Bit OUT1:1;
    Ifx_UReg_32Bit OUT2:1;
    Ifx_UReg_32Bit OUT3:1;
    Ifx_UReg_32Bit OUT4:1;
    Ifx_UReg_32Bit OUT5:1;
    Ifx_UReg_32Bit OUT6:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_GTM_DXOUTCON_Bits;


typedef struct _Ifx_GTM_EIRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_EIRQ_EN:1;
    volatile unsigned int AEI_USP_ADDR_EIRQ_EN:1;
    volatile unsigned int AEI_IM_ADDR_EIRQ_EN:1;
    volatile unsigned int AEI_USP_BE_EIRQ_EN:1;
    volatile unsigned int AEIM_USP_ADDR_EIRQ_EN:1;
    volatile unsigned int AEIM_IM_ADDR_EIRQ_EN:1;
    volatile unsigned int AEIM_USP_BE_EIRQ_EN:1;
    volatile unsigned int CLK_EN_ERR_EIRQ_EN:1;
    volatile unsigned int CLK_PER_ERR_EIRQ_EN:1;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_EXT_CAP_EN_Bits
{
    volatile unsigned int TIM_I_EXT_CAP_EN:8;
    volatile unsigned int TIM_IP1_EXT_CAP_EN:8;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_EXT_CAP_EN_Bits;


typedef struct _Ifx_GTM_HW_CONF_Bits
{
    volatile unsigned int GRSTEN:1;
    volatile unsigned int BRIDGE_MODE_RST:1;
    volatile unsigned int SYNC_INPUT_REG:1;
    volatile unsigned int CFG_CLOCK_RATE:1;
    volatile unsigned int ATOM_OUT_RST:1;
    volatile unsigned int ATOM_TRIG_CHAIN:3;
    volatile unsigned int TOM_OUT_RST:1;
    volatile unsigned int TOM_TRIG_CHAIN:3;
    volatile unsigned int RAM_INIT_RST:1;
    volatile unsigned int ERM:1;
    volatile unsigned int ARU_CONNECT_CONFIG:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int IRQ_MODE_LEVEL:1;
    volatile unsigned int IRQ_MODE_PULSE:1;
    volatile unsigned int IRQ_MODE_PULSE_NOTIFY:1;
    volatile unsigned int IRQ_MODE_SINGLE_PULSE:1;
    volatile unsigned int ATOM_TRIG_INTCHAIN:4;
    volatile unsigned int TOM_TRIG_INTCHAIN:5;
    volatile unsigned int INT_CLK_EN_GEN:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_HW_CONF_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI0_Bits
{
    volatile unsigned int FIFO0_CH0_EIRQ:1;
    volatile unsigned int FIFO0_CH1_EIRQ:1;
    volatile unsigned int FIFO0_CH2_EIRQ:1;
    volatile unsigned int FIFO0_CH3_EIRQ:1;
    volatile unsigned int FIFO0_CH4_EIRQ:1;
    volatile unsigned int FIFO0_CH5_EIRQ:1;
    volatile unsigned int FIFO0_CH6_EIRQ:1;
    volatile unsigned int FIFO0_CH7_EIRQ:1;
    volatile unsigned int FIFO1_CH0_EIRQ:1;
    volatile unsigned int FIFO1_CH1_EIRQ:1;
    volatile unsigned int FIFO1_CH2_EIRQ:1;
    volatile unsigned int FIFO1_CH3_EIRQ:1;
    volatile unsigned int FIFO1_CH4_EIRQ:1;
    volatile unsigned int FIFO1_CH5_EIRQ:1;
    volatile unsigned int FIFO1_CH6_EIRQ:1;
    volatile unsigned int FIFO1_CH7_EIRQ:1;
    volatile unsigned int FIFO2_CH0_EIRQ:1;
    volatile unsigned int FIFO2_CH1_EIRQ:1;
    volatile unsigned int FIFO2_CH2_EIRQ:1;
    volatile unsigned int FIFO2_CH3_EIRQ:1;
    volatile unsigned int FIFO2_CH4_EIRQ:1;
    volatile unsigned int FIFO2_CH5_EIRQ:1;
    volatile unsigned int FIFO2_CH6_EIRQ:1;
    volatile unsigned int FIFO2_CH7_EIRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ICM_IRQG_CEI0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI1_Bits
{
    volatile unsigned int TIM0_CH0_EIRQ:1;
    volatile unsigned int TIM0_CH1_EIRQ:1;
    volatile unsigned int TIM0_CH2_EIRQ:1;
    volatile unsigned int TIM0_CH3_EIRQ:1;
    volatile unsigned int TIM0_CH4_EIRQ:1;
    volatile unsigned int TIM0_CH5_EIRQ:1;
    volatile unsigned int TIM0_CH6_EIRQ:1;
    volatile unsigned int TIM0_CH7_EIRQ:1;
    volatile unsigned int TIM1_CH0_EIRQ:1;
    volatile unsigned int TIM1_CH1_EIRQ:1;
    volatile unsigned int TIM1_CH2_EIRQ:1;
    volatile unsigned int TIM1_CH3_EIRQ:1;
    volatile unsigned int TIM1_CH4_EIRQ:1;
    volatile unsigned int TIM1_CH5_EIRQ:1;
    volatile unsigned int TIM1_CH6_EIRQ:1;
    volatile unsigned int TIM1_CH7_EIRQ:1;
    volatile unsigned int TIM2_CH0_EIRQ:1;
    volatile unsigned int TIM2_CH1_EIRQ:1;
    volatile unsigned int TIM2_CH2_EIRQ:1;
    volatile unsigned int TIM2_CH3_EIRQ:1;
    volatile unsigned int TIM2_CH4_EIRQ:1;
    volatile unsigned int TIM2_CH5_EIRQ:1;
    volatile unsigned int TIM2_CH6_EIRQ:1;
    volatile unsigned int TIM2_CH7_EIRQ:1;
    volatile unsigned int TIM3_CH0_EIRQ:1;
    volatile unsigned int TIM3_CH1_EIRQ:1;
    volatile unsigned int TIM3_CH2_EIRQ:1;
    volatile unsigned int TIM3_CH3_EIRQ:1;
    volatile unsigned int TIM3_CH4_EIRQ:1;
    volatile unsigned int TIM3_CH5_EIRQ:1;
    volatile unsigned int TIM3_CH6_EIRQ:1;
    volatile unsigned int TIM3_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI2_Bits
{
    volatile unsigned int TIM4_CH0_EIRQ:1;
    volatile unsigned int TIM4_CH1_EIRQ:1;
    volatile unsigned int TIM4_CH2_EIRQ:1;
    volatile unsigned int TIM4_CH3_EIRQ:1;
    volatile unsigned int TIM4_CH4_EIRQ:1;
    volatile unsigned int TIM4_CH5_EIRQ:1;
    volatile unsigned int TIM4_CH6_EIRQ:1;
    volatile unsigned int TIM4_CH7_EIRQ:1;
    volatile unsigned int TIM5_CH0_EIRQ:1;
    volatile unsigned int TIM5_CH1_EIRQ:1;
    volatile unsigned int TIM5_CH2_EIRQ:1;
    volatile unsigned int TIM5_CH3_EIRQ:1;
    volatile unsigned int TIM5_CH4_EIRQ:1;
    volatile unsigned int TIM5_CH5_EIRQ:1;
    volatile unsigned int TIM5_CH6_EIRQ:1;
    volatile unsigned int TIM5_CH7_EIRQ:1;
    volatile unsigned int TIM6_CH0_EIRQ:1;
    volatile unsigned int TIM6_CH1_EIRQ:1;
    volatile unsigned int TIM6_CH2_EIRQ:1;
    volatile unsigned int TIM6_CH3_EIRQ:1;
    volatile unsigned int TIM6_CH4_EIRQ:1;
    volatile unsigned int TIM6_CH5_EIRQ:1;
    volatile unsigned int TIM6_CH6_EIRQ:1;
    volatile unsigned int TIM6_CH7_EIRQ:1;
    volatile unsigned int TIM7_CH0_EIRQ:1;
    volatile unsigned int TIM7_CH1_EIRQ:1;
    volatile unsigned int TIM7_CH2_EIRQ:1;
    volatile unsigned int TIM7_CH3_EIRQ:1;
    volatile unsigned int TIM7_CH4_EIRQ:1;
    volatile unsigned int TIM7_CH5_EIRQ:1;
    volatile unsigned int TIM7_CH6_EIRQ:1;
    volatile unsigned int TIM7_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI3_Bits
{
    volatile unsigned int MCS0_CH0_EIRQ:1;
    volatile unsigned int MCS0_CH1_EIRQ:1;
    volatile unsigned int MCS0_CH2_EIRQ:1;
    volatile unsigned int MCS0_CH3_EIRQ:1;
    volatile unsigned int MCS0_CH4_EIRQ:1;
    volatile unsigned int MCS0_CH5_EIRQ:1;
    volatile unsigned int MCS0_CH6_EIRQ:1;
    volatile unsigned int MCS0_CH7_EIRQ:1;
    volatile unsigned int MCS1_CH0_EIRQ:1;
    volatile unsigned int MCS1_CH1_EIRQ:1;
    volatile unsigned int MCS1_CH2_EIRQ:1;
    volatile unsigned int MCS1_CH3_EIRQ:1;
    volatile unsigned int MCS1_CH4_EIRQ:1;
    volatile unsigned int MCS1_CH5_EIRQ:1;
    volatile unsigned int MCS1_CH6_EIRQ:1;
    volatile unsigned int MCS1_CH7_EIRQ:1;
    volatile unsigned int MCS2_CH0_EIRQ:1;
    volatile unsigned int MCS2_CH1_EIRQ:1;
    volatile unsigned int MCS2_CH2_EIRQ:1;
    volatile unsigned int MCS2_CH3_EIRQ:1;
    volatile unsigned int MCS2_CH4_EIRQ:1;
    volatile unsigned int MCS2_CH5_EIRQ:1;
    volatile unsigned int MCS2_CH6_EIRQ:1;
    volatile unsigned int MCS2_CH7_EIRQ:1;
    volatile unsigned int MCS3_CH0_EIRQ:1;
    volatile unsigned int MCS3_CH1_EIRQ:1;
    volatile unsigned int MCS3_CH2_EIRQ:1;
    volatile unsigned int MCS3_CH3_EIRQ:1;
    volatile unsigned int MCS3_CH4_EIRQ:1;
    volatile unsigned int MCS3_CH5_EIRQ:1;
    volatile unsigned int MCS3_CH6_EIRQ:1;
    volatile unsigned int MCS3_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI3_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI4_Bits
{
    volatile unsigned int MCS4_CH0_EIRQ:1;
    volatile unsigned int MCS4_CH1_EIRQ:1;
    volatile unsigned int MCS4_CH2_EIRQ:1;
    volatile unsigned int MCS4_CH3_EIRQ:1;
    volatile unsigned int MCS4_CH4_EIRQ:1;
    volatile unsigned int MCS4_CH5_EIRQ:1;
    volatile unsigned int MCS4_CH6_EIRQ:1;
    volatile unsigned int MCS4_CH7_EIRQ:1;
    volatile unsigned int MCS5_CH0_EIRQ:1;
    volatile unsigned int MCS5_CH1_EIRQ:1;
    volatile unsigned int MCS5_CH2_EIRQ:1;
    volatile unsigned int MCS5_CH3_EIRQ:1;
    volatile unsigned int MCS5_CH4_EIRQ:1;
    volatile unsigned int MCS5_CH5_EIRQ:1;
    volatile unsigned int MCS5_CH6_EIRQ:1;
    volatile unsigned int MCS5_CH7_EIRQ:1;
    volatile unsigned int MCS6_CH0_EIRQ:1;
    volatile unsigned int MCS6_CH1_EIRQ:1;
    volatile unsigned int MCS6_CH2_EIRQ:1;
    volatile unsigned int MCS6_CH3_EIRQ:1;
    volatile unsigned int MCS6_CH4_EIRQ:1;
    volatile unsigned int MCS6_CH5_EIRQ:1;
    volatile unsigned int MCS6_CH6_EIRQ:1;
    volatile unsigned int MCS6_CH7_EIRQ:1;
    volatile unsigned int MCS7_CH0_EIRQ:1;
    volatile unsigned int MCS7_CH1_EIRQ:1;
    volatile unsigned int MCS7_CH2_EIRQ:1;
    volatile unsigned int MCS7_CH3_EIRQ:1;
    volatile unsigned int MCS7_CH4_EIRQ:1;
    volatile unsigned int MCS7_CH5_EIRQ:1;
    volatile unsigned int MCS7_CH6_EIRQ:1;
    volatile unsigned int MCS7_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI4_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI_MCS_Bits
{
    volatile unsigned int MCS_CH0_EIRQ:1;
    volatile unsigned int MCS_CH1_EIRQ:1;
    volatile unsigned int MCS_CH2_EIRQ:1;
    volatile unsigned int MCS_CH3_EIRQ:1;
    volatile unsigned int MCS_CH4_EIRQ:1;
    volatile unsigned int MCS_CH5_EIRQ:1;
    volatile unsigned int MCS_CH6_EIRQ:1;
    volatile unsigned int MCS_CH7_EIRQ:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_ICM_IRQG_CEI_MCS_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI_PSM_Bits
{
    volatile unsigned int PSM_M0_CH0_EIRQ:1;
    volatile unsigned int PSM_M0_CH1_EIRQ:1;
    volatile unsigned int PSM_M0_CH2_EIRQ:1;
    volatile unsigned int PSM_M0_CH3_EIRQ:1;
    volatile unsigned int PSM_M0_CH4_EIRQ:1;
    volatile unsigned int PSM_M0_CH5_EIRQ:1;
    volatile unsigned int PSM_M0_CH6_EIRQ:1;
    volatile unsigned int PSM_M0_CH7_EIRQ:1;
    volatile unsigned int PSM_M1_CH0_EIRQ:1;
    volatile unsigned int PSM_M1_CH1_EIRQ:1;
    volatile unsigned int PSM_M1_CH2_EIRQ:1;
    volatile unsigned int PSM_M1_CH3_EIRQ:1;
    volatile unsigned int PSM_M1_CH4_EIRQ:1;
    volatile unsigned int PSM_M1_CH5_EIRQ:1;
    volatile unsigned int PSM_M1_CH6_EIRQ:1;
    volatile unsigned int PSM_M1_CH7_EIRQ:1;
    volatile unsigned int PSM_M2_CH0_EIRQ:1;
    volatile unsigned int PSM_M2_CH1_EIRQ:1;
    volatile unsigned int PSM_M2_CH2_EIRQ:1;
    volatile unsigned int PSM_M2_CH3_EIRQ:1;
    volatile unsigned int PSM_M2_CH4_EIRQ:1;
    volatile unsigned int PSM_M2_CH5_EIRQ:1;
    volatile unsigned int PSM_M2_CH6_EIRQ:1;
    volatile unsigned int PSM_M2_CH7_EIRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ICM_IRQG_CEI_PSM_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI_SPE_Bits
{
    volatile unsigned int SPE0_EIRQ:1;
    volatile unsigned int SPE1_EIRQ:1;
    volatile unsigned int SPE2_EIRQ:1;
    volatile unsigned int SPE3_EIRQ:1;
    volatile unsigned int SPE4_EIRQ:1;
    volatile unsigned int SPE5_EIRQ:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_ICM_IRQG_CEI_SPE_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_ATOM_Bits
{
    volatile unsigned int ATOM_M0_CH0_IRQ:1;
    volatile unsigned int ATOM_M0_CH1_IRQ:1;
    volatile unsigned int ATOM_M0_CH2_IRQ:1;
    volatile unsigned int ATOM_M0_CH3_IRQ:1;
    volatile unsigned int ATOM_M0_CH4_IRQ:1;
    volatile unsigned int ATOM_M0_CH5_IRQ:1;
    volatile unsigned int ATOM_M0_CH6_IRQ:1;
    volatile unsigned int ATOM_M0_CH7_IRQ:1;
    volatile unsigned int ATOM_M1_CH0_IRQ:1;
    volatile unsigned int ATOM_M1_CH1_IRQ:1;
    volatile unsigned int ATOM_M1_CH2_IRQ:1;
    volatile unsigned int ATOM_M1_CH3_IRQ:1;
    volatile unsigned int ATOM_M1_CH4_IRQ:1;
    volatile unsigned int ATOM_M1_CH5_IRQ:1;
    volatile unsigned int ATOM_M1_CH6_IRQ:1;
    volatile unsigned int ATOM_M1_CH7_IRQ:1;
    volatile unsigned int ATOM_M2_CH0_IRQ:1;
    volatile unsigned int ATOM_M2_CH1_IRQ:1;
    volatile unsigned int ATOM_M2_CH2_IRQ:1;
    volatile unsigned int ATOM_M2_CH3_IRQ:1;
    volatile unsigned int ATOM_M2_CH4_IRQ:1;
    volatile unsigned int ATOM_M2_CH5_IRQ:1;
    volatile unsigned int ATOM_M2_CH6_IRQ:1;
    volatile unsigned int ATOM_M2_CH7_IRQ:1;
    volatile unsigned int ATOM_M3_CH0_IRQ:1;
    volatile unsigned int ATOM_M3_CH1_IRQ:1;
    volatile unsigned int ATOM_M3_CH2_IRQ:1;
    volatile unsigned int ATOM_M3_CH3_IRQ:1;
    volatile unsigned int ATOM_M3_CH4_IRQ:1;
    volatile unsigned int ATOM_M3_CH5_IRQ:1;
    volatile unsigned int ATOM_M3_CH6_IRQ:1;
    volatile unsigned int ATOM_M3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_CI_ATOM_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_MCS_Bits
{
    volatile unsigned int MCS_CH0_IRQ:1;
    volatile unsigned int MCS_CH1_IRQ:1;
    volatile unsigned int MCS_CH2_IRQ:1;
    volatile unsigned int MCS_CH3_IRQ:1;
    volatile unsigned int MCS_CH4_IRQ:1;
    volatile unsigned int MCS_CH5_IRQ:1;
    volatile unsigned int MCS_CH6_IRQ:1;
    volatile unsigned int MCS_CH7_IRQ:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_ICM_IRQG_CI_MCS_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_PSM_Bits
{
    volatile unsigned int PSM_M0_CH0_IRQ:1;
    volatile unsigned int PSM_M0_CH1_IRQ:1;
    volatile unsigned int PSM_M0_CH2_IRQ:1;
    volatile unsigned int PSM_M0_CH3_IRQ:1;
    volatile unsigned int PSM_M0_CH4_IRQ:1;
    volatile unsigned int PSM_M0_CH5_IRQ:1;
    volatile unsigned int PSM_M0_CH6_IRQ:1;
    volatile unsigned int PSM_M0_CH7_IRQ:1;
    volatile unsigned int PSM_M1_CH0_IRQ:1;
    volatile unsigned int PSM_M1_CH1_IRQ:1;
    volatile unsigned int PSM_M1_CH2_IRQ:1;
    volatile unsigned int PSM_M1_CH3_IRQ:1;
    volatile unsigned int PSM_M1_CH4_IRQ:1;
    volatile unsigned int PSM_M1_CH5_IRQ:1;
    volatile unsigned int PSM_M1_CH6_IRQ:1;
    volatile unsigned int PSM_M1_CH7_IRQ:1;
    volatile unsigned int PSM_M2_CH0_IRQ:1;
    volatile unsigned int PSM_M2_CH1_IRQ:1;
    volatile unsigned int PSM_M2_CH2_IRQ:1;
    volatile unsigned int PSM_M2_CH3_IRQ:1;
    volatile unsigned int PSM_M2_CH4_IRQ:1;
    volatile unsigned int PSM_M2_CH5_IRQ:1;
    volatile unsigned int PSM_M2_CH6_IRQ:1;
    volatile unsigned int PSM_M2_CH7_IRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ICM_IRQG_CI_PSM_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_SPE_Bits
{
    volatile unsigned int SPE0_IRQ:1;
    volatile unsigned int SPE1_IRQ:1;
    volatile unsigned int SPE2_IRQ:1;
    volatile unsigned int SPE3_IRQ:1;
    volatile unsigned int SPE4_IRQ:1;
    volatile unsigned int SPE5_IRQ:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_ICM_IRQG_CI_SPE_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_TOM_Bits
{
    volatile unsigned int TOM_M0_CH0_IRQ:1;
    volatile unsigned int TOM_M0_CH1_IRQ:1;
    volatile unsigned int TOM_M0_CH2_IRQ:1;
    volatile unsigned int TOM_M0_CH3_IRQ:1;
    volatile unsigned int TOM_M0_CH4_IRQ:1;
    volatile unsigned int TOM_M0_CH5_IRQ:1;
    volatile unsigned int TOM_M0_CH6_IRQ:1;
    volatile unsigned int TOM_M0_CH7_IRQ:1;
    volatile unsigned int TOM_M0_CH8_IRQ:1;
    volatile unsigned int TOM_M0_CH9_IRQ:1;
    volatile unsigned int TOM_M0_CH10_IRQ:1;
    volatile unsigned int TOM_M0_CH11_IRQ:1;
    volatile unsigned int TOM_M0_CH12_IRQ:1;
    volatile unsigned int TOM_M0_CH13_IRQ:1;
    volatile unsigned int TOM_M0_CH14_IRQ:1;
    volatile unsigned int TOM_M0_CH15_IRQ:1;
    volatile unsigned int TOM_M1_CH0_IRQ:1;
    volatile unsigned int TOM_M1_CH1_IRQ:1;
    volatile unsigned int TOM_M1_CH2_IRQ:1;
    volatile unsigned int TOM_M1_CH3_IRQ:1;
    volatile unsigned int TOM_M1_CH4_IRQ:1;
    volatile unsigned int TOM_M1_CH5_IRQ:1;
    volatile unsigned int TOM_M1_CH6_IRQ:1;
    volatile unsigned int TOM_M1_CH7_IRQ:1;
    volatile unsigned int TOM_M1_CH8_IRQ:1;
    volatile unsigned int TOM_M1_CH9_IRQ:1;
    volatile unsigned int TOM_M1_CH10_IRQ:1;
    volatile unsigned int TOM_M1_CH11_IRQ:1;
    volatile unsigned int TOM_M1_CH12_IRQ:1;
    volatile unsigned int TOM_M1_CH13_IRQ:1;
    volatile unsigned int TOM_M1_CH14_IRQ:1;
    volatile unsigned int TOM_M1_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_CI_TOM_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_Bits
{
    volatile unsigned int GTM_EIRQ:1;
    volatile unsigned int BRC_EIRQ:1;
    volatile unsigned int FIFO0_EIRQ:1;
    volatile unsigned int FIFO1_EIRQ:1;
    volatile unsigned int TIM0_EIRQ:1;
    volatile unsigned int TIM1_EIRQ:1;
    volatile unsigned int TIM2_EIRQ:1;
    volatile unsigned int TIM3_EIRQ:1;
    volatile unsigned int TIM4_EIRQ:1;
    volatile unsigned int TIM5_EIRQ:1;
    volatile unsigned int TIM6_EIRQ:1;
    volatile unsigned int TIM7_EIRQ:1;
    volatile unsigned int MCS0_EIRQ:1;
    volatile unsigned int MCS1_EIRQ:1;
    volatile unsigned int MCS2_EIRQ:1;
    volatile unsigned int MCS3_EIRQ:1;
    volatile unsigned int MCS4_EIRQ:1;
    volatile unsigned int MCS5_EIRQ:1;
    volatile unsigned int MCS6_EIRQ:1;
    volatile unsigned int MCS7_EIRQ:1;
    volatile unsigned int SPE0_EIRQ:1;
    volatile unsigned int SPE1_EIRQ:1;
    volatile unsigned int SPE2_EIRQ:1;
    volatile unsigned int SPE3_EIRQ:1;
    volatile unsigned int CMP_EIRQ:1;
    volatile unsigned int DPLL_EIRQ:1;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_ICM_IRQG_MEI_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_CLS_Bits
{
    volatile unsigned int TIM_M0_EIRQ:1;
    volatile unsigned int MCS_M0_EIRQ:1;
    volatile unsigned int SPE_M0_EIRQ:1;
    volatile unsigned int FIFO_M0_EIRQ:1;
    volatile unsigned int reserved_4:4;
    volatile unsigned int TIM_M1_EIRQ:1;
    volatile unsigned int MCS_M1_EIRQ:1;
    volatile unsigned int SPE_M1_EIRQ:1;
    volatile unsigned int FIFO_M1_EIRQ:1;
    volatile unsigned int reserved_12:4;
    volatile unsigned int TIM_M2_EIRQ:1;
    volatile unsigned int MCS_M2_EIRQ:1;
    volatile unsigned int SPE_M2_EIRQ:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int reserved_20:4;
    volatile unsigned int TIM_M3_EIRQ:1;
    volatile unsigned int MCS_M3_EIRQ:1;
    volatile unsigned int SPE_M3_EIRQ:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_ICM_IRQG_MEI_CLS_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R0_Bits
{
    volatile unsigned int ARU_NEW_DATA0_IRQ:1;
    volatile unsigned int ARU_NEW_DATA1_IRQ:1;
    volatile unsigned int ARU_ACC_ACK_IRQ:1;
    volatile unsigned int BRC_IRQ:1;
    volatile unsigned int AEI_IRQ:1;
    volatile unsigned int CMP_IRQ:1;
    volatile unsigned int SPE0_IRQ:1;
    volatile unsigned int SPE1_IRQ:1;
    volatile unsigned int SPE2_IRQ:1;
    volatile unsigned int SPE3_IRQ:1;
    volatile unsigned int SPE4_IRQ:1;
    volatile unsigned int SPE5_IRQ:1;
    volatile unsigned int reserved_12:4;
    volatile unsigned int PSM0_CH0_IRQ:1;
    volatile unsigned int PSM0_CH1_IRQ:1;
    volatile unsigned int PSM0_CH2_IRQ:1;
    volatile unsigned int PSM0_CH3_IRQ:1;
    volatile unsigned int PSM0_CH4_IRQ:1;
    volatile unsigned int PSM0_CH5_IRQ:1;
    volatile unsigned int PSM0_CH6_IRQ:1;
    volatile unsigned int PSM0_CH7_IRQ:1;
    volatile unsigned int PSM1_CH0_IRQ:1;
    volatile unsigned int PSM1_CH1_IRQ:1;
    volatile unsigned int PSM1_CH2_IRQ:1;
    volatile unsigned int PSM1_CH3_IRQ:1;
    volatile unsigned int PSM1_CH4_IRQ:1;
    volatile unsigned int PSM1_CH5_IRQ:1;
    volatile unsigned int PSM1_CH6_IRQ:1;
    volatile unsigned int PSM1_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R1_Bits
{
    volatile unsigned int DPLL_DCGI_IRQ:1;
    volatile unsigned int DPLL_EDI_IRQ:1;
    volatile unsigned int DPLL_TINI_IRQ:1;
    volatile unsigned int DPLL_TAXI_IRQ:1;
    volatile unsigned int DPLL_SISI_IRQ:1;
    volatile unsigned int DPLL_TISI_IRQ:1;
    volatile unsigned int DPLL_MSI_IRQ:1;
    volatile unsigned int DPLL_MTI_IRQ:1;
    volatile unsigned int DPLL_SASI_IRQ:1;
    volatile unsigned int DPLL_TASI_IRQ:1;
    volatile unsigned int DPLL_PWI_IRQ:1;
    volatile unsigned int DPLL_W2I_IRQ:1;
    volatile unsigned int DPLL_W1I_IRQ:1;
    volatile unsigned int DPLL_GL1I_IRQ:1;
    volatile unsigned int DPLL_LL1I_IRQ:1;
    volatile unsigned int DPLL_EI_IRQ:1;
    volatile unsigned int DPLL_GL2I_IRQ:1;
    volatile unsigned int DPLL_LL2I_IRQ:1;
    volatile unsigned int DPLL_TE0I_IRQ:1;
    volatile unsigned int DPLL_TE1I_IRQ:1;
    volatile unsigned int DPLL_TE2I_IRQ:1;
    volatile unsigned int DPLL_TE3I_IRQ:1;
    volatile unsigned int DPLL_TE4I_IRQ:1;
    volatile unsigned int DPLL_CDTI_IRQ:1;
    volatile unsigned int DPLL_CDSI_IRQ:1;
    volatile unsigned int DPLL_TORI_IRQ:1;
    volatile unsigned int DPLL_SORI_IRQ:1;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_ICM_IRQG_R1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R10_Bits
{
    volatile unsigned int ATOM4_CH0_IRQ:1;
    volatile unsigned int ATOM4_CH1_IRQ:1;
    volatile unsigned int ATOM4_CH2_IRQ:1;
    volatile unsigned int ATOM4_CH3_IRQ:1;
    volatile unsigned int ATOM4_CH4_IRQ:1;
    volatile unsigned int ATOM4_CH5_IRQ:1;
    volatile unsigned int ATOM4_CH6_IRQ:1;
    volatile unsigned int ATOM4_CH7_IRQ:1;
    volatile unsigned int ATOM5_CH0_IRQ:1;
    volatile unsigned int ATOM5_CH1_IRQ:1;
    volatile unsigned int ATOM5_CH2_IRQ:1;
    volatile unsigned int ATOM5_CH3_IRQ:1;
    volatile unsigned int ATOM5_CH4_IRQ:1;
    volatile unsigned int ATOM5_CH5_IRQ:1;
    volatile unsigned int ATOM5_CH6_IRQ:1;
    volatile unsigned int ATOM5_CH7_IRQ:1;
    volatile unsigned int ATOM6_CH0_IRQ:1;
    volatile unsigned int ATOM6_CH1_IRQ:1;
    volatile unsigned int ATOM6_CH2_IRQ:1;
    volatile unsigned int ATOM6_CH3_IRQ:1;
    volatile unsigned int ATOM6_CH4_IRQ:1;
    volatile unsigned int ATOM6_CH5_IRQ:1;
    volatile unsigned int ATOM6_CH6_IRQ:1;
    volatile unsigned int ATOM6_CH7_IRQ:1;
    volatile unsigned int ATOM7_CH0_IRQ:1;
    volatile unsigned int ATOM7_CH1_IRQ:1;
    volatile unsigned int ATOM7_CH2_IRQ:1;
    volatile unsigned int ATOM7_CH3_IRQ:1;
    volatile unsigned int ATOM7_CH4_IRQ:1;
    volatile unsigned int ATOM7_CH5_IRQ:1;
    volatile unsigned int ATOM7_CH6_IRQ:1;
    volatile unsigned int ATOM7_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R10_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R11_Bits
{
    volatile unsigned int ATOM8_CH0_IRQ:1;
    volatile unsigned int ATOM8_CH1_IRQ:1;
    volatile unsigned int ATOM8_CH2_IRQ:1;
    volatile unsigned int ATOM8_CH3_IRQ:1;
    volatile unsigned int ATOM8_CH4_IRQ:1;
    volatile unsigned int ATOM8_CH5_IRQ:1;
    volatile unsigned int ATOM8_CH6_IRQ:1;
    volatile unsigned int ATOM8_CH7_IRQ:1;
    volatile unsigned int ATOM9_CH0_IRQ:1;
    volatile unsigned int ATOM9_CH1_IRQ:1;
    volatile unsigned int ATOM9_CH2_IRQ:1;
    volatile unsigned int ATOM9_CH3_IRQ:1;
    volatile unsigned int ATOM9_CH4_IRQ:1;
    volatile unsigned int ATOM9_CH5_IRQ:1;
    volatile unsigned int ATOM9_CH6_IRQ:1;
    volatile unsigned int ATOM9_CH7_IRQ:1;
    volatile unsigned int ATOM10_CH0_IRQ:1;
    volatile unsigned int ATOM10_CH1_IRQ:1;
    volatile unsigned int ATOM10_CH2_IRQ:1;
    volatile unsigned int ATOM10_CH3_IRQ:1;
    volatile unsigned int ATOM10_CH4_IRQ:1;
    volatile unsigned int ATOM10_CH5_IRQ:1;
    volatile unsigned int ATOM10_CH6_IRQ:1;
    volatile unsigned int ATOM10_CH7_IRQ:1;
    volatile unsigned int ATOM11_CH0_IRQ:1;
    volatile unsigned int ATOM11_CH1_IRQ:1;
    volatile unsigned int ATOM11_CH2_IRQ:1;
    volatile unsigned int ATOM11_CH3_IRQ:1;
    volatile unsigned int ATOM11_CH4_IRQ:1;
    volatile unsigned int ATOM11_CH5_IRQ:1;
    volatile unsigned int ATOM11_CH6_IRQ:1;
    volatile unsigned int ATOM11_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R11_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R2_Bits
{
    volatile unsigned int TIM0_CH0_IRQ:1;
    volatile unsigned int TIM0_CH1_IRQ:1;
    volatile unsigned int TIM0_CH2_IRQ:1;
    volatile unsigned int TIM0_CH3_IRQ:1;
    volatile unsigned int TIM0_CH4_IRQ:1;
    volatile unsigned int TIM0_CH5_IRQ:1;
    volatile unsigned int TIM0_CH6_IRQ:1;
    volatile unsigned int TIM0_CH7_IRQ:1;
    volatile unsigned int TIM1_CH0_IRQ:1;
    volatile unsigned int TIM1_CH1_IRQ:1;
    volatile unsigned int TIM1_CH2_IRQ:1;
    volatile unsigned int TIM1_CH3_IRQ:1;
    volatile unsigned int TIM1_CH4_IRQ:1;
    volatile unsigned int TIM1_CH5_IRQ:1;
    volatile unsigned int TIM1_CH6_IRQ:1;
    volatile unsigned int TIM1_CH7_IRQ:1;
    volatile unsigned int TIM2_CH0_IRQ:1;
    volatile unsigned int TIM2_CH1_IRQ:1;
    volatile unsigned int TIM2_CH2_IRQ:1;
    volatile unsigned int TIM2_CH3_IRQ:1;
    volatile unsigned int TIM2_CH4_IRQ:1;
    volatile unsigned int TIM2_CH5_IRQ:1;
    volatile unsigned int TIM2_CH6_IRQ:1;
    volatile unsigned int TIM2_CH7_IRQ:1;
    volatile unsigned int TIM3_CH0_IRQ:1;
    volatile unsigned int TIM3_CH1_IRQ:1;
    volatile unsigned int TIM3_CH2_IRQ:1;
    volatile unsigned int TIM3_CH3_IRQ:1;
    volatile unsigned int TIM3_CH4_IRQ:1;
    volatile unsigned int TIM3_CH5_IRQ:1;
    volatile unsigned int TIM3_CH6_IRQ:1;
    volatile unsigned int TIM3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R3_Bits
{
    volatile unsigned int TIM4_CH0_IRQ:1;
    volatile unsigned int TIM4_CH1_IRQ:1;
    volatile unsigned int TIM4_CH2_IRQ:1;
    volatile unsigned int TIM4_CH3_IRQ:1;
    volatile unsigned int TIM4_CH4_IRQ:1;
    volatile unsigned int TIM4_CH5_IRQ:1;
    volatile unsigned int TIM4_CH6_IRQ:1;
    volatile unsigned int TIM4_CH7_IRQ:1;
    volatile unsigned int TIM5_CH0_IRQ:1;
    volatile unsigned int TIM5_CH1_IRQ:1;
    volatile unsigned int TIM5_CH2_IRQ:1;
    volatile unsigned int TIM5_CH3_IRQ:1;
    volatile unsigned int TIM5_CH4_IRQ:1;
    volatile unsigned int TIM5_CH5_IRQ:1;
    volatile unsigned int TIM5_CH6_IRQ:1;
    volatile unsigned int TIM5_CH7_IRQ:1;
    volatile unsigned int TIM6_CH0_IRQ:1;
    volatile unsigned int TIM6_CH1_IRQ:1;
    volatile unsigned int TIM6_CH2_IRQ:1;
    volatile unsigned int TIM6_CH3_IRQ:1;
    volatile unsigned int TIM6_CH4_IRQ:1;
    volatile unsigned int TIM6_CH5_IRQ:1;
    volatile unsigned int TIM6_CH6_IRQ:1;
    volatile unsigned int TIM6_CH7_IRQ:1;
    volatile unsigned int TIM7_CH0_IRQ:1;
    volatile unsigned int TIM7_CH1_IRQ:1;
    volatile unsigned int TIM7_CH2_IRQ:1;
    volatile unsigned int TIM7_CH3_IRQ:1;
    volatile unsigned int TIM7_CH4_IRQ:1;
    volatile unsigned int TIM7_CH5_IRQ:1;
    volatile unsigned int TIM7_CH6_IRQ:1;
    volatile unsigned int TIM7_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R3_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R4_Bits
{
    volatile unsigned int MCS0_CH0_IRQ:1;
    volatile unsigned int MCS0_CH1_IRQ:1;
    volatile unsigned int MCS0_CH2_IRQ:1;
    volatile unsigned int MCS0_CH3_IRQ:1;
    volatile unsigned int MCS0_CH4_IRQ:1;
    volatile unsigned int MCS0_CH5_IRQ:1;
    volatile unsigned int MCS0_CH6_IRQ:1;
    volatile unsigned int MCS0_CH7_IRQ:1;
    volatile unsigned int MCS1_CH0_IRQ:1;
    volatile unsigned int MCS1_CH1_IRQ:1;
    volatile unsigned int MCS1_CH2_IRQ:1;
    volatile unsigned int MCS1_CH3_IRQ:1;
    volatile unsigned int MCS1_CH4_IRQ:1;
    volatile unsigned int MCS1_CH5_IRQ:1;
    volatile unsigned int MCS1_CH6_IRQ:1;
    volatile unsigned int MCS1_CH7_IRQ:1;
    volatile unsigned int MCS2_CH0_IRQ:1;
    volatile unsigned int MCS2_CH1_IRQ:1;
    volatile unsigned int MCS2_CH2_IRQ:1;
    volatile unsigned int MCS2_CH3_IRQ:1;
    volatile unsigned int MCS2_CH4_IRQ:1;
    volatile unsigned int MCS2_CH5_IRQ:1;
    volatile unsigned int MCS2_CH6_IRQ:1;
    volatile unsigned int MCS2_CH7_IRQ:1;
    volatile unsigned int MCS3_CH0_IRQ:1;
    volatile unsigned int MCS3_CH1_IRQ:1;
    volatile unsigned int MCS3_CH2_IRQ:1;
    volatile unsigned int MCS3_CH3_IRQ:1;
    volatile unsigned int MCS3_CH4_IRQ:1;
    volatile unsigned int MCS3_CH5_IRQ:1;
    volatile unsigned int MCS3_CH6_IRQ:1;
    volatile unsigned int MCS3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R4_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R5_Bits
{
    volatile unsigned int MCS4_CH0_IRQ:1;
    volatile unsigned int MCS4_CH1_IRQ:1;
    volatile unsigned int MCS4_CH2_IRQ:1;
    volatile unsigned int MCS4_CH3_IRQ:1;
    volatile unsigned int MCS4_CH4_IRQ:1;
    volatile unsigned int MCS4_CH5_IRQ:1;
    volatile unsigned int MCS4_CH6_IRQ:1;
    volatile unsigned int MCS4_CH7_IRQ:1;
    volatile unsigned int MCS5_CH0_IRQ:1;
    volatile unsigned int MCS5_CH1_IRQ:1;
    volatile unsigned int MCS5_CH2_IRQ:1;
    volatile unsigned int MCS5_CH3_IRQ:1;
    volatile unsigned int MCS5_CH4_IRQ:1;
    volatile unsigned int MCS5_CH5_IRQ:1;
    volatile unsigned int MCS5_CH6_IRQ:1;
    volatile unsigned int MCS5_CH7_IRQ:1;
    volatile unsigned int MCS6_CH0_IRQ:1;
    volatile unsigned int MCS6_CH1_IRQ:1;
    volatile unsigned int MCS6_CH2_IRQ:1;
    volatile unsigned int MCS6_CH3_IRQ:1;
    volatile unsigned int MCS6_CH4_IRQ:1;
    volatile unsigned int MCS6_CH5_IRQ:1;
    volatile unsigned int MCS6_CH6_IRQ:1;
    volatile unsigned int MCS6_CH7_IRQ:1;
    volatile unsigned int MCS7_CH0_IRQ:1;
    volatile unsigned int MCS7_CH1_IRQ:1;
    volatile unsigned int MCS7_CH2_IRQ:1;
    volatile unsigned int MCS7_CH3_IRQ:1;
    volatile unsigned int MCS7_CH4_IRQ:1;
    volatile unsigned int MCS7_CH5_IRQ:1;
    volatile unsigned int MCS7_CH6_IRQ:1;
    volatile unsigned int MCS7_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R5_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R6_Bits
{
    volatile unsigned int TOM0_CH0_IRQ:1;
    volatile unsigned int TOM0_CH1_IRQ:1;
    volatile unsigned int TOM0_CH2_IRQ:1;
    volatile unsigned int TOM0_CH3_IRQ:1;
    volatile unsigned int TOM0_CH4_IRQ:1;
    volatile unsigned int TOM0_CH5_IRQ:1;
    volatile unsigned int TOM0_CH6_IRQ:1;
    volatile unsigned int TOM0_CH7_IRQ:1;
    volatile unsigned int TOM0_CH8_IRQ:1;
    volatile unsigned int TOM0_CH9_IRQ:1;
    volatile unsigned int TOM0_CH10_IRQ:1;
    volatile unsigned int TOM0_CH11_IRQ:1;
    volatile unsigned int TOM0_CH12_IRQ:1;
    volatile unsigned int TOM0_CH13_IRQ:1;
    volatile unsigned int TOM0_CH14_IRQ:1;
    volatile unsigned int TOM0_CH15_IRQ:1;
    volatile unsigned int TOM1_CH0_IRQ:1;
    volatile unsigned int TOM1_CH1_IRQ:1;
    volatile unsigned int TOM1_CH2_IRQ:1;
    volatile unsigned int TOM1_CH3_IRQ:1;
    volatile unsigned int TOM1_CH4_IRQ:1;
    volatile unsigned int TOM1_CH5_IRQ:1;
    volatile unsigned int TOM1_CH6_IRQ:1;
    volatile unsigned int TOM1_CH7_IRQ:1;
    volatile unsigned int TOM1_CH8_IRQ:1;
    volatile unsigned int TOM1_CH9_IRQ:1;
    volatile unsigned int TOM1_CH10_IRQ:1;
    volatile unsigned int TOM1_CH11_IRQ:1;
    volatile unsigned int TOM1_CH12_IRQ:1;
    volatile unsigned int TOM1_CH13_IRQ:1;
    volatile unsigned int TOM1_CH14_IRQ:1;
    volatile unsigned int TOM1_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_R6_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R7_Bits
{
    volatile unsigned int TOM2_CH0_IRQ:1;
    volatile unsigned int TOM2_CH1_IRQ:1;
    volatile unsigned int TOM2_CH2_IRQ:1;
    volatile unsigned int TOM2_CH3_IRQ:1;
    volatile unsigned int TOM2_CH4_IRQ:1;
    volatile unsigned int TOM2_CH5_IRQ:1;
    volatile unsigned int TOM2_CH6_IRQ:1;
    volatile unsigned int TOM2_CH7_IRQ:1;
    volatile unsigned int TOM2_CH8_IRQ:1;
    volatile unsigned int TOM2_CH9_IRQ:1;
    volatile unsigned int TOM2_CH10_IRQ:1;
    volatile unsigned int TOM2_CH11_IRQ:1;
    volatile unsigned int TOM2_CH12_IRQ:1;
    volatile unsigned int TOM2_CH13_IRQ:1;
    volatile unsigned int TOM2_CH14_IRQ:1;
    volatile unsigned int TOM2_CH15_IRQ:1;
    volatile unsigned int TOM3_CH0_IRQ:1;
    volatile unsigned int TOM3_CH1_IRQ:1;
    volatile unsigned int TOM3_CH2_IRQ:1;
    volatile unsigned int TOM3_CH3_IRQ:1;
    volatile unsigned int TOM3_CH4_IRQ:1;
    volatile unsigned int TOM3_CH5_IRQ:1;
    volatile unsigned int TOM3_CH6_IRQ:1;
    volatile unsigned int TOM3_CH7_IRQ:1;
    volatile unsigned int TOM3_CH8_IRQ:1;
    volatile unsigned int TOM3_CH9_IRQ:1;
    volatile unsigned int TOM3_CH10_IRQ:1;
    volatile unsigned int TOM3_CH11_IRQ:1;
    volatile unsigned int TOM3_CH12_IRQ:1;
    volatile unsigned int TOM3_CH13_IRQ:1;
    volatile unsigned int TOM3_CH14_IRQ:1;
    volatile unsigned int TOM3_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_R7_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R8_Bits
{
    volatile unsigned int TOM4_CH0_IRQ:1;
    volatile unsigned int TOM4_CH1_IRQ:1;
    volatile unsigned int TOM4_CH2_IRQ:1;
    volatile unsigned int TOM4_CH3_IRQ:1;
    volatile unsigned int TOM4_CH4_IRQ:1;
    volatile unsigned int TOM4_CH5_IRQ:1;
    volatile unsigned int TOM4_CH6_IRQ:1;
    volatile unsigned int TOM4_CH7_IRQ:1;
    volatile unsigned int TOM4_CH8_IRQ:1;
    volatile unsigned int TOM4_CH9_IRQ:1;
    volatile unsigned int TOM4_CH10_IRQ:1;
    volatile unsigned int TOM4_CH11_IRQ:1;
    volatile unsigned int TOM4_CH12_IRQ:1;
    volatile unsigned int TOM4_CH13_IRQ:1;
    volatile unsigned int TOM4_CH14_IRQ:1;
    volatile unsigned int TOM4_CH15_IRQ:1;
    volatile unsigned int TOM5_CH0_IRQ:1;
    volatile unsigned int TOM5_CH1_IRQ:1;
    volatile unsigned int TOM5_CH2_IRQ:1;
    volatile unsigned int TOM5_CH3_IRQ:1;
    volatile unsigned int TOM5_CH4_IRQ:1;
    volatile unsigned int TOM5_CH5_IRQ:1;
    volatile unsigned int TOM5_CH6_IRQ:1;
    volatile unsigned int TOM5_CH7_IRQ:1;
    volatile unsigned int TOM5_CH8_IRQ:1;
    volatile unsigned int TOM5_CH9_IRQ:1;
    volatile unsigned int TOM5_CH10_IRQ:1;
    volatile unsigned int TOM5_CH11_IRQ:1;
    volatile unsigned int TOM5_CH12_IRQ:1;
    volatile unsigned int TOM5_CH13_IRQ:1;
    volatile unsigned int TOM5_CH14_IRQ:1;
    volatile unsigned int TOM5_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_R8_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R9_Bits
{
    volatile unsigned int ATOM0_CH0_IRQ:1;
    volatile unsigned int ATOM0_CH1_IRQ:1;
    volatile unsigned int ATOM0_CH2_IRQ:1;
    volatile unsigned int ATOM0_CH3_IRQ:1;
    volatile unsigned int ATOM0_CH4_IRQ:1;
    volatile unsigned int ATOM0_CH5_IRQ:1;
    volatile unsigned int ATOM0_CH6_IRQ:1;
    volatile unsigned int ATOM0_CH7_IRQ:1;
    volatile unsigned int ATOM1_CH0_IRQ:1;
    volatile unsigned int ATOM1_CH1_IRQ:1;
    volatile unsigned int ATOM1_CH2_IRQ:1;
    volatile unsigned int ATOM1_CH3_IRQ:1;
    volatile unsigned int ATOM1_CH4_IRQ:1;
    volatile unsigned int ATOM1_CH5_IRQ:1;
    volatile unsigned int ATOM1_CH6_IRQ:1;
    volatile unsigned int ATOM1_CH7_IRQ:1;
    volatile unsigned int ATOM2_CH0_IRQ:1;
    volatile unsigned int ATOM2_CH1_IRQ:1;
    volatile unsigned int ATOM2_CH2_IRQ:1;
    volatile unsigned int ATOM2_CH3_IRQ:1;
    volatile unsigned int ATOM2_CH4_IRQ:1;
    volatile unsigned int ATOM2_CH5_IRQ:1;
    volatile unsigned int ATOM2_CH6_IRQ:1;
    volatile unsigned int ATOM2_CH7_IRQ:1;
    volatile unsigned int ATOM3_CH0_IRQ:1;
    volatile unsigned int ATOM3_CH1_IRQ:1;
    volatile unsigned int ATOM3_CH2_IRQ:1;
    volatile unsigned int ATOM3_CH3_IRQ:1;
    volatile unsigned int ATOM3_CH4_IRQ:1;
    volatile unsigned int ATOM3_CH5_IRQ:1;
    volatile unsigned int ATOM3_CH6_IRQ:1;
    volatile unsigned int ATOM3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R9_Bits;


typedef struct _Ifx_GTM_INTOUT_Bits
{
    Ifx_UReg_32Bit INT0:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_GTM_INTOUT_Bits;


typedef struct _Ifx_GTM_IRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_IRQ_EN:1;
    volatile unsigned int AEI_USP_ADDR_IRQ_EN:1;
    volatile unsigned int AEI_IM_ADDR_IRQ_EN:1;
    volatile unsigned int AEI_USP_BE_IRQ_EN:1;
    volatile unsigned int AEIM_USP_ADDR_IRQ_EN:1;
    volatile unsigned int AEIM_IM_ADDR_IRQ_EN:1;
    volatile unsigned int AEIM_USP_BE_IRQ_EN:1;
    volatile unsigned int CLK_EN_ERR_IRQ_EN:1;
    volatile unsigned int CLK_PER_ERR_IRQ_EN:1;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_IRQ_EN_Bits;


typedef struct _Ifx_GTM_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_AEI_TO_XPT:1;
    volatile unsigned int TRG_AEI_USP_ADDR:1;
    volatile unsigned int TRG_AEI_IM_ADDR:1;
    volatile unsigned int TRG_AEI_USP_BE:1;
    volatile unsigned int TRG_AEIM_USP_ADDR:1;
    volatile unsigned int TRG_AEIM_IM_ADDR:1;
    volatile unsigned int TRG_AEIM_USP_BE:1;
    volatile unsigned int TRG_CLK_EN_ERR:1;
    volatile unsigned int TRG_CLK_PER_ERR:1;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_IRQ_NOTIFY_Bits
{
    volatile unsigned int AEI_TO_XPT:1;
    volatile unsigned int AEI_USP_ADDR:1;
    volatile unsigned int AEI_IM_ADDR:1;
    volatile unsigned int AEI_USP_BE:1;
    volatile unsigned int AEIM_USP_ADDR:1;
    volatile unsigned int AEIM_IM_ADDR:1;
    volatile unsigned int AEIM_USP_BE:1;
    volatile unsigned int CLK_EN_ERR:1;
    volatile unsigned int CLK_PER_ERR:1;
    volatile unsigned int reserved_9:15;
    volatile unsigned int CLK_EN_ERR_STATE0:1;
    volatile unsigned int CLK_EN_ERR_STATE1:1;
    volatile unsigned int reserved_26:2;
    volatile unsigned int CLK_EN_EXP_STATE0:1;
    volatile unsigned int CLK_EN_EXP_STATE1:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_LCDCDCOUTSEL_Bits
{
    Ifx_UReg_32Bit SEL:4;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_GTM_LCDCDCOUTSEL_Bits;


typedef struct _Ifx_GTM_MAP_CTRL_Bits
{
    volatile unsigned int TSEL:1;
    volatile unsigned int SSL:3;
    volatile unsigned int LSEL:1;
    volatile unsigned int reserved_5:11;
    volatile unsigned int TSPP0_EN:1;
    volatile unsigned int TSPP0_DLD:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int TSPP0_I0V:1;
    volatile unsigned int TSPP0_I1V:1;
    volatile unsigned int TSPP0_I2V:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int TSPP1_EN:1;
    volatile unsigned int TSPP1_DLD:1;
    volatile unsigned int reserved_26:2;
    volatile unsigned int TSPP1_I0V:1;
    volatile unsigned int TSPP1_I1V:1;
    volatile unsigned int TSPP1_I2V:1;
    volatile unsigned int reserved_31:1;
} Ifx_GTM_MAP_CTRL_Bits;


typedef struct _Ifx_GTM_MCFG_CTRL_Bits
{
    volatile unsigned int MEM0:2;
    volatile unsigned int MEM1:2;
    volatile unsigned int MEM2:2;
    volatile unsigned int MEM3:2;
    volatile unsigned int MEM4:2;
    volatile unsigned int MEM5:2;
    volatile unsigned int MEM6:2;
    volatile unsigned int reserved_14:2;
    volatile unsigned int reserved_16:2;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_MCFG_CTRL_Bits;


typedef struct _Ifx_GTM_MCSINTCLR_Bits
{
    Ifx_UReg_32Bit MCS0:1;
    Ifx_UReg_32Bit MCS1:1;
    Ifx_UReg_32Bit MCS2:1;
    Ifx_UReg_32Bit MCS3:1;
    Ifx_UReg_32Bit MCS4:1;
    Ifx_UReg_32Bit MCS5:1;
    Ifx_UReg_32Bit MCS6:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_GTM_MCSINTCLR_Bits;


typedef struct _Ifx_GTM_MCSINTSTAT_Bits
{
    Ifx_UReg_32Bit MCS00:1;
    Ifx_UReg_32Bit MCS10:1;
    Ifx_UReg_32Bit MCS20:1;
    Ifx_UReg_32Bit MCS30:1;
    Ifx_UReg_32Bit MCS40:1;
    Ifx_UReg_32Bit MCS50:1;
    Ifx_UReg_32Bit MCS60:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_GTM_MCSINTSTAT_Bits;


typedef struct _Ifx_GTM_MCSTRIGOUTSEL_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit reserved_16:4;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_GTM_MCSTRIGOUTSEL_Bits;


typedef struct _Ifx_GTM_MCS_AEM_DIS_Bits
{
    volatile unsigned int DIS_CLS0:2;
    volatile unsigned int DIS_CLS1:2;
    volatile unsigned int DIS_CLS2:2;
    volatile unsigned int DIS_CLS3:2;
    volatile unsigned int DIS_CLS4:2;
    volatile unsigned int DIS_CLS5:2;
    volatile unsigned int DIS_CLS6:2;
    volatile unsigned int DIS_CLS7:2;
    volatile unsigned int DIS_CLS8:2;
    volatile unsigned int DIS_CLS9:2;
    volatile unsigned int DIS_CLS10:2;
    volatile unsigned int DIS_CLS11:2;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_AEM_DIS_Bits;


typedef struct _Ifx_GTM_MCS_CAT_Bits
{
    volatile unsigned int CAT0:1;
    volatile unsigned int CAT1:1;
    volatile unsigned int CAT2:1;
    volatile unsigned int CAT3:1;
    volatile unsigned int CAT4:1;
    volatile unsigned int CAT5:1;
    volatile unsigned int CAT6:1;
    volatile unsigned int CAT7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_CAT_Bits;


typedef struct _Ifx_GTM_MCS_CH_ACB_Bits
{
    volatile unsigned int ACB0:1;
    volatile unsigned int ACB1:1;
    volatile unsigned int ACB2:1;
    volatile unsigned int ACB3:1;
    volatile unsigned int ACB4:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_MCS_CH_ACB_Bits;


typedef struct _Ifx_GTM_MCS_CH_CTRG_Bits
{
    volatile unsigned int TRG0:1;
    volatile unsigned int TRG1:1;
    volatile unsigned int TRG2:1;
    volatile unsigned int TRG3:1;
    volatile unsigned int TRG4:1;
    volatile unsigned int TRG5:1;
    volatile unsigned int TRG6:1;
    volatile unsigned int TRG7:1;
    volatile unsigned int TRG8:1;
    volatile unsigned int TRG9:1;
    volatile unsigned int TRG10:1;
    volatile unsigned int TRG11:1;
    volatile unsigned int TRG12:1;
    volatile unsigned int TRG13:1;
    volatile unsigned int TRG14:1;
    volatile unsigned int TRG15:1;
    volatile unsigned int TRG16:1;
    volatile unsigned int TRG17:1;
    volatile unsigned int TRG18:1;
    volatile unsigned int TRG19:1;
    volatile unsigned int TRG20:1;
    volatile unsigned int TRG21:1;
    volatile unsigned int TRG22:1;
    volatile unsigned int TRG23:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_CTRG_Bits;


typedef struct _Ifx_GTM_MCS_CH_CTRL_Bits
{
    volatile unsigned int EN:1;
    volatile unsigned int IRQ:1;
    volatile unsigned int ERR:1;
    volatile unsigned int reserved_3:1;
    volatile unsigned int CY:1;
    volatile unsigned int Z:1;
    volatile unsigned int V:1;
    volatile unsigned int N:1;
    volatile unsigned int CAT:1;
    volatile unsigned int CWT:1;
    volatile unsigned int SAT:1;
    volatile unsigned int reserved_11:5;
    volatile unsigned int SP_CNT:3;
    volatile unsigned int reserved_19:13;
} Ifx_GTM_MCS_CH_CTRL_Bits;


typedef struct _Ifx_GTM_MCS_CH_EIRQ_EN_Bits
{
    volatile unsigned int MCS_EIRQ_EN0:1;
    volatile unsigned int STK_ERR_EIRQ_EN:1;
    volatile unsigned int ERR_EIRQ_EN:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_EN_Bits
{
    volatile unsigned int MCS_IRQ_EN:1;
    volatile unsigned int STK_ERR_IRQ_EN:1;
    volatile unsigned int ERR_IRQ_EN:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_MCS_IRQ:1;
    volatile unsigned int TRG_STK_ERR_IRQ:1;
    volatile unsigned int TRG_ERR_IRQ:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_MCS_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int MCS_IRQ:1;
    volatile unsigned int STK_ERR_IRQ:1;
    volatile unsigned int ERR_IRQ:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_MCS_CH_MHB_Bits
{
    volatile unsigned int DATA:8;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_CH_MHB_Bits;


typedef struct _Ifx_GTM_MCS_CH_PC_Bits
{
    volatile unsigned int PC:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_MCS_CH_PC_Bits;


typedef struct _Ifx_GTM_MCS_CH_R_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R_Bits;


typedef struct _Ifx_GTM_MCS_CH_STRG_Bits
{
    volatile unsigned int TRG0:1;
    volatile unsigned int TRG1:1;
    volatile unsigned int TRG2:1;
    volatile unsigned int TRG3:1;
    volatile unsigned int TRG4:1;
    volatile unsigned int TRG5:1;
    volatile unsigned int TRG6:1;
    volatile unsigned int TRG7:1;
    volatile unsigned int TRG8:1;
    volatile unsigned int TRG9:1;
    volatile unsigned int TRG10:1;
    volatile unsigned int TRG11:1;
    volatile unsigned int TRG12:1;
    volatile unsigned int TRG13:1;
    volatile unsigned int TRG14:1;
    volatile unsigned int TRG15:1;
    volatile unsigned int TRG16:1;
    volatile unsigned int TRG17:1;
    volatile unsigned int TRG18:1;
    volatile unsigned int TRG19:1;
    volatile unsigned int TRG20:1;
    volatile unsigned int TRG21:1;
    volatile unsigned int TRG22:1;
    volatile unsigned int TRG23:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_STRG_Bits;


typedef struct _Ifx_GTM_MCS_CTRL_STAT_Bits
{
    volatile unsigned int SCD_MODE:2;
    volatile unsigned int reserved_2:6;
    volatile unsigned int SCD_CH:4;
    volatile unsigned int reserved_12:4;
    volatile unsigned int RAM_RST:1;
    volatile unsigned int HLT_SP_OFL:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int ERR_SRC_ID:3;
    volatile unsigned int reserved_23:1;
    volatile unsigned int EN_TIM_FOUT:1;
    volatile unsigned int EN_XOREG:1;
    volatile unsigned int HLT_AEIM_ERR:1;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_MCS_CTRL_STAT_Bits;


typedef struct _Ifx_GTM_MCS_CWT_Bits
{
    volatile unsigned int CWT0:1;
    volatile unsigned int CWT1:1;
    volatile unsigned int CWT2:1;
    volatile unsigned int CWT3:1;
    volatile unsigned int CWT4:1;
    volatile unsigned int CWT5:1;
    volatile unsigned int CWT6:1;
    volatile unsigned int CWT7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_CWT_Bits;


typedef struct _Ifx_GTM_MCS_ERR_Bits
{
    volatile unsigned int ERR0:1;
    volatile unsigned int ERR1:1;
    volatile unsigned int ERR2:1;
    volatile unsigned int ERR3:1;
    volatile unsigned int ERR4:1;
    volatile unsigned int ERR5:1;
    volatile unsigned int ERR6:1;
    volatile unsigned int ERR7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_ERR_Bits;


typedef struct _Ifx_GTM_MCS_REG_PROT_Bits
{
    volatile unsigned int WPROT0:2;
    volatile unsigned int WPROT1:2;
    volatile unsigned int WPROT2:2;
    volatile unsigned int WPROT3:2;
    volatile unsigned int WPROT4:2;
    volatile unsigned int WPROT5:2;
    volatile unsigned int WPROT6:2;
    volatile unsigned int WPROT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_MCS_REG_PROT_Bits;


typedef struct _Ifx_GTM_MCS_RESET_Bits
{
    volatile unsigned int RST0:1;
    volatile unsigned int RST1:1;
    volatile unsigned int RST2:1;
    volatile unsigned int RST3:1;
    volatile unsigned int RST4:1;
    volatile unsigned int RST5:1;
    volatile unsigned int RST6:1;
    volatile unsigned int RST7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_RESET_Bits;


typedef struct _Ifx_GTM_MON_ACTIVITY_MCS_Bits
{
    volatile unsigned int MCA_0:1;
    volatile unsigned int MCA_1:1;
    volatile unsigned int MCA_2:1;
    volatile unsigned int MCA_3:1;
    volatile unsigned int MCA_4:1;
    volatile unsigned int MCA_5:1;
    volatile unsigned int MCA_6:1;
    volatile unsigned int MCA_7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MON_ACTIVITY_MCS_Bits;


typedef struct _Ifx_GTM_MON_ACTIVITY_R0_Bits
{
    volatile unsigned int MCA_0_0:1;
    volatile unsigned int MCA_0_1:1;
    volatile unsigned int MCA_0_2:1;
    volatile unsigned int MCA_0_3:1;
    volatile unsigned int MCA_0_4:1;
    volatile unsigned int MCA_0_5:1;
    volatile unsigned int MCA_0_6:1;
    volatile unsigned int MCA_0_7:1;
    volatile unsigned int MCA_1_0:1;
    volatile unsigned int MCA_1_1:1;
    volatile unsigned int MCA_1_2:1;
    volatile unsigned int MCA_1_3:1;
    volatile unsigned int MCA_1_4:1;
    volatile unsigned int MCA_1_5:1;
    volatile unsigned int MCA_1_6:1;
    volatile unsigned int MCA_1_7:1;
    volatile unsigned int MCA_2_0:1;
    volatile unsigned int MCA_2_1:1;
    volatile unsigned int MCA_2_2:1;
    volatile unsigned int MCA_2_3:1;
    volatile unsigned int MCA_2_4:1;
    volatile unsigned int MCA_2_5:1;
    volatile unsigned int MCA_2_6:1;
    volatile unsigned int MCA_2_7:1;
    volatile unsigned int MCA_3_0:1;
    volatile unsigned int MCA_3_1:1;
    volatile unsigned int MCA_3_2:1;
    volatile unsigned int MCA_3_3:1;
    volatile unsigned int MCA_3_4:1;
    volatile unsigned int MCA_3_5:1;
    volatile unsigned int MCA_3_6:1;
    volatile unsigned int MCA_3_7:1;
} Ifx_GTM_MON_ACTIVITY_R0_Bits;


typedef struct _Ifx_GTM_MON_ACTIVITY_R1_Bits
{
    volatile unsigned int MCA_4_0:1;
    volatile unsigned int MCA_4_1:1;
    volatile unsigned int MCA_4_2:1;
    volatile unsigned int MCA_4_3:1;
    volatile unsigned int MCA_4_4:1;
    volatile unsigned int MCA_4_5:1;
    volatile unsigned int MCA_4_6:1;
    volatile unsigned int MCA_4_7:1;
    volatile unsigned int MCA_5_0:1;
    volatile unsigned int MCA_5_1:1;
    volatile unsigned int MCA_5_2:1;
    volatile unsigned int MCA_5_3:1;
    volatile unsigned int MCA_5_4:1;
    volatile unsigned int MCA_5_5:1;
    volatile unsigned int MCA_5_6:1;
    volatile unsigned int MCA_5_7:1;
    volatile unsigned int MCA_6_0:1;
    volatile unsigned int MCA_6_1:1;
    volatile unsigned int MCA_6_2:1;
    volatile unsigned int MCA_6_3:1;
    volatile unsigned int MCA_6_4:1;
    volatile unsigned int MCA_6_5:1;
    volatile unsigned int MCA_6_6:1;
    volatile unsigned int MCA_6_7:1;
    volatile unsigned int MCA_7_0:1;
    volatile unsigned int MCA_7_1:1;
    volatile unsigned int MCA_7_2:1;
    volatile unsigned int MCA_7_3:1;
    volatile unsigned int MCA_7_4:1;
    volatile unsigned int MCA_7_5:1;
    volatile unsigned int MCA_7_6:1;
    volatile unsigned int MCA_7_7:1;
} Ifx_GTM_MON_ACTIVITY_R1_Bits;


typedef struct _Ifx_GTM_MON_STATUS_Bits
{
    volatile unsigned int ACT_CMU0:1;
    volatile unsigned int ACT_CMU1:1;
    volatile unsigned int ACT_CMU2:1;
    volatile unsigned int ACT_CMU3:1;
    volatile unsigned int ACT_CMU4:1;
    volatile unsigned int ACT_CMU5:1;
    volatile unsigned int ACT_CMU6:1;
    volatile unsigned int ACT_CMU7:1;
    volatile unsigned int ACT_CMUFX0:1;
    volatile unsigned int ACT_CMUFX1:1;
    volatile unsigned int ACT_CMUFX2:1;
    volatile unsigned int ACT_CMUFX3:1;
    volatile unsigned int ACT_CMUFX4:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int ACT_CMU8:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int CMP_ERR:1;
    volatile unsigned int reserved_17:3;
    volatile unsigned int MCS0_ERR:1;
    volatile unsigned int MCS1_ERR:1;
    volatile unsigned int MCS2_ERR:1;
    volatile unsigned int MCS3_ERR:1;
    volatile unsigned int MCS4_ERR:1;
    volatile unsigned int MCS5_ERR:1;
    volatile unsigned int MCS6_ERR:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_MON_STATUS_Bits;


typedef struct _Ifx_GTM_MSC_MSCQ_INHCON_Bits
{
    Ifx_UReg_32Bit SEL0:2;
    Ifx_UReg_32Bit SEL1:2;
    Ifx_UReg_32Bit SEL2:2;
    Ifx_UReg_32Bit SEL3:2;
    Ifx_UReg_32Bit SEL4:2;
    Ifx_UReg_32Bit SEL5:2;
    Ifx_UReg_32Bit SEL6:2;
    Ifx_UReg_32Bit SEL7:2;
    Ifx_UReg_32Bit SEL8:2;
    Ifx_UReg_32Bit SEL9:2;
    Ifx_UReg_32Bit SEL10:2;
    Ifx_UReg_32Bit SEL11:2;
    Ifx_UReg_32Bit SEL12:2;
    Ifx_UReg_32Bit SEL13:2;
    Ifx_UReg_32Bit SEL14:2;
    Ifx_UReg_32Bit SEL15:2;
} Ifx_GTM_MSC_MSCQ_INHCON_Bits;


typedef struct _Ifx_GTM_MSC_MSCQ_INLCON_Bits
{
    Ifx_UReg_32Bit SEL0:2;
    Ifx_UReg_32Bit SEL1:2;
    Ifx_UReg_32Bit SEL2:2;
    Ifx_UReg_32Bit SEL3:2;
    Ifx_UReg_32Bit SEL4:2;
    Ifx_UReg_32Bit SEL5:2;
    Ifx_UReg_32Bit SEL6:2;
    Ifx_UReg_32Bit SEL7:2;
    Ifx_UReg_32Bit SEL8:2;
    Ifx_UReg_32Bit SEL9:2;
    Ifx_UReg_32Bit SEL10:2;
    Ifx_UReg_32Bit SEL11:2;
    Ifx_UReg_32Bit SEL12:2;
    Ifx_UReg_32Bit SEL13:2;
    Ifx_UReg_32Bit SEL14:2;
    Ifx_UReg_32Bit SEL15:2;
} Ifx_GTM_MSC_MSCQ_INLCON_Bits;


typedef struct _Ifx_GTM_MSC_MSCQ_INLEXTCON_Bits
{
    Ifx_UReg_32Bit SEL0:2;
    Ifx_UReg_32Bit SEL1:2;
    Ifx_UReg_32Bit SEL2:2;
    Ifx_UReg_32Bit SEL3:2;
    Ifx_UReg_32Bit SEL4:2;
    Ifx_UReg_32Bit SEL5:2;
    Ifx_UReg_32Bit SEL6:2;
    Ifx_UReg_32Bit SEL7:2;
    Ifx_UReg_32Bit SEL8:2;
    Ifx_UReg_32Bit SEL9:2;
    Ifx_UReg_32Bit SEL10:2;
    Ifx_UReg_32Bit SEL11:2;
    Ifx_UReg_32Bit SEL12:2;
    Ifx_UReg_32Bit SEL13:2;
    Ifx_UReg_32Bit SEL14:2;
    Ifx_UReg_32Bit SEL15:2;
} Ifx_GTM_MSC_MSCQ_INLEXTCON_Bits;


typedef struct _Ifx_GTM_MSC_SET_CON0_Bits
{
    Ifx_UReg_32Bit SEL0:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit SEL1:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SEL2:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SEL3:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_MSC_SET_CON0_Bits;


typedef struct _Ifx_GTM_MSC_SET_CON1_Bits
{
    Ifx_UReg_32Bit SEL4:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit SEL5:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SEL6:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SEL7:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_MSC_SET_CON1_Bits;


typedef struct _Ifx_GTM_MSC_SET_CON2_Bits
{
    Ifx_UReg_32Bit SEL8:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit SEL9:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SEL10:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SEL11:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_MSC_SET_CON2_Bits;


typedef struct _Ifx_GTM_MSC_SET_CON3_Bits
{
    Ifx_UReg_32Bit SEL12:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit SEL13:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SEL14:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SEL15:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_MSC_SET_CON3_Bits;


typedef struct _Ifx_GTM_OCDS_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:24;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_GTM_OCDS_OCS_Bits;


typedef struct _Ifx_GTM_OCDS_ODA_Bits
{
    Ifx_UReg_32Bit DRAC:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_GTM_OCDS_ODA_Bits;


typedef struct _Ifx_GTM_OCDS_OTBU0T_Bits
{
    Ifx_UReg_32Bit CV:27;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit CM:2;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_GTM_OCDS_OTBU0T_Bits;


typedef struct _Ifx_GTM_OCDS_OTBU1T_Bits
{
    Ifx_UReg_32Bit CV:24;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_OCDS_OTBU1T_Bits;


typedef struct _Ifx_GTM_OCDS_OTBU2T_Bits
{
    Ifx_UReg_32Bit CV:24;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_OCDS_OTBU2T_Bits;


typedef struct _Ifx_GTM_OCDS_OTBU3T_Bits
{
    Ifx_UReg_32Bit CV:24;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_OCDS_OTBU3T_Bits;


typedef struct _Ifx_GTM_OCDS_OTSC0_Bits
{
    Ifx_UReg_32Bit B0LMT:3;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit B0LMI:4;
    Ifx_UReg_32Bit B0HMT:3;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit B0HMI:4;
    Ifx_UReg_32Bit B1LMT:3;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit B1LMI:4;
    Ifx_UReg_32Bit B1HMT:3;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit B1HMI:4;
} Ifx_GTM_OCDS_OTSC0_Bits;


typedef struct _Ifx_GTM_OCDS_OTSC1_Bits
{
    Ifx_UReg_32Bit MCS:4;
    Ifx_UReg_32Bit MI:4;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit MOE:1;
    Ifx_UReg_32Bit reserved_10:22;
} Ifx_GTM_OCDS_OTSC1_Bits;


typedef struct _Ifx_GTM_OCDS_OTSS_Bits
{
    Ifx_UReg_32Bit OTGB0:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit OTGB1:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit OTGBM0:4;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit OTGBM1:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_GTM_OCDS_OTSS_Bits;


typedef struct _Ifx_GTM_OUT_ATOM_Bits
{
    volatile unsigned int ATOM_I_OUT:8;
    volatile unsigned int ATOM_I_OUT_N:8;
    volatile unsigned int ATOM_IP1_OUT:8;
    volatile unsigned int ATOM_IP1_OUT_N:8;
} Ifx_GTM_OUT_ATOM_Bits;


typedef struct _Ifx_GTM_OUT_TOM_Bits
{
    volatile unsigned int TOM_OUT:16;
    volatile unsigned int TOM_OUT_N:16;
} Ifx_GTM_OUT_TOM_Bits;


typedef struct _Ifx_GTM_PSI5OUTSEL_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_GTM_PSI5OUTSEL_Bits;


typedef struct _Ifx_GTM_PSI5SOUTSEL_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_PSI5SOUTSEL_Bits;


typedef struct _Ifx_GTM_PSM_AFD_CH_BUF_ACC_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_PSM_AFD_CH_BUF_ACC_Bits;


typedef struct _Ifx_GTM_PSM_F2A_ENABLE_Bits
{
    volatile unsigned int STR0_EN:2;
    volatile unsigned int STR1_EN:2;
    volatile unsigned int STR2_EN:2;
    volatile unsigned int STR3_EN:2;
    volatile unsigned int STR4_EN:2;
    volatile unsigned int STR5_EN:2;
    volatile unsigned int STR6_EN:2;
    volatile unsigned int STR7_EN:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_PSM_F2A_ENABLE_Bits;


typedef struct _Ifx_GTM_PSM_F2A_F2A_CTRL_Bits
{
    volatile unsigned int STR4_CONF:2;
    volatile unsigned int STR5_CONF:2;
    volatile unsigned int STR6_CONF:2;
    volatile unsigned int STR7_CONF:2;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_PSM_F2A_F2A_CTRL_Bits;


typedef struct _Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO_Bits;


typedef struct _Ifx_GTM_PSM_F2A_STR_CH_STR_CFG_Bits
{
    volatile unsigned int reserved_0:16;
    volatile unsigned int TMODE:2;
    volatile unsigned int DIR:1;
    volatile unsigned int reserved_19:13;
} Ifx_GTM_PSM_F2A_STR_CH_STR_CFG_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_CTRL_Bits
{
    volatile unsigned int RBM:1;
    volatile unsigned int RAP:1;
    volatile unsigned int FLUSH:1;
    volatile unsigned int WULOCK:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_CTRL_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_EIRQ_EN_Bits
{
    volatile unsigned int FIFO_EMPTY_EIRQ_EN:1;
    volatile unsigned int FIFO_FULL_EIRQ_EN:1;
    volatile unsigned int FIFO_LWM_EIRQ_EN:1;
    volatile unsigned int FIFO_UWM_EIRQ_EN:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_END_ADDR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_END_ADDR_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL_Bits
{
    volatile unsigned int LEVEL:11;
    volatile unsigned int reserved_11:21;
} Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_IRQ_EN_Bits
{
    volatile unsigned int FIFO_EMPTY_IRQ_EN:1;
    volatile unsigned int FIFO_FULL_IRQ_EN:1;
    volatile unsigned int FIFO_LWM_IRQ_EN:1;
    volatile unsigned int FIFO_UWM_IRQ_EN:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_FIFO_EMPTY:1;
    volatile unsigned int TRG_FIFO_FULL:1;
    volatile unsigned int TRG_FIFO_LWM:1;
    volatile unsigned int TRG_FIFO_UWM:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int DMA_HYSTERESIS:1;
    volatile unsigned int DMA_HYST_DIR:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int FIFO_EMPTY:1;
    volatile unsigned int FIFO_FULL:1;
    volatile unsigned int FIFO_LWM:1;
    volatile unsigned int FIFO_UWM:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_LOWER_WM_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_LOWER_WM_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_RD_PTR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_RD_PTR_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_START_ADDR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_START_ADDR_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_STATUS_Bits
{
    volatile unsigned int EMPTY:1;
    volatile unsigned int FULL:1;
    volatile unsigned int LOW_WM:1;
    volatile unsigned int UP_WM:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_STATUS_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_UPPER_WM_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_UPPER_WM_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_WR_PTR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_WR_PTR_Bits;


typedef struct _Ifx_GTM_RESET1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_GTM_RESET1_Bits;


typedef struct _Ifx_GTM_RESET2_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_GTM_RESET2_Bits;


typedef struct _Ifx_GTM_RESET_CLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_GTM_RESET_CLR_Bits;


typedef struct _Ifx_GTM_REV_Bits
{
    volatile unsigned int STEP:8;
    volatile unsigned int NO:4;
    volatile unsigned int MINOR:4;
    volatile unsigned int MAJOR:4;
    volatile unsigned int DEV_CODE0:4;
    volatile unsigned int DEV_CODE1:4;
    volatile unsigned int DEV_CODE2:4;
} Ifx_GTM_REV_Bits;


typedef struct _Ifx_GTM_RST_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int reserved_1:26;
    volatile unsigned int BRIDGE_MODE_WRDIS:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_RST_Bits;


typedef struct _Ifx_GTM_SPE_CMD_Bits
{
    volatile unsigned int SPE_CTRL_CMD:2;
    volatile unsigned int reserved_2:14;
    volatile unsigned int SPE_UPD_TRIG:1;
    volatile unsigned int reserved_17:15;
} Ifx_GTM_SPE_CMD_Bits;


typedef struct _Ifx_GTM_SPE_CTRL_STAT_Bits
{
    volatile unsigned int EN:1;
    volatile unsigned int SIE0:1;
    volatile unsigned int SIE1:1;
    volatile unsigned int SIE2:1;
    volatile unsigned int TRIG_SEL:2;
    volatile unsigned int TIM_SEL:1;
    volatile unsigned int FSOM:1;
    volatile unsigned int SPE_PAT_PTR:3;
    volatile unsigned int reserved_11:1;
    volatile unsigned int AIP:3;
    volatile unsigned int ADIR:1;
    volatile unsigned int PIP:3;
    volatile unsigned int PDIR:1;
    volatile unsigned int NIP:3;
    volatile unsigned int ETRIG_SEL:1;
    volatile unsigned int FSOL:8;
} Ifx_GTM_SPE_CTRL_STAT_Bits;


typedef struct _Ifx_GTM_SPE_CTRL_STAT2_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int SPE_PAT_PTR_BWD:3;
    volatile unsigned int reserved_11:21;
} Ifx_GTM_SPE_CTRL_STAT2_Bits;


typedef struct _Ifx_GTM_SPE_EIRQ_EN_Bits
{
    volatile unsigned int SPE_NIPD_EIRQ_EN:1;
    volatile unsigned int SPE_DCHG_EIRQ_EN:1;
    volatile unsigned int SPE_PERR_EIRQ_EN:1;
    volatile unsigned int SPE_BIS_EIRQ_EN:1;
    volatile unsigned int SPE_RCMP_EIRQ_EN:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_EN_Bits
{
    volatile unsigned int SPE_NIPD_IRQ_EN:1;
    volatile unsigned int SPE_DCHG_IRQ_EN:1;
    volatile unsigned int SPE_PERR_IRQ_EN:1;
    volatile unsigned int SPE_BIS_IRQ_EN:1;
    volatile unsigned int SPE_RCMP_IRQ_EN:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_IRQ_EN_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_SPE_NIPD:1;
    volatile unsigned int TRG_SPE_DCHG:1;
    volatile unsigned int TRG_SPE_PERR:1;
    volatile unsigned int TRG_SPE_BIS:1;
    volatile unsigned int TRG_SPE_RCMP:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_SPE_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_NOTIFY_Bits
{
    volatile unsigned int SPE_NIPD:1;
    volatile unsigned int SPE_DCHG:1;
    volatile unsigned int SPE_PERR:1;
    volatile unsigned int SPE_BIS:1;
    volatile unsigned int SPE_RCMP:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_SPE_OUT_CTRL_Bits
{
    volatile unsigned int SPE_OUT_CTRL:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_SPE_OUT_CTRL_Bits;


typedef struct _Ifx_GTM_SPE_OUT_PAT_Bits
{
    volatile unsigned int SPE_OUT_PAT:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_SPE_OUT_PAT_Bits;


typedef struct _Ifx_GTM_SPE_PAT_Bits
{
    volatile unsigned int IP0_VAL:1;
    volatile unsigned int IP0_PAT:3;
    volatile unsigned int IP1_VAL:1;
    volatile unsigned int IP1_PAT:3;
    volatile unsigned int IP2_VAL:1;
    volatile unsigned int IP2_PAT:3;
    volatile unsigned int IP3_VAL:1;
    volatile unsigned int IP3_PAT:3;
    volatile unsigned int IP4_VAL:1;
    volatile unsigned int IP4_PAT:3;
    volatile unsigned int IP5_VAL:1;
    volatile unsigned int IP5_PAT:3;
    volatile unsigned int IP6_VAL:1;
    volatile unsigned int IP6_PAT:3;
    volatile unsigned int IP7_VAL:1;
    volatile unsigned int IP7_PAT:3;
} Ifx_GTM_SPE_PAT_Bits;


typedef struct _Ifx_GTM_SPE_REV_CMP_Bits
{
    volatile unsigned int REV_CMP:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_SPE_REV_CMP_Bits;


typedef struct _Ifx_GTM_SPE_REV_CNT_Bits
{
    volatile unsigned int REV_CNT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_SPE_REV_CNT_Bits;


typedef struct _Ifx_GTM_TBU_CH0_BASE_Bits
{
    volatile unsigned int BASE:27;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_TBU_CH0_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH0_CTRL_Bits
{
    volatile unsigned int LOW_RES:1;
    volatile unsigned int CH_CLK_SRC:3;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_TBU_CH0_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH1_BASE_Bits
{
    volatile unsigned int BASE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH1_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH1_CTRL_Bits
{
    volatile unsigned int CH_MODE:1;
    volatile unsigned int CH_CLK_SRC:3;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_TBU_CH1_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH2_BASE_Bits
{
    volatile unsigned int BASE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH2_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH2_CTRL_Bits
{
    volatile unsigned int CH_MODE:1;
    volatile unsigned int CH_CLK_SRC:3;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_TBU_CH2_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH3_BASE_Bits
{
    volatile unsigned int BASE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH3_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH3_BASE_CAPTURE_Bits
{
    volatile unsigned int BASE_CAPTURE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH3_BASE_CAPTURE_Bits;


typedef struct _Ifx_GTM_TBU_CH3_BASE_MARK_Bits
{
    volatile unsigned int BASE_MARK:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH3_BASE_MARK_Bits;


typedef struct _Ifx_GTM_TBU_CH3_CTRL_Bits
{
    volatile unsigned int CH_MODE:1;
    volatile unsigned int reserved_1:3;
    volatile unsigned int USE_CH2:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_TBU_CH3_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CHEN_Bits
{
    volatile unsigned int ENDIS_CH0:2;
    volatile unsigned int ENDIS_CH1:2;
    volatile unsigned int ENDIS_CH2:2;
    volatile unsigned int ENDIS_CH3:2;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_TBU_CHEN_Bits;


typedef struct _Ifx_GTM_TIMINSEL_Bits
{
    Ifx_UReg_32Bit CH0SEL:4;
    Ifx_UReg_32Bit CH1SEL:4;
    Ifx_UReg_32Bit CH2SEL:4;
    Ifx_UReg_32Bit CH3SEL:4;
    Ifx_UReg_32Bit CH4SEL:4;
    Ifx_UReg_32Bit CH5SEL:4;
    Ifx_UReg_32Bit CH6SEL:4;
    Ifx_UReg_32Bit CH7SEL:4;
} Ifx_GTM_TIMINSEL_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNT_Bits
{
    volatile unsigned int CNT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_CNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNTS_Bits
{
    volatile unsigned int CNTS:24;
    volatile unsigned int ECNT:8;
} Ifx_GTM_TIM_CH_CNTS_Bits;


typedef struct _Ifx_GTM_TIM_CH_CTRL_Bits
{
    volatile unsigned int TIM_EN:1;
    volatile unsigned int TIM_MODE:3;
    volatile unsigned int OSM:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int CICTRL:1;
    volatile unsigned int TBU0_SEL:1;
    volatile unsigned int GPR0_SEL:2;
    volatile unsigned int GPR1_SEL:2;
    volatile unsigned int CNTS_SEL:1;
    volatile unsigned int DSL:1;
    volatile unsigned int ISL:1;
    volatile unsigned int ECNT_RESET:1;
    volatile unsigned int FLT_EN:1;
    volatile unsigned int FLT_CNT_FRQ:2;
    volatile unsigned int EXT_CAP_EN:1;
    volatile unsigned int FLT_MODE_RE:1;
    volatile unsigned int FLT_CTR_RE:1;
    volatile unsigned int FLT_MODE_FE:1;
    volatile unsigned int FLT_CTR_FE:1;
    volatile unsigned int CLK_SEL:3;
    volatile unsigned int FR_ECNT_OFL:1;
    volatile unsigned int EGPR0_SEL:1;
    volatile unsigned int EGPR1_SEL:1;
    volatile unsigned int TOCTRL:2;
} Ifx_GTM_TIM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECNT_Bits
{
    volatile unsigned int ECNT:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TIM_CH_ECNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECTRL_Bits
{
    volatile unsigned int EXT_CAP_SRC:4;
    volatile unsigned int reserved_4:1;
    volatile unsigned int USE_PREV_TDU_IN:1;
    volatile unsigned int TODET_IRQ_SRC:2;
    volatile unsigned int TDU_START:3;
    volatile unsigned int reserved_11:1;
    volatile unsigned int TDU_STOP:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int TDU_RESYNC:4;
    volatile unsigned int reserved_20:2;
    volatile unsigned int USE_LUT:2;
    volatile unsigned int EFLT_CTR_RE:1;
    volatile unsigned int EFLT_CTR_FE:1;
    volatile unsigned int reserved_26:2;
    volatile unsigned int SWAP_CAPTURE:1;
    volatile unsigned int IMM_START:1;
    volatile unsigned int ECLK_SEL:1;
    volatile unsigned int USE_PREV_CH_IN:1;
} Ifx_GTM_TIM_CH_ECTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_EIRQ_EN_Bits
{
    volatile unsigned int NEWVAL_EIRQ_EN:1;
    volatile unsigned int ECNTOFL_EIRQ_EN:1;
    volatile unsigned int CNTOFL_EIRQ_EN:1;
    volatile unsigned int GPROFL_EIRQ_EN:1;
    volatile unsigned int TODET_EIRQ_EN:1;
    volatile unsigned int GLITCHDET_EIRQ_EN:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_FE_Bits
{
    volatile unsigned int FLT_FE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_FLT_FE_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_RE_Bits
{
    volatile unsigned int FLT_RE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_FLT_RE_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR0_Bits
{
    volatile unsigned int GPR0:24;
    volatile unsigned int ECNT:8;
} Ifx_GTM_TIM_CH_GPR0_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR1_Bits
{
    volatile unsigned int GPR1:24;
    volatile unsigned int ECNT:8;
} Ifx_GTM_TIM_CH_GPR1_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_EN_Bits
{
    volatile unsigned int NEWVAL_IRQ_EN:1;
    volatile unsigned int ECNTOFL_IRQ_EN:1;
    volatile unsigned int CNTOFL_IRQ_EN:1;
    volatile unsigned int GPROFL_IRQ_EN:1;
    volatile unsigned int TODET_IRQ_EN:1;
    volatile unsigned int GLITCHDET_IRQ_EN:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEWVAL:1;
    volatile unsigned int TRG_ECNTOFL:1;
    volatile unsigned int TRG_CNTOFL:1;
    volatile unsigned int TRG_GPROFL:1;
    volatile unsigned int TRG_TODET:1;
    volatile unsigned int TRG_GLITCHDET:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TIM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEWVAL:1;
    volatile unsigned int ECNTOFL:1;
    volatile unsigned int CNTOFL:1;
    volatile unsigned int GPROFL:1;
    volatile unsigned int TODET:1;
    volatile unsigned int GLITCHDET:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUC_Bits
{
    volatile unsigned int TO_CNT:8;
    volatile unsigned int TO_CNT1:8;
    volatile unsigned int TO_CNT2:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_TDUC_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUV_Bits
{
    volatile unsigned int TOV:8;
    volatile unsigned int TOV1:8;
    volatile unsigned int TOV2:8;
    volatile unsigned int SLICING:2;
    volatile unsigned int TCS_USE_SAMPLE_EVT:1;
    volatile unsigned int TDU_SAME_CNT_CLK:1;
    volatile unsigned int TCS:3;
    volatile unsigned int reserved_31:1;
} Ifx_GTM_TIM_CH_TDUV_Bits;


typedef struct _Ifx_GTM_TIM_INP_VAL_Bits
{
    volatile unsigned int F_OUT:8;
    volatile unsigned int F_IN:8;
    volatile unsigned int TIM_IN:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_INP_VAL_Bits;


typedef struct _Ifx_GTM_TIM_IN_SRC_Bits
{
    volatile unsigned int VAL_0:2;
    volatile unsigned int MODE_0:2;
    volatile unsigned int VAL_1:2;
    volatile unsigned int MODE_1:2;
    volatile unsigned int VAL_2:2;
    volatile unsigned int MODE_2:2;
    volatile unsigned int VAL_3:2;
    volatile unsigned int MODE_3:2;
    volatile unsigned int VAL_4:2;
    volatile unsigned int MODE_4:2;
    volatile unsigned int VAL_5:2;
    volatile unsigned int MODE_5:2;
    volatile unsigned int VAL_6:2;
    volatile unsigned int MODE_6:2;
    volatile unsigned int VAL_7:2;
    volatile unsigned int MODE_7:2;
} Ifx_GTM_TIM_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_RST_Bits
{
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_TIM_RST_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM0_Bits
{
    volatile unsigned int CM0:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM1_Bits
{
    volatile unsigned int CM1:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_TOM_CH_CN0_Bits
{
    volatile unsigned int CN0:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CTRL_Bits
{
    volatile unsigned int reserved_0:7;
    volatile unsigned int SR0_TRIG:1;
    volatile unsigned int reserved_8:3;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int ECLK_SRC:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int TRIG_PULSE:1;
    volatile unsigned int UDMODE:2;
    volatile unsigned int RST_CCU0:1;
    volatile unsigned int OSM_TRIG:1;
    volatile unsigned int EXT_TRIG:1;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int SPE_TRIG:1;
    volatile unsigned int OSM:1;
    volatile unsigned int BITREV:1;
    volatile unsigned int SPEM:1;
    volatile unsigned int GCM:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_TOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN:1;
    volatile unsigned int CCU1TC_IRQ_EN:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC0:1;
    volatile unsigned int TRG_CCU1TC0:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC:1;
    volatile unsigned int CCU1TC:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR0_Bits
{
    volatile unsigned int SR0:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR1_Bits
{
    volatile unsigned int SR1:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_TOM_CH_STAT_Bits
{
    volatile unsigned int OL:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_TOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC_ACT_TB_Bits
{
    volatile unsigned int ACT_TB:24;
    volatile unsigned int TB_TRIG:1;
    volatile unsigned int TBU_SEL:2;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_TOM_TGC_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0:2;
    volatile unsigned int ENDIS_CTRL1:2;
    volatile unsigned int ENDIS_CTRL2:2;
    volatile unsigned int ENDIS_CTRL3:2;
    volatile unsigned int ENDIS_CTRL4:2;
    volatile unsigned int ENDIS_CTRL5:2;
    volatile unsigned int ENDIS_CTRL6:2;
    volatile unsigned int ENDIS_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0:2;
    volatile unsigned int ENDIS_STAT1:2;
    volatile unsigned int ENDIS_STAT2:2;
    volatile unsigned int ENDIS_STAT3:2;
    volatile unsigned int ENDIS_STAT4:2;
    volatile unsigned int ENDIS_STAT5:2;
    volatile unsigned int ENDIS_STAT6:2;
    volatile unsigned int ENDIS_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0:2;
    volatile unsigned int FUPD_CTRL1:2;
    volatile unsigned int FUPD_CTRL2:2;
    volatile unsigned int FUPD_CTRL3:2;
    volatile unsigned int FUPD_CTRL4:2;
    volatile unsigned int FUPD_CTRL5:2;
    volatile unsigned int FUPD_CTRL6:2;
    volatile unsigned int FUPD_CTRL7:2;
    volatile unsigned int RSTCN0_CH0:2;
    volatile unsigned int RSTCN0_CH1:2;
    volatile unsigned int RSTCN0_CH2:2;
    volatile unsigned int RSTCN0_CH3:2;
    volatile unsigned int RSTCN0_CH4:2;
    volatile unsigned int RSTCN0_CH5:2;
    volatile unsigned int RSTCN0_CH6:2;
    volatile unsigned int RSTCN0_CH7:2;
} Ifx_GTM_TOM_TGC_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG:1;
    volatile unsigned int reserved_1:7;
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int UPEN_CTRL0:2;
    volatile unsigned int UPEN_CTRL1:2;
    volatile unsigned int UPEN_CTRL2:2;
    volatile unsigned int UPEN_CTRL3:2;
    volatile unsigned int UPEN_CTRL4:2;
    volatile unsigned int UPEN_CTRL5:2;
    volatile unsigned int UPEN_CTRL6:2;
    volatile unsigned int UPEN_CTRL7:2;
} Ifx_GTM_TOM_TGC_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0:2;
    volatile unsigned int INT_TRIG1:2;
    volatile unsigned int INT_TRIG2:2;
    volatile unsigned int INT_TRIG3:2;
    volatile unsigned int INT_TRIG4:2;
    volatile unsigned int INT_TRIG5:2;
    volatile unsigned int INT_TRIG6:2;
    volatile unsigned int INT_TRIG7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0:2;
    volatile unsigned int OUTEN_CTRL1:2;
    volatile unsigned int OUTEN_CTRL2:2;
    volatile unsigned int OUTEN_CTRL3:2;
    volatile unsigned int OUTEN_CTRL4:2;
    volatile unsigned int OUTEN_CTRL5:2;
    volatile unsigned int OUTEN_CTRL6:2;
    volatile unsigned int OUTEN_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0:2;
    volatile unsigned int OUTEN_STAT1:2;
    volatile unsigned int OUTEN_STAT2:2;
    volatile unsigned int OUTEN_STAT3:2;
    volatile unsigned int OUTEN_STAT4:2;
    volatile unsigned int OUTEN_STAT5:2;
    volatile unsigned int OUTEN_STAT6:2;
    volatile unsigned int OUTEN_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TOUTSEL_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_TOUTSEL_Bits;


typedef struct _Ifx_GTM_TRIGOUT_Bits
{
    Ifx_UReg_32Bit TRIG0:2;
    Ifx_UReg_32Bit TRIG1:2;
    Ifx_UReg_32Bit TRIG2:2;
    Ifx_UReg_32Bit TRIG3:2;
    Ifx_UReg_32Bit TRIG4:2;
    Ifx_UReg_32Bit TRIG5:2;
    Ifx_UReg_32Bit TRIG6:2;
    Ifx_UReg_32Bit TRIG7:2;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GTM_TRIGOUT_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ACCEN0_Bits B;
} Ifx_GTM_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ACCEN1_Bits B;
} Ifx_GTM_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ADCTRIG_OUT0_Bits B;
} Ifx_GTM_ADCTRIG_OUT0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ADCTRIG_OUT1_Bits B;
} Ifx_GTM_ADCTRIG_OUT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_AEI_ADDR_XPT_Bits B;
} Ifx_GTM_AEI_ADDR_XPT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_AEI_STA_XPT_Bits B;
} Ifx_GTM_AEI_STA_XPT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_ACCESS_Bits B;
} Ifx_GTM_ARU_ACCESS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_CADDR_Bits B;
} Ifx_GTM_ARU_CADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_CADDR_END_Bits B;
} Ifx_GTM_ARU_CADDR_END;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_CTRL_Bits B;
} Ifx_GTM_ARU_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DATA_H_Bits B;
} Ifx_GTM_ARU_DATA_H;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DATA_L_Bits B;
} Ifx_GTM_ARU_DATA_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_ACCESS0_Bits B;
} Ifx_GTM_ARU_DBG_ACCESS0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_ACCESS1_Bits B;
} Ifx_GTM_ARU_DBG_ACCESS1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_DATA0_H_Bits B;
} Ifx_GTM_ARU_DBG_DATA0_H;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_DATA0_L_Bits B;
} Ifx_GTM_ARU_DBG_DATA0_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_DATA1_H_Bits B;
} Ifx_GTM_ARU_DBG_DATA1_H;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_DATA1_L_Bits B;
} Ifx_GTM_ARU_DBG_DATA1_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_CTRL_Bits B;
} Ifx_GTM_ARU_DYN_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_RDADDR_Bits B;
} Ifx_GTM_ARU_DYN_RDADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_ROUTE_HIGH_Bits B;
} Ifx_GTM_ARU_DYN_ROUTE_HIGH;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_ROUTE_LOW_Bits B;
} Ifx_GTM_ARU_DYN_ROUTE_LOW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH_Bits B;
} Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_ROUTE_SR_LOW_Bits B;
} Ifx_GTM_ARU_DYN_ROUTE_SR_LOW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_IRQ_EN_Bits B;
} Ifx_GTM_ARU_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_IRQ_FORCINT_Bits B;
} Ifx_GTM_ARU_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_IRQ_MODE_Bits B;
} Ifx_GTM_ARU_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_IRQ_NOTIFY_Bits B;
} Ifx_GTM_ARU_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_ACT_TB_Bits B;
} Ifx_GTM_ATOM_AGC_ACT_TB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_ENDIS_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits B;
} Ifx_GTM_ATOM_AGC_ENDIS_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_FUPD_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_GLB_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_INT_TRIG_Bits B;
} Ifx_GTM_ATOM_AGC_INT_TRIG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_OUTEN_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits B;
} Ifx_GTM_ATOM_AGC_OUTEN_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_CM0_Bits B;
} Ifx_GTM_ATOM_CH_CM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_CM1_Bits B;
} Ifx_GTM_ATOM_CH_CM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_CN0_Bits B;
} Ifx_GTM_ATOM_CH_CN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_CTRL_Bits B;
} Ifx_GTM_ATOM_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_RDADDR_Bits B;
} Ifx_GTM_ATOM_CH_RDADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMB_Bits B;
} Ifx_GTM_ATOM_CH_SOMB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMC_Bits B;
} Ifx_GTM_ATOM_CH_SOMC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMI_Bits B;
} Ifx_GTM_ATOM_CH_SOMI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMP_Bits B;
} Ifx_GTM_ATOM_CH_SOMP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMS_Bits B;
} Ifx_GTM_ATOM_CH_SOMS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SR0_Bits B;
} Ifx_GTM_ATOM_CH_SR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SR1_Bits B;
} Ifx_GTM_ATOM_CH_SR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_STAT_Bits B;
} Ifx_GTM_ATOM_CH_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_AUX_IN_SRC_TIM_Bits B;
} Ifx_GTM_AUX_IN_SRC_TIM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_EIRQ_EN_Bits B;
} Ifx_GTM_BRC_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_IRQ_EN_Bits B;
} Ifx_GTM_BRC_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_IRQ_FORCINT_Bits B;
} Ifx_GTM_BRC_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_IRQ_MODE_Bits B;
} Ifx_GTM_BRC_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_IRQ_NOTIFY_Bits B;
} Ifx_GTM_BRC_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_RST_Bits B;
} Ifx_GTM_BRC_RST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_SRC_ADDR_Bits B;
} Ifx_GTM_BRC_SRC_ADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_SRC_DEST_Bits B;
} Ifx_GTM_BRC_SRC_DEST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRIDGE_MODE_Bits B;
} Ifx_GTM_BRIDGE_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRIDGE_PTR1_Bits B;
} Ifx_GTM_BRIDGE_PTR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRIDGE_PTR2_Bits B;
} Ifx_GTM_BRIDGE_PTR2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CANOUTSEL0_Bits B;
} Ifx_GTM_CANOUTSEL0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CANOUTSEL1_Bits B;
} Ifx_GTM_CANOUTSEL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_AEIM_STA_Bits B;
} Ifx_GTM_CCM_AEIM_STA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_ARP_CTRL_Bits B;
} Ifx_GTM_CCM_ARP_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_ARP_PROT_Bits B;
} Ifx_GTM_CCM_ARP_PROT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_ATOM_OUT_Bits B;
} Ifx_GTM_CCM_ATOM_OUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_CFG_Bits B;
} Ifx_GTM_CCM_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_CMU_CLK_CFG_Bits B;
} Ifx_GTM_CCM_CMU_CLK_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_CMU_FXCLK_CFG_Bits B;
} Ifx_GTM_CCM_CMU_FXCLK_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_EXT_CAP_EN_Bits B;
} Ifx_GTM_CCM_EXT_CAP_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_HW_CONF_Bits B;
} Ifx_GTM_CCM_HW_CONF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_PROT_Bits B;
} Ifx_GTM_CCM_PROT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_TIM_AUX_IN_SRC_Bits B;
} Ifx_GTM_CCM_TIM_AUX_IN_SRC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_TOM_OUT_Bits B;
} Ifx_GTM_CCM_TOM_OUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_CTRL1_Bits B;
} Ifx_GTM_CDTM_DTM_CH_CTRL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_CTRL2_Bits B;
} Ifx_GTM_CDTM_DTM_CH_CTRL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_CTRL2_SR_Bits B;
} Ifx_GTM_CDTM_DTM_CH_CTRL2_SR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_CTRL3_Bits B;
} Ifx_GTM_CDTM_DTM_CH_CTRL3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_DTV_Bits B;
} Ifx_GTM_CDTM_DTM_CH_DTV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_SR_Bits B;
} Ifx_GTM_CDTM_DTM_CH_SR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CTRL_Bits B;
} Ifx_GTM_CDTM_DTM_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_PS_CTRL_Bits B;
} Ifx_GTM_CDTM_DTM_PS_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CFG_Bits B;
} Ifx_GTM_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CLC_Bits B;
} Ifx_GTM_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CLS_CLK_CFG_Bits B;
} Ifx_GTM_CLS_CLK_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_EIRQ_EN_Bits B;
} Ifx_GTM_CMP_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_EN_Bits B;
} Ifx_GTM_CMP_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_IRQ_EN_Bits B;
} Ifx_GTM_CMP_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_IRQ_FORCINT_Bits B;
} Ifx_GTM_CMP_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_IRQ_MODE_Bits B;
} Ifx_GTM_CMP_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_IRQ_NOTIFY_Bits B;
} Ifx_GTM_CMP_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_CLK_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_CLK_EN_Bits B;
} Ifx_GTM_CMU_CLK_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_CLK__CTRL_Bits B;
} Ifx_GTM_CMU_CLK__CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_ECLK_DEN_Bits B;
} Ifx_GTM_CMU_ECLK_DEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_ECLK_NUM_Bits B;
} Ifx_GTM_CMU_ECLK_NUM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_FXCLK_CTRL_Bits B;
} Ifx_GTM_CMU_FXCLK_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_GCLK_DEN_Bits B;
} Ifx_GTM_CMU_GCLK_DEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_GCLK_NUM_Bits B;
} Ifx_GTM_CMU_GCLK_NUM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_GLB_CTRL_Bits B;
} Ifx_GTM_CMU_GLB_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CTRL_Bits B;
} Ifx_GTM_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DATAIN_Bits B;
} Ifx_GTM_DATAIN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ACB_Bits B;
} Ifx_GTM_DPLL_ACB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ACT_STA_Bits B;
} Ifx_GTM_DPLL_ACT_STA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADD_IN_CAL1_Bits B;
} Ifx_GTM_DPLL_ADD_IN_CAL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADD_IN_CAL2_Bits B;
} Ifx_GTM_DPLL_ADD_IN_CAL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADD_IN_LD1_Bits B;
} Ifx_GTM_DPLL_ADD_IN_LD1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADD_IN_LD2_Bits B;
} Ifx_GTM_DPLL_ADD_IN_LD2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADT_S_Bits B;
} Ifx_GTM_DPLL_ADT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADT_TI_Bits B;
} Ifx_GTM_DPLL_ADT_TI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_AOSV_2_Bits B;
} Ifx_GTM_DPLL_AOSV_2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_Bits B;
} Ifx_GTM_DPLL_APS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_1C3_Bits B;
} Ifx_GTM_DPLL_APS_1C3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_1C3_EXT_Bits B;
} Ifx_GTM_DPLL_APS_1C3_EXT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_EXT_Bits B;
} Ifx_GTM_DPLL_APS_EXT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_SYNC_Bits B;
} Ifx_GTM_DPLL_APS_SYNC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_SYNC_EXT_Bits B;
} Ifx_GTM_DPLL_APS_SYNC_EXT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APT_Bits B;
} Ifx_GTM_DPLL_APT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APT_2C_Bits B;
} Ifx_GTM_DPLL_APT_2C;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APT_SYNC_Bits B;
} Ifx_GTM_DPLL_APT_SYNC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CDT_SX_Bits B;
} Ifx_GTM_DPLL_CDT_SX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CDT_SX_NOM_Bits B;
} Ifx_GTM_DPLL_CDT_SX_NOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CDT_TX_Bits B;
} Ifx_GTM_DPLL_CDT_TX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CDT_TX_NOM_Bits B;
} Ifx_GTM_DPLL_CDT_TX_NOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CNT_NUM_1_Bits B;
} Ifx_GTM_DPLL_CNT_NUM_1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CNT_NUM_2_Bits B;
} Ifx_GTM_DPLL_CNT_NUM_2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CSN_MAX_Bits B;
} Ifx_GTM_DPLL_CSN_MAX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CSN_MIN_Bits B;
} Ifx_GTM_DPLL_CSN_MIN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTN_MAX_Bits B;
} Ifx_GTM_DPLL_CTN_MAX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTN_MIN_Bits B;
} Ifx_GTM_DPLL_CTN_MIN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_0_Bits B;
} Ifx_GTM_DPLL_CTRL_0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits B;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits B;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_1_Bits B;
} Ifx_GTM_DPLL_CTRL_1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_11_Bits B;
} Ifx_GTM_DPLL_CTRL_11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE_Bits B;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits B;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_2_Bits B;
} Ifx_GTM_DPLL_CTRL_2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_3_Bits B;
} Ifx_GTM_DPLL_CTRL_3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_4_Bits B;
} Ifx_GTM_DPLL_CTRL_4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_5_Bits B;
} Ifx_GTM_DPLL_CTRL_5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_EXT_Bits B;
} Ifx_GTM_DPLL_CTRL_EXT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DLA_Bits B;
} Ifx_GTM_DPLL_DLA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DTA_Bits B;
} Ifx_GTM_DPLL_DTA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_S_Bits B;
} Ifx_GTM_DPLL_DT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_S_ACT_Bits B;
} Ifx_GTM_DPLL_DT_S_ACT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_S_START_Bits B;
} Ifx_GTM_DPLL_DT_S_START;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_TI_Bits B;
} Ifx_GTM_DPLL_DT_TI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_T_ACT_Bits B;
} Ifx_GTM_DPLL_DT_T_ACT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_T_START_Bits B;
} Ifx_GTM_DPLL_DT_T_START;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_EDT_S_Bits B;
} Ifx_GTM_DPLL_EDT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_EDT_T_Bits B;
} Ifx_GTM_DPLL_EDT_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_EIRQ_EN_Bits B;
} Ifx_GTM_DPLL_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_FTV_S_Bits B;
} Ifx_GTM_DPLL_FTV_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_FTV_T_Bits B;
} Ifx_GTM_DPLL_FTV_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ID_PMTR_Bits B;
} Ifx_GTM_DPLL_ID_PMTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INCF1_OFFSET_Bits B;
} Ifx_GTM_DPLL_INCF1_OFFSET;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INCF2_OFFSET_Bits B;
} Ifx_GTM_DPLL_INCF2_OFFSET;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INC_CNT1_Bits B;
} Ifx_GTM_DPLL_INC_CNT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INC_CNT1_MASK_Bits B;
} Ifx_GTM_DPLL_INC_CNT1_MASK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INC_CNT2_Bits B;
} Ifx_GTM_DPLL_INC_CNT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INC_CNT2_MASK_Bits B;
} Ifx_GTM_DPLL_INC_CNT2_MASK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_IRQ_EN_Bits B;
} Ifx_GTM_DPLL_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_IRQ_FORCINT_Bits B;
} Ifx_GTM_DPLL_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_IRQ_MODE_Bits B;
} Ifx_GTM_DPLL_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_IRQ_NOTIFY_Bits B;
} Ifx_GTM_DPLL_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MEDT_S_Bits B;
} Ifx_GTM_DPLL_MEDT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MEDT_T_Bits B;
} Ifx_GTM_DPLL_MEDT_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MLS1_Bits B;
} Ifx_GTM_DPLL_MLS1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MLS2_Bits B;
} Ifx_GTM_DPLL_MLS2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MPVAL1_Bits B;
} Ifx_GTM_DPLL_MPVAL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MPVAL2_Bits B;
} Ifx_GTM_DPLL_MPVAL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NA_Bits B;
} Ifx_GTM_DPLL_NA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_S_Bits B;
} Ifx_GTM_DPLL_NMB_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_S_TAR_Bits B;
} Ifx_GTM_DPLL_NMB_S_TAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits B;
} Ifx_GTM_DPLL_NMB_S_TAR_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_T_Bits B;
} Ifx_GTM_DPLL_NMB_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_T_TAR_Bits B;
} Ifx_GTM_DPLL_NMB_T_TAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits B;
} Ifx_GTM_DPLL_NMB_T_TAR_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NTI_CNT_Bits B;
} Ifx_GTM_DPLL_NTI_CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NUSC_Bits B;
} Ifx_GTM_DPLL_NUSC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NUSC_EXT1_Bits B;
} Ifx_GTM_DPLL_NUSC_EXT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NUSC_EXT2_Bits B;
} Ifx_GTM_DPLL_NUSC_EXT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NUTC_Bits B;
} Ifx_GTM_DPLL_NUTC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_OSW_Bits B;
} Ifx_GTM_DPLL_OSW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PDT_Bits B;
} Ifx_GTM_DPLL_PDT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSA_Bits B;
} Ifx_GTM_DPLL_PSA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSAC_Bits B;
} Ifx_GTM_DPLL_PSAC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSSC_Bits B;
} Ifx_GTM_DPLL_PSSC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSSM_Bits B;
} Ifx_GTM_DPLL_PSSM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSSM_OLD_Bits B;
} Ifx_GTM_DPLL_PSSM_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSTC_Bits B;
} Ifx_GTM_DPLL_PSTC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSTM_Bits B;
} Ifx_GTM_DPLL_PSTM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSTM_OLD_Bits B;
} Ifx_GTM_DPLL_PSTM_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PVT_Bits B;
} Ifx_GTM_DPLL_PVT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RAM_INI_Bits B;
} Ifx_GTM_DPLL_RAM_INI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RCDT_SX_Bits B;
} Ifx_GTM_DPLL_RCDT_SX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RCDT_SX_NOM_Bits B;
} Ifx_GTM_DPLL_RCDT_SX_NOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RCDT_TX_Bits B;
} Ifx_GTM_DPLL_RCDT_TX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RCDT_TX_NOM_Bits B;
} Ifx_GTM_DPLL_RCDT_TX_NOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RDT_S_Bits B;
} Ifx_GTM_DPLL_RDT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RDT_S_ACT_Bits B;
} Ifx_GTM_DPLL_RDT_S_ACT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RDT_TI_Bits B;
} Ifx_GTM_DPLL_RDT_TI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RDT_T_ACT_Bits B;
} Ifx_GTM_DPLL_RDT_T_ACT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_SIDEL_Bits B;
} Ifx_GTM_DPLL_SIDEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_SLR_Bits B;
} Ifx_GTM_DPLL_SLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_STA_Bits B;
} Ifx_GTM_DPLL_STA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_STATUS_Bits B;
} Ifx_GTM_DPLL_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_STA_FLAG_Bits B;
} Ifx_GTM_DPLL_STA_FLAG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_STA_MASK_Bits B;
} Ifx_GTM_DPLL_STA_MASK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TBU_TS0_S_Bits B;
} Ifx_GTM_DPLL_TBU_TS0_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TBU_TS0_T_Bits B;
} Ifx_GTM_DPLL_TBU_TS0_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_THMA_Bits B;
} Ifx_GTM_DPLL_THMA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_THMI_Bits B;
} Ifx_GTM_DPLL_THMI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_THVAL_Bits B;
} Ifx_GTM_DPLL_THVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_THVAL2_Bits B;
} Ifx_GTM_DPLL_THVAL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TIDEL_Bits B;
} Ifx_GTM_DPLL_TIDEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TLR_Bits B;
} Ifx_GTM_DPLL_TLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TOV_Bits B;
} Ifx_GTM_DPLL_TOV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TOV_S_Bits B;
} Ifx_GTM_DPLL_TOV_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TSAC_Bits B;
} Ifx_GTM_DPLL_TSAC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TSF_S_Bits B;
} Ifx_GTM_DPLL_TSF_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TSF_TI_Bits B;
} Ifx_GTM_DPLL_TSF_TI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TS_S_Bits B;
} Ifx_GTM_DPLL_TS_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TS_S_OLD_Bits B;
} Ifx_GTM_DPLL_TS_S_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TS_T_Bits B;
} Ifx_GTM_DPLL_TS_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TS_T_OLD_Bits B;
} Ifx_GTM_DPLL_TS_T_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DSADCINSEL_Bits B;
} Ifx_GTM_DSADCINSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DSADC_OUTSEL0_Bits B;
} Ifx_GTM_DSADC_OUTSEL0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DSADC_OUTSEL1_Bits B;
} Ifx_GTM_DSADC_OUTSEL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DTMAUXINSEL_Bits B;
} Ifx_GTM_DTMAUXINSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DXINCON_Bits B;
} Ifx_GTM_DXINCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DXOUTCON_Bits B;
} Ifx_GTM_DXOUTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_EIRQ_EN_Bits B;
} Ifx_GTM_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_EXT_CAP_EN_Bits B;
} Ifx_GTM_EXT_CAP_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_HW_CONF_Bits B;
} Ifx_GTM_HW_CONF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI0_Bits B;
} Ifx_GTM_ICM_IRQG_CEI0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI1_Bits B;
} Ifx_GTM_ICM_IRQG_CEI1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI2_Bits B;
} Ifx_GTM_ICM_IRQG_CEI2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI3_Bits B;
} Ifx_GTM_ICM_IRQG_CEI3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI4_Bits B;
} Ifx_GTM_ICM_IRQG_CEI4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI_MCS_Bits B;
} Ifx_GTM_ICM_IRQG_CEI_MCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI_PSM_Bits B;
} Ifx_GTM_ICM_IRQG_CEI_PSM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI_SPE_Bits B;
} Ifx_GTM_ICM_IRQG_CEI_SPE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_ATOM_Bits B;
} Ifx_GTM_ICM_IRQG_CI_ATOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_MCS_Bits B;
} Ifx_GTM_ICM_IRQG_CI_MCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_PSM_Bits B;
} Ifx_GTM_ICM_IRQG_CI_PSM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_SPE_Bits B;
} Ifx_GTM_ICM_IRQG_CI_SPE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_TOM_Bits B;
} Ifx_GTM_ICM_IRQG_CI_TOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_MEI_Bits B;
} Ifx_GTM_ICM_IRQG_MEI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_MEI_CLS_Bits B;
} Ifx_GTM_ICM_IRQG_MEI_CLS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R0_Bits B;
} Ifx_GTM_ICM_IRQG_R0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R1_Bits B;
} Ifx_GTM_ICM_IRQG_R1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R10_Bits B;
} Ifx_GTM_ICM_IRQG_R10;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R11_Bits B;
} Ifx_GTM_ICM_IRQG_R11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R2_Bits B;
} Ifx_GTM_ICM_IRQG_R2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R3_Bits B;
} Ifx_GTM_ICM_IRQG_R3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R4_Bits B;
} Ifx_GTM_ICM_IRQG_R4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R5_Bits B;
} Ifx_GTM_ICM_IRQG_R5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R6_Bits B;
} Ifx_GTM_ICM_IRQG_R6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R7_Bits B;
} Ifx_GTM_ICM_IRQG_R7;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R8_Bits B;
} Ifx_GTM_ICM_IRQG_R8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R9_Bits B;
} Ifx_GTM_ICM_IRQG_R9;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_INTOUT_Bits B;
} Ifx_GTM_INTOUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_IRQ_EN_Bits B;
} Ifx_GTM_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_IRQ_FORCINT_Bits B;
} Ifx_GTM_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_IRQ_MODE_Bits B;
} Ifx_GTM_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_IRQ_NOTIFY_Bits B;
} Ifx_GTM_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_LCDCDCOUTSEL_Bits B;
} Ifx_GTM_LCDCDCOUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MAP_CTRL_Bits B;
} Ifx_GTM_MAP_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCFG_CTRL_Bits B;
} Ifx_GTM_MCFG_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCSINTCLR_Bits B;
} Ifx_GTM_MCSINTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCSINTSTAT_Bits B;
} Ifx_GTM_MCSINTSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCSTRIGOUTSEL_Bits B;
} Ifx_GTM_MCSTRIGOUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_AEM_DIS_Bits B;
} Ifx_GTM_MCS_AEM_DIS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CAT_Bits B;
} Ifx_GTM_MCS_CAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_ACB_Bits B;
} Ifx_GTM_MCS_CH_ACB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_CTRG_Bits B;
} Ifx_GTM_MCS_CH_CTRG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_CTRL_Bits B;
} Ifx_GTM_MCS_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_EIRQ_EN_Bits B;
} Ifx_GTM_MCS_CH_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_IRQ_EN_Bits B;
} Ifx_GTM_MCS_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_MCS_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_IRQ_MODE_Bits B;
} Ifx_GTM_MCS_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_MCS_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_MHB_Bits B;
} Ifx_GTM_MCS_CH_MHB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_PC_Bits B;
} Ifx_GTM_MCS_CH_PC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_R_Bits B;
} Ifx_GTM_MCS_CH_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_STRG_Bits B;
} Ifx_GTM_MCS_CH_STRG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CTRL_STAT_Bits B;
} Ifx_GTM_MCS_CTRL_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CWT_Bits B;
} Ifx_GTM_MCS_CWT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_ERR_Bits B;
} Ifx_GTM_MCS_ERR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_REG_PROT_Bits B;
} Ifx_GTM_MCS_REG_PROT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_RESET_Bits B;
} Ifx_GTM_MCS_RESET;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MON_ACTIVITY_MCS_Bits B;
} Ifx_GTM_MON_ACTIVITY_MCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MON_ACTIVITY_R0_Bits B;
} Ifx_GTM_MON_ACTIVITY_R0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MON_ACTIVITY_R1_Bits B;
} Ifx_GTM_MON_ACTIVITY_R1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MON_STATUS_Bits B;
} Ifx_GTM_MON_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_MSCQ_INHCON_Bits B;
} Ifx_GTM_MSC_MSCQ_INHCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_MSCQ_INLCON_Bits B;
} Ifx_GTM_MSC_MSCQ_INLCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_MSCQ_INLEXTCON_Bits B;
} Ifx_GTM_MSC_MSCQ_INLEXTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_SET_CON0_Bits B;
} Ifx_GTM_MSC_SET_CON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_SET_CON1_Bits B;
} Ifx_GTM_MSC_SET_CON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_SET_CON2_Bits B;
} Ifx_GTM_MSC_SET_CON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_SET_CON3_Bits B;
} Ifx_GTM_MSC_SET_CON3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OCS_Bits B;
} Ifx_GTM_OCDS_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_ODA_Bits B;
} Ifx_GTM_OCDS_ODA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTBU0T_Bits B;
} Ifx_GTM_OCDS_OTBU0T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTBU1T_Bits B;
} Ifx_GTM_OCDS_OTBU1T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTBU2T_Bits B;
} Ifx_GTM_OCDS_OTBU2T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTBU3T_Bits B;
} Ifx_GTM_OCDS_OTBU3T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTSC0_Bits B;
} Ifx_GTM_OCDS_OTSC0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTSC1_Bits B;
} Ifx_GTM_OCDS_OTSC1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTSS_Bits B;
} Ifx_GTM_OCDS_OTSS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OUT_ATOM_Bits B;
} Ifx_GTM_OUT_ATOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OUT_TOM_Bits B;
} Ifx_GTM_OUT_TOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSI5OUTSEL_Bits B;
} Ifx_GTM_PSI5OUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSI5SOUTSEL_Bits B;
} Ifx_GTM_PSI5SOUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_AFD_CH_BUF_ACC_Bits B;
} Ifx_GTM_PSM_AFD_CH_BUF_ACC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_F2A_ENABLE_Bits B;
} Ifx_GTM_PSM_F2A_ENABLE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_F2A_F2A_CTRL_Bits B;
} Ifx_GTM_PSM_F2A_F2A_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO_Bits B;
} Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_F2A_STR_CH_STR_CFG_Bits B;
} Ifx_GTM_PSM_F2A_STR_CH_STR_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_CTRL_Bits B;
} Ifx_GTM_PSM_FIFO_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_EIRQ_EN_Bits B;
} Ifx_GTM_PSM_FIFO_CH_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_END_ADDR_Bits B;
} Ifx_GTM_PSM_FIFO_CH_END_ADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL_Bits B;
} Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_IRQ_EN_Bits B;
} Ifx_GTM_PSM_FIFO_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_IRQ_MODE_Bits B;
} Ifx_GTM_PSM_FIFO_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_LOWER_WM_Bits B;
} Ifx_GTM_PSM_FIFO_CH_LOWER_WM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_RD_PTR_Bits B;
} Ifx_GTM_PSM_FIFO_CH_RD_PTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_START_ADDR_Bits B;
} Ifx_GTM_PSM_FIFO_CH_START_ADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_STATUS_Bits B;
} Ifx_GTM_PSM_FIFO_CH_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_UPPER_WM_Bits B;
} Ifx_GTM_PSM_FIFO_CH_UPPER_WM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_WR_PTR_Bits B;
} Ifx_GTM_PSM_FIFO_CH_WR_PTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_RESET1_Bits B;
} Ifx_GTM_RESET1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_RESET2_Bits B;
} Ifx_GTM_RESET2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_RESET_CLR_Bits B;
} Ifx_GTM_RESET_CLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_REV_Bits B;
} Ifx_GTM_REV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_RST_Bits B;
} Ifx_GTM_RST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_CMD_Bits B;
} Ifx_GTM_SPE_CMD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_CTRL_STAT_Bits B;
} Ifx_GTM_SPE_CTRL_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_CTRL_STAT2_Bits B;
} Ifx_GTM_SPE_CTRL_STAT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_EIRQ_EN_Bits B;
} Ifx_GTM_SPE_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_IRQ_EN_Bits B;
} Ifx_GTM_SPE_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_IRQ_FORCINT_Bits B;
} Ifx_GTM_SPE_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_IRQ_MODE_Bits B;
} Ifx_GTM_SPE_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_IRQ_NOTIFY_Bits B;
} Ifx_GTM_SPE_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_OUT_CTRL_Bits B;
} Ifx_GTM_SPE_OUT_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_OUT_PAT_Bits B;
} Ifx_GTM_SPE_OUT_PAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_PAT_Bits B;
} Ifx_GTM_SPE_PAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_REV_CMP_Bits B;
} Ifx_GTM_SPE_REV_CMP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_REV_CNT_Bits B;
} Ifx_GTM_SPE_REV_CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH0_BASE_Bits B;
} Ifx_GTM_TBU_CH0_BASE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH0_CTRL_Bits B;
} Ifx_GTM_TBU_CH0_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH1_BASE_Bits B;
} Ifx_GTM_TBU_CH1_BASE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH1_CTRL_Bits B;
} Ifx_GTM_TBU_CH1_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH2_BASE_Bits B;
} Ifx_GTM_TBU_CH2_BASE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH2_CTRL_Bits B;
} Ifx_GTM_TBU_CH2_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH3_BASE_Bits B;
} Ifx_GTM_TBU_CH3_BASE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH3_BASE_CAPTURE_Bits B;
} Ifx_GTM_TBU_CH3_BASE_CAPTURE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH3_BASE_MARK_Bits B;
} Ifx_GTM_TBU_CH3_BASE_MARK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH3_CTRL_Bits B;
} Ifx_GTM_TBU_CH3_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CHEN_Bits B;
} Ifx_GTM_TBU_CHEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIMINSEL_Bits B;
} Ifx_GTM_TIMINSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_CNT_Bits B;
} Ifx_GTM_TIM_CH_CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_CNTS_Bits B;
} Ifx_GTM_TIM_CH_CNTS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_CTRL_Bits B;
} Ifx_GTM_TIM_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_ECNT_Bits B;
} Ifx_GTM_TIM_CH_ECNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_ECTRL_Bits B;
} Ifx_GTM_TIM_CH_ECTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_EIRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_FLT_FE_Bits B;
} Ifx_GTM_TIM_CH_FLT_FE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_FLT_RE_Bits B;
} Ifx_GTM_TIM_CH_FLT_RE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_GPR0_Bits B;
} Ifx_GTM_TIM_CH_GPR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_GPR1_Bits B;
} Ifx_GTM_TIM_CH_GPR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TIM_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TIM_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_TDUC_Bits B;
} Ifx_GTM_TIM_CH_TDUC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_TDUV_Bits B;
} Ifx_GTM_TIM_CH_TDUV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_INP_VAL_Bits B;
} Ifx_GTM_TIM_INP_VAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_IN_SRC_Bits B;
} Ifx_GTM_TIM_IN_SRC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_RST_Bits B;
} Ifx_GTM_TIM_RST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_CM0_Bits B;
} Ifx_GTM_TOM_CH_CM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_CM1_Bits B;
} Ifx_GTM_TOM_CH_CM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_CN0_Bits B;
} Ifx_GTM_TOM_CH_CN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_CTRL_Bits B;
} Ifx_GTM_TOM_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TOM_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TOM_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TOM_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_SR0_Bits B;
} Ifx_GTM_TOM_CH_SR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_SR1_Bits B;
} Ifx_GTM_TOM_CH_SR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_STAT_Bits B;
} Ifx_GTM_TOM_CH_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC_ACT_TB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC_ENDIS_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC_ENDIS_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC_FUPD_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC_GLB_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC_INT_TRIG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC_OUTEN_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC_OUTEN_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOUTSEL_Bits B;
} Ifx_GTM_TOUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TRIGOUT_Bits B;
} Ifx_GTM_TRIGOUT;
# 8816 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_IRQ
{
       Ifx_GTM_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_IRQ_EN EN;
       Ifx_GTM_IRQ_FORCINT FORCINT;
       Ifx_GTM_IRQ_MODE MODE;
} Ifx_GTM_IRQ;
# 8837 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRIDGE
{
       Ifx_GTM_BRIDGE_MODE MODE;
       Ifx_GTM_BRIDGE_PTR1 PTR1;
       Ifx_GTM_BRIDGE_PTR2 PTR2;
} Ifx_GTM_BRIDGE;
# 8857 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_AUX_IN_SRC
{
       Ifx_GTM_AUX_IN_SRC_TIM TIM[7];
} Ifx_GTM_AUX_IN_SRC;
# 8875 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_OUT
{
       Ifx_GTM_OUT_TOM TOM[5];
       Ifx_UReg_8Bit reserved_14[4];
       Ifx_GTM_OUT_ATOM ATOM0;
       Ifx_GTM_OUT_ATOM ATOM2;
       Ifx_GTM_OUT_ATOM ATOM4;
       Ifx_GTM_OUT_ATOM ATOM6;
       Ifx_GTM_OUT_ATOM ATOM8;
       Ifx_UReg_8Bit reserved_2C[4];
} Ifx_GTM_OUT;
# 8900 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TBU
{
       Ifx_GTM_TBU_CHEN CHEN;
       Ifx_GTM_TBU_CH0_CTRL CH0_CTRL;
       Ifx_GTM_TBU_CH0_BASE CH0_BASE;
       Ifx_GTM_TBU_CH1_CTRL CH1_CTRL;
       Ifx_GTM_TBU_CH1_BASE CH1_BASE;
       Ifx_GTM_TBU_CH2_CTRL CH2_CTRL;
       Ifx_GTM_TBU_CH2_BASE CH2_BASE;
       Ifx_GTM_TBU_CH3_CTRL CH3_CTRL;
       Ifx_GTM_TBU_CH3_BASE CH3_BASE;
       Ifx_GTM_TBU_CH3_BASE_MARK CH3_BASE_MARK;
       Ifx_GTM_TBU_CH3_BASE_CAPTURE CH3_BASE_CAPTURE;
} Ifx_GTM_TBU;
# 8928 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MON_ACTIVITY
{
       Ifx_GTM_MON_ACTIVITY_R0 R0;
       Ifx_GTM_MON_ACTIVITY_R1 R1;
       Ifx_GTM_MON_ACTIVITY_MCS MCS[7];
} Ifx_GTM_MON_ACTIVITY;
# 8948 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MON
{
       Ifx_GTM_MON_STATUS STATUS;
       Ifx_GTM_MON_ACTIVITY ACTIVITY;
       Ifx_UReg_8Bit reserved_28[12];
} Ifx_GTM_MON;
# 8968 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMP_IRQ
{
       Ifx_GTM_CMP_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_CMP_IRQ_EN EN;
       Ifx_GTM_CMP_IRQ_FORCINT FORCINT;
       Ifx_GTM_CMP_IRQ_MODE MODE;
} Ifx_GTM_CMP_IRQ;
# 8989 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMP
{
       Ifx_GTM_CMP_EN EN;
       Ifx_GTM_CMP_IRQ IRQ;
       Ifx_GTM_CMP_EIRQ_EN EIRQ_EN;
} Ifx_GTM_CMP;
# 9009 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ARU_DBG
{
       Ifx_GTM_ARU_DBG_ACCESS0 ACCESS0;
       Ifx_GTM_ARU_DBG_DATA0_H DATA0_H;
       Ifx_GTM_ARU_DBG_DATA0_L DATA0_L;
       Ifx_GTM_ARU_DBG_ACCESS1 ACCESS1;
       Ifx_GTM_ARU_DBG_DATA1_H DATA1_H;
       Ifx_GTM_ARU_DBG_DATA1_L DATA1_L;
} Ifx_GTM_ARU_DBG;
# 9032 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ARU_IRQ
{
       Ifx_GTM_ARU_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_ARU_IRQ_EN EN;
       Ifx_GTM_ARU_IRQ_FORCINT FORCINT;
       Ifx_GTM_ARU_IRQ_MODE MODE;
} Ifx_GTM_ARU_IRQ;
# 9053 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ARU
{
       Ifx_GTM_ARU_ACCESS ACCESS;
       Ifx_GTM_ARU_DATA_H DATA_H;
       Ifx_GTM_ARU_DATA_L DATA_L;
       Ifx_GTM_ARU_DBG DBG;
       Ifx_GTM_ARU_IRQ IRQ;
       Ifx_GTM_ARU_CADDR_END CADDR_END;
       Ifx_UReg_8Bit reserved_38[4];
       Ifx_GTM_ARU_CTRL CTRL;
       Ifx_GTM_ARU_DYN_CTRL DYN_CTRL[2];
       Ifx_GTM_ARU_DYN_ROUTE_LOW DYN_ROUTE_LOW[2];
       Ifx_GTM_ARU_DYN_ROUTE_HIGH DYN_ROUTE_HIGH[2];
       Ifx_GTM_ARU_DYN_ROUTE_SR_LOW DYN_ROUTE_SR_LOW[2];
       Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH DYN_ROUTE_SR_HIGH[2];
       Ifx_GTM_ARU_DYN_RDADDR DYN_RDADDR[2];
       Ifx_UReg_8Bit reserved_70[12];
       Ifx_GTM_ARU_CADDR CADDR;
} Ifx_GTM_ARU;
# 9086 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_CLK
{
       Ifx_GTM_CMU_CLK__CTRL CTRL;
} Ifx_GTM_CMU_CLK;
# 9104 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_ECLK
{
       Ifx_GTM_CMU_ECLK_NUM NUM;
       Ifx_GTM_CMU_ECLK_DEN DEN;
} Ifx_GTM_CMU_ECLK;
# 9123 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_FXCLK
{
       Ifx_GTM_CMU_FXCLK_CTRL CTRL;
} Ifx_GTM_CMU_FXCLK;
# 9141 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU
{
       Ifx_GTM_CMU_CLK_EN CLK_EN;
       Ifx_GTM_CMU_GCLK_NUM GCLK_NUM;
       Ifx_GTM_CMU_GCLK_DEN GCLK_DEN;
       Ifx_GTM_CMU_CLK CLK[8];
       Ifx_GTM_CMU_ECLK ECLK[3];
       Ifx_GTM_CMU_FXCLK FXCLK;
       Ifx_GTM_CMU_GLB_CTRL GLB_CTRL;
       Ifx_GTM_CMU_CLK_CTRL CLK_CTRL;
} Ifx_GTM_CMU;
# 9166 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRC_SRC
{
       Ifx_GTM_BRC_SRC_ADDR ADDR;
       Ifx_GTM_BRC_SRC_DEST DEST;
} Ifx_GTM_BRC_SRC;
# 9185 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRC_IRQ
{
       Ifx_GTM_BRC_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_BRC_IRQ_EN EN;
       Ifx_GTM_BRC_IRQ_FORCINT FORCINT;
       Ifx_GTM_BRC_IRQ_MODE MODE;
} Ifx_GTM_BRC_IRQ;
# 9206 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRC
{
       Ifx_GTM_BRC_SRC SRC[12];
       Ifx_GTM_BRC_IRQ IRQ;
       Ifx_GTM_BRC_RST RST;
       Ifx_GTM_BRC_EIRQ_EN EIRQ_EN;
} Ifx_GTM_BRC;
# 9227 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ICM_IRQG
{
       Ifx_GTM_ICM_IRQG_R0 R0;
       Ifx_GTM_ICM_IRQG_R1 R1;
       Ifx_GTM_ICM_IRQG_R2 R2;
       Ifx_GTM_ICM_IRQG_R3 R3;
       Ifx_GTM_ICM_IRQG_R4 R4;
       Ifx_GTM_ICM_IRQG_R5 R5;
       Ifx_GTM_ICM_IRQG_R6 R6;
       Ifx_GTM_ICM_IRQG_R7 R7;
       Ifx_GTM_ICM_IRQG_R8 R8;
       Ifx_GTM_ICM_IRQG_R9 R9;
       Ifx_GTM_ICM_IRQG_R10 R10;
       Ifx_GTM_ICM_IRQG_R11 R11;
       Ifx_GTM_ICM_IRQG_MEI MEI;
       Ifx_GTM_ICM_IRQG_CEI0 CEI0;
       Ifx_GTM_ICM_IRQG_CEI1 CEI1;
       Ifx_GTM_ICM_IRQG_CEI2 CEI2;
       Ifx_GTM_ICM_IRQG_CEI3 CEI3;
       Ifx_GTM_ICM_IRQG_CEI4 CEI4;
       Ifx_UReg_8Bit reserved_48[28];
       Ifx_GTM_ICM_IRQG_CEI_MCS CEI_MCS[7];
       Ifx_UReg_8Bit reserved_80[36];
       Ifx_GTM_ICM_IRQG_CEI_PSM CEI_PSM[1];
       Ifx_UReg_8Bit reserved_A8[12];
       Ifx_GTM_ICM_IRQG_CEI_SPE CEI_SPE;
       Ifx_UReg_8Bit reserved_B8[88];
       Ifx_GTM_ICM_IRQG_MEI_CLS MEI_CLS[2];
       Ifx_UReg_8Bit reserved_118[8];
       Ifx_GTM_ICM_IRQG_CI_MCS CI_MCS[7];
       Ifx_UReg_8Bit reserved_13C[36];
       Ifx_GTM_ICM_IRQG_CI_PSM CI_PSM[1];
       Ifx_UReg_8Bit reserved_164[12];
       Ifx_GTM_ICM_IRQG_CI_SPE CI_SPE;
       Ifx_UReg_8Bit reserved_174[28];
       Ifx_GTM_ICM_IRQG_CI_ATOM CI_ATOM[3];
       Ifx_UReg_8Bit reserved_19C[4];
       Ifx_GTM_ICM_IRQG_CI_TOM CI_TOM[3];
} Ifx_GTM_ICM_IRQG;
# 9280 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ICM
{
       Ifx_GTM_ICM_IRQG IRQG;
} Ifx_GTM_ICM;
# 9298 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_SPE_IRQ
{
       Ifx_GTM_SPE_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_SPE_IRQ_EN EN;
       Ifx_GTM_SPE_IRQ_FORCINT FORCINT;
       Ifx_GTM_SPE_IRQ_MODE MODE;
} Ifx_GTM_SPE_IRQ;
# 9319 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_SPE
{
       Ifx_GTM_SPE_CTRL_STAT CTRL_STAT;
       Ifx_GTM_SPE_PAT PAT;
       Ifx_GTM_SPE_OUT_PAT OUT_PAT[8];
       Ifx_GTM_SPE_OUT_CTRL OUT_CTRL;
       Ifx_GTM_SPE_IRQ IRQ;
       Ifx_GTM_SPE_EIRQ_EN EIRQ_EN;
       Ifx_GTM_SPE_REV_CNT REV_CNT;
       Ifx_GTM_SPE_REV_CMP REV_CMP;
       Ifx_GTM_SPE_CTRL_STAT2 CTRL_STAT2;
       Ifx_GTM_SPE_CMD CMD;
       Ifx_UReg_8Bit reserved_50[48];
} Ifx_GTM_SPE;
# 9347 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TIM_CH_IRQ
{
       Ifx_GTM_TIM_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_TIM_CH_IRQ_EN EN;
       Ifx_GTM_TIM_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_TIM_CH_IRQ_MODE MODE;
} Ifx_GTM_TIM_CH_IRQ;
# 9368 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TIM_CH
{
       Ifx_GTM_TIM_CH_GPR0 GPR0;
       Ifx_GTM_TIM_CH_GPR1 GPR1;
       Ifx_GTM_TIM_CH_CNT CNT;
       Ifx_GTM_TIM_CH_ECNT ECNT;
       Ifx_GTM_TIM_CH_CNTS CNTS;
       Ifx_GTM_TIM_CH_TDUC TDUC;
       Ifx_GTM_TIM_CH_TDUV TDUV;
       Ifx_GTM_TIM_CH_FLT_RE FLT_RE;
       Ifx_GTM_TIM_CH_FLT_FE FLT_FE;
       Ifx_GTM_TIM_CH_CTRL CTRL;
       Ifx_GTM_TIM_CH_ECTRL ECTRL;
       Ifx_GTM_TIM_CH_IRQ IRQ;
       Ifx_GTM_TIM_CH_EIRQ_EN EIRQ_EN;
} Ifx_GTM_TIM_CH;
# 9398 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TIM
{
       Ifx_GTM_TIM_CH CH0;
       Ifx_UReg_8Bit reserved_40[52];
       Ifx_GTM_TIM_INP_VAL INP_VAL;
       Ifx_GTM_TIM_IN_SRC IN_SRC;
       Ifx_GTM_TIM_RST RST;
       Ifx_GTM_TIM_CH CH1;
       Ifx_UReg_8Bit reserved_C0[64];
       Ifx_GTM_TIM_CH CH2;
       Ifx_UReg_8Bit reserved_140[64];
       Ifx_GTM_TIM_CH CH3;
       Ifx_UReg_8Bit reserved_1C0[64];
       Ifx_GTM_TIM_CH CH4;
       Ifx_UReg_8Bit reserved_240[64];
       Ifx_GTM_TIM_CH CH5;
       Ifx_UReg_8Bit reserved_2C0[64];
       Ifx_GTM_TIM_CH CH6;
       Ifx_UReg_8Bit reserved_340[64];
       Ifx_GTM_TIM_CH CH7;
       Ifx_UReg_8Bit reserved_3C0[1088];
} Ifx_GTM_TIM;
# 9434 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TOM_CH_IRQ
{
       Ifx_GTM_TOM_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_TOM_CH_IRQ_EN EN;
       Ifx_GTM_TOM_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_TOM_CH_IRQ_MODE MODE;
} Ifx_GTM_TOM_CH_IRQ;
# 9455 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TOM_CH
{
       Ifx_GTM_TOM_CH_CTRL CTRL;
       Ifx_GTM_TOM_CH_SR0 SR0;
       Ifx_GTM_TOM_CH_SR1 SR1;
       Ifx_GTM_TOM_CH_CM0 CM0;
       Ifx_GTM_TOM_CH_CM1 CM1;
       Ifx_GTM_TOM_CH_CN0 CN0;
       Ifx_GTM_TOM_CH_STAT STAT;
       Ifx_GTM_TOM_CH_IRQ IRQ;
} Ifx_GTM_TOM_CH;
# 9480 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TOM
{
       Ifx_GTM_TOM_CH CH0;
       Ifx_UReg_8Bit reserved_2C[4];
       Ifx_GTM_TOM_TGC_GLB_CTRL TGC0_GLB_CTRL;
       Ifx_GTM_TOM_TGC_ACT_TB TGC0_ACT_TB;
       Ifx_GTM_TOM_TGC_FUPD_CTRL TGC0_FUPD_CTRL;
       Ifx_GTM_TOM_TGC_INT_TRIG TGC0_INT_TRIG;
       Ifx_GTM_TOM_CH CH1;
       Ifx_UReg_8Bit reserved_6C[4];
       Ifx_GTM_TOM_TGC_ENDIS_CTRL TGC0_ENDIS_CTRL;
       Ifx_GTM_TOM_TGC_ENDIS_STAT TGC0_ENDIS_STAT;
       Ifx_GTM_TOM_TGC_OUTEN_CTRL TGC0_OUTEN_CTRL;
       Ifx_GTM_TOM_TGC_OUTEN_STAT TGC0_OUTEN_STAT;
       Ifx_GTM_TOM_CH CH2;
       Ifx_UReg_8Bit reserved_AC[20];
       Ifx_GTM_TOM_CH CH3;
       Ifx_UReg_8Bit reserved_EC[20];
       Ifx_GTM_TOM_CH CH4;
       Ifx_UReg_8Bit reserved_12C[20];
       Ifx_GTM_TOM_CH CH5;
       Ifx_UReg_8Bit reserved_16C[20];
       Ifx_GTM_TOM_CH CH6;
       Ifx_UReg_8Bit reserved_1AC[20];
       Ifx_GTM_TOM_CH CH7;
       Ifx_UReg_8Bit reserved_1EC[20];
       Ifx_GTM_TOM_CH CH8;
       Ifx_UReg_8Bit reserved_22C[4];
       Ifx_GTM_TOM_TGC_GLB_CTRL TGC1_GLB_CTRL;
       Ifx_GTM_TOM_TGC_ACT_TB TGC1_ACT_TB;
       Ifx_GTM_TOM_TGC_FUPD_CTRL TGC1_FUPD_CTRL;
       Ifx_GTM_TOM_TGC_INT_TRIG TGC1_INT_TRIG;
       Ifx_GTM_TOM_CH CH9;
       Ifx_UReg_8Bit reserved_26C[4];
       Ifx_GTM_TOM_TGC_ENDIS_CTRL TGC1_ENDIS_CTRL;
       Ifx_GTM_TOM_TGC_ENDIS_STAT TGC1_ENDIS_STAT;
       Ifx_GTM_TOM_TGC_OUTEN_CTRL TGC1_OUTEN_CTRL;
       Ifx_GTM_TOM_TGC_OUTEN_STAT TGC1_OUTEN_STAT;
       Ifx_GTM_TOM_CH CH10;
       Ifx_UReg_8Bit reserved_2AC[20];
       Ifx_GTM_TOM_CH CH11;
       Ifx_UReg_8Bit reserved_2EC[20];
       Ifx_GTM_TOM_CH CH12;
       Ifx_UReg_8Bit reserved_32C[20];
       Ifx_GTM_TOM_CH CH13;
       Ifx_UReg_8Bit reserved_36C[20];
       Ifx_GTM_TOM_CH CH14;
       Ifx_UReg_8Bit reserved_3AC[20];
       Ifx_GTM_TOM_CH CH15;
       Ifx_UReg_8Bit reserved_3EC[1044];
} Ifx_GTM_TOM;
# 9545 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_F2A_RD_CH
{
       Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO ARU_RD_FIFO;
} Ifx_GTM_PSM_F2A_RD_CH;
# 9563 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_F2A_STR_CH
{
       Ifx_GTM_PSM_F2A_STR_CH_STR_CFG STR_CFG;
} Ifx_GTM_PSM_F2A_STR_CH;
# 9581 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_F2A
{
       Ifx_GTM_PSM_F2A_RD_CH RD_CH[8];
       Ifx_GTM_PSM_F2A_STR_CH STR_CH[8];
       Ifx_GTM_PSM_F2A_ENABLE ENABLE;
       Ifx_GTM_PSM_F2A_F2A_CTRL F2A_CTRL;
} Ifx_GTM_PSM_F2A;
# 9602 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_AFD_CH
{
       Ifx_GTM_PSM_AFD_CH_BUF_ACC BUF_ACC;
       Ifx_UReg_8Bit reserved_4[12];
} Ifx_GTM_PSM_AFD_CH;
# 9621 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_AFD
{
       Ifx_GTM_PSM_AFD_CH CH[8];
} Ifx_GTM_PSM_AFD;
# 9639 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_FIFO_CH_IRQ
{
       Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_PSM_FIFO_CH_IRQ_EN EN;
       Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_PSM_FIFO_CH_IRQ_MODE MODE;
} Ifx_GTM_PSM_FIFO_CH_IRQ;
# 9660 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_FIFO_CH
{
       Ifx_GTM_PSM_FIFO_CH_CTRL CTRL;
       Ifx_GTM_PSM_FIFO_CH_END_ADDR END_ADDR;
       Ifx_GTM_PSM_FIFO_CH_START_ADDR START_ADDR;
       Ifx_GTM_PSM_FIFO_CH_UPPER_WM UPPER_WM;
       Ifx_GTM_PSM_FIFO_CH_LOWER_WM LOWER_WM;
       Ifx_GTM_PSM_FIFO_CH_STATUS STATUS;
       Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL FILL_LEVEL;
       Ifx_GTM_PSM_FIFO_CH_WR_PTR WR_PTR;
       Ifx_GTM_PSM_FIFO_CH_RD_PTR RD_PTR;
       Ifx_GTM_PSM_FIFO_CH_IRQ IRQ;
       Ifx_GTM_PSM_FIFO_CH_EIRQ_EN EIRQ_EN;
       Ifx_UReg_8Bit reserved_38[8];
} Ifx_GTM_PSM_FIFO_CH;
# 9689 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_FIFO
{
       Ifx_GTM_PSM_FIFO_CH CH[8];
} Ifx_GTM_PSM_FIFO;
# 9707 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM
{
       Ifx_GTM_PSM_F2A F2A;
       Ifx_UReg_8Bit reserved_48[56];
       Ifx_GTM_PSM_AFD AFD;
       Ifx_UReg_8Bit reserved_100[768];
       Ifx_GTM_PSM_FIFO FIFO;
       Ifx_UReg_8Bit reserved_600[14848];
} Ifx_GTM_PSM;
# 9731 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_DPLL_IRQ
{
       Ifx_GTM_DPLL_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_DPLL_IRQ_EN EN;
       Ifx_GTM_DPLL_IRQ_FORCINT FORCINT;
       Ifx_GTM_DPLL_IRQ_MODE MODE;
} Ifx_GTM_DPLL_IRQ;
# 9752 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_DPLL
{
       Ifx_GTM_DPLL_CTRL_0 CTRL_0;
       Ifx_GTM_DPLL_CTRL_1 CTRL_1;
       Ifx_GTM_DPLL_CTRL_2 CTRL_2;
       Ifx_GTM_DPLL_CTRL_3 CTRL_3;
       Ifx_GTM_DPLL_CTRL_4 CTRL_4;
       Ifx_GTM_DPLL_CTRL_5 CTRL_5;
       Ifx_GTM_DPLL_ACT_STA ACT_STA;
       Ifx_GTM_DPLL_OSW OSW;
       Ifx_GTM_DPLL_AOSV_2 AOSV_2;
       Ifx_GTM_DPLL_APT APT;
       Ifx_GTM_DPLL_APS APS;
       Ifx_GTM_DPLL_APT_2C APT_2C;
       Ifx_GTM_DPLL_APS_1C3 APS_1C3;
       Ifx_GTM_DPLL_NUTC NUTC;
       Ifx_GTM_DPLL_NUSC NUSC;
       Ifx_GTM_DPLL_NTI_CNT NTI_CNT;
       Ifx_GTM_DPLL_IRQ IRQ;
       Ifx_GTM_DPLL_EIRQ_EN EIRQ_EN;
       Ifx_UReg_8Bit reserved_54[92];
       Ifx_GTM_DPLL_INC_CNT1 INC_CNT1;
       Ifx_GTM_DPLL_INC_CNT2 INC_CNT2;
       Ifx_GTM_DPLL_APT_SYNC APT_SYNC;
       Ifx_GTM_DPLL_APS_SYNC APS_SYNC;
       Ifx_GTM_DPLL_TBU_TS0_T TBU_TS0_T;
       Ifx_GTM_DPLL_TBU_TS0_S TBU_TS0_S;
       Ifx_GTM_DPLL_ADD_IN_LD1 ADD_IN_LD1;
       Ifx_GTM_DPLL_ADD_IN_LD2 ADD_IN_LD2;
       Ifx_UReg_8Bit reserved_D0[44];
       Ifx_GTM_DPLL_STATUS STATUS;
       Ifx_GTM_DPLL_ID_PMTR ID_PMTR[32];
       Ifx_UReg_8Bit reserved_180[96];
       Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER CTRL_0_SHADOW_TRIGGER;
       Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE CTRL_0_SHADOW_STATE;
       Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER CTRL_1_SHADOW_TRIGGER;
       Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE CTRL_1_SHADOW_STATE;
       Ifx_UReg_8Bit reserved_1F0[12];
       Ifx_GTM_DPLL_RAM_INI RAM_INI;
       Ifx_GTM_DPLL_PSA PSA[32];
       Ifx_GTM_DPLL_DLA DLA[32];
       Ifx_GTM_DPLL_NA NA[32];
       Ifx_GTM_DPLL_DTA DTA[32];
       Ifx_GTM_DPLL_TS_T TS_T;
       Ifx_GTM_DPLL_TS_T_OLD TS_T_OLD;
       Ifx_GTM_DPLL_FTV_T FTV_T;
       Ifx_UReg_8Bit reserved_40C[4];
       Ifx_GTM_DPLL_TS_S TS_S;
       Ifx_GTM_DPLL_TS_S_OLD TS_S_OLD;
       Ifx_GTM_DPLL_FTV_S FTV_S;
       Ifx_UReg_8Bit reserved_41C[4];
       Ifx_GTM_DPLL_THMI THMI;
       Ifx_GTM_DPLL_THMA THMA;
       Ifx_GTM_DPLL_THVAL THVAL;
       Ifx_UReg_8Bit reserved_42C[4];
       Ifx_GTM_DPLL_TOV TOV;
       Ifx_GTM_DPLL_TOV_S TOV_S;
       Ifx_GTM_DPLL_ADD_IN_CAL1 ADD_IN_CAL1;
       Ifx_GTM_DPLL_ADD_IN_CAL2 ADD_IN_CAL2;
       Ifx_GTM_DPLL_MPVAL1 MPVAL1;
       Ifx_GTM_DPLL_MPVAL2 MPVAL2;
       Ifx_GTM_DPLL_NMB_T_TAR NMB_T_TAR;
       Ifx_GTM_DPLL_NMB_T_TAR_OLD NMB_T_TAR_OLD;
       Ifx_GTM_DPLL_NMB_S_TAR NMB_S_TAR;
       Ifx_GTM_DPLL_NMB_S_TAR_OLD NMB_S_TAR_OLD;
       Ifx_UReg_8Bit reserved_458[8];
       Ifx_GTM_DPLL_RCDT_TX RCDT_TX;
       Ifx_GTM_DPLL_RCDT_SX RCDT_SX;
       Ifx_GTM_DPLL_RCDT_TX_NOM RCDT_TX_NOM;
       Ifx_GTM_DPLL_RCDT_SX_NOM RCDT_SX_NOM;
       Ifx_GTM_DPLL_RDT_T_ACT RDT_T_ACT;
       Ifx_GTM_DPLL_RDT_S_ACT RDT_S_ACT;
       Ifx_GTM_DPLL_DT_T_ACT DT_T_ACT;
       Ifx_GTM_DPLL_DT_S_ACT DT_S_ACT;
       Ifx_GTM_DPLL_EDT_T EDT_T;
       Ifx_GTM_DPLL_MEDT_T MEDT_T;
       Ifx_GTM_DPLL_EDT_S EDT_S;
       Ifx_GTM_DPLL_MEDT_S MEDT_S;
       Ifx_GTM_DPLL_CDT_TX CDT_TX;
       Ifx_GTM_DPLL_CDT_SX CDT_SX;
       Ifx_GTM_DPLL_CDT_TX_NOM CDT_TX_NOM;
       Ifx_GTM_DPLL_CDT_SX_NOM CDT_SX_NOM;
       Ifx_GTM_DPLL_TLR TLR;
       Ifx_GTM_DPLL_SLR SLR;
       Ifx_UReg_8Bit reserved_4A8[88];
       Ifx_GTM_DPLL_PDT PDT[32];
       Ifx_UReg_8Bit reserved_580[64];
       Ifx_GTM_DPLL_MLS1 MLS1;
       Ifx_GTM_DPLL_MLS2 MLS2;
       Ifx_GTM_DPLL_CNT_NUM_1 CNT_NUM_1;
       Ifx_GTM_DPLL_CNT_NUM_2 CNT_NUM_2;
       Ifx_GTM_DPLL_PVT PVT;
       Ifx_UReg_8Bit reserved_5D4[12];
       Ifx_GTM_DPLL_PSTC PSTC;
       Ifx_GTM_DPLL_PSSC PSSC;
       Ifx_GTM_DPLL_PSTM PSTM;
       Ifx_GTM_DPLL_PSTM_OLD PSTM_OLD;
       Ifx_GTM_DPLL_PSSM PSSM;
       Ifx_GTM_DPLL_PSSM_OLD PSSM_OLD;
       Ifx_GTM_DPLL_NMB_T NMB_T;
       Ifx_GTM_DPLL_NMB_S NMB_S;
       Ifx_GTM_DPLL_RDT_S RDT_S[64];
       Ifx_GTM_DPLL_TSF_S TSF_S[64];
       Ifx_GTM_DPLL_ADT_S ADT_S[64];
       Ifx_GTM_DPLL_DT_S DT_S[64];
       Ifx_UReg_8Bit reserved_A00[1024];
       Ifx_GTM_DPLL_TSAC TSAC[32];
       Ifx_GTM_DPLL_PSAC PSAC[32];
       Ifx_GTM_DPLL_ACB ACB[8];
       Ifx_GTM_DPLL_CTRL_11 CTRL_11;
       Ifx_GTM_DPLL_THVAL2 THVAL2;
       Ifx_GTM_DPLL_TIDEL TIDEL;
       Ifx_GTM_DPLL_SIDEL SIDEL;
       Ifx_GTM_DPLL_APS_SYNC_EXT APS_SYNC_EXT;
       Ifx_GTM_DPLL_CTRL_EXT CTRL_EXT;
       Ifx_GTM_DPLL_APS_EXT APS_EXT;
       Ifx_GTM_DPLL_APS_1C3_EXT APS_1C3_EXT;
       Ifx_GTM_DPLL_STA STA;
       Ifx_GTM_DPLL_INCF1_OFFSET INCF1_OFFSET;
       Ifx_GTM_DPLL_INCF2_OFFSET INCF2_OFFSET;
       Ifx_GTM_DPLL_DT_T_START DT_T_START;
       Ifx_GTM_DPLL_DT_S_START DT_S_START;
       Ifx_GTM_DPLL_STA_MASK STA_MASK;
       Ifx_GTM_DPLL_STA_FLAG STA_FLAG;
       Ifx_GTM_DPLL_INC_CNT1_MASK INC_CNT1_MASK;
       Ifx_GTM_DPLL_INC_CNT2_MASK INC_CNT2_MASK;
       Ifx_GTM_DPLL_NUSC_EXT1 NUSC_EXT1;
       Ifx_GTM_DPLL_NUSC_EXT2 NUSC_EXT2;
       Ifx_GTM_DPLL_CTN_MIN CTN_MIN;
       Ifx_GTM_DPLL_CTN_MAX CTN_MAX;
       Ifx_GTM_DPLL_CSN_MIN CSN_MIN;
       Ifx_GTM_DPLL_CSN_MAX CSN_MAX;
       Ifx_UReg_8Bit reserved_F7C[12420];
       Ifx_UReg_32Bit RR2[4096];
} Ifx_GTM_DPLL;
# 9901 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MCS_RAM
{
       Ifx_UReg_32Bit MEM[2048];
       Ifx_UReg_32Bit MEM1[1024];
} Ifx_GTM_MCS_RAM;
# 9920 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_OCDS
{
       Ifx_GTM_OCDS_OTBU0T OTBU0T;
       Ifx_GTM_OCDS_OTBU1T OTBU1T;
       Ifx_GTM_OCDS_OTBU2T OTBU2T;
       Ifx_GTM_OCDS_OTBU3T OTBU3T;
       Ifx_GTM_OCDS_OTSS OTSS;
       Ifx_GTM_OCDS_OTSC0 OTSC0;
       Ifx_GTM_OCDS_OTSC1 OTSC1;
       Ifx_GTM_OCDS_ODA ODA;
       Ifx_GTM_OCDS_OCS OCS;
} Ifx_GTM_OCDS;
# 9946 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_DSADC
{
       Ifx_GTM_DSADC_OUTSEL0 OUTSEL0;
       Ifx_GTM_DSADC_OUTSEL1 OUTSEL1;
} Ifx_GTM_DSADC;
# 9965 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ADCTRIG
{
       Ifx_GTM_ADCTRIG_OUT0 OUT0;
       Ifx_GTM_ADCTRIG_OUT1 OUT1;
} Ifx_GTM_ADCTRIG;
# 9984 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MSC_SET
{
       Ifx_GTM_MSC_SET_CON0 CON0;
       Ifx_GTM_MSC_SET_CON1 CON1;
       Ifx_GTM_MSC_SET_CON2 CON2;
       Ifx_GTM_MSC_SET_CON3 CON3;
} Ifx_GTM_MSC_SET;
# 10005 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MSC_MSCQ
{
       Ifx_GTM_MSC_MSCQ_INLCON INLCON;
       Ifx_GTM_MSC_MSCQ_INHCON INHCON;
       Ifx_GTM_MSC_MSCQ_INLEXTCON INLEXTCON;
} Ifx_GTM_MSC_MSCQ;
# 10025 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MSC
{
       Ifx_GTM_MSC_SET SET[7];
       Ifx_UReg_8Bit reserved_70[32];
       Ifx_GTM_MSC_MSCQ MSCQ[3];
} Ifx_GTM_MSC;
# 10045 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CCM_ARP
{
       Ifx_GTM_CCM_ARP_CTRL CTRL;
       Ifx_GTM_CCM_ARP_PROT PROT;
} Ifx_GTM_CCM_ARP;
# 10064 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CCM
{
       Ifx_GTM_CCM_ARP ARP[10];
       Ifx_UReg_8Bit reserved_50[392];
       Ifx_GTM_CCM_AEIM_STA AEIM_STA;
       Ifx_GTM_CCM_HW_CONF HW_CONF;
       Ifx_GTM_CCM_TIM_AUX_IN_SRC TIM_AUX_IN_SRC;
       Ifx_GTM_CCM_EXT_CAP_EN EXT_CAP_EN;
       Ifx_GTM_CCM_TOM_OUT TOM_OUT;
       Ifx_GTM_CCM_ATOM_OUT ATOM_OUT;
       Ifx_GTM_CCM_CMU_CLK_CFG CMU_CLK_CFG;
       Ifx_GTM_CCM_CMU_FXCLK_CFG CMU_FXCLK_CFG;
       Ifx_GTM_CCM_CFG CFG;
       Ifx_GTM_CCM_PROT PROT;
} Ifx_GTM_CCM;
# 10093 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CDTM_DTM_CH
{
       Ifx_GTM_CDTM_DTM_CH_DTV DTV;
} Ifx_GTM_CDTM_DTM_CH;
# 10111 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CDTM_DTM
{
       Ifx_GTM_CDTM_DTM_CTRL CTRL;
       Ifx_GTM_CDTM_DTM_CH_CTRL1 CH_CTRL1;
       Ifx_GTM_CDTM_DTM_CH_CTRL2 CH_CTRL2;
       Ifx_GTM_CDTM_DTM_CH_CTRL2_SR CH_CTRL2_SR;
       Ifx_GTM_CDTM_DTM_PS_CTRL PS_CTRL;
       Ifx_GTM_CDTM_DTM_CH CH[4];
       Ifx_GTM_CDTM_DTM_CH_SR CH_SR;
       Ifx_GTM_CDTM_DTM_CH_CTRL3 CH_CTRL3;
       Ifx_UReg_8Bit reserved_2C[20];
} Ifx_GTM_CDTM_DTM;
# 10137 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CDTM
{
       Ifx_GTM_CDTM_DTM DTM[6];
       Ifx_UReg_8Bit reserved_180[640];
} Ifx_GTM_CDTM;
# 10156 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ATOM_CH_IRQ
{
       Ifx_GTM_ATOM_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_ATOM_CH_IRQ_EN EN;
       Ifx_GTM_ATOM_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_ATOM_CH_IRQ_MODE MODE;
} Ifx_GTM_ATOM_CH_IRQ;
# 10177 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ATOM_CH
{
       Ifx_GTM_ATOM_CH_RDADDR RDADDR;
       union
       {
            Ifx_GTM_ATOM_CH_CTRL CTRL;
            Ifx_GTM_ATOM_CH_SOMB SOMB;
            Ifx_GTM_ATOM_CH_SOMC SOMC;
            Ifx_GTM_ATOM_CH_SOMI SOMI;
            Ifx_GTM_ATOM_CH_SOMP SOMP;
            Ifx_GTM_ATOM_CH_SOMS SOMS;
       };
       Ifx_GTM_ATOM_CH_SR0 SR0;
       Ifx_GTM_ATOM_CH_SR1 SR1;
       Ifx_GTM_ATOM_CH_CM0 CM0;
       Ifx_GTM_ATOM_CH_CM1 CM1;
       Ifx_GTM_ATOM_CH_CN0 CN0;
       Ifx_GTM_ATOM_CH_STAT STAT;
       Ifx_GTM_ATOM_CH_IRQ IRQ;
} Ifx_GTM_ATOM_CH;
# 10211 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ATOM_AGC
{
       Ifx_GTM_ATOM_AGC_GLB_CTRL GLB_CTRL;
       Ifx_GTM_ATOM_AGC_ENDIS_CTRL ENDIS_CTRL;
       Ifx_GTM_ATOM_AGC_ENDIS_STAT ENDIS_STAT;
       Ifx_GTM_ATOM_AGC_ACT_TB ACT_TB;
       Ifx_GTM_ATOM_AGC_OUTEN_CTRL OUTEN_CTRL;
       Ifx_GTM_ATOM_AGC_OUTEN_STAT OUTEN_STAT;
       Ifx_GTM_ATOM_AGC_FUPD_CTRL FUPD_CTRL;
       Ifx_GTM_ATOM_AGC_INT_TRIG INT_TRIG;
       Ifx_UReg_8Bit reserved_20[32];
} Ifx_GTM_ATOM_AGC;
# 10237 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ATOM
{
       Ifx_GTM_ATOM_CH CH0;
       Ifx_UReg_8Bit reserved_30[16];
       Ifx_GTM_ATOM_AGC AGC;
       Ifx_GTM_ATOM_CH CH1;
       Ifx_UReg_8Bit reserved_B0[80];
       Ifx_GTM_ATOM_CH CH2;
       Ifx_UReg_8Bit reserved_130[80];
       Ifx_GTM_ATOM_CH CH3;
       Ifx_UReg_8Bit reserved_1B0[80];
       Ifx_GTM_ATOM_CH CH4;
       Ifx_UReg_8Bit reserved_230[80];
       Ifx_GTM_ATOM_CH CH5;
       Ifx_UReg_8Bit reserved_2B0[80];
       Ifx_GTM_ATOM_CH CH6;
       Ifx_UReg_8Bit reserved_330[80];
       Ifx_GTM_ATOM_CH CH7;
       Ifx_UReg_8Bit reserved_3B0[1104];
} Ifx_GTM_ATOM;
# 10271 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MCS_CH_IRQ
{
       Ifx_GTM_MCS_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_MCS_CH_IRQ_EN EN;
       Ifx_GTM_MCS_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_MCS_CH_IRQ_MODE MODE;
} Ifx_GTM_MCS_CH_IRQ;
# 10292 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MCS_CH
{
       Ifx_GTM_MCS_CH_R R[8];
       Ifx_GTM_MCS_CH_CTRL CTRL;
       Ifx_GTM_MCS_CH_ACB ACB;
       Ifx_GTM_MCS_CH_CTRG CTRG;
       Ifx_GTM_MCS_CH_STRG STRG;
       Ifx_UReg_8Bit reserved_30[12];
       Ifx_GTM_MCS_CH_MHB MHB;
       Ifx_GTM_MCS_CH_PC PC;
       Ifx_GTM_MCS_CH_IRQ IRQ;
       Ifx_GTM_MCS_CH_EIRQ_EN EIRQ_EN;
} Ifx_GTM_MCS_CH;
# 10319 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MCS
{
       Ifx_GTM_MCS_CH CH0;
       Ifx_UReg_8Bit reserved_58[8];
       Ifx_GTM_MCS_REG_PROT REG_PROT;
       Ifx_GTM_MCS_CTRL_STAT CTRL_STAT;
       Ifx_GTM_MCS_RESET RESET;
       Ifx_GTM_MCS_CAT CAT;
       Ifx_GTM_MCS_CWT CWT;
       Ifx_UReg_8Bit reserved_74[8];
       Ifx_GTM_MCS_ERR ERR;
       Ifx_GTM_MCS_CH CH1;
       Ifx_UReg_8Bit reserved_D8[40];
       Ifx_GTM_MCS_CH CH2;
       Ifx_UReg_8Bit reserved_158[40];
       Ifx_GTM_MCS_CH CH3;
       Ifx_UReg_8Bit reserved_1D8[40];
       Ifx_GTM_MCS_CH CH4;
       Ifx_UReg_8Bit reserved_258[40];
       Ifx_GTM_MCS_CH CH5;
       Ifx_UReg_8Bit reserved_2D8[40];
       Ifx_GTM_MCS_CH CH6;
       Ifx_UReg_8Bit reserved_358[40];
       Ifx_GTM_MCS_CH CH7;
       Ifx_UReg_8Bit reserved_3D8[3112];
} Ifx_GTM_MCS;
# 10359 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM
{
       Ifx_GTM_REV REV;
       Ifx_GTM_RST RST;
       Ifx_GTM_CTRL CTRL;
       Ifx_GTM_AEI_ADDR_XPT AEI_ADDR_XPT;
       Ifx_GTM_IRQ IRQ;
       Ifx_GTM_EIRQ_EN EIRQ_EN;
       Ifx_GTM_HW_CONF HW_CONF;
       Ifx_GTM_CFG CFG;
       Ifx_GTM_AEI_STA_XPT AEI_STA_XPT;
       Ifx_GTM_BRIDGE BRIDGE;
       Ifx_GTM_MCS_AEM_DIS MCS_AEM_DIS;
       Ifx_GTM_AUX_IN_SRC AUX_IN_SRC;
       Ifx_GTM_EXT_CAP_EN EXT_CAP_EN[7];
       Ifx_UReg_8Bit reserved_78[8];
       Ifx_GTM_OUT OUT;
       Ifx_GTM_CLS_CLK_CFG CLS_CLK_CFG;
       Ifx_UReg_8Bit reserved_B4[76];
       Ifx_GTM_TBU TBU;
       Ifx_UReg_8Bit reserved_12C[84];
       Ifx_GTM_MON MON;
       Ifx_UReg_8Bit reserved_1B4[76];
       Ifx_GTM_CMP CMP;
       Ifx_UReg_8Bit reserved_218[104];
       Ifx_GTM_ARU ARU;
       Ifx_GTM_CMU CMU;
       Ifx_UReg_8Bit reserved_350[176];
       Ifx_GTM_BRC BRC;
       Ifx_UReg_8Bit reserved_478[392];
       Ifx_GTM_ICM ICM;
       Ifx_UReg_8Bit reserved_7AC[84];
       Ifx_GTM_SPE SPE[4];
       Ifx_UReg_8Bit reserved_A00[1280];
       Ifx_GTM_MAP_CTRL MAP_CTRL;
       Ifx_UReg_8Bit reserved_F04[60];
       Ifx_GTM_MCFG_CTRL MCFG_CTRL;
       Ifx_UReg_8Bit reserved_F44[188];
       Ifx_GTM_TIM TIM[7];
       Ifx_UReg_8Bit reserved_4800[14336];
       Ifx_GTM_TOM TOM[5];
       Ifx_UReg_8Bit reserved_A800[55296];
       Ifx_GTM_PSM PSM[2];
       Ifx_UReg_8Bit reserved_20000[32768];
       Ifx_GTM_DPLL DPLL;
       Ifx_UReg_8Bit reserved_30000[457984];
       Ifx_GTM_CLC CLC;
       Ifx_GTM_RESET_CLR RESET_CLR;
       Ifx_GTM_RESET1 RESET1;
       Ifx_GTM_RESET2 RESET2;
       Ifx_GTM_ACCEN0 ACCEN0;
       Ifx_GTM_ACCEN1 ACCEN1;
       Ifx_GTM_OCDS OCDS;
       Ifx_UReg_8Bit reserved_9FD3C[4];
       Ifx_GTM_TIMINSEL TIMINSEL[7];
       Ifx_UReg_8Bit reserved_9FD5C[4];
       Ifx_GTM_TOUTSEL TOUTSEL[34];
       Ifx_UReg_8Bit reserved_9FDE8[24];
       Ifx_GTM_DSADCINSEL DSADCINSEL[6];
       Ifx_UReg_8Bit reserved_9FE18[8];
       Ifx_GTM_DSADC DSADC[4];
       Ifx_GTM_ADCTRIG ADCTRIG[5];
       Ifx_UReg_8Bit reserved_9FE68[8];
       Ifx_GTM_DXOUTCON DXOUTCON;
       Ifx_GTM_TRIGOUT TRIGOUT[7];
       Ifx_UReg_8Bit reserved_9FE90[12];
       Ifx_GTM_INTOUT INTOUT[7];
       Ifx_UReg_8Bit reserved_9FEB8[12];
       Ifx_GTM_MCSTRIGOUTSEL MCSTRIGOUTSEL;
       Ifx_GTM_MCSINTSTAT MCSINTSTAT;
       Ifx_GTM_MCSINTCLR MCSINTCLR;
       Ifx_GTM_DXINCON DXINCON;
       Ifx_GTM_DATAIN DATAIN[7];
       Ifx_UReg_8Bit reserved_9FEF0[16];
       Ifx_GTM_MSC MSC;
       Ifx_UReg_8Bit reserved_9FFB4[24];
       Ifx_GTM_PSI5OUTSEL PSI5OUTSEL;
       Ifx_GTM_PSI5SOUTSEL PSI5SOUTSEL;
       Ifx_GTM_LCDCDCOUTSEL LCDCDCOUTSEL;
       Ifx_GTM_DTMAUXINSEL DTMAUXINSEL;
       Ifx_GTM_CANOUTSEL0 CANOUTSEL0;
       Ifx_GTM_CANOUTSEL1 CANOUTSEL1;
       Ifx_UReg_8Bit reserved_9FFE4[270364];
       Ifx_GTM_CCM CCM[9];
       Ifx_UReg_8Bit reserved_E3200[3584];
       Ifx_GTM_CDTM CDTM[6];
       Ifx_UReg_8Bit reserved_E5800[10240];
       Ifx_GTM_ATOM ATOM[9];
       Ifx_UReg_8Bit reserved_EC800[14336];
       Ifx_GTM_MCS MCS[7];
       Ifx_UReg_8Bit reserved_F7000[36864];
} Ifx_GTM;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_reg.h" 2
# 2 ".\\output\\inc/IfxGtm_reg.h" 2
# 76 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2

# 1 ".\\output\\inc/IfxScu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN00_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_SCU_ACCEN00_Bits;


typedef struct _Ifx_SCU_ACCEN01_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_SCU_ACCEN01_Bits;


typedef struct _Ifx_SCU_ACCEN10_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_SCU_ACCEN10_Bits;


typedef struct _Ifx_SCU_ACCEN11_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_SCU_ACCEN11_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    Ifx_UReg_32Bit STM0DIS:1;
    Ifx_UReg_32Bit STM1DIS:1;
    Ifx_UReg_32Bit STM2DIS:1;
    Ifx_UReg_32Bit STM3DIS:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    Ifx_UReg_32Bit STMDIV:4;
    Ifx_UReg_32Bit GTMDIV:4;
    Ifx_UReg_32Bit SRIDIV:4;
    Ifx_UReg_32Bit LPDIV:3;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit SPBDIV:4;
    Ifx_UReg_32Bit BBBDIV:4;
    Ifx_UReg_32Bit FSIDIV:2;
    Ifx_UReg_32Bit FSI2DIV:2;
    Ifx_UReg_32Bit CLKSEL:2;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    Ifx_UReg_32Bit MCANDIV:4;
    Ifx_UReg_32Bit CLKSELMCAN:2;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit PLL1DIVDIS:1;
    Ifx_UReg_32Bit I2CDIV:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit MSCDIV:4;
    Ifx_UReg_32Bit CLKSELMSC:2;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit QSPIDIV:4;
    Ifx_UReg_32Bit CLKSELQSPI:2;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    Ifx_UReg_32Bit ASCLINFDIV:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit ASCLINSDIV:4;
    Ifx_UReg_32Bit CLKSELASCLINS:2;
    Ifx_UReg_32Bit reserved_14:10;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit ERAYPERON:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit reserved_27:4;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    Ifx_UReg_32Bit PLL0MONEN:1;
    Ifx_UReg_32Bit PLL1MONEN:1;
    Ifx_UReg_32Bit PLL2MONEN:1;
    Ifx_UReg_32Bit SPBMONEN:1;
    Ifx_UReg_32Bit BACKMONEN:1;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit PLL0MONTST:1;
    Ifx_UReg_32Bit PLL1MONTST:1;
    Ifx_UReg_32Bit PLL2MONTST:1;
    Ifx_UReg_32Bit SPBMONTST:1;
    Ifx_UReg_32Bit BACKMONTST:1;
    Ifx_UReg_32Bit reserved_13:11;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    Ifx_UReg_32Bit LOTHR:12;
    Ifx_UReg_32Bit UPTHR:12;
    Ifx_UReg_32Bit MONEN:1;
    Ifx_UReg_32Bit MONTST:1;
    Ifx_UReg_32Bit reserved_26:4;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    Ifx_UReg_32Bit GETHDIV:4;
    Ifx_UReg_32Bit MCANHDIV:4;
    Ifx_UReg_32Bit reserved_8:4;
    Ifx_UReg_32Bit reserved_12:18;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    Ifx_UReg_32Bit CPU0DIV:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CCUCON7_Bits
{
    Ifx_UReg_32Bit CPU1DIV:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_CCUCON7_Bits;


typedef struct _Ifx_SCU_CCUCON8_Bits
{
    Ifx_UReg_32Bit CPU2DIV:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_CCUCON8_Bits;


typedef struct _Ifx_SCU_CCUCON9_Bits
{
    Ifx_UReg_32Bit CPU3DIV:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_CCUCON9_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    Ifx_UReg_32Bit CHREV:6;
    Ifx_UReg_32Bit CHTEC:2;
    Ifx_UReg_32Bit CHPK:4;
    Ifx_UReg_32Bit CHID:4;
    Ifx_UReg_32Bit EEA:1;
    Ifx_UReg_32Bit UCODE:7;
    Ifx_UReg_32Bit FSIZE:4;
    Ifx_UReg_32Bit VART:3;
    Ifx_UReg_32Bit SEC:1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCLIM_Bits
{
    Ifx_UReg_32Bit LOWER:12;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit BGPOK:1;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit LLU:1;
    Ifx_UReg_32Bit UPPER:12;
    Ifx_UReg_32Bit INTEN:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit INT:1;
    Ifx_UReg_32Bit UOF:1;
} Ifx_SCU_DTSCLIM_Bits;


typedef struct _Ifx_SCU_DTSCSTAT_Bits
{
    Ifx_UReg_32Bit RESULT:12;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_SCU_DTSCSTAT_Bits;


typedef struct _Ifx_SCU_EICON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int ENDINIT:1;
    volatile unsigned int EPW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_EICON0_Bits;


typedef struct _Ifx_SCU_EICON1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit IR0:1;
    Ifx_UReg_32Bit DR:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit IR1:1;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_EICON1_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit EXIS0:3;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit FEN0:1;
    Ifx_UReg_32Bit REN0:1;
    Ifx_UReg_32Bit LDEN0:1;
    Ifx_UReg_32Bit EIEN0:1;
    Ifx_UReg_32Bit INP0:3;
    Ifx_UReg_32Bit reserved_15:5;
    Ifx_UReg_32Bit EXIS1:3;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit FEN1:1;
    Ifx_UReg_32Bit REN1:1;
    Ifx_UReg_32Bit LDEN1:1;
    Ifx_UReg_32Bit EIEN1:1;
    Ifx_UReg_32Bit INP1:3;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFILT_Bits
{
    Ifx_UReg_32Bit FILRQ0A:1;
    Ifx_UReg_32Bit FILRQ5A:1;
    Ifx_UReg_32Bit FILRQ2A:1;
    Ifx_UReg_32Bit FILRQ3A:1;
    Ifx_UReg_32Bit FILRQ0C:1;
    Ifx_UReg_32Bit FILRQ1C:1;
    Ifx_UReg_32Bit FILRQ3C:1;
    Ifx_UReg_32Bit FILRQ2C:1;
    Ifx_UReg_32Bit FILRQ4A:1;
    Ifx_UReg_32Bit FILRQ6A:1;
    Ifx_UReg_32Bit FILRQ1A:1;
    Ifx_UReg_32Bit FILRQ7A:1;
    Ifx_UReg_32Bit FILRQ6D:1;
    Ifx_UReg_32Bit FILRQ4D:1;
    Ifx_UReg_32Bit FILRQ2B:1;
    Ifx_UReg_32Bit FILRQ3B:1;
    Ifx_UReg_32Bit FILRQ7C:1;
    Ifx_UReg_32Bit reserved_17:7;
    Ifx_UReg_32Bit FILTDIV:4;
    Ifx_UReg_32Bit DEPTH:4;
} Ifx_SCU_EIFILT_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    Ifx_UReg_32Bit INTF0:1;
    Ifx_UReg_32Bit INTF1:1;
    Ifx_UReg_32Bit INTF2:1;
    Ifx_UReg_32Bit INTF3:1;
    Ifx_UReg_32Bit INTF4:1;
    Ifx_UReg_32Bit INTF5:1;
    Ifx_UReg_32Bit INTF6:1;
    Ifx_UReg_32Bit INTF7:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EISR_Bits
{
    Ifx_UReg_32Bit AE:1;
    Ifx_UReg_32Bit OE:1;
    Ifx_UReg_32Bit IS0:1;
    Ifx_UReg_32Bit DS:1;
    Ifx_UReg_32Bit TO:1;
    Ifx_UReg_32Bit IS1:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit TIM:16;
} Ifx_SCU_EISR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    Ifx_UReg_32Bit POL:1;
    Ifx_UReg_32Bit MODE:1;
    Ifx_UReg_32Bit ENON:1;
    Ifx_UReg_32Bit PSEL:1;
    Ifx_UReg_32Bit reserved_4:12;
    Ifx_UReg_32Bit EMSF:1;
    Ifx_UReg_32Bit SEMSF:1;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_EMSSW_Bits
{
    Ifx_UReg_32Bit reserved_0:24;
    Ifx_UReg_32Bit EMSFM:2;
    Ifx_UReg_32Bit SEMSFM:2;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SCU_EMSSW_Bits;


typedef struct _Ifx_SCU_ESRCFGX_ESRCFGX_Bits
{
    Ifx_UReg_32Bit reserved_0:7;
    Ifx_UReg_32Bit EDCON:2;
    Ifx_UReg_32Bit reserved_9:23;
} Ifx_SCU_ESRCFGX_ESRCFGX_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    Ifx_UReg_32Bit ARI:1;
    Ifx_UReg_32Bit ARC:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit NSEL:1;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit DIV1:8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    Ifx_UReg_32Bit STEP:10;
    Ifx_UReg_32Bit reserved_10:4;
    Ifx_UReg_32Bit DM:2;
    Ifx_UReg_32Bit RESULT:10;
    Ifx_UReg_32Bit reserved_26:5;
    Ifx_UReg_32Bit DISCLK:1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    Ifx_UReg_32Bit FS0:1;
    Ifx_UReg_32Bit FS1:1;
    Ifx_UReg_32Bit FS2:1;
    Ifx_UReg_32Bit FS3:1;
    Ifx_UReg_32Bit FS4:1;
    Ifx_UReg_32Bit FS5:1;
    Ifx_UReg_32Bit FS6:1;
    Ifx_UReg_32Bit FS7:1;
    Ifx_UReg_32Bit reserved_8:8;
    Ifx_UReg_32Bit FC0:1;
    Ifx_UReg_32Bit FC1:1;
    Ifx_UReg_32Bit FC2:1;
    Ifx_UReg_32Bit FC3:1;
    Ifx_UReg_32Bit FC4:1;
    Ifx_UReg_32Bit FC5:1;
    Ifx_UReg_32Bit FC6:1;
    Ifx_UReg_32Bit FC7:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    Ifx_UReg_32Bit IPEN00:1;
    Ifx_UReg_32Bit IPEN01:1;
    Ifx_UReg_32Bit IPEN02:1;
    Ifx_UReg_32Bit IPEN03:1;
    Ifx_UReg_32Bit IPEN04:1;
    Ifx_UReg_32Bit IPEN05:1;
    Ifx_UReg_32Bit IPEN06:1;
    Ifx_UReg_32Bit IPEN07:1;
    Ifx_UReg_32Bit reserved_8:5;
    Ifx_UReg_32Bit GEEN0:1;
    Ifx_UReg_32Bit IGP0:2;
    Ifx_UReg_32Bit IPEN10:1;
    Ifx_UReg_32Bit IPEN11:1;
    Ifx_UReg_32Bit IPEN12:1;
    Ifx_UReg_32Bit IPEN13:1;
    Ifx_UReg_32Bit IPEN14:1;
    Ifx_UReg_32Bit IPEN15:1;
    Ifx_UReg_32Bit IPEN16:1;
    Ifx_UReg_32Bit IPEN17:1;
    Ifx_UReg_32Bit reserved_24:5;
    Ifx_UReg_32Bit GEEN1:1;
    Ifx_UReg_32Bit IGP1:2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    Ifx_UReg_32Bit P0:1;
    Ifx_UReg_32Bit P1:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit PC0:4;
    Ifx_UReg_32Bit reserved_8:4;
    Ifx_UReg_32Bit PC1:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    Ifx_UReg_32Bit LBISTREQ:1;
    Ifx_UReg_32Bit LBISTRES:1;
    Ifx_UReg_32Bit PATTERNS:18;
    Ifx_UReg_32Bit reserved_20:8;
    Ifx_UReg_32Bit LBISTDONE:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit LBISTERRINJ:1;
    Ifx_UReg_32Bit LBISTREQRED:1;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    Ifx_UReg_32Bit SEED:19;
    Ifx_UReg_32Bit reserved_19:5;
    Ifx_UReg_32Bit SPLITSH:3;
    Ifx_UReg_32Bit BODY:1;
    Ifx_UReg_32Bit LBISTFREQU:4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    Ifx_UReg_32Bit LENGTH:12;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LBISTCTRL3_Bits
{
    Ifx_UReg_32Bit SIGNATURE:32;
} Ifx_SCU_LBISTCTRL3_Bits;


typedef struct _Ifx_SCU_LCLCON0_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:14;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit LS0:1;
    Ifx_UReg_32Bit reserved_17:14;
    Ifx_UReg_32Bit LSEN0:1;
} Ifx_SCU_LCLCON0_Bits;


typedef struct _Ifx_SCU_LCLCON1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:14;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit LS1:1;
    Ifx_UReg_32Bit reserved_17:14;
    Ifx_UReg_32Bit LSEN1:1;
} Ifx_SCU_LCLCON1_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    Ifx_UReg_32Bit LCLT0:1;
    Ifx_UReg_32Bit LCLT1:1;
    Ifx_UReg_32Bit LCLT2:1;
    Ifx_UReg_32Bit LCLT3:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit PLCLT0:1;
    Ifx_UReg_32Bit PLCLT1:1;
    Ifx_UReg_32Bit PLCLT2:1;
    Ifx_UReg_32Bit PLCLT3:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:10;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    Ifx_UReg_32Bit DEPT:5;
    Ifx_UReg_32Bit MANUF:11;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    Ifx_UReg_32Bit PS0:1;
    Ifx_UReg_32Bit PS1:1;
    Ifx_UReg_32Bit reserved_2:14;
    Ifx_UReg_32Bit PCL0:1;
    Ifx_UReg_32Bit PCL1:1;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit PLLLV:1;
    Ifx_UReg_32Bit OSCRES:1;
    Ifx_UReg_32Bit GAINSEL:2;
    Ifx_UReg_32Bit MODE:2;
    Ifx_UReg_32Bit SHBY:1;
    Ifx_UReg_32Bit PLLHV:1;
    Ifx_UReg_32Bit HYSEN:1;
    Ifx_UReg_32Bit HYSCTL:2;
    Ifx_UReg_32Bit AMPCTL:2;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit OSCVAL:5;
    Ifx_UReg_32Bit reserved_21:2;
    Ifx_UReg_32Bit APREN:1;
    Ifx_UReg_32Bit CAP0EN:1;
    Ifx_UReg_32Bit CAP1EN:1;
    Ifx_UReg_32Bit CAP2EN:1;
    Ifx_UReg_32Bit CAP3EN:1;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    Ifx_UReg_32Bit P0:1;
    Ifx_UReg_32Bit P1:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    Ifx_UReg_32Bit CSEL0:1;
    Ifx_UReg_32Bit CSEL1:1;
    Ifx_UReg_32Bit CSEL2:1;
    Ifx_UReg_32Bit CSEL3:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit OVSTRT:1;
    Ifx_UReg_32Bit OVSTP:1;
    Ifx_UReg_32Bit DCINVAL:1;
    Ifx_UReg_32Bit reserved_19:5;
    Ifx_UReg_32Bit OVCONF:1;
    Ifx_UReg_32Bit POVCONF:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    Ifx_UReg_32Bit OVEN0:1;
    Ifx_UReg_32Bit OVEN1:1;
    Ifx_UReg_32Bit OVEN2:1;
    Ifx_UReg_32Bit OVEN3:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    Ifx_UReg_32Bit PDIS0:1;
    Ifx_UReg_32Bit PDIS1:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    Ifx_UReg_32Bit PD0:2;
    Ifx_UReg_32Bit PL0:2;
    Ifx_UReg_32Bit PD1:2;
    Ifx_UReg_32Bit PL1:2;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    Ifx_UReg_32Bit PDR0:1;
    Ifx_UReg_32Bit PDR1:1;
    Ifx_UReg_32Bit PDR2:1;
    Ifx_UReg_32Bit PDR3:1;
    Ifx_UReg_32Bit PDR4:1;
    Ifx_UReg_32Bit PDR5:1;
    Ifx_UReg_32Bit PDR6:1;
    Ifx_UReg_32Bit PDR7:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PERPLLCON0_Bits
{
    Ifx_UReg_32Bit DIVBY:1;
    Ifx_UReg_32Bit reserved_1:8;
    Ifx_UReg_32Bit NDIV:7;
    Ifx_UReg_32Bit PLLPWD:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit RESLD:1;
    Ifx_UReg_32Bit reserved_19:5;
    Ifx_UReg_32Bit PDIV:3;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_SCU_PERPLLCON0_Bits;


typedef struct _Ifx_SCU_PERPLLCON1_Bits
{
    Ifx_UReg_32Bit K2DIV:3;
    Ifx_UReg_32Bit reserved_3:5;
    Ifx_UReg_32Bit K3DIV:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PERPLLCON1_Bits;


typedef struct _Ifx_SCU_PERPLLSTAT_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit PWDSTAT:1;
    Ifx_UReg_32Bit LOCK:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit K3RDY:1;
    Ifx_UReg_32Bit K2RDY:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_SCU_PERPLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR0_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR0_Bits;


typedef struct _Ifx_SCU_PMCSR1_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR1_Bits;


typedef struct _Ifx_SCU_PMCSR2_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR2_Bits;


typedef struct _Ifx_SCU_PMCSR3_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR3_Bits;


typedef struct _Ifx_SCU_PMCSR4_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR4_Bits;


typedef struct _Ifx_SCU_PMCSR5_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR5_Bits;


typedef struct _Ifx_SCU_PMSTAT0_Bits
{
    Ifx_UReg_32Bit CPU0:1;
    Ifx_UReg_32Bit CPU1:1;
    Ifx_UReg_32Bit CPU2:1;
    Ifx_UReg_32Bit CPU3:1;
    Ifx_UReg_32Bit CPU4:1;
    Ifx_UReg_32Bit CPU5:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit CPU0LS:1;
    Ifx_UReg_32Bit CPU1LS:1;
    Ifx_UReg_32Bit CPU2LS:1;
    Ifx_UReg_32Bit CPU3LS:1;
    Ifx_UReg_32Bit reserved_20:12;
} Ifx_SCU_PMSTAT0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    Ifx_UReg_32Bit reserved_0:8;
    Ifx_UReg_32Bit CPUIDLSEL:3;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit IRADIS:1;
    Ifx_UReg_32Bit reserved_13:11;
    Ifx_UReg_32Bit CPUSEL:3;
    Ifx_UReg_32Bit STBYEVEN:1;
    Ifx_UReg_32Bit STBYEV:3;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMTRCSR0_Bits
{
    Ifx_UReg_32Bit LJTEN:1;
    Ifx_UReg_32Bit LJTOVEN:1;
    Ifx_UReg_32Bit LJTOVIEN:1;
    Ifx_UReg_32Bit LJTSTRT:1;
    Ifx_UReg_32Bit LJTSTP:1;
    Ifx_UReg_32Bit LJTCLR:1;
    Ifx_UReg_32Bit reserved_6:6;
    Ifx_UReg_32Bit SDSTEP:4;
    Ifx_UReg_32Bit VDTEN:1;
    Ifx_UReg_32Bit VDTOVEN:1;
    Ifx_UReg_32Bit VDTOVIEN:1;
    Ifx_UReg_32Bit VDTSTRT:1;
    Ifx_UReg_32Bit VDTSTP:1;
    Ifx_UReg_32Bit VDTCLR:1;
    Ifx_UReg_32Bit reserved_22:7;
    Ifx_UReg_32Bit LPSLPEN:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_SCU_PMTRCSR0_Bits;


typedef struct _Ifx_SCU_PMTRCSR1_Bits
{
    Ifx_UReg_32Bit LJTCV:16;
    Ifx_UReg_32Bit VDTCV:10;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_SCU_PMTRCSR1_Bits;


typedef struct _Ifx_SCU_PMTRCSR2_Bits
{
    Ifx_UReg_32Bit LDJMPREQ:2;
    Ifx_UReg_32Bit reserved_2:2;
    Ifx_UReg_32Bit LJTRUN:2;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit LJTOV:1;
    Ifx_UReg_32Bit reserved_9:3;
    Ifx_UReg_32Bit LJTOVCLR:1;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit LJTCNT:16;
} Ifx_SCU_PMTRCSR2_Bits;


typedef struct _Ifx_SCU_PMTRCSR3_Bits
{
    Ifx_UReg_32Bit VDROOPREQ:2;
    Ifx_UReg_32Bit reserved_2:2;
    Ifx_UReg_32Bit VDTRUN:2;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit VDTOV:1;
    Ifx_UReg_32Bit reserved_9:3;
    Ifx_UReg_32Bit VDTOVCLR:1;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit VDTCNT:10;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_SCU_PMTRCSR3_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    Ifx_UReg_32Bit ESR0:2;
    Ifx_UReg_32Bit ESR1:2;
    Ifx_UReg_32Bit reserved_4:2;
    Ifx_UReg_32Bit SMU:2;
    Ifx_UReg_32Bit SW:2;
    Ifx_UReg_32Bit STM0:2;
    Ifx_UReg_32Bit STM1:2;
    Ifx_UReg_32Bit STM2:2;
    Ifx_UReg_32Bit STM3:2;
    Ifx_UReg_32Bit reserved_18:2;
    Ifx_UReg_32Bit reserved_20:2;
    Ifx_UReg_32Bit reserved_22:10;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    Ifx_UReg_32Bit FRTO:1;
    Ifx_UReg_32Bit CLRC:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit CSSX:6;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit USRINFO:16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON3_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_SCU_RSTCON3_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    Ifx_UReg_32Bit ESR0:1;
    Ifx_UReg_32Bit ESR1:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit SMU:1;
    Ifx_UReg_32Bit SW:1;
    Ifx_UReg_32Bit STM0:1;
    Ifx_UReg_32Bit STM1:1;
    Ifx_UReg_32Bit STM2:1;
    Ifx_UReg_32Bit STM3:1;
    Ifx_UReg_32Bit reserved_9:1;
    Ifx_UReg_32Bit reserved_10:1;
    Ifx_UReg_32Bit reserved_11:5;
    Ifx_UReg_32Bit PORST:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit CB0:1;
    Ifx_UReg_32Bit CB1:1;
    Ifx_UReg_32Bit CB3:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit EVRC:1;
    Ifx_UReg_32Bit EVR33:1;
    Ifx_UReg_32Bit SWD:1;
    Ifx_UReg_32Bit HSMS:1;
    Ifx_UReg_32Bit HSMA:1;
    Ifx_UReg_32Bit STBYR:1;
    Ifx_UReg_32Bit LBPORST:1;
    Ifx_UReg_32Bit LBTERM:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SEICON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int ENDINIT:1;
    volatile unsigned int EPW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_SEICON0_Bits;


typedef struct _Ifx_SCU_SEICON1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit IR0:1;
    Ifx_UReg_32Bit DR:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit IR1:1;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_SEICON1_Bits;


typedef struct _Ifx_SCU_SEISR_Bits
{
    Ifx_UReg_32Bit AE:1;
    Ifx_UReg_32Bit OE:1;
    Ifx_UReg_32Bit IS0:1;
    Ifx_UReg_32Bit DS:1;
    Ifx_UReg_32Bit TO:1;
    Ifx_UReg_32Bit IS1:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit TIM:16;
} Ifx_SCU_SEISR_Bits;


typedef struct _Ifx_SCU_STCON_Bits
{
    Ifx_UReg_32Bit reserved_0:13;
    Ifx_UReg_32Bit SFCBAE:1;
    Ifx_UReg_32Bit CFCBAE:1;
    Ifx_UReg_32Bit STP:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_STCON_Bits;


typedef struct _Ifx_SCU_STMEM1_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM1_Bits;


typedef struct _Ifx_SCU_STMEM2_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM2_Bits;


typedef struct _Ifx_SCU_STMEM3_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM3_Bits;


typedef struct _Ifx_SCU_STMEM4_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM4_Bits;


typedef struct _Ifx_SCU_STMEM5_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM5_Bits;


typedef struct _Ifx_SCU_STMEM6_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM6_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    Ifx_UReg_32Bit HWCFG:8;
    Ifx_UReg_32Bit FTM:7;
    Ifx_UReg_32Bit MODE:1;
    Ifx_UReg_32Bit FCBAE:1;
    Ifx_UReg_32Bit LUDIS:1;
    Ifx_UReg_32Bit reserved_18:1;
    Ifx_UReg_32Bit TRSTL:1;
    Ifx_UReg_32Bit SPDEN:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit RAMINT:1;
    Ifx_UReg_32Bit reserved_25:3;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWAPCTRL_Bits
{
    Ifx_UReg_32Bit ADDRCFG:2;
    Ifx_UReg_32Bit SPARE:14;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_SWAPCTRL_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit SWRSTREQ:1;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit reserved_8:8;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    Ifx_UReg_32Bit CCTRIG0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit RAMINTM:2;
    Ifx_UReg_32Bit SETLUDIS:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit DDC:1;
    Ifx_UReg_32Bit reserved_9:7;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_SYSPLLCON0_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit MODEN:1;
    Ifx_UReg_32Bit reserved_3:6;
    Ifx_UReg_32Bit NDIV:7;
    Ifx_UReg_32Bit PLLPWD:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit RESLD:1;
    Ifx_UReg_32Bit reserved_19:5;
    Ifx_UReg_32Bit PDIV:3;
    Ifx_UReg_32Bit reserved_27:3;
    Ifx_UReg_32Bit INSEL:2;
} Ifx_SCU_SYSPLLCON0_Bits;


typedef struct _Ifx_SCU_SYSPLLCON1_Bits
{
    Ifx_UReg_32Bit K2DIV:3;
    Ifx_UReg_32Bit reserved_3:29;
} Ifx_SCU_SYSPLLCON1_Bits;


typedef struct _Ifx_SCU_SYSPLLCON2_Bits
{
    Ifx_UReg_32Bit MODCFG:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_SYSPLLCON2_Bits;


typedef struct _Ifx_SCU_SYSPLLSTAT_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit PWDSTAT:1;
    Ifx_UReg_32Bit LOCK:1;
    Ifx_UReg_32Bit reserved_3:2;
    Ifx_UReg_32Bit K2RDY:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit MODRUN:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_SYSPLLSTAT_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    Ifx_UReg_32Bit ESR0T:1;
    Ifx_UReg_32Bit ESR1T:1;
    Ifx_UReg_32Bit TRAP2:1;
    Ifx_UReg_32Bit SMUT:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS0_Bits
{
    Ifx_UReg_32Bit CPU0ESR0T:1;
    Ifx_UReg_32Bit CPU0ESR1T:1;
    Ifx_UReg_32Bit CPU0TRAP2T:1;
    Ifx_UReg_32Bit CPU0SMUT:1;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit CPU1ESR0T:1;
    Ifx_UReg_32Bit CPU1ESR1T:1;
    Ifx_UReg_32Bit CPU1TRAP2T:1;
    Ifx_UReg_32Bit CPU1SMUT:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit CPU2ESR0T:1;
    Ifx_UReg_32Bit CPU2ESR1T:1;
    Ifx_UReg_32Bit CPU2TRAP2T:1;
    Ifx_UReg_32Bit CPU2SMUT:1;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit CPU3ESR0T:1;
    Ifx_UReg_32Bit CPU3ESR1T:1;
    Ifx_UReg_32Bit CPU3TRAP2T:1;
    Ifx_UReg_32Bit CPU3SMUT:1;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SCU_TRAPDIS0_Bits;


typedef struct _Ifx_SCU_TRAPDIS1_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit reserved_8:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_TRAPDIS1_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    Ifx_UReg_32Bit ESR0T:1;
    Ifx_UReg_32Bit ESR1T:1;
    Ifx_UReg_32Bit TRAP2:1;
    Ifx_UReg_32Bit SMUT:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    Ifx_UReg_32Bit ESR0T:1;
    Ifx_UReg_32Bit ESR1T:1;
    Ifx_UReg_32Bit TRAP2:1;
    Ifx_UReg_32Bit SMUT:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    volatile unsigned int ENDINIT:1;
    volatile unsigned int LCK:1;
    volatile unsigned int PW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit IR0:1;
    Ifx_UReg_32Bit DR:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit IR1:1;
    Ifx_UReg_32Bit UR:1;
    Ifx_UReg_32Bit PAR:1;
    Ifx_UReg_32Bit TCR:1;
    Ifx_UReg_32Bit TCTR:7;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    Ifx_UReg_32Bit AE:1;
    Ifx_UReg_32Bit OE:1;
    Ifx_UReg_32Bit IS0:1;
    Ifx_UReg_32Bit DS:1;
    Ifx_UReg_32Bit TO:1;
    Ifx_UReg_32Bit IS1:1;
    Ifx_UReg_32Bit US:1;
    Ifx_UReg_32Bit PAS:1;
    Ifx_UReg_32Bit TCS:1;
    Ifx_UReg_32Bit TCT:7;
    Ifx_UReg_32Bit TIM:16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    volatile unsigned int ENDINIT:1;
    volatile unsigned int LCK:1;
    volatile unsigned int PW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    Ifx_UReg_32Bit CLRIRF:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit IR0:1;
    Ifx_UReg_32Bit DR:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit IR1:1;
    Ifx_UReg_32Bit UR:1;
    Ifx_UReg_32Bit PAR:1;
    Ifx_UReg_32Bit TCR:1;
    Ifx_UReg_32Bit TCTR:7;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    Ifx_UReg_32Bit AE:1;
    Ifx_UReg_32Bit OE:1;
    Ifx_UReg_32Bit IS0:1;
    Ifx_UReg_32Bit DS:1;
    Ifx_UReg_32Bit TO:1;
    Ifx_UReg_32Bit IS1:1;
    Ifx_UReg_32Bit US:1;
    Ifx_UReg_32Bit PAS:1;
    Ifx_UReg_32Bit TCS:1;
    Ifx_UReg_32Bit TCT:7;
    Ifx_UReg_32Bit TIM:16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ACCEN00_Bits B;
} Ifx_SCU_ACCEN00;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ACCEN01_Bits B;
} Ifx_SCU_ACCEN01;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ACCEN10_Bits B;
} Ifx_SCU_ACCEN10;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ACCEN11_Bits B;
} Ifx_SCU_ACCEN11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON7_Bits B;
} Ifx_SCU_CCUCON7;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON8_Bits B;
} Ifx_SCU_CCUCON8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON9_Bits B;
} Ifx_SCU_CCUCON9;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_DTSCLIM_Bits B;
} Ifx_SCU_DTSCLIM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_DTSCSTAT_Bits B;
} Ifx_SCU_DTSCSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EICON0_Bits B;
} Ifx_SCU_EICON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EICON1_Bits B;
} Ifx_SCU_EICON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EIFILT_Bits B;
} Ifx_SCU_EIFILT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EISR_Bits B;
} Ifx_SCU_EISR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EMSSW_Bits B;
} Ifx_SCU_EMSSW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ESRCFGX_ESRCFGX_Bits B;
} Ifx_SCU_ESRCFGX_ESRCFGX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LBISTCTRL3_Bits B;
} Ifx_SCU_LBISTCTRL3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LCLCON0_Bits B;
} Ifx_SCU_LCLCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LCLCON1_Bits B;
} Ifx_SCU_LCLCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PERPLLCON0_Bits B;
} Ifx_SCU_PERPLLCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PERPLLCON1_Bits B;
} Ifx_SCU_PERPLLCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PERPLLSTAT_Bits B;
} Ifx_SCU_PERPLLSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR0_Bits B;
} Ifx_SCU_PMCSR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR1_Bits B;
} Ifx_SCU_PMCSR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR2_Bits B;
} Ifx_SCU_PMCSR2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR3_Bits B;
} Ifx_SCU_PMCSR3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR4_Bits B;
} Ifx_SCU_PMCSR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR5_Bits B;
} Ifx_SCU_PMCSR5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMSTAT0_Bits B;
} Ifx_SCU_PMSTAT0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMTRCSR0_Bits B;
} Ifx_SCU_PMTRCSR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMTRCSR1_Bits B;
} Ifx_SCU_PMTRCSR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMTRCSR2_Bits B;
} Ifx_SCU_PMTRCSR2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMTRCSR3_Bits B;
} Ifx_SCU_PMTRCSR3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_RSTCON3_Bits B;
} Ifx_SCU_RSTCON3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SEICON0_Bits B;
} Ifx_SCU_SEICON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SEICON1_Bits B;
} Ifx_SCU_SEICON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SEISR_Bits B;
} Ifx_SCU_SEISR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STCON_Bits B;
} Ifx_SCU_STCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM1_Bits B;
} Ifx_SCU_STMEM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM2_Bits B;
} Ifx_SCU_STMEM2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM3_Bits B;
} Ifx_SCU_STMEM3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM4_Bits B;
} Ifx_SCU_STMEM4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM5_Bits B;
} Ifx_SCU_STMEM5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM6_Bits B;
} Ifx_SCU_STMEM6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SWAPCTRL_Bits B;
} Ifx_SCU_SWAPCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSPLLCON0_Bits B;
} Ifx_SCU_SYSPLLCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSPLLCON1_Bits B;
} Ifx_SCU_SYSPLLCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSPLLCON2_Bits B;
} Ifx_SCU_SYSPLLCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSPLLSTAT_Bits B;
} Ifx_SCU_SYSPLLSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPDIS0_Bits B;
} Ifx_SCU_TRAPDIS0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPDIS1_Bits B;
} Ifx_SCU_TRAPDIS1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 2130 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_ESRCFGX
{
       Ifx_SCU_ESRCFGX_ESRCFGX ESRCFGX;
} Ifx_SCU_ESRCFGX;
# 2148 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
       Ifx_SCU_WDTCPU_CON0 CON0;
       Ifx_SCU_WDTCPU_CON1 CON1;
       Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;
# 2168 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTS
{
       Ifx_SCU_WDTS_CON0 CON0;
       Ifx_SCU_WDTS_CON1 CON1;
       Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 2188 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
       Ifx_UReg_8Bit reserved_0[8];
       Ifx_SCU_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_SCU_OSCCON OSCCON;
       Ifx_SCU_SYSPLLSTAT SYSPLLSTAT;
       Ifx_SCU_SYSPLLCON0 SYSPLLCON0;
       Ifx_SCU_SYSPLLCON1 SYSPLLCON1;
       Ifx_SCU_SYSPLLCON2 SYSPLLCON2;
       Ifx_SCU_PERPLLSTAT PERPLLSTAT;
       Ifx_SCU_PERPLLCON0 PERPLLCON0;
       Ifx_SCU_PERPLLCON1 PERPLLCON1;
       Ifx_SCU_CCUCON0 CCUCON0;
       Ifx_SCU_CCUCON1 CCUCON1;
       Ifx_SCU_FDR FDR;
       Ifx_SCU_EXTCON EXTCON;
       Ifx_SCU_CCUCON2 CCUCON2;
       Ifx_SCU_CCUCON3 CCUCON3;
       Ifx_SCU_CCUCON4 CCUCON4;
       Ifx_SCU_CCUCON5 CCUCON5;
       Ifx_SCU_RSTSTAT RSTSTAT;
       Ifx_UReg_8Bit reserved_54[4];
       Ifx_SCU_RSTCON RSTCON;
       Ifx_SCU_ARSTDIS ARSTDIS;
       Ifx_SCU_SWRSTCON SWRSTCON;
       Ifx_SCU_RSTCON2 RSTCON2;
       Ifx_SCU_RSTCON3 RSTCON3;
       Ifx_UReg_8Bit reserved_6C[4];
       Ifx_SCU_ESRCFGX ESRCFGX[2];
       Ifx_SCU_ESROCFG ESROCFG;
       Ifx_SCU_SYSCON SYSCON;
       Ifx_SCU_CCUCON6 CCUCON6;
       Ifx_SCU_CCUCON7 CCUCON7;
       Ifx_SCU_CCUCON8 CCUCON8;
       Ifx_SCU_CCUCON9 CCUCON9;
       Ifx_UReg_8Bit reserved_90[12];
       Ifx_SCU_PDR PDR;
       Ifx_SCU_IOCR IOCR;
       Ifx_SCU_OUT OUT;
       Ifx_SCU_OMR OMR;
       Ifx_SCU_IN IN;
       Ifx_UReg_8Bit reserved_B0[16];
       Ifx_SCU_STSTAT STSTAT;
       Ifx_SCU_STCON STCON;
       Ifx_SCU_PMCSR0 PMCSR0;
       Ifx_SCU_PMCSR1 PMCSR1;
       Ifx_SCU_PMCSR2 PMCSR2;
       Ifx_SCU_PMCSR3 PMCSR3;
       Ifx_SCU_PMCSR4 PMCSR4;
       Ifx_SCU_PMCSR5 PMCSR5;
       Ifx_UReg_8Bit reserved_E0[4];
       Ifx_SCU_PMSTAT0 PMSTAT0;
       Ifx_SCU_PMSWCR1 PMSWCR1;
       Ifx_UReg_8Bit reserved_EC[16];
       Ifx_SCU_EMSR EMSR;
       Ifx_SCU_EMSSW EMSSW;
       Ifx_SCU_DTSCSTAT DTSCSTAT;
       Ifx_SCU_DTSCLIM DTSCLIM;
       Ifx_UReg_8Bit reserved_10C[20];
       Ifx_SCU_TRAPDIS1 TRAPDIS1;
       Ifx_SCU_TRAPSTAT TRAPSTAT;
       Ifx_SCU_TRAPSET TRAPSET;
       Ifx_SCU_TRAPCLR TRAPCLR;
       Ifx_SCU_TRAPDIS0 TRAPDIS0;
       Ifx_SCU_LCLCON0 LCLCON0;
       Ifx_SCU_LCLCON1 LCLCON1;
       Ifx_SCU_LCLTEST LCLTEST;
       Ifx_SCU_CHIPID CHIPID;
       Ifx_SCU_MANID MANID;
       Ifx_UReg_8Bit reserved_148[4];
       Ifx_SCU_SWAPCTRL SWAPCTRL;
       Ifx_UReg_8Bit reserved_150[20];
       Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
       Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
       Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
       Ifx_SCU_LBISTCTRL3 LBISTCTRL3;
       Ifx_UReg_8Bit reserved_174[16];
       Ifx_SCU_STMEM1 STMEM1;
       Ifx_SCU_STMEM2 STMEM2;
       Ifx_SCU_PDISC PDISC;
       Ifx_UReg_8Bit reserved_190[8];
       Ifx_SCU_PMTRCSR0 PMTRCSR0;
       Ifx_SCU_PMTRCSR1 PMTRCSR1;
       Ifx_SCU_PMTRCSR2 PMTRCSR2;
       Ifx_SCU_PMTRCSR3 PMTRCSR3;
       Ifx_UReg_8Bit reserved_1A8[24];
       Ifx_SCU_STMEM3 STMEM3;
       Ifx_SCU_STMEM4 STMEM4;
       Ifx_SCU_STMEM5 STMEM5;
       Ifx_SCU_STMEM6 STMEM6;
       Ifx_UReg_8Bit reserved_1D0[16];
       Ifx_SCU_OVCENABLE OVCENABLE;
       Ifx_SCU_OVCCON OVCCON;
       Ifx_UReg_8Bit reserved_1E8[36];
       Ifx_SCU_EIFILT EIFILT;
       Ifx_SCU_EICR EICR[4];
       Ifx_SCU_EIFR EIFR;
       Ifx_SCU_FMR FMR;
       Ifx_SCU_PDRR PDRR;
       Ifx_SCU_IGCR IGCR[4];
       Ifx_UReg_8Bit reserved_23C[16];
       Ifx_SCU_WDTCPU WDTCPU[4];
       Ifx_UReg_8Bit reserved_27C[32];
       Ifx_SCU_EICON0 EICON0;
       Ifx_SCU_EICON1 EICON1;
       Ifx_SCU_EISR EISR;
       Ifx_SCU_WDTS WDTS;
       Ifx_SCU_SEICON0 SEICON0;
       Ifx_SCU_SEICON1 SEICON1;
       Ifx_SCU_SEISR SEISR;
       Ifx_UReg_8Bit reserved_2C0[304];
       Ifx_SCU_ACCEN11 ACCEN11;
       Ifx_SCU_ACCEN10 ACCEN10;
       Ifx_SCU_ACCEN01 ACCEN01;
       Ifx_SCU_ACCEN00 ACCEN00;
} Ifx_SCU;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h" 2
# 2 ".\\output\\inc/IfxScu_reg.h" 2
# 78 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 1 ".\\output\\inc/IfxCcu6_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCcu6_reg.h" 1
# 59 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCcu6_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCcu6_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCcu6_regdef.h"
typedef struct _Ifx_CCU6_ACCEN0_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_CCU6_ACCEN0_Bits;


typedef struct _Ifx_CCU6_CC63R_Bits
{
    Ifx_UReg_32Bit CCV:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_CC63R_Bits;


typedef struct _Ifx_CCU6_CC63SR_Bits
{
    Ifx_UReg_32Bit CCS:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_CC63SR_Bits;


typedef struct _Ifx_CCU6_CC6R_Bits
{
    Ifx_UReg_32Bit CCV:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_CC6R_Bits;


typedef struct _Ifx_CCU6_CC6SR_Bits
{
    Ifx_UReg_32Bit CCS:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_CC6SR_Bits;


typedef struct _Ifx_CCU6_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:12;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_CLC_Bits;


typedef struct _Ifx_CCU6_CMPMODIF_Bits
{
    Ifx_UReg_32Bit MCC60S:1;
    Ifx_UReg_32Bit MCC61S:1;
    Ifx_UReg_32Bit MCC62S:1;
    Ifx_UReg_32Bit reserved_3:3;
    Ifx_UReg_32Bit MCC63S:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit MCC60R:1;
    Ifx_UReg_32Bit MCC61R:1;
    Ifx_UReg_32Bit MCC62R:1;
    Ifx_UReg_32Bit reserved_11:3;
    Ifx_UReg_32Bit MCC63R:1;
    Ifx_UReg_32Bit reserved_15:17;
} Ifx_CCU6_CMPMODIF_Bits;


typedef struct _Ifx_CCU6_CMPSTAT_Bits
{
    Ifx_UReg_32Bit CC60ST:1;
    Ifx_UReg_32Bit CC61ST:1;
    Ifx_UReg_32Bit CC62ST:1;
    Ifx_UReg_32Bit CCPOS60:1;
    Ifx_UReg_32Bit CCPOS61:1;
    Ifx_UReg_32Bit CCPOS62:1;
    Ifx_UReg_32Bit CC63ST:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit CC60PS:1;
    Ifx_UReg_32Bit COUT60PS:1;
    Ifx_UReg_32Bit CC61PS:1;
    Ifx_UReg_32Bit COUT61PS:1;
    Ifx_UReg_32Bit CC62PS:1;
    Ifx_UReg_32Bit COUT62PS:1;
    Ifx_UReg_32Bit COUT63PS:1;
    Ifx_UReg_32Bit T13IM:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_CMPSTAT_Bits;


typedef struct _Ifx_CCU6_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODNUM:8;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_ID_Bits;


typedef struct _Ifx_CCU6_IEN_Bits
{
    Ifx_UReg_32Bit ENCC60R:1;
    Ifx_UReg_32Bit ENCC60F:1;
    Ifx_UReg_32Bit ENCC61R:1;
    Ifx_UReg_32Bit ENCC61F:1;
    Ifx_UReg_32Bit ENCC62R:1;
    Ifx_UReg_32Bit ENCC62F:1;
    Ifx_UReg_32Bit ENT12OM:1;
    Ifx_UReg_32Bit ENT12PM:1;
    Ifx_UReg_32Bit ENT13CM:1;
    Ifx_UReg_32Bit ENT13PM:1;
    Ifx_UReg_32Bit ENTRPF:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit ENCHE:1;
    Ifx_UReg_32Bit ENWHE:1;
    Ifx_UReg_32Bit ENIDLE:1;
    Ifx_UReg_32Bit ENSTR:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_IEN_Bits;


typedef struct _Ifx_CCU6_IMON_Bits
{
    Ifx_UReg_32Bit LBE:1;
    Ifx_UReg_32Bit CCPOS0I:1;
    Ifx_UReg_32Bit CCPOS1I:1;
    Ifx_UReg_32Bit CCPOS2I:1;
    Ifx_UReg_32Bit CC60INI:1;
    Ifx_UReg_32Bit CC61INI:1;
    Ifx_UReg_32Bit CC62INI:1;
    Ifx_UReg_32Bit CTRAPI:1;
    Ifx_UReg_32Bit T12HRI:1;
    Ifx_UReg_32Bit T13HRI:1;
    Ifx_UReg_32Bit reserved_10:22;
} Ifx_CCU6_IMON_Bits;


typedef struct _Ifx_CCU6_INP_Bits
{
    Ifx_UReg_32Bit INPCC60:2;
    Ifx_UReg_32Bit INPCC61:2;
    Ifx_UReg_32Bit INPCC62:2;
    Ifx_UReg_32Bit INPCHE:2;
    Ifx_UReg_32Bit INPERR:2;
    Ifx_UReg_32Bit INPT12:2;
    Ifx_UReg_32Bit INPT13:2;
    Ifx_UReg_32Bit reserved_14:18;
} Ifx_CCU6_INP_Bits;


typedef struct _Ifx_CCU6_IS_Bits
{
    Ifx_UReg_32Bit ICC60R:1;
    Ifx_UReg_32Bit ICC60F:1;
    Ifx_UReg_32Bit ICC61R:1;
    Ifx_UReg_32Bit ICC61F:1;
    Ifx_UReg_32Bit ICC62R:1;
    Ifx_UReg_32Bit ICC62F:1;
    Ifx_UReg_32Bit T12OM:1;
    Ifx_UReg_32Bit T12PM:1;
    Ifx_UReg_32Bit T13CM:1;
    Ifx_UReg_32Bit T13PM:1;
    Ifx_UReg_32Bit TRPF:1;
    Ifx_UReg_32Bit TRPS:1;
    Ifx_UReg_32Bit CHE:1;
    Ifx_UReg_32Bit WHE:1;
    Ifx_UReg_32Bit IDLE:1;
    Ifx_UReg_32Bit STR:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_IS_Bits;


typedef struct _Ifx_CCU6_ISR_Bits
{
    Ifx_UReg_32Bit RCC60R:1;
    Ifx_UReg_32Bit RCC60F:1;
    Ifx_UReg_32Bit RCC61R:1;
    Ifx_UReg_32Bit RCC61F:1;
    Ifx_UReg_32Bit RCC62R:1;
    Ifx_UReg_32Bit RCC62F:1;
    Ifx_UReg_32Bit RT12OM:1;
    Ifx_UReg_32Bit RT12PM:1;
    Ifx_UReg_32Bit RT13CM:1;
    Ifx_UReg_32Bit RT13PM:1;
    Ifx_UReg_32Bit RTRPF:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit RCHE:1;
    Ifx_UReg_32Bit RWHE:1;
    Ifx_UReg_32Bit RIDLE:1;
    Ifx_UReg_32Bit RSTR:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_ISR_Bits;


typedef struct _Ifx_CCU6_ISS_Bits
{
    Ifx_UReg_32Bit SCC60R:1;
    Ifx_UReg_32Bit SCC60F:1;
    Ifx_UReg_32Bit SCC61R:1;
    Ifx_UReg_32Bit SCC61F:1;
    Ifx_UReg_32Bit SCC62R:1;
    Ifx_UReg_32Bit SCC62F:1;
    Ifx_UReg_32Bit ST12OM:1;
    Ifx_UReg_32Bit ST12PM:1;
    Ifx_UReg_32Bit ST13CM:1;
    Ifx_UReg_32Bit ST13PM:1;
    Ifx_UReg_32Bit STRPF:1;
    Ifx_UReg_32Bit SWHC:1;
    Ifx_UReg_32Bit SCHE:1;
    Ifx_UReg_32Bit SWHE:1;
    Ifx_UReg_32Bit SIDLE:1;
    Ifx_UReg_32Bit SSTR:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_ISS_Bits;


typedef struct _Ifx_CCU6_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_CCU6_KRST0_Bits;


typedef struct _Ifx_CCU6_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_CCU6_KRST1_Bits;


typedef struct _Ifx_CCU6_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_CCU6_KRSTCLR_Bits;


typedef struct _Ifx_CCU6_KSCSR_Bits
{
    Ifx_UReg_32Bit SB0:1;
    Ifx_UReg_32Bit SB1:1;
    Ifx_UReg_32Bit SB2:1;
    Ifx_UReg_32Bit SB3:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_CCU6_KSCSR_Bits;


typedef struct _Ifx_CCU6_LI_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit CCPOS0EN:1;
    Ifx_UReg_32Bit CCPOS1EN:1;
    Ifx_UReg_32Bit CCPOS2EN:1;
    Ifx_UReg_32Bit CC60INEN:1;
    Ifx_UReg_32Bit CC61INEN:1;
    Ifx_UReg_32Bit CC62INEN:1;
    Ifx_UReg_32Bit CTRAPEN:1;
    Ifx_UReg_32Bit T12HREN:1;
    Ifx_UReg_32Bit T13HREN:1;
    Ifx_UReg_32Bit reserved_10:3;
    Ifx_UReg_32Bit LBEEN:1;
    Ifx_UReg_32Bit INPLBE:2;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_LI_Bits;


typedef struct _Ifx_CCU6_MCFG_Bits
{
    Ifx_UReg_32Bit T12:1;
    Ifx_UReg_32Bit T13:1;
    Ifx_UReg_32Bit MCM:1;
    Ifx_UReg_32Bit reserved_3:12;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_MCFG_Bits;


typedef struct _Ifx_CCU6_MCMCTR_Bits
{
    Ifx_UReg_32Bit SWSEL:3;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit SWSYN:2;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit STE12U:1;
    Ifx_UReg_32Bit STE12D:1;
    Ifx_UReg_32Bit STE13U:1;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_CCU6_MCMCTR_Bits;


typedef struct _Ifx_CCU6_MCMOUT_Bits
{
    Ifx_UReg_32Bit MCMP:6;
    Ifx_UReg_32Bit R:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit EXPH:3;
    Ifx_UReg_32Bit CURH:3;
    Ifx_UReg_32Bit reserved_14:18;
} Ifx_CCU6_MCMOUT_Bits;


typedef struct _Ifx_CCU6_MCMOUTS_Bits
{
    Ifx_UReg_32Bit MCMPS:6;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit STRMCM:1;
    Ifx_UReg_32Bit EXPHS:3;
    Ifx_UReg_32Bit CURHS:3;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit STRHP:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_MCMOUTS_Bits;


typedef struct _Ifx_CCU6_MODCTR_Bits
{
    Ifx_UReg_32Bit T12MODEN:6;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit MCMEN:1;
    Ifx_UReg_32Bit T13MODEN:6;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit ECT13O:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_MODCTR_Bits;


typedef struct _Ifx_CCU6_MOSEL_Bits
{
    Ifx_UReg_32Bit TRIG0SEL:3;
    Ifx_UReg_32Bit TRIG1SEL:3;
    Ifx_UReg_32Bit TRIG2SEL:3;
    Ifx_UReg_32Bit reserved_9:23;
} Ifx_CCU6_MOSEL_Bits;


typedef struct _Ifx_CCU6_OCS_Bits
{
    Ifx_UReg_32Bit TGS:2;
    Ifx_UReg_32Bit TGB:1;
    Ifx_UReg_32Bit TG_P:1;
    Ifx_UReg_32Bit reserved_4:20;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CCU6_OCS_Bits;


typedef struct _Ifx_CCU6_PISEL0_Bits
{
    Ifx_UReg_32Bit ISCC60:2;
    Ifx_UReg_32Bit ISCC61:2;
    Ifx_UReg_32Bit ISCC62:2;
    Ifx_UReg_32Bit ISTRP:2;
    Ifx_UReg_32Bit ISPOS0:2;
    Ifx_UReg_32Bit ISPOS1:2;
    Ifx_UReg_32Bit ISPOS2:2;
    Ifx_UReg_32Bit IST12HR:2;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_PISEL0_Bits;


typedef struct _Ifx_CCU6_PISEL2_Bits
{
    Ifx_UReg_32Bit IST13HR:2;
    Ifx_UReg_32Bit ISCNT12:2;
    Ifx_UReg_32Bit ISCNT13:2;
    Ifx_UReg_32Bit T12EXT:1;
    Ifx_UReg_32Bit T13EXT:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_CCU6_PISEL2_Bits;


typedef struct _Ifx_CCU6_PSLR_Bits
{
    Ifx_UReg_32Bit PSL:6;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit PSL63:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_CCU6_PSLR_Bits;


typedef struct _Ifx_CCU6_T12_Bits
{
    Ifx_UReg_32Bit T12CV:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_T12_Bits;


typedef struct _Ifx_CCU6_T12DTC_Bits
{
    Ifx_UReg_32Bit DTM:8;
    Ifx_UReg_32Bit DTE0:1;
    Ifx_UReg_32Bit DTE1:1;
    Ifx_UReg_32Bit DTE2:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit DTR0:1;
    Ifx_UReg_32Bit DTR1:1;
    Ifx_UReg_32Bit DTR2:1;
    Ifx_UReg_32Bit reserved_15:17;
} Ifx_CCU6_T12DTC_Bits;


typedef struct _Ifx_CCU6_T12MSEL_Bits
{
    Ifx_UReg_32Bit MSEL60:4;
    Ifx_UReg_32Bit MSEL61:4;
    Ifx_UReg_32Bit MSEL62:4;
    Ifx_UReg_32Bit HSYNC:3;
    Ifx_UReg_32Bit DBYP:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_T12MSEL_Bits;


typedef struct _Ifx_CCU6_T12PR_Bits
{
    Ifx_UReg_32Bit T12PV:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_T12PR_Bits;


typedef struct _Ifx_CCU6_T13_Bits
{
    Ifx_UReg_32Bit T13CV:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_T13_Bits;


typedef struct _Ifx_CCU6_T13PR_Bits
{
    Ifx_UReg_32Bit T13PV:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_T13PR_Bits;


typedef struct _Ifx_CCU6_TCTR0_Bits
{
    Ifx_UReg_32Bit T12CLK:3;
    Ifx_UReg_32Bit T12PRE:1;
    Ifx_UReg_32Bit T12R:1;
    Ifx_UReg_32Bit STE12:1;
    Ifx_UReg_32Bit CDIR:1;
    Ifx_UReg_32Bit CTM:1;
    Ifx_UReg_32Bit T13CLK:3;
    Ifx_UReg_32Bit T13PRE:1;
    Ifx_UReg_32Bit T13R:1;
    Ifx_UReg_32Bit STE13:1;
    Ifx_UReg_32Bit reserved_14:18;
} Ifx_CCU6_TCTR0_Bits;


typedef struct _Ifx_CCU6_TCTR2_Bits
{
    Ifx_UReg_32Bit T12SSC:1;
    Ifx_UReg_32Bit T13SSC:1;
    Ifx_UReg_32Bit T13TEC:3;
    Ifx_UReg_32Bit T13TED:2;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit T12RSEL:2;
    Ifx_UReg_32Bit T13RSEL:2;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_CCU6_TCTR2_Bits;


typedef struct _Ifx_CCU6_TCTR4_Bits
{
    Ifx_UReg_32Bit T12RR:1;
    Ifx_UReg_32Bit T12RS:1;
    Ifx_UReg_32Bit T12RES:1;
    Ifx_UReg_32Bit DTRES:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit T12CNT:1;
    Ifx_UReg_32Bit T12STR:1;
    Ifx_UReg_32Bit T12STD:1;
    Ifx_UReg_32Bit T13RR:1;
    Ifx_UReg_32Bit T13RS:1;
    Ifx_UReg_32Bit T13RES:1;
    Ifx_UReg_32Bit reserved_11:2;
    Ifx_UReg_32Bit T13CNT:1;
    Ifx_UReg_32Bit T13STR:1;
    Ifx_UReg_32Bit T13STD:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_TCTR4_Bits;


typedef struct _Ifx_CCU6_TRPCTR_Bits
{
    Ifx_UReg_32Bit TRPM0:1;
    Ifx_UReg_32Bit TRPM1:1;
    Ifx_UReg_32Bit TRPM2:1;
    Ifx_UReg_32Bit reserved_3:5;
    Ifx_UReg_32Bit TRPEN:6;
    Ifx_UReg_32Bit TRPEN13:1;
    Ifx_UReg_32Bit TRPPEN:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CCU6_TRPCTR_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_ACCEN0_Bits B;
} Ifx_CCU6_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_CC63R_Bits B;
} Ifx_CCU6_CC63R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_CC63SR_Bits B;
} Ifx_CCU6_CC63SR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_CC6R_Bits B;
} Ifx_CCU6_CC6R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_CC6SR_Bits B;
} Ifx_CCU6_CC6SR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_CLC_Bits B;
} Ifx_CCU6_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_CMPMODIF_Bits B;
} Ifx_CCU6_CMPMODIF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_CMPSTAT_Bits B;
} Ifx_CCU6_CMPSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_ID_Bits B;
} Ifx_CCU6_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_IEN_Bits B;
} Ifx_CCU6_IEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_IMON_Bits B;
} Ifx_CCU6_IMON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_INP_Bits B;
} Ifx_CCU6_INP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_IS_Bits B;
} Ifx_CCU6_IS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_ISR_Bits B;
} Ifx_CCU6_ISR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_ISS_Bits B;
} Ifx_CCU6_ISS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_KRST0_Bits B;
} Ifx_CCU6_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_KRST1_Bits B;
} Ifx_CCU6_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_KRSTCLR_Bits B;
} Ifx_CCU6_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_KSCSR_Bits B;
} Ifx_CCU6_KSCSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_LI_Bits B;
} Ifx_CCU6_LI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_MCFG_Bits B;
} Ifx_CCU6_MCFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_MCMCTR_Bits B;
} Ifx_CCU6_MCMCTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_MCMOUT_Bits B;
} Ifx_CCU6_MCMOUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_MCMOUTS_Bits B;
} Ifx_CCU6_MCMOUTS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_MODCTR_Bits B;
} Ifx_CCU6_MODCTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_MOSEL_Bits B;
} Ifx_CCU6_MOSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_OCS_Bits B;
} Ifx_CCU6_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_PISEL0_Bits B;
} Ifx_CCU6_PISEL0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_PISEL2_Bits B;
} Ifx_CCU6_PISEL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_PSLR_Bits B;
} Ifx_CCU6_PSLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_T12_Bits B;
} Ifx_CCU6_T12;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_T12DTC_Bits B;
} Ifx_CCU6_T12DTC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_T12MSEL_Bits B;
} Ifx_CCU6_T12MSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_T12PR_Bits B;
} Ifx_CCU6_T12PR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_T13_Bits B;
} Ifx_CCU6_T13;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_T13PR_Bits B;
} Ifx_CCU6_T13PR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_TCTR0_Bits B;
} Ifx_CCU6_TCTR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_TCTR2_Bits B;
} Ifx_CCU6_TCTR2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_TCTR4_Bits B;
} Ifx_CCU6_TCTR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CCU6_TRPCTR_Bits B;
} Ifx_CCU6_TRPCTR;
# 925 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCcu6_regdef.h"
typedef volatile struct _Ifx_CCU6
{
       Ifx_CCU6_CLC CLC;
       Ifx_CCU6_MCFG MCFG;
       Ifx_CCU6_ID ID;
       Ifx_CCU6_MOSEL MOSEL;
       Ifx_CCU6_PISEL0 PISEL0;
       Ifx_CCU6_PISEL2 PISEL2;
       Ifx_UReg_8Bit reserved_18[4];
       Ifx_CCU6_KSCSR KSCSR;
       Ifx_CCU6_T12 T12;
       Ifx_CCU6_T12PR T12PR;
       Ifx_CCU6_T12DTC T12DTC;
       Ifx_UReg_8Bit reserved_2C[4];
       Ifx_CCU6_CC6R CC6R[3];
       Ifx_UReg_8Bit reserved_3C[4];
       Ifx_CCU6_CC6SR CC6SR[3];
       Ifx_UReg_8Bit reserved_4C[4];
       Ifx_CCU6_T13 T13;
       Ifx_CCU6_T13PR T13PR;
       Ifx_CCU6_CC63R CC63R;
       Ifx_CCU6_CC63SR CC63SR;
       Ifx_CCU6_CMPSTAT CMPSTAT;
       Ifx_CCU6_CMPMODIF CMPMODIF;
       Ifx_CCU6_T12MSEL T12MSEL;
       Ifx_UReg_8Bit reserved_6C[4];
       Ifx_CCU6_TCTR0 TCTR0;
       Ifx_CCU6_TCTR2 TCTR2;
       Ifx_CCU6_TCTR4 TCTR4;
       Ifx_UReg_8Bit reserved_7C[4];
       Ifx_CCU6_MODCTR MODCTR;
       Ifx_CCU6_TRPCTR TRPCTR;
       Ifx_CCU6_PSLR PSLR;
       Ifx_CCU6_MCMOUTS MCMOUTS;
       Ifx_CCU6_MCMOUT MCMOUT;
       Ifx_CCU6_MCMCTR MCMCTR;
       Ifx_CCU6_IMON IMON;
       Ifx_CCU6_LI LI;
       Ifx_CCU6_IS IS;
       Ifx_CCU6_ISS ISS;
       Ifx_CCU6_ISR ISR;
       Ifx_CCU6_INP INP;
       Ifx_CCU6_IEN IEN;
       Ifx_UReg_8Bit reserved_B4[52];
       Ifx_CCU6_OCS OCS;
       Ifx_CCU6_KRSTCLR KRSTCLR;
       Ifx_CCU6_KRST1 KRST1;
       Ifx_CCU6_KRST0 KRST0;
       Ifx_UReg_8Bit reserved_F8[4];
       Ifx_CCU6_ACCEN0 ACCEN0;
} Ifx_CCU6;
# 60 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCcu6_reg.h" 2
# 2 ".\\output\\inc/IfxCcu6_reg.h" 2
# 79 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 1 ".\\output\\inc/IfxGpt12_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGpt12_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGpt12_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGpt12_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGpt12_regdef.h"
typedef struct _Ifx_GPT12_ACCEN0_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_GPT12_ACCEN0_Bits;


typedef struct _Ifx_GPT12_CAPREL_Bits
{
    Ifx_UReg_32Bit CAPREL:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_CAPREL_Bits;


typedef struct _Ifx_GPT12_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:12;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_CLC_Bits;


typedef struct _Ifx_GPT12_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_GPT12_ID_Bits;


typedef struct _Ifx_GPT12_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_GPT12_KRST0_Bits;


typedef struct _Ifx_GPT12_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_GPT12_KRST1_Bits;


typedef struct _Ifx_GPT12_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_GPT12_KRSTCLR_Bits;


typedef struct _Ifx_GPT12_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit reserved_4:20;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_GPT12_OCS_Bits;


typedef struct _Ifx_GPT12_PISEL_Bits
{
    Ifx_UReg_32Bit IST2IN:1;
    Ifx_UReg_32Bit IST2EUD:1;
    Ifx_UReg_32Bit IST3IN:2;
    Ifx_UReg_32Bit IST3EUD:2;
    Ifx_UReg_32Bit IST4IN:2;
    Ifx_UReg_32Bit IST4EUD:2;
    Ifx_UReg_32Bit IST5IN:1;
    Ifx_UReg_32Bit IST5EUD:1;
    Ifx_UReg_32Bit IST6IN:1;
    Ifx_UReg_32Bit IST6EUD:1;
    Ifx_UReg_32Bit ISCAPIN:2;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_PISEL_Bits;


typedef struct _Ifx_GPT12_T2_Bits
{
    Ifx_UReg_32Bit T2:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T2_Bits;


typedef struct _Ifx_GPT12_T2CON_Bits
{
    Ifx_UReg_32Bit T2I:3;
    Ifx_UReg_32Bit T2M:3;
    Ifx_UReg_32Bit T2R:1;
    Ifx_UReg_32Bit T2UD:1;
    Ifx_UReg_32Bit T2UDE:1;
    Ifx_UReg_32Bit T2RC:1;
    Ifx_UReg_32Bit reserved_10:2;
    Ifx_UReg_32Bit T2IRDIS:1;
    Ifx_UReg_32Bit T2EDGE:1;
    Ifx_UReg_32Bit T2CHDIR:1;
    Ifx_UReg_32Bit T2RDIR:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T2CON_Bits;


typedef struct _Ifx_GPT12_T3_Bits
{
    Ifx_UReg_32Bit T3:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T3_Bits;


typedef struct _Ifx_GPT12_T3CON_Bits
{
    Ifx_UReg_32Bit T3I:3;
    Ifx_UReg_32Bit T3M:3;
    Ifx_UReg_32Bit T3R:1;
    Ifx_UReg_32Bit T3UD:1;
    Ifx_UReg_32Bit T3UDE:1;
    Ifx_UReg_32Bit T3OE:1;
    Ifx_UReg_32Bit T3OTL:1;
    Ifx_UReg_32Bit BPS1:2;
    Ifx_UReg_32Bit T3EDGE:1;
    Ifx_UReg_32Bit T3CHDIR:1;
    Ifx_UReg_32Bit T3RDIR:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T3CON_Bits;


typedef struct _Ifx_GPT12_T4_Bits
{
    Ifx_UReg_32Bit T4:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T4_Bits;


typedef struct _Ifx_GPT12_T4CON_Bits
{
    Ifx_UReg_32Bit T4I:3;
    Ifx_UReg_32Bit T4M:3;
    Ifx_UReg_32Bit T4R:1;
    Ifx_UReg_32Bit T4UD:1;
    Ifx_UReg_32Bit T4UDE:1;
    Ifx_UReg_32Bit T4RC:1;
    Ifx_UReg_32Bit CLRT2EN:1;
    Ifx_UReg_32Bit CLRT3EN:1;
    Ifx_UReg_32Bit T4IRDIS:1;
    Ifx_UReg_32Bit T4EDGE:1;
    Ifx_UReg_32Bit T4CHDIR:1;
    Ifx_UReg_32Bit T4RDIR:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T4CON_Bits;


typedef struct _Ifx_GPT12_T5_Bits
{
    Ifx_UReg_32Bit T5:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T5_Bits;


typedef struct _Ifx_GPT12_T5CON_Bits
{
    Ifx_UReg_32Bit T5I:3;
    Ifx_UReg_32Bit T5M:3;
    Ifx_UReg_32Bit T5R:1;
    Ifx_UReg_32Bit T5UD:1;
    Ifx_UReg_32Bit T5UDE:1;
    Ifx_UReg_32Bit T5RC:1;
    Ifx_UReg_32Bit CT3:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit CI:2;
    Ifx_UReg_32Bit T5CLR:1;
    Ifx_UReg_32Bit T5SC:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T5CON_Bits;


typedef struct _Ifx_GPT12_T6_Bits
{
    Ifx_UReg_32Bit T6:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T6_Bits;


typedef struct _Ifx_GPT12_T6CON_Bits
{
    Ifx_UReg_32Bit T6I:3;
    Ifx_UReg_32Bit T6M:3;
    Ifx_UReg_32Bit T6R:1;
    Ifx_UReg_32Bit T6UD:1;
    Ifx_UReg_32Bit T6UDE:1;
    Ifx_UReg_32Bit T6OE:1;
    Ifx_UReg_32Bit T6OTL:1;
    Ifx_UReg_32Bit BPS2:2;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit T6CLR:1;
    Ifx_UReg_32Bit T6SR:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GPT12_T6CON_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_ACCEN0_Bits B;
} Ifx_GPT12_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_CAPREL_Bits B;
} Ifx_GPT12_CAPREL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_CLC_Bits B;
} Ifx_GPT12_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_ID_Bits B;
} Ifx_GPT12_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_KRST0_Bits B;
} Ifx_GPT12_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_KRST1_Bits B;
} Ifx_GPT12_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_KRSTCLR_Bits B;
} Ifx_GPT12_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_OCS_Bits B;
} Ifx_GPT12_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_PISEL_Bits B;
} Ifx_GPT12_PISEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T2_Bits B;
} Ifx_GPT12_T2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T2CON_Bits B;
} Ifx_GPT12_T2CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T3_Bits B;
} Ifx_GPT12_T3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T3CON_Bits B;
} Ifx_GPT12_T3CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T4_Bits B;
} Ifx_GPT12_T4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T4CON_Bits B;
} Ifx_GPT12_T4CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T5_Bits B;
} Ifx_GPT12_T5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T5CON_Bits B;
} Ifx_GPT12_T5CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T6_Bits B;
} Ifx_GPT12_T6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GPT12_T6CON_Bits B;
} Ifx_GPT12_T6CON;
# 468 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGpt12_regdef.h"
typedef volatile struct _Ifx_GPT12
{
       Ifx_GPT12_CLC CLC;
       Ifx_GPT12_PISEL PISEL;
       Ifx_GPT12_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_GPT12_T2CON T2CON;
       Ifx_GPT12_T3CON T3CON;
       Ifx_GPT12_T4CON T4CON;
       Ifx_GPT12_T5CON T5CON;
       Ifx_GPT12_T6CON T6CON;
       Ifx_UReg_8Bit reserved_24[12];
       Ifx_GPT12_CAPREL CAPREL;
       Ifx_GPT12_T2 T2;
       Ifx_GPT12_T3 T3;
       Ifx_GPT12_T4 T4;
       Ifx_GPT12_T5 T5;
       Ifx_GPT12_T6 T6;
       Ifx_UReg_8Bit reserved_48[160];
       Ifx_GPT12_OCS OCS;
       Ifx_GPT12_KRSTCLR KRSTCLR;
       Ifx_GPT12_KRST1 KRST1;
       Ifx_GPT12_KRST0 KRST0;
       Ifx_UReg_8Bit reserved_F8[4];
       Ifx_GPT12_ACCEN0 ACCEN0;
} Ifx_GPT12;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGpt12_reg.h" 2
# 2 ".\\output\\inc/IfxGpt12_reg.h" 2
# 80 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 1 ".\\output\\inc/IfxGpt12_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGpt12_bf.h" 1
# 2 ".\\output\\inc/IfxGpt12_bf.h" 2
# 81 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2


# 1 ".\\output\\inc/SchM_Icu_17_TimerIp.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Icu_17_TimerIp.h" 1
# 79 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Icu_17_TimerIp.h"
extern void SchM_Enter_Icu_17_TimerIp_ResetEdgeCount(void);
# 101 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Icu_17_TimerIp.h"
extern void SchM_Exit_Icu_17_TimerIp_ResetEdgeCount(void);
# 124 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Icu_17_TimerIp.h"
extern void SchM_Enter_Icu_17_TimerIp_SetActivationCondition(void);
# 147 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Icu_17_TimerIp.h"
extern void SchM_Exit_Icu_17_TimerIp_SetActivationCondition(void);
# 169 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Icu_17_TimerIp.h"
extern void SchM_Enter_Icu_17_TimerIp_GtmEnableEdgeCount(void);
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Icu_17_TimerIp.h"
extern void SchM_Exit_Icu_17_TimerIp_GtmEnableEdgeCount(void);
# 213 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Icu_17_TimerIp.h"
extern void SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle(void);
# 235 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Icu_17_TimerIp.h"
extern void SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle(void);
# 2 ".\\output\\inc/SchM_Icu_17_TimerIp.h" 2
# 84 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 95 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Mcu_17_TimerIp.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h" 1
# 41 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 42 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h" 2
# 1 ".\\output\\inc/Mcu_17_TimerIp_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_17_TimerIp_Cfg.h" 1
# 46 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_17_TimerIp_Cfg.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_17_TimerIp_Cfg.h" 2
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_Cfg.h" 1
# 48 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_17_TimerIp_Cfg.h" 2
# 2 ".\\output\\inc/Mcu_17_TimerIp_Cfg.h" 2
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h" 2
# 53 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
# 1 ".\\output\\inc/IfxGtm_reg.h" 1
# 54 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h" 2
# 160 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
typedef uint8 Mcu_17_Gtm_TimerOutType;





typedef uint8 Mcu_17_Gtm_TimerOutputEnableType;





typedef uint8 Mcu_17_Gtm_TimerEnableType;




typedef enum
{
  MCU_NOCHANGE_OUT_ON_TRIGGER = 0X0U,
  MCU_DISABLE_OUT_ON_TRIGGER = 0x1U,
  MCU_ENABLE_OUT_ON_TRIGGER = 0x2U
} Mcu_17_Gtm_TimerOutputEnTriggerType;



typedef enum
{
  MCU_NOCHANGE_ON_TRIGGER = 0X0U,
  MCU_DISABLE_ON_TRIGGER = 0x1U,
  MCU_ENABLE_ON_TRIGGER = 0x2U
} Mcu_17_Gtm_TimerEnTriggerType;



typedef uint8 Mcu_17_Gtm_TimerUpdateEnableType;




typedef uint8 Mcu_17_Gtm_TimerStatusType;





typedef uint8 Mcu_17_Gtm_MappedPortTimerOutType;
# 222 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
typedef uint32 Mcu_17_Gtm_TimerChIdentifierType;



typedef struct
{
  Mcu_17_Gtm_TimerChIdentifierType TimerId;
  uint32 TimChCtrlReg;
  uint32 TimChExtendedCtrlReg;
  uint32 TimChFltRisingEdge;
  uint32 TimChFltFallingEdge;
  uint8 TimChIntEnMode;
} Mcu_17_Gtm_TimChConfigType;



typedef struct
{
  Mcu_17_Gtm_TimerOutType TimerType;
  Mcu_17_Gtm_TimerChIdentifierType TimerId;
  uint32 TimerChCtrlReg;
  uint32 TimerChCN0Reg;
  uint32 TimerChCM0Reg;
  uint32 TimerChCM1Reg;
  uint32 TimerChSR0Reg;
  uint32 TimerChSR1Reg;
  uint32 TimerChPortOutConfig;
  uint8 TimerChIntEnMode;
} Mcu_17_Gtm_TomAtomChConfigType;




typedef volatile struct
{
  Ifx_GTM_TIM_CH CH;
  uint8 Reserved1[64];
} Mcu_17_Gtm_TimCh;



typedef volatile struct
{
  Mcu_17_Gtm_TimCh TIM_CHANNEL[8];
} Mcu_17_Gtm_TimChArray;




typedef volatile struct
{

  Ifx_GTM_TOM_TGC_GLB_CTRL TGC_GLB_CTRL;

  Ifx_GTM_TOM_TGC_ACT_TB TGC_ACT_TB;

  Ifx_GTM_TOM_TGC_FUPD_CTRL TGC_FUPD_CTRL;

  Ifx_GTM_TOM_TGC_INT_TRIG TGC_INT_TRIG;

  uint8 Reserved2[48];

  Ifx_GTM_TOM_TGC_ENDIS_CTRL TGC_ENDIS_CTRL;

  Ifx_GTM_TOM_TGC_ENDIS_STAT TGC_ENDIS_STAT;

  Ifx_GTM_TOM_TGC_OUTEN_CTRL TGC_OUTEN_CTRL;

  Ifx_GTM_TOM_TGC_OUTEN_STAT TGC_OUTEN_STAT;
  uint8 Reserved3[432];
} Mcu_17_Gtm_TomTgc;



typedef volatile struct
{
  uint8 Reserved1[48];
  Mcu_17_Gtm_TomTgc TOM_TGC[2];
} Mcu_17_Gtm_TomTgcArray;



typedef volatile struct
{
  Ifx_GTM_TOM_CH CH;
  uint8 Reserved1[20];
} Mcu_17_Gtm_TomCh;



typedef volatile struct
{
  Mcu_17_Gtm_TomCh TOM_CHANNEL[16];
} Mcu_17_Gtm_TomChArray;




typedef volatile struct
{
  Ifx_GTM_ATOM_CH CH;
  uint8 Reserved1[80];
} Mcu_17_Gtm_AtomCh;



typedef volatile struct
{
  Mcu_17_Gtm_AtomCh ATOM_CHANNEL[8];
} Mcu_17_Gtm_AtomChArray;






typedef uint8 Mcu_17_Ccu6_KernelIdentifierType;




typedef uint8 Mcu_17_Ccu6_TimerType;




typedef uint8 Mcu_17_Ccu6_ComparatorType;






typedef uint32 Mcu_17_Ccu6_TimerChIdentifierType;


typedef struct
{
  Mcu_17_Ccu6_TimerChIdentifierType TimerId;
  uint32 TimerCtrlReg0;




  uint32 ModCtrlReg;



  uint32 PasStateLvlReg;



  uint32 TimerCntReg;
  uint32 TimerPeriodReg;
  uint32 Ccu6ShadowReg;
  uint8 TimerModeSelectReg;
  uint8 PortInSelReg0;
  uint8 IntEnReg;
  uint8 IntNodePointerReg;
} Mcu_17_Ccu6_TimerConfigType;



typedef struct
{
  Mcu_17_Ccu6_TimerChIdentifierType TimerId;
  uint8 IEnBitPos;
  uint8 IEnLen;
  uint8 RegVal;
} Mcu_17_Ccu6_TimerChIntType;




typedef uint8 Mcu_17_Gpt12_TimerBlockType;




typedef uint8 Mcu_17_Gpt12_TimerChIdentifierType;







typedef uint8 Mcu_17_Gpt12_ClkPrescalarType;
# 421 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
typedef struct
{
  Mcu_17_Gpt12_TimerChIdentifierType TimerId;
  uint32 TimerCtrlReg;
  uint32 TimerCntReg;
  uint8 PortInSelReg;
} Mcu_17_Gpt12_TimerConfigType;





typedef void (* const Mcu_17_Timer_CallbackFuncPtrType)
(
  uint8 LogicalChannelId,
  uint32 StatusFlags
);




typedef struct
{
  uint32 CompareRegVal;
  unsigned_int StmTimerId : 8;
  unsigned_int CMPRegId : 8;
  unsigned_int CmconRegVal : 8;
  unsigned_int reserved : 8;
} Mcu_17_Stm_TimerConfigType;




typedef uint8 Mcu_17_Stm_StmIdentifierType;


typedef uint8 Mcu_17_Stm_StmCmpIdentifierType;


typedef uint8 Mcu_17_Stm_ComIntEnableType;



typedef uint8 Mcu_17_Eru_SrcIdentifierType;
# 523 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 325 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 524 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h" 2
# 553 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChannelInit
              (const Mcu_17_Gtm_TomAtomChConfigType * const ConfigPtr);
# 584 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChannelShadowTransfer
(
  const uint8 Module,
  const uint8 Channel
);
# 616 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChannelDeInit
(
  const uint8 Module,
  const uint8 Channel
);
# 655 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChannelEnable
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerOutputEnableType TimerOutputEn
);
# 690 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChannelDisable
(
  const uint8 Module,
  const uint8 Channel
);
# 728 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern Mcu_17_Gtm_TimerStatusType Mcu_17_Gtm_IsTomChannelEnabled
(
  const uint8 Module,
  const uint8 Channel
);
# 762 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomTriggerRequest
(
  const uint8 Module,
  const uint8 TomTgcIndex,
  const uint16 TriggerChannels
);
# 795 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern Std_ReturnType Mcu_17_Gtm_TomChInitCheck
(
  const Mcu_17_Gtm_TomAtomChConfigType *const ConfigPtr
);
# 829 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChUpdateEnDis
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerUpdateEnableType UpEnVal
);
# 865 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChOutEnCtrlUpdate
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerOutputEnTriggerType TimerOutputEnDis
);
# 900 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChOutEnStatUpdate
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerOutputEnableType TimerOutputEnDis
);
# 935 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChEndisCtrlUpdate
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerEnTriggerType TimerEnDis
);
# 969 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChEndisStatUpdate
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerEnableType TimerEnDis
);
# 1002 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChannelInit
(
  const Mcu_17_Gtm_TomAtomChConfigType *const ConfigPtr
);
# 1035 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChannelShadowTransfer
(
  const uint8 Module,
  const uint8 Channel
);
# 1067 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChannelDeInit
(
  const uint8 Module,
  const uint8 Channel
);
# 1106 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChannelEnable
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerOutputEnableType TimerOutputEn
);
# 1141 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChannelDisable
(
  const uint8 Module,
  const uint8 Channel
);
# 1180 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern Mcu_17_Gtm_TimerStatusType Mcu_17_Gtm_IsAtomChannelEnabled
(
  const uint8 Module,
  const uint8 Channel
);
# 1212 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomTriggerRequest
(
  const uint8 Module,
  const uint16 TriggerChannels
);
# 1242 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern Std_ReturnType Mcu_17_Gtm_AtomChInitCheck
(
  const Mcu_17_Gtm_TomAtomChConfigType *const ConfigPtr
);
# 1276 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChUpdateEnDis
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerUpdateEnableType UpEnVal
);
# 1312 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChOutEnCtrlUpdate
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerOutputEnTriggerType TimerOutputEnDis
);
# 1347 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChOutEnStatUpdate
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerOutputEnableType TimerOutputEnDis
);
# 1382 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChEndisCtrlUpdate
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerEnTriggerType TimerEnDis
);
# 1416 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChEndisStatUpdate
(
  const uint8 Module,
  const uint8 Channel,
  const Mcu_17_Gtm_TimerEnableType TimerEnDis
);
# 1449 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TimChannelInit
(
  const Mcu_17_Gtm_TimChConfigType * const ConfigPtr
);
# 1480 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TimChannelDeInit
(
  const uint8 Module,
  const uint8 Channel
);
# 1512 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TimChannelEnable
(
  const uint8 Module,
  const uint8 Channel
);
# 1545 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TimChannelDisable
(
  const uint8 Module,
  const uint8 Channel
);
# 1583 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern Mcu_17_Gtm_TimerStatusType Mcu_17_Gtm_IsTimChannelEnabled
(
  const uint8 Module,
  const uint8 Channel
);
# 1618 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_ConnectPortPinToTim
(
  const uint8 Module,
  const uint8 Channel,
  const uint8 TimerChselValue
);
# 1657 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_ConnectTimerOutToPortPin
(
  const uint16 Tout_IndexNumber,
  const Mcu_17_Gtm_MappedPortTimerOutType TimerOutColumnSelect
);
# 1689 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern Std_ReturnType Mcu_17_Gtm_TimChInitCheck
(
  const Mcu_17_Gtm_TimChConfigType *const ConfigPtr
);
# 1721 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Ccu6_TimerInit
(
  const Mcu_17_Ccu6_TimerConfigType * const ConfigPtr
);
# 1749 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Ccu6_TimerDeInit
(
  const Mcu_17_Ccu6_TimerChIdentifierType TimerId
);
# 1776 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Ccu6_TimerStart
(
  const Mcu_17_Ccu6_TimerChIdentifierType TimerId
);
# 1803 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Ccu6_TimerStop
(
  const Mcu_17_Ccu6_TimerChIdentifierType TimerId
);
# 1832 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Ccu6_TimerShadowTransfer
(
  const Mcu_17_Ccu6_TimerChIdentifierType TimerId
);
# 1862 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Ccu6_TimerIntEnDis
(
  const Mcu_17_Ccu6_TimerChIntType * const Ccu6IntConfig
);
# 1893 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern Std_ReturnType Mcu_17_Ccu6_TimerInitCheck
(
  const Mcu_17_Ccu6_TimerConfigType * const ConfigPtr
);
# 1922 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gpt12_TimerInit
(
  const Mcu_17_Gpt12_TimerConfigType * const ConfigPtr
);
# 1952 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern Std_ReturnType Mcu_17_Gpt12_TimerInitCheck
(
  const Mcu_17_Gpt12_TimerConfigType *const ConfigPtr
);
# 1980 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gpt12_TimerDeInit
(
  const Mcu_17_Gpt12_TimerChIdentifierType TimerId
);
# 2007 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gpt12_TimerStart
(
  const Mcu_17_Gpt12_TimerChIdentifierType TimerId
);
# 2034 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gpt12_TimerStop
(
  const Mcu_17_Gpt12_TimerChIdentifierType TimerId
);
# 2062 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Stm_SetupComparator
(
  const Mcu_17_Stm_TimerConfigType * const ConfigPtr
);
# 2092 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern Std_ReturnType Mcu_17_Stm_CheckComparator
(
  const Mcu_17_Stm_TimerConfigType * const ConfigPtr
);
# 2121 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Stm_ComparatorIntDisable
(
  const uint8 StmTimerId,
  const uint8 StmComparatorId
);





# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 337 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 2132 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h" 2
# 2141 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 350 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 2142 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h" 2
# 2174 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TomChannelIsr
(
  const uint8 Module,
  const uint8 Channel
);
# 2210 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_AtomChannelIsr
(
  const uint8 Module,
  const uint8 Channel
);
# 2246 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gtm_TimChannelIsr
(
  const uint8 Module,
  const uint8 Channel
);
# 2283 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Ccu6_ChannelIsr
(
  const Mcu_17_Ccu6_KernelIdentifierType Kernel,
  const Mcu_17_Ccu6_ComparatorType Comparator
);
# 2315 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Gpt12_ChannelIsr
(
  const Mcu_17_Gpt12_TimerChIdentifierType Timer
);
# 2348 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Stm_CompareMatchIsr
(
  const Mcu_17_Stm_StmIdentifierType StmTimerId,
  const Mcu_17_Stm_StmCmpIdentifierType StmCmpId
);
# 2381 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
extern void Mcu_17_Eru_GatingIsr
(
  const Mcu_17_Eru_SrcIdentifierType EruSrcId
);






# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 362 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 2392 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h" 2
# 2 ".\\output\\inc/Mcu_17_TimerIp.h" 2
# 96 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 248 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "ClearedData.Cpu0.32bit" aw 4
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 249 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 260 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static uint32
          Icu_17_TimerIp_GlbIndexStatusCore0[(19U)];







static Icu_17_TimerIp_ChannelData
   Icu_17_TimerIp_ChannelDataCore0[(19U)];
# 288 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 63 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 289 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 308 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "InitData.Cpu0.32bit" aw 4
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 309 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2







static Icu_17_TimerIp_CoreType Icu_17_TimerIp_VarlistCore0 =
{
  Icu_17_TimerIp_GlbIndexStatusCore0,

    Icu_17_TimerIp_ChannelDataCore0,






  ICU_17_TIMERIP_MODE_NORMAL
};
# 345 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 90 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 346 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 958 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 374 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "ClearedData.LmuNC.32bit" aw 4
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 959 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2



static const Icu_17_TimerIp_ConfigType *Icu_17_TimerIp_ConfigPtr;




static uint32 Icu_17_TimerIp_InitStatus;
# 984 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 387 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 985 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 1005 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 402 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "Const.Cpu0.32bit" a 4
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 1006 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2

static Icu_17_TimerIp_CoreType* const
  Icu_17_TimerIp_Varlist[6] =
{

    &Icu_17_TimerIp_VarlistCore0,






    ((void *)0),




    ((void *)0),




    ((void *)0),




    ((void *)0),




    ((void *)0),

};
# 1057 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 415 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 1058 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 1074 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 627 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 1075 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
# 1090 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static void Icu_lResetGlobalVariables(const uint8 CoreId);

static __inline__ void Icu_lChannelInit(const uint8 CoreId);



static __inline__ void Icu_lGtmChannelInit(
  const Icu_17_TimerIp_ChannelConfigType * const LocalIcuChanPtr);
# 1221 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ uint8 Icu_lGetCoreChIndex(uint8 Channel);




static __inline__ void Icu_lGtmDisableChnIrq(
  const uint16 GlobalChannelNumber);
# 1305 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static void Icu_lEnableNotificationInterrupts(
  const uint32 IcuHwOption,
  const uint16 HwUnit,
  uint32* const GlbIndexStatusPtr);




static __inline__ void Icu_lGtmClearIrqNotify(
  const uint16 GlobalChannelNumber,
  uint32* const GlbIndexStatusPtr);




static void Icu_lGtmIrqModify(const uint16 GlobalChannelNumber,
                              const uint8 InterruptFlag);
# 1344 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static void Icu_lDisableNotificationInterrupts(const uint32 IcuHwOption,
    const uint16 HwUnit);
# 1361 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmStartEdgeDetect(const uint16 GlobalChannelNumber);
# 1388 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ uint8 Icu_lGtmStartSignalMeasurement(
  const uint16 GlobalChannelNumber,
  const uint8 SignalMode);
# 1403 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmStopSignalMeasurement(
  const uint16 GlobalChannelNumber);
# 1428 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmGetDutyCycleValues(
  const uint16 GlobalChannelNumber,
  uint32 *const GlbIndexStatusPtr,
  Icu_17_TimerIp_DutyCycleType *const DutyCycleValues);
# 1486 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmChangeActiveEdge(
  const uint16 GlobalChannelNumber,
  const Icu_17_TimerIp_ActivationType ActiveEdge);
# 1557 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmStartMultiEdgeDetect
(const uint16 GlobalChannelNumber,
 const uint32 EdgeCount);
# 1590 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lTim_Isr(
  const uint8 CoreChIndex, const uint32 StatusFlags);
# 1619 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmSignalMeasureIsr(
  const Icu_17_TimerIp_ChannelConfigType *const IcuChanPtr,
  uint32* const GlbIndexStatusPtr);
# 1638 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lSignalEdgeNotification_Isr(
  const uint8 CoreId,
  const Icu_17_TimerIp_ChannelConfigType *const LocalIcuChanPtr,
  uint32 *const GlbIndexStatusPtr);
# 1695 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_Init(
  const Icu_17_TimerIp_ConfigType *const ConfigPtr)
{
  uint8 CoreId;


  CoreId = (0);
# 1718 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  {




    Icu_17_TimerIp_ConfigPtr = ConfigPtr;





    if(Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId] != ((void *)0) )
    {
# 1742 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      Icu_lResetGlobalVariables(CoreId);



      Icu_lChannelInit(CoreId);



      Icu_17_TimerIp_Varlist[CoreId]->GlobalMode = ICU_17_TIMERIP_MODE_NORMAL;
    }




    {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)(1U))),"d"(((sint32) (CoreId * 2))),"i"((2)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((&Icu_17_TimerIp_InitStatus)),"d"(tmp): "memory");}

                                                                   ;
  }
  return;



}
# 2843 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_EnableNotification(
  const Icu_17_TimerIp_ChannelType Channel)
{





  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;
  uint32* GlbIndexStatusPtr;

  uint16 HwUnit;
  uint32 IcuOption;
# 2866 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  uint8 CoreId;
  uint8 CoreChIndex;

  CoreId = (0);
# 2888 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  {
    CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);




    GlbIndexStatusPtr =
        &((Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr)[CoreChIndex]);






    if (0U
        == ((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((4U))), (unsigned)((1)))))
                                                       )
    {

      LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);





      if (LocalIcuChanPtr->NotificationPointer != ((void *)0))
      {
# 2924 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
        if (LocalIcuChanPtr->IcuProperties.MeasurementMode
            == (uint32) ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT)
        {

          HwUnit =
            (uint16) (LocalIcuChanPtr->IcuProperties.AssignedHwUnitNumber);

          IcuOption = (uint32) LocalIcuChanPtr->IcuProperties.AssignedHwUnit;
# 2967 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          Icu_lEnableNotificationInterrupts(IcuOption, HwUnit,
                                            GlbIndexStatusPtr);
        }




        {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )1U)),"d"(((4U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}
                                                                 ;
      }
# 2990 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
    }
  }
# 3018 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
}
# 3048 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_DisableNotification(
  const Icu_17_TimerIp_ChannelType Channel)
{





  uint32* GlbIndexStatusPtr;

  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;
  uint16 HwUnit;
  uint32 IcuOption;
# 3071 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  uint8 CoreChIndex;
  uint8 CoreId;

  CoreId = (0);
# 3095 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  {
    CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);
    GlbIndexStatusPtr =
        &((Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr)[CoreChIndex]);





    if(1U == ((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((4U))), (unsigned)((1)))))
                                                               )
    {

      LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);



      if (LocalIcuChanPtr->IcuProperties.MeasurementMode
          == (uint32)ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT)
      {

        HwUnit = (uint16)(LocalIcuChanPtr->IcuProperties.AssignedHwUnitNumber);

        IcuOption = (uint32)LocalIcuChanPtr->IcuProperties.AssignedHwUnit;
# 3152 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
        {



          Icu_lDisableNotificationInterrupts(IcuOption, HwUnit);
        }
      }




      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)0U)),"d"(((4U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                     ;
    }
  }
# 3191 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
}
# 3223 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_EnableEdgeDetection(
  const Icu_17_TimerIp_ChannelType Channel)
{
  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;
  uint32* GlbIndexStatusPtr;
# 3236 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  uint16 CellUsed;
  uint8 CoreChIndex;
# 3246 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  uint32 IcuOption;
  uint8 CoreId;


  CoreId = (0);
# 3271 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  {

    CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);

    LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);






    if (LocalIcuChanPtr->IcuProperties.MeasurementMode
        == (uint32)ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT)

    {

      GlbIndexStatusPtr =
        &((Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr)[CoreChIndex]);

      CellUsed =
        (uint8)LocalIcuChanPtr->IcuProperties. AssignedHwUnitNumber;

      IcuOption = (uint32)LocalIcuChanPtr->IcuProperties.AssignedHwUnit;



      switch(IcuOption)
      {



        case (0UL):






          Icu_lGtmStartEdgeDetect(CellUsed);

          break;



        case (2UL):







          break;



        case (1UL):
# 3352 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;



        default:
# 3412 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;
      }




      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)ICU_17_TIMERIP_IDLE)),"d"(((0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                    ;
    }
  }
# 3432 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
}
# 3463 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_DisableEdgeDetection(
  const Icu_17_TimerIp_ChannelType Channel)
{
  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;




  uint16 CellUsed;
  uint32 IcuOption;
  uint8 CoreChIndex;



  uint8 CoreId;

  CoreId = (0);
# 3500 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  {
    CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);

    LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);






    if (LocalIcuChanPtr->IcuProperties.MeasurementMode
        == (uint32)ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT)

    {

      CellUsed = (uint16)LocalIcuChanPtr->IcuProperties.
                 AssignedHwUnitNumber;

      IcuOption = (uint32)LocalIcuChanPtr->IcuProperties.AssignedHwUnit;
      switch(IcuOption)
      {



        case (0UL):




          Icu_lGtmDisableChnIrq(CellUsed);

          break;



        case (2UL):






          break;



        case (1UL):
# 3564 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;



        default:
# 3584 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;
      }
    }
  }
# 3597 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
}
# 3952 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_StartSignalMeasurement(
  const Icu_17_TimerIp_ChannelType Channel)
{
  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;






  uint32* GlbIndexStatusPtr;
  uint16 CellUsed;
  uint8 CfgEdge = 0U;
  uint8 CoreChIndex;




  uint8 GtmSigKind;

  uint8 SigKind = 0U;
  uint8 CoreId;

  CoreId = (0);
# 3996 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  {

    CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);
    LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);






    if (LocalIcuChanPtr->IcuProperties.MeasurementMode
        == (uint32)ICU_17_TIMERIP_MODE_SIGNAL_MEASUREMENT)

    {

      CellUsed = (uint16)LocalIcuChanPtr->IcuProperties.AssignedHwUnitNumber;

      SigKind = LocalIcuChanPtr->IcuProperties.MeasurementProperty;

      GlbIndexStatusPtr =
        &((Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr)[CoreChIndex]);
      CfgEdge = (uint8)(((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((2U))), (unsigned)((2)))))
                                                    );

      switch(LocalIcuChanPtr->IcuProperties.AssignedHwUnit)
      {



        case (0UL):






          if(((uint8)ICU_17_TIMERIP_PERIOD_TIME == SigKind) ||
              (SigKind == (uint8)ICU_17_TIMERIP_DUTY_CYCLE))
          {
            if(CfgEdge == (uint8)ICU_17_TIMERIP_FALLING_EDGE)
            {
              GtmSigKind = 0U;
            }
            else if(CfgEdge == (uint8)ICU_17_TIMERIP_RISING_EDGE)
            {
              GtmSigKind = 1U;
            }
            else
            {
              GtmSigKind = (uint8)ICU_17_TIMERIP_BOTH_EDGES;
            }
          }
          else if(SigKind == (uint8)ICU_17_TIMERIP_HIGH_TIME)
          {
            GtmSigKind = (uint8)(0x10U);
          }
          else
          {
            GtmSigKind = (uint8)1U | (uint8)(0x10U);
          }



          CfgEdge = Icu_lGtmStartSignalMeasurement(CellUsed, GtmSigKind);
          if(GtmSigKind == (uint8)ICU_17_TIMERIP_BOTH_EDGES)
          {
            {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )CfgEdge)),"d"(((2U))),"i"((2)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}
                                                                         ;
          }

          break;



        default:
# 4085 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;
      }




      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)(1U))),"d"(((sint32)(5U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                                     ;

      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)ICU_17_TIMERIP_IDLE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                                  ;

      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)ICU_17_TIMERIP_IDLE)),"d"(((sint32)(9U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                                          ;

    }
  }
# 4114 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
}
# 4145 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_StopSignalMeasurement(
  const Icu_17_TimerIp_ChannelType Channel)
{

  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;
  uint32* GlbIndexStatusPtr;
  uint16 CellUsed;
  uint8 CoreChIndex;
  uint8 CoreId;

  CoreId = (0);
# 4175 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  {

    CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);
    LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);






    if (LocalIcuChanPtr->IcuProperties.MeasurementMode
        == (uint32)ICU_17_TIMERIP_MODE_SIGNAL_MEASUREMENT)

    {

      CellUsed = (uint16)LocalIcuChanPtr->IcuProperties.AssignedHwUnitNumber;

      switch(LocalIcuChanPtr->IcuProperties.AssignedHwUnit)
      {



        case (0UL):






          Icu_lGtmStopSignalMeasurement(CellUsed);

          break;



        default:
# 4220 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;
      }
      GlbIndexStatusPtr =
        &((Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr)[CoreChIndex]);



      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"((0U)),"d"(((sint32)(5U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                         ;
    }
  }
# 4241 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
}
# 4483 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_GetDutyCycleValues(
  const Icu_17_TimerIp_ChannelType Channel,
  Icu_17_TimerIp_DutyCycleType *const DutyCycleValues)
{
  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;







  uint32* GlbIndexStatusPtr;
  uint16 CellUsed;

  uint32 IcuOption;
  uint8 CoreChIndex;




  uint8 Measure;
  uint8 CoreId;


  CoreId = (0);
# 4559 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  {
    CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);
    LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);

    IcuOption = LocalIcuChanPtr->IcuProperties.AssignedHwUnit;


    CellUsed = (uint8)LocalIcuChanPtr->IcuProperties.AssignedHwUnitNumber;



    Measure = (uint8)(LocalIcuChanPtr->IcuProperties.MeasurementProperty);

    DutyCycleValues->ActiveTime = (Icu_17_TimerIp_ValueType)0U;
    DutyCycleValues->PeriodTime = (Icu_17_TimerIp_ValueType)0U;



    if(Measure != (uint8)ICU_17_TIMERIP_DUTY_CYCLE)
    {
# 4593 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
    }
    else
    {

      switch(IcuOption)
      {



        case (0UL):


          GlbIndexStatusPtr =
        &((Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr)[CoreChIndex]);




          Icu_lGtmGetDutyCycleValues(CellUsed,
                                     GlbIndexStatusPtr, DutyCycleValues);

          break;



        default:
# 4648 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;
      }
    }
  }



}
# 4851 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_SetActivationCondition(
  const Icu_17_TimerIp_ChannelType Channel,
  const Icu_17_TimerIp_ActivationType Activation)
{




  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;
  uint32* GlbIndexStatusPtr;
  uint32 IcuHwOption;
  uint16 CellUsed;
  uint8 CoreChIndex;
  uint8 CoreId;







  CoreId = (0);
# 4909 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  {

    CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);

    LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);

    GlbIndexStatusPtr =
        &((Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr)[CoreChIndex]);




    if ((LocalIcuChanPtr->IcuProperties.MeasurementMode
        == (uint32) ICU_17_TIMERIP_MODE_SIGNAL_MEASUREMENT) ||
        (LocalIcuChanPtr->IcuProperties.MeasurementMode
        == (uint32) ICU_17_TIMERIP_MODE_INCREMENTAL_INTERFACE))
    {
# 4947 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
    }
# 4971 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
    else
    {

      IcuHwOption = (uint32) LocalIcuChanPtr->IcuProperties.AssignedHwUnit;

      CellUsed = (uint16) LocalIcuChanPtr->IcuProperties.AssignedHwUnitNumber;




      switch (IcuHwOption)
      {



        case (0UL):





          Icu_lGtmChangeActiveEdge(CellUsed, Activation);

          break;



        case (2UL):






          break;



        case (1UL):
# 5048 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;



        default:
# 5089 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;
      }



      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )Activation)),"d"(((2U))),"i"((2)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}
                                                                      ;




      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )ICU_17_TIMERIP_IDLE)),"d"(((0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}
                                                                   ;
    }
  }
# 5113 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
}
# 5679 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_EnableMultiEdgeDetection(
  const Icu_17_TimerIp_ChannelType Channel,
  const uint32 EdgeCount)
{
  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;
  uint32* GlbIndexStatusPtr;
  uint16 CellUsed;
  uint8 CoreChIndex;
  uint32 IcuOption;
# 5701 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  uint8 CoreId;


  CoreId = (0);
# 5738 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);
  LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                              ChannelConfigPtr)[CoreChIndex]);




  if (LocalIcuChanPtr->IcuProperties.MeasurementMode
      == (uint32)ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT)



  {

    GlbIndexStatusPtr =
        &((Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr)[CoreChIndex]);
    CellUsed =
      (Icu_17_TimerIp_ChannelType)LocalIcuChanPtr->IcuProperties.
      AssignedHwUnitNumber;

    {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)ICU_17_TIMERIP_IDLE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                                               ;

    IcuOption = (uint32)LocalIcuChanPtr->IcuProperties.AssignedHwUnit;
    switch(IcuOption)
    {



      case (0UL):






        Icu_lGtmStartMultiEdgeDetect(CellUsed, EdgeCount);

        break;



      default:
# 5811 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
        break;
    }



    {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)ICU_17_TIMERIP_IDLE)),"d"(((0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                  ;
  }
# 5829 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
}
# 6634 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lResetGlobalVariables(const uint8 CoreId)
{
  Icu_17_TimerIp_ChannelType Channel;



  Icu_17_TimerIp_ChannelData* ChannelDataPtr;
  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;


  ChannelDataPtr = Icu_17_TimerIp_Varlist[CoreId]->ChannelDataBasePtr;

  LocalIcuChanPtr =
      (Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->ChannelConfigPtr);
  for (Channel = (Icu_17_TimerIp_ChannelType) 0;
       Channel <
       Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->MaxDataChannelCore;
       Channel++)
  {
    switch ((uint32) LocalIcuChanPtr[Channel].IcuProperties.MeasurementMode)
    {
      case (uint32) ICU_17_TIMERIP_MODE_SIGNAL_MEASUREMENT:
        ChannelDataPtr[Channel].SigMeasureParasCcu6.ActiveTime = 0U;
        ChannelDataPtr[Channel].SigMeasureParasCcu6.FirstEdgeFlag = 0U;
        ChannelDataPtr[Channel].SigMeasureParasCcu6.RegValue = 0U;
        break;
      case (uint32) ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT:
        ChannelDataPtr->EdgeDetectParas.EdgeDetectCount = 0U;
        break;
      case (uint32) ICU_17_TIMERIP_MODE_TIMESTAMP:
        ChannelDataPtr[Channel].TimeCaptureParas.Address =
          (Icu_17_TimerIp_ValueType *)0U;
        ChannelDataPtr[Channel].TimeCaptureParas.Counter = 0U;
        ChannelDataPtr[Channel].TimeCaptureParas.Notify = 0U;
        ChannelDataPtr[Channel].TimeCaptureParas.NotifyCounter = 0U;
        ChannelDataPtr[Channel].TimeCaptureParas.Size = 0U;
        break;
      default:
        ChannelDataPtr[Channel].EdgeCountParas.EdgeCounter = 0U;
        break;
    }
  }







}
# 6707 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lChannelInit(const uint8 CoreId)
{

  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtrBase;
  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;
  uint32* GlbIndexStatusPtrBase;
  uint32* GlbIndexStatusPtr;

  uint32 IcuOption;
  Icu_17_TimerIp_ChannelType Channel;


  LocalIcuChanPtrBase =
      (Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->ChannelConfigPtr);
  GlbIndexStatusPtrBase =
    (Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr);




  for(Channel = (Icu_17_TimerIp_ChannelType) 0;



      Channel < Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->MaxChannelCore;
      Channel = Channel + 1U)
  {
    LocalIcuChanPtr = &LocalIcuChanPtrBase[Channel];
    GlbIndexStatusPtr = &GlbIndexStatusPtrBase[Channel];

    IcuOption = (uint32) LocalIcuChanPtr->IcuProperties.AssignedHwUnit;

    switch (IcuOption)
    {



      case (0UL):





        Icu_lGtmChannelInit(LocalIcuChanPtr);

        break;



      case (2UL):







        break;



      case (1UL):
# 6782 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
        break;



      default:
# 6804 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
        break;
    }




    *GlbIndexStatusPtr |=
         (((uint32)(LocalIcuChanPtr->IcuProperties.DefaultStartEdge)
            << (2U)) & (0xCU));
  }
}
# 6842 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmChannelInit(
  const Icu_17_TimerIp_ChannelConfigType *const LocalIcuChanPtr)
{
  uint16 TimChannelNumber;
  Mcu_17_Gtm_TimChConfigType TimCfgPtr;
  uint32 TempRegVal;
  uint8 ModuleNumber;
  uint8 ChannelNumber;


  TimChannelNumber = (uint16) LocalIcuChanPtr->IcuProperties.
                     AssignedHwUnitNumber;

  ModuleNumber = (uint8)((TimChannelNumber / (8U))
                         & (0xFU));

  ChannelNumber = (uint8)(TimChannelNumber % (8U));

  TempRegVal = 0U;


  switch((uint32)LocalIcuChanPtr->IcuProperties.MeasurementMode)
  {



    case (uint32)ICU_17_TIMERIP_MODE_SIGNAL_MEASUREMENT:

      TempRegVal |= (0UL) << (1U);
      TempRegVal |=
          ((uint32)(3U) << (8U)) |
          ((uint32)(3U) << (10U));
      if(((uint32)LocalIcuChanPtr->IcuProperties.MeasurementProperty ==
          (uint32)ICU_17_TIMERIP_HIGH_TIME) ||
          ((uint32)LocalIcuChanPtr->IcuProperties.MeasurementProperty ==
           (uint32)ICU_17_TIMERIP_LOW_TIME))
      {
        TempRegVal |= (0x8000UL);
      }

      break;



    case (uint32)ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT:

      TempRegVal |= (2UL) << (1U);
      TempRegVal |= ((uint32)1UL);

      break;



    case (uint32)ICU_17_TIMERIP_MODE_TIMESTAMP:

      TempRegVal |= (2UL) << (1U);
      TempRegVal |= ((uint32)(LocalIcuChanPtr->IcuProperties.
                     TimChannelGpr0InputSelect) << (8U));

      break;



    default:

      TempRegVal |= (2UL) << (1U);

      break;
  }


  TempRegVal |=
      (uint32) (((uint32) (LocalIcuChanPtr->IcuProperties.
          TimChannelClockSelect) << 24U)
          | ((uint32) (LocalIcuChanPtr->IcuProperties.
             TimChannelInputSelect) << ((uint32)6UL))
          | ((uint32) (LocalIcuChanPtr->IcuProperties.
             TimChannelFilterEnable) << (16U))
          | ((uint32) (LocalIcuChanPtr->IcuProperties.
             TimChFilterCounterFreqSelect) << (17U))
          | ((uint32) (LocalIcuChanPtr->IcuProperties.
             TimChFilterModeForRisingEdge) << (20U))
          | ((uint32) (LocalIcuChanPtr->IcuProperties.
             TimChFilterModeForFallingEdge) << (22U)));



  if((uint8)ICU_17_TIMERIP_FALLING_EDGE ==
      (uint8)LocalIcuChanPtr->IcuProperties.DefaultStartEdge)
  {
    TempRegVal |= (0UL);
  }
  else if((uint8)ICU_17_TIMERIP_RISING_EDGE ==
          (uint8)LocalIcuChanPtr->IcuProperties.DefaultStartEdge)
  {
    TempRegVal |= (0x2000UL);
  }
  else
  {
    TempRegVal |= (0x4000UL);
  }






  TimCfgPtr.TimChCtrlReg = TempRegVal;
  TimCfgPtr.TimChFltRisingEdge =
    (uint32) (LocalIcuChanPtr->IcuProperties.TimChFilterTimeForRisingEdge);
  TimCfgPtr.TimChFltFallingEdge =
    (uint32) (LocalIcuChanPtr->IcuProperties.TimChFilterTimeForFallingEdge);

  TimCfgPtr.TimChIntEnMode = (uint8) ((uint32) (0x0UL)
      | ((uint32) (LocalIcuChanPtr->IcuProperties.InterruptMode)
          << (6U)));

  TimCfgPtr.TimChExtendedCtrlReg = (0x0UL);
  TimCfgPtr.TimerId = (uint32)ChannelNumber;
  TimCfgPtr.TimerId |= ((uint32)ModuleNumber) << (0x8U);




  Mcu_17_Gtm_ConnectPortPinToTim(ModuleNumber, ChannelNumber,
                                 (LocalIcuChanPtr->IcuProperties.PinSelection));







  Mcu_17_Gtm_TimChannelInit(&TimCfgPtr);
}
# 8584 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmDisableChnIrq(
  const uint16 GlobalChannelNumber)
{

  Ifx_GTM_TIM_CH* TimChannelRegPtr;
  uint8 ModuleNo;
  uint8 ChannelNo;



  ModuleNo = (uint8)((GlobalChannelNumber / (8U))
                     & (0xFU));

  ChannelNo = (uint8)(GlobalChannelNumber % (8U));
# 8607 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNo].CH));

  TimChannelRegPtr->CTRL.U &= ~((uint32)1UL) ;
}
# 9335 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static void Icu_lEnableNotificationInterrupts(const uint32 IcuHwOption,
    const uint16 HwUnit,
    uint32* const GlbIndexStatusPtr)
{






  switch(IcuHwOption)
  {



    case (0UL):




      Icu_lGtmClearIrqNotify(HwUnit, GlbIndexStatusPtr);



      Icu_lGtmIrqModify(HwUnit, 1U);

      break;



    case (2UL):
# 9375 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      break;



    case (1UL):
# 9404 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      break;



    default:
# 9421 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      break;
  }






}
# 9459 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmClearIrqNotify(
  const uint16 GlobalChannelNumber,
  uint32* const GlbIndexStatusPtr)
{
  Ifx_GTM_TIM_CH* TimChannelRegPtr;
  uint8 ModuleNo;
  uint8 ChannelNo;
  uint32 NotifyValue;


  ModuleNo = (uint8)((GlobalChannelNumber / (8U))
                     & (0xFU));

  ChannelNo = (uint8)(GlobalChannelNumber % (8U));
# 9482 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNo].CH));
# 9491 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  NotifyValue = swapmskw (((unsigned int*)(&(TimChannelRegPtr->IRQ.NOTIFY.U))),((unsigned int)(0x3fUL)), ((unsigned int)(0xFFFFFFFFUL)));

                                                                               ;


  if(1U == (NotifyValue & (1U)))
  {
    {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)ICU_17_TIMERIP_ACTIVE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                                  ;
  }






}
# 9537 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static void Icu_lGtmIrqModify(const uint16 GlobalChannelNumber,
                              const uint8 InterruptFlag)
{
  Ifx_GTM_TIM_CH* TimChannelRegPtr;
  uint8 ModuleNo;
  uint8 ChannelNo;



  ModuleNo = (uint8)((GlobalChannelNumber / (8U))
                     & (0xFU));

  ChannelNo = (uint8)(GlobalChannelNumber % (8U));
# 9559 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNo].CH));

  TimChannelRegPtr->IRQ.EN.U = InterruptFlag;
}
# 9797 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static void Icu_lDisableNotificationInterrupts(
  const uint32 IcuHwOption,
  const uint16 HwUnit)
{




  switch(IcuHwOption)
  {



    case (0UL):





      Icu_lGtmIrqModify(HwUnit, 0U);

      break;



    case (2UL):







      break;



    case (1UL):
# 9844 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      break;



    default:







      break;
  }
}
# 9981 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmStartEdgeDetect(const uint16 GlobalChannelNumber)
{
  Ifx_GTM_TIM_CH* TimChannelRegPtr;
  uint8 ModuleNo;
  uint8 ChannelNo;



  ModuleNo = (uint8)((GlobalChannelNumber / (8U))
                     & (0xFU));

  ChannelNo = (uint8)(GlobalChannelNumber % (8U));
# 10003 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNo].CH));

  TimChannelRegPtr->CTRL.U &= ~((uint32)1UL) ;

  TimChannelRegPtr->CTRL.U &=
    (~((uint32)(0x7U) << (1U)));
  TimChannelRegPtr->CTRL.U |=
    (uint32)(((2UL) << (1U)));

  TimChannelRegPtr->IRQ.NOTIFY.U = (0x3fUL);

  TimChannelRegPtr->CTRL.U |= ((uint32)1UL) ;
}
# 10292 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ uint8 Icu_lGtmStartSignalMeasurement(
  const uint16 GlobalChannelNumber,
  const uint8 SignalMode)
{
  Ifx_GTM_TIM_CH* TimChannelRegPtr;
  uint32 TempRegVal;
  uint32 Cictrlvalue;
  uint8 ConfigEdge;
  uint8 ModuleNo;
  uint8 ChannelNo;


  ModuleNo = (uint8)((GlobalChannelNumber / (8U))
                     & (0xFU));

  ChannelNo = (uint8)(GlobalChannelNumber % (8U));
# 10317 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNo].CH));
  Cictrlvalue = (uint32)(((uint32)(TimChannelRegPtr->CTRL.U)) &
                         (1UL << ((uint32)6UL)));

  TempRegVal = (uint32)(TimChannelRegPtr->CTRL.U &
                        ((uint32)~((0x00007FFFUL))));

  if(SignalMode == (uint8)ICU_17_TIMERIP_BOTH_EDGES)
  {
    if(((TimChannelRegPtr->ECNT.U) & 1UL) == 1UL)
    {
      ConfigEdge = 0U;
    }
    else
    {
      ConfigEdge = 1U;
    }
  }
  else
  {
    ConfigEdge = SignalMode;
  }

  TempRegVal |= (uint32)(((uint32)(((uint32)((uint32)ConfigEdge) &
             (0x0FUL)) << (13))) |
             (uint32)((3UL) << (8U)) |
             (uint32)((3UL) << (10U))) ;

  TempRegVal |= Cictrlvalue;


  if((SignalMode & (0x10U)) == (0x10U))
  {


    if(((TimChannelRegPtr->ECNT.U) & 1UL) == ((uint32)((uint32)SignalMode) &
        (0x0FUL)))
    {
      TimChannelRegPtr->ECTRL.U |= (0x20000000U);
    }
    else
    {
      TimChannelRegPtr->ECTRL.U &= ~(0x20000000U);
    }
  }

  TimChannelRegPtr->IRQ.NOTIFY.U = (0x3fUL);

  TimChannelRegPtr->IRQ.EN.U = (0x4U);

  TimChannelRegPtr->CTRL.U = TempRegVal | ((uint32)1UL) ;
  return (ConfigEdge);
}
# 10575 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmStopSignalMeasurement(
  const uint16 GlobalChannelNumber)
{
  Ifx_GTM_TIM_CH* TimChannelRegPtr;
  uint8 ModuleNo;
  uint8 ChannelNo;


  ModuleNo = (uint8)((GlobalChannelNumber / (8U))
                     & (0xFU));

  ChannelNo = (uint8)(GlobalChannelNumber % (8U));
# 10596 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNo].CH));

  TimChannelRegPtr->CTRL.U &= ~((uint32)1UL) ;

}
# 10953 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmGetDutyCycleValues(
  const uint16 GlobalChannelNumber,
  uint32 *const GlbIndexStatusPtr,
  Icu_17_TimerIp_DutyCycleType *const DutyCycleValues)
{
  Ifx_GTM_TIM_CH *TimChannelRegPtr;
  uint32 Gpr0Val;
  uint32 Gpr1Val;
  uint8 ModuleNo;
  uint8 ChannelNo;





  Gpr0Val = 0U;
  Gpr1Val = 0U;

  ModuleNo = (uint8)((GlobalChannelNumber / (8U))
                     & (0xFU));

  ChannelNo = (uint8)(GlobalChannelNumber % (8U));
# 10984 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNo].CH));




  if(0U != (TimChannelRegPtr->IRQ.NOTIFY.U & (0x1U)))
  {

    {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)(1U))),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                       ;




    TimChannelRegPtr->IRQ.NOTIFY.U = 1;

    {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)0)),"d"(((sint32)(9U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                    ;

    SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle();

    Gpr0Val = TimChannelRegPtr->GPR0.U;
    Gpr1Val = TimChannelRegPtr->GPR1.U;
    if((Gpr0Val & (0xFF000000UL)) !=
        (Gpr1Val & (0xFF000000UL)))
    {
      Gpr0Val = TimChannelRegPtr->GPR0.U;
    }
    SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle();

  }




  else if(1U ==
    ((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((9U))), (unsigned)((1)))))
                                                                               )
  {




    {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)0)),"d"(((sint32)(9U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                    ;


    SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle();

    Gpr0Val = TimChannelRegPtr->GPR0.U;
    Gpr1Val = TimChannelRegPtr->GPR1.U;
    if((Gpr0Val & (0xFF000000UL)) !=
        (Gpr1Val & (0xFF000000UL)))
    {
      Gpr0Val = TimChannelRegPtr->GPR0.U;
    }
    SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle();

  }
  else
  {

  }



  DutyCycleValues->ActiveTime = Gpr0Val & ((0xFFFFFFUL));
  DutyCycleValues->PeriodTime = Gpr1Val & ((0xFFFFFFUL));



}
# 11723 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmChangeActiveEdge(
  const uint16 GlobalChannelNumber,
  const Icu_17_TimerIp_ActivationType ActiveEdge)
{
  Ifx_GTM_TIM_CH* TimChannelRegPtr;
  uint32 TempRegVal;
  uint8 ModuleNo;
  uint8 ChannelNo;
  uint8 LactiveEdge;


  ModuleNo = (uint8)((GlobalChannelNumber / (8U))
                     & (0xFU));

  ChannelNo = (uint8)(GlobalChannelNumber % (8U));

  if(ActiveEdge == ICU_17_TIMERIP_RISING_EDGE)
  {
    LactiveEdge = 1U;
  }
  else if(ActiveEdge == ICU_17_TIMERIP_FALLING_EDGE)
  {
    LactiveEdge = 0U;
  }
  else
  {
    LactiveEdge = (uint8)ICU_17_TIMERIP_BOTH_EDGES;
  }
# 11759 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNo].CH));

  TimChannelRegPtr->IRQ.NOTIFY.U = (0x3fUL);

  TempRegVal = TimChannelRegPtr->CTRL.U;
  TempRegVal &= (uint32)~((3UL) << (13));
  TempRegVal |= (uint32)(((uint32)LactiveEdge) << (13)) ;
  TimChannelRegPtr->CTRL.U = TempRegVal;
}
# 12837 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmStartMultiEdgeDetect(
  const uint16 GlobalChannelNumber,
  const uint32 EdgeCount)
{
  Ifx_GTM_TIM_CH* TimChannelRegPtr;
  uint8 ModuleNo;
  uint8 ChannelNo;


  ModuleNo = (uint8)((GlobalChannelNumber / (8U))
                     & (0xFU));

  ChannelNo = (uint8)(GlobalChannelNumber % (8U));
# 12860 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNo].CH));

  TimChannelRegPtr->CTRL.U &= ~((uint32)1UL) ;

  TimChannelRegPtr->IRQ.NOTIFY.U = (0x3fUL);

  TimChannelRegPtr->CTRL.U |=
    (uint32)(((3UL) << (1U)));

  TimChannelRegPtr->CNTS.U = (uint32)(EdgeCount - 1UL);

  TimChannelRegPtr->CTRL.U |= ((uint32)1UL) ;
}
# 13156 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
void Icu_17_TimerIp_Timer_Isr (const Icu_17_TimerIp_ChannelType Channel,
                               const uint32 StatusFlags)
{
  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;
  uint8 CoreId;
  uint8 CoreChIndex;







  CoreId = (0);
# 13222 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
    {

      CoreChIndex = Icu_lGetCoreChIndex((uint8)Channel);

      LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);

      switch (LocalIcuChanPtr->IcuProperties.AssignedHwUnit)
      {




        case (0UL):




          Icu_lTim_Isr((Icu_17_TimerIp_ChannelType)CoreChIndex, StatusFlags);

          break;





        case (2UL):






          break;




        case (1UL):






          break;
        default:
# 13279 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
          break;
      }
    }
# 13302 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  (void)(StatusFlags);

}
# 13330 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lTim_Isr(
  const uint8 CoreChIndex, const uint32 StatusFlags)
{
  const Icu_17_TimerIp_ChannelConfigType *LocalIcuChanPtr;
  uint32* GlbIndexStatusPtr;
# 13349 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  uint8 CoreId;

  CoreId = (0);
# 13367 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  LocalIcuChanPtr = &((Icu_17_TimerIp_ConfigPtr->CoreConfig[CoreId]->
                                                ChannelConfigPtr)[CoreChIndex]);
  GlbIndexStatusPtr =
        &((Icu_17_TimerIp_Varlist[CoreId]->GlbIndexStatusBasePtr)[CoreChIndex]);
  switch (LocalIcuChanPtr->IcuProperties.MeasurementMode)
  {



    case (uint32) ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT:
# 13391 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
        Icu_lSignalEdgeNotification_Isr(CoreId, LocalIcuChanPtr,
                                        GlbIndexStatusPtr);
# 13412 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      break;



    case (uint32) ICU_17_TIMERIP_MODE_SIGNAL_MEASUREMENT:
# 13431 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
        Icu_lGtmSignalMeasureIsr( LocalIcuChanPtr, GlbIndexStatusPtr);
# 13452 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      break;



    case (uint32) ICU_17_TIMERIP_MODE_TIMESTAMP:
# 13490 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      break;



    default:
# 13529 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      break;
  }

  (void)(StatusFlags);




}
# 13996 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lGtmSignalMeasureIsr(
  const Icu_17_TimerIp_ChannelConfigType *const IcuChanPtr,
  uint32* const GlbIndexStatusPtr)
{
  Ifx_GTM_TIM_CH *TimChannelRegPtr;
  uint32 NotifyValue;
  uint32 ECNTVal;
  uint32 CNTSVal;
  uint32 GPRVal;
  uint32 OVFLFlagStatus;
  uint16 CellNum;
  uint8 ChannelNumber;
  uint8 ModuleNo;

  CellNum = (uint16) (IcuChanPtr->IcuProperties.AssignedHwUnitNumber);
  ChannelNumber = (uint8) (CellNum % (8U));
  ModuleNo = (uint8) (CellNum / (8U));
# 14022 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  TimChannelRegPtr = (&(((Mcu_17_Gtm_TimChArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TIM[ModuleNo])))->TIM_CHANNEL[ChannelNumber].CH));




  if ((1U)
      == ((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((5U))), (unsigned)((1)))))
                                                        )
  {



    if (1U == TimChannelRegPtr->IRQ.EN.B.CNTOFL_IRQ_EN)
    {
# 14044 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      NotifyValue = swapmskw (((unsigned int*)&(TimChannelRegPtr->IRQ.NOTIFY.U)),((unsigned int)(0x1U)), ((unsigned int)(0xFFFFFFFFUL)));
                                                                           ;



      if (1U == (NotifyValue & 1U))
      {





        {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )ICU_17_TIMERIP_ACTIVE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                         ;




        {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32)(1U))),"d"(((sint32)(9U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}


                                                       ;
      }



      if(((uint32)IcuChanPtr->IcuProperties.MeasurementProperty ==
          (uint32)ICU_17_TIMERIP_HIGH_TIME) ||
          ((uint32)IcuChanPtr->IcuProperties.MeasurementProperty ==
           (uint32)ICU_17_TIMERIP_LOW_TIME))
      {
        ECNTVal = TimChannelRegPtr->ECNT.U;
        CNTSVal = TimChannelRegPtr->CNTS.U;
        GPRVal = TimChannelRegPtr->GPR1.U;
        GPRVal = GPRVal & (0x00FFFFFFU);
        CNTSVal = CNTSVal & (0x00FFFFFFU);



        if((ECNTVal & 1U) != (uint32)IcuChanPtr->IcuProperties.DefaultStartEdge)
        {





          if(GPRVal < IcuChanPtr->IcuProperties.OverflowISRThreshold)
          {
# 14101 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
            {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )ICU_17_TIMERIP_IDLE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                           ;




            {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )0U)),"d"(((sint32)(9U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                                              ;
          }
          else
          {


          }
        }
        else
        {




          if (CNTSVal >= IcuChanPtr->IcuProperties.OverflowISRThreshold)
          {





            {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )(1UL))),"d"(((sint32)(10U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                   ;
          }





          TimChannelRegPtr->IRQ.EN.B.CNTOFL_IRQ_EN = 0U;
          TimChannelRegPtr->IRQ.EN.B.NEWVAL_IRQ_EN = 1U;
        }
      }
      else
      {




        TimChannelRegPtr->IRQ.EN.B.CNTOFL_IRQ_EN = 0U;
        TimChannelRegPtr->IRQ.EN.B.NEWVAL_IRQ_EN = 1U;
      }
    }
    else
    {



      if(((uint32)IcuChanPtr->IcuProperties.MeasurementProperty ==
          (uint32)ICU_17_TIMERIP_HIGH_TIME) ||
          ((uint32)IcuChanPtr->IcuProperties.MeasurementProperty ==
           (uint32)ICU_17_TIMERIP_LOW_TIME))
      {
# 14172 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
        NotifyValue = swapmskw (((unsigned int*)&(TimChannelRegPtr->IRQ.NOTIFY.U)),((unsigned int)(0x4U)), ((unsigned int)(0xFFFFFFFFUL)));
                                                                              ;
        OVFLFlagStatus = ((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((sint32)(10U))), (unsigned)((1)))))
                                                                              ;




        if(((0x4U) ==
            (NotifyValue & (0x4U))) ||
            (OVFLFlagStatus == (uint32 )(1UL)))
        {




          {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )ICU_17_TIMERIP_IDLE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                         ;




          {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )0U)),"d"(((sint32)(9U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                                            ;

          {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )0UL)),"d"(((sint32)(10U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                         ;
        }
      }
      else
      {




        {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )ICU_17_TIMERIP_IDLE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                       ;




        {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )0U)),"d"(((sint32)(9U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                                                          ;
      }




      TimChannelRegPtr->IRQ.EN.B.NEWVAL_IRQ_EN = 0U;
      TimChannelRegPtr->IRQ.EN.B.CNTOFL_IRQ_EN = 1U;
    }
  }
# 14250 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
}
# 14634 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ void Icu_lSignalEdgeNotification_Isr(const uint8 CoreId,
    const Icu_17_TimerIp_ChannelConfigType * const LocalIcuChanPtr,
    uint32 * const GlbIndexStatusPtr)
{
  uint32 WakeupStatus;




  if (ICU_17_TIMERIP_MODE_SLEEP == Icu_17_TimerIp_Varlist[CoreId]->GlobalMode)
  {
# 14654 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
    WakeupStatus = ((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((1U))), (unsigned)((1)))))
                                                                ;



    if (1U == WakeupStatus)
    {



      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )ICU_17_TIMERIP_ACTIVE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                         ;
# 14689 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
      if (((1U)
           == ((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((4U))), (unsigned)((1)))))
                                                          ))
      {







        (LocalIcuChanPtr->NotificationPointer)();
      }
    }
# 14720 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
  }
  else
  {




    if (((1U)
         == ((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((4U))), (unsigned)((1)))))
                                                        ))
    {



      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )ICU_17_TIMERIP_ACTIVE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                         ;







      (LocalIcuChanPtr->NotificationPointer)();
    }



    else if ((1U)
        == ((_extru((unsigned)((*GlbIndexStatusPtr)), (unsigned)(((7UL))), (unsigned)((1)))))
                                                                            )
    {



      {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint32 )ICU_17_TIMERIP_ACTIVE)),"d"(((sint32)(0U))),"i"((1)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((GlbIndexStatusPtr)),"d"(tmp): "memory");}

                                         ;
    }
    else
    {
# 14777 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
    }

  }



}
# 15034 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
static __inline__ uint8 Icu_lGetCoreChIndex(const uint8 Channel)
{
  uint8 CoreChIndex;




  CoreChIndex = (uint8)Channel;

  return CoreChIndex;
}
# 15057 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 639 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 15058 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\src\\Icu_17_TimerIp.c" 2
