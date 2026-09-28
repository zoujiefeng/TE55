# 1 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
# 52 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
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
# 53 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2
# 1 ".\\output\\inc/Smu.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 1
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
# 1 ".\\output\\inc/Smu_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_Cfg.h" 1
# 2 ".\\output\\inc/Smu_Cfg.h" 2
# 48 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2
# 1 ".\\output\\inc/Std_Types.h" 1
# 49 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2
# 124 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
typedef uint32 Smu_FSPActionType;



typedef enum
{
  SMU_EFRST_DISABLE = 0U,
  SMU_EFRST_ENABLE = 1U
} Smu_EnableRunStateType;




typedef uint8 Smu_CoreCommandType;
# 149 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
typedef uint8 Smu_CoreStateType;
# 158 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
typedef uint8 Smu_CoreAlarmActionType;
# 170 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
typedef enum
{
  SMU_ALARM_GROUP0 = 0U,
  SMU_ALARM_GROUP1 = 1U,
  SMU_ALARM_GROUP2 = 2U,
  SMU_ALARM_GROUP3 = 3U,
  SMU_ALARM_GROUP4 = 4U,
  SMU_ALARM_GROUP5 = 5U,
  SMU_ALARM_GROUP6 = 6U,
  SMU_ALARM_GROUP7 = 7U,
  SMU_ALARM_GROUP8 = 8U,
  SMU_ALARM_GROUP9 = 9U,
  SMU_ALARM_GROUP10 = 10U,
  SMU_ALARM_GROUP11 = 11U,
  SMU_ALARM_GROUP20 = 20U,
  SMU_ALARM_GROUP21 = 21U
} Smu_AlarmGroupId;



typedef enum
{
  SMU_ALARM_0 = 0U,
  SMU_ALARM_1 = 1U,
  SMU_ALARM_2 = 2U,
  SMU_ALARM_3 = 3U,
  SMU_ALARM_4 = 4U,
  SMU_ALARM_5 = 5U,
  SMU_ALARM_6 = 6U,
  SMU_ALARM_7 = 7U,
  SMU_ALARM_8 = 8U,
  SMU_ALARM_9 = 9U,
  SMU_ALARM_10 = 10U,
  SMU_ALARM_11 = 11U,
  SMU_ALARM_12 = 12U,
  SMU_ALARM_13 = 13U,
  SMU_ALARM_14 = 14U,
  SMU_ALARM_15 = 15U,
  SMU_ALARM_16 = 16U,
  SMU_ALARM_17 = 17U,
  SMU_ALARM_18 = 18U,
  SMU_ALARM_19 = 19U,
  SMU_ALARM_20 = 20U,
  SMU_ALARM_21 = 21U,
  SMU_ALARM_22 = 22U,
  SMU_ALARM_23 = 23U,
  SMU_ALARM_24 = 24U,
  SMU_ALARM_25 = 25U,
  SMU_ALARM_26 = 26U,
  SMU_ALARM_27 = 27U,
  SMU_ALARM_28 = 28U,
  SMU_ALARM_29 = 29U,
  SMU_ALARM_30 = 30U,
  SMU_ALARM_31 = 31U
} Smu_AlarmIdType;



typedef uint8 Smu_SffTestResType;




typedef struct
{
  uint32 FSPCfg;
  uint32 AGCCfg;
  uint32 RTCCfg;
  uint32 RTAC00Cfg;
  uint32 RTAC01Cfg;
  uint32 RTAC10Cfg;
  uint32 RTAC11Cfg;
  uint32 AlarmStdbyCfg;
  uint32 AlarmCoreConfig[((uint32)(36U))];
  uint32 AlarmCoreFspConfig[((uint32)(12U))];
  uint32 AlarmStdbyFspConfig[((uint32)(2U))];
} Smu_ConfigType;
# 261 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 112 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 262 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2
# 295 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_Init
(
  const Smu_ConfigType* const ConfigPtr
);
# 326 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_DeInit(void);
# 359 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetAlarmAction
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos,
  Smu_CoreAlarmActionType* const IntAlarmAction,
  Smu_FSPActionType* const FSPAction
);
# 398 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_SetAlarmAction
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos,
  const Smu_CoreAlarmActionType AlarmAction,
  const Smu_FSPActionType FSPAction
);
# 430 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_LockConfigRegs(void);
# 465 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ActivateRunState(const uint32 Cmd);
# 494 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ClearAlarmStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos
);
# 532 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_SetAlarmStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos
);
# 564 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetAlarmStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  uint32* const AlarmStatus
);
# 598 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetAlarmDebugStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  uint32* const AlarmStatus
);
# 629 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_SetupErrorPin(void);
# 652 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ReleaseErrorPin(void);
# 682 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ReleaseFSP(void);
# 711 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ActivateFSP(void);
# 741 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_RTStop(const uint8 TimerNum );
# 775 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetRTMissedEvent
(
  const uint8 TimerNum,
  boolean* const EventMissed
);
# 806 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Smu_CoreStateType Smu_GetSmuState(void);
# 831 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ActivatePES (void);
# 856 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_CoreAliveTest (void);
# 882 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetAlarmExecutionStatus(
  const uint32 AlarmExecStatusReq,
  uint32* const AlarmExecStatus);
# 909 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ClearAlarmExecutionStatus
(
  const uint32 AlarmExecStatusReq
);
# 942 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_RegisterMonitor
(
  const uint16 * const RegMonPtr, Smu_SffTestResType * const RegMonResult
);
# 972 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_InitCheck (const Smu_ConfigType* const ConfigPtr);
# 1019 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 124 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 1020 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2

# 1 ".\\output\\inc/Smu_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_PBcfg.h" 1
# 54 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_PBcfg.h"
# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 55 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_PBcfg.h" 2

extern const Smu_ConfigType Smu_Config;





# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 90 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 63 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_PBcfg.h" 2
# 2 ".\\output\\inc/Smu_PBcfg.h" 2
# 1022 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2
# 2 ".\\output\\inc/Smu.h" 2
# 54 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2
# 1 ".\\output\\inc/SchM_Smu.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Smu.h" 1
# 55 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Smu.h"
extern void SchM_Enter_Smu_CmdAccess(void);
# 74 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Smu.h"
extern void SchM_Enter_Smu_DriverAccess(void);
# 93 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Smu.h"
extern void SchM_Exit_Smu_CmdAccess(void);
# 112 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Smu.h"
extern void SchM_Exit_Smu_DriverAccess(void);
# 2 ".\\output\\inc/SchM_Smu.h" 2
# 55 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2

# 1 ".\\output\\inc/IfxSmu_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_bf.h" 1
# 2 ".\\output\\inc/IfxSmu_bf.h" 2
# 57 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2
# 1 ".\\output\\inc/IfxSmu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h"
typedef struct _Ifx_SMU_ACCEN0_Bits
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
} Ifx_SMU_ACCEN0_Bits;


typedef struct _Ifx_SMU_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_SMU_ACCEN1_Bits;


typedef struct _Ifx_SMU_AD_Bits
{
    Ifx_UReg_32Bit DF0:1;
    Ifx_UReg_32Bit DF1:1;
    Ifx_UReg_32Bit DF2:1;
    Ifx_UReg_32Bit DF3:1;
    Ifx_UReg_32Bit DF4:1;
    Ifx_UReg_32Bit DF5:1;
    Ifx_UReg_32Bit DF6:1;
    Ifx_UReg_32Bit DF7:1;
    Ifx_UReg_32Bit DF8:1;
    Ifx_UReg_32Bit DF9:1;
    Ifx_UReg_32Bit DF10:1;
    Ifx_UReg_32Bit DF11:1;
    Ifx_UReg_32Bit DF12:1;
    Ifx_UReg_32Bit DF13:1;
    Ifx_UReg_32Bit DF14:1;
    Ifx_UReg_32Bit DF15:1;
    Ifx_UReg_32Bit DF16:1;
    Ifx_UReg_32Bit DF17:1;
    Ifx_UReg_32Bit DF18:1;
    Ifx_UReg_32Bit DF19:1;
    Ifx_UReg_32Bit DF20:1;
    Ifx_UReg_32Bit DF21:1;
    Ifx_UReg_32Bit DF22:1;
    Ifx_UReg_32Bit DF23:1;
    Ifx_UReg_32Bit DF24:1;
    Ifx_UReg_32Bit DF25:1;
    Ifx_UReg_32Bit DF26:1;
    Ifx_UReg_32Bit DF27:1;
    Ifx_UReg_32Bit DF28:1;
    Ifx_UReg_32Bit DF29:1;
    Ifx_UReg_32Bit DF30:1;
    Ifx_UReg_32Bit DF31:1;
} Ifx_SMU_AD_Bits;


typedef struct _Ifx_SMU_AEX_Bits
{
    Ifx_UReg_32Bit IRQ0STS:1;
    Ifx_UReg_32Bit IRQ1STS:1;
    Ifx_UReg_32Bit IRQ2STS:1;
    Ifx_UReg_32Bit RST0STS:1;
    Ifx_UReg_32Bit RST1STS:1;
    Ifx_UReg_32Bit RST2STS:1;
    Ifx_UReg_32Bit RST3STS:1;
    Ifx_UReg_32Bit RST4STS:1;
    Ifx_UReg_32Bit RST5STS:1;
    Ifx_UReg_32Bit NMISTS:1;
    Ifx_UReg_32Bit reserved_10:1;
    Ifx_UReg_32Bit EMSSTS:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit IRQ0AEM:1;
    Ifx_UReg_32Bit IRQ1AEM:1;
    Ifx_UReg_32Bit IRQ2AEM:1;
    Ifx_UReg_32Bit RST0AEM:1;
    Ifx_UReg_32Bit RST1AEM:1;
    Ifx_UReg_32Bit RST2AEM:1;
    Ifx_UReg_32Bit RST3AEM:1;
    Ifx_UReg_32Bit RST4AEM:1;
    Ifx_UReg_32Bit RST5AEM:1;
    Ifx_UReg_32Bit NMIAEM:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit EMSAEM:1;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SMU_AEX_Bits;


typedef struct _Ifx_SMU_AEXCLR_Bits
{
    volatile unsigned int IRQ0CLR:1;
    volatile unsigned int IRQ1CLR:1;
    volatile unsigned int IRQ2CLR:1;
    volatile unsigned int RST0CLR:1;
    volatile unsigned int RST1CLR:1;
    volatile unsigned int RST2CLR:1;
    volatile unsigned int RST3CLR:1;
    volatile unsigned int RST4CLR:1;
    volatile unsigned int RST5CLR:1;
    volatile unsigned int NMICLR:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int EMSCLR:1;
    volatile unsigned int reserved_12:4;
    volatile unsigned int IRQ0AEMCLR:1;
    volatile unsigned int IRQ1AEMCLR:1;
    volatile unsigned int IRQ2AEMCLR:1;
    volatile unsigned int RST0AEMCLR:1;
    volatile unsigned int RST1AEMCLR:1;
    volatile unsigned int RST2AEMCLR:1;
    volatile unsigned int RST3AEMCLR:1;
    volatile unsigned int RST4AEMCLR:1;
    volatile unsigned int RST5AEMCLR:1;
    volatile unsigned int NMIAEMCLR:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int EMSAEMCLR:1;
    volatile unsigned int reserved_28:4;
} Ifx_SMU_AEXCLR_Bits;


typedef struct _Ifx_SMU_AFCNT_Bits
{
    Ifx_UReg_32Bit FCNT:4;
    Ifx_UReg_32Bit ACNT:12;
    Ifx_UReg_32Bit reserved_16:14;
    Ifx_UReg_32Bit FCO:1;
    Ifx_UReg_32Bit ACO:1;
} Ifx_SMU_AFCNT_Bits;


typedef struct _Ifx_SMU_AG_Bits
{
    volatile unsigned int SF0:1;
    volatile unsigned int SF1:1;
    volatile unsigned int SF2:1;
    volatile unsigned int SF3:1;
    volatile unsigned int SF4:1;
    volatile unsigned int SF5:1;
    volatile unsigned int SF6:1;
    volatile unsigned int SF7:1;
    volatile unsigned int SF8:1;
    volatile unsigned int SF9:1;
    volatile unsigned int SF10:1;
    volatile unsigned int SF11:1;
    volatile unsigned int SF12:1;
    volatile unsigned int SF13:1;
    volatile unsigned int SF14:1;
    volatile unsigned int SF15:1;
    volatile unsigned int SF16:1;
    volatile unsigned int SF17:1;
    volatile unsigned int SF18:1;
    volatile unsigned int SF19:1;
    volatile unsigned int SF20:1;
    volatile unsigned int SF21:1;
    volatile unsigned int SF22:1;
    volatile unsigned int SF23:1;
    volatile unsigned int SF24:1;
    volatile unsigned int SF25:1;
    volatile unsigned int SF26:1;
    volatile unsigned int SF27:1;
    volatile unsigned int SF28:1;
    volatile unsigned int SF29:1;
    volatile unsigned int SF30:1;
    volatile unsigned int SF31:1;
} Ifx_SMU_AG_Bits;


typedef struct _Ifx_SMU_AGC_Bits
{
    volatile unsigned int IGCS0:3;
    volatile unsigned int reserved_3:1;
    volatile unsigned int IGCS1:3;
    volatile unsigned int reserved_7:1;
    volatile unsigned int IGCS2:3;
    volatile unsigned int reserved_11:5;
    volatile unsigned int RCS:6;
    volatile unsigned int reserved_22:2;
    volatile unsigned int PES:5;
    volatile unsigned int EFRST:1;
    volatile unsigned int reserved_30:2;
} Ifx_SMU_AGC_Bits;


typedef struct _Ifx_SMU_AGCF_Bits
{
    volatile unsigned int CF0:1;
    volatile unsigned int CF1:1;
    volatile unsigned int CF2:1;
    volatile unsigned int CF3:1;
    volatile unsigned int CF4:1;
    volatile unsigned int CF5:1;
    volatile unsigned int CF6:1;
    volatile unsigned int CF7:1;
    volatile unsigned int CF8:1;
    volatile unsigned int CF9:1;
    volatile unsigned int CF10:1;
    volatile unsigned int CF11:1;
    volatile unsigned int CF12:1;
    volatile unsigned int CF13:1;
    volatile unsigned int CF14:1;
    volatile unsigned int CF15:1;
    volatile unsigned int CF16:1;
    volatile unsigned int CF17:1;
    volatile unsigned int CF18:1;
    volatile unsigned int CF19:1;
    volatile unsigned int CF20:1;
    volatile unsigned int CF21:1;
    volatile unsigned int CF22:1;
    volatile unsigned int CF23:1;
    volatile unsigned int CF24:1;
    volatile unsigned int CF25:1;
    volatile unsigned int CF26:1;
    volatile unsigned int CF27:1;
    volatile unsigned int CF28:1;
    volatile unsigned int CF29:1;
    volatile unsigned int CF30:1;
    volatile unsigned int CF31:1;
} Ifx_SMU_AGCF_Bits;


typedef struct _Ifx_SMU_AGFSP_Bits
{
    volatile unsigned int FE0:1;
    volatile unsigned int FE1:1;
    volatile unsigned int FE2:1;
    volatile unsigned int FE3:1;
    volatile unsigned int FE4:1;
    volatile unsigned int FE5:1;
    volatile unsigned int FE6:1;
    volatile unsigned int FE7:1;
    volatile unsigned int FE8:1;
    volatile unsigned int FE9:1;
    volatile unsigned int FE10:1;
    volatile unsigned int FE11:1;
    volatile unsigned int FE12:1;
    volatile unsigned int FE13:1;
    volatile unsigned int FE14:1;
    volatile unsigned int FE15:1;
    volatile unsigned int FE16:1;
    volatile unsigned int FE17:1;
    volatile unsigned int FE18:1;
    volatile unsigned int FE19:1;
    volatile unsigned int FE20:1;
    volatile unsigned int FE21:1;
    volatile unsigned int FE22:1;
    volatile unsigned int FE23:1;
    volatile unsigned int FE24:1;
    volatile unsigned int FE25:1;
    volatile unsigned int FE26:1;
    volatile unsigned int FE27:1;
    volatile unsigned int FE28:1;
    volatile unsigned int FE29:1;
    volatile unsigned int FE30:1;
    volatile unsigned int FE31:1;
} Ifx_SMU_AGFSP_Bits;


typedef struct _Ifx_SMU_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_SMU_CLC_Bits;


typedef struct _Ifx_SMU_CMD_Bits
{
    volatile unsigned int CMD:4;
    volatile unsigned int ARG:4;
    volatile unsigned int reserved_8:24;
} Ifx_SMU_CMD_Bits;


typedef struct _Ifx_SMU_DBG_Bits
{
    Ifx_UReg_32Bit SSM:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SMU_DBG_Bits;


typedef struct _Ifx_SMU_FSP_Bits
{
    volatile unsigned int PRE1:3;
    volatile unsigned int PRE2:2;
    volatile unsigned int MODE:2;
    volatile unsigned int PES:1;
    volatile unsigned int TFSP_LOW:14;
    volatile unsigned int TFSP_HIGH:10;
} Ifx_SMU_FSP_Bits;


typedef struct _Ifx_SMU_ID_Bits
{
    Ifx_UReg_32Bit MOD_REV:8;
    Ifx_UReg_32Bit MOD_TYPE:8;
    Ifx_UReg_32Bit MOD_NUMBER:16;
} Ifx_SMU_ID_Bits;


typedef struct _Ifx_SMU_KEYS_Bits
{
    volatile unsigned int CFGLCK:8;
    volatile unsigned int PERLCK:8;
    volatile unsigned int reserved_16:16;
} Ifx_SMU_KEYS_Bits;


typedef struct _Ifx_SMU_OCS_Bits
{
    Ifx_UReg_32Bit TGS:2;
    Ifx_UReg_32Bit TGB:1;
    Ifx_UReg_32Bit TG_P:1;
    Ifx_UReg_32Bit reserved_4:20;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_SMU_OCS_Bits;


typedef struct _Ifx_SMU_PCTL_Bits
{
    volatile unsigned int HWDIR:2;
    volatile unsigned int HWEN:2;
    volatile unsigned int GFSCU_EN:1;
    volatile unsigned int GFSTS_EN:1;
    volatile unsigned int reserved_6:1;
    volatile unsigned int PCS:1;
    volatile unsigned int reserved_8:6;
    volatile unsigned int reserved_14:9;
    volatile unsigned int reserved_23:9;
} Ifx_SMU_PCTL_Bits;


typedef struct _Ifx_SMU_RMCTL_Bits
{
    volatile unsigned int TE0:1;
    volatile unsigned int TE1:1;
    volatile unsigned int TE2:1;
    volatile unsigned int TE3:1;
    volatile unsigned int TE4:1;
    volatile unsigned int TE5:1;
    volatile unsigned int TE6:1;
    volatile unsigned int TE7:1;
    volatile unsigned int TE8:1;
    volatile unsigned int TE9:1;
    volatile unsigned int TE10:1;
    volatile unsigned int reserved_11:1;
    volatile unsigned int reserved_12:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:1;
    volatile unsigned int reserved_22:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int reserved_31:1;
} Ifx_SMU_RMCTL_Bits;


typedef struct _Ifx_SMU_RMEF_Bits
{
    volatile unsigned int EF0:1;
    volatile unsigned int EF1:1;
    volatile unsigned int EF2:1;
    volatile unsigned int EF3:1;
    volatile unsigned int EF4:1;
    volatile unsigned int EF5:1;
    volatile unsigned int EF6:1;
    volatile unsigned int EF7:1;
    volatile unsigned int EF8:1;
    volatile unsigned int EF9:1;
    volatile unsigned int EF10:1;
    volatile unsigned int reserved_11:1;
    volatile unsigned int reserved_12:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:1;
    volatile unsigned int reserved_22:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int reserved_31:1;
} Ifx_SMU_RMEF_Bits;


typedef struct _Ifx_SMU_RMSTS_Bits
{
    volatile unsigned int STS0:1;
    volatile unsigned int STS1:1;
    volatile unsigned int STS2:1;
    volatile unsigned int STS3:1;
    volatile unsigned int STS4:1;
    volatile unsigned int STS5:1;
    volatile unsigned int STS6:1;
    volatile unsigned int STS7:1;
    volatile unsigned int STS8:1;
    volatile unsigned int STS9:1;
    volatile unsigned int STS10:1;
    volatile unsigned int reserved_11:1;
    volatile unsigned int reserved_12:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:1;
    volatile unsigned int reserved_22:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int reserved_31:1;
} Ifx_SMU_RMSTS_Bits;


typedef struct _Ifx_SMU_RTAC00_Bits
{
    volatile unsigned int GID0:4;
    volatile unsigned int ALID0:5;
    volatile unsigned int reserved_9:7;
    volatile unsigned int GID1:4;
    volatile unsigned int ALID1:5;
    volatile unsigned int reserved_25:7;
} Ifx_SMU_RTAC00_Bits;


typedef struct _Ifx_SMU_RTAC01_Bits
{
    volatile unsigned int GID2:4;
    volatile unsigned int ALID2:5;
    volatile unsigned int reserved_9:7;
    volatile unsigned int GID3:4;
    volatile unsigned int ALID3:5;
    volatile unsigned int reserved_25:7;
} Ifx_SMU_RTAC01_Bits;


typedef struct _Ifx_SMU_RTAC10_Bits
{
    volatile unsigned int GID0:4;
    volatile unsigned int ALID0:5;
    volatile unsigned int reserved_9:7;
    volatile unsigned int GID1:4;
    volatile unsigned int ALID1:5;
    volatile unsigned int reserved_25:7;
} Ifx_SMU_RTAC10_Bits;


typedef struct _Ifx_SMU_RTAC11_Bits
{
    volatile unsigned int GID2:4;
    volatile unsigned int ALID2:5;
    volatile unsigned int reserved_9:7;
    volatile unsigned int GID3:4;
    volatile unsigned int ALID3:5;
    volatile unsigned int reserved_25:7;
} Ifx_SMU_RTAC11_Bits;


typedef struct _Ifx_SMU_RTC_Bits
{
    volatile unsigned int RT0E:1;
    volatile unsigned int RT1E:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int RTD:24;
} Ifx_SMU_RTC_Bits;


typedef struct _Ifx_SMU_STS_Bits
{
    volatile unsigned int CMD:4;
    volatile unsigned int ARG:4;
    volatile unsigned int RES:1;
    volatile unsigned int ASCE:1;
    volatile unsigned int FSP:2;
    volatile unsigned int FSTS:1;
    volatile unsigned int reserved_13:3;
    volatile unsigned int RTS0:1;
    volatile unsigned int RTME0:1;
    volatile unsigned int RTS1:1;
    volatile unsigned int RTME1:1;
    volatile unsigned int reserved_20:12;
} Ifx_SMU_STS_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_ACCEN0_Bits B;
} Ifx_SMU_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_ACCEN1_Bits B;
} Ifx_SMU_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AD_Bits B;
} Ifx_SMU_AD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AEX_Bits B;
} Ifx_SMU_AEX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AEXCLR_Bits B;
} Ifx_SMU_AEXCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AFCNT_Bits B;
} Ifx_SMU_AFCNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AG_Bits B;
} Ifx_SMU_AG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AGC_Bits B;
} Ifx_SMU_AGC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AGCF_Bits B;
} Ifx_SMU_AGCF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AGFSP_Bits B;
} Ifx_SMU_AGFSP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_CLC_Bits B;
} Ifx_SMU_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_CMD_Bits B;
} Ifx_SMU_CMD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_DBG_Bits B;
} Ifx_SMU_DBG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_FSP_Bits B;
} Ifx_SMU_FSP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_ID_Bits B;
} Ifx_SMU_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_KEYS_Bits B;
} Ifx_SMU_KEYS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_OCS_Bits B;
} Ifx_SMU_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_PCTL_Bits B;
} Ifx_SMU_PCTL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RMCTL_Bits B;
} Ifx_SMU_RMCTL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RMEF_Bits B;
} Ifx_SMU_RMEF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RMSTS_Bits B;
} Ifx_SMU_RMSTS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTAC00_Bits B;
} Ifx_SMU_RTAC00;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTAC01_Bits B;
} Ifx_SMU_RTAC01;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTAC10_Bits B;
} Ifx_SMU_RTAC10;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTAC11_Bits B;
} Ifx_SMU_RTAC11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTC_Bits B;
} Ifx_SMU_RTC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_STS_Bits B;
} Ifx_SMU_STS;
# 837 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h"
typedef volatile struct _Ifx_SMU
{
       Ifx_SMU_CLC CLC;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_SMU_ID ID;
       Ifx_UReg_8Bit reserved_C[20];
       Ifx_SMU_CMD CMD;
       Ifx_SMU_STS STS;
       Ifx_SMU_FSP FSP;
       Ifx_SMU_AGC AGC;
       Ifx_SMU_RTC RTC;
       Ifx_SMU_KEYS KEYS;
       Ifx_SMU_DBG DBG;
       Ifx_SMU_PCTL PCTL;
       Ifx_SMU_AFCNT AFCNT;
       Ifx_UReg_8Bit reserved_44[28];
       Ifx_SMU_RTAC00 RTAC00;
       Ifx_SMU_RTAC01 RTAC01;
       Ifx_SMU_RTAC10 RTAC10;
       Ifx_SMU_RTAC11 RTAC11;
       Ifx_SMU_AEX AEX;
       Ifx_SMU_AEXCLR AEXCLR;
       Ifx_UReg_8Bit reserved_78[136];
       Ifx_SMU_AGCF AGCF[12][3];
       Ifx_SMU_AGFSP AGFSP[12];
       Ifx_SMU_AG AG[12];
       Ifx_UReg_8Bit reserved_1F0[16];
       Ifx_SMU_AD AD[12];
       Ifx_UReg_8Bit reserved_230[208];
       Ifx_SMU_RMCTL RMCTL;
       Ifx_SMU_RMEF RMEF;
       Ifx_SMU_RMSTS RMSTS;
       Ifx_UReg_8Bit reserved_30C[1244];
       Ifx_SMU_OCS OCS;
       Ifx_UReg_8Bit reserved_7EC[12];
       Ifx_SMU_ACCEN1 ACCEN1;
       Ifx_SMU_ACCEN0 ACCEN0;
} Ifx_SMU;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_reg.h" 2
# 2 ".\\output\\inc/IfxSmu_reg.h" 2
# 58 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2
# 1 ".\\output\\inc/IfxPms_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_bf.h" 1
# 2 ".\\output\\inc/IfxPms_bf.h" 2
# 59 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2
# 1 ".\\output\\inc/IfxPms_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_regdef.h"
typedef struct _Ifx_PMS_ACCEN0_Bits
{
    volatile unsigned int EN0:1;
    volatile unsigned int EN1:1;
    volatile unsigned int EN2:1;
    volatile unsigned int EN3:1;
    volatile unsigned int EN4:1;
    volatile unsigned int EN5:1;
    volatile unsigned int EN6:1;
    volatile unsigned int EN7:1;
    volatile unsigned int EN8:1;
    volatile unsigned int EN9:1;
    volatile unsigned int EN10:1;
    volatile unsigned int EN11:1;
    volatile unsigned int EN12:1;
    volatile unsigned int EN13:1;
    volatile unsigned int EN14:1;
    volatile unsigned int EN15:1;
    volatile unsigned int EN16:1;
    volatile unsigned int EN17:1;
    volatile unsigned int EN18:1;
    volatile unsigned int EN19:1;
    volatile unsigned int EN20:1;
    volatile unsigned int EN21:1;
    volatile unsigned int EN22:1;
    volatile unsigned int EN23:1;
    volatile unsigned int EN24:1;
    volatile unsigned int EN25:1;
    volatile unsigned int EN26:1;
    volatile unsigned int EN27:1;
    volatile unsigned int EN28:1;
    volatile unsigned int EN29:1;
    volatile unsigned int EN30:1;
    volatile unsigned int EN31:1;
} Ifx_PMS_ACCEN0_Bits;


typedef struct _Ifx_PMS_ACCEN1_Bits
{
    volatile unsigned int reserved_0:32;
} Ifx_PMS_ACCEN1_Bits;


typedef struct _Ifx_PMS_AGFSP_STDBY0_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit FE4:1;
    Ifx_UReg_32Bit FE5:1;
    Ifx_UReg_32Bit FE6:1;
    Ifx_UReg_32Bit FE7:1;
    Ifx_UReg_32Bit FE8:1;
    Ifx_UReg_32Bit FE9:1;
    Ifx_UReg_32Bit FE10:1;
    Ifx_UReg_32Bit FE11:1;
    Ifx_UReg_32Bit FE12:1;
    Ifx_UReg_32Bit FE13:1;
    Ifx_UReg_32Bit FE14:1;
    Ifx_UReg_32Bit FE15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:13;
    Ifx_UReg_32Bit BITPROT:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_AGFSP_STDBY0_Bits;


