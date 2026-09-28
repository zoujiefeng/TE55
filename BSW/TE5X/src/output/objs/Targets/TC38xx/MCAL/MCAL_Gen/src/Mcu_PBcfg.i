# 1 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
# 43 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
# 1 ".\\output\\inc/Mcu.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h" 1
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
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
# 44 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h" 2
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
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h" 2

# 1 ".\\output\\inc/Mcu_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_Cfg.h" 1
# 2 ".\\output\\inc/Mcu_Cfg.h" 2
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h" 2
# 210 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
typedef uint32 Mcu_ExternalClockConfigType;




typedef uint32 Mcu_ClockType;




typedef uint32 Mcu_RamSectionType;





typedef uint32 Mcu_RawResetType;




typedef void* Mcu_RamBaseAdrType;



typedef uint32 Mcu_RamSizeType;



typedef uint8 Mcu_RamPrstDatType;




typedef uint8 Mcu_ModeType;




typedef enum
{
  MCU_PLL_LOCKED = 0x0U,
  MCU_PLL_UNLOCKED,
  MCU_PLL_STATUS_UNDEFINED
} Mcu_PllStatusType;




typedef enum
{
  MCU_ESR0_RESET = 0x00U,
  MCU_ESR1_RESET = 0x01U,
  MCU_SMU_RESET = 0x02U,
  MCU_SW_RESET = 0x03U,
  MCU_STM0_RESET = 0x04U,
  MCU_STM1_RESET = 0x05U,
  MCU_STM2_RESET = 0x06U,
  MCU_STM3_RESET = 0x07U,
  MCU_STM4_RESET = 0x08U,
  MCU_STM5_RESET = 0x09U,
  MCU_POWER_ON_RESET = 0x0AU,
  MCU_CB0_RESET = 0x0BU,
  MCU_CB1_RESET = 0x0CU,
  MCU_CB3_RESET = 0x0DU,
  MCU_EVRC_RESET = 0x0EU,
  MCU_EVR33_RESET = 0x0FU,
  MCU_SUPPLY_WDOG_RESET = 0x10U,
  MCU_STBYR_RESET = 0x11U,
  MCU_LBIST_RESET = 0x12U,
  MCU_RESET_MULTIPLE = 0xFEU,
  MCU_RESET_UNDEFINED = 0xFFU
} Mcu_ResetType;




typedef enum
{
  MCU_CPU0 = 0x0U,

  MCU_CPU1 = 0x1U,


  MCU_CPU2 = 0x2U,


  MCU_CPU3 = 0x3U,







} Mcu_CpuIdType;





typedef enum
{
  MCU_RAMSTATE_INVALID = 0x0U,
  MCU_RAMSTATE_VALID = 0x1U
} Mcu_RamStateType;






typedef enum
{
  MCU_CPU_NORMAL_MODE = 0x1U,
  MCU_CPU_IDLE_MODE_REQ = 0x2U,
  MCU_CPU_IDLE_MODE_ACK = 0x3U,
  MCU_CPU_SLEEP_MODE_REQ = 0x4U,
  MCU_CPU_STANDBY_MODE_REQ = 0x6U,
  MCU_CPU_UNDEFINED_MODE = 0xFFU
} Mcu_CpuModeType;



typedef enum
{
  MCU_TRAP_ESR0 = 0x0U,
  MCU_TRAP_ESR1 = 0x1U,
  MCU_TRAP_TRAP2 = 0x2U,
  MCU_TRAP_SMU = 0x3U,
  MCU_TRAP_INVALID = 0x4U
} Mcu_TrapRequestType;






typedef struct
{
  unsigned_int Insel : 2;
  unsigned_int SysPllPDiv : 3;
  unsigned_int SysPllNDiv : 7;
  unsigned_int SysPllK2Div : 3;
  unsigned_int FmPllEn : 1;

  unsigned_int ModulationAmplitude : 16;
} Mcu_SystemPllConfigType;







