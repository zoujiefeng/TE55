# 1 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
# 44 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
# 1 ".\\output\\inc/HtxWdgIf.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 1
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 1
# 56 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h"
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
# 57 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/Platform_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 2 ".\\output\\inc/Platform_Types.h" 2
# 58 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
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
# 59 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
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
# 60 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2







# 1 ".\\output\\inc/SchM_HtxIntSafeWdg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h" 1
# 77 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h"
extern void SchM_Enter_HtxIntSafeWdgWdtscon0(void);
# 108 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h"
extern void SchM_Exit_HtxIntSafeWdgWdtscon0(void);
# 139 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h"
extern void SchM_Enter_HtxIntSafeWdgWdtscon1(void);
# 170 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h"
extern void SchM_Exit_HtxIntSafeWdgWdtscon1(void);
# 2 ".\\output\\inc/SchM_HtxIntSafeWdg.h" 2
# 68 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/StpRefApp.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 44 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h" 2
# 68 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern uint8 GetActiveCall(void);
extern void SetActiveCall(uint8 u8Called);
# 101 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_SafeTpackMain(void);
# 134 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Tick(void);
# 167 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_WaitForTick(void);
# 200 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_SafeWdgInit(void);
# 233 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu0(void);
# 265 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu1(void);
# 297 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu2(void);
# 329 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu3(void);
# 361 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu4(void);
# 393 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu5(void);
# 427 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern uint8 TLF35584Demo_IsSsspActive(void);
# 459 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void TLF35584Demo_InterruptHandler(void);
# 490 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_TlfDisable(void);
# 2 ".\\output\\inc/StpRefApp.h" 2
# 69 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/AppCbk.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h" 1
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
# 1 ".\\output\\inc/Platform_Types.h" 1
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h" 2
# 72 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
typedef uint32 AppCbk_ErrorIdType;
# 117 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
extern void AppCbk_ErrorHandler(AppCbk_ErrorIdType ErrorId);
extern void AppCbk_PfmErrorHandler(uint32 ErrorType);
extern void AppCbk_PfmMonitorFaultHandler(uint32 Seid, uint32 FaultType);
# 2 ".\\output\\inc/AppCbk.h" 2
# 70 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 2 ".\\output\\inc/HtxStpIf.h" 2
# 48 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h" 1
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h"
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 48 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h" 2
# 71 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h"
typedef enum HtxWdgIf_ResultType
{
    HTXWDGIF_JOB_ACCEPTED = (1U),
    HTXWDGIF_JOB_FAILED,
    HTXWDGIF_JOB_FAILED_CRC,
    HTXWDGIF_JOB_INV_PARAM,
    HTXWDGIF_JOB_COM_ERR,
    HTXWDGIF_JOB_BUSY,
    HTXWDGIF_JOB_INV_STATE,
    HTXWDGIF_JOB_READBACK_FAIL,
    HTXWDGIF_JOB_INIT_FAIL,
    HTXWDGIF_JOB_RD_DATA_FAIL,
    HTXWDGIF_JOB_FAILED_SERVICE,
    HTXWDGIF_JOB_INVALID_SEED,
    HTXWDGIF_JOB_SUCCESS
} HtxWdgIf_ResultType;


typedef enum HtxWdgIf_IntWdgStateType
{

    HTXWDGIF_INT_SWDG_UNKNOWN = (1U),
    HTXWDGIF_INT_SWDG_INIT,
    HTXWDGIF_INT_SWDG_ACTIVE,
    HTXWDGIF_INT_SWDG_FAIL
} HtxWdgIf_IntWdgStateType;

typedef enum HtxWdgIf_ExtWdgStateType
{

    HTXWDGIF_EXT_TLF_NONE = (0U),
    HTXWDGIF_EXT_TLF_INIT,
    HTXWDGIF_EXT_TLF_NORMAL,
    HTXWDGIF_EXT_TLF_SLEEP,
    HTXWDGIF_EXT_TLF_STANDBY,
    HTXWDGIF_EXT_TLF_WAKE,
    HTXWDGIF_EXT_TLF_UNDEFINED1,
    HTXWDGIF_EXT_TLF_UNDEFINED2
} HtxWdgIf_ExtWdgStateType;





typedef struct HtxWdgIf_CmdType
{
    uint8 ReqCmd;
    uint8 UserData;
} HtxWdgIf_CmdType;


typedef struct HtxWdgIf_ConfigType
{
    const void* const DriverIntConfigPtr;
    const void* const DriverExtConfigPtr;
} HtxWdgIf_ConfigType;