typedef struct _Ifx_PMS_AGFSP_STDBY1_Bits
{
    Ifx_UReg_32Bit FE0:1;
    Ifx_UReg_32Bit FE1:1;
    Ifx_UReg_32Bit FE2:1;
    Ifx_UReg_32Bit FE3:1;
    Ifx_UReg_32Bit FE4:1;
    Ifx_UReg_32Bit FE5:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit FE7:1;
    Ifx_UReg_32Bit FE8:1;
    Ifx_UReg_32Bit FE9:1;
    Ifx_UReg_32Bit FE10:1;
    Ifx_UReg_32Bit FE11:1;
    Ifx_UReg_32Bit FE12:1;
    Ifx_UReg_32Bit FE13:1;
    Ifx_UReg_32Bit FE14:1;
    Ifx_UReg_32Bit FE15:1;
    Ifx_UReg_32Bit FE16:1;
    Ifx_UReg_32Bit reserved_17:13;
    Ifx_UReg_32Bit BITPROT:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_AGFSP_STDBY1_Bits;


typedef struct _Ifx_PMS_AG_STDBY0_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit SF4:1;
    Ifx_UReg_32Bit SF5:1;
    Ifx_UReg_32Bit SF6:1;
    Ifx_UReg_32Bit SF7:1;
    Ifx_UReg_32Bit SF8:1;
    Ifx_UReg_32Bit SF9:1;
    Ifx_UReg_32Bit SF10:1;
    Ifx_UReg_32Bit SF11:1;
    Ifx_UReg_32Bit SF12:1;
    Ifx_UReg_32Bit SF13:1;
    Ifx_UReg_32Bit SF14:1;
    Ifx_UReg_32Bit SF15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:13;
    Ifx_UReg_32Bit FSPERR:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_AG_STDBY0_Bits;


typedef struct _Ifx_PMS_AG_STDBY1_Bits
{
    Ifx_UReg_32Bit SF0:1;
    Ifx_UReg_32Bit SF1:1;
    Ifx_UReg_32Bit SF2:1;
    Ifx_UReg_32Bit SF3:1;
    Ifx_UReg_32Bit SF4:1;
    Ifx_UReg_32Bit SF5:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit SF7:1;
    Ifx_UReg_32Bit SF8:1;
    Ifx_UReg_32Bit SF9:1;
    Ifx_UReg_32Bit SF10:1;
    Ifx_UReg_32Bit SF11:1;
    Ifx_UReg_32Bit SF12:1;
    Ifx_UReg_32Bit SF13:1;
    Ifx_UReg_32Bit SF14:1;
    Ifx_UReg_32Bit SF15:1;
    Ifx_UReg_32Bit SF16:1;
    Ifx_UReg_32Bit reserved_17:13;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_AG_STDBY1_Bits;


typedef struct _Ifx_PMS_CMD_STDBY_Bits
{
    Ifx_UReg_32Bit SMUEN:1;
    Ifx_UReg_32Bit FSP0EN:1;
    Ifx_UReg_32Bit FSP1EN:1;
    Ifx_UReg_32Bit ASCE:1;
    Ifx_UReg_32Bit reserved_4:26;
    Ifx_UReg_32Bit BITPROT:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_CMD_STDBY_Bits;


typedef struct _Ifx_PMS_DTSLIM_Bits
{
    Ifx_UReg_32Bit LOWER:12;
    Ifx_UReg_32Bit reserved_12:3;
    Ifx_UReg_32Bit LLU:1;
    Ifx_UReg_32Bit UPPER:12;
    Ifx_UReg_32Bit reserved_28:2;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit UOF:1;
} Ifx_PMS_DTSLIM_Bits;


typedef struct _Ifx_PMS_DTSSTAT_Bits
{
    Ifx_UReg_32Bit RESULT:12;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_PMS_DTSSTAT_Bits;


typedef struct _Ifx_PMS_EVR33CON_Bits
{
    Ifx_UReg_32Bit SHVH33:8;
    Ifx_UReg_32Bit reserved_8:4;
    Ifx_UReg_32Bit SHHVEN:1;
    Ifx_UReg_32Bit SHLVEN:1;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit SHVL33:8;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_EVR33CON_Bits;


typedef struct _Ifx_PMS_EVRADCSTAT_Bits
{
    Ifx_UReg_32Bit ADCCV:8;
    Ifx_UReg_32Bit ADC33V:8;
    Ifx_UReg_32Bit ADCSWDV:8;
    Ifx_UReg_32Bit OVC:1;
    Ifx_UReg_32Bit OV33:1;
    Ifx_UReg_32Bit OVSWD:1;
    Ifx_UReg_32Bit UVC:1;
    Ifx_UReg_32Bit UV33:1;
    Ifx_UReg_32Bit UVSWD:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRADCSTAT_Bits;


typedef struct _Ifx_PMS_EVROSCCTRL_Bits
{
    Ifx_UReg_32Bit OSCFTRIM:6;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit OSCFPTRIM:6;
    Ifx_UReg_32Bit reserved_22:7;
    Ifx_UReg_32Bit OSCTEMPOFFS:1;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit OSCTRIMEN:1;
} Ifx_PMS_EVROSCCTRL_Bits;


typedef struct _Ifx_PMS_EVRRSTCON_Bits
{
    Ifx_UReg_32Bit RSTCTRIM:8;
    Ifx_UReg_32Bit RST33TRIM:8;
    Ifx_UReg_32Bit RSTSWDTRIM:8;
    Ifx_UReg_32Bit RSTCOFF:1;
    Ifx_UReg_32Bit BPRSTCOFF:1;
    Ifx_UReg_32Bit RST33OFF:1;
    Ifx_UReg_32Bit BPRST33OFF:1;
    Ifx_UReg_32Bit RSTSWDOFF:1;
    Ifx_UReg_32Bit BPRSTSWDOFF:1;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_EVRRSTCON_Bits;


typedef struct _Ifx_PMS_EVRRSTSTAT_Bits
{
    Ifx_UReg_32Bit RSTC:8;
    Ifx_UReg_32Bit RST33:8;
    Ifx_UReg_32Bit RSTSWD:8;
    Ifx_UReg_32Bit RSTCOFF:1;
    Ifx_UReg_32Bit reserved_25:1;
    Ifx_UReg_32Bit RST33OFF:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit RSTSWDOFF:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_PMS_EVRRSTSTAT_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF0_Bits
{
    Ifx_UReg_32Bit M0S0EN:1;
    Ifx_UReg_32Bit M0S2EN:1;
    Ifx_UReg_32Bit M0S3EN:1;
    Ifx_UReg_32Bit M0S3CLIP:1;
    Ifx_UReg_32Bit M0S4EN:1;
    Ifx_UReg_32Bit M0RAMPEN:1;
    Ifx_UReg_32Bit M0SFRGET:1;
    Ifx_UReg_32Bit M0SKIPEN:1;
    Ifx_UReg_32Bit M0S3COEFF:4;
    Ifx_UReg_32Bit M0S4COEFF:4;
    Ifx_UReg_32Bit M0SRMPCOEFF:4;
    Ifx_UReg_32Bit M0FGETCOEFF:4;
    Ifx_UReg_32Bit M0S2COEFF:4;
    Ifx_UReg_32Bit M0S2VINSRC:1;
    Ifx_UReg_32Bit M0S2VOSRC:1;
    Ifx_UReg_32Bit M0SRMPCOEFFFRAC:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF0_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF1_Bits
{
    Ifx_UReg_32Bit M0VOCFLPF:4;
    Ifx_UReg_32Bit M0VOCFINC:4;
    Ifx_UReg_32Bit M0VOUT:8;
    Ifx_UReg_32Bit M0VIN:11;
    Ifx_UReg_32Bit M0S3COEFFFRAC:2;
    Ifx_UReg_32Bit M0S2COEFFFRAC:2;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF1_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF2_Bits
{
    Ifx_UReg_32Bit M1S0EN:1;
    Ifx_UReg_32Bit M1S2EN:1;
    Ifx_UReg_32Bit M1S3EN:1;
    Ifx_UReg_32Bit M1S3CLIP:1;
    Ifx_UReg_32Bit M1S4EN:1;
    Ifx_UReg_32Bit M1RAMPEN:1;
    Ifx_UReg_32Bit M1SFRGET:1;
    Ifx_UReg_32Bit M1SKIPEN:1;
    Ifx_UReg_32Bit M1S3COEFF:4;
    Ifx_UReg_32Bit M1S4COEFF:4;
    Ifx_UReg_32Bit M1SRMPCOEFF:4;
    Ifx_UReg_32Bit M1FGETCOEFF:4;
    Ifx_UReg_32Bit M1S2COEFF:4;
    Ifx_UReg_32Bit M1S2VINSRC:1;
    Ifx_UReg_32Bit M1S2VOSRC:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRSDCOEFF2_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF3_Bits
{
    Ifx_UReg_32Bit M1VOCFLPF:4;
    Ifx_UReg_32Bit M1VOCFINC:4;
    Ifx_UReg_32Bit M1VOUT:8;
    Ifx_UReg_32Bit M1VIN:11;
    Ifx_UReg_32Bit M1S3COEFFFRAC:2;
    Ifx_UReg_32Bit M1S2COEFFFRAC:2;
    Ifx_UReg_32Bit M1SRMPCOEFFFRAC:1;
} Ifx_PMS_EVRSDCOEFF3_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF4_Bits
{
    Ifx_UReg_32Bit M2S0EN:1;
    Ifx_UReg_32Bit M2S2EN:1;
    Ifx_UReg_32Bit M2S3EN:1;
    Ifx_UReg_32Bit M2S3CLIP:1;
    Ifx_UReg_32Bit M2S4EN:1;
    Ifx_UReg_32Bit M2RAMPEN:1;
    Ifx_UReg_32Bit M2SFRGET:1;
    Ifx_UReg_32Bit M2SKIPEN:1;
    Ifx_UReg_32Bit M2S3COEFF:4;
    Ifx_UReg_32Bit M2S4COEFF:4;
    Ifx_UReg_32Bit M2SRMPCOEFF:4;
    Ifx_UReg_32Bit M2FGETCOEFF:4;
    Ifx_UReg_32Bit M2S2COEFF:4;
    Ifx_UReg_32Bit M2S2VINSRC:1;
    Ifx_UReg_32Bit M2S2VOSRC:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRSDCOEFF4_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF5_Bits
{
    Ifx_UReg_32Bit M2VOCFLPF:4;
    Ifx_UReg_32Bit M2VOCFINC:4;
    Ifx_UReg_32Bit M2VOUT:8;
    Ifx_UReg_32Bit M2VIN:11;
    Ifx_UReg_32Bit M2S3COEFFFRAC:2;
    Ifx_UReg_32Bit M2S2COEFFFRAC:2;
    Ifx_UReg_32Bit M2SRMPCOEFFFRAC:1;
} Ifx_PMS_EVRSDCOEFF5_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF6_Bits
{
    Ifx_UReg_32Bit CT5REG0:8;
    Ifx_UReg_32Bit CT5REG1:8;
    Ifx_UReg_32Bit CT5REG2:8;
    Ifx_UReg_32Bit reserved_24:7;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF6_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF7_Bits
{
    Ifx_UReg_32Bit CT5REG3:8;
    Ifx_UReg_32Bit CT5REG4:8;
    Ifx_UReg_32Bit reserved_16:15;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF7_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF8_Bits
{
    Ifx_UReg_32Bit CT33REG0:8;
    Ifx_UReg_32Bit CT33REG1:8;
    Ifx_UReg_32Bit CT33REG2:8;
    Ifx_UReg_32Bit reserved_24:7;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF8_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF9_Bits
{
    Ifx_UReg_32Bit CT33REG3:8;
    Ifx_UReg_32Bit CT33REG4:8;
    Ifx_UReg_32Bit reserved_16:15;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF9_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL0_Bits
{
    Ifx_UReg_32Bit SDFREQSPRD:16;
    Ifx_UReg_32Bit SDFREQ:12;
    Ifx_UReg_32Bit NGOFF:1;
    Ifx_UReg_32Bit PGOFF:1;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL0_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL1_Bits
{
    Ifx_UReg_32Bit M0TOFF:8;
    Ifx_UReg_32Bit M0TON:8;
    Ifx_UReg_32Bit M0S0COEFF:4;
    Ifx_UReg_32Bit M0DEADBD:2;
    Ifx_UReg_32Bit M0ADCZB:2;
    Ifx_UReg_32Bit M0SKIP:4;
    Ifx_UReg_32Bit reserved_28:2;
    Ifx_UReg_32Bit SYNCEN:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL1_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL10_Bits
{
    Ifx_UReg_32Bit SHVH:8;
    Ifx_UReg_32Bit SHVL:8;
    Ifx_UReg_32Bit reserved_16:12;
    Ifx_UReg_32Bit SHHVEN:1;
    Ifx_UReg_32Bit SHLVEN:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRSDCTRL10_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL11_Bits
{
    Ifx_UReg_32Bit DROOPVH:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit DROOPVL:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SYNCMAXDEV:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SYNCHYST:3;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit SYNCMUXSEL:2;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL11_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL2_Bits
{
    Ifx_UReg_32Bit LPBNDOFFSET:4;
    Ifx_UReg_32Bit LPBNDWIDTH:4;
    Ifx_UReg_32Bit LPLPFCOEFF:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit SDFREQLP:12;
    Ifx_UReg_32Bit reserved_28:2;
    Ifx_UReg_32Bit EVRCMOD:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL2_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL3_Bits
{
    Ifx_UReg_32Bit M1TOFF:8;
    Ifx_UReg_32Bit M1TON:8;
    Ifx_UReg_32Bit M1S0COEFF:4;
    Ifx_UReg_32Bit M1DEADBD:2;
    Ifx_UReg_32Bit M1ADCZB:2;
    Ifx_UReg_32Bit M1SKIP:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_EVRSDCTRL3_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL4_Bits
{
    Ifx_UReg_32Bit VOKCFG:6;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit SDFREQST:12;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_EVRSDCTRL4_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL5_Bits
{
    Ifx_UReg_32Bit M2TOFF:8;
    Ifx_UReg_32Bit M2TON:8;
    Ifx_UReg_32Bit M2S0COEFF:4;
    Ifx_UReg_32Bit M2DEADBD:2;
    Ifx_UReg_32Bit M2ADCZB:2;
    Ifx_UReg_32Bit M2SKIP:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_EVRSDCTRL5_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL6_Bits
{
    Ifx_UReg_32Bit SVINTH:8;
    Ifx_UReg_32Bit SVOTH:8;
    Ifx_UReg_32Bit SINCLO:3;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit SINCHI:3;
    Ifx_UReg_32Bit reserved_23:8;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL6_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL7_Bits
{
    Ifx_UReg_32Bit DRVNI:2;
    Ifx_UReg_32Bit DRVPCBF:2;
    Ifx_UReg_32Bit DRVP:4;
    Ifx_UReg_32Bit DRVSLOMODE:2;
    Ifx_UReg_32Bit reserved_10:6;
    Ifx_UReg_32Bit DRVSPR:8;
    Ifx_UReg_32Bit SYNCDIVFAC:3;
    Ifx_UReg_32Bit reserved_27:4;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL7_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL8_Bits
{
    Ifx_UReg_32Bit FBADCOFFS:8;
    Ifx_UReg_32Bit FBADCSMP:6;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit FBADCBLNK:2;
    Ifx_UReg_32Bit reserved_18:2;
    Ifx_UReg_32Bit FBADCLPF:2;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit FBADCERR:2;
    Ifx_UReg_32Bit reserved_26:2;
    Ifx_UReg_32Bit FBADCLSB:1;
    Ifx_UReg_32Bit reserved_29:2;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL8_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL9_Bits
{
    Ifx_UReg_32Bit FFADCOFFS:8;
    Ifx_UReg_32Bit FFADCLPF:3;
    Ifx_UReg_32Bit reserved_11:20;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL9_Bits;


typedef struct _Ifx_PMS_EVRSDSTAT0_Bits
{
    Ifx_UReg_32Bit ADCFBCV:8;
    Ifx_UReg_32Bit reserved_8:8;
    Ifx_UReg_32Bit DPWMOUT:12;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_EVRSDSTAT0_Bits;


typedef struct _Ifx_PMS_EVRSTAT_Bits
{
    Ifx_UReg_32Bit EVRC:1;
    Ifx_UReg_32Bit OVC:1;
    Ifx_UReg_32Bit EVR33:1;
    Ifx_UReg_32Bit OV33:1;
    Ifx_UReg_32Bit OVSWD:1;
    Ifx_UReg_32Bit UVC:1;
    Ifx_UReg_32Bit UV33:1;
    Ifx_UReg_32Bit UVSWD:1;
    Ifx_UReg_32Bit SYNCLCK:1;
    Ifx_UReg_32Bit EVR33VOK:1;
    Ifx_UReg_32Bit reserved_10:3;
    Ifx_UReg_32Bit RSTC:1;
    Ifx_UReg_32Bit RST33:1;
    Ifx_UReg_32Bit RSTSWD:1;
    Ifx_UReg_32Bit EVRCSHLV:1;
    Ifx_UReg_32Bit EVRCSHHV:1;
    Ifx_UReg_32Bit EVR33SHLV:1;
    Ifx_UReg_32Bit EVR33SHHV:1;
    Ifx_UReg_32Bit SWDLVL:1;
    Ifx_UReg_32Bit SDVOK:1;
    Ifx_UReg_32Bit EVRCMOD:2;
    Ifx_UReg_32Bit OVPRE:1;
    Ifx_UReg_32Bit OVSB:1;
    Ifx_UReg_32Bit OVDDM:1;
    Ifx_UReg_32Bit UVPRE:1;
    Ifx_UReg_32Bit UVSB:1;
    Ifx_UReg_32Bit UVDDM:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRSTAT_Bits;


typedef struct _Ifx_PMS_EVRTRIM_Bits
{
    Ifx_UReg_32Bit EVR33VOUTSEL:8;
    Ifx_UReg_32Bit SDVOUTSEL:8;
    Ifx_UReg_32Bit EVR33VOUTTRIM:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit SDVOUTTRIM:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRTRIM_Bits;


typedef struct _Ifx_PMS_EVRTRIMSTAT_Bits
{
    Ifx_UReg_32Bit EVR33VOUTSEL:8;
    Ifx_UReg_32Bit SDVOUTSEL:8;
    Ifx_UReg_32Bit EVR33VOUTTRIM:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit SDVOUTTRIM:6;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRTRIMSTAT_Bits;


typedef struct _Ifx_PMS_HSMOVMON_Bits
{
    Ifx_UReg_32Bit EVRCOVVAL:8;
    Ifx_UReg_32Bit EVR33OVVAL:8;
    Ifx_UReg_32Bit SWDOVVAL:8;
    Ifx_UReg_32Bit EVRCOFF:1;
    Ifx_UReg_32Bit EVR33OFF:1;
    Ifx_UReg_32Bit SWDOFF:1;
    Ifx_UReg_32Bit reserved_27:4;
    Ifx_UReg_32Bit SLCK:1;
} Ifx_PMS_HSMOVMON_Bits;


typedef struct _Ifx_PMS_HSMUVMON_Bits
{
    Ifx_UReg_32Bit EVRCUVVAL:8;
    Ifx_UReg_32Bit EVR33UVVAL:8;
    Ifx_UReg_32Bit SWDUVVAL:8;
    Ifx_UReg_32Bit EVRCOFF:1;
    Ifx_UReg_32Bit EVR33OFF:1;
    Ifx_UReg_32Bit SWDOFF:1;
    Ifx_UReg_32Bit HSMFIL:4;
    Ifx_UReg_32Bit SLCK:1;
} Ifx_PMS_HSMUVMON_Bits;


typedef struct _Ifx_PMS_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_PMS_ID_Bits;


typedef struct _Ifx_PMS_MONBISTCTRL_Bits
{
    Ifx_UReg_32Bit TSTEN:1;
    Ifx_UReg_32Bit TSTCLR:1;
    Ifx_UReg_32Bit reserved_2:28;
    Ifx_UReg_32Bit BITPROT:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_MONBISTCTRL_Bits;


typedef struct _Ifx_PMS_MONBISTSTAT_Bits
{
    Ifx_UReg_32Bit TSTOK:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit TSTRUN:1;
    Ifx_UReg_32Bit TSTDONE:1;
    Ifx_UReg_32Bit SMUERR:1;
    Ifx_UReg_32Bit PMSERR:1;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_PMS_MONBISTSTAT_Bits;


typedef struct _Ifx_PMS_MONCTRL_Bits
{
    Ifx_UReg_32Bit EVRCOVMOD:2;
    Ifx_UReg_32Bit PREOVMOD:2;
    Ifx_UReg_32Bit EVRCUVMOD:2;
    Ifx_UReg_32Bit PREUVMOD:2;
    Ifx_UReg_32Bit EVR33OVMOD:2;
    Ifx_UReg_32Bit VDDMOVMOD:2;
    Ifx_UReg_32Bit EVR33UVMOD:2;
    Ifx_UReg_32Bit VDDMUVMOD:2;
    Ifx_UReg_32Bit SWDOVMOD:2;
    Ifx_UReg_32Bit SBOVMOD:2;
    Ifx_UReg_32Bit SWDUVMOD:2;
    Ifx_UReg_32Bit SBUVMOD:2;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_MONCTRL_Bits;


typedef struct _Ifx_PMS_MONFILT_Bits
{
    Ifx_UReg_32Bit EVRCFIL:4;
    Ifx_UReg_32Bit PREFIL:4;
    Ifx_UReg_32Bit EVR33FIL:4;
    Ifx_UReg_32Bit VDDMFIL:4;
    Ifx_UReg_32Bit SWDFIL:4;
    Ifx_UReg_32Bit SBFIL:4;
    Ifx_UReg_32Bit reserved_24:5;
    Ifx_UReg_32Bit CLRFIL:1;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_MONFILT_Bits;


typedef struct _Ifx_PMS_MONSTAT1_Bits
{
    Ifx_UReg_32Bit ADCCV:8;
    Ifx_UReg_32Bit ADC33V:8;
    Ifx_UReg_32Bit ADCSWDV:8;
    Ifx_UReg_32Bit ACTVCNT:6;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_MONSTAT1_Bits;


typedef struct _Ifx_PMS_MONSTAT2_Bits
{
    Ifx_UReg_32Bit ADCPRE:8;
    Ifx_UReg_32Bit ADCSB:8;
    Ifx_UReg_32Bit ADCVDDM:8;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_PMS_MONSTAT2_Bits;


typedef struct _Ifx_PMS_OTSC0_Bits
{
    Ifx_UReg_32Bit B0LAM:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit B0HAM:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit B1LAM:4;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit B1HAM:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_OTSC0_Bits;


typedef struct _Ifx_PMS_OTSC1_Bits
{
    Ifx_UReg_32Bit B0EC:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit B1EC:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit DMONAD:8;
    Ifx_UReg_32Bit SMCDBG:8;
} Ifx_PMS_OTSC1_Bits;


typedef struct _Ifx_PMS_OTSS_Bits
{
    Ifx_UReg_32Bit OTGB0:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit OTGB1:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_PMS_OTSS_Bits;


typedef struct _Ifx_PMS_OVMON_Bits
{
    Ifx_UReg_32Bit EVRCOVVAL:8;
    Ifx_UReg_32Bit EVR33OVVAL:8;
    Ifx_UReg_32Bit SWDOVVAL:8;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_OVMON_Bits;


typedef struct _Ifx_PMS_OVMON2_Bits
{
    Ifx_UReg_32Bit PREOVVAL:8;
    Ifx_UReg_32Bit VDDMOVVAL:8;
    Ifx_UReg_32Bit SBOVVAL:8;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_OVMON2_Bits;


typedef struct _Ifx_PMS_PMSIEN_Bits
{
    Ifx_UReg_32Bit OVSWD:1;
    Ifx_UReg_32Bit UVSWD:1;
    Ifx_UReg_32Bit OV33:1;
    Ifx_UReg_32Bit UV33:1;
    Ifx_UReg_32Bit OVC:1;
    Ifx_UReg_32Bit UVC:1;
    Ifx_UReg_32Bit OVPRE:1;
    Ifx_UReg_32Bit UVPRE:1;
    Ifx_UReg_32Bit OVDDM:1;
    Ifx_UReg_32Bit UVDDM:1;
    Ifx_UReg_32Bit OVSB:1;
    Ifx_UReg_32Bit UVSB:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit EVRCMOD:1;
    Ifx_UReg_32Bit SDVOK:1;
    Ifx_UReg_32Bit SYNCLCK:1;
    Ifx_UReg_32Bit SWDLVL:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit WUTWKP:1;
    Ifx_UReg_32Bit ESR0WKP:1;
    Ifx_UReg_32Bit ESR1WKP:1;
    Ifx_UReg_32Bit PINAWKP:1;
    Ifx_UReg_32Bit PINBWKP:1;
    Ifx_UReg_32Bit SCRINT:1;
    Ifx_UReg_32Bit SCRRST:1;
    Ifx_UReg_32Bit SCRECC:1;
    Ifx_UReg_32Bit SCRWDT:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_PMSIEN_Bits;


typedef struct _Ifx_PMS_PMSWCR0_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit VEXTSTBYEN:1;
    Ifx_UReg_32Bit VDDSTBYEN:1;
    Ifx_UReg_32Bit ESR0DFEN:1;
    Ifx_UReg_32Bit ESR0EDCON:2;
    Ifx_UReg_32Bit ESR1DFEN:1;
    Ifx_UReg_32Bit ESR1EDCON:2;
    Ifx_UReg_32Bit PINADFEN:1;
    Ifx_UReg_32Bit PINAEDCON:2;
    Ifx_UReg_32Bit PINBDFEN:1;
    Ifx_UReg_32Bit PINBEDCON:2;
    Ifx_UReg_32Bit STBYRAMSEL:3;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit BLNKFIL:4;
    Ifx_UReg_32Bit ESR0WKEN:1;
    Ifx_UReg_32Bit ESR1WKEN:1;
    Ifx_UReg_32Bit PINAWKEN:1;
    Ifx_UReg_32Bit PINBWKEN:1;
    Ifx_UReg_32Bit PWRWKEN:1;
    Ifx_UReg_32Bit SCRWKEN:1;
    Ifx_UReg_32Bit PORSTWKEN:1;
    Ifx_UReg_32Bit WUTWKEN:1;
} Ifx_PMS_PMSWCR0_Bits;


typedef struct _Ifx_PMS_PMSWCR2_Bits
{
    Ifx_UReg_32Bit SCRINT:8;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit SCRECC:1;
    Ifx_UReg_32Bit SCRWDT:1;
    Ifx_UReg_32Bit SCRRST:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit TCINT:8;
    Ifx_UReg_32Bit TCINTREQ:1;
    Ifx_UReg_32Bit SMURST:1;
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_PMS_PMSWCR2_Bits;


typedef struct _Ifx_PMS_PMSWCR3_Bits
{
    Ifx_UReg_32Bit WUTREL:24;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit WUTEN:1;
    Ifx_UReg_32Bit BUSY:1;
    Ifx_UReg_32Bit WUTDIV:1;
    Ifx_UReg_32Bit WUTMODE:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_PMSWCR3_Bits;


typedef struct _Ifx_PMS_PMSWCR4_Bits
{
    Ifx_UReg_32Bit BPSCRSTREQ:1;
    Ifx_UReg_32Bit SCRSTREQ:1;
    Ifx_UReg_32Bit reserved_2:2;
    Ifx_UReg_32Bit BPPORSTREQ:1;
    Ifx_UReg_32Bit PORSTREQ:1;
    Ifx_UReg_32Bit SCRCLKSEL:1;
    Ifx_UReg_32Bit reserved_7:9;
    Ifx_UReg_32Bit SCRCFG:8;
    Ifx_UReg_32Bit BPSCREN:1;
    Ifx_UReg_32Bit SCREN:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_PMS_PMSWCR4_Bits;


typedef struct _Ifx_PMS_PMSWCR5_Bits
{
    Ifx_UReg_32Bit BPTRISTREQ:1;
    Ifx_UReg_32Bit TRISTREQ:1;
    Ifx_UReg_32Bit ESR0TRIST:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit PORSTDF:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit DCDCSYNCO:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_PMS_PMSWCR5_Bits;


typedef struct _Ifx_PMS_PMSWSTAT_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit HWCFGEVR:2;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit HWCFG4:1;
    Ifx_UReg_32Bit HWCFG5:1;
    Ifx_UReg_32Bit TRIST:1;
    Ifx_UReg_32Bit TESTMODE:1;
    Ifx_UReg_32Bit ESR0TRIST:1;
    Ifx_UReg_32Bit reserved_9:2;
    Ifx_UReg_32Bit PORSTDF:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit SCR:1;
    Ifx_UReg_32Bit SCRST:1;
    Ifx_UReg_32Bit SCRCLK:1;
    Ifx_UReg_32Bit PORSTREQ:1;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit WUTEN:1;
    Ifx_UReg_32Bit WUTRUN:1;
    Ifx_UReg_32Bit WUTMODE:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit ESR0INT:1;
    Ifx_UReg_32Bit ESR1INT:1;
    Ifx_UReg_32Bit PINAINT:1;
    Ifx_UReg_32Bit PINBINT:1;
} Ifx_PMS_PMSWSTAT_Bits;


typedef struct _Ifx_PMS_PMSWSTAT2_Bits
{
    Ifx_UReg_32Bit ESR0WKP:1;
    Ifx_UReg_32Bit ESR1WKP:1;
    Ifx_UReg_32Bit PINAWKP:1;
    Ifx_UReg_32Bit PINBWKP:1;
    Ifx_UReg_32Bit PWRWKP:1;
    Ifx_UReg_32Bit SCRWKP:1;
    Ifx_UReg_32Bit PORSTWKP:1;
    Ifx_UReg_32Bit WUTWKP:1;
    Ifx_UReg_32Bit ESR0OVRUN:1;
    Ifx_UReg_32Bit ESR1OVRUN:1;
    Ifx_UReg_32Bit PINAOVRUN:1;
    Ifx_UReg_32Bit PINBOVRUN:1;
    Ifx_UReg_32Bit VDDSTBYEN:1;
    Ifx_UReg_32Bit SCROVRUN:1;
    Ifx_UReg_32Bit PORSTOVRUN:1;
    Ifx_UReg_32Bit WUTOVRUN:1;
    Ifx_UReg_32Bit STBYRAM:3;
    Ifx_UReg_32Bit VEXTSTBYEN:1;
    Ifx_UReg_32Bit BLNKFIL:4;
    Ifx_UReg_32Bit ESR0WKEN:1;
    Ifx_UReg_32Bit ESR1WKEN:1;
    Ifx_UReg_32Bit PINAWKEN:1;
    Ifx_UReg_32Bit PINBWKEN:1;
    Ifx_UReg_32Bit PWRWKEN:1;
    Ifx_UReg_32Bit SCRWKEN:1;
    Ifx_UReg_32Bit PORSTWKEN:1;
    Ifx_UReg_32Bit WUTWKEN:1;
} Ifx_PMS_PMSWSTAT2_Bits;


typedef struct _Ifx_PMS_PMSWSTATCLR_Bits
{
    Ifx_UReg_32Bit ESR0WKPCLR:1;
    Ifx_UReg_32Bit ESR1WKPCLR:1;
    Ifx_UReg_32Bit PINAWKPCLR:1;
    Ifx_UReg_32Bit PINBWKPCLR:1;
    Ifx_UReg_32Bit PWRWKPCLR:1;
    Ifx_UReg_32Bit SCRWKPCLR:1;
    Ifx_UReg_32Bit PORSTWKPCLR:1;
    Ifx_UReg_32Bit WUTWKPCLR:1;
    Ifx_UReg_32Bit ESR0OVRUNCLR:1;
    Ifx_UReg_32Bit ESR1OVRUNCLR:1;
    Ifx_UReg_32Bit PINAOVRUNCLR:1;
    Ifx_UReg_32Bit PINBOVRUNCLR:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit SCROVRUNCLR:1;
    Ifx_UReg_32Bit PORSTOVRUNCLR:1;
    Ifx_UReg_32Bit WUTOVRUNCLR:1;
    Ifx_UReg_32Bit SCRSTCLR:1;
    Ifx_UReg_32Bit reserved_17:11;
    Ifx_UReg_32Bit ESR0INTCLR:1;
    Ifx_UReg_32Bit ESR1INTCLR:1;
    Ifx_UReg_32Bit PINAINTCLR:1;
    Ifx_UReg_32Bit PINBINTCLR:1;
} Ifx_PMS_PMSWSTATCLR_Bits;


typedef struct _Ifx_PMS_PMSWUTCNT_Bits
{
    Ifx_UReg_32Bit WUTCNT:24;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_PMS_PMSWUTCNT_Bits;


typedef struct _Ifx_PMS_UVMON_Bits
{
    Ifx_UReg_32Bit EVRCUVVAL:8;
    Ifx_UReg_32Bit EVR33UVVAL:8;
    Ifx_UReg_32Bit SWDUVVAL:8;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_UVMON_Bits;


typedef struct _Ifx_PMS_UVMON2_Bits
{
    Ifx_UReg_32Bit PREUVVAL:8;
    Ifx_UReg_32Bit VDDMUVVAL:8;
    Ifx_UReg_32Bit SBUVVAL:8;
    Ifx_UReg_32Bit VDDMLVLSEL:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_UVMON2_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_ACCEN0_Bits B;
} Ifx_PMS_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_ACCEN1_Bits B;
} Ifx_PMS_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_AGFSP_STDBY0_Bits B;
} Ifx_PMS_AGFSP_STDBY0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_AGFSP_STDBY1_Bits B;
} Ifx_PMS_AGFSP_STDBY1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_AG_STDBY0_Bits B;
} Ifx_PMS_AG_STDBY0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_AG_STDBY1_Bits B;
} Ifx_PMS_AG_STDBY1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_CMD_STDBY_Bits B;
} Ifx_PMS_CMD_STDBY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_DTSLIM_Bits B;
} Ifx_PMS_DTSLIM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_DTSSTAT_Bits B;
} Ifx_PMS_DTSSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVR33CON_Bits B;
} Ifx_PMS_EVR33CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRADCSTAT_Bits B;
} Ifx_PMS_EVRADCSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVROSCCTRL_Bits B;
} Ifx_PMS_EVROSCCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRRSTCON_Bits B;
} Ifx_PMS_EVRRSTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRRSTSTAT_Bits B;
} Ifx_PMS_EVRRSTSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF0_Bits B;
} Ifx_PMS_EVRSDCOEFF0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF1_Bits B;
} Ifx_PMS_EVRSDCOEFF1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF2_Bits B;
} Ifx_PMS_EVRSDCOEFF2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF3_Bits B;
} Ifx_PMS_EVRSDCOEFF3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF4_Bits B;
} Ifx_PMS_EVRSDCOEFF4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF5_Bits B;
} Ifx_PMS_EVRSDCOEFF5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF6_Bits B;
} Ifx_PMS_EVRSDCOEFF6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF7_Bits B;
} Ifx_PMS_EVRSDCOEFF7;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF8_Bits B;
} Ifx_PMS_EVRSDCOEFF8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF9_Bits B;
} Ifx_PMS_EVRSDCOEFF9;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL0_Bits B;
} Ifx_PMS_EVRSDCTRL0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL1_Bits B;
} Ifx_PMS_EVRSDCTRL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL10_Bits B;
} Ifx_PMS_EVRSDCTRL10;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL11_Bits B;
} Ifx_PMS_EVRSDCTRL11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL2_Bits B;
} Ifx_PMS_EVRSDCTRL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL3_Bits B;
} Ifx_PMS_EVRSDCTRL3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL4_Bits B;
} Ifx_PMS_EVRSDCTRL4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL5_Bits B;
} Ifx_PMS_EVRSDCTRL5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL6_Bits B;
} Ifx_PMS_EVRSDCTRL6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL7_Bits B;
} Ifx_PMS_EVRSDCTRL7;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL8_Bits B;
} Ifx_PMS_EVRSDCTRL8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL9_Bits B;
} Ifx_PMS_EVRSDCTRL9;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDSTAT0_Bits B;
} Ifx_PMS_EVRSDSTAT0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSTAT_Bits B;
} Ifx_PMS_EVRSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRTRIM_Bits B;
} Ifx_PMS_EVRTRIM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRTRIMSTAT_Bits B;
} Ifx_PMS_EVRTRIMSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_HSMOVMON_Bits B;
} Ifx_PMS_HSMOVMON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_HSMUVMON_Bits B;
} Ifx_PMS_HSMUVMON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_ID_Bits B;
} Ifx_PMS_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONBISTCTRL_Bits B;
} Ifx_PMS_MONBISTCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONBISTSTAT_Bits B;
} Ifx_PMS_MONBISTSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONCTRL_Bits B;
} Ifx_PMS_MONCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONFILT_Bits B;
} Ifx_PMS_MONFILT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONSTAT1_Bits B;
} Ifx_PMS_MONSTAT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONSTAT2_Bits B;
} Ifx_PMS_MONSTAT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OTSC0_Bits B;
} Ifx_PMS_OTSC0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OTSC1_Bits B;
} Ifx_PMS_OTSC1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OTSS_Bits B;
} Ifx_PMS_OTSS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OVMON_Bits B;
} Ifx_PMS_OVMON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OVMON2_Bits B;
} Ifx_PMS_OVMON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSIEN_Bits B;
} Ifx_PMS_PMSIEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR0_Bits B;
} Ifx_PMS_PMSWCR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR2_Bits B;
} Ifx_PMS_PMSWCR2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR3_Bits B;
} Ifx_PMS_PMSWCR3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR4_Bits B;
} Ifx_PMS_PMSWCR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR5_Bits B;
} Ifx_PMS_PMSWCR5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWSTAT_Bits B;
} Ifx_PMS_PMSWSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWSTAT2_Bits B;
} Ifx_PMS_PMSWSTAT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWSTATCLR_Bits B;
} Ifx_PMS_PMSWSTATCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWUTCNT_Bits B;
} Ifx_PMS_PMSWUTCNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_UVMON_Bits B;
} Ifx_PMS_UVMON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_UVMON2_Bits B;
} Ifx_PMS_UVMON2;
# 1610 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_regdef.h"
typedef volatile struct _Ifx_PMS
{
       Ifx_UReg_8Bit reserved_0[8];
       Ifx_PMS_ID ID;
       Ifx_UReg_8Bit reserved_C[32];
       Ifx_PMS_EVRSTAT EVRSTAT;
       Ifx_UReg_8Bit reserved_30[4];
       Ifx_PMS_EVRADCSTAT EVRADCSTAT;
       Ifx_UReg_8Bit reserved_38[4];
       Ifx_PMS_EVRRSTCON EVRRSTCON;
       Ifx_UReg_8Bit reserved_40[4];
       Ifx_PMS_EVRRSTSTAT EVRRSTSTAT;
       Ifx_UReg_8Bit reserved_48[4];
       Ifx_PMS_EVRTRIM EVRTRIM;
       Ifx_PMS_EVRTRIMSTAT EVRTRIMSTAT;
       Ifx_UReg_8Bit reserved_54[12];
       Ifx_PMS_MONSTAT1 MONSTAT1;
       Ifx_PMS_MONSTAT2 MONSTAT2;
       Ifx_PMS_MONCTRL MONCTRL;
       Ifx_UReg_8Bit reserved_6C[4];
       Ifx_PMS_MONFILT MONFILT;
       Ifx_PMS_PMSIEN PMSIEN;
       Ifx_PMS_UVMON UVMON;
       Ifx_PMS_OVMON OVMON;
       Ifx_PMS_UVMON2 UVMON2;
       Ifx_PMS_OVMON2 OVMON2;
       Ifx_PMS_HSMUVMON HSMUVMON;
       Ifx_PMS_HSMOVMON HSMOVMON;
       Ifx_PMS_EVR33CON EVR33CON;
       Ifx_UReg_8Bit reserved_94[12];
       Ifx_PMS_EVROSCCTRL EVROSCCTRL;
       Ifx_UReg_8Bit reserved_A4[16];
       Ifx_PMS_PMSWCR0 PMSWCR0;
       Ifx_PMS_PMSWCR2 PMSWCR2;
       Ifx_UReg_8Bit reserved_BC[4];
       Ifx_PMS_PMSWCR3 PMSWCR3;
       Ifx_PMS_PMSWCR4 PMSWCR4;
       Ifx_PMS_PMSWCR5 PMSWCR5;
       Ifx_UReg_8Bit reserved_CC[8];
       Ifx_PMS_PMSWSTAT PMSWSTAT;
       Ifx_PMS_PMSWSTAT2 PMSWSTAT2;
       Ifx_PMS_PMSWUTCNT PMSWUTCNT;
       Ifx_UReg_8Bit reserved_E0[8];
       Ifx_PMS_PMSWSTATCLR PMSWSTATCLR;
       Ifx_UReg_8Bit reserved_EC[16];
       Ifx_PMS_EVRSDSTAT0 EVRSDSTAT0;
       Ifx_UReg_8Bit reserved_100[8];
       Ifx_PMS_EVRSDCTRL0 EVRSDCTRL0;
       Ifx_PMS_EVRSDCTRL1 EVRSDCTRL1;
       Ifx_PMS_EVRSDCTRL2 EVRSDCTRL2;
       Ifx_PMS_EVRSDCTRL3 EVRSDCTRL3;
       Ifx_PMS_EVRSDCTRL4 EVRSDCTRL4;
       Ifx_PMS_EVRSDCTRL5 EVRSDCTRL5;
       Ifx_PMS_EVRSDCTRL6 EVRSDCTRL6;
       Ifx_PMS_EVRSDCTRL7 EVRSDCTRL7;
       Ifx_PMS_EVRSDCTRL8 EVRSDCTRL8;
       Ifx_PMS_EVRSDCTRL9 EVRSDCTRL9;
       Ifx_PMS_EVRSDCTRL10 EVRSDCTRL10;
       Ifx_PMS_EVRSDCTRL11 EVRSDCTRL11;
       Ifx_UReg_8Bit reserved_138[16];
       Ifx_PMS_EVRSDCOEFF0 EVRSDCOEFF0;
       Ifx_PMS_EVRSDCOEFF1 EVRSDCOEFF1;
       Ifx_PMS_EVRSDCOEFF2 EVRSDCOEFF2;
       Ifx_PMS_EVRSDCOEFF3 EVRSDCOEFF3;
       Ifx_PMS_EVRSDCOEFF4 EVRSDCOEFF4;
       Ifx_PMS_EVRSDCOEFF5 EVRSDCOEFF5;
       Ifx_PMS_EVRSDCOEFF6 EVRSDCOEFF6;
       Ifx_PMS_EVRSDCOEFF7 EVRSDCOEFF7;
       Ifx_PMS_EVRSDCOEFF8 EVRSDCOEFF8;
       Ifx_PMS_EVRSDCOEFF9 EVRSDCOEFF9;
       Ifx_UReg_8Bit reserved_170[24];
       Ifx_PMS_AG_STDBY0 AG_STDBY0;
       Ifx_PMS_AG_STDBY1 AG_STDBY1;
       Ifx_PMS_MONBISTSTAT MONBISTSTAT;
       Ifx_UReg_8Bit reserved_194[4];
       Ifx_PMS_MONBISTCTRL MONBISTCTRL;
       Ifx_PMS_CMD_STDBY CMD_STDBY;
       Ifx_UReg_8Bit reserved_1A0[4];
       Ifx_PMS_AGFSP_STDBY0 AGFSP_STDBY0;
       Ifx_PMS_AGFSP_STDBY1 AGFSP_STDBY1;
       Ifx_UReg_8Bit reserved_1AC[20];
       Ifx_PMS_DTSSTAT DTSSTAT;
       Ifx_UReg_8Bit reserved_1C4[4];
       Ifx_PMS_DTSLIM DTSLIM;
       Ifx_UReg_8Bit reserved_1CC[20];
       Ifx_PMS_OTSS OTSS;
       Ifx_PMS_OTSC0 OTSC0;
       Ifx_PMS_OTSC1 OTSC1;
       Ifx_UReg_8Bit reserved_1EC[12];
       Ifx_PMS_ACCEN1 ACCEN1;
       Ifx_PMS_ACCEN0 ACCEN0;
} Ifx_PMS;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_reg.h" 2
# 2 ".\\output\\inc/IfxPms_reg.h" 2
# 60 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2


