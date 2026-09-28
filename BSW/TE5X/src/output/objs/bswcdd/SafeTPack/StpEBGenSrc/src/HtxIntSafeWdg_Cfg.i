# 1 "bswcdd\\SafeTPack\\StpEBGenSrc\\src\\HtxIntSafeWdg_Cfg.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\SafeTPack\\StpEBGenSrc\\src\\HtxIntSafeWdg_Cfg.c"
# 40 "bswcdd\\SafeTPack\\StpEBGenSrc\\src\\HtxIntSafeWdg_Cfg.c"
# 1 ".\\output\\inc/HtxIntSafeWdg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h" 1
# 49 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
# 1 ".\\output\\inc/HtxWdgIf_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h" 1
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h"
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
# 2 ".\\output\\inc/HtxWdgIf_Types.h" 2
# 50 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h" 2
# 1 ".\\output\\inc/HtxIntSafeWdg_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxIntSafeWdg_Cfg.h" 1
# 2 ".\\output\\inc/HtxIntSafeWdg_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h" 2
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h" 2
# 62 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
typedef struct HtxIntSafeWdg_SignaturesType
{

    uint32 BaseValue;

    uint32 ExptdTstSig;
} HtxIntSafeWdg_SignaturesType;


typedef struct HtxIntSafeWdg_ConfigType
{

    uint8 SwdtInputFreq;

    uint16 SwdtTimerReload;

    HtxIntSafeWdg_SignaturesType SwdtSignTable[(16U)];
} HtxIntSafeWdg_ConfigType;
# 91 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
# 1 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 2
# 92 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h" 2

extern const HtxIntSafeWdg_ConfigType HtxIntSafeWdg_ConfigRoot[(1U)];







# 1 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 2
# 102 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h" 2
# 117 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
# 1 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 2
# 118 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h" 2
# 150 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
extern HtxWdgIf_ResultType HtxIntSafeWdg_Init(const HtxIntSafeWdg_ConfigType* const ConfigPtr);
# 184 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
extern void HtxIntSafeWdg_DeInit(void);
# 218 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
extern HtxWdgIf_ResultType HtxIntSafeWdg_Activate(void);
# 262 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
extern HtxWdgIf_ResultType HtxIntSafeWdg_Service(const uint32 Signature);
# 307 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
extern HtxWdgIf_IntWdgStateType HtxIntSafeWdg_GetState(void);
# 350 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h"
extern HtxWdgIf_ResultType HtxIntSafeWdg_GetSeed(uint8* const NextSeedPtr);







# 1 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 2
# 359 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\02_HtxIntSafeWdg\\inc\\HtxIntSafeWdg.h" 2
# 2 ".\\output\\inc/HtxIntSafeWdg.h" 2
# 41 "bswcdd\\SafeTPack\\StpEBGenSrc\\src\\HtxIntSafeWdg_Cfg.c" 2
# 75 "bswcdd\\SafeTPack\\StpEBGenSrc\\src\\HtxIntSafeWdg_Cfg.c"
# 1 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 2
# 76 "bswcdd\\SafeTPack\\StpEBGenSrc\\src\\HtxIntSafeWdg_Cfg.c" 2


const HtxIntSafeWdg_ConfigType HtxIntSafeWdg_ConfigRoot[(1U)] =
{
    {
        0U,

        65352U,

        {
            {(0x000CU), 0xB1FEB757U},
            {(0x000CU)+0x300u, 0xE4F3C7A6U},
            {(0x000CU)+0x500u, 0xAFA19196U},
            {(0x000CU)+0x700u, 0xFAACE167U},
            {(0x000CU)+0x900u, 0x65A54D8FU},
            {(0x000CU)+0xb00u, 0x30A83D7EU},
            {(0x000CU)+0xd00u, 0x7BFA6B4EU},
            {(0x000CU)+0xf00u, 0x2EF71BBFU},
            {(0x000CU)+0xe00u, 0x0BD49101U},
            {(0x000CU)+0xc00u, 0x5ED9E1F0U},
            {(0x000CU)+0xa00u, 0x158BB7C0U},
            {(0x000CU)+0x800u, 0x4086C731U},
            {(0x000CU)+0x600u, 0xDF8F6BD9U},
            {(0x000CU)+0x400u, 0x8A821B28U},
            {(0x000CU)+0x200u, 0xC1D04D18U},
            {(0x000CU)+0x100u, 0x94DD3DE9U}
        }
    }
};







# 1 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxIntSafeWdg_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxIntSafeWdg_MemMap.h" 2
# 113 "bswcdd\\SafeTPack\\StpEBGenSrc\\src\\HtxIntSafeWdg_Cfg.c" 2