typedef struct HtxWdgIf_StateType
{
    HtxWdgIf_IntWdgStateType IntWdgState;
    HtxWdgIf_ExtWdgStateType ExtWdgState;
} HtxWdgIf_StateType;
# 49 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 1 ".\\output\\inc/HtxWdgIf_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxWdgIf_Cfg.h" 1
# 45 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxWdgIf_Cfg.h"
# 1 ".\\output\\inc/HtxWdgIf_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h" 1
# 2 ".\\output\\inc/HtxWdgIf_Types.h" 2
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxWdgIf_Cfg.h" 2
# 1 ".\\output\\inc/HtxTLF35584.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 1
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
# 1 ".\\output\\inc/IfxPort_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h" 1
# 122 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
typedef struct _Ifx_P_ACCEN0_Bits
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
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
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
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    Ifx_UReg_32Bit P0:1;
    Ifx_UReg_32Bit P1:1;
    Ifx_UReg_32Bit P2:1;
    Ifx_UReg_32Bit P3:1;
    Ifx_UReg_32Bit P4:1;
    Ifx_UReg_32Bit P5:1;
    Ifx_UReg_32Bit P6:1;
    Ifx_UReg_32Bit P7:1;
    Ifx_UReg_32Bit P8:1;
    Ifx_UReg_32Bit P9:1;
    Ifx_UReg_32Bit P10:1;
    Ifx_UReg_32Bit P11:1;
    Ifx_UReg_32Bit P12:1;
    Ifx_UReg_32Bit P13:1;
    Ifx_UReg_32Bit P14:1;
    Ifx_UReg_32Bit P15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit PC0:5;
    Ifx_UReg_32Bit reserved_8:3;
    Ifx_UReg_32Bit PC1:5;
    Ifx_UReg_32Bit reserved_16:3;
    Ifx_UReg_32Bit PC2:5;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit PC3:5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit PC12:5;
    Ifx_UReg_32Bit reserved_8:3;
    Ifx_UReg_32Bit PC13:5;
    Ifx_UReg_32Bit reserved_16:3;
    Ifx_UReg_32Bit PC14:5;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit PC15:5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit PC4:5;
    Ifx_UReg_32Bit reserved_8:3;
    Ifx_UReg_32Bit PC5:5;
    Ifx_UReg_32Bit reserved_16:3;
    Ifx_UReg_32Bit PC6:5;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit PC7:5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit PC8:5;
    Ifx_UReg_32Bit reserved_8:3;
    Ifx_UReg_32Bit PC9:5;
    Ifx_UReg_32Bit reserved_16:3;
    Ifx_UReg_32Bit PC10:5;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit PC11:5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_LPCR_Bits
{
    Ifx_UReg_32Bit REN_CTRL:1;
    Ifx_UReg_32Bit RX_EN:1;
    Ifx_UReg_32Bit TERM:1;
    Ifx_UReg_32Bit LRXTERM:3;
    Ifx_UReg_32Bit LVDSM:1;
    Ifx_UReg_32Bit PS:1;
    Ifx_UReg_32Bit TEN_CTRL:1;
    Ifx_UReg_32Bit TX_EN:1;
    Ifx_UReg_32Bit VDIFFADJ:2;
    Ifx_UReg_32Bit VOSDYN:1;
    Ifx_UReg_32Bit VOSEXT:1;
    Ifx_UReg_32Bit TX_PD:1;
    Ifx_UReg_32Bit TX_PWDPD:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_LPCR_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    Ifx_UReg_32Bit reserved_0:16;
    Ifx_UReg_32Bit PCL0:1;
    Ifx_UReg_32Bit PCL1:1;
    Ifx_UReg_32Bit PCL2:1;
    Ifx_UReg_32Bit PCL3:1;
    Ifx_UReg_32Bit PCL4:1;
    Ifx_UReg_32Bit PCL5:1;
    Ifx_UReg_32Bit PCL6:1;
    Ifx_UReg_32Bit PCL7:1;
    Ifx_UReg_32Bit PCL8:1;
    Ifx_UReg_32Bit PCL9:1;
    Ifx_UReg_32Bit PCL10:1;
    Ifx_UReg_32Bit PCL11:1;
    Ifx_UReg_32Bit PCL12:1;
    Ifx_UReg_32Bit PCL13:1;
    Ifx_UReg_32Bit PCL14:1;
    Ifx_UReg_32Bit PCL15:1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    Ifx_UReg_32Bit reserved_0:16;
    Ifx_UReg_32Bit PCL0:1;
    Ifx_UReg_32Bit PCL1:1;
    Ifx_UReg_32Bit PCL2:1;
    Ifx_UReg_32Bit PCL3:1;
    Ifx_UReg_32Bit reserved_20:12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    Ifx_UReg_32Bit reserved_0:28;
    Ifx_UReg_32Bit PCL12:1;
    Ifx_UReg_32Bit PCL13:1;
    Ifx_UReg_32Bit PCL14:1;
    Ifx_UReg_32Bit PCL15:1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    Ifx_UReg_32Bit reserved_0:20;
    Ifx_UReg_32Bit PCL4:1;
    Ifx_UReg_32Bit PCL5:1;
    Ifx_UReg_32Bit PCL6:1;
    Ifx_UReg_32Bit PCL7:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    Ifx_UReg_32Bit reserved_0:24;
    Ifx_UReg_32Bit PCL8:1;
    Ifx_UReg_32Bit PCL9:1;
    Ifx_UReg_32Bit PCL10:1;
    Ifx_UReg_32Bit PCL11:1;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    Ifx_UReg_32Bit PS0:1;
    Ifx_UReg_32Bit PS1:1;
    Ifx_UReg_32Bit PS2:1;
    Ifx_UReg_32Bit PS3:1;
    Ifx_UReg_32Bit PS4:1;
    Ifx_UReg_32Bit PS5:1;
    Ifx_UReg_32Bit PS6:1;
    Ifx_UReg_32Bit PS7:1;
    Ifx_UReg_32Bit PS8:1;
    Ifx_UReg_32Bit PS9:1;
    Ifx_UReg_32Bit PS10:1;
    Ifx_UReg_32Bit PS11:1;
    Ifx_UReg_32Bit PS12:1;
    Ifx_UReg_32Bit PS13:1;
    Ifx_UReg_32Bit PS14:1;
    Ifx_UReg_32Bit PS15:1;
    Ifx_UReg_32Bit PCL0:1;
    Ifx_UReg_32Bit PCL1:1;
    Ifx_UReg_32Bit PCL2:1;
    Ifx_UReg_32Bit PCL3:1;
    Ifx_UReg_32Bit PCL4:1;
    Ifx_UReg_32Bit PCL5:1;
    Ifx_UReg_32Bit PCL6:1;
    Ifx_UReg_32Bit PCL7:1;
    Ifx_UReg_32Bit PCL8:1;
    Ifx_UReg_32Bit PCL9:1;
    Ifx_UReg_32Bit PCL10:1;
    Ifx_UReg_32Bit PCL11:1;
    Ifx_UReg_32Bit PCL12:1;
    Ifx_UReg_32Bit PCL13:1;
    Ifx_UReg_32Bit PCL14:1;
    Ifx_UReg_32Bit PCL15:1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    Ifx_UReg_32Bit PS0:1;
    Ifx_UReg_32Bit PS1:1;
    Ifx_UReg_32Bit PS2:1;
    Ifx_UReg_32Bit PS3:1;
    Ifx_UReg_32Bit PS4:1;
    Ifx_UReg_32Bit PS5:1;
    Ifx_UReg_32Bit PS6:1;
    Ifx_UReg_32Bit PS7:1;
    Ifx_UReg_32Bit PS8:1;
    Ifx_UReg_32Bit PS9:1;
    Ifx_UReg_32Bit PS10:1;
    Ifx_UReg_32Bit PS11:1;
    Ifx_UReg_32Bit PS12:1;
    Ifx_UReg_32Bit PS13:1;
    Ifx_UReg_32Bit PS14:1;
    Ifx_UReg_32Bit PS15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    Ifx_UReg_32Bit PS0:1;
    Ifx_UReg_32Bit PS1:1;
    Ifx_UReg_32Bit PS2:1;
    Ifx_UReg_32Bit PS3:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    Ifx_UReg_32Bit reserved_0:12;
    Ifx_UReg_32Bit PS12:1;
    Ifx_UReg_32Bit PS13:1;
    Ifx_UReg_32Bit PS14:1;
    Ifx_UReg_32Bit PS15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit PS4:1;
    Ifx_UReg_32Bit PS5:1;
    Ifx_UReg_32Bit PS6:1;
    Ifx_UReg_32Bit PS7:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    Ifx_UReg_32Bit reserved_0:8;
    Ifx_UReg_32Bit PS8:1;
    Ifx_UReg_32Bit PS9:1;
    Ifx_UReg_32Bit PS10:1;
    Ifx_UReg_32Bit PS11:1;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    Ifx_UReg_32Bit P0:1;
    Ifx_UReg_32Bit P1:1;
    Ifx_UReg_32Bit P2:1;
    Ifx_UReg_32Bit P3:1;
    Ifx_UReg_32Bit P4:1;
    Ifx_UReg_32Bit P5:1;
    Ifx_UReg_32Bit P6:1;
    Ifx_UReg_32Bit P7:1;
    Ifx_UReg_32Bit P8:1;
    Ifx_UReg_32Bit P9:1;
    Ifx_UReg_32Bit P10:1;
    Ifx_UReg_32Bit P11:1;
    Ifx_UReg_32Bit P12:1;
    Ifx_UReg_32Bit P13:1;
    Ifx_UReg_32Bit P14:1;
    Ifx_UReg_32Bit P15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    Ifx_UReg_32Bit SEL0:1;
    Ifx_UReg_32Bit SEL1:1;
    Ifx_UReg_32Bit SEL2:1;
    Ifx_UReg_32Bit SEL3:1;
    Ifx_UReg_32Bit SEL4:1;
    Ifx_UReg_32Bit SEL5:1;
    Ifx_UReg_32Bit SEL6:1;
    Ifx_UReg_32Bit SEL7:1;
    Ifx_UReg_32Bit SEL8:1;
    Ifx_UReg_32Bit SEL9:1;
    Ifx_UReg_32Bit SEL10:1;
    Ifx_UReg_32Bit SEL11:1;
    Ifx_UReg_32Bit SEL12:1;
    Ifx_UReg_32Bit SEL13:1;
    Ifx_UReg_32Bit SEL14:1;
    Ifx_UReg_32Bit SEL15:1;
    Ifx_UReg_32Bit reserved_16:15;
    Ifx_UReg_32Bit LCK:1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    Ifx_UReg_32Bit PDIS0:1;
    Ifx_UReg_32Bit PDIS1:1;
    Ifx_UReg_32Bit PDIS2:1;
    Ifx_UReg_32Bit PDIS3:1;
    Ifx_UReg_32Bit PDIS4:1;
    Ifx_UReg_32Bit PDIS5:1;
    Ifx_UReg_32Bit PDIS6:1;
    Ifx_UReg_32Bit PDIS7:1;
    Ifx_UReg_32Bit PDIS8:1;
    Ifx_UReg_32Bit PDIS9:1;
    Ifx_UReg_32Bit PDIS10:1;
    Ifx_UReg_32Bit PDIS11:1;
    Ifx_UReg_32Bit PDIS12:1;
    Ifx_UReg_32Bit PDIS13:1;
    Ifx_UReg_32Bit PDIS14:1;
    Ifx_UReg_32Bit PDIS15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    Ifx_UReg_32Bit PD0:2;
    Ifx_UReg_32Bit PL0:2;
    Ifx_UReg_32Bit PD1:2;
    Ifx_UReg_32Bit PL1:2;
    Ifx_UReg_32Bit PD2:2;
    Ifx_UReg_32Bit PL2:2;
    Ifx_UReg_32Bit PD3:2;
    Ifx_UReg_32Bit PL3:2;
    Ifx_UReg_32Bit PD4:2;
    Ifx_UReg_32Bit PL4:2;
    Ifx_UReg_32Bit PD5:2;
    Ifx_UReg_32Bit PL5:2;
    Ifx_UReg_32Bit PD6:2;
    Ifx_UReg_32Bit PL6:2;
    Ifx_UReg_32Bit PD7:2;
    Ifx_UReg_32Bit PL7:2;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    Ifx_UReg_32Bit PD8:2;
    Ifx_UReg_32Bit PL8:2;
    Ifx_UReg_32Bit PD9:2;
    Ifx_UReg_32Bit PL9:2;
    Ifx_UReg_32Bit PD10:2;
    Ifx_UReg_32Bit PL10:2;
    Ifx_UReg_32Bit PD11:2;
    Ifx_UReg_32Bit PL11:2;
    Ifx_UReg_32Bit PD12:2;
    Ifx_UReg_32Bit PL12:2;
    Ifx_UReg_32Bit PD13:2;
    Ifx_UReg_32Bit PL13:2;
    Ifx_UReg_32Bit PD14:2;
    Ifx_UReg_32Bit PL14:2;
    Ifx_UReg_32Bit PD15:2;
    Ifx_UReg_32Bit PL15:2;
} Ifx_P_PDR1_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_LPCR_Bits B;
} Ifx_P_LPCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 732 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
       Ifx_P_OUT OUT;
       Ifx_P_OMR OMR;
       Ifx_P_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_P_IOCR0 IOCR0;
       Ifx_P_IOCR4 IOCR4;
       Ifx_P_IOCR8 IOCR8;
       Ifx_P_IOCR12 IOCR12;
       Ifx_UReg_8Bit reserved_20[4];
       Ifx_P_IN IN;
       Ifx_UReg_8Bit reserved_28[24];
       Ifx_P_PDR0 PDR0;
       Ifx_P_PDR1 PDR1;
       Ifx_UReg_8Bit reserved_48[8];
       Ifx_P_ESR ESR;
       Ifx_UReg_8Bit reserved_54[12];
       Ifx_P_PDISC PDISC;
       Ifx_P_PCSR PCSR;
       Ifx_UReg_8Bit reserved_68[8];
       Ifx_P_OMSR0 OMSR0;
       Ifx_P_OMSR4 OMSR4;
       Ifx_P_OMSR8 OMSR8;
       Ifx_P_OMSR12 OMSR12;
       Ifx_P_OMCR0 OMCR0;
       Ifx_P_OMCR4 OMCR4;
       Ifx_P_OMCR8 OMCR8;
       Ifx_P_OMCR12 OMCR12;
       Ifx_P_OMSR OMSR;
       Ifx_P_OMCR OMCR;
       Ifx_UReg_8Bit reserved_98[8];
       Ifx_P_LPCR LPCR[8];
       Ifx_UReg_8Bit reserved_C0[56];
       Ifx_P_ACCEN1 ACCEN1;
       Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 123 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h" 2