# 1 ".\\output\\inc/Det.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 1
# 27 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 17 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h" 2
# 1 ".\\output\\inc/Rte_Det_Type.h" 1
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Det_Type.h" 1
# 16 ".\\output\\inc/..\\..\\rte\\Rte_Det_Type.h"
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Type.h" 1
# 16 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
# 1 ".\\output\\inc/..\\..\\rte\\Rte.h" 1
# 18 ".\\output\\inc/..\\..\\rte\\Rte.h"
# 1 ".\\output\\inc/Rte_UserCfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_UserCfg.h" 1
# 23 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_UserCfg.h"
# 1 ".\\output\\inc/Can.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can.h" 1





# 1 ".\\output\\inc/Can_17_McmCan.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 1
# 50 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
# 1 ".\\output\\inc/IfxCan_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_reg.h" 1
# 62 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef struct _Ifx_CAN_ACCEN0_Bits
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
} Ifx_CAN_ACCEN0_Bits;


typedef struct _Ifx_CAN_ACCENCTR0_Bits
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
} Ifx_CAN_ACCENCTR0_Bits;


typedef struct _Ifx_CAN_BUFADR_Bits
{
    Ifx_UReg_32Bit TXBUF:14;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit RXBUF:14;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_BUFADR_Bits;


typedef struct _Ifx_CAN_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_CAN_CLC_Bits;


typedef struct _Ifx_CAN_DB_Bits
{
    Ifx_UReg_8Bit DB:8;
} Ifx_CAN_DB_Bits;


typedef struct _Ifx_CAN_EXTMSG_F0_Bits
{
    Ifx_UReg_32Bit EFID1:29;
    Ifx_UReg_32Bit EFEC:3;
} Ifx_CAN_EXTMSG_F0_Bits;


typedef struct _Ifx_CAN_EXTMSG_F1_Bits
{
    Ifx_UReg_32Bit EFID2:29;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit EFT:2;
} Ifx_CAN_EXTMSG_F1_Bits;


typedef struct _Ifx_CAN_ID_Bits
{
    Ifx_UReg_32Bit MOD_REV:8;
    Ifx_UReg_32Bit MOD_TYPE:8;
    Ifx_UReg_32Bit MOD_NUMBER:16;
} Ifx_CAN_ID_Bits;


typedef struct _Ifx_CAN_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_CAN_KRST0_Bits;


typedef struct _Ifx_CAN_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_CAN_KRST1_Bits;


typedef struct _Ifx_CAN_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_CAN_KRSTCLR_Bits;


typedef struct _Ifx_CAN_MCR_Bits
{
    Ifx_UReg_32Bit CLKSEL0:2;
    Ifx_UReg_32Bit CLKSEL1:2;
    Ifx_UReg_32Bit CLKSEL2:2;
    Ifx_UReg_32Bit CLKSEL3:2;
    Ifx_UReg_32Bit reserved_8:16;
    Ifx_UReg_32Bit NODE:3;
    Ifx_UReg_32Bit DXCM:1;
    Ifx_UReg_32Bit RBUSY:1;
    Ifx_UReg_32Bit RINIT:1;
    Ifx_UReg_32Bit CI:1;
    Ifx_UReg_32Bit CCCE:1;
} Ifx_CAN_MCR_Bits;


typedef struct _Ifx_CAN_MECR_Bits
{
    Ifx_UReg_32Bit TH:16;
    Ifx_UReg_32Bit INP:4;
    Ifx_UReg_32Bit NODE:3;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit ANYED:1;
    Ifx_UReg_32Bit CAPEIE:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit DEPTH:3;
    Ifx_UReg_32Bit SOF:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_CAN_MECR_Bits;


typedef struct _Ifx_CAN_MESTAT_Bits
{
    Ifx_UReg_32Bit CAPT:16;
    Ifx_UReg_32Bit CAPRED:1;
    Ifx_UReg_32Bit CAPE:1;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_CAN_MESTAT_Bits;


typedef struct _Ifx_CAN_N_ACCENNODE0_Bits
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
} Ifx_CAN_N_ACCENNODE0_Bits;


typedef struct _Ifx_CAN_N_CCCR_Bits
{
    Ifx_UReg_32Bit INIT:1;
    Ifx_UReg_32Bit CCE:1;
    Ifx_UReg_32Bit ASM:1;
    Ifx_UReg_32Bit CSA:1;
    Ifx_UReg_32Bit CSR:1;
    Ifx_UReg_32Bit MON:1;
    Ifx_UReg_32Bit DAR:1;
    Ifx_UReg_32Bit TEST:1;
    Ifx_UReg_32Bit FDOE:1;
    Ifx_UReg_32Bit BRSE:1;
    Ifx_UReg_32Bit reserved_10:2;
    Ifx_UReg_32Bit PXHD:1;
    Ifx_UReg_32Bit EFBI:1;
    Ifx_UReg_32Bit TXP:1;
    Ifx_UReg_32Bit NISO:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_CCCR_Bits;


typedef struct _Ifx_CAN_N_CREL_Bits
{
    Ifx_UReg_32Bit DAY:8;
    Ifx_UReg_32Bit MON:8;
    Ifx_UReg_32Bit YEAR:4;
    Ifx_UReg_32Bit SUBSTEP:4;
    Ifx_UReg_32Bit STEP:4;
    Ifx_UReg_32Bit REL:4;
} Ifx_CAN_N_CREL_Bits;


typedef struct _Ifx_CAN_N_DBTP_Bits
{
    Ifx_UReg_32Bit DSJW:4;
    Ifx_UReg_32Bit DTSEG2:4;
    Ifx_UReg_32Bit DTSEG1:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit DBRP:5;
    Ifx_UReg_32Bit reserved_21:2;
    Ifx_UReg_32Bit TDC:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_N_DBTP_Bits;


typedef struct _Ifx_CAN_N_ECR_Bits
{
    Ifx_UReg_32Bit TEC:8;
    Ifx_UReg_32Bit REC:7;
    Ifx_UReg_32Bit RP:1;
    Ifx_UReg_32Bit CEL:8;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_N_ECR_Bits;


typedef struct _Ifx_CAN_N_ENDADR_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit END:14;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_ENDADR_Bits;


typedef struct _Ifx_CAN_N_ENDN_Bits
{
    Ifx_UReg_32Bit ETV:32;
} Ifx_CAN_N_ENDN_Bits;


typedef struct _Ifx_CAN_N_GFC_Bits
{
    Ifx_UReg_32Bit RRFE:1;
    Ifx_UReg_32Bit RRFS:1;
    Ifx_UReg_32Bit ANFE:2;
    Ifx_UReg_32Bit ANFS:2;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_CAN_N_GFC_Bits;


typedef struct _Ifx_CAN_N_GRINT1_Bits
{
    Ifx_UReg_32Bit TEFIFO:4;
    Ifx_UReg_32Bit HPE:4;
    Ifx_UReg_32Bit WATI:4;
    Ifx_UReg_32Bit ALRT:4;
    Ifx_UReg_32Bit MOER:4;
    Ifx_UReg_32Bit SAFE:4;
    Ifx_UReg_32Bit BOFF:4;
    Ifx_UReg_32Bit LOI:4;
} Ifx_CAN_N_GRINT1_Bits;


typedef struct _Ifx_CAN_N_GRINT2_Bits
{
    Ifx_UReg_32Bit REINT:4;
    Ifx_UReg_32Bit RXF1F:4;
    Ifx_UReg_32Bit RXF0F:4;
    Ifx_UReg_32Bit RXF1N:4;
    Ifx_UReg_32Bit RXF0N:4;
    Ifx_UReg_32Bit RETI:4;
    Ifx_UReg_32Bit TRAQ:4;
    Ifx_UReg_32Bit TRACO:4;
} Ifx_CAN_N_GRINT2_Bits;


typedef struct _Ifx_CAN_N_HPMS_Bits
{
    Ifx_UReg_32Bit BIDX:6;
    Ifx_UReg_32Bit MSI:2;
    Ifx_UReg_32Bit FIDX:7;
    Ifx_UReg_32Bit FLST:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_HPMS_Bits;


typedef struct _Ifx_CAN_N_IE_Bits
{
    Ifx_UReg_32Bit RF0NE:1;
    Ifx_UReg_32Bit RF0WE:1;
    Ifx_UReg_32Bit RF0FE:1;
    Ifx_UReg_32Bit RF0LE:1;
    Ifx_UReg_32Bit RF1NE:1;
    Ifx_UReg_32Bit RF1WE:1;
    Ifx_UReg_32Bit RF1FE:1;
    Ifx_UReg_32Bit RF1LE:1;
    Ifx_UReg_32Bit HPME:1;
    Ifx_UReg_32Bit TCE:1;
    Ifx_UReg_32Bit TCFE:1;
    Ifx_UReg_32Bit TFEE:1;
    Ifx_UReg_32Bit TEFNE:1;
    Ifx_UReg_32Bit TEFWE:1;
    Ifx_UReg_32Bit TEFFE:1;
    Ifx_UReg_32Bit TEFLE:1;
    Ifx_UReg_32Bit TSWE:1;
    Ifx_UReg_32Bit MRAFE:1;
    Ifx_UReg_32Bit TOOE:1;
    Ifx_UReg_32Bit DRXE:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit ELOE:1;
    Ifx_UReg_32Bit EPE:1;
    Ifx_UReg_32Bit EWE:1;
    Ifx_UReg_32Bit BOE:1;
    Ifx_UReg_32Bit WDIE:1;
    Ifx_UReg_32Bit PEAE:1;
    Ifx_UReg_32Bit PEDE:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_N_IE_Bits;


typedef struct _Ifx_CAN_N_IR_Bits
{
    Ifx_UReg_32Bit RF0N:1;
    Ifx_UReg_32Bit RF0W:1;
    Ifx_UReg_32Bit RF0F:1;
    Ifx_UReg_32Bit RF0L:1;
    Ifx_UReg_32Bit RF1N:1;
    Ifx_UReg_32Bit RF1W:1;
    Ifx_UReg_32Bit RF1F:1;
    Ifx_UReg_32Bit RF1L:1;
    Ifx_UReg_32Bit HPM:1;
    Ifx_UReg_32Bit TC:1;
    Ifx_UReg_32Bit TCF:1;
    Ifx_UReg_32Bit TFE:1;
    Ifx_UReg_32Bit TEFN:1;
    Ifx_UReg_32Bit TEFW:1;
    Ifx_UReg_32Bit TEFF:1;
    Ifx_UReg_32Bit TEFL:1;
    Ifx_UReg_32Bit TSW:1;
    Ifx_UReg_32Bit MRAF:1;
    Ifx_UReg_32Bit TOO:1;
    Ifx_UReg_32Bit DRX:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit ELO:1;
    Ifx_UReg_32Bit EP:1;
    Ifx_UReg_32Bit EW:1;
    Ifx_UReg_32Bit BO:1;
    Ifx_UReg_32Bit WDI:1;
    Ifx_UReg_32Bit PEA:1;
    Ifx_UReg_32Bit PED:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_N_IR_Bits;


typedef struct _Ifx_CAN_N_ISREG_Bits
{
    Ifx_UReg_32Bit REINT:1;
    Ifx_UReg_32Bit RXF1F:1;
    Ifx_UReg_32Bit RXF0F:1;
    Ifx_UReg_32Bit RXF1N:1;
    Ifx_UReg_32Bit RXF0N:1;
    Ifx_UReg_32Bit RETI:1;
    Ifx_UReg_32Bit TRAQ:1;
    Ifx_UReg_32Bit TRACO:1;
    Ifx_UReg_32Bit TEFIFO:1;
    Ifx_UReg_32Bit HPE:1;
    Ifx_UReg_32Bit WATI:1;
    Ifx_UReg_32Bit ALRT:1;
    Ifx_UReg_32Bit MOER:1;
    Ifx_UReg_32Bit SAFE:1;
    Ifx_UReg_32Bit BOFF:1;
    Ifx_UReg_32Bit LOI:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_ISREG_Bits;


typedef struct _Ifx_CAN_N_NBTP_Bits
{
    Ifx_UReg_32Bit NTSEG2:7;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit NTSEG1:8;
    Ifx_UReg_32Bit NBRP:9;
    Ifx_UReg_32Bit NSJW:7;
} Ifx_CAN_N_NBTP_Bits;


typedef struct _Ifx_CAN_N_NDAT1_Bits
{
    Ifx_UReg_32Bit ND0:1;
    Ifx_UReg_32Bit ND1:1;
    Ifx_UReg_32Bit ND2:1;
    Ifx_UReg_32Bit ND3:1;
    Ifx_UReg_32Bit ND4:1;
    Ifx_UReg_32Bit ND5:1;
    Ifx_UReg_32Bit ND6:1;
    Ifx_UReg_32Bit ND7:1;
    Ifx_UReg_32Bit ND8:1;
    Ifx_UReg_32Bit ND9:1;
    Ifx_UReg_32Bit ND10:1;
    Ifx_UReg_32Bit ND11:1;
    Ifx_UReg_32Bit ND12:1;
    Ifx_UReg_32Bit ND13:1;
    Ifx_UReg_32Bit ND14:1;
    Ifx_UReg_32Bit ND15:1;
    Ifx_UReg_32Bit ND16:1;
    Ifx_UReg_32Bit ND17:1;
    Ifx_UReg_32Bit ND18:1;
    Ifx_UReg_32Bit ND19:1;
    Ifx_UReg_32Bit ND20:1;
    Ifx_UReg_32Bit ND21:1;
    Ifx_UReg_32Bit ND22:1;
    Ifx_UReg_32Bit ND23:1;
    Ifx_UReg_32Bit ND24:1;
    Ifx_UReg_32Bit ND25:1;
    Ifx_UReg_32Bit ND26:1;
    Ifx_UReg_32Bit ND27:1;
    Ifx_UReg_32Bit ND28:1;
    Ifx_UReg_32Bit ND29:1;
    Ifx_UReg_32Bit ND30:1;
    Ifx_UReg_32Bit ND31:1;
} Ifx_CAN_N_NDAT1_Bits;


typedef struct _Ifx_CAN_N_NDAT2_Bits
{
    Ifx_UReg_32Bit ND32:1;
    Ifx_UReg_32Bit ND33:1;
    Ifx_UReg_32Bit ND34:1;
    Ifx_UReg_32Bit ND35:1;
    Ifx_UReg_32Bit ND36:1;
    Ifx_UReg_32Bit ND37:1;
    Ifx_UReg_32Bit ND38:1;
    Ifx_UReg_32Bit ND39:1;
    Ifx_UReg_32Bit ND40:1;
    Ifx_UReg_32Bit ND41:1;
    Ifx_UReg_32Bit ND42:1;
    Ifx_UReg_32Bit ND43:1;
    Ifx_UReg_32Bit ND44:1;
    Ifx_UReg_32Bit ND45:1;
    Ifx_UReg_32Bit ND46:1;
    Ifx_UReg_32Bit ND47:1;
    Ifx_UReg_32Bit ND48:1;
    Ifx_UReg_32Bit ND49:1;
    Ifx_UReg_32Bit ND50:1;
    Ifx_UReg_32Bit ND51:1;
    Ifx_UReg_32Bit ND52:1;
    Ifx_UReg_32Bit ND53:1;
    Ifx_UReg_32Bit ND54:1;
    Ifx_UReg_32Bit ND55:1;
    Ifx_UReg_32Bit ND56:1;
    Ifx_UReg_32Bit ND57:1;
    Ifx_UReg_32Bit ND58:1;
    Ifx_UReg_32Bit ND59:1;
    Ifx_UReg_32Bit ND60:1;
    Ifx_UReg_32Bit ND61:1;
    Ifx_UReg_32Bit ND62:1;
    Ifx_UReg_32Bit ND63:1;
} Ifx_CAN_N_NDAT2_Bits;


typedef struct _Ifx_CAN_N_NPCR_Bits
{
    Ifx_UReg_32Bit RXSEL:3;
    Ifx_UReg_32Bit reserved_3:5;
    Ifx_UReg_32Bit LBM:1;
    Ifx_UReg_32Bit LOUT:1;
    Ifx_UReg_32Bit DELE:1;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_CAN_N_NPCR_Bits;


typedef struct _Ifx_CAN_N_NT_ATTR_Bits
{
    Ifx_UReg_32Bit RELOAD:16;
    Ifx_UReg_32Bit TXMO:8;
    Ifx_UReg_32Bit STRT:1;
    Ifx_UReg_32Bit reserved_25:7;
} Ifx_CAN_N_NT_ATTR_Bits;


typedef struct _Ifx_CAN_N_NT_BTTR_Bits
{
    Ifx_UReg_32Bit RELOAD:16;
    Ifx_UReg_32Bit TXMO:8;
    Ifx_UReg_32Bit STRT:1;
    Ifx_UReg_32Bit reserved_25:7;
} Ifx_CAN_N_NT_BTTR_Bits;


typedef struct _Ifx_CAN_N_NT_CCR_Bits
{
    Ifx_UReg_32Bit reserved_0:8;
    Ifx_UReg_32Bit TPSC:4;
    Ifx_UReg_32Bit reserved_12:2;
    Ifx_UReg_32Bit STRESET:1;
    Ifx_UReg_32Bit STSTART:1;
    Ifx_UReg_32Bit reserved_16:2;
    Ifx_UReg_32Bit TRIGSRC:3;
    Ifx_UReg_32Bit reserved_21:11;
} Ifx_CAN_N_NT_CCR_Bits;


typedef struct _Ifx_CAN_N_NT_CTTR_Bits
{
    Ifx_UReg_32Bit RELOAD:16;
    Ifx_UReg_32Bit TXMO:8;
    Ifx_UReg_32Bit STRT:1;
    Ifx_UReg_32Bit reserved_25:7;
} Ifx_CAN_N_NT_CTTR_Bits;


typedef struct _Ifx_CAN_N_NT_RTR_Bits
{
    Ifx_UReg_32Bit RELOAD:16;
    Ifx_UReg_32Bit reserved_16:6;
    Ifx_UReg_32Bit TEIE:1;
    Ifx_UReg_32Bit TE:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_N_NT_RTR_Bits;


typedef struct _Ifx_CAN_N_PSR_Bits
{
    Ifx_UReg_32Bit LEC:3;
    Ifx_UReg_32Bit ACT:2;
    Ifx_UReg_32Bit EP:1;
    Ifx_UReg_32Bit EW:1;
    Ifx_UReg_32Bit BO:1;
    Ifx_UReg_32Bit DLEC:3;
    Ifx_UReg_32Bit RESI:1;
    Ifx_UReg_32Bit RBRS:1;
    Ifx_UReg_32Bit RFDF:1;
    Ifx_UReg_32Bit PXE:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit TDCV:7;
    Ifx_UReg_32Bit reserved_23:9;
} Ifx_CAN_N_PSR_Bits;


typedef struct _Ifx_CAN_N_RWD_Bits
{
    Ifx_UReg_32Bit WDC:8;
    Ifx_UReg_32Bit WDV:8;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_RWD_Bits;


typedef struct _Ifx_CAN_N_RX_BC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit RBSA:14;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_RX_BC_Bits;


typedef struct _Ifx_CAN_N_RX_ESC_Bits
{
    Ifx_UReg_32Bit F0DS:3;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit F1DS:3;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit RBDS:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_CAN_N_RX_ESC_Bits;


typedef struct _Ifx_CAN_N_RX_F0A_Bits
{
    Ifx_UReg_32Bit F0AI:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_CAN_N_RX_F0A_Bits;


typedef struct _Ifx_CAN_N_RX_F0C_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit F0SA:14;
    Ifx_UReg_32Bit F0S:7;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit F0WM:7;
    Ifx_UReg_32Bit F0OM:1;
} Ifx_CAN_N_RX_F0C_Bits;


typedef struct _Ifx_CAN_N_RX_F0S_Bits
{
    Ifx_UReg_32Bit F0FL:7;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit F0GI:6;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit F0PI:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit F0F:1;
    Ifx_UReg_32Bit RF0L:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_CAN_N_RX_F0S_Bits;


typedef struct _Ifx_CAN_N_RX_F1A_Bits
{
    Ifx_UReg_32Bit F1AI:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_CAN_N_RX_F1A_Bits;


typedef struct _Ifx_CAN_N_RX_F1C_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit F1SA:14;
    Ifx_UReg_32Bit F1S:7;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit F1WM:7;
    Ifx_UReg_32Bit F1OM:1;
} Ifx_CAN_N_RX_F1C_Bits;


typedef struct _Ifx_CAN_N_RX_F1S_Bits
{
    Ifx_UReg_32Bit F1FL:7;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit F1GI:6;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit F1PI:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit F1F:1;
    Ifx_UReg_32Bit RF1L:1;
    Ifx_UReg_32Bit reserved_26:4;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_N_RX_F1S_Bits;


typedef struct _Ifx_CAN_N_SIDFC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit FLSSA:14;
    Ifx_UReg_32Bit LSS:8;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_N_SIDFC_Bits;


typedef struct _Ifx_CAN_N_STARTADR_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit START:14;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_STARTADR_Bits;


typedef struct _Ifx_CAN_N_TDCR_Bits
{
    Ifx_UReg_32Bit TDCF:7;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit TDCO:7;
    Ifx_UReg_32Bit reserved_15:17;
} Ifx_CAN_N_TDCR_Bits;


typedef struct _Ifx_CAN_N_TEST_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit LBCK:1;
    Ifx_UReg_32Bit TX:2;
    Ifx_UReg_32Bit RX:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_CAN_N_TEST_Bits;


typedef struct _Ifx_CAN_N_TOCC_Bits
{
    Ifx_UReg_32Bit ETOC:1;
    Ifx_UReg_32Bit TOS:2;
    Ifx_UReg_32Bit reserved_3:13;
    Ifx_UReg_32Bit TOP:16;
} Ifx_CAN_N_TOCC_Bits;


typedef struct _Ifx_CAN_N_TOCV_Bits
{
    Ifx_UReg_32Bit TOC:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_TOCV_Bits;


typedef struct _Ifx_CAN_N_TSCC_Bits
{
    Ifx_UReg_32Bit TSS:2;
    Ifx_UReg_32Bit reserved_2:14;
    Ifx_UReg_32Bit TCP:4;
    Ifx_UReg_32Bit reserved_20:12;
} Ifx_CAN_N_TSCC_Bits;


typedef struct _Ifx_CAN_N_TSCV_Bits
{
    Ifx_UReg_32Bit TSC:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_TSCV_Bits;


typedef struct _Ifx_CAN_N_TTCR_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit ETESEL:2;
    Ifx_UReg_32Bit ETSSEL:3;
    Ifx_UReg_32Bit reserved_7:2;
    Ifx_UReg_32Bit TTCTSS:3;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_CAN_N_TTCR_Bits;


typedef struct _Ifx_CAN_N_TT_CPT_Bits
{
    Ifx_UReg_32Bit CCV:6;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit SWV:16;
} Ifx_CAN_N_TT_CPT_Bits;


typedef struct _Ifx_CAN_N_TT_CSM_Bits
{
    Ifx_UReg_32Bit CSM:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_TT_CSM_Bits;


typedef struct _Ifx_CAN_N_TT_CTC_Bits
{
    Ifx_UReg_32Bit CT:16;
    Ifx_UReg_32Bit CC:6;
    Ifx_UReg_32Bit reserved_22:10;
} Ifx_CAN_N_TT_CTC_Bits;


typedef struct _Ifx_CAN_N_TT_GTP_Bits
{
    Ifx_UReg_32Bit TP:16;
    Ifx_UReg_32Bit CTP:16;
} Ifx_CAN_N_TT_GTP_Bits;


typedef struct _Ifx_CAN_N_TT_IE_Bits
{
    Ifx_UReg_32Bit SBCE:1;
    Ifx_UReg_32Bit SMCE:1;
    Ifx_UReg_32Bit CSME:1;
    Ifx_UReg_32Bit SOGE:1;
    Ifx_UReg_32Bit RTMIE:1;
    Ifx_UReg_32Bit TTMIE:1;
    Ifx_UReg_32Bit SWEE:1;
    Ifx_UReg_32Bit GTWE:1;
    Ifx_UReg_32Bit GTDE:1;
    Ifx_UReg_32Bit GTEE:1;
    Ifx_UReg_32Bit TXUE:1;
    Ifx_UReg_32Bit TXOE:1;
    Ifx_UReg_32Bit SE1E:1;
    Ifx_UReg_32Bit SE2E:1;
    Ifx_UReg_32Bit ELCE:1;
    Ifx_UReg_32Bit IWTE:1;
    Ifx_UReg_32Bit WTE:1;
    Ifx_UReg_32Bit AWE:1;
    Ifx_UReg_32Bit CERE:1;
    Ifx_UReg_32Bit reserved_19:13;
} Ifx_CAN_N_TT_IE_Bits;


typedef struct _Ifx_CAN_N_TT_IR_Bits
{
    Ifx_UReg_32Bit SBC:1;
    Ifx_UReg_32Bit SMC:1;
    Ifx_UReg_32Bit CSM:1;
    Ifx_UReg_32Bit SOG:1;
    Ifx_UReg_32Bit RTMI:1;
    Ifx_UReg_32Bit TTMI:1;
    Ifx_UReg_32Bit SWE:1;
    Ifx_UReg_32Bit GTW:1;
    Ifx_UReg_32Bit GTD:1;
    Ifx_UReg_32Bit GTE:1;
    Ifx_UReg_32Bit TXU:1;
    Ifx_UReg_32Bit TXO:1;
    Ifx_UReg_32Bit SE1:1;
    Ifx_UReg_32Bit SE2:1;
    Ifx_UReg_32Bit ELC:1;
    Ifx_UReg_32Bit IWT:1;
    Ifx_UReg_32Bit WT:1;
    Ifx_UReg_32Bit AW:1;
    Ifx_UReg_32Bit CER:1;
    Ifx_UReg_32Bit reserved_19:13;
} Ifx_CAN_N_TT_IR_Bits;


typedef struct _Ifx_CAN_N_TT_LGT_Bits
{
    Ifx_UReg_32Bit LT:16;
    Ifx_UReg_32Bit GT:16;
} Ifx_CAN_N_TT_LGT_Bits;


typedef struct _Ifx_CAN_N_TT_MLM_Bits
{
    Ifx_UReg_32Bit CCM:6;
    Ifx_UReg_32Bit CSS:2;
    Ifx_UReg_32Bit TXEW:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit ENTT:12;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_CAN_N_TT_MLM_Bits;


typedef struct _Ifx_CAN_N_TT_OCF_Bits
{
    Ifx_UReg_32Bit OM:2;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit GEN:1;
    Ifx_UReg_32Bit TM:1;
    Ifx_UReg_32Bit LDSDL:3;
    Ifx_UReg_32Bit IRTO:7;
    Ifx_UReg_32Bit EECS:1;
    Ifx_UReg_32Bit AWL:8;
    Ifx_UReg_32Bit EGTF:1;
    Ifx_UReg_32Bit ECC:1;
    Ifx_UReg_32Bit EVTP:1;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_CAN_N_TT_OCF_Bits;


typedef struct _Ifx_CAN_N_TT_OCN_Bits
{
    Ifx_UReg_32Bit SGT:1;
    Ifx_UReg_32Bit ECS:1;
    Ifx_UReg_32Bit SWP:1;
    Ifx_UReg_32Bit SWS:2;
    Ifx_UReg_32Bit RTIE:1;
    Ifx_UReg_32Bit TMC:2;
    Ifx_UReg_32Bit TTIE:1;
    Ifx_UReg_32Bit GCS:1;
    Ifx_UReg_32Bit FGP:1;
    Ifx_UReg_32Bit TMG:1;
    Ifx_UReg_32Bit NIG:1;
    Ifx_UReg_32Bit ESCN:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit LCKC:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CAN_N_TT_OCN_Bits;


typedef struct _Ifx_CAN_N_TT_OST_Bits
{
    Ifx_UReg_32Bit EL:2;
    Ifx_UReg_32Bit MS:2;
    Ifx_UReg_32Bit SYS:2;
    Ifx_UReg_32Bit QGTP:1;
    Ifx_UReg_32Bit QCS:1;
    Ifx_UReg_32Bit RTO:8;
    Ifx_UReg_32Bit reserved_16:6;
    Ifx_UReg_32Bit WGTD:1;
    Ifx_UReg_32Bit GFI:1;
    Ifx_UReg_32Bit TMP:3;
    Ifx_UReg_32Bit GSI:1;
    Ifx_UReg_32Bit WFE:1;
    Ifx_UReg_32Bit AWE:1;
    Ifx_UReg_32Bit WECS:1;
    Ifx_UReg_32Bit SPL:1;
} Ifx_CAN_N_TT_OST_Bits;


typedef struct _Ifx_CAN_N_TT_RMC_Bits
{
    Ifx_UReg_32Bit RID:29;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit XTD:1;
    Ifx_UReg_32Bit RMPS:1;
} Ifx_CAN_N_TT_RMC_Bits;


typedef struct _Ifx_CAN_N_TT_TMC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit TMSA:14;
    Ifx_UReg_32Bit TME:7;
    Ifx_UReg_32Bit reserved_23:9;
} Ifx_CAN_N_TT_TMC_Bits;


typedef struct _Ifx_CAN_N_TT_TMK_Bits
{
    Ifx_UReg_32Bit TM:16;
    Ifx_UReg_32Bit TICC:7;
    Ifx_UReg_32Bit reserved_23:8;
    Ifx_UReg_32Bit LCKM:1;
} Ifx_CAN_N_TT_TMK_Bits;


typedef struct _Ifx_CAN_N_TT_TURCF_Bits
{
    Ifx_UReg_32Bit NCL:16;
    Ifx_UReg_32Bit DC:14;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit ELT:1;
} Ifx_CAN_N_TT_TURCF_Bits;


typedef struct _Ifx_CAN_N_TT_TURNA_Bits
{
    Ifx_UReg_32Bit NAV:18;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_CAN_N_TT_TURNA_Bits;


typedef struct _Ifx_CAN_N_TX_BAR_Bits
{
    Ifx_UReg_32Bit AR0:1;
    Ifx_UReg_32Bit AR1:1;
    Ifx_UReg_32Bit AR2:1;
    Ifx_UReg_32Bit AR3:1;
    Ifx_UReg_32Bit AR4:1;
    Ifx_UReg_32Bit AR5:1;
    Ifx_UReg_32Bit AR6:1;
    Ifx_UReg_32Bit AR7:1;
    Ifx_UReg_32Bit AR8:1;
    Ifx_UReg_32Bit AR9:1;
    Ifx_UReg_32Bit AR10:1;
    Ifx_UReg_32Bit AR11:1;
    Ifx_UReg_32Bit AR12:1;
    Ifx_UReg_32Bit AR13:1;
    Ifx_UReg_32Bit AR14:1;
    Ifx_UReg_32Bit AR15:1;
    Ifx_UReg_32Bit AR16:1;
    Ifx_UReg_32Bit AR17:1;
    Ifx_UReg_32Bit AR18:1;
    Ifx_UReg_32Bit AR19:1;
    Ifx_UReg_32Bit AR20:1;
    Ifx_UReg_32Bit AR21:1;
    Ifx_UReg_32Bit AR22:1;
    Ifx_UReg_32Bit AR23:1;
    Ifx_UReg_32Bit AR24:1;
    Ifx_UReg_32Bit AR25:1;
    Ifx_UReg_32Bit AR26:1;
    Ifx_UReg_32Bit AR27:1;
    Ifx_UReg_32Bit AR28:1;
    Ifx_UReg_32Bit AR29:1;
    Ifx_UReg_32Bit AR30:1;
    Ifx_UReg_32Bit AR31:1;
} Ifx_CAN_N_TX_BAR_Bits;


typedef struct _Ifx_CAN_N_TX_BC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit TBSA:14;
    Ifx_UReg_32Bit NDTB:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit TFQS:6;
    Ifx_UReg_32Bit TFQM:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_CAN_N_TX_BC_Bits;


typedef struct _Ifx_CAN_N_TX_BCF_Bits
{
    Ifx_UReg_32Bit CF0:1;
    Ifx_UReg_32Bit CF1:1;
    Ifx_UReg_32Bit CF2:1;
    Ifx_UReg_32Bit CF3:1;
    Ifx_UReg_32Bit CF4:1;
    Ifx_UReg_32Bit CF5:1;
    Ifx_UReg_32Bit CF6:1;
    Ifx_UReg_32Bit CF7:1;
    Ifx_UReg_32Bit CF8:1;
    Ifx_UReg_32Bit CF9:1;
    Ifx_UReg_32Bit CF10:1;
    Ifx_UReg_32Bit CF11:1;
    Ifx_UReg_32Bit CF12:1;
    Ifx_UReg_32Bit CF13:1;
    Ifx_UReg_32Bit CF14:1;
    Ifx_UReg_32Bit CF15:1;
    Ifx_UReg_32Bit CF16:1;
    Ifx_UReg_32Bit CF17:1;
    Ifx_UReg_32Bit CF18:1;
    Ifx_UReg_32Bit CF19:1;
    Ifx_UReg_32Bit CF20:1;
    Ifx_UReg_32Bit CF21:1;
    Ifx_UReg_32Bit CF22:1;
    Ifx_UReg_32Bit CF23:1;
    Ifx_UReg_32Bit CF24:1;
    Ifx_UReg_32Bit CF25:1;
    Ifx_UReg_32Bit CF26:1;
    Ifx_UReg_32Bit CF27:1;
    Ifx_UReg_32Bit CF28:1;
    Ifx_UReg_32Bit CF29:1;
    Ifx_UReg_32Bit CF30:1;
    Ifx_UReg_32Bit CF31:1;
} Ifx_CAN_N_TX_BCF_Bits;


typedef struct _Ifx_CAN_N_TX_BCIE_Bits
{
    Ifx_UReg_32Bit CFIE0:1;
    Ifx_UReg_32Bit CFIE1:1;
    Ifx_UReg_32Bit CFIE2:1;
    Ifx_UReg_32Bit CFIE3:1;
    Ifx_UReg_32Bit CFIE4:1;
    Ifx_UReg_32Bit CFIE5:1;
    Ifx_UReg_32Bit CFIE6:1;
    Ifx_UReg_32Bit CFIE7:1;
    Ifx_UReg_32Bit CFIE8:1;
    Ifx_UReg_32Bit CFIE9:1;
    Ifx_UReg_32Bit CFIE10:1;
    Ifx_UReg_32Bit CFIE11:1;
    Ifx_UReg_32Bit CFIE12:1;
    Ifx_UReg_32Bit CFIE13:1;
    Ifx_UReg_32Bit CFIE14:1;
    Ifx_UReg_32Bit CFIE15:1;
    Ifx_UReg_32Bit CFIE16:1;
    Ifx_UReg_32Bit CFIE17:1;
    Ifx_UReg_32Bit CFIE18:1;
    Ifx_UReg_32Bit CFIE19:1;
    Ifx_UReg_32Bit CFIE20:1;
    Ifx_UReg_32Bit CFIE21:1;
    Ifx_UReg_32Bit CFIE22:1;
    Ifx_UReg_32Bit CFIE23:1;
    Ifx_UReg_32Bit CFIE24:1;
    Ifx_UReg_32Bit CFIE25:1;
    Ifx_UReg_32Bit CFIE26:1;
    Ifx_UReg_32Bit CFIE27:1;
    Ifx_UReg_32Bit CFIE28:1;
    Ifx_UReg_32Bit CFIE29:1;
    Ifx_UReg_32Bit CFIE30:1;
    Ifx_UReg_32Bit CFIE31:1;
} Ifx_CAN_N_TX_BCIE_Bits;


typedef struct _Ifx_CAN_N_TX_BCR_Bits
{
    Ifx_UReg_32Bit CR0:1;
    Ifx_UReg_32Bit CR1:1;
    Ifx_UReg_32Bit CR2:1;
    Ifx_UReg_32Bit CR3:1;
    Ifx_UReg_32Bit CR4:1;
    Ifx_UReg_32Bit CR5:1;
    Ifx_UReg_32Bit CR6:1;
    Ifx_UReg_32Bit CR7:1;
    Ifx_UReg_32Bit CR8:1;
    Ifx_UReg_32Bit CR9:1;
    Ifx_UReg_32Bit CR10:1;
    Ifx_UReg_32Bit CR11:1;
    Ifx_UReg_32Bit CR12:1;
    Ifx_UReg_32Bit CR13:1;
    Ifx_UReg_32Bit CR14:1;
    Ifx_UReg_32Bit CR15:1;
    Ifx_UReg_32Bit CR16:1;
    Ifx_UReg_32Bit CR17:1;
    Ifx_UReg_32Bit CR18:1;
    Ifx_UReg_32Bit CR19:1;
    Ifx_UReg_32Bit CR20:1;
    Ifx_UReg_32Bit CR21:1;
    Ifx_UReg_32Bit CR22:1;
    Ifx_UReg_32Bit CR23:1;
    Ifx_UReg_32Bit CR24:1;
    Ifx_UReg_32Bit CR25:1;
    Ifx_UReg_32Bit CR26:1;
    Ifx_UReg_32Bit CR27:1;
    Ifx_UReg_32Bit CR28:1;
    Ifx_UReg_32Bit CR29:1;
    Ifx_UReg_32Bit CR30:1;
    Ifx_UReg_32Bit CR31:1;
} Ifx_CAN_N_TX_BCR_Bits;


typedef struct _Ifx_CAN_N_TX_BRP_Bits
{
    Ifx_UReg_32Bit TRP0:1;
    Ifx_UReg_32Bit TRP1:1;
    Ifx_UReg_32Bit TRP2:1;
    Ifx_UReg_32Bit TRP3:1;
    Ifx_UReg_32Bit TRP4:1;
    Ifx_UReg_32Bit TRP5:1;
    Ifx_UReg_32Bit TRP6:1;
    Ifx_UReg_32Bit TRP7:1;
    Ifx_UReg_32Bit TRP8:1;
    Ifx_UReg_32Bit TRP9:1;
    Ifx_UReg_32Bit TRP10:1;
    Ifx_UReg_32Bit TRP11:1;
    Ifx_UReg_32Bit TRP12:1;
    Ifx_UReg_32Bit TRP13:1;
    Ifx_UReg_32Bit TRP14:1;
    Ifx_UReg_32Bit TRP15:1;
    Ifx_UReg_32Bit TRP16:1;
    Ifx_UReg_32Bit TRP17:1;
    Ifx_UReg_32Bit TRP18:1;
    Ifx_UReg_32Bit TRP19:1;
    Ifx_UReg_32Bit TRP20:1;
    Ifx_UReg_32Bit TRP21:1;
    Ifx_UReg_32Bit TRP22:1;
    Ifx_UReg_32Bit TRP23:1;
    Ifx_UReg_32Bit TRP24:1;
    Ifx_UReg_32Bit TRP25:1;
    Ifx_UReg_32Bit TRP26:1;
    Ifx_UReg_32Bit TRP27:1;
    Ifx_UReg_32Bit TRP28:1;
    Ifx_UReg_32Bit TRP29:1;
    Ifx_UReg_32Bit TRP30:1;
    Ifx_UReg_32Bit TRP31:1;
} Ifx_CAN_N_TX_BRP_Bits;


typedef struct _Ifx_CAN_N_TX_BTIE_Bits
{
    Ifx_UReg_32Bit TIE0:1;
    Ifx_UReg_32Bit TIE1:1;
    Ifx_UReg_32Bit TIE2:1;
    Ifx_UReg_32Bit TIE3:1;
    Ifx_UReg_32Bit TIE4:1;
    Ifx_UReg_32Bit TIE5:1;
    Ifx_UReg_32Bit TIE6:1;
    Ifx_UReg_32Bit TIE7:1;
    Ifx_UReg_32Bit TIE8:1;
    Ifx_UReg_32Bit TIE9:1;
    Ifx_UReg_32Bit TIE10:1;
    Ifx_UReg_32Bit TIE11:1;
    Ifx_UReg_32Bit TIE12:1;
    Ifx_UReg_32Bit TIE13:1;
    Ifx_UReg_32Bit TIE14:1;
    Ifx_UReg_32Bit TIE15:1;
    Ifx_UReg_32Bit TIE16:1;
    Ifx_UReg_32Bit TIE17:1;
    Ifx_UReg_32Bit TIE18:1;
    Ifx_UReg_32Bit TIE19:1;
    Ifx_UReg_32Bit TIE20:1;
    Ifx_UReg_32Bit TIE21:1;
    Ifx_UReg_32Bit TIE22:1;
    Ifx_UReg_32Bit TIE23:1;
    Ifx_UReg_32Bit TIE24:1;
    Ifx_UReg_32Bit TIE25:1;
    Ifx_UReg_32Bit TIE26:1;
    Ifx_UReg_32Bit TIE27:1;
    Ifx_UReg_32Bit TIE28:1;
    Ifx_UReg_32Bit TIE29:1;
    Ifx_UReg_32Bit TIE30:1;
    Ifx_UReg_32Bit TIE31:1;
} Ifx_CAN_N_TX_BTIE_Bits;


typedef struct _Ifx_CAN_N_TX_BTO_Bits
{
    Ifx_UReg_32Bit TO0:1;
    Ifx_UReg_32Bit TO1:1;
    Ifx_UReg_32Bit TO2:1;
    Ifx_UReg_32Bit TO3:1;
    Ifx_UReg_32Bit TO4:1;
    Ifx_UReg_32Bit TO5:1;
    Ifx_UReg_32Bit TO6:1;
    Ifx_UReg_32Bit TO7:1;
    Ifx_UReg_32Bit TO8:1;
    Ifx_UReg_32Bit TO9:1;
    Ifx_UReg_32Bit TO10:1;
    Ifx_UReg_32Bit TO11:1;
    Ifx_UReg_32Bit TO12:1;
    Ifx_UReg_32Bit TO13:1;
    Ifx_UReg_32Bit TO14:1;
    Ifx_UReg_32Bit TO15:1;
    Ifx_UReg_32Bit TO16:1;
    Ifx_UReg_32Bit TO17:1;
    Ifx_UReg_32Bit TO18:1;
    Ifx_UReg_32Bit TO19:1;
    Ifx_UReg_32Bit TO20:1;
    Ifx_UReg_32Bit TO21:1;
    Ifx_UReg_32Bit TO22:1;
    Ifx_UReg_32Bit TO23:1;
    Ifx_UReg_32Bit TO24:1;
    Ifx_UReg_32Bit TO25:1;
    Ifx_UReg_32Bit TO26:1;
    Ifx_UReg_32Bit TO27:1;
    Ifx_UReg_32Bit TO28:1;
    Ifx_UReg_32Bit TO29:1;
    Ifx_UReg_32Bit TO30:1;
    Ifx_UReg_32Bit TO31:1;
} Ifx_CAN_N_TX_BTO_Bits;


typedef struct _Ifx_CAN_N_TX_EFA_Bits
{
    Ifx_UReg_32Bit EFAI:5;
    Ifx_UReg_32Bit reserved_5:27;
} Ifx_CAN_N_TX_EFA_Bits;


typedef struct _Ifx_CAN_N_TX_EFC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit EFSA:14;
    Ifx_UReg_32Bit EFS:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit EFWM:6;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_N_TX_EFC_Bits;


typedef struct _Ifx_CAN_N_TX_EFS_Bits
{
    Ifx_UReg_32Bit EFFL:6;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit EFGI:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit EFPI:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit EFF:1;
    Ifx_UReg_32Bit TEFL:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_CAN_N_TX_EFS_Bits;


typedef struct _Ifx_CAN_N_TX_ESC_Bits
{
    Ifx_UReg_32Bit TBDS:3;
    Ifx_UReg_32Bit reserved_3:29;
} Ifx_CAN_N_TX_ESC_Bits;


typedef struct _Ifx_CAN_N_TX_FQS_Bits
{
    Ifx_UReg_32Bit TFFL:6;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit TFGI:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit TFQPI:5;
    Ifx_UReg_32Bit TFQF:1;
    Ifx_UReg_32Bit reserved_22:10;
} Ifx_CAN_N_TX_FQS_Bits;


typedef struct _Ifx_CAN_N_XIDAM_Bits
{
    Ifx_UReg_32Bit EIDM:29;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_CAN_N_XIDAM_Bits;


typedef struct _Ifx_CAN_N_XIDFC_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit FLESA:14;
    Ifx_UReg_32Bit LSE:7;
    Ifx_UReg_32Bit reserved_23:9;
} Ifx_CAN_N_XIDFC_Bits;


typedef struct _Ifx_CAN_OCS_Bits
{
    Ifx_UReg_32Bit TGS:2;
    Ifx_UReg_32Bit TGB:1;
    Ifx_UReg_32Bit TG_P:1;
    Ifx_UReg_32Bit reserved_4:20;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CAN_OCS_Bits;


typedef struct _Ifx_CAN_R0_Bits
{
    Ifx_UReg_32Bit ID:29;
    Ifx_UReg_32Bit RTR:1;
    Ifx_UReg_32Bit XTD:1;
    Ifx_UReg_32Bit ESI:1;
} Ifx_CAN_R0_Bits;


typedef struct _Ifx_CAN_R1_Bits
{
    Ifx_UReg_32Bit RXTS:16;
    Ifx_UReg_32Bit DLC:4;
    Ifx_UReg_32Bit BRS:1;
    Ifx_UReg_32Bit FDF:1;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit FIDX:7;
    Ifx_UReg_32Bit ANMF:1;
} Ifx_CAN_R1_Bits;


typedef struct _Ifx_CAN_STDMSG_S0_Bits
{
    Ifx_UReg_32Bit SFID2:11;
    Ifx_UReg_32Bit reserved_11:5;
    Ifx_UReg_32Bit SFID1:11;
    Ifx_UReg_32Bit SFEC:3;
    Ifx_UReg_32Bit SFT:2;
} Ifx_CAN_STDMSG_S0_Bits;


typedef struct _Ifx_CAN_TRIGMSG_TM0_Bits
{
    Ifx_UReg_32Bit TYPE:4;
    Ifx_UReg_32Bit TMEX:1;
    Ifx_UReg_32Bit TMIN:1;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit CC:7;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit TM:16;
} Ifx_CAN_TRIGMSG_TM0_Bits;


typedef struct _Ifx_CAN_TRIGMSG_TM1_Bits
{
    Ifx_UReg_32Bit MSC:3;
    Ifx_UReg_32Bit reserved_3:13;
    Ifx_UReg_32Bit MMR:7;
    Ifx_UReg_32Bit FTYPE:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_CAN_TRIGMSG_TM1_Bits;


typedef struct _Ifx_CAN_TXEVENT_E0_Bits
{
    Ifx_UReg_32Bit ID:29;
    Ifx_UReg_32Bit RTR:1;
    Ifx_UReg_32Bit XTD:1;
    Ifx_UReg_32Bit ESI:1;
} Ifx_CAN_TXEVENT_E0_Bits;


typedef struct _Ifx_CAN_TXEVENT_E1_Bits
{
    Ifx_UReg_32Bit TXTS:16;
    Ifx_UReg_32Bit DLC:4;
    Ifx_UReg_32Bit BRS:1;
    Ifx_UReg_32Bit FDF:1;
    Ifx_UReg_32Bit ET:2;
    Ifx_UReg_32Bit MM:8;
} Ifx_CAN_TXEVENT_E1_Bits;


typedef struct _Ifx_CAN_TXMSG_DB_Bits
{
    Ifx_UReg_8Bit DB:8;
} Ifx_CAN_TXMSG_DB_Bits;


typedef struct _Ifx_CAN_TXMSG_T0_Bits
{
    Ifx_UReg_32Bit ID:29;
    Ifx_UReg_32Bit RTR:1;
    Ifx_UReg_32Bit XTD:1;
    Ifx_UReg_32Bit ESI:1;
} Ifx_CAN_TXMSG_T0_Bits;


typedef struct _Ifx_CAN_TXMSG_T1_Bits
{
    Ifx_UReg_32Bit reserved_0:16;
    Ifx_UReg_32Bit DLC:4;
    Ifx_UReg_32Bit BRS:1;
    Ifx_UReg_32Bit FDF:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit EFC:1;
    Ifx_UReg_32Bit MM:8;
} Ifx_CAN_TXMSG_T1_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_ACCEN0_Bits B;
} Ifx_CAN_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_ACCENCTR0_Bits B;
} Ifx_CAN_ACCENCTR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_BUFADR_Bits B;
} Ifx_CAN_BUFADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_CLC_Bits B;
} Ifx_CAN_CLC;


typedef union
{
    Ifx_UReg_8Bit U;
    Ifx_SReg_8Bit I;
    Ifx_CAN_DB_Bits B;
} Ifx_CAN_DB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_EXTMSG_F0_Bits B;
} Ifx_CAN_EXTMSG_F0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_EXTMSG_F1_Bits B;
} Ifx_CAN_EXTMSG_F1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_ID_Bits B;
} Ifx_CAN_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_KRST0_Bits B;
} Ifx_CAN_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_KRST1_Bits B;
} Ifx_CAN_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_KRSTCLR_Bits B;
} Ifx_CAN_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_MCR_Bits B;
} Ifx_CAN_MCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_MECR_Bits B;
} Ifx_CAN_MECR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_MESTAT_Bits B;
} Ifx_CAN_MESTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ACCENNODE0_Bits B;
} Ifx_CAN_N_ACCENNODE0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_CCCR_Bits B;
} Ifx_CAN_N_CCCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_CREL_Bits B;
} Ifx_CAN_N_CREL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_DBTP_Bits B;
} Ifx_CAN_N_DBTP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ECR_Bits B;
} Ifx_CAN_N_ECR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ENDADR_Bits B;
} Ifx_CAN_N_ENDADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ENDN_Bits B;
} Ifx_CAN_N_ENDN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_GFC_Bits B;
} Ifx_CAN_N_GFC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_GRINT1_Bits B;
} Ifx_CAN_N_GRINT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_GRINT2_Bits B;
} Ifx_CAN_N_GRINT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_HPMS_Bits B;
} Ifx_CAN_N_HPMS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_IE_Bits B;
} Ifx_CAN_N_IE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_IR_Bits B;
} Ifx_CAN_N_IR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_ISREG_Bits B;
} Ifx_CAN_N_ISREG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NBTP_Bits B;
} Ifx_CAN_N_NBTP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NDAT1_Bits B;
} Ifx_CAN_N_NDAT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NDAT2_Bits B;
} Ifx_CAN_N_NDAT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NPCR_Bits B;
} Ifx_CAN_N_NPCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_ATTR_Bits B;
} Ifx_CAN_N_NT_ATTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_BTTR_Bits B;
} Ifx_CAN_N_NT_BTTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_CCR_Bits B;
} Ifx_CAN_N_NT_CCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_CTTR_Bits B;
} Ifx_CAN_N_NT_CTTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_NT_RTR_Bits B;
} Ifx_CAN_N_NT_RTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_PSR_Bits B;
} Ifx_CAN_N_PSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RWD_Bits B;
} Ifx_CAN_N_RWD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_BC_Bits B;
} Ifx_CAN_N_RX_BC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_ESC_Bits B;
} Ifx_CAN_N_RX_ESC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F0A_Bits B;
} Ifx_CAN_N_RX_F0A;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F0C_Bits B;
} Ifx_CAN_N_RX_F0C;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F0S_Bits B;
} Ifx_CAN_N_RX_F0S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F1A_Bits B;
} Ifx_CAN_N_RX_F1A;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F1C_Bits B;
} Ifx_CAN_N_RX_F1C;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_RX_F1S_Bits B;
} Ifx_CAN_N_RX_F1S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_SIDFC_Bits B;
} Ifx_CAN_N_SIDFC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_STARTADR_Bits B;
} Ifx_CAN_N_STARTADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TDCR_Bits B;
} Ifx_CAN_N_TDCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TEST_Bits B;
} Ifx_CAN_N_TEST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TOCC_Bits B;
} Ifx_CAN_N_TOCC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TOCV_Bits B;
} Ifx_CAN_N_TOCV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TSCC_Bits B;
} Ifx_CAN_N_TSCC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TSCV_Bits B;
} Ifx_CAN_N_TSCV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TTCR_Bits B;
} Ifx_CAN_N_TTCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_CPT_Bits B;
} Ifx_CAN_N_TT_CPT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_CSM_Bits B;
} Ifx_CAN_N_TT_CSM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_CTC_Bits B;
} Ifx_CAN_N_TT_CTC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_GTP_Bits B;
} Ifx_CAN_N_TT_GTP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_IE_Bits B;
} Ifx_CAN_N_TT_IE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_IR_Bits B;
} Ifx_CAN_N_TT_IR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_LGT_Bits B;
} Ifx_CAN_N_TT_LGT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_MLM_Bits B;
} Ifx_CAN_N_TT_MLM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_OCF_Bits B;
} Ifx_CAN_N_TT_OCF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_OCN_Bits B;
} Ifx_CAN_N_TT_OCN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_OST_Bits B;
} Ifx_CAN_N_TT_OST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_RMC_Bits B;
} Ifx_CAN_N_TT_RMC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_TMC_Bits B;
} Ifx_CAN_N_TT_TMC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_TMK_Bits B;
} Ifx_CAN_N_TT_TMK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_TURCF_Bits B;
} Ifx_CAN_N_TT_TURCF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TT_TURNA_Bits B;
} Ifx_CAN_N_TT_TURNA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BAR_Bits B;
} Ifx_CAN_N_TX_BAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BC_Bits B;
} Ifx_CAN_N_TX_BC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BCF_Bits B;
} Ifx_CAN_N_TX_BCF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BCIE_Bits B;
} Ifx_CAN_N_TX_BCIE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BCR_Bits B;
} Ifx_CAN_N_TX_BCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BRP_Bits B;
} Ifx_CAN_N_TX_BRP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BTIE_Bits B;
} Ifx_CAN_N_TX_BTIE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_BTO_Bits B;
} Ifx_CAN_N_TX_BTO;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_EFA_Bits B;
} Ifx_CAN_N_TX_EFA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_EFC_Bits B;
} Ifx_CAN_N_TX_EFC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_EFS_Bits B;
} Ifx_CAN_N_TX_EFS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_ESC_Bits B;
} Ifx_CAN_N_TX_ESC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_TX_FQS_Bits B;
} Ifx_CAN_N_TX_FQS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_XIDAM_Bits B;
} Ifx_CAN_N_XIDAM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_N_XIDFC_Bits B;
} Ifx_CAN_N_XIDFC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_OCS_Bits B;
} Ifx_CAN_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_R0_Bits B;
} Ifx_CAN_R0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_R1_Bits B;
} Ifx_CAN_R1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_STDMSG_S0_Bits B;
} Ifx_CAN_STDMSG_S0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TRIGMSG_TM0_Bits B;
} Ifx_CAN_TRIGMSG_TM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TRIGMSG_TM1_Bits B;
} Ifx_CAN_TRIGMSG_TM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TXEVENT_E0_Bits B;
} Ifx_CAN_TXEVENT_E0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TXEVENT_E1_Bits B;
} Ifx_CAN_TXEVENT_E1;