typedef struct
{
  unsigned_int PerPllNDiv : 7;
  unsigned_int PerPllPDiv : 3;
  unsigned_int PerPllK2Div : 3;
  unsigned_int PerPllK3Div : 3;
  unsigned_int K3DivByPass : 1;
  unsigned_int Reserved : 15;
} Mcu_PeripheralPllConfigType;







typedef struct
{
  uint32 Ccucon0;
  uint32 Ccucon1;
  uint32 Ccucon2;




  uint32 Ccucon5;

  uint32 CcuconCpu[(0x4U)];
} Mcu_PllDistributionConfigType;







typedef struct
{

  Mcu_SystemPllConfigType SystemPllCfg;

  Mcu_PeripheralPllConfigType PeripheralPllCfg;

  uint32 SysPllK2DivStepUpChangeDelay;

  uint32 SysPllK2DivStepDownChangeDelay;

  uint32 PeripheralPllK2StepUpChangeDelay;

  uint32 PeripheralPllK2StepDownChangeDelay;

  uint32 PeripheralPllK3StepUpChangeDelay;

  uint32 PeripheralPllK3StepDownChangeDelay;

  const Mcu_PllDistributionConfigType *PllDistributionCfgPtr;

  Mcu_ExternalClockConfigType ExternalClockCfg;

  uint16 BackupFreqKDiv;

  uint8 ConvCtrlBlockConf;
} Mcu_ClockConfigType;






typedef struct
{
  Mcu_RamBaseAdrType RamBaseAdrPtr;
  Mcu_RamSizeType RamSize;
  Mcu_RamPrstDatType RamPrstData;
} Mcu_RamConfigType;







typedef struct
{
  unsigned_int McuMode : 3;
  unsigned_int EvrcLowPowerMode : 1;
  unsigned_int Reserved : 28;
} Mcu_ModeEvrcCtrlType;
# 469 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
typedef struct
{

  Mcu_ModeEvrcCtrlType MaxModeEvrcCtrl;

  uint32 Pmswcr0;

  uint32 Pmswcr3;

  uint32 Pmswcr4;

  uint32 Pmswcr5;



} Mcu_LowPowerModeType;







typedef struct
{

  uint32 GtmCmuExtClockNum;

  uint32 GtmCmuExtClockDen;
} Mcu_GtmExtClkType;






typedef struct
{

  uint32 GtmCmuClockEnable;

  uint32 GtmCmuGlobalNumerator;

  uint32 GtmCmuGlobalDenominator;

  uint32 GtmCmuConfClkCtrl[(8U)];

  uint32 GtmCmuFixedClkCtrl;

  uint32 GtmCmuClsInDiv;

  Mcu_GtmExtClkType GtmEclkCtrl[(3U)];
} Mcu_GtmClockSettingType;






typedef struct
{

  uint32 GtmCcmCfg;

  uint32 GtmCcmConfClockCfg;

  uint32 GtmCcmFixedClockCfg;
} Mcu_GtmClusterConfigType;






typedef struct
{







  uint32 TomTgcIntTrigRstCn0;




  uint32 TomTgcActTb;
} Mcu_GtmTomConfigType;






typedef struct
{







  uint32 AtomAgcIntTrigRstCn0;




  uint32 AtomAgcActTb;
} Mcu_GtmAtomConfigType;






typedef struct
{
  uint32 GtmAdcTrigOut0;
  uint32 GtmAdcTrigOut1;
} Mcu_GtmAdcTrigType;



typedef struct
{
  uint32 GtmDsadcTrigOut0;
  uint32 GtmDsadcTrigOut1;
} Mcu_GtmDsadcTrigType;