# 2 ".\\output\\inc/IfxPort_reg.h" 2
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2





# 1 ".\\output\\inc/HtxStpIf.h" 1
# 53 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 1 ".\\output\\inc/HtxTLF35584_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxTLF35584_Cfg.h" 1
# 2 ".\\output\\inc/HtxTLF35584_Cfg.h" 2
# 54 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 1 ".\\output\\inc/HtxWdgIf_Types.h" 1
# 55 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 1 ".\\output\\inc/HtxTLF35584Qspi.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/IfxSrc_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    Ifx_UReg_32Bit SRPN:8;
    Ifx_UReg_32Bit reserved_8:2;
    Ifx_UReg_32Bit SRE:1;
    Ifx_UReg_32Bit TOS:3;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit ECC:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SRR:1;
    Ifx_UReg_32Bit CLRR:1;
    Ifx_UReg_32Bit SETR:1;
    Ifx_UReg_32Bit IOV:1;
    Ifx_UReg_32Bit IOVCLR:1;
    Ifx_UReg_32Bit SWS:1;
    Ifx_UReg_32Bit SWSCLR:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_SRC_SRCR_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 110 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CPU_CPU
{
       Ifx_SRC_SRCR SB;
} Ifx_SRC_CPU_CPU;
# 128 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CPU
{
       Ifx_SRC_CPU_CPU CPU[4];
} Ifx_SRC_CPU;
# 146 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CERBERUS_CERBERUS
{
       Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS_CERBERUS;
# 164 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CERBERUS
{
       Ifx_SRC_CERBERUS_CERBERUS CERBERUS;
} Ifx_SRC_CERBERUS;
# 182 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN_ASCLIN
{
       Ifx_SRC_SRCR TX;
       Ifx_SRC_SRCR RX;
       Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN_ASCLIN;
# 202 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN
{
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN[12];
} Ifx_SRC_ASCLIN;
# 220 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_QSPI_QSPI
{
       Ifx_SRC_SRCR TX;
       Ifx_SRC_SRCR RX;
       Ifx_SRC_SRCR ERR;
       Ifx_SRC_SRCR PT;
       Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI_QSPI;
# 242 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_QSPI
{
       Ifx_SRC_QSPI_QSPI QSPI[5];
} Ifx_SRC_QSPI;
# 260 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSCT_HSCT
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_HSCT_HSCT;
# 278 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSCT
{
       Ifx_SRC_HSCT_HSCT HSCT[1];
} Ifx_SRC_HSCT;
# 296 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSSL_HSSL_CH
{
       Ifx_SRC_SRCR COK;
       Ifx_SRC_SRCR RDI;
       Ifx_SRC_SRCR ERR;
       Ifx_SRC_SRCR TRG;
} Ifx_SRC_HSSL_HSSL_CH;
# 317 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSSL_HSSL
{
       Ifx_SRC_HSSL_HSSL_CH CH[4];
       Ifx_SRC_SRCR EXI;
} Ifx_SRC_HSSL_HSSL;
# 336 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSSL
{
       Ifx_SRC_HSSL_HSSL HSSL[1];
} Ifx_SRC_HSSL;
# 354 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_I2C_I2C
{
       Ifx_SRC_SRCR DTR;
       Ifx_SRC_SRCR ERR;
       Ifx_SRC_SRCR P;
       Ifx_UReg_8Bit reserved_C[4];
} Ifx_SRC_I2C_I2C;
# 375 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_I2C
{
       Ifx_SRC_I2C_I2C I2C[2];
} Ifx_SRC_I2C;
# 393 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SENT_SENT
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_SENT_SENT;
# 411 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SENT
{
       Ifx_SRC_SENT_SENT SENT[10];
} Ifx_SRC_SENT;
# 429 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_MSC_MSC
{
       Ifx_SRC_SRCR SR[5];
} Ifx_SRC_MSC_MSC;
# 447 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_MSC
{
       Ifx_SRC_MSC_MSC MSC[3];
} Ifx_SRC_MSC;
# 465 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CCU6_CCU
{
       Ifx_SRC_SRCR SR[4];
} Ifx_SRC_CCU6_CCU;
# 483 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CCU6
{
       Ifx_SRC_CCU6_CCU CCU[2];
} Ifx_SRC_CCU6;
# 501 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPT12_GPT12
{
       Ifx_SRC_SRCR CIRQ;
       Ifx_SRC_SRCR T2;
       Ifx_SRC_SRCR T3;
       Ifx_SRC_SRCR T4;
       Ifx_SRC_SRCR T5;
       Ifx_SRC_SRCR T6;
} Ifx_SRC_GPT12_GPT12;
# 524 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPT12
{
       Ifx_SRC_GPT12_GPT12 GPT12[1];
} Ifx_SRC_GPT12;
# 542 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_STM_STM
{
       Ifx_SRC_SRCR SR[2];
} Ifx_SRC_STM_STM;
# 560 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_STM
{
       Ifx_SRC_STM_STM STM[4];
} Ifx_SRC_STM;
# 578 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_FCE_FCE0
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_FCE_FCE0;
# 596 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_FCE
{
       Ifx_SRC_FCE_FCE0 FCE0;
} Ifx_SRC_FCE;
# 614 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DMA_DMA
{
       Ifx_SRC_SRCR ERR[4];
       Ifx_UReg_8Bit reserved_10[32];
       Ifx_SRC_SRCR CH[128];
} Ifx_SRC_DMA_DMA;
# 634 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DMA
{
       Ifx_SRC_DMA_DMA DMA[1];
} Ifx_SRC_DMA;
# 652 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GETH_GETH
{
       Ifx_SRC_SRCR SR[10];
} Ifx_SRC_GETH_GETH;
# 670 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GETH
{
       Ifx_SRC_GETH_GETH GETH[1];
} Ifx_SRC_GETH;
# 688 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CAN_CAN
{
       Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN_CAN;
# 706 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CAN
{
       Ifx_SRC_CAN_CAN CAN[3];
} Ifx_SRC_CAN;
# 724 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_VADC_G
{
       Ifx_SRC_SRCR SR0;
       Ifx_SRC_SRCR SR1;
       Ifx_SRC_SRCR SR2;
       Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADC_G;
# 745 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_VADC_FC
{
       Ifx_SRC_SRCR SR0;
} Ifx_SRC_VADC_FC;
# 764 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_VADC
{
       Ifx_SRC_VADC_G G[12];
       Ifx_SRC_VADC_FC FC[4];
       Ifx_UReg_8Bit reserved_D0[16];
       Ifx_SRC_VADC_G CG[2];
} Ifx_SRC_VADC;
# 785 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DSADC_DSADC
{
       Ifx_SRC_SRCR SRM;
       Ifx_SRC_SRCR SRA;
} Ifx_SRC_DSADC_DSADC;
# 804 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DSADC
{
       Ifx_SRC_DSADC_DSADC DSADC[10];
} Ifx_SRC_DSADC;
# 824 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ERAY_ERAY
{
       Ifx_SRC_SRCR INT0;
       Ifx_SRC_SRCR INT1;
       Ifx_SRC_SRCR TINT0;
       Ifx_SRC_SRCR TINT1;
       Ifx_SRC_SRCR NDAT0;
       Ifx_SRC_SRCR NDAT1;
       Ifx_SRC_SRCR MBSC0;
       Ifx_SRC_SRCR MBSC1;
       Ifx_SRC_SRCR OBUSY;
       Ifx_SRC_SRCR IBUSY;
       Ifx_UReg_8Bit reserved_28[8];
} Ifx_SRC_ERAY_ERAY;
# 852 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ERAY
{
       Ifx_SRC_ERAY_ERAY ERAY[2];
} Ifx_SRC_ERAY;
# 870 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSM_HSM
{
       Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM_HSM;
# 888 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSM
{
       Ifx_SRC_HSM_HSM HSM[1];
} Ifx_SRC_HSM;
# 906 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SCU
{
       Ifx_SRC_SRCR SCUERU[4];
} Ifx_SRC_SCU;
# 924 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PMS_PMS
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_PMS_PMS;
# 942 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PMS
{
       Ifx_SRC_PMS_PMS PMS[4];
} Ifx_SRC_PMS;
# 960 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SMU_SMU
{
       Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU_SMU;
# 978 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SMU
{
       Ifx_SRC_SMU_SMU SMU[1];
} Ifx_SRC_SMU;
# 996 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5_PSI5
{
       Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5_PSI5;
# 1014 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5
{
       Ifx_SRC_PSI5_PSI5 PSI5[1];
} Ifx_SRC_PSI5;
# 1032 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DAM_DAM
{
       Ifx_SRC_SRCR LI0;
       Ifx_SRC_SRCR RI0;
       Ifx_SRC_SRCR LI1;
       Ifx_SRC_SRCR RI1;
       Ifx_SRC_SRCR DR;
       Ifx_SRC_SRCR ERR;
} Ifx_SRC_DAM_DAM;
# 1055 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DAM
{
       Ifx_SRC_DAM_DAM DAM[1];
} Ifx_SRC_DAM;
# 1073 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5S_PSI5S
{
       Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5S_PSI5S;
# 1091 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5S
{
       Ifx_SRC_PSI5S_PSI5S PSI5S[1];
} Ifx_SRC_PSI5S;
# 1109 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPSR_GPSR
{
       Ifx_SRC_SRCR SR[8];
} Ifx_SRC_GPSR_GPSR;
# 1127 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPSR
{
       Ifx_SRC_GPSR_GPSR GPSR[4];
} Ifx_SRC_GPSR;
# 1155 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
       Ifx_SRC_CPU CPU;
       Ifx_UReg_8Bit reserved_10[16];
       Ifx_SRC_SRCR SBCU;
       Ifx_UReg_8Bit reserved_24[12];
       Ifx_SRC_SRCR XBAR0;
       Ifx_UReg_8Bit reserved_34[12];
       Ifx_SRC_CERBERUS CERBERUS;
       Ifx_UReg_8Bit reserved_48[8];
       Ifx_SRC_ASCLIN ASCLIN;
       Ifx_UReg_8Bit reserved_E0[12];
       Ifx_SRC_SRCR MTUDONE;
       Ifx_SRC_QSPI QSPI;
       Ifx_UReg_8Bit reserved_154[44];
       Ifx_SRC_HSCT HSCT;
       Ifx_UReg_8Bit reserved_184[12];
       Ifx_SRC_HSSL HSSL;
       Ifx_UReg_8Bit reserved_1D4[76];
       Ifx_SRC_I2C I2C;
       Ifx_SRC_SENT SENT;
       Ifx_UReg_8Bit reserved_268[8];
       Ifx_SRC_MSC MSC;
       Ifx_UReg_8Bit reserved_2AC[20];
       Ifx_SRC_CCU6 CCU6;
       Ifx_SRC_GPT12 GPT12;
       Ifx_UReg_8Bit reserved_2F8[8];
       Ifx_SRC_STM STM;
       Ifx_UReg_8Bit reserved_320[16];
       Ifx_SRC_FCE FCE;
       Ifx_UReg_8Bit reserved_334[12];
       Ifx_SRC_DMA DMA;
       Ifx_UReg_8Bit reserved_570[16];
       Ifx_SRC_GETH GETH;
       Ifx_UReg_8Bit reserved_5A8[8];
       Ifx_SRC_CAN CAN;
       Ifx_SRC_VADC VADC;
       Ifx_SRC_DSADC DSADC;
       Ifx_UReg_8Bit reserved_7C0[32];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN12;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN13;
       Ifx_UReg_8Bit reserved_7F8[8];
       Ifx_SRC_ERAY ERAY;
       Ifx_SRC_SRCR DMUHOST;
       Ifx_SRC_SRCR DMUFSI;
       Ifx_UReg_8Bit reserved_868[8];
       Ifx_SRC_HSM HSM;
       Ifx_UReg_8Bit reserved_878[8];
       Ifx_SRC_SCU SCU;
       Ifx_UReg_8Bit reserved_890[28];
       Ifx_SRC_SRCR PMSDTS;
       Ifx_SRC_PMS PMS;
       Ifx_SRC_SRCR SCR;
       Ifx_UReg_8Bit reserved_8C4[12];
       Ifx_SRC_SMU SMU;
       Ifx_UReg_8Bit reserved_8DC[4];
       Ifx_SRC_PSI5 PSI5;
       Ifx_UReg_8Bit reserved_900[16];
       Ifx_SRC_DAM DAM;
       Ifx_UReg_8Bit reserved_928[40];
       Ifx_SRC_PSI5S PSI5S;
       Ifx_UReg_8Bit reserved_970[32];
       Ifx_SRC_GPSR GPSR;
       Ifx_UReg_8Bit reserved_A10[64];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN14;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN15;
       Ifx_UReg_8Bit reserved_A68[8];
       Ifx_SRC_SRCR GTM_AEIIRQ;
       Ifx_SRC_SRCR GTM_ARUIRQ[3];
       Ifx_SRC_SRCR GTM_BRCIRQ;
       Ifx_SRC_SRCR GTM_CMBIRQ;
       Ifx_SRC_SRCR GTM_SPEIRQ[4];
       Ifx_UReg_8Bit reserved_A98[8];
       Ifx_SRC_SRCR GTM_PSM[2][8];
       Ifx_UReg_8Bit reserved_AE0[32];
       Ifx_SRC_SRCR GTM_DPLL[27];
       Ifx_UReg_8Bit reserved_B6C[4];
       Ifx_SRC_SRCR GTM_ERR;
       Ifx_UReg_8Bit reserved_B74[28];
       Ifx_SRC_SRCR GTM_TIM[7][8];
       Ifx_UReg_8Bit reserved_C70[32];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN16;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN17;
       Ifx_UReg_8Bit reserved_CA8[8];
       Ifx_SRC_SRCR GTM_MCS[7][8];
       Ifx_UReg_8Bit reserved_D90[96];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN18;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN19;
       Ifx_UReg_8Bit reserved_E08[8];
       Ifx_SRC_SRCR GTM_TOM[5][8];
       Ifx_UReg_8Bit reserved_EB0[32];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN20;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN21;
       Ifx_UReg_8Bit reserved_EE8[8];
       Ifx_SRC_SRCR GTM_ATOM[9][4];
       Ifx_UReg_8Bit reserved_F80[48];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN22;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN23;
       Ifx_UReg_8Bit reserved_FC8[8];
       Ifx_SRC_SRCR GTM_MCSW[10];
       Ifx_UReg_8Bit reserved_FF8[4104];
} Ifx_SRC;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h" 2
# 2 ".\\output\\inc/IfxSrc_reg.h" 2
# 44 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 1 ".\\output\\inc/IfxQspi_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h"
typedef struct _Ifx_QSPI_ACCEN0_Bits
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
} Ifx_QSPI_ACCEN0_Bits;


typedef struct _Ifx_QSPI_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_QSPI_ACCEN1_Bits;


typedef struct _Ifx_QSPI_BACON_Bits
{
    Ifx_UReg_32Bit LAST:1;
    Ifx_UReg_32Bit IPRE:3;
    Ifx_UReg_32Bit IDLE:3;
    Ifx_UReg_32Bit LPRE:3;
    Ifx_UReg_32Bit LEAD:3;
    Ifx_UReg_32Bit TPRE:3;
    Ifx_UReg_32Bit TRAIL:3;
    Ifx_UReg_32Bit PARTYP:1;
    Ifx_UReg_32Bit UINT:1;
    Ifx_UReg_32Bit MSB:1;
    Ifx_UReg_32Bit BYTE:1;
    Ifx_UReg_32Bit DL:5;
    Ifx_UReg_32Bit CS:4;
} Ifx_QSPI_BACON_Bits;


typedef struct _Ifx_QSPI_BACONENTRY_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_BACONENTRY_Bits;


typedef struct _Ifx_QSPI_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_QSPI_CLC_Bits;


typedef struct _Ifx_QSPI_DATAENTRY_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_DATAENTRY_Bits;


typedef struct _Ifx_QSPI_ECON_Bits
{
    Ifx_UReg_32Bit Q:6;
    Ifx_UReg_32Bit A:2;
    Ifx_UReg_32Bit B:2;
    Ifx_UReg_32Bit C:2;
    Ifx_UReg_32Bit CPH:1;
    Ifx_UReg_32Bit CPOL:1;
    Ifx_UReg_32Bit PAREN:1;
    Ifx_UReg_32Bit reserved_15:15;
    Ifx_UReg_32Bit BE:2;
} Ifx_QSPI_ECON_Bits;


typedef struct _Ifx_QSPI_FLAGSCLEAR_Bits
{
    Ifx_UReg_32Bit ERRORCLEARS:9;
    Ifx_UReg_32Bit TXC:1;
    Ifx_UReg_32Bit RXC:1;
    Ifx_UReg_32Bit PT1C:1;
    Ifx_UReg_32Bit PT2C:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit USRC:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_QSPI_FLAGSCLEAR_Bits;


typedef struct _Ifx_QSPI_GLOBALCON_Bits
{
    Ifx_UReg_32Bit TQ:8;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit SI:1;
    Ifx_UReg_32Bit EXPECT:4;
    Ifx_UReg_32Bit LB:1;
    Ifx_UReg_32Bit DEL0:1;
    Ifx_UReg_32Bit STROBE:5;
    Ifx_UReg_32Bit SRF:1;
    Ifx_UReg_32Bit STIP:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit MS:2;
    Ifx_UReg_32Bit AREN:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit CLKSEL:1;
    Ifx_UReg_32Bit RESETS:2;
} Ifx_QSPI_GLOBALCON_Bits;


typedef struct _Ifx_QSPI_GLOBALCON1_Bits
{
    Ifx_UReg_32Bit ERRORENS:9;
    Ifx_UReg_32Bit TXEN:1;
    Ifx_UReg_32Bit RXEN:1;
    Ifx_UReg_32Bit PT1EN:1;
    Ifx_UReg_32Bit PT2EN:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit USREN:1;
    Ifx_UReg_32Bit TXFIFOINT:2;
    Ifx_UReg_32Bit RXFIFOINT:2;
    Ifx_UReg_32Bit PT1:3;
    Ifx_UReg_32Bit PT2:3;
    Ifx_UReg_32Bit TXFM:2;
    Ifx_UReg_32Bit RXFM:2;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_QSPI_GLOBALCON1_Bits;


typedef struct _Ifx_QSPI_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_QSPI_ID_Bits;


typedef struct _Ifx_QSPI_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_QSPI_KRST0_Bits;


typedef struct _Ifx_QSPI_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_QSPI_KRST1_Bits;


typedef struct _Ifx_QSPI_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_QSPI_KRSTCLR_Bits;


typedef struct _Ifx_QSPI_MC_Bits
{
    Ifx_UReg_32Bit MCOUNT:13;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit CURRENT:13;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_QSPI_MC_Bits;


typedef struct _Ifx_QSPI_MCCON_Bits
{
    Ifx_UReg_32Bit TPRE2:3;
    Ifx_UReg_32Bit TRAIL2:3;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit IBLEN:1;
    Ifx_UReg_32Bit IBLF:1;
    Ifx_UReg_32Bit IBLC:1;
    Ifx_UReg_32Bit IBLS:1;
    Ifx_UReg_32Bit IALEN:1;
    Ifx_UReg_32Bit IALF:1;
    Ifx_UReg_32Bit IALC:1;
    Ifx_UReg_32Bit IALS:1;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit T2EN:1;
    Ifx_UReg_32Bit MCEN:1;
} Ifx_QSPI_MCCON_Bits;


typedef struct _Ifx_QSPI_MIXENTRY_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_MIXENTRY_Bits;


typedef struct _Ifx_QSPI_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit reserved_4:20;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_QSPI_OCS_Bits;


typedef struct _Ifx_QSPI_PISEL_Bits
{
    Ifx_UReg_32Bit MRIS:3;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit SRIS:3;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit SCIS:3;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit SLSIS:3;
    Ifx_UReg_32Bit reserved_15:17;
} Ifx_QSPI_PISEL_Bits;


typedef struct _Ifx_QSPI_RXEXIT_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_RXEXIT_Bits;


typedef struct _Ifx_QSPI_RXEXITD_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_RXEXITD_Bits;


typedef struct _Ifx_QSPI_SSOC_Bits
{
    Ifx_UReg_32Bit AOL:16;
    Ifx_UReg_32Bit OEN:16;
} Ifx_QSPI_SSOC_Bits;


typedef struct _Ifx_QSPI_STATUS_Bits
{
    Ifx_UReg_32Bit ERRORFLAGS:9;
    Ifx_UReg_32Bit TXF:1;
    Ifx_UReg_32Bit RXF:1;
    Ifx_UReg_32Bit PT1F:1;
    Ifx_UReg_32Bit PT2F:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit USRF:1;
    Ifx_UReg_32Bit TXFIFOLEVEL:3;
    Ifx_UReg_32Bit RXFIFOLEVEL:3;
    Ifx_UReg_32Bit SLAVESEL:4;
    Ifx_UReg_32Bit RPV:1;
    Ifx_UReg_32Bit TPV:1;
    Ifx_UReg_32Bit PHASE:4;
} Ifx_QSPI_STATUS_Bits;


typedef struct _Ifx_QSPI_STATUS1_Bits
{
    Ifx_UReg_32Bit BITCOUNT:8;
    Ifx_UReg_32Bit reserved_8:20;
    Ifx_UReg_32Bit BRDEN:1;
    Ifx_UReg_32Bit BRD:1;
    Ifx_UReg_32Bit SPDEN:1;
    Ifx_UReg_32Bit SPD:1;
} Ifx_QSPI_STATUS1_Bits;


typedef struct _Ifx_QSPI_XXLCON_Bits
{
    Ifx_UReg_32Bit XDL:16;
    Ifx_UReg_32Bit BYTECOUNT:16;
} Ifx_QSPI_XXLCON_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ACCEN0_Bits B;
} Ifx_QSPI_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ACCEN1_Bits B;
} Ifx_QSPI_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_BACON_Bits B;
} Ifx_QSPI_BACON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_BACONENTRY_Bits B;
} Ifx_QSPI_BACONENTRY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_CLC_Bits B;
} Ifx_QSPI_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_DATAENTRY_Bits B;
} Ifx_QSPI_DATAENTRY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ECON_Bits B;
} Ifx_QSPI_ECON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_FLAGSCLEAR_Bits B;
} Ifx_QSPI_FLAGSCLEAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_GLOBALCON_Bits B;
} Ifx_QSPI_GLOBALCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_GLOBALCON1_Bits B;
} Ifx_QSPI_GLOBALCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ID_Bits B;
} Ifx_QSPI_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_KRST0_Bits B;
} Ifx_QSPI_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_KRST1_Bits B;
} Ifx_QSPI_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_KRSTCLR_Bits B;
} Ifx_QSPI_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_MC_Bits B;
} Ifx_QSPI_MC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_MCCON_Bits B;
} Ifx_QSPI_MCCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_MIXENTRY_Bits B;
} Ifx_QSPI_MIXENTRY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_OCS_Bits B;
} Ifx_QSPI_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_PISEL_Bits B;
} Ifx_QSPI_PISEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_RXEXIT_Bits B;
} Ifx_QSPI_RXEXIT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_RXEXITD_Bits B;
} Ifx_QSPI_RXEXITD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_SSOC_Bits B;
} Ifx_QSPI_SSOC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_STATUS_Bits B;
} Ifx_QSPI_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_STATUS1_Bits B;
} Ifx_QSPI_STATUS1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_XXLCON_Bits B;
} Ifx_QSPI_XXLCON;
# 579 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h"
typedef volatile struct _Ifx_QSPI
{
       Ifx_QSPI_CLC CLC;
       Ifx_QSPI_PISEL PISEL;
       Ifx_QSPI_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_QSPI_GLOBALCON GLOBALCON;
       Ifx_QSPI_GLOBALCON1 GLOBALCON1;
       Ifx_QSPI_BACON BACON;
       Ifx_UReg_8Bit reserved_1C[4];
       Ifx_QSPI_ECON ECON[8];
       Ifx_QSPI_STATUS STATUS;
       Ifx_QSPI_STATUS1 STATUS1;
       Ifx_QSPI_SSOC SSOC;
       Ifx_UReg_8Bit reserved_4C[8];
       Ifx_QSPI_FLAGSCLEAR FLAGSCLEAR;
       Ifx_QSPI_XXLCON XXLCON;
       Ifx_QSPI_MIXENTRY MIXENTRY;
       Ifx_QSPI_BACONENTRY BACONENTRY;
       Ifx_QSPI_DATAENTRY DATAENTRY[8];
       Ifx_UReg_8Bit reserved_84[12];
       Ifx_QSPI_RXEXIT RXEXIT;
       Ifx_QSPI_RXEXITD RXEXITD;
       Ifx_UReg_8Bit reserved_98[12];
       Ifx_QSPI_MC MC;
       Ifx_QSPI_MCCON MCCON;
       Ifx_UReg_8Bit reserved_AC[60];
       Ifx_QSPI_OCS OCS;
       Ifx_QSPI_KRSTCLR KRSTCLR;
       Ifx_QSPI_KRST1 KRST1;
       Ifx_QSPI_KRST0 KRST0;
       Ifx_QSPI_ACCEN1 ACCEN1;
       Ifx_QSPI_ACCEN0 ACCEN0;
} Ifx_QSPI;
# 69 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h" 2
# 2 ".\\output\\inc/IfxQspi_reg.h" 2
# 45 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2