typedef union
{
    Ifx_UReg_8Bit U;
    Ifx_SReg_8Bit I;
    Ifx_CAN_TXMSG_DB_Bits B;
} Ifx_CAN_TXMSG_DB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TXMSG_T0_Bits B;
} Ifx_CAN_TXMSG_T0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CAN_TXMSG_T1_Bits B;
} Ifx_CAN_TXMSG_T1;
# 2282 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N_NT
{
       Ifx_CAN_N_NT_CCR CCR;
       Ifx_CAN_N_NT_ATTR ATTR;
       Ifx_CAN_N_NT_BTTR BTTR;
       Ifx_CAN_N_NT_CTTR CTTR;
       Ifx_CAN_N_NT_RTR RTR;
} Ifx_CAN_N_NT;
# 2304 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N_RX
{
       Ifx_CAN_N_RX_F0C F0C;
       Ifx_CAN_N_RX_F0S F0S;
       Ifx_CAN_N_RX_F0A F0A;
       Ifx_CAN_N_RX_BC BC;
       Ifx_CAN_N_RX_F1C F1C;
       Ifx_CAN_N_RX_F1S F1S;
       Ifx_CAN_N_RX_F1A F1A;
       Ifx_CAN_N_RX_ESC ESC;
} Ifx_CAN_N_RX;
# 2329 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N_TX
{
       Ifx_CAN_N_TX_BC BC;
       Ifx_CAN_N_TX_FQS FQS;
       Ifx_CAN_N_TX_ESC ESC;
       Ifx_CAN_N_TX_BRP BRP;
       Ifx_CAN_N_TX_BAR BAR;
       Ifx_CAN_N_TX_BCR BCR;
       Ifx_CAN_N_TX_BTO BTO;
       Ifx_CAN_N_TX_BCF BCF;
       Ifx_CAN_N_TX_BTIE BTIE;
       Ifx_CAN_N_TX_BCIE BCIE;
       Ifx_UReg_8Bit reserved_28[8];
       Ifx_CAN_N_TX_EFC EFC;
       Ifx_CAN_N_TX_EFS EFS;
       Ifx_CAN_N_TX_EFA EFA;
} Ifx_CAN_N_TX;
# 2360 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N_TT
{
       Ifx_CAN_N_TT_TMC TMC;
       Ifx_CAN_N_TT_RMC RMC;
       Ifx_CAN_N_TT_OCF OCF;
       Ifx_CAN_N_TT_MLM MLM;
       Ifx_CAN_N_TT_TURCF TURCF;
       Ifx_CAN_N_TT_OCN OCN;
       Ifx_CAN_N_TT_GTP GTP;
       Ifx_CAN_N_TT_TMK TMK;
       Ifx_CAN_N_TT_IR IR;
       Ifx_CAN_N_TT_IE IE;
       Ifx_UReg_8Bit reserved_28[4];
       Ifx_CAN_N_TT_OST OST;
       Ifx_CAN_N_TT_TURNA TURNA;
       Ifx_CAN_N_TT_LGT LGT;
       Ifx_CAN_N_TT_CTC CTC;
       Ifx_CAN_N_TT_CPT CPT;
       Ifx_CAN_N_TT_CSM CSM;
} Ifx_CAN_N_TT;
# 2394 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_N
{
       Ifx_CAN_N_ACCENNODE0 ACCENNODE0;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_CAN_N_STARTADR STARTADR;
       Ifx_CAN_N_ENDADR ENDADR;
       Ifx_CAN_N_ISREG ISREG;
       Ifx_CAN_N_GRINT1 GRINT1;
       Ifx_CAN_N_GRINT2 GRINT2;
       Ifx_UReg_8Bit reserved_1C[4];
       Ifx_CAN_N_NT NT;
       Ifx_UReg_8Bit reserved_34[12];
       Ifx_CAN_N_NPCR NPCR;
       Ifx_UReg_8Bit reserved_44[172];
       Ifx_CAN_N_TTCR TTCR;
       Ifx_UReg_8Bit reserved_F4[12];
       Ifx_CAN_N_CREL CREL;
       Ifx_CAN_N_ENDN ENDN;
       Ifx_UReg_8Bit reserved_108[4];
       Ifx_CAN_N_DBTP DBTP;
       Ifx_CAN_N_TEST TEST;
       Ifx_CAN_N_RWD RWD;
       Ifx_CAN_N_CCCR CCCR;
       Ifx_CAN_N_NBTP NBTP;
       Ifx_CAN_N_TSCC TSCC;
       Ifx_CAN_N_TSCV TSCV;
       Ifx_CAN_N_TOCC TOCC;
       Ifx_CAN_N_TOCV TOCV;
       Ifx_UReg_8Bit reserved_130[16];
       Ifx_CAN_N_ECR ECR;
       Ifx_CAN_N_PSR PSR;
       Ifx_CAN_N_TDCR TDCR;
       Ifx_UReg_8Bit reserved_14C[4];
       Ifx_CAN_N_IR IR;
       Ifx_CAN_N_IE IE;
       Ifx_UReg_8Bit reserved_158[40];
       Ifx_CAN_N_GFC GFC;
       Ifx_CAN_N_SIDFC SIDFC;
       Ifx_CAN_N_XIDFC XIDFC;
       Ifx_UReg_8Bit reserved_18C[4];
       Ifx_CAN_N_XIDAM XIDAM;
       Ifx_CAN_N_HPMS HPMS;
       Ifx_CAN_N_NDAT1 NDAT1;
       Ifx_CAN_N_NDAT2 NDAT2;
       Ifx_CAN_N_RX RX;
       Ifx_CAN_N_TX TX;
       Ifx_UReg_8Bit reserved_1FC[4];
       Ifx_CAN_N_TT TT;
       Ifx_UReg_8Bit reserved_244[444];
} Ifx_CAN_N;
# 2458 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_STDMSG
{
       Ifx_CAN_STDMSG_S0 S0;
} Ifx_CAN_STDMSG;
# 2476 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_EXTMSG
{
       Ifx_CAN_EXTMSG_F0 F0;
       Ifx_CAN_EXTMSG_F1 F1;
} Ifx_CAN_EXTMSG;
# 2495 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_RXMSG
{
       Ifx_CAN_R0 R0;
       Ifx_CAN_R1 R1;
       Ifx_CAN_DB DB[64];
} Ifx_CAN_RXMSG;
# 2515 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_TXEVENT
{
       Ifx_CAN_TXEVENT_E0 E0;
       Ifx_CAN_TXEVENT_E1 E1;
} Ifx_CAN_TXEVENT;
# 2534 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_TXMSG
{
       Ifx_CAN_TXMSG_T0 T0;
       Ifx_CAN_TXMSG_T1 T1;
       Ifx_CAN_TXMSG_DB DB[64];
} Ifx_CAN_TXMSG;
# 2554 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_TRIGMSG
{
       Ifx_CAN_TRIGMSG_TM0 TM0;
       Ifx_CAN_TRIGMSG_TM1 TM1;
} Ifx_CAN_TRIGMSG;
# 2573 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN
{
       Ifx_UReg_32Bit RAM[8192];
       Ifx_CAN_CLC CLC;
       Ifx_UReg_8Bit reserved_8004[4];
       Ifx_CAN_ID ID;
       Ifx_UReg_8Bit reserved_800C[36];
       Ifx_CAN_MCR MCR;
       Ifx_CAN_BUFADR BUFADR;
       Ifx_UReg_8Bit reserved_8038[8];
       Ifx_CAN_MECR MECR;
       Ifx_CAN_MESTAT MESTAT;
       Ifx_UReg_8Bit reserved_8048[148];
       Ifx_CAN_ACCENCTR0 ACCENCTR0;
       Ifx_UReg_8Bit reserved_80E0[8];
       Ifx_CAN_OCS OCS;
       Ifx_CAN_KRSTCLR KRSTCLR;
       Ifx_CAN_KRST1 KRST1;
       Ifx_CAN_KRST0 KRST0;
       Ifx_UReg_8Bit reserved_80F8[4];
       Ifx_CAN_ACCEN0 ACCEN0;
       Ifx_CAN_N N[4];
} Ifx_CAN;
# 63 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCan_reg.h" 2
# 2 ".\\output\\inc/IfxCan_reg.h" 2
# 51 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2