typedef struct
{

  const Mcu_GtmClockSettingType *GtmClockCfgPtr;

  const Mcu_GtmClusterConfigType *GtmClusterCfgPtr;

  Mcu_GtmTomConfigType GtmTomCfg[(5U) * 2U];

  Mcu_GtmAtomConfigType GtmAtomCfg[(9U)];

  Mcu_GtmAdcTrigType GtmAdcTrigCfg[(5U)];

  Mcu_GtmDsadcTrigType GtmDsadcTrigCfg[(4U)];

  uint32 GtmToutSelCfg[(34U)];

  uint32 GtmToutSelCfgMsk[(34U)];

  uint32 GtmTbuCfg;

  uint16 GtmTomModuleUsage;

  uint16 GtmAtomModuleUsage;

  boolean IsGtmSleepModeEnabled;
} Mcu_GtmConfigType;
# 643 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
typedef struct
{

  const Mcu_ClockConfigType *McuClockSettingPtr;

  const Mcu_RamConfigType *McuRamCfgPtr;


  const Mcu_GtmConfigType *McuGtmConfigPtr;






  const Mcu_LowPowerModeType *McuLowPowerModeCfgPtr;

  uint32 McuResetCfg;

  uint32 McuArstDisCfg;

  uint32 McuTrapSettingConf0;




  uint32 McuEruEiFiltCfg;

  Mcu_ClockType McuNoOfClockCfg;

  Mcu_RamSectionType McuNoOfRamCfg;
# 686 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
} Mcu_ConfigType;
# 705 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 300 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 706 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h" 2
# 731 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
extern void Mcu_Init(const Mcu_ConfigType * const ConfigPtr);
# 760 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
extern Std_ReturnType Mcu_InitRamSection(const Mcu_RamSectionType RamSection );
# 801 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
extern Std_ReturnType Mcu_InitClock(const Mcu_ClockType ClockSetting);
# 830 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
extern Std_ReturnType Mcu_DistributePllClock( void );
# 857 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
extern Mcu_PllStatusType Mcu_GetPllStatus( void );
# 881 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
extern Mcu_ResetType Mcu_GetResetReason( void );
# 905 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
extern Mcu_RawResetType Mcu_GetResetRawValue( void );
# 930 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
extern void Mcu_PerformReset( void );
# 958 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
extern void Mcu_SetMode(const Mcu_ModeType McuMode);
# 1386 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 312 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 1387 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h" 2



# 1 ".\\output\\inc/Mcu_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_PBcfg.h" 1
# 59 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_PBcfg.h"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 211 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 60 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_PBcfg.h" 2

extern const Mcu_ConfigType Mcu_Config;
# 75 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_PBcfg.h"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 224 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 76 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Mcu_PBcfg.h" 2
# 2 ".\\output\\inc/Mcu_PBcfg.h" 2
# 1391 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h" 2
# 2 ".\\output\\inc/Mcu.h" 2
# 44 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c" 2
# 54 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 211 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 55 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c" 2
# 68 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
static const Mcu_PllDistributionConfigType Mcu_kPllDistributionConfiguration_Config_0 =
{

  0x17230113U,

  0x12000294U,

  0x07001802U,

  0x00000032U,

  {
    0x00000000U,
    0x00000000U,
    0x00000000U,
    0x00000000U
  }
};
# 94 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
static const Mcu_ClockConfigType Mcu_kClockConfiguration_Config[1] =
{

  {

    {
      1U,
      0U,
      29U,
      1U,
      0U,
      0U
    },

    {
      31U,
      0U,
      3U,
      1U,
      0U,
      0U
    },

    10U,

    10U,

    10U,

    10U,

    10U,

    10U,

    &Mcu_kPllDistributionConfiguration_Config_0,

    0x00000000U,

    0x0355U,

    0x00U,
  },
};
# 151 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
static const Mcu_LowPowerModeType Mcu_kLowPowerModeConfiguration_Config =
{

  {
    0x1U,
    0x0U,
    0U
  },

  0x00000000U,

  0x00000000U,

  0x00000000U,

  0x00000000U
};

                                    static const Mcu_GtmClockSettingType Mcu_kGtmClockConfigPtr_Config =
{

  0x0080aaaaU,

  0x00000001U,

  0x00000001U,


  {
    0x00000009U,
    0x00000004U,
    0x00000000U,
    0x00000031U,
    0x0000013fU,
    0x0000027fU,
    0x0000c34fU,
    0x00030d3fU
  },


    0x00000000U,


  0x0002aaaaU,


  {

    {1U, 1U},

    {1U, 1U},

    {1U, 1U}
  }
};