# 1 ".\\output\\inc/HtxStpIf.h" 1
# 51 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 1 ".\\output\\inc/HtxTLF35584Qspi_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxTLF35584Qspi_Cfg.h" 1
# 2 ".\\output\\inc/HtxTLF35584Qspi_Cfg.h" 2
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 62 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
typedef void (*HtxTLF35584Qspi_UserCbkFuncType)(void);


typedef struct HtxTLF35584Qspi_ModConfigType
{
    volatile Ifx_QSPI* QspiModule;
    volatile Ifx_SRC_SRCR* SrcTxRegister;
    volatile Ifx_SRC_SRCR* SrcRxRegister;
    uint8 TxDmaChannel;
    uint8 RxDmaChannel;
    uint8 RcvInputSel;
    uint8 ModTimeQuantum;
    HtxTLF35584Qspi_UserCbkFuncType UserFunc;
} HtxTLF35584Qspi_ModConfigType;






typedef struct HtxTLF35584Qspi_ChConfigType
{
    uint8 Channel;
    uint8 SlsoActiveLevel;

    uint8 ChTimeQuantum;
    uint8 BitSeg1;
    uint8 BitSeg2;
    uint8 BitSeg3;

    uint8 ClockPhase;
    uint8 ClockPol;
    uint8 ParityEn;
    uint8 ParityType;
    uint8 MsbFirst;
    uint8 DataLength;
    uint8 IdlePrescaler;
    uint8 IdleDelay;
    uint8 LeadPrescaler;
    uint8 LeadDelay;
    uint8 TrailPrescaler;
    uint8 TrailDelay;

} HtxTLF35584Qspi_ChConfigType;
# 130 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 167 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern Std_ReturnType HtxTLF35584Qspi_Init
(
    const HtxTLF35584Qspi_ChConfigType* const ConfigPtr
);
# 204 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern void HtxTLF35584Qspi_DeInit(void);
# 250 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern void HtxTLF35584Qspi_TxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint8 Count
);
# 307 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern Std_ReturnType HtxTLF35584Qspi_CustTxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint32 BACONRegisterValue,
    uint8 Count
);
# 354 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern Std_ReturnType HtxTLF35584Qspi_RxDone(uint32* Error);
# 399 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 400 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 411 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 412 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2