# 1 ".\\output\\inc/ComStack_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 1
# 19 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 20 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 2
# 1 ".\\output\\inc/ComStack_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h" 1
# 44 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
typedef uint16 PduIdType;



typedef uint16 PduLengthType;
# 57 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
typedef struct
{
    uint8 * SduDataPtr;
    uint8 * MetaDataPtr;
    PduLengthType SduLength;
} PduInfoType;
# 71 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
typedef uint8 BusTrcvErrorType;
# 2 ".\\output\\inc/ComStack_Cfg.h" 2
# 21 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 2
# 44 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
typedef uint8 PNCHandleType;


typedef enum
{
    TP_STMIN = 0x00,
    TP_BS = 0x01,
    TP_BC = 0x02
} TPParameterType;


typedef enum
{
    BUFREQ_OK = 0x00,
    BUFREQ_E_NOT_OK = 0x01,
    BUFREQ_E_BUSY = 0x02,
    BUFREQ_E_OVFL = 0x03
} BufReq_ReturnType;


typedef enum
{
    TP_DATACONF = 0x00,
    TP_DATARETRY = 0x01,
    TP_CONFPENDING = 0x02
} TpDataStateType;


typedef struct
{
    TpDataStateType TpDataState;
    PduLengthType TxTpDataCnt;
} RetryInfoType;


typedef uint8 NetworkHandleType;


typedef uint8 IcomConfigIdType;


typedef enum
{
    ICOM_SWITCH_E_OK,
    ICOM_SWITCH_E_FAILED
} IcomSwitch_ErrorType;
# 2 ".\\output\\inc/ComStack_Types.h" 2
# 53 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2

# 1 ".\\output\\inc/Can_17_McmCan_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_Cfg.h" 1
# 2 ".\\output\\inc/Can_17_McmCan_Cfg.h" 2
# 55 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2




# 1 ".\\output\\inc/Can_GeneralTypes.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h" 1






# 1 ".\\output\\inc/ComStack_Types.h" 1
# 8 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h" 2
# 21 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef uint32 Can_IdType;
# 30 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef uint16 Can_HwHandleType;
# 42 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef struct
{
    Can_IdType CanId;
    Can_HwHandleType Hoh;
    uint8 ControllerId;
}Can_HwType;
# 62 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef struct
{
    uint8 * sdu;
    Can_IdType id;
    PduIdType swPduHandle;
    uint8 length;

}Can_PduType;
# 83 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef enum
{
    CAN_T_START,
    CAN_T_STOP,
    CAN_T_SLEEP,
    CAN_T_WAKEUP,
    CAN_T_MAXTRANSITION

}Can_StateTransitionType;
# 104 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef enum
{
    CAN_OK,
    CAN_NOT_OK,
    CAN_BUSY

}Can_ReturnType;
# 131 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef enum
{
    CANTRCV_TRCVMODE_NORMAL=0,
    CANTRCV_TRCVMODE_SLEEP,
    CANTRCV_TRCVMODE_STANDBY

}CanTrcv_TrcvModeType;


typedef enum
{
    CANTRCV_WUMODE_ENABLE=0,
    CANTRCV_WUMODE_DISABLE,
    CANTRCV_WUMODE_CLEAR

}CanTrcv_TrcvWakeupModeType;
# 164 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
typedef enum
{

    CANTRCV_WU_ERROR=0,
    CANTRCV_WU_NOT_SUPPORTED,
    CANTRCV_WU_BY_BUS,
    CANTRCV_WU_INTERNALLY,
    CANTRCV_WU_RESET,
    CANTRCV_WU_POWER_ON,
    CANTRCV_WU_BY_PIN

}CanTrcv_TrcvWakeupReasonType;
# 2 ".\\output\\inc/Can_GeneralTypes.h" 2
# 60 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2

# 1 ".\\output\\inc/McalLib.h" 1
# 62 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 63 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 1 ".\\output\\inc/Can_17_McmCan_Externals.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_Externals.h" 1
# 2 ".\\output\\inc/Can_17_McmCan_Externals.h" 2
# 64 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 261 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
typedef enum
{
  CAN_17_MCMCAN_TX_DED_BUFFER = 0,
  CAN_17_MCMCAN_TX_QUEUE = 1
} Can_17_McmCan_TxBufferType;




typedef enum
{
  CAN_17_MCMCAN_RX_DED_BUFFER = 0,
  CAN_17_MCMCAN_RX_FIFO0 = 1,
  CAN_17_MCMCAN_RX_FIFO1 = 2
} Can_17_McmCan_RxBufferType;
# 294 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
typedef struct
{

  Ifx_CAN* CanBaseAddress;

  boolean CanUsedHwCfgIndx [(4U)];
} Can_17_McmCan_McmModuleConfigType;




typedef struct
{

  uint32 CanControllerMsgRAMMap [(7U)];

  uint8 CanTxDedBuffCount;

  uint8 CanTxEvntFIFOSize;

  uint8 CanRxFIFO0Size;

  uint8 CanRxFIFO0Threshold;

  uint8 CanRxFIFO1Size;

  uint8 CanRxFIFO1Threshold;



  uint8 CanTxQueueSize;

  boolean CanTxQueueStatus;

} Can_17_McmCan_ControllerMsgRAMConfigType;




typedef struct
{

  uint32 CanControllerBaudrate;

  uint16 CanBaudrateCfg;






} Can_17_McmCan_ControllerBaudrateConfigType;
# 366 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
typedef struct
{

  uint32 CanSIDFiltEleS0;

  Can_HwHandleType CanSidHwObjId;

  uint8 HwControllerId;

  Can_17_McmCan_RxBufferType CanSidBufferType;






} Can_17_McmCan_SIDFilterConfigType;





typedef struct
{

  uint32 CanXIDFiltEleF0;

  uint32 CanXIDFiltEleF1;

  Can_HwHandleType CanXidHwObjId;

  uint8 HwControllerId;

  Can_17_McmCan_RxBufferType CanXidBufferType;






} Can_17_McmCan_XIDFilterConfigType;




typedef struct
{

  Can_HwHandleType CanTxHwObjId;

  uint8 CanTxBuffIndx;

  uint8 HwControllerId;







  uint8 CanTxHwObjIdType;

  Can_17_McmCan_TxBufferType CanTxBufferType;




} Can_17_McmCan_TxHwObjectConfigType;




typedef struct
{
  uint8 CanEventType[(4U)];
} Can_17_McmCan_EventHandlingType;
# 553 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
typedef struct
{

  Ifx_CAN_N* CanNodeAddress;

  uint32 CanNPCRValue;


  uint16 CanControllerMOMap[(6U)];

  uint16 CanDefaultBRCfgIndx;

  uint16 CanBaudrateCfgIndx;

  uint16 CanNoOfBaudrateCfg;

  uint8 CanKernelHwId;

  uint8 CanControllerHwId;

  uint8 CanControllerLogicalId;






} Can_17_McmCan_ControllerConfigType;




typedef uint8 Can_17_McmCan_ControllerIndexType;




typedef uint8 Can_17_McmCan_HthPeriodIndexType;




typedef uint8 Can_17_McmCan_HrhPeriodIndexType;






typedef struct
{

  uint8 CanHthCoreAssigned;

  uint8 CanHthLogicContIndex;

  uint16 CanHthCoreSpecIndex;
} Can_17_McmCan_HthIndexType;





typedef struct
{

  uint8 CanLCoreAssigned;

  uint8 CanLCoreSpecContIndex;

  uint8 CanLContPhyIndex;

  uint8 CanLKerPhyIndex;
} Can_17_McmCan_LogicalControllerIndexType;







typedef struct
{

  uint8 CanPLogicContIndex;

  uint8 CanPCoreSpecContIndex;

  uint8 CanPCoreAssigned;
} Can_17_McmCan_PhyControllerIndexType;






typedef struct
{

  const uint8 CanCoreContCnt;

  const Can_17_McmCan_ControllerIndexType* CanControllerIndexingPtr;

  const Can_17_McmCan_ControllerConfigType* CanControllerConfigPtr;


  const Can_17_McmCan_ControllerMsgRAMConfigType*
  CanControllerMsgRAMMapConfigPtr;

  const Can_17_McmCan_EventHandlingType* CanEventHandlingConfigPtr;

  const Can_17_McmCan_ControllerBaudrateConfigType* CanBaudrateConfigPtr;







  const Can_17_McmCan_TxHwObjectConfigType* CanTxHwObjectConfigPtr;

  const Can_17_McmCan_SIDFilterConfigType* CanSIDFilterConfigPtr;

  const Can_17_McmCan_XIDFilterConfigType* CanXIDFilterConfigPtr;
# 697 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
} Can_17_McmCan_CoreConfigType;