static const Mcu_GtmClusterConfigType Mcu_kGtmClusterConfigPtr_Config[9] =
{


  {

    0x00000007U,

    0x00000000U,

    0x00000000U
  },

  {

    0x00000003U,

    0x00000000U,

    0x00000000U
  },

  {

    0x00000001U,

    0x00000000U,

    0x00000000U
  },

  {

    0x00000001U,

    0x00000000U,

    0x00000000U
  },

  {

    0x00000001U,

    0x00000000U,

    0x00000000U
  },

  {

    0x00000001U,

    0x00000000U,

    0x00000000U
  },

  {

    0x00000001U,

    0x00000000U,

    0x00000000U
  },

  {

    0x00000000U,

    0x00000000U,

    0x00000000U
  },

  {

    0x00000000U,

    0x00000000U,

    0x00000000U
  }
};






static const Mcu_GtmConfigType Mcu_kGtmConfiguration_Config =
{

  &Mcu_kGtmClockConfigPtr_Config,

  Mcu_kGtmClusterConfigPtr_Config,

  {


        {

          0x00000000U,

          0x00000001U
        },
        {

          0x00000000U,

          0x00000001U
        },
        {

          0x00000000U,

          0x00000001U
        },
        {

          0x00000000U,

          0x00000001U
        },
        {

          0x00000000U,

          0x00000001U
        },
        {

          0x00000000U,

          0x00000001U
        },
        {

          0x00000000U,

          0x00000001U
        },
        {

          0x00000000U,

          0x00000001U
        },
        {

          0x00000000U,

          0x00000001U
        },
        {

          0x00000000U,

          0x00000001U
        }
  },

  {



        {

          0x00000000U,

          0x00000001U
        },

        {

          0x00000020U,

          0x00000001U
        },

        {

          0x00000000U,

          0x00000001U
        },

        {

          0x00000000U,

          0x00000001U
        },

        {

          0x00000000U,

          0x00000001U
        },

        {

          0x00000000U,

          0x00000001U
        },

        {

          0x00000000U,

          0x00000001U
        },

        {

          0x00000000U,

          0x00000001U
        },

        {

          0x00000000U,

          0x00000001U
        }
  },


  {

    {

      0x0000000aU,

      0x00000000U
    },
    {

      0x00000c00U,

      0x00000000U
    },
    {

      0x00000000U,

      0x00000000U
    },
    {

      0x00000000U,

      0x00000000U
    },
    {

      0x00000000U,

      0x00000000U
    } },

  {

    {

      0x00000000U,

      0x00000000U
    },
    {

      0x00000000U,

      0x00000000U
    },
    {

      0x00000000U,

      0x00000000U
    },
    {

      0x00000000U,

      0x00000000U
    }
  },

  {


    0x00000000U,

    0x00007400U,

    0x30000000U,

    0x00001a00U,

    0x00000000U,

    0x00010000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U
  },

  {

    0x00000000U,

    0x0000ff00U,

    0xf0000000U,

    0x0000ff00U,

    0x00000000U,

    0x000f0000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x000000f0U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0xf0000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U,

    0x00000000U
  },

  0x00000000U,

  0x0003U,

  0x0001U,

  (boolean)(0 != 0)
};
# 669 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
const Mcu_ConfigType Mcu_Config =
{


  Mcu_kClockConfiguration_Config,

  ((void *)0),


  &Mcu_kGtmConfiguration_Config,






  &Mcu_kLowPowerModeConfiguration_Config,

  0x00000240U,

  0x00000000U,

  0xffffffffU,

  0x00000000U,

  ((Mcu_ClockType)1U),

  ((Mcu_RamSectionType)0U),
# 708 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
};
# 718 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 224 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 719 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Mcu_PBcfg.c" 2