extern const HtxTLF35584Qspi_ModConfigType HtxTLF35584Qspi_ModConfigRoot;

extern const HtxTLF35584Qspi_ChConfigType HtxTLF35584Qspi_ChConfigRoot[(1U)];







# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 424 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 2 ".\\output\\inc/HtxTLF35584Qspi.h" 2
# 56 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 66 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
typedef enum
{
    TLF_WM_FWD = 0,
    TLF_WM_FWD_WWD_SPI,
    TLF_WM_WWD_WDI,
    TLF_WM_WWD_SPI
} HtxTLF35584_WdgModeType;





typedef struct HtxTLF35584_ConfigType
{

    const HtxTLF35584Qspi_ChConfigType* QspiCfgPtr;

    HtxTLF35584_WdgModeType WatchdogMode;
    uint8 HeartbeatBase;
    uint8 OpenWindowHeartbeat;
    uint8 CloseWindowHeartbeat;
    uint8 FwdHeartbeat;

    uint8 WWDWdgErrorThreshold;

    uint8 FWDWdgErrorThreshold;
    volatile Ifx_P* WdiPort;
    uint8 WdiPin;

    uint32 XorResponse[(16U)];
} HtxTLF35584_ConfigType;
# 116 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
# 1 ".\\output\\inc/HtxTLF35584_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTLF35584_MemMap.h" 2
# 117 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 150 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_Init(const HtxTLF35584_ConfigType* const ConfigPtr);
# 183 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_DeInit(void);
# 222 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_Activate(void);
# 270 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_Service(const uint32 Signature);
# 306 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_GetWdgInfo(void);
# 344 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_GetSeed(uint8* const NextSeedPtr);
# 381 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ExtWdgStateType HtxTLF35584_GetState(void);
# 416 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_GetJobResult(void);
# 467 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_UserRequest
(
    HtxWdgIf_CmdType* const UserCmdPtr,
    const uint8 Count
);
# 508 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern void HtxTLF35584_MainFunction(void);
# 545 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_GetErrCntr(uint8* const ErrCtrPtr);
# 554 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
# 1 ".\\output\\inc/HtxTLF35584_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584_MemMap.h" 2
# 555 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 566 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
# 1 ".\\output\\inc/HtxTLF35584_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxTLF35584_MemMap.h" 2
# 567 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2