typedef struct
{



  const Can_17_McmCan_CoreConfigType* CanCoreConfigPtr[(0x4U)];



  const uint8 CanNoOfKernel;

  const Can_HwHandleType CanNoOfHrh;

  const Can_17_McmCan_McmModuleConfigType* CanMCMModuleConfigPtr;

  const Can_17_McmCan_PhyControllerIndexType* CanPhyControllerIndexPtr;

  const Can_17_McmCan_LogicalControllerIndexType* CanLogicalControllerIndexPtr;

  const Can_17_McmCan_HthIndexType* CanHthIndexPtr;
# 736 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
} Can_17_McmCan_ConfigType;
# 762 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
# 1 ".\\output\\inc/Can_17_McmCan_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h" 1
# 785 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Can_17_McmCan_MemMap.h" 2
# 763 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 792 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_Init
(
  const Can_17_McmCan_ConfigType* const Config
);
# 975 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern Can_ReturnType Can_17_McmCan_SetControllerMode
(
  const uint8 Controller,
  const Can_StateTransitionType Transition
);
# 1004 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_DisableControllerInterrupts
(
  const uint8 Controller
);
# 1032 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_EnableControllerInterrupts
(
  const uint8 Controller
);
# 1063 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern Can_ReturnType Can_17_McmCan_Write
(
  const Can_HwHandleType Hth,
  const Can_PduType* const PduInfo
);
# 1094 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_Write(void);
# 1122 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_Read(void);
# 1148 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_BusOff
(
  void
);
# 1177 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_Wakeup
(
  void
);
# 1205 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_MainFunction_Mode
(
  void
);
# 1283 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_IsrBusOffHandler
(
  const uint8 HwKernelId, const uint8 NodeIdIndex
);
# 1319 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_IsrReceiveHandler
(
  const uint8 HwKernelId, const uint8 NodeIdIndex
);
# 1352 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_IsrTransmitHandler
(
  const uint8 HwKernelId, const uint8 NodeIdIndex
);
# 1387 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
extern void Can_17_McmCan_IsrRxFIFOHandler
(
  const uint8 HwKernelId, const uint8 NodeIdIndex
);
# 1471 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
# 1 ".\\output\\inc/Can_17_McmCan_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h" 1
# 797 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Can_17_McmCan_MemMap.h" 2
# 1472 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2

# 1 ".\\output\\inc/Can_17_McmCan_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h" 1
# 62 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h"
# 1 ".\\output\\inc/Can_17_McmCan_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h" 1
# 588 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Can_17_McmCan_MemMap.h" 2
# 63 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h" 2

extern const Can_17_McmCan_ConfigType Can_17_McmCan_Config;
# 82 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h"
# 1 ".\\output\\inc/Can_17_McmCan_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h" 1
# 601 ".\\output\\inc/..\\..\\Integration\\mcal\\Can_17_McmCan_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Can_17_McmCan_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Can_17_McmCan_PBcfg.h" 2
# 2 ".\\output\\inc/Can_17_McmCan_PBcfg.h" 2
# 1474 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h" 2
# 2 ".\\output\\inc/Can_17_McmCan.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\mcal\\Can.h" 2
# 2 ".\\output\\inc/Can.h" 2
# 24 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_UserCfg.h" 2
# 2 ".\\output\\inc/Rte_UserCfg.h" 2
# 19 ".\\output\\inc/..\\..\\rte\\Rte.h" 2





# 1 ".\\output\\inc/Std_Types.h" 1
# 25 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
# 37 ".\\output\\inc/..\\..\\rte\\Rte.h"
# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 38 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
void Rte_Tick_Timeouts(void);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 41 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
# 132 ".\\output\\inc/..\\..\\rte\\Rte.h"
typedef uint8 Rte_TransformerErrorCode;
typedef uint8 Rte_TransformerClass;







typedef struct Rte_TransformerError {
   Rte_TransformerErrorCode errorCode;
   Rte_TransformerClass transformerClass;
} Rte_TransformerError;





typedef struct {
   uint16 clientId;
   uint16 sequenceCounter;
} Rte_Cs_TransactionHandleType;



# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 158 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
extern void Rte_memcpy(void * dst,
                                          const void * src,
                                          uint16 length);

# 1 ".\\output\\inc/Rte_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\Integration\\rte\\Rte_MemMap.h" 2
# 2 ".\\output\\inc/Rte_MemMap.h" 2
# 163 ".\\output\\inc/..\\..\\rte\\Rte.h" 2
# 172 ".\\output\\inc/..\\..\\rte\\Rte.h"
typedef sint8 Rte_Char;
typedef sint8* Rte_String;


typedef struct {
   void * in;
   void * out;
   uint16 used;
   Std_ReturnType lost_data;
} Rte_QDynType;

typedef enum {
   RTE_DRA,
   RTE_WOWP,
   RTE_TASK,
   RTE_ARE,
   RTE_EV,
   RTE_MSI
} Rte_NotificationType;

typedef struct Rte_QCmnType {
   Rte_QDynType * dynamic;
   boolean copy;
   uint16 queue_size;
   uint16 element_size;
   void * buffer_start;
   void * buffer_end;
   Rte_NotificationType notification_type;
} Rte_QCmnType;




typedef const struct Rte_QCmnType * Rte_QCmnRefType;




typedef const void * RteCalprmRefTabEntryType;
# 219 ".\\output\\inc/..\\..\\rte\\Rte.h"
typedef const void * Rte_ResourceRefType;
# 232 ".\\output\\inc/..\\..\\rte\\Rte.h"
typedef unsigned int Rte_AlarmRefType;

typedef uint16 Rte_AlarmIndexType;

typedef uint16 Rte_SeqCounterType_16;




typedef void SchM_ConfigType;
# 17 ".\\output\\inc/..\\..\\rte\\Rte_Type.h" 2
# 1 ".\\output\\inc/..\\..\\rte\\Rte_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\rte\\Rte_Cfg.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 15 ".\\output\\inc/..\\..\\rte\\Rte_Cfg.h" 2
# 18 ".\\output\\inc/..\\..\\rte\\Rte_Type.h" 2







struct Rte_CDS_ASW_BASE;
struct Rte_CDS_ASW_COM;
struct Rte_CDS_ASW_CORE0;
struct Rte_CDS_ASW_CORE1;
struct Rte_CDS_ASW_CORE2;
struct Rte_CDS_ASW_CORE3;
struct Rte_CDS_ASW_DCM;
struct Rte_CDS_ASW_DEM;
struct Rte_CDS_ASW_NM;
struct Rte_CDS_ASW_NVM;
struct Rte_CDS_ASW_WDG;
struct Rte_CDS_ASW_XCP;
struct Rte_CDS_BswM;
struct Rte_CDS_CDD_CORE0;
struct Rte_CDS_CDD_CORE1;
struct Rte_CDS_CDD_CORE2;
struct Rte_CDS_CDD_CORE3;
struct Rte_CDS_ComM;
struct Rte_CDS_Dcm;
struct Rte_CDS_Dem;
struct Rte_CDS_Det;
struct Rte_CDS_EcuM;
struct Rte_CDS_NvM;
struct Rte_CDS_RSID;
struct Rte_CDS_SWC_DEM;
struct Rte_CDS_WdgM;
struct Rte_CDS_rba_DiagLib;
# 61 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 Impl_NVM_DstPtrType_1024[1024];




typedef uint16 BswM_ModeType;

typedef uint16 BswM_UserType;
# 78 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint32 CanIf_u32_impl;

typedef uint16 CanIf_u16_impl;

typedef uint8 CanIf_u8_impl;

typedef struct {
   CanIf_u32_impl CanId;
   CanIf_u16_impl swPduHandle;
   CanIf_u8_impl SduLength;
   CanIf_u8_impl BufferIndex;
} CanIf_CanIdBuffer_struct_impl;







typedef uint8 CanIf_ControllerModeType_Enum_impl;

typedef struct {
   CanIf_u8_impl Ctrl_Pdu_mode;
} CanIf_ControllerStateType_struct_impl;

typedef CanIf_ControllerStateType_struct_impl CanIf_ControllerState_Astruct_impl[4];


typedef uint8 CanIf_NotifStatusType_Enum_impl;

typedef CanIf_NotifStatusType_Enum_impl CanIf_NotifStatusType_Aenum_impl[152];




typedef uint8 CanIf_PduModeType_Enum_impl;



typedef uint8 CanIf_Prv_BuffStatus_ten_Enum_impl;

typedef struct {
   CanIf_u8_impl last_index;
   CanIf_u8_impl bufferstatus;
} CanIf_Prv_TxBufferStatus_tst_struct_impl;

typedef CanIf_u8_impl CanIf_SDUBuffer_CanIf_Buffer_CanNodeNum_01_Tx_25_Au8_impl[80];
typedef CanIf_u8_impl CanIf_SDUBuffer_CanIf_Buffer_CanNodeNum_01_Tx_Basic_Au8_impl[240];
typedef CanIf_u8_impl CanIf_SDUBuffer_CanIf_Buffer_CanNodeNum_02_Tx_Basic_Au8_impl[80];
typedef CanIf_u8_impl CanIf_SDUBuffer_CanIf_Buffer_CanNodeNum_03_Tx_Basic_Au8_impl[80];
typedef CanIf_Prv_TxBufferStatus_tst_struct_impl CanIf_TxBufferRam_Astruct_impl[91];
typedef CanIf_CanIdBuffer_struct_impl CanIf_Tx_CanId_CanIf_Buffer_CanNodeNum_01_Tx_25_Astruct_impl[10];
typedef CanIf_CanIdBuffer_struct_impl CanIf_Tx_CanId_CanIf_Buffer_CanNodeNum_01_Tx_Basic_Astruct_impl[30];
typedef CanIf_CanIdBuffer_struct_impl CanIf_Tx_CanId_CanIf_Buffer_CanNodeNum_02_Tx_Basic_Astruct_impl[10];
typedef CanIf_CanIdBuffer_struct_impl CanIf_Tx_CanId_CanIf_Buffer_CanNodeNum_03_Tx_Basic_Astruct_impl[10];
typedef uint8 CanIf_boolean_impl;



typedef uint8 CanSM_boolean_Impl;

typedef CanSM_boolean_Impl CanSM_Aboolean_impl[4];
typedef uint8 CanSM_u8_Impl;

typedef CanSM_u8_Impl CanSM_Au8_impl[4];


typedef uint8 CanSM_BusOffRecoveryStateType_Enum_impl;



typedef uint8 CanSM_NetworkModeStateType_Enum_impl;



typedef uint16 CanSM_u16_Impl;

typedef uint8 CanSM_TimerStateType_Enum_impl;

typedef struct {
   CanSM_u16_Impl cntTick_u16;
   CanSM_TimerStateType_Enum_impl stTimer;
} CanSM_TimerConfig_tst_struct_impl;

typedef CanSM_TimerConfig_tst_struct_impl CanSM_TimerConfig_ast_Astruct_impl[4];
typedef CanSM_BusOffRecoveryStateType_Enum_impl CanSM_currBOR_State_a_Aenum_impl[4];
typedef CanSM_NetworkModeStateType_Enum_impl CanSM_currComM_Mode_a_Aenum_impl[4];
# 179 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 Com_impl_u8;

typedef Com_impl_u8 Com_SigBuf_au8_impl[960];
typedef Com_impl_u8 Com_implDataType_au8_Size8[8];


typedef boolean Com_impl_b;

typedef uint16 Com_impl_u16;

typedef uint32 Com_impl_u32;



typedef uint64 Com_impl_u64;

typedef uint32 ComM_uint32_Impl;

typedef uint16 ComM_uint16_Impl;

typedef uint8 ComM_uint8_Impl;

typedef uint8 ComM_bool_Impl;

typedef struct {
   ComM_uint32_Impl ChannelState_e;
   ComM_uint32_Impl LightTimeoutCtr_u32;
   ComM_uint16_Impl MinFullComTimeoutCtr_u16;
   ComM_uint16_Impl UserRequestCtr_u16;
   ComM_uint8_Impl ChannelMode_u8;
   ComM_uint8_Impl BusSmMode_u8;
   ComM_uint8_Impl PassiveRequestState_u8;
   ComM_uint8_Impl PncRequestCtr_u8;
   ComM_uint8_Impl InhibitionReqStatus_u8;
   ComM_bool_Impl NmNetworkRequestStatus_b;
   ComM_bool_Impl DiagnosticRequestState_b;
   ComM_bool_Impl CommunicationAllowed_b;
   ComM_bool_Impl NmBusSleepIndicationStatus_b;
   ComM_bool_Impl NmPrepareBusSleepIndicationStatus_b;
   ComM_bool_Impl NmNetworkModeStatus_b;
} ComM_ChannelStruct_Impl;

typedef ComM_ChannelStruct_Impl ComM_ChannelStruct_Array_Impl[4];
typedef uint8 ComM_InhibitionStatusType;

typedef uint8 ComM_ModeType;

typedef uint8 ComM_UserHandleType;

typedef struct {
   ComM_uint16_Impl WakeUpInhibitionCtr_u16;
   ComM_uint16_Impl LimitToNoComCtr_u16;
   ComM_uint8_Impl RequestedUserMode_u8;
   ComM_uint8_Impl IndicatedUserMode_u8;
   ComM_uint8_Impl numChannelsInFullCom_u8;
   ComM_uint8_Impl numChannelsInSilentCom_u8;
   ComM_uint8_Impl numChannelsInNoCom_u8;
} ComM_UserStruct_Impl;

typedef ComM_UserStruct_Impl ComM_UserStruct_Array_Impl[4];
# 263 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 Dcm_ConfirmationStatusType;

typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_04Type[1];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_05Type[1];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_0CType[2];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_0DType[1];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_21Type[2];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_30Type[1];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_31Type[2];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_41Type[4];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_42Type[2];
typedef uint8 Dcm_DataArrayTypeUint8_DcmDspPidData_49Type[1];
typedef uint8 Dcm_DidSupportedType;

typedef uint8 Dcm_InfoTypeServicesArray_DcmDspVehInfoData_04Type[16];
typedef uint8 Dcm_InfoTypeServicesArray_DcmDspVehInfoData_0AType[20];
typedef uint8 Dcm_InfoTypeServicesArray_VIT_06_0Type[4];
typedef uint8 Dcm_NegativeResponseCodeType;

typedef uint8 Dcm_OpStatusType;

typedef uint8 Dcm_ProtocolType;

typedef uint8 Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0PrimitivType;

typedef Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0PrimitivType Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0Type;

typedef uint8 Dcm_SecLevelType;

typedef uint8 Dcm_SesCtrlType;

typedef uint8 Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalPrimitivType;

typedef Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalPrimitivType Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalType;



typedef uint8 DemDataElememtDataSize_CS_ExtendedDataRecord_Aged_counter[1];
typedef uint8 DemDataElememtDataSize_CS_ExtendedDataRecord_Fault_pending_counter[1];
typedef uint8 DemDataElememtDataSize_PID_02[2];
typedef uint8 DemDataElememtDataSize_PID_04[1];
typedef uint8 DemDataElememtDataSize_PID_05[1];
typedef uint8 DemDataElememtDataSize_PID_0C[2];
typedef uint8 DemDataElememtDataSize_PID_0D[1];
typedef uint8 DemDataElememtDataSize_PID_42[2];
typedef uint8 DemDataElememtDataSize_PID_49[1];
typedef uint8 Dem_DTCFormatType;

typedef uint16 Dem_DTCOriginType;

typedef uint8 Dem_DTRControlType;

typedef uint8 Dem_DebounceResetStatusType;

typedef uint8 Dem_DebouncingStateType;

typedef uint32 Dem_DebugDataType;

typedef uint16 Dem_DtrIdType;

typedef uint16 Dem_EventIdType;

typedef uint8 Dem_EventStatusType;

typedef uint8 Dem_IndicatorIdType;

typedef uint8 Dem_IndicatorStatusType;

typedef uint8 Dem_InitMonitorReasonType;

typedef uint8 Dem_IumprDenomCondIdType;

typedef uint8 Dem_IumprDenomCondStatusType;

typedef uint8 Dem_MaxDataValueType[6];
typedef uint8 Dem_OperationCycleIdType;

typedef uint8 Dem_OperationCycleStateType;

typedef uint8 Dem_PID21valueType[2];
typedef uint8 Dem_PID31valueType[2];
typedef uint8 Dem_PID4DvalueType[2];
typedef uint8 Dem_PID4EvalueType[2];
typedef uint8 Dem_RatioIdType;

typedef uint8 Dem_UdsStatusByteType;
# 428 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 EcuM_BootTargetType;



typedef uint8 EcuM_ShutdownCauseType;



typedef uint16 EcuM_ShutdownModeType;

typedef uint8 EcuM_ShutdownTargetType;



typedef uint32 EcuM_TimeType;

typedef uint16 EcuM_UserType;
# 458 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint16 NvM_BlockIdType;

typedef const void * NvM_Rb_ConstVoidPtr;






typedef void * NvM_Rb_VoidPtr;
typedef uint8 NvM_RequestResultType;

typedef uint8 PduR_uint8_impl;
# 506 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 WdgM_CheckpointIdType;

typedef uint8 WdgM_SupervisedEntityIdType;



typedef uint8 WdgM_ModeType;
# 528 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
typedef uint8 WdgM_GlobalStatusType;

typedef uint8 WdgM_LocalStatusType;

typedef uint8 Array100ByteDataElement[100];
typedef boolean Boolean;
typedef float64 Double;
typedef float32 Float;
typedef uint16 UInt16;
typedef uint32 UInt32;
typedef uint8 UInt8;
typedef Std_ReturnType (*Rte_CallFP_ASW_CORE0_CPU_Utilization_CPU_Utilization) (uint32 Duration_u32, float64 * CPU_PercentUtilization, uint8 * Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE0_Core_ClientServer_Interface_Core_ClientServer) (uint16 * CoreStatus, uint16 Data2Core, uint16 * DataOfCore);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE0_GetMaxUserStackUtilization_GetMaxUserStackUtilization) (float64 * MaxUserStackUtilization);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE1_CPU_Utilization_CPU_Utilization) (uint32 Duration_u32, float64 * CPU_PercentUtilization, uint8 * Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE1_GetMaxUserStackUtilization_GetMaxUserStackUtilization) (float64 * MaxUserStackUtilization);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE2_CPU_Utilization_CPU_Utilization) (uint32 Duration_u32, float64 * CPU_PercentUtilization, uint8 * Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE2_GetMaxUserStackUtilization_GetMaxUserStackUtilization) (float64 * MaxUserStackUtilization);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE3_CPU_Utilization_CPU_Utilization) (uint32 Duration_u32, float64 * CPU_PercentUtilization, uint8 * Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_CORE3_GetMaxUserStackUtilization_GetMaxUserStackUtilization) (float64 * MaxUserStackUtilization);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_IndicatorStatus_GetIndicatorStatus) (Dem_IndicatorStatusType * IndicatorStatus);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_OperationCycle_GetCycleQualified) (boolean * CycleState);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_OperationCycle_GetOperationCycleState) (Dem_OperationCycleStateType * CycleState);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_OperationCycle_SetCycleQualified) (void);

typedef Std_ReturnType (*Rte_CallFP_ASW_DEM_OperationCycle_SetOperationCycleState) (Dem_OperationCycleStateType CycleState);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_ECUModeLimitation_LimitECUToNoComMode) (boolean Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_ECUModeLimitation_ReadInhibitCounter) (uint16 * CounterValue);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_ECUModeLimitation_ResetInhibitCounter) (void);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_ECUModeLimitation_SetECUGroupClassification) (ComM_InhibitionStatusType Status);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_UserRequest_GetCurrentComMode) (ComM_ModeType * ComMode);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_UserRequest_GetMaxComMode) (ComM_ModeType * ComMode);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_UserRequest_GetRequestedComMode) (ComM_ModeType * ComMode);

typedef Std_ReturnType (*Rte_CallFP_ASW_NM_ComM_UserRequest_RequestComMode) (ComM_ModeType ComMode);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_EraseBlock) (void);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_GetDataIndex) (uint8 * DataIndexPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_GetErrorStatus) (NvM_RequestResultType * RequestResultPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_InvalidateNvBlock) (void);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_ReadBlock) (NvM_Rb_VoidPtr DstPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_RestoreBlockDefaults) (NvM_Rb_VoidPtr DstPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_SetDataIndex) (uint8 DataIndex);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_SetRamBlockStatus) (boolean BlockChanged);

typedef Std_ReturnType (*Rte_CallFP_ASW_NVM_NvMService_WriteBlock) (NvM_Rb_ConstVoidPtr SrcPtr);

typedef Std_ReturnType (*Rte_CallFP_ASW_WDG_WdgM_LocalSupervision_CheckpointReached) (void);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_04_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_05_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_0C_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_0D_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_21_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_30_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_31_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_41_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_42_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_DataServices_DcmDspPidData_49_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dcm_InfotypeServices_DcmDspVehInfoData_04_GetInfotypeValueData) (Dcm_OpStatusType OpStatus, uint8 * DataValueBuffer, uint8 * DataValueBufferSize);

typedef Std_ReturnType (*Rte_CallFP_Dcm_InfotypeServices_DcmDspVehInfoData_0A_GetInfotypeValueData) (Dcm_OpStatusType OpStatus, uint8 * DataValueBuffer, uint8 * DataValueBufferSize);

typedef Std_ReturnType (*Rte_CallFP_Dcm_InfotypeServices_VIT_06_0_GetInfotypeValueData) (Dcm_OpStatusType OpStatus, uint8 * DataValueBuffer, uint8 * DataValueBufferSize);

typedef Std_ReturnType (*Rte_CallFP_Dcm_RoutineServices_DcmDspRoutine_0203_RequestResults) (Dcm_OpStatusType OpStatus, Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0Type * DataOut_DcmDspRequestRoutineResultsOutSignal_0, Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Rte_CallFP_Dcm_RoutineServices_DcmDspRoutine_0203_Start) (Dcm_OpStatusType OpStatus, Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalType * DataOut_DcmDspStartRoutineOutSignal, Dcm_NegativeResponseCodeType * ErrorCode);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_02_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_04_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_05_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_0C_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_0D_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_42_ReadData) (uint8 * Data);

typedef Std_ReturnType (*Rte_CallFP_Dem_DataServices_PID_49_ReadData) (uint8 * Data);

typedef void (*Rte_IrvReadFP_ASW_CORE0_RE_CORE0_SWC_100ms_Explicit_IRV_1) (uint8 * data);

typedef void (*Rte_IrvWriteFP_ASW_CORE0_RE_CORE0_SWC_10ms_Explicit_IRV_1) (const uint8 * data);

typedef Impl_NVM_DstPtrType_1024 Rte_PimType_ASW_NVM_ASW_NVM_BlockNative_1024_Type;
typedef Rte_PimType_ASW_NVM_ASW_NVM_BlockNative_1024_Type * (*Rte_PimFP_ASW_NVM_ASW_NVM_BlockNative_1024_1) (void);

typedef Impl_NVM_DstPtrType_1024 Rte_PimType_ASW_NVM_ASW_NVM_BlockRedundant_1024_Type;
typedef Rte_PimType_ASW_NVM_ASW_NVM_BlockRedundant_1024_Type * (*Rte_PimFP_ASW_NVM_ASW_NVM_BlockNative_1024_2) (void);

typedef Std_ReturnType (*Rte_ReadFP_ASW_CORE0_DataTransfer100Byte_Core0Core1_Data_ptr) (uint8 * data);

typedef Std_ReturnType (*Rte_ReadFP_ASW_CORE1_DataTransfer100Byte_Core0Core1_Data_ptr) (uint8 * data);

typedef Std_ReturnType (*Rte_ReadFP_BswM_ETAS_SenderReceiverInterface_uint8_uint8) (uint8 * data);

typedef Std_ReturnType (*Rte_ReadFP_BswM_ModeRequestInterface_AppMode) (uint8 * data);

typedef const struct Rte_CDS_ASW_BASE * Rte_SelfType_ASW_BASE;

typedef const struct Rte_CDS_ASW_COM * Rte_SelfType_ASW_COM;

typedef const struct Rte_CDS_ASW_CORE0 * Rte_SelfType_ASW_CORE0;

typedef const struct Rte_CDS_ASW_CORE1 * Rte_SelfType_ASW_CORE1;

typedef const struct Rte_CDS_ASW_CORE2 * Rte_SelfType_ASW_CORE2;

typedef const struct Rte_CDS_ASW_CORE3 * Rte_SelfType_ASW_CORE3;

typedef const struct Rte_CDS_ASW_DCM * Rte_SelfType_ASW_DCM;

typedef const struct Rte_CDS_ASW_DEM * Rte_SelfType_ASW_DEM;

typedef const struct Rte_CDS_ASW_NM * Rte_SelfType_ASW_NM;

typedef const struct Rte_CDS_ASW_NVM * Rte_SelfType_ASW_NVM;

typedef const struct Rte_CDS_ASW_WDG * Rte_SelfType_ASW_WDG;

typedef const struct Rte_CDS_ASW_XCP * Rte_SelfType_ASW_XCP;

typedef const struct Rte_CDS_BswM * Rte_SelfType_BswM;

typedef const struct Rte_CDS_CDD_CORE0 * Rte_SelfType_CDD_CORE0;

typedef const struct Rte_CDS_CDD_CORE1 * Rte_SelfType_CDD_CORE1;

typedef const struct Rte_CDS_CDD_CORE2 * Rte_SelfType_CDD_CORE2;

typedef const struct Rte_CDS_CDD_CORE3 * Rte_SelfType_CDD_CORE3;

typedef const struct Rte_CDS_ComM * Rte_SelfType_ComM;

typedef const struct Rte_CDS_Dcm * Rte_SelfType_Dcm;

typedef const struct Rte_CDS_Dem * Rte_SelfType_Dem;

typedef const struct Rte_CDS_Det * Rte_SelfType_Det;

typedef const struct Rte_CDS_EcuM * Rte_SelfType_EcuM;

typedef const struct Rte_CDS_NvM * Rte_SelfType_NvM;

typedef const struct Rte_CDS_RSID * Rte_SelfType_RSID;

typedef const struct Rte_CDS_SWC_DEM * Rte_SelfType_SWC_DEM;

typedef const struct Rte_CDS_WdgM * Rte_SelfType_WdgM;

typedef const struct Rte_CDS_rba_DiagLib * Rte_SelfType_rba_DiagLib;

typedef Std_ReturnType (*Rte_SwitchAckFP_WdgM_WdgM_GlobalMode_currentMode) (void);

typedef Std_ReturnType (*Rte_SwitchAckFP_WdgM_WdgM_LocalMode_currentMode) (void);

typedef Std_ReturnType (*Rte_SwitchFP_ComM_ComM_CurrentMode_currentMode) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_Dcm_DcmCommunicationControl_Can_Network_CanNodeNum_01_MDGP_DcmCommunicationControl_Can_Network_CanNodeNum_01) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_Dcm_DcmControlDTCSetting_MDGP_DcmControlDTCSetting) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_Dcm_DcmDiagnosticSessionControl_MDGP_DcmDiagnosticSessionControl) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_Dcm_DcmEcuReset_MDGP_DcmEcuReset) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_WdgM_WdgM_GlobalMode_currentMode) (uint8 data);

typedef Std_ReturnType (*Rte_SwitchFP_WdgM_WdgM_LocalMode_currentMode) (uint8 data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_BASE_ModeRequestInterface_AppMode) (uint8 data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_CORE0_DataTransfer100Byte_Core0Core1_Data_ptr) (const uint8 * data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_CORE0_ModeRequestInterface_AppMode) (uint8 data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_CORE1_DataTransfer100Byte_Core0Core1_Data_ptr) (const uint8 * data);

typedef Std_ReturnType (*Rte_WriteFP_ASW_NM_ETAS_SenderReceiverInterface_uint8_uint8) (uint8 data);

# 1 ".\\output\\inc/..\\..\\rte\\iocNeeds.h" 1
# 752 ".\\output\\inc/..\\..\\rte\\Rte_Type.h" 2
# 17 ".\\output\\inc/..\\..\\rte\\Rte_Det_Type.h" 2
# 2 ".\\output\\inc/Rte_Det_Type.h" 2
# 18 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h" 2
# 65 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h"
typedef uint16 Det_BufferIndexType;






typedef struct
{
    uint8 Dummy;
} Det_ConfigType;





typedef struct
{
    uint16 ModuleId;
    uint8 InstanceId;
    uint8 ApiId;
    uint8 ErrorId;
} Det_ErrorEntryBufferType;
# 28 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 2
# 1 ".\\output\\inc/Det_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\Det_Cfg.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\Det\\Det_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\Det_Cfg_Version.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\Det\\Det_Cfg.h" 2
# 2 ".\\output\\inc/Det_Cfg.h" 2
# 29 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 2







# 1 ".\\output\\inc/Det_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h" 1
# 78 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 79 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h" 2
# 2 ".\\output\\inc/Det_MemMap.h" 2
# 37 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 2
# 75 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
void Det_Init(const Det_ConfigType* ConfigPtr);
# 85 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
void Det_Start(void);
# 112 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
Std_ReturnType Det_ReportError(uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId);
# 126 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
Std_ReturnType Det_ReportRuntimeError(uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 ErrorId);
# 142 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
Std_ReturnType Det_ReportTransientFault(uint16 ModuleId, uint8 InstanceId, uint8 ApiId, uint8 FaultId);



# 1 ".\\output\\inc/Det_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h" 1
# 90 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 91 ".\\output\\inc/..\\..\\bsw\\Det\\integration\\Det_MemMap.h" 2
# 2 ".\\output\\inc/Det_MemMap.h" 2
# 147 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h" 2
# 2 ".\\output\\inc/Det.h" 2
# 63 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2
# 430 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section "InitData.LmuNC.32bit" aw 4
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 431 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2