extern const HtxTLF35584_ConfigType HtxTLF35584_ConfigRoot[(1U)];







# 1 ".\\output\\inc/HtxTLF35584_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584_MemMap.h" 2
# 577 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 2 ".\\output\\inc/HtxTLF35584.h" 2
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxWdgIf_Cfg.h" 2
# 2 ".\\output\\inc/HtxWdgIf_Cfg.h" 2
# 50 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 64 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2

extern const HtxWdgIf_ConfigType HtxWdgIf_ConfigRoot[(1u)];


# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 70 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 85 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 86 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 123 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_Init(const HtxWdgIf_ConfigType* const ConfigPtr);
# 159 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_DeInit(void);
# 200 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_Activate(void);
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_Service(const uint32 Signature);
# 281 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_GetSeed(uint8* const NextSeedPtr);
# 317 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_StateType HtxWdgIf_GetState(void);
# 356 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_GetWdgInfo(void);
# 392 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern void HtxWdgIf_MainFunction(void);
# 434 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_GetErrCntr(uint8* const ErrCtrPtr);
# 483 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_UserRequest
(
    HtxWdgIf_CmdType* const UserCmdPtr,
    uint8 Count
);
# 548 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_GetJobResult(void);
# 559 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 560 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 2 ".\\output\\inc/HtxWdgIf.h" 2
# 45 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c" 2
# 57 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
typedef struct HtxWdgIf_DataType
{

    const HtxWdgIf_ConfigType* ConfigPtr;

    uint32 Crc;
} HtxWdgIf_DataType;
# 79 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 48 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section "ClearedData.LmuNC.32bit" aw 4
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 80 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c" 2

static HtxWdgIf_DataType HtxWdgIfData;







# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 61 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 90 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c" 2
# 101 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 102 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c" 2

static Std_ReturnType HtxWdgIf_lCheckDataCrc(void);
static void HtxWdgIf_lSetDataCrc(void);







# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 113 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c" 2
# 124 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 125 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c" 2
# 162 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_ResultType HtxWdgIf_Init(const HtxWdgIf_ConfigType* const ConfigPtr)
{
    volatile HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_INV_PARAM;


    if(ConfigPtr != ((void *)0))
    {
        HtxWdgIfData.ConfigPtr = ConfigPtr;





        {
# 187 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
            {


                if(ConfigPtr->DriverExtConfigPtr != ((void *)0))
                {



                    Result = (HtxTLF35584_Init((ConfigPtr->DriverExtConfigPtr)));
                }
                else
                {
                    Result = HTXWDGIF_JOB_INV_PARAM;
                }

            }

        }
        HtxWdgIf_lSetDataCrc();

    }

    return (Result);

}
# 247 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_ResultType HtxWdgIf_DeInit(void)
{
    HtxWdgIf_ResultType Result;
# 262 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
    Result = (HtxTLF35584_DeInit());

    if((Result == HTXWDGIF_JOB_SUCCESS) ||
       (Result == HTXWDGIF_JOB_ACCEPTED))

    {



        HtxWdgIfData.ConfigPtr = ((void *)0);
        HtxWdgIfData.Crc ^= ~((0x0U));
    }


    HtxWdgIf_lSetDataCrc();

    return (Result);

}
# 322 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_ResultType HtxWdgIf_Activate(void)
{
    volatile HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxWdgIf_lCheckDataCrc() == 0x00u)
    {
# 338 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
        {


            Result = (HtxTLF35584_Activate());

        }
    }

    return (Result);

}
# 390 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_ResultType HtxWdgIf_Service(const uint32 Signature)
{
    volatile HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxWdgIf_lCheckDataCrc() == 0x00u)
    {
# 408 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
        {


            Result = (HtxTLF35584_Service((Signature)));

        }
    }

    return (Result);

}
# 456 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_ResultType HtxWdgIf_GetSeed(uint8* const NextSeedPtr)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_INV_PARAM;

    if(NextSeedPtr != ((void *)0))
    {
        if(HtxWdgIf_lCheckDataCrc() == 0x00u)
        {

            Result = (HtxTLF35584_GetSeed((NextSeedPtr)));
# 477 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
        }
        else
        {
            Result = HTXWDGIF_JOB_FAILED_CRC;
        }
    }

    return (Result);

}
# 522 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_StateType HtxWdgIf_GetState(void)
{
    HtxWdgIf_StateType WdgState;

    WdgState.IntWdgState = HTXWDGIF_INT_SWDG_UNKNOWN;
    WdgState.ExtWdgState = HTXWDGIF_EXT_TLF_UNDEFINED1;


    if(HtxWdgIf_lCheckDataCrc() == 0x00u)
    {







        WdgState.ExtWdgState = (HtxTLF35584_GetState());

    }

    return (WdgState);
}
# 584 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_ResultType HtxWdgIf_GetWdgInfo(void)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxWdgIf_lCheckDataCrc() == 0x00u)
    {

        Result = (HtxTLF35584_GetWdgInfo());
    }

    return (Result);
}
# 634 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
void HtxWdgIf_MainFunction(void)
{
    if(HtxWdgIf_lCheckDataCrc() == 0x00u)
    {

        (HtxTLF35584_MainFunction());
    }
}
# 684 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_ResultType HtxWdgIf_GetErrCntr(uint8* const ErrCtrPtr)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_INV_PARAM;

    if(ErrCtrPtr != ((void *)0))
    {
        if(HtxWdgIf_lCheckDataCrc() == 0x00u)
        {

            Result = (HtxTLF35584_GetErrCntr((ErrCtrPtr)));
        }
        else
        {
            Result = HTXWDGIF_JOB_FAILED_CRC;
        }
    }
    return (Result);

}
# 752 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_ResultType HtxWdgIf_UserRequest
(
    HtxWdgIf_CmdType* const UserCmdPtr,
    uint8 Count
)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_INV_PARAM;

    if((UserCmdPtr != ((void *)0)) && (Count > 0U))
    {
        if(HtxWdgIf_lCheckDataCrc() == 0x00u)
        {

             Result = (HtxTLF35584_UserRequest((UserCmdPtr),(Count)));
        }
        else
        {
            Result = HTXWDGIF_JOB_FAILED_CRC;
        }
    }

    return (Result);

}
# 837 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
HtxWdgIf_ResultType HtxWdgIf_GetJobResult(void)
{
    HtxWdgIf_ResultType RetVal;

    RetVal = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxWdgIf_lCheckDataCrc() == 0x00u)
    {

        RetVal = (HtxTLF35584_GetJobResult());
    }
    return(RetVal);

}
# 889 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
static Std_ReturnType HtxWdgIf_lCheckDataCrc(void)
{
    uint32 CurrCrc;
    Std_ReturnType lRetVal;


    lRetVal = 0x01u;
    CurrCrc = 0U;





    CurrCrc = (uint32)(__crc32bw((unsigned int)((uint32)(CurrCrc)),(unsigned int)((uint32)((uint32)HtxWdgIfData.ConfigPtr))));

    if(CurrCrc == HtxWdgIfData.Crc)
    {
        lRetVal = 0x00u;
    }

    return lRetVal;
}
# 943 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
static void HtxWdgIf_lSetDataCrc(void)
{
    uint32 CurrCrc = 0U;
# 954 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c"
    CurrCrc = (uint32)(__crc32bw((unsigned int)((uint32)(CurrCrc)),(unsigned int)((uint32)((uint32)HtxWdgIfData.ConfigPtr))));

    HtxWdgIfData.Crc = CurrCrc;

}







# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 967 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\src\\HtxWdgIf.c" 2