static uint32 Smu_InitStatus = (0x0U);



static uint32 Smu_ErrPinStatus = (0x1U);



static uint32 Smu_LockState = (0x1U);



static uint32 Smu_DriverState = (0x1U);




static uint32 Smu_LockAddress = 0U;



static uint32 Smu_CmdLockAddress = 0U;






# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 62 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 465 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2







typedef struct
{
  volatile Ifx_SMU_AGCF CfgReg[((uint32)(36U))];
  volatile Ifx_SMU_AGFSP FSPCfgReg[((uint32)(12U))];
  volatile Ifx_SMU_AG AGStatusReg[((uint32)(12U))];
  uint32 Reserved1[4];
  volatile Ifx_SMU_AD ADStatusReg[((uint32)(12U))];
} SMU_CoreAlarmGroupRegMapType;
# 495 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static Std_ReturnType Smu_lInitFailedCheck(const uint8 ServiceId);

static Std_ReturnType Smu_lAlarmValidCheck(const Smu_AlarmGroupId AlarmGroup,
                                           const Smu_AlarmIdType AlarmPos,
                                           const uint8 ServiceId);

static void Smu_lReportError(const uint8 ApiId,const uint8 ErrorId);
# 519 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static void Smu_lClearAllAlarms(void);

static void Smu_lClrAlarmStatus(const Smu_AlarmGroupId AlarmGroup,
                                          const Smu_AlarmIdType AlarmPos);

static void Smu_lSetAlarmStatus(const Smu_AlarmGroupId AlarmGroup,
                                 const Smu_AlarmIdType AlarmPos);

static Std_ReturnType Smu_lSetAlmAction(const Smu_AlarmGroupId AlarmGroup,
                               const Smu_AlarmIdType AlarmPos,
                               const Smu_CoreAlarmActionType AlarmAction,
                               const Smu_FSPActionType FSPAction);

static Std_ReturnType Smu_lGetAlmAction(const Smu_AlarmGroupId AlarmGroup,
                              const Smu_AlarmIdType AlarmPos,
                              Smu_CoreAlarmActionType * const IntAlarmAction,
                              Smu_FSPActionType * const FSPAction);







# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 112 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 544 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2
# 573 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static Std_ReturnType Smu_lInitFailedCheck(const uint8 ServiceId)
{



  Std_ReturnType RetVal = (Std_ReturnType)0x01u;





  if((0x0U) == Smu_InitStatus)
  {




    Smu_lReportError(ServiceId, ((uint8)0x01U));
  }
  else
  {




    if((0x1U) == Smu_DriverState)
    {




      Smu_lReportError(ServiceId, ((uint8)0x06U));
    }
    else
    {



      RetVal = (Std_ReturnType)0x00u;
    }
  }



  return RetVal;
}
# 650 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static Std_ReturnType Smu_lAlarmValidCheck(const Smu_AlarmGroupId AlarmGroup,
                                             const Smu_AlarmIdType AlarmPos,
                                             const uint8 ServiceId)
{



  Std_ReturnType RetVal = (Std_ReturnType)0x01u;
  uint32 AlarmRes;


  uint32 CoreAlarmIdReservedType[((uint32)(12U))] =
  {
    (0x1c07ff7U),
    (0x1c07ff7U),
    (0x1c07ff2U),
    (0x0U),
    (0x0U),
    (0x0U),
    (0x3bffdf7U),
    (0xffd3f007U),
    (0xfeff1fffU),
    (0x3802bU),
    (0x77ffffU),
    (0x373fU),
  };





  if((uint32)AlarmPos <= (31U))
  {




    if((uint32)AlarmGroup < ((uint32)(12U)))
    {




      AlarmRes = (uint32)CoreAlarmIdReservedType[AlarmGroup] &
                 ((uint32)(0x1U) << (uint32)AlarmPos);

      AlarmRes = AlarmRes >> (uint32)AlarmPos;





      if(AlarmRes == (0x0U))
      {



        Smu_lReportError(ServiceId, ((uint8)0x05U));
      }
      else
      {



        RetVal = 0x00u;
      }
    }



    else if(((uint32)AlarmGroup <= ((uint32)(21U))) &&
            ((uint32)AlarmGroup >= ((uint32)(20U))))
    {
# 741 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      uint32 StdbyAlarmIdReservedType[((uint32)(2U))] =
      {
        (0xfff0U),
        (0x1ffbfU)
      };




      if(AlarmGroup == SMU_ALARM_GROUP20)
      {



        AlarmRes = (uint32)StdbyAlarmIdReservedType[0] &
                   ((uint32)(0x1U) << (uint32)AlarmPos);
      }
      else
      {



        AlarmRes = (uint32)StdbyAlarmIdReservedType[1] &
                   ((uint32)(0x1U) << (uint32)AlarmPos);

      }
      AlarmRes = AlarmRes >> (uint32)AlarmPos;




      if(AlarmRes == (0x0U))
      {




        Smu_lReportError(ServiceId, ((uint8)0x05U));

      }
      else
      {



        RetVal = 0x00u;
      }

    }
    else
    {




      Smu_lReportError(ServiceId, ((uint8)0x05U));
    }
  }
  else
  {




    Smu_lReportError(ServiceId, ((uint8)0x05U));
  }



  return RetVal;
}
# 835 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static void Smu_lReportError(const uint8 ApiId,
                             const uint8 ErrorId)
{
# 848 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  (void)Det_ReportError(((uint16)255U), ((uint8)0U),
                  ApiId, ErrorId);
# 862 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
}
# 942 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static void Smu_lClearAllAlarms(void)
{
  uint8 AlarmGroupIndex;


  AlarmGroupIndex = (uint8)SMU_ALARM_GROUP0;



  do
  {




    ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)((uint32)((Smu_CoreCommandType)5U)));
# 967 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->AGStatusReg[AlarmGroupIndex],(uint32)(0xFFFFFFFFU))

                               ;
    AlarmGroupIndex++;

  }



  while(AlarmGroupIndex < ((uint32)(12U)));
# 986 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).CMD_STDBY,((0x40000000U) | (0x8U) | (*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U))
                                                                      ;




  Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AG_STDBY0,(uint32)(0xFFFFFFFFU))
                             ;




  Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).CMD_STDBY,((0x40000000U) | (0x8U) | (*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U))
                                                                      ;




  Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AG_STDBY1,(uint32)(0xFFFFFFFFU))
                             ;


}
# 1034 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static void Smu_lClrAlarmStatus(const Smu_AlarmGroupId AlarmGroup,
                                const Smu_AlarmIdType AlarmPos)
{




  if((uint8)AlarmGroup < ((uint32)(12U)))
  {




    ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)((uint32)((Smu_CoreCommandType)5U)));






    Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->AGStatusReg[AlarmGroup],(uint32)((uint32)(1U) << AlarmPos))

                                                     ;
  }
# 1067 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  else if((uint8)AlarmGroup == (uint8)SMU_ALARM_GROUP20)
  {




    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).CMD_STDBY,((0x40000000U) | (0x8U) | (*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U))
                                                                        ;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AG_STDBY0,(uint32)((uint32)(1U) << AlarmPos))
                                                                            ;
  }

  else
  {
# 1096 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    {




      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).CMD_STDBY,((0x40000000U) | (0x8U) | (*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U))
                                                                          ;




      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AG_STDBY1,(uint32)((uint32)(1U) << AlarmPos))
                                                                              ;
    }
  }

}
# 1138 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static void Smu_lSetAlarmStatus(const Smu_AlarmGroupId AlarmGroup,
                                const Smu_AlarmIdType AlarmPos)
{
  Smu_CoreStateType SmuState;




  SmuState = (uint8)((*(volatile Ifx_SMU_DBG*)0xF0036838u).B.SSM);




  if(((Smu_CoreStateType)0U) == SmuState)
  {






    Mcal_WriteSafetyEndInitProtReg((uint32*) &((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->AGStatusReg[AlarmGroup],((uint32)(1U) << AlarmPos))

                                             ;
  }




  else if ((((Smu_CoreStateType)1U) == SmuState) || (((Smu_CoreStateType)2U) == SmuState))
  {





    if((uint8)AlarmGroup == (10U))
    {




      ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)(((uint32)((Smu_CoreCommandType)6U) | ((uint32)AlarmPos << (4U)))))
                                                                          ;
    }
  }
  else
  {

  }
}
# 1218 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static Std_ReturnType Smu_lSetAlmAction(const Smu_AlarmGroupId AlarmGroup,
                               const Smu_AlarmIdType AlarmPos,
                               const Smu_CoreAlarmActionType AlarmAction,
                               const Smu_FSPActionType FSPAction)
{
  uint8 AlarmGroupCFIndex;
  uint32 AlarmGroupCF2;
  uint32 AlarmGroupCF1;
  uint32 AlarmGroupCF0;
  uint32 AlarmGroupCFMask;
  Std_ReturnType RetVal = 0x01u;


  AlarmGroupCFIndex = (uint8)((uint8)AlarmGroup * (3U));


  AlarmGroupCFMask = ~((uint32)(0x1U) << AlarmPos);





  SchM_Enter_Smu_DriverAccess();




  Mcal_GetSpinlock(&Smu_LockAddress, (8192U));




  if((uint8)AlarmGroup < ((uint32)(12U)))
  {






    AlarmGroupCF0 = (uint32)(((uint32)AlarmAction &
                    (uint32)(0x1U))<< (uint32)AlarmPos);


    AlarmGroupCF1 = (uint32)((uint32)(((uint32)AlarmAction &
                    (uint32)(0x2U)) >> (uint32)(1U))
                    << (uint32)AlarmPos);


    AlarmGroupCF2 = (uint32)((uint32)(((uint32)AlarmAction &
                    (uint32)(0x4U)) >> (uint32)(2U))
                    << (uint32)AlarmPos);





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(uint32)(((*(volatile Ifx_SMU_KEYS*)0xF0036834u).U & (uint32)(0xFFFFFF00U)) | ((uint32)0xBCU)))
                                   ;






    Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg[AlarmGroupCFIndex].U,(((((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg[AlarmGroupCFIndex].U)& (uint32)AlarmGroupCFMask) | (uint32)AlarmGroupCF0))


                                                             ;






    Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg [(AlarmGroupCFIndex + (1U))].U,(((((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg [(AlarmGroupCFIndex + (1U))].U)& (uint32)AlarmGroupCFMask) | (uint32)AlarmGroupCF1))




                                                              ;






    Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg [(AlarmGroupCFIndex + (2U))].U,(((((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg [(AlarmGroupCFIndex + (2U))].U) & (uint32)AlarmGroupCFMask) | (uint32)AlarmGroupCF2 ))




                                                               ;






    Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->FSPCfgReg[AlarmGroup].U,(((((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->FSPCfgReg[AlarmGroup].U)& (uint32)AlarmGroupCFMask) | (FSPAction << AlarmPos)))


                                                               ;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(uint32)(0x0U))
                                     ;

    RetVal = 0x00u;
  }







  else if(AlarmGroup == SMU_ALARM_GROUP20)
  {





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AGFSP_STDBY0,(((*(volatile Ifx_PMS_AGFSP_STDBY0*)0xF02481A4u).U & (uint32)AlarmGroupCFMask) | (0x40000000U) | (FSPAction << AlarmPos)))


                                                    ;

    RetVal = 0x00u;
  }
  else
  {
# 1364 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    {






      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AGFSP_STDBY1,(((*(volatile Ifx_PMS_AGFSP_STDBY1*)0xF02481A8u).U & (uint32)AlarmGroupCFMask) | (0x40000000U) | (FSPAction << AlarmPos)))


                                                      ;

      RetVal = 0x00u;
    }
  }





  Mcal_ReleaseSpinlock(&Smu_LockAddress);



  SchM_Exit_Smu_DriverAccess();



  return RetVal;
}
# 1422 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
static Std_ReturnType Smu_lGetAlmAction(const Smu_AlarmGroupId AlarmGroup,
                              const Smu_AlarmIdType AlarmPos,
                              Smu_CoreAlarmActionType * const IntAlarmAction,
                              Smu_FSPActionType * const FSPAction)
{
  Std_ReturnType RetVal = (Std_ReturnType)0x01u;
  uint32 AlarmGroupCF2;
  uint32 AlarmGroupCF1;
  uint32 AlarmGroupCF0;
  uint32 AlarmGroupCFIndex;
  Smu_CoreAlarmActionType IntActionRes;
  Smu_FSPActionType FSPActionRes;




  if((uint8)AlarmGroup < ((uint32)(12U)))
  {




    AlarmGroupCFIndex = (uint32)((uint32)AlarmGroup * (3U));
# 1454 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    AlarmGroupCF0 = (uint32)(((uint32)
                    (((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg[AlarmGroupCFIndex].U)>>
                    (uint32)AlarmPos) & (uint32)(0x1U));






    AlarmGroupCF1 = ((uint32)((uint32)((uint32)(((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg
                    [(AlarmGroupCFIndex + (uint32)(1U))].U) >>
                    (uint32)AlarmPos) << (uint32)(1U)) &
                    (uint32)(0x2U));






    AlarmGroupCF2 = ((uint32)((uint32)((uint32)(((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg
                    [(AlarmGroupCFIndex + (uint32)(2U))].U) >>
                    (uint32)AlarmPos) << (uint32)(2U)) &
                    (uint32)(0x4U));





    *IntAlarmAction = (Smu_CoreAlarmActionType)(AlarmGroupCF0 |
                      AlarmGroupCF1 | AlarmGroupCF2);






    *FSPAction = (Smu_FSPActionType)
                 (((((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->FSPCfgReg[(uint32)AlarmGroup].U)
                   >> (uint32)AlarmPos)& ((uint8)0x1U));

  }







  else if(AlarmGroup == SMU_ALARM_GROUP20)
  {



    *IntAlarmAction = ((Smu_CoreAlarmActionType)0U);



    *FSPAction = (Smu_FSPActionType)((((*(volatile Ifx_PMS_AGFSP_STDBY0*)0xF02481A4u).U) >>
                                      (uint32)AlarmPos)& ((uint8)0x1U));
  }
  else
  {



    if(AlarmGroup == SMU_ALARM_GROUP21)
    {



      *IntAlarmAction = ((Smu_CoreAlarmActionType)0U);



      *FSPAction = (Smu_FSPActionType)((((*(volatile Ifx_PMS_AGFSP_STDBY1*)0xF02481A8u).U) >>
                                        (uint32)AlarmPos)& ((uint8)0x1U));
    }
  }


  IntActionRes = *IntAlarmAction;


  FSPActionRes = *FSPAction;




  if(((IntActionRes == ((Smu_CoreAlarmActionType)0U)) ||
      (IntActionRes == ((Smu_CoreAlarmActionType)2U)) ||
      (IntActionRes == ((Smu_CoreAlarmActionType)3U)) ||
      (IntActionRes == ((Smu_CoreAlarmActionType)4U)) ||
      (IntActionRes == ((Smu_CoreAlarmActionType)5U)) ||
      (IntActionRes == ((Smu_CoreAlarmActionType)6U)) ||
      (IntActionRes == ((Smu_CoreAlarmActionType)7U))) &&
      (FSPActionRes <= (1U)))
  {



    RetVal = (Std_ReturnType)0x00u;
  }
  else
  {



    RetVal = 0x01u;
  }



  return RetVal;
}
# 1603 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_Init
(
  const Smu_ConfigType* const ConfigPtr
)
{
  Std_ReturnType RetVal = (Std_ReturnType)0x01u;
  uint32 Index;
  uint32 CurrentCoreID;
# 1621 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  if( ConfigPtr == ((void *)0))
  {




    Smu_lReportError(((uint8)0xA8U), ((uint8)0x03U));
  }
  else

  {




    CurrentCoreID = Mcal_GetCpuIndex();




    if((0U) == CurrentCoreID)
    {
# 1654 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      if((0x1U) == Smu_InitStatus)
      {




        Smu_lReportError(((uint8)0xA8U), ((uint8)0x02U));
      }




      else if(((uint32)((*(volatile Ifx_SMU_KEYS*)0xF0036834u).U & (0xFF00U)) >>
               (8U)) == (uint32)(0xFFU))
      {




        Smu_LockState = (0x1U);




        Smu_lReportError(((uint8)0xA8U), ((uint8)0x09U));



        RetVal = 0x01u;
      }
      else
      {



        RetVal = 0x00u;
      }




      if(RetVal == (Std_ReturnType)0x00u)

      {




        Smu_lClearAllAlarms();





        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(((*(volatile Ifx_SMU_KEYS*)0xF0036834u).U & (uint32)(0xFFFFFF00U)) | ((uint32)0xBCU)))
                                                 ;




        Mcal_WriteSafetyEndInitProtRegMask(&((*(Ifx_SMU*)0xF0036800u)).FSP,((0x003FFF00U) & (uint32)((uint32)(0x3u) << (5u))),(uint32)((uint32)(0x3u) << (5u)))

                         ;
# 1732 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
        Mcal_WriteSafetyEndInitProtRegMask(&((*(Ifx_SMU*)0xF0036800u)).FSP,((ConfigPtr->FSPCfg) & (uint32)(~(uint32)((uint32)(0x3u) << (5u)))),(uint32)(~(uint32)((uint32)(0x3u) << (5u))))

                        ;




        Mcal_WriteSafetyEndInitProtRegMask(&((*(Ifx_SMU*)0xF0036800u)).FSP,((ConfigPtr->FSPCfg) & (uint32)((uint32)(0x3u) << (5u))),(uint32)((uint32)(0x3u) << (5u)))

                         ;



        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).AGC,ConfigPtr->AGCCfg)
                                            ;



        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTC,ConfigPtr->RTCCfg)
                                               ;



        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTAC00,ConfigPtr->RTAC00Cfg)
                                                  ;



        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTAC01,ConfigPtr->RTAC01Cfg)
                                                     ;



        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTAC10,ConfigPtr->RTAC10Cfg)
                                                  ;



        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTAC11,ConfigPtr->RTAC11Cfg)
                                                     ;







        for(Index = 0U; Index < ((uint32)(36U)); Index++)
        {






          Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg[Index],ConfigPtr->AlarmCoreConfig[Index])

                                                ;
        }





        for(Index = 0U; Index < ((uint32)(12U)); Index++)
        {





          Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->FSPCfgReg[Index],ConfigPtr->AlarmCoreFspConfig[Index])

                                                   ;
        }



        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).CMD_STDBY,((0x40000000U) | ConfigPtr->AlarmStdbyCfg))

                                                              ;



        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AGFSP_STDBY0,((0x40000000U) | ConfigPtr->AlarmStdbyFspConfig[0]))

                                                                          ;



        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AGFSP_STDBY1,((0x40000000U) | ConfigPtr->AlarmStdbyFspConfig[1]))

                                                                          ;





        Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(0x0U))
                                                   ;
# 1842 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
        Smu_ErrPinStatus = (0x0U);





        Smu_DriverState = (0x0U);





        Smu_LockState = (0x0U);





        Smu_InitStatus = (0x1U);




        RetVal = 0x00u;
      }
    }

    else
    {



      RetVal = 0x01u;
# 1886 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      Smu_lReportError(((uint8)0xA8U), ((uint8)0x68U));

    }
  }



  return RetVal;
}
# 1925 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_DeInit(void)
{
  Std_ReturnType RetVal = 0x01u;
  uint32 Index;
  uint32 CurrentCoreID;





  CurrentCoreID = Mcal_GetCpuIndex();





  if((0U) == CurrentCoreID)
  {
# 1954 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    if((0x0U) == Smu_InitStatus)
    {



      Smu_lReportError(((uint8)0xAAU), ((uint8)0x01U));
    }




    else if(Smu_LockState == (0x1U))
    {




      Smu_lReportError(((uint8)0xAAU), ((uint8)0x09U));
    }



    else
    {



      RetVal = 0x00u;
    }




    if(RetVal == 0x00u)

    {
# 1999 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      Smu_InitStatus = (0x0U);






      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(((*(volatile Ifx_SMU_KEYS*)0xF0036834u).U & (uint32)(0xFFFFFF00U)) | ((uint32)0xBCU)))
                                               ;
# 2016 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      for(Index = 0U; Index < ((uint32)(36U)); Index++)
      {
# 2026 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
        if((Index == (24U)) ||
              (Index == (26U)))
        {






          Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg[Index],(0x0001FC00U))

                                       ;

        }




        else if((Index == (31U)) ||
                (Index == (32U)))
        {






          Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg[Index],(0x00030000U))

                                        ;
        }




        else
        {






          Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg[Index],(0x0U))

                                        ;
        }
      }






      for(Index = 0U; Index < ((uint32)(12U)); Index++)
      {



        if(Index == (uint32)SMU_ALARM_GROUP10)
        {






          Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->FSPCfgReg[Index],(0x00030000U))

                                        ;

        }



        else
        {






          Mcal_WriteSafetyEndInitProtReg(&((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->FSPCfgReg[Index],(0x0U))

                                      ;
        }
      }



      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AGFSP_STDBY0,((0x40000000U) | (0x0U)))

                                                                ;



      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).AGFSP_STDBY1,((0x40000000U) | (0x0U)))

                                                                ;






      Mcal_WriteSafetyEndInitProtRegMask(&((*(Ifx_SMU*)0xF0036800u)).FSP,((0x003FFF00U) & (uint32)((uint32)(0x3u) << (5u))),(uint32)((uint32)(0x3u) << (5u)))

                           ;
# 2151 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      Mcal_WriteSafetyEndInitProtRegMask(&((*(Ifx_SMU*)0xF0036800u)).FSP,((0x003FFF00U) & (uint32)(~(uint32)((uint32)(0x3u) << (5u)))),(uint32)(~(uint32)((uint32)(0x3u) << (5u))))

                          ;



      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).AGC,(0x0U))
                                             ;



      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTC,(0x003FFF03U))
                                             ;



      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTAC00,(0x00A80108U))
                                                   ;



      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTAC01,(0x00C800B8U))
                                                   ;



      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTAC10,(0x00E800D8U))
                                                   ;



      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTAC11,(0x00F800F8U))
                                                   ;


      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).CMD_STDBY,((0x40000000U) | (0x0U)))
                                                                              ;






      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(0x0U))
                                                 ;




      Smu_lClearAllAlarms();
# 2211 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      Smu_ErrPinStatus = (0x0U);





      Smu_DriverState = (0x0U);





      Smu_LockState = (0x0U);




      RetVal = 0x00u;
    }
  }
  else
  {



    RetVal = 0x01u;
# 2246 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    Smu_lReportError(((uint8)0xAAU), ((uint8)0x68U));


  }



  return RetVal;
}
# 2284 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_ClearAlarmStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos
)
{
  Std_ReturnType RetVal = 0x01u;
  uint32 AlarmStatusReadback = 0xFFFFFFFFU;
  uint32 Timeout = 0U;
# 2303 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xADU));




  if(RetVal == 0x00u)
  {






    RetVal = Smu_lAlarmValidCheck(AlarmGroup, AlarmPos,
                                  ((uint8)0xADU));
  }




  if(RetVal == 0x00u)

  {




    SchM_Enter_Smu_DriverAccess();




    Mcal_GetSpinlock(&Smu_LockAddress, (8192U));




    Smu_lClrAlarmStatus(AlarmGroup, AlarmPos);





    do
    {
# 2358 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      if((uint32)AlarmGroup < ((uint32)(12U)))

      {






        AlarmStatusReadback = (((uint32)
              (((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->AGStatusReg[AlarmGroup].U) >> AlarmPos)
             & (1U));

      }
# 2380 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      else if(AlarmGroup == SMU_ALARM_GROUP20)
      {



        AlarmStatusReadback = (uint32)((*(volatile Ifx_PMS_AG_STDBY0*)0xF0248188u).U >> AlarmPos)
                              & (1U);
      }
      else
      {
# 2401 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
        {



          AlarmStatusReadback = (uint32)((*(volatile Ifx_PMS_AG_STDBY1*)0xF024818Cu).U >> AlarmPos)
                                & (1U);
        }
      }

      Timeout++;
    }



    while((Timeout < (5U)) &&
          (AlarmStatusReadback != (0x0U)));





    Mcal_ReleaseSpinlock(&Smu_LockAddress);



    SchM_Exit_Smu_DriverAccess();





    if(AlarmStatusReadback != (0x0U))
    {



      RetVal = 0x01u;
# 2452 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
    else
    {



      RetVal = 0x00u;
# 2472 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
  }



  return RetVal;
}
# 2512 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_SetAlarmStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos
)
{
  Std_ReturnType RetVal = 0x01u;
  uint32 Timeout = 0U;
  uint32 AlarmStatusReadback = 0xFFFFFFFFU;







  uint32 AlarmRes = 0U;
  uint32 CoreAlarmIdReservedType[((uint32)(12U))] =
  {
    (0x1c07ff7U),
    (0x1c07ff7U),
    (0x1c07ff2U),
    (0x0U),
    (0x0U),
    (0x0U),
    (0x3bffdf7U),
    (0xffd3f007U),
    (0xfeff1fffU),
    (0x3802bU),
    (0x77ffffU),
    (0x373fU),
  };





  RetVal = Smu_lInitFailedCheck(((uint8)0xAEU));




  if(RetVal == 0x00u)
  {



    if((uint32)AlarmPos <= (31U))
    {



      if((uint32)AlarmGroup < ((uint32)(12U)))
      {
        AlarmRes = (CoreAlarmIdReservedType[AlarmGroup]) &
                   ((uint32)(0x1U) << (uint32)AlarmPos);

        AlarmRes = AlarmRes >> (uint32)AlarmPos;



        if(AlarmRes == (0x0U))
        {



          Smu_lReportError(((uint8)0xAEU), ((uint8)0x05U));
          RetVal = 0x01u;
        }
      }
      else
      {



        Smu_lReportError(((uint8)0xAEU), ((uint8)0x05U));
        RetVal = 0x01u;
      }
    }
    else
    {




      Smu_lReportError(((uint8)0xAEU), ((uint8)0x05U));
      RetVal = 0x01u;
    }
  }




  if(RetVal == 0x00u)

  {




    SchM_Enter_Smu_DriverAccess();




    Mcal_GetSpinlock(&Smu_LockAddress, (8192U));




    Smu_lSetAlarmStatus(AlarmGroup, AlarmPos);





    do
    {






      AlarmStatusReadback = (((uint32)
                        (((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->AGStatusReg[AlarmGroup].U) >>
                        AlarmPos)& (1U));
      Timeout++;

    }



    while((Timeout < (5U)) &&
          (AlarmStatusReadback != (0x1U)));





    Mcal_ReleaseSpinlock(&Smu_LockAddress);



    SchM_Exit_Smu_DriverAccess();





    if(AlarmStatusReadback != (0x1U))
    {




      RetVal = 0x01u;
# 2682 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
    else
    {



      RetVal = 0x00u;
# 2702 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
  }



  return RetVal;
}
# 2736 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_GetAlarmStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  uint32* const AlarmStatus
)
{
  Std_ReturnType RetVal = 0x01u;
# 2752 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  if(AlarmStatus == ((void *)0))
  {



    Smu_lReportError(((uint8)0xAFU), ((uint8)0x04U));
  }



  else if((0x1U) == Smu_InitStatus)
  {



    if(((uint32)AlarmGroup <= ((uint32)(21U))) &&
        ((uint32)AlarmGroup >= ((uint32)(20U))))
    {
# 2783 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      RetVal = 0x00u;

    }



    else if((uint32)AlarmGroup < ((uint32)(12U)))
    {



      RetVal = 0x00u;
    }
    else
    {



      Smu_lReportError(((uint8)0xAFU), ((uint8)0x05U));
    }
  }
  else
  {



    Smu_lReportError(((uint8)0xAFU), ((uint8)0x01U));
  }



  if(RetVal == (Std_ReturnType)0x00u)

  {







    if(AlarmGroup == SMU_ALARM_GROUP20)
    {



      *AlarmStatus = (uint32)((*(volatile Ifx_PMS_AG_STDBY0*)0xF0248188u).U & (0xfff0U));
      RetVal = 0x00u;
    }



    else if(AlarmGroup == SMU_ALARM_GROUP21)
    {



      *AlarmStatus = (uint32)((*(volatile Ifx_PMS_AG_STDBY1*)0xF024818Cu).U);
      RetVal = 0x00u;
    }
    else

    {
# 2856 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      {





        *AlarmStatus =
                       (((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->AGStatusReg[AlarmGroup].U);
        RetVal = 0x00u;
      }
    }
  }



  return RetVal;
}
# 2901 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_GetAlarmDebugStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  uint32* const AlarmStatus
)
{
  Std_ReturnType RetVal = 0x01u;
# 2916 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  if(AlarmStatus == ((void *)0))
  {




    Smu_lReportError(((uint8)0xB0U), ((uint8)0x04U));
  }
  else
  {



    if((0x1U) == Smu_InitStatus)
    {



      if((uint32)AlarmGroup < ((uint32)(12U)))
      {



        RetVal = 0x00u;
      }
      else
      {



        Smu_lReportError(((uint8)0xB0U),
                         ((uint8)0x05U));
      }
    }
    else
    {



      Smu_lReportError(((uint8)0xB0U),
                       ((uint8)0x01U));
    }
  }





  if(RetVal == (Std_ReturnType)0x00u)

  {





    *AlarmStatus = (((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->ADStatusReg[AlarmGroup].U);
    RetVal = 0x00u;
  }




  return RetVal;
}
# 3013 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_GetAlarmAction
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos,
  Smu_CoreAlarmActionType * const IntAlarmAction,
  Smu_FSPActionType * const FSPAction
)
{
  Std_ReturnType RetVal = 0x01u;







  if((IntAlarmAction == ((void *)0)) || (FSPAction == ((void *)0)))
  {



    Smu_lReportError(((uint8)0xABU), ((uint8)0x04U));
  }
  else
  {




    if((0x1U) == Smu_InitStatus)
    {



      if(0x00u == Smu_lAlarmValidCheck(AlarmGroup, AlarmPos,
                                      ((uint8)0xABU)))
      {



        RetVal = 0x00u;
      }
    }




    else
    {



      Smu_lReportError(((uint8)0xABU), ((uint8)0x01U));
    }
  }




  if(RetVal == 0x00u)

  {



    RetVal = Smu_lGetAlmAction(AlarmGroup, AlarmPos, IntAlarmAction,
                               FSPAction);
  }



  return RetVal;
}
# 3118 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_SetAlarmAction
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos,
  const Smu_CoreAlarmActionType AlarmAction,
  const Smu_FSPActionType FSPAction
)
{
  Std_ReturnType RetVal = 0x01u;
# 3136 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  if(0x00u == Smu_lInitFailedCheck(((uint8)0xACU)))
  {



    if(0x00u == Smu_lAlarmValidCheck(AlarmGroup, AlarmPos,
                                    ((uint8)0xACU)))
    {




      if(((uint32)AlarmGroup < ((uint32)(12U))) &&
          ((AlarmAction > ((Smu_CoreAlarmActionType)7U)) ||
           ((uint8)AlarmAction == (uint8)((Smu_CoreAlarmActionType)1U))))
      {





        Smu_lReportError(((uint8)0xACU),
                         ((uint8)0x0AU));
      }
# 3168 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      else if(((uint8)AlarmAction != (uint8)((Smu_CoreAlarmActionType)0U))
              && ((uint32)AlarmGroup > ((uint32)(12U)))
             )
      {



        Smu_lReportError(((uint8)0xACU),
                         ((uint8)0x0AU));
      }




      else if(Smu_LockState == (0x1U))
      {




        Smu_lReportError(((uint8)0xACU), ((uint8)0x09U));

      }



      else if(FSPAction > (1U))
      {



        Smu_lReportError(((uint8)0xACU),
                         ((uint8)0x0AU));
      }





      else
      {



        RetVal = 0x00u;
      }
    }
  }



  if(RetVal == 0x00u)

  {



    RetVal = Smu_lSetAlmAction(AlarmGroup, AlarmPos, AlarmAction, FSPAction);
  }




  return RetVal;
}
# 3263 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_ReleaseFSP(void)
{



  Std_ReturnType RetVal = 0x01u;
  Smu_CoreStateType SmuState;
  uint32 SmuEFRST;
  uint32 CommandStatus;
  uint32 Timeout = 0U;
# 3281 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xB2U));




  if(RetVal == 0x00u)

  {




    SmuEFRST = (uint32)((*(volatile Ifx_SMU_AGC*)0xF003682Cu).B.EFRST);



    SmuState = (Smu_CoreStateType)((*(volatile Ifx_SMU_DBG*)0xF0036838u).B.SSM);




    if((SmuState == ((Smu_CoreStateType)0U)) || ((SmuState == ((Smu_CoreStateType)2U)) &&
       (SmuEFRST == (uint32)SMU_EFRST_ENABLE)))
    {




      SchM_Enter_Smu_CmdAccess();




      Mcal_GetSpinlock(&Smu_CmdLockAddress, (8192U));





      ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)((uint32)((Smu_CoreCommandType)2U)));
# 3329 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      do
      {



        CommandStatus = (uint32)(*(volatile Ifx_SMU_STS*)0xF0036824u).B.RES;
        Timeout++;
      }



      while((Timeout < (2U)) &&
            (CommandStatus != (0x0U)));





      Mcal_ReleaseSpinlock(&Smu_CmdLockAddress);




      SchM_Exit_Smu_CmdAccess();




      if(CommandStatus != (0x0U))
      {



        RetVal = 0x01u;
# 3376 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      }
      else
      {



        RetVal = 0x00u;
# 3396 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      }
    }
    else
    {



      RetVal = 0x01u;
    }
  }



  return RetVal;
}
# 3438 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_ActivateFSP(void)
{

  Std_ReturnType RetVal = 0x01u;
  uint32 Timeout = 0U;
  uint32 CommandStatus;
# 3453 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xB3U));





  if(RetVal == 0x00u)

  {




    SchM_Enter_Smu_CmdAccess();




    Mcal_GetSpinlock(&Smu_CmdLockAddress, (8192U));





    ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)((uint32)((Smu_CoreCommandType)1U)));






    do
    {



      CommandStatus = (uint32)(*(volatile Ifx_SMU_STS*)0xF0036824u).B.RES;
      Timeout++;
    }



    while((Timeout < (2U)) &&
          (CommandStatus != (0x0U)));





    Mcal_ReleaseSpinlock(&Smu_CmdLockAddress);




    SchM_Exit_Smu_CmdAccess();



    if(CommandStatus != (0x0U))
    {



      RetVal = 0x01u;
# 3529 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
    else
    {



      RetVal = 0x00u;
# 3547 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }

  }



  return RetVal;
}
# 3582 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_SetupErrorPin(void)
{
  Std_ReturnType RetVal = 0x01u;
  uint32 ReadPCTL;
  uint32 FSPHWDir;
  uint32 FSPPortEnable;
# 3596 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xB4U));



  if(RetVal == 0x00u)
  {




    if(Smu_LockState == (0x1U))
    {




      Smu_lReportError(((uint8)0xB4U), ((uint8)0x09U));
      RetVal = 0x01u;
    }




    else if(Smu_ErrPinStatus == (0x1U))
    {



      RetVal = 0x01u;
    }
    else
    {



      RetVal = 0x00u;
    }
  }




  if(RetVal == 0x00u)

  {





    FSPHWDir = (0x1U) | ((0x0U) << (0x1U));


    FSPPortEnable = (0x1U) |
                    ((0x0U) << (0x1U));


    ReadPCTL = (FSPHWDir | (FSPPortEnable << (2U)) |
              ((uint32)(0x0U) << (uint32)(4U)) |
              ((uint32)(0x0U) << (uint32)(5U)) |
              (uint32)(0x80U));





    SchM_Enter_Smu_DriverAccess();




    Mcal_GetSpinlock(&Smu_LockAddress, (8192U));





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(uint32)(((*(volatile Ifx_SMU_KEYS*)0xF0036834u).U & (uint32)(0xFFFFFF00U)) | ((uint32)0xBCU)))
                                   ;




    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).PCTL,(uint32)ReadPCTL)
                                           ;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(uint32)(0x0U))
                                                       ;






    uint32 FSPStdbyPortEnable;




    FSPStdbyPortEnable = ((0x0U) << (0x2U))
           | ((0x0U) << (0x1U)) | (0x40000000U);

    FSPStdbyPortEnable = (*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U | FSPStdbyPortEnable;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).CMD_STDBY,(uint32)FSPStdbyPortEnable)
                                                          ;
# 3721 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    Smu_ErrPinStatus = (0x1U);





    Mcal_ReleaseSpinlock(&Smu_LockAddress);




    SchM_Exit_Smu_DriverAccess();
    RetVal = 0x00u;

  }



  return RetVal;
}
# 3763 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_ReleaseErrorPin(void)
{
  Std_ReturnType RetVal = 0x01u;
# 3775 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xB5U));




  if(RetVal == 0x00u)
  {



    if(Smu_LockState == (0x1U))
    {



      Smu_lReportError(((uint8)0xB5U), ((uint8)0x09U));

      RetVal = 0x01u;
    }




    else if(Smu_ErrPinStatus == (0x0U))
    {



      RetVal = 0x01u;
    }
    else
    {



      RetVal = 0x00u;
    }
  }




  if(RetVal == 0x00u)

  {




    SchM_Enter_Smu_DriverAccess();




    Mcal_GetSpinlock(&Smu_LockAddress, (8192U));





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(uint32)(((*(volatile Ifx_SMU_KEYS*)0xF0036834u).U & (uint32)(0xFFFFFF00U)) | ((uint32)0xBCU)))
                                   ;




    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).PCTL,(uint32)(0x00088000U))
                                   ;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(uint32)(0x0U))
                                     ;
# 3860 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    uint32 FSPStdbyPortEnable = (*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U & (0x40000009U);





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_PMS*)0xF0248000u)).CMD_STDBY,(uint32) (FSPStdbyPortEnable | (0x40000000U)))

                                                  ;
# 3880 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    Smu_ErrPinStatus = (0x0U);






    Mcal_ReleaseSpinlock(&Smu_LockAddress);




    SchM_Exit_Smu_DriverAccess();
    RetVal = 0x00u;

  }




  return RetVal;
}
# 3931 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_RTStop(const uint8 TimerNum )
{
  Std_ReturnType RetVal = 0x01u;
  uint32 Timeout = 0U;
  uint32 CommandStatus = (0x1U);
  uint32 RTSArray[2];
# 3945 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  if(TimerNum >= (uint8)(0x2U))
  {



    Smu_lReportError(((uint8)0xB6U), ((uint8)0x07U));
  }
  else
  {



    RetVal = Smu_lInitFailedCheck(((uint8)0xB6U));
  }




  if(RetVal == 0x00u)

  {




    SchM_Enter_Smu_CmdAccess();




    Mcal_GetSpinlock(&Smu_CmdLockAddress, (8192U));


    RTSArray[0] = (*(volatile Ifx_SMU_STS*)0xF0036824u).B.RTS0;
    RTSArray[1] = (*(volatile Ifx_SMU_STS*)0xF0036824u).B.RTS1;




    if(RTSArray[TimerNum & (0x1U)] == (0x1U))
    {




      ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)(((uint32)((Smu_CoreCommandType)4U) | ((uint32)TimerNum << (4U)))))
                                                                         ;




      do
      {



        CommandStatus = (uint32)(*(volatile Ifx_SMU_STS*)0xF0036824u).B.RES;
        Timeout++;
      }



      while((Timeout < (2U)) &&
            (CommandStatus != (0x0U)));
    }





    Mcal_ReleaseSpinlock(&Smu_CmdLockAddress);



    SchM_Exit_Smu_CmdAccess();




    if(CommandStatus != (0x0U))
    {



      RetVal = 0x01u;
# 4046 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
    else
    {



      RetVal = 0x00u;
# 4069 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
  }



  return RetVal;
}
# 4107 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_GetRTMissedEvent
(
  const uint8 TimerNum,
  boolean* const EventMissed
)
{
  Std_ReturnType RetVal = 0x01u;
  uint32 kTimMissEventPos[2] = {(uint32)(0x20000U),
                                (uint32)(0x80000U)};
  uint32 TimerMissEvent;
# 4126 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  if(TimerNum >= (uint8)(0x2U))
  {



    Smu_lReportError(((uint8)0xB7U), ((uint8)0x07U));
  }



  else if(EventMissed == ((void *)0))
  {



    Smu_lReportError(((uint8)0xB7U), ((uint8)0x04U));
  }



  else
  {



    RetVal = Smu_lInitFailedCheck(((uint8)0xB7U));
  }





  if(RetVal == 0x00u)

  {





    TimerMissEvent = (uint32)((*(volatile Ifx_SMU_STS*)0xF0036824u).U & kTimMissEventPos[TimerNum]);



    if(TimerMissEvent > 0U)
    {



      *EventMissed = (boolean)(1 != 0);
    }
    else
    {



      *EventMissed = (boolean)(0 != 0);
    }
    RetVal = 0x00u;
  }



  return RetVal;
}
# 4215 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_LockConfigRegs(void)
{
  Std_ReturnType RetVal = 0x01u;
  uint32 RtcValueOld;
  uint32 RtcValueNew;
  uint32 AgcValueOld;
  uint32 AgcValueNew;
# 4232 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  Smu_LockState = (0x1U);
# 4243 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xB1U));



  if(RetVal == 0x00u)
{




  if((*(volatile Ifx_SMU_KEYS*)0xF0036834u).B.PERLCK == (0xFFU))
    {




      Smu_lReportError(((uint8)0xB1U), ((uint8)0x09U));
      RetVal = 0x01u;
    }
  }




  if(RetVal == 0x00u)

{




  Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(uint32)(0x0000FF00U))
                                          ;
# 4284 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(uint32)(0x000000BCU))
                                              ;




    if ((uint32)(0x0000FF00U) == (*(volatile Ifx_SMU_KEYS*)0xF0036834u).U)
    {
# 4300 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      RtcValueOld = (*(volatile Ifx_SMU_RTC*)0xF0036830u).U;


      AgcValueOld = (*(volatile Ifx_SMU_AGC*)0xF003682Cu).U;


      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RTC,(uint32)((uint32)RtcValueOld ^ (uint32)(0x1u)))

                                                                  ;


      Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).AGC,(uint32)((uint32)AgcValueOld ^ (uint32)(0x7u)))

                                                                   ;


      RtcValueNew = (*(volatile Ifx_SMU_RTC*)0xF0036830u).U;

      AgcValueNew = (*(volatile Ifx_SMU_AGC*)0xF003682Cu).U;





      if ((RtcValueOld == RtcValueNew) && (AgcValueOld == AgcValueNew))
      {



        RetVal = 0x00u;

      }
      else
      {
# 4343 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
        Smu_LockState = (0x0U);


        RetVal = 0x01u;
# 4357 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      }
    }
    else
    {
# 4370 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      Smu_LockState = (0x0U);

      RetVal = 0x01u;
# 4383 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
  }



  return RetVal;

}
# 4418 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Smu_CoreStateType Smu_GetSmuState(void)
{



  Smu_CoreStateType RetVal = ((Smu_CoreStateType)3U);





  uint8 lErrorVal = ((uint8)0x00U);



  if((0x0U) == Smu_InitStatus)
  {




    lErrorVal = ((uint8)0x01U);
    Smu_lReportError(((uint8)0xBAU), ((uint8)0x01U));
  }




  if(lErrorVal == ((uint8)0x00U))

  {




    RetVal = (Smu_CoreStateType)(*(volatile Ifx_SMU_DBG*)0xF0036838u).B.SSM;
  }



  return RetVal;
}
# 4489 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_ActivateRunState(const uint32 Cmd)
{
  Std_ReturnType RetVal = 0x01u;
  Smu_CoreStateType SmuState;
  uint32 CommandStatus;
  uint32 Timeout = 0U;
# 4504 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xBBU));




  if(RetVal == 0x00u)

  {




    SmuState = (Smu_CoreStateType)((*(volatile Ifx_SMU_DBG*)0xF0036838u).B.SSM);





    if (SmuState != ((Smu_CoreStateType)0U))
    {



      RetVal = 0x01u;
    }




    else if (Cmd != (uint32)((Smu_CoreCommandType)0U))
    {






      SchM_Enter_Smu_CmdAccess();




      Mcal_GetSpinlock(&Smu_CmdLockAddress, (8192U));





      ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)((uint32)((Smu_CoreCommandType)1U)));
# 4562 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      Smu_DriverState = (0x1U);






      Mcal_ReleaseSpinlock(&Smu_CmdLockAddress);



      SchM_Exit_Smu_CmdAccess();
      RetVal = 0x01u;
    }
    else
    {






      SchM_Enter_Smu_CmdAccess();




      Mcal_GetSpinlock(&Smu_CmdLockAddress, (8192U));




      ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)(Cmd));




      do
      {



        CommandStatus = (uint32)(*(volatile Ifx_SMU_STS*)0xF0036824u).B.RES;
        Timeout++;
      }




      while((Timeout < (2U)) &&
            (CommandStatus != (0x0U)));





      Mcal_ReleaseSpinlock(&Smu_CmdLockAddress);



      SchM_Exit_Smu_CmdAccess();



      if(CommandStatus != (0x0U))
      {



        RetVal = 0x01u;
# 4644 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      }
      else
      {



        RetVal = 0x00u;
# 4660 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
        Smu_DriverState = (0x0U);
# 4675 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      }
    }
  }



  return RetVal;
}
# 4707 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_ActivatePES(void)
{
  Std_ReturnType RetVal = 0x01u;
  uint32 Timeout = 0U;
  uint32 CommandStatus;
# 4721 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xB8U));





  if(RetVal == 0x00u)

  {




    SchM_Enter_Smu_CmdAccess();




    Mcal_GetSpinlock(&Smu_CmdLockAddress, (8192U));





    ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)((uint32)((Smu_CoreCommandType)3U)));





    do
    {



      CommandStatus = (uint32)(*(volatile Ifx_SMU_STS*)0xF0036824u).B.RES;
      Timeout++;
    }



    while((Timeout < (2U)) &&
          (CommandStatus != (0x0U)));





    Mcal_ReleaseSpinlock(&Smu_CmdLockAddress);



    SchM_Exit_Smu_CmdAccess();



    if(CommandStatus != (0x0U))
    {



      RetVal = 0x01u;
# 4795 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
    else
    {



      RetVal = 0x00u;
# 4814 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }

  }



  return RetVal;
}
# 4846 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_CoreAliveTest(void)
{



  Std_ReturnType RetVal = 0x01u;






  uint32 CommandStatus;
  uint32 Timeout = 0U;
  Smu_CoreStateType SmuState;
# 4873 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xBDU));





  if(RetVal == 0x00u)

  {




    SmuState = (Smu_CoreStateType)((*(volatile Ifx_SMU_DBG*)0xF0036838u).B.SSM);





    if (SmuState == ((Smu_CoreStateType)0U))
    {




      SchM_Enter_Smu_CmdAccess();




      Mcal_GetSpinlock(&Smu_CmdLockAddress, (8192U));





      ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)((uint32)(((Smu_CoreCommandType)7U) | (((uint8)0x5U) << (4U)))))
                                                                               ;






      do
      {



        CommandStatus = (uint32)(*(volatile Ifx_SMU_STS*)0xF0036824u).B.RES;
        Timeout++;
      }



      while((Timeout < (2U)) &&
            (CommandStatus != (0x0U)));





      ((*(&(*(volatile Ifx_SMU_CMD*)0xF0036820u).U)) = (uint32)((uint32)(((Smu_CoreCommandType)7U) | (((uint8)0xAU) << (4U)))))
                                                                              ;





      Mcal_ReleaseSpinlock(&Smu_CmdLockAddress);



      SchM_Exit_Smu_CmdAccess();



      if(CommandStatus != (0x0U))
      {



        RetVal = 0x01u;
# 4970 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      }
      else
      {



        RetVal = 0x00u;
# 4989 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      }
    }
    else
    {



      RetVal = 0x01u;
    }
  }
# 5018 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  return RetVal;
}
# 5052 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_GetAlarmExecutionStatus
(
  const uint32 AlarmExecStatusReq,
  uint32* const AlarmExecStatus
)
{



  Std_ReturnType RetVal = 0x01u;






  uint32 AlarmRes = 0U;






  if(AlarmExecStatus != ((void *)0))
  {



    RetVal = Smu_lInitFailedCheck(((uint8)0xBEU));



    if(RetVal == 0x00u)
    {




      if(AlarmExecStatusReq > (31U))
      {



        Smu_lReportError(((uint8)0xBEU),
                         ((uint8)0x0BU));



        RetVal = 0x01u;
      }
      else
      {




        AlarmRes = (uint32)(0xa3f0a3fU) &
                   ((uint32)(0x1U) << (uint32)AlarmExecStatusReq);
        AlarmRes = AlarmRes >> AlarmExecStatusReq;




        if(AlarmRes == (0x0U))
        {



          Smu_lReportError(((uint8)0xBEU),
                           ((uint8)0x0BU));



          RetVal = 0x01u;
        }
      }
    }
  }
  else
  {



    Smu_lReportError(((uint8)0xBEU), ((uint8)0x04U));
  }





  if(RetVal == 0x00u)

  {



    *AlarmExecStatus = (((*(volatile Ifx_SMU_AEX*)0xF0036870u).U & ((uint32)(0x1U) <<
                  (uint32)AlarmExecStatusReq)) >> (uint32)AlarmExecStatusReq);



    RetVal = 0x00u;
  }



  return RetVal;
}
# 5192 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_ClearAlarmExecutionStatus
(
  const uint32 AlarmExecStatusReq
)
{



  Std_ReturnType RetVal = 0x01u;
  uint32 StatusClearRes;
# 5211 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  uint32 AlarmRes = 0U;
  RetVal = Smu_lInitFailedCheck(((uint8)0xBFU));



  if(RetVal == 0x00u)
  {




    if(AlarmExecStatusReq > (31U))
    {



      Smu_lReportError(((uint8)0xBFU),
                       ((uint8)0x0BU));



      RetVal = 0x01u;
    }
    else
    {




      AlarmRes = (uint32)(0xa3f0a3fU) &
                 ((uint32)(0x1U) << (uint32)AlarmExecStatusReq);
      AlarmRes = AlarmRes >> AlarmExecStatusReq;




      if(AlarmRes == (0x0U))
      {



        Smu_lReportError(((uint8)0xBFU),
                         ((uint8)0x0BU));



        RetVal = 0x01u;
      }
    }
  }





  if(RetVal == 0x00u)

  {




    StatusClearRes = ((uint32)(0x1U) << AlarmExecStatusReq);
# 5282 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    StatusClearRes = StatusClearRes |
                     (((uint32)(0x1U) << (0x10U))
                      << AlarmExecStatusReq);





    SchM_Enter_Smu_DriverAccess();




    Mcal_GetSpinlock(&Smu_LockAddress, (8192U));






    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).AEXCLR,(uint32)StatusClearRes)
                                                   ;





    Mcal_ReleaseSpinlock(&Smu_LockAddress);



    SchM_Exit_Smu_DriverAccess();



    RetVal = 0x00u;
  }



  return RetVal;
}
# 5355 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_RegisterMonitor
(
  const uint16 * const RegMonPtr, Smu_SffTestResType * const RegMonResult
)
{
  uint8 Index = 0U;
  Std_ReturnType RetVal = (Std_ReturnType)0x01u;
  uint32 RMCTLVal = 0U;
  uint32 ResStatus;
  uint32 Timeout = 0U;
  uint32 RMSTSVal = 0U;
# 5374 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
  RetVal = Smu_lInitFailedCheck(((uint8)0xB9U));



  if(RetVal == 0x00u)
  {



    if((0x1U) == Smu_LockState)
    {




      Smu_lReportError(((uint8)0xB9U), ((uint8)0x09U));
      RetVal = (Std_ReturnType)0x01u;
    }
    else
    {



      if((RegMonPtr == ((void *)0)) || (RegMonResult == ((void *)0)))
      {




        Smu_lReportError(((uint8)0xB9U),
                         ((uint8)0x04U));
        RetVal = (Std_ReturnType)0x01u;
      }
    }
  }





  if(RetVal == (Std_ReturnType)0x00u)

  {
# 5425 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    for(Index = 0U; (Index < (0xBU)); Index++)
    {



      if(RegMonPtr[Index] == (0x1U))
      {



        RMCTLVal = RMCTLVal | ((uint32)(0x1U) <<
                               (uint32)Index);
      }

    }




    SchM_Enter_Smu_DriverAccess();




    Mcal_GetSpinlock(&Smu_LockAddress, (8192U));





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(((*(volatile Ifx_SMU_KEYS*)0xF0036834u).U & (uint32)(0xFFFFFF00U)) | ((uint32)0xBCU)))
                                             ;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RMCTL,RMCTLVal)
                                    ;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(0x0U))
                                               ;





    do
    {



      RMSTSVal = (*(volatile Ifx_SMU_RMSTS*)0xF0036B08u).U;
      Timeout++;
    }



    while ((RMCTLVal != (RMSTSVal & RMCTLVal))
           && (Timeout < (0x168U)));

    ResStatus = (*(volatile Ifx_SMU_RMEF*)0xF0036B04u).U;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RMSTS,(0x0U))
                                              ;




    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RMEF,(0x0U))
                                            ;




    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(((*(volatile Ifx_SMU_KEYS*)0xF0036834u).U & (uint32)(0xFFFFFF00U)) | ((uint32)0xBCU)))
                                             ;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).RMCTL,(0x0U))
                                              ;





    Mcal_WriteSafetyEndInitProtReg(&((*(Ifx_SMU*)0xF0036800u)).KEYS,(0x0U))
                                               ;





    Mcal_ReleaseSpinlock(&Smu_LockAddress);



    SchM_Exit_Smu_DriverAccess();





    if (Timeout >= (0x168U))
    {




      RetVal = 0x01u;
# 5557 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
    else
    {




      for(Index = 0; Index < (0xBU); Index++)
      {




        RegMonResult[Index] = (Smu_SffTestResType)((ResStatus &
                ((uint32)(0x1U) << (uint32)Index)) >> (uint32)Index);

      }
      RetVal = 0x00u;
# 5586 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
    }
  }



  return RetVal;
}
# 5623 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
Std_ReturnType Smu_InitCheck (const Smu_ConfigType* const ConfigPtr)
{
  Std_ReturnType TempErrFlag = 0x01u;
  uint32 Index = 0U;
  uint32 SfrVal;
  uint32 CfgVal;
  volatile uint32 CompareFlag = 0xFFFFFFFFU;

  Std_ReturnType RetVal = 0x01u;



  if(ConfigPtr != ((void *)0))
  {




    if((0x1U) == Smu_InitStatus)
    {



      RetVal = 0x00u;
    }
  }




  if(RetVal == 0x00u)
  {







    SfrVal = (uint32)(*(volatile Ifx_SMU_FSP*)0xF0036828u).U ;
    CfgVal = (ConfigPtr->FSPCfg | (0x003FFF00U));
    CompareFlag &= ~(SfrVal ^ CfgVal);



    SfrVal = (uint32)(*(volatile Ifx_SMU_RTC*)0xF0036830u).U;
    CfgVal = ConfigPtr->RTCCfg;
    CompareFlag &= ~(SfrVal ^ CfgVal);



    SfrVal = (uint32)(*(volatile Ifx_SMU_AGC*)0xF003682Cu).U;
    CfgVal = ConfigPtr->AGCCfg;
    CompareFlag &= ~(SfrVal ^ CfgVal);



    SfrVal = (uint32)(*(volatile Ifx_SMU_RTAC00*)0xF0036860u).U;
    CfgVal = ConfigPtr->RTAC00Cfg;
    CompareFlag &= ~(SfrVal ^ CfgVal);



    SfrVal = (uint32)(*(volatile Ifx_SMU_RTAC01*)0xF0036864u).U;
    CfgVal = ConfigPtr->RTAC01Cfg;
    CompareFlag &= ~(SfrVal ^ CfgVal);



    SfrVal = (uint32)(*(volatile Ifx_SMU_RTAC10*)0xF0036868u).U;
    CfgVal = ConfigPtr->RTAC10Cfg;
    CompareFlag &= ~(SfrVal ^ CfgVal);



    SfrVal = (uint32)(*(volatile Ifx_SMU_RTAC11*)0xF003686Cu).U;
    CfgVal = ConfigPtr->RTAC11Cfg;
    CompareFlag &= ~(SfrVal ^ CfgVal);



    SfrVal = (uint32)(*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U ;
    CfgVal = ConfigPtr->AlarmStdbyCfg ;
    CompareFlag &= ~(SfrVal ^ CfgVal);



    SfrVal = (uint32)(*(volatile Ifx_PMS_AGFSP_STDBY0*)0xF02481A4u).U;
    CfgVal = ConfigPtr->AlarmStdbyFspConfig[0];
    CompareFlag &= ~(SfrVal ^ CfgVal);



    SfrVal = (uint32)(*(volatile Ifx_PMS_AGFSP_STDBY1*)0xF02481A8u).U ;
    CfgVal = ConfigPtr->AlarmStdbyFspConfig[1];
    CompareFlag &= ~(SfrVal ^ CfgVal);






    for(Index = 0U; Index < ((uint32)(36U)); Index++)
    {
# 5739 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      SfrVal = (uint32)((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->CfgReg[Index].U;
      CfgVal = ConfigPtr->AlarmCoreConfig[Index];
      CompareFlag &= ~(SfrVal ^ CfgVal);
    }







    for(Index = 0U; Index < ((uint32)(12U)); Index++)
    {
# 5760 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
      SfrVal = (uint32)((SMU_CoreAlarmGroupRegMapType *)(&(*(volatile Ifx_SMU_AGCF*)0xF0036900u)))->FSPCfgReg[Index].U;
      CfgVal = ConfigPtr->AlarmCoreFspConfig[Index];
      CompareFlag &= ~(SfrVal ^ CfgVal);
    }






    if((Smu_LockState == (0x0U)) &&
        (Smu_DriverState == (0x0U)) &&
        (Smu_ErrPinStatus == (0x0U)))
    {




      if(CompareFlag == 0xFFFFFFFFU)
      {



        TempErrFlag = 0x00u;
      }
    }
  }



  return TempErrFlag;
}
# 5874 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c"
# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 124 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 5875 "bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\src\\Smu.c" 2
