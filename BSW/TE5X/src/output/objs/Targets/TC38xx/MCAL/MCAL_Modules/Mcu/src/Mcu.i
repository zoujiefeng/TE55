# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
# 41 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
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
# 42 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
# 1 ".\\output\\inc/Mcu_17_TimerIp.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h" 1
# 41 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
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
# 43 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
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
# 44 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
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
# 45 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2





# 1 ".\\output\\inc/IfxConverter_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxConverter_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxConverter_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxConverter_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxConverter_regdef.h"
typedef struct _Ifx_CONVERTER_ACCEN0_Bits
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
} Ifx_CONVERTER_ACCEN0_Bits;


typedef struct _Ifx_CONVERTER_CCCTRL_Bits
{
    Ifx_UReg_32Bit reserved_0:28;
    Ifx_UReg_32Bit TC:4;
} Ifx_CONVERTER_CCCTRL_Bits;


typedef struct _Ifx_CONVERTER_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_CONVERTER_CLC_Bits;


typedef struct _Ifx_CONVERTER_ID_Bits
{
    Ifx_UReg_32Bit MOD_REV:8;
    Ifx_UReg_32Bit MOD_TYPE:8;
    Ifx_UReg_32Bit MOD_NUMBER:16;
} Ifx_CONVERTER_ID_Bits;


typedef struct _Ifx_CONVERTER_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_CONVERTER_KRST0_Bits;


typedef struct _Ifx_CONVERTER_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_CONVERTER_KRST1_Bits;


typedef struct _Ifx_CONVERTER_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_CONVERTER_KRSTCLR_Bits;


typedef struct _Ifx_CONVERTER_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:24;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_CONVERTER_OCS_Bits;


typedef struct _Ifx_CONVERTER_PHSCFG_Bits
{
    Ifx_UReg_32Bit PHSDIV:4;
    Ifx_UReg_32Bit reserved_4:11;
    Ifx_UReg_32Bit PDWC:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_CONVERTER_PHSCFG_Bits;


typedef struct _Ifx_CONVERTER_PHSSFTY_Bits
{
    Ifx_UReg_32Bit ALF:1;
    Ifx_UReg_32Bit reserved_1:3;
    Ifx_UReg_32Bit FIPD0:1;
    Ifx_UReg_32Bit FICN0:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit ALFCLR:1;
    Ifx_UReg_32Bit reserved_17:3;
    Ifx_UReg_32Bit FIPD1:1;
    Ifx_UReg_32Bit FICN1:1;
    Ifx_UReg_32Bit reserved_22:10;
} Ifx_CONVERTER_PHSSFTY_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_ACCEN0_Bits B;
} Ifx_CONVERTER_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_CCCTRL_Bits B;
} Ifx_CONVERTER_CCCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_CLC_Bits B;
} Ifx_CONVERTER_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_ID_Bits B;
} Ifx_CONVERTER_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_KRST0_Bits B;
} Ifx_CONVERTER_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_KRST1_Bits B;
} Ifx_CONVERTER_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_KRSTCLR_Bits B;
} Ifx_CONVERTER_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_OCS_Bits B;
} Ifx_CONVERTER_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_PHSCFG_Bits B;
} Ifx_CONVERTER_PHSCFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CONVERTER_PHSSFTY_Bits B;
} Ifx_CONVERTER_PHSSFTY;
# 280 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxConverter_regdef.h"
typedef volatile struct _Ifx_CONVERTER
{
       Ifx_CONVERTER_CLC CLC;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_CONVERTER_ID ID;
       Ifx_UReg_8Bit reserved_C[28];
       Ifx_CONVERTER_OCS OCS;
       Ifx_CONVERTER_KRSTCLR KRSTCLR;
       Ifx_CONVERTER_KRST1 KRST1;
       Ifx_CONVERTER_KRST0 KRST0;
       Ifx_UReg_8Bit reserved_38[4];
       Ifx_CONVERTER_ACCEN0 ACCEN0;
       Ifx_UReg_8Bit reserved_40[60];
       Ifx_CONVERTER_CCCTRL CCCTRL;
       Ifx_CONVERTER_PHSCFG PHSCFG;
       Ifx_CONVERTER_PHSSFTY PHSSFTY;
       Ifx_UReg_8Bit reserved_88[120];
} Ifx_CONVERTER;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxConverter_reg.h" 2
# 2 ".\\output\\inc/IfxConverter_reg.h" 2
# 51 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
# 1 ".\\output\\inc/IfxConverter_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxConverter_bf.h" 1
# 2 ".\\output\\inc/IfxConverter_bf.h" 2
# 52 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
# 62 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
# 1 ".\\output\\inc/IfxScu_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_bf.h" 1
# 2 ".\\output\\inc/IfxScu_bf.h" 2
# 63 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2

# 1 ".\\output\\inc/IfxGtm_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_bf.h" 1
# 2 ".\\output\\inc/IfxGtm_bf.h" 2
# 65 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
# 88 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
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
# 89 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
# 762 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 300 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 763 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2

static __inline__ void Mcu_lSetIdleMode(const uint8 CoreId);
static __inline__ void Mcu_lSetSleepMode(const uint8 CoreId);
static __inline__ void Mcu_lSetStandbyMode(const uint8 CoreId);

static void Mcu_lReportError(const uint8 ApiId,
                             const uint8 ErrorId);



static void Mcu_lReportMultiCoreError(const uint8 ApiId,
                                      const uint8 ErrorId);






static __inline__ void Mcu_lPerPllToBackUpClockFreq(const uint8 ApiId);
static __inline__ Std_ReturnType Mcu_lSwitchToBackUpClockFreq(
  const uint8 ApiId,
  const Mcu_ClockType ClockSettingIndex);
static __inline__ Mcu_ResetType Mcu_lGetRstReason(const Mcu_RawResetType
    RstReasonRaw);
static __inline__ Mcu_ResetType Mcu_lGetRstReason2(const Mcu_RawResetType
    RstReasonRaw);
static __inline__ Std_ReturnType Mcu_lEnableClockControl(void);

static __inline__ Std_ReturnType Mcu_lInitOscClock(void);
static __inline__ Std_ReturnType Mcu_lInitPllClock(void);
static __inline__ Std_ReturnType Mcu_lInitPllKDivCheck(void);
static __inline__ Std_ReturnType Mcu_lInitClockTree(void);
static __inline__ Std_ReturnType Mcu_lInitCcuCon12(void);
static __inline__ void Mcu_lInitCcuConCpuReg(void);



static __inline__ Std_ReturnType Mcu_lSwitchToDesiredFreq(void);
static __inline__ void Mcu_lPerPllToDesiredFreq(void);



static __inline__ void Mcu_lGtmCmuGlobalInit(void);
static __inline__ void Mcu_lGtmTriggerInit(void);
static __inline__ void Mcu_lGtmToutSelInit(void);
static __inline__ void Mcu_lGtmTbuGlobalInit(void);
static __inline__ void Mcu_lGtmCcmGlobalInit(void);
static __inline__ void Mcu_lGtmAtomGlobalInit(void);
static __inline__ void Mcu_lGtmTomGlobalInit(void);
static __inline__ Std_ReturnType Mcu_lGtmGlobalInit(void);
# 849 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lConvCtrlInit(void);
static __inline__ void Mcu_lWriteTrapDisReg(void);
static __inline__ void Mcu_lSetCpuMode(const uint32 CoreId, const uint32 ModeReq);
# 866 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lInitClockDetCheck
(const Mcu_ClockType ClockSetting);
# 877 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 312 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 878 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
# 899 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section "ClearedData.LmuNC.32bit" aw 4
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 900 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2


static const Mcu_ConfigType *Mcu_ConfigPtr;

static Mcu_ClockType Mcu_ClockSetting;

static Mcu_RawResetType Mcu_ResetStatusVal;

static uint32 Mcu_DriverState;






# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 916 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
# 926 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 300 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 927 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
# 953 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
void Mcu_Init(const Mcu_ConfigType *const ConfigPtr)
{



  Ifx_SCU_PMSWCR1 Pmswcr1Val;



  Ifx_SCU_PMTRCSR0 Pmtrcsr0Val;




  Ifx_SCU_RSTCON2 Rstcon2Val;

  volatile uint32 TempVal;

  Std_ReturnType ClcError = (Std_ReturnType)0x00u;
# 986 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  uint32 ErrorFlag = ((uint32)0U);




  uint32 CoreId = Mcal_GetCpuIndex();
  if ((0U) != CoreId)
  {



    Mcu_lReportMultiCoreError(((uint8)0U), ((uint8)104U));
    ErrorFlag = ((uint32)1U);
  }
  else

  {



    if (((void *)0) == ConfigPtr)
    {



      Mcu_lReportError(((uint8)0U), ((uint8)10U));
      ErrorFlag = ((uint32)1U);
    }
    else
    {



      if (((uint32)1U) == Mcu_DriverState)
      {



        Mcu_lReportError(((uint8)0U), ((uint8)17U));
        ErrorFlag = ((uint32)1U);
      }
    }
  }



  if (((uint32)1U) != ErrorFlag)



  {
# 1048 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    Mcu_ConfigPtr = ConfigPtr;





    if ((*(volatile Ifx_SCU_RSTSTAT*)0xF0036050u).U != 0x0U)

    {
      Mcu_ResetStatusVal = (*(volatile Ifx_SCU_RSTSTAT*)0xF0036050u).U;
    }







    Rstcon2Val.U = (*(volatile Ifx_SCU_RSTCON2*)0xF0036064u).U;
    Rstcon2Val.B.CLRC = 0x1U;

    Mcal_WritePeripEndInitProtReg(&(*(volatile Ifx_SCU_RSTCON2*)0xF0036064u).U, (uint32)(Rstcon2Val.U))
                               ;


    Pmswcr1Val.U = (*(volatile Ifx_SCU_PMSWCR1*)0xF00360E8u).U;



    Pmswcr1Val.B.CPUIDLSEL = (0U);
# 1089 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_RSTCON*)0xF0036058u).U, Mcu_ConfigPtr->McuResetCfg)
                                   ;

    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PMSWCR1*)0xF00360E8u).U, (uint32)Pmswcr1Val.U)
                             ;
# 1102 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    if ((((uint32)Mcu_ConfigPtr->McuLowPowerModeCfgPtr->MaxModeEvrcCtrl
          .McuMode) &
         (0x1U << (2U))) > 0x0U)
    {
      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_PMSWCR0*)0xF02480B4u).U, Mcu_ConfigPtr->McuLowPowerModeCfgPtr->Pmswcr0)
                                                        ;

      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_PMSWCR4*)0xF02480C4u).U, Mcu_ConfigPtr->McuLowPowerModeCfgPtr->Pmswcr4 | ((uint32)0x01000011U))
                                                                           ;

      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_PMSWCR5*)0xF02480C8u).U, Mcu_ConfigPtr->McuLowPowerModeCfgPtr->Pmswcr5)
                                                        ;
    }



    if ((((uint32)Mcu_ConfigPtr->McuLowPowerModeCfgPtr->MaxModeEvrcCtrl
          .McuMode) &
         ((uint32)0x1U << (1U))) > 0x0U)
    {

      Pmtrcsr0Val.U = (*(volatile Ifx_SCU_PMTRCSR0*)0xF0036198u).U;
      Pmtrcsr0Val.B.LPSLPEN = Mcu_ConfigPtr->
                              McuLowPowerModeCfgPtr->
                              MaxModeEvrcCtrl.EvrcLowPowerMode;

      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PMTRCSR0*)0xF0036198u).U, (uint32)Pmtrcsr0Val.U)
                                ;
    }





    Mcal_WritePeripEndInitProtReg(&(*(volatile Ifx_SCU_ARSTDIS*)0xF003605Cu).U, Mcu_ConfigPtr->McuArstDisCfg)
                                     ;



    Mcu_lWriteTrapDisReg();



    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_EIFILT*)0xF003620Cu).U, Mcu_ConfigPtr-> McuEruEiFiltCfg)

                        ;

    TempVal = Mcal_DelayResetTickCalibration();
    (void)(TempVal);


    ClcError = Mcu_lEnableClockControl();




    if (ClcError == (Std_ReturnType)0x00u)
    {

      Mcu_DriverState = ((uint32)1U);
    }
  }


}
# 1400 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
Std_ReturnType Mcu_InitRamSection(const Mcu_RamSectionType RamSection)
{
  uint8 *RamBasePtr;
  Mcu_RamSizeType RamLength;
  uint8 RamData;
  Std_ReturnType RetValue = (Std_ReturnType)0x01u;
# 1418 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  uint32 ErrorFlag = ((uint32)0U);



  if (Mcu_DriverState != ((uint32)1U))
  {



    Mcu_lReportError(((uint8)1U), ((uint8)15U));
    ErrorFlag = ((uint32)1U);
  }
  else
  {



    if (RamSection >= (Mcu_ConfigPtr->McuNoOfRamCfg))
    {



      Mcu_lReportError(((uint8)1U), ((uint8)13U));
      ErrorFlag = ((uint32)1U);
    }
  }





  if (((uint32)1U) != ErrorFlag)

  {
# 1460 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    if (((void *)0) != Mcu_ConfigPtr->McuRamCfgPtr)
    {







      RamBasePtr = (uint8 *)Mcu_ConfigPtr->McuRamCfgPtr[RamSection].


                   RamBaseAdrPtr;
      RamData = (uint8)Mcu_ConfigPtr->McuRamCfgPtr[RamSection].RamPrstData;
      RamLength = Mcu_ConfigPtr->McuRamCfgPtr[RamSection].RamSize;




      while (RamLength > (Mcu_RamSizeType)(0U))
      {
        *RamBasePtr = RamData;
        RamBasePtr++;
        RamLength--;
      }
      RetValue = (Std_ReturnType)0x00u;
    }
  }



  return RetValue;


}
# 1536 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
Std_ReturnType Mcu_InitClock(const Mcu_ClockType ClockSetting)
{



  Ifx_SCU_SYSPLLCON0 Syspllcon0Val;



  Ifx_SCU_PERPLLCON0 Perpllcon0Val;



  Ifx_CONVERTER_PHSCFG ConvCtrlPhscfg;






  uint32 SysPllPwdStat, PerPllPwdStat;
  volatile uint32 ClkselVal, TempVal;
  volatile uint32 TimeoutCtr;
  Std_ReturnType RetValue = 0x00u;
# 1572 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  RetValue = Mcu_lInitClockDetCheck(ClockSetting);






  if (0x00u == RetValue)

  {





    Mcu_ClockSetting = (uint8)ClockSetting;



    if ((0U) != (*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).B.CLKSEL)
    {



      RetValue = Mcu_lSwitchToBackUpClockFreq(((uint8)2U), ClockSetting);
    }




    if ((Std_ReturnType)0x01u != RetValue)
    {
      ClkselVal = (((Mcu_ConfigPtr->McuClockSettingPtr
                     [Mcu_ClockSetting].PllDistributionCfgPtr->Ccucon0) >>
                    (uint32)(28u)) &
                   (uint32)(0x3u));




      if ((uint32)(0U) != ClkselVal)
      {
# 1623 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
        Syspllcon0Val.U = (uint32)(*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).U &
                          (~((uint32)0x000001FBU));
        Syspllcon0Val.B.PLLPWD = 0x0U;

        Perpllcon0Val.U = (uint32)(*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).U &
                          (~((uint32)0x000001FEU));
        Perpllcon0Val.B.PLLPWD = 0x0U;


        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).U, (uint32)Syspllcon0Val.U)
                                    ;

        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).U, (uint32)Perpllcon0Val.U)
                                    ;
        TimeoutCtr = ((uint32)1000U);

        SysPllPwdStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.PWDSTAT;

        PerPllPwdStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.PWDSTAT;




        while ((TimeoutCtr > 0x0U) && ((0x0U == SysPllPwdStat) ||
                                       (0x0U == PerPllPwdStat)))
        {

          SysPllPwdStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.PWDSTAT;

          PerPllPwdStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.PWDSTAT;

          TimeoutCtr--;
        }



        if (0x0U == (*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.PWDSTAT)
        {
# 1672 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
          RetValue = (Std_ReturnType)0x01u;
        }
# 1689 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
        if (0x0U == (*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.PWDSTAT)
        {
# 1704 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
          RetValue = (Std_ReturnType)0x01u;
        }
# 1722 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
        if ((Std_ReturnType)0x01u != RetValue)
        {




          RetValue = Mcu_lInitOscClock();
        }




        if ((Std_ReturnType)0x01u != RetValue)
        {




          RetValue = Mcu_lInitPllClock();
        }
      }



      if ((Std_ReturnType)0x01u != RetValue)
      {







        TempVal = (*(volatile Ifx_CONVERTER_CCCTRL*)0xF002507Cu).U;

        Mcal_WritePeripEndInitProtReg(&(*(volatile Ifx_CONVERTER_CCCTRL*)0xF002507Cu).U, ((uint32)0xB0000000U))

                                     ;

        ConvCtrlPhscfg.U = (*(volatile Ifx_CONVERTER_PHSCFG*)0xF0025080u).U;
        ConvCtrlPhscfg.B.PDWC = 0x1U;
        ConvCtrlPhscfg.B.PHSDIV = Mcu_ConfigPtr->McuClockSettingPtr
                                  [Mcu_ClockSetting].ConvCtrlBlockConf;





        ((*(&(*(volatile Ifx_CONVERTER_PHSCFG*)0xF0025080u).U)) = (uint32)(ConvCtrlPhscfg.U));;

        Mcal_WritePeripEndInitProtReg(&(*(volatile Ifx_CONVERTER_CCCTRL*)0xF002507Cu).U, TempVal)

                  ;
# 1791 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
        {







          RetValue = Mcu_lInitClockTree();
        }
      }
    }
  }






  return RetValue;


}
# 1841 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
Std_ReturnType Mcu_DistributePllClock(void)
{



  Ifx_SCU_CCUCON0 Ccucon0Val;
  uint32 ClkselVal, TimeoutCtr, Ccucon0Lck;
  Std_ReturnType RetValue = (Std_ReturnType)0x00u;
  uint32 SysPllStat, PerPllStat;
  uint32 ErrorFlag = ((uint32)0U);
# 1866 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  uint32 CoreId = Mcal_GetCpuIndex();
  if ((0U) != CoreId)
  {



    Mcu_lReportMultiCoreError(((uint8)3U), ((uint8)104U));
    ErrorFlag = ((uint32)1U);
  }
  else

  {



    if (Mcu_DriverState != ((uint32)1U))
    {






      Mcu_lReportError(((uint8)3U), ((uint8)15U));
      ErrorFlag = ((uint32)1U);
    }
    else
    {
      SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.LOCK;
      PerPllStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.LOCK;




      if ((SysPllStat != 0x1U) || (PerPllStat != 0x1U))
      {



        Mcu_lReportError(((uint8)3U), ((uint8)14U));
        ErrorFlag = ((uint32)1U);
      }
    }
  }
# 1926 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  if (((uint32)1U) == ErrorFlag)
  {
    RetValue = (Std_ReturnType)0x01u;
  }
  else
  {







    ClkselVal = (((Mcu_ConfigPtr->McuClockSettingPtr
                   [Mcu_ClockSetting].PllDistributionCfgPtr->Ccucon0) >>
                  (uint32)(28u)) &
                 (uint32)(0x3u));



    if ((uint32)(1U) == ClkselVal)
    {
      Ccucon0Val.U = (*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).U;
      Ccucon0Val.B.CLKSEL = (1U);
      Ccucon0Val.B.UP = 0x1U;
      Ccucon0Val.U = (uint32)Ccucon0Val.U &
                     ((uint32)0xFFFF7FFFU);


      TimeoutCtr = ((uint32)1500U);
      Ccucon0Lck = (uint32)(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).B.LCK;




      while ((TimeoutCtr > 0x0U) && (0x1U == Ccucon0Lck))
      {
        Ccucon0Lck = (uint32)(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).B.LCK;

        TimeoutCtr--;
      }



      if (0x0U == TimeoutCtr)
      {
# 1983 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
        RetValue = (Std_ReturnType)0x01u;
      }
      else
      {
# 2003 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).U, (uint32)Ccucon0Val.U)
                                 ;




        RetValue = Mcu_lSwitchToDesiredFreq();
      }
    }
  }


  return RetValue;


}
# 2044 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
Mcu_PllStatusType Mcu_GetPllStatus(void)
{
  Mcu_PllStatusType RetValue = MCU_PLL_STATUS_UNDEFINED;

  uint32 SysPllStatus, PerPllStatus;







  if (((uint32)1U) != Mcu_DriverState)
  {







    Mcu_lReportError(((uint8)4U), ((uint8)15U));

  }





  else
  {

    SysPllStatus = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.LOCK;
    PerPllStatus = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.LOCK;



    if ((SysPllStatus == 0x1U) && (PerPllStatus == 0x1U))
    {
      RetValue = MCU_PLL_LOCKED;
    }
    else
    {
      RetValue = MCU_PLL_UNLOCKED;
    }
  }





  return RetValue;


}
# 2123 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
Mcu_ResetType Mcu_GetResetReason(void)
{
  Mcu_RawResetType ResetReasonRaw;
  Mcu_ResetType ResetReason = MCU_RESET_UNDEFINED;






  if (((uint32)1U) != Mcu_DriverState)
  {







    Mcu_lReportError(((uint8)5U), ((uint8)15U));


  }
  else
  {
# 2156 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    ResetReasonRaw = (Mcu_RawResetType)(Mcu_ResetStatusVal &
                                        ((uint32)0x5FFD07FBU));
    ResetReason = Mcu_lGetRstReason(ResetReasonRaw);
  }



  return ResetReason;


}
# 2191 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
Mcu_RawResetType Mcu_GetResetRawValue(void)
{
  Mcu_RawResetType RetValue = ((Mcu_RawResetType)(0xFFFFFFFFU));






  if (((uint32)1U) != Mcu_DriverState)
  {
# 2210 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    Mcu_lReportError(((uint8)6U), ((uint8)15U));


  }
  else
  {

    RetValue = Mcu_ResetStatusVal;
  }




  return RetValue;


}
# 2252 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
void Mcu_PerformReset(void)
{



  Ifx_SCU_SWRSTCON SwResetReq;
  uint32 ResetDelayTicks, BaseSTMTick, CurrSTMTick, DelayTickResolution;
# 2268 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  uint32 ErrorFlag = ((uint32)0U);







  if (((uint32)1U) != Mcu_DriverState)
  {






    Mcu_lReportError(((uint8)7U), ((uint8)15U));
    ErrorFlag = ((uint32)1U);
  }





  if (((uint32)1U) != ErrorFlag)

  {







    SwResetReq.U = (*(volatile Ifx_SCU_SWRSTCON*)0xF0036060u).U;
    SwResetReq.B.SWRSTREQ = 0x1U;

    Mcal_WritePeripEndInitProtReg(&(*(volatile Ifx_SCU_SWRSTCON*)0xF0036060u).U, (uint32)SwResetReq.U)
                             ;


    CurrSTMTick = Mcal_DelayGetTick();
    BaseSTMTick = CurrSTMTick;
    DelayTickResolution = Mcal_DelayTickResolution();
    ResetDelayTicks = (((uint32)150000000U) / DelayTickResolution);




    while ((uint32)((CurrSTMTick - BaseSTMTick) & (0xFFFFFFFFU)) <
           ResetDelayTicks)
    {
      CurrSTMTick = Mcal_DelayGetTick();
    }
  }
# 2338 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
}
# 2366 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
void Mcu_SetMode(const Mcu_ModeType McuMode)
{
  uint32 CoreId;
# 2379 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  uint32 ErrorFlag = ((uint32)0U);






  if (Mcu_DriverState != ((uint32)1U))
  {



    Mcu_lReportError(((uint8)8U), ((uint8)15U));
    ErrorFlag = ((uint32)1U);
  }
  else
  {



    if ((McuMode >= (Mcu_ModeType)(3U)) || (0x0U ==
        (((uint32)0x1U << (uint32)McuMode) & (uint32)Mcu_ConfigPtr->
         McuLowPowerModeCfgPtr->MaxModeEvrcCtrl.McuMode)))
    {



      Mcu_lReportError(((uint8)8U), ((uint8)12U));
      ErrorFlag = ((uint32)1U);
    }
  }




  if (((uint32)1U) != ErrorFlag)

  {






    CoreId = Mcal_GetCpuIndex();




    if ((Mcu_ModeType)(0U) == McuMode)
    {



      Mcu_lSetIdleMode((uint8)CoreId);
    }



    else if ((Mcu_ModeType)(1U) == McuMode)
    {



      Mcu_lSetSleepMode((uint8)CoreId);
    }



    else
    {



      {



        Mcu_lSetStandbyMode((uint8)CoreId);
      }
    }
  }


}
# 3877 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lGtmGlobalInit(void)
{




  Ifx_GTM_CLC GtmClcVal;
  Std_ReturnType GtmInitStatus = 0x01u;
# 3893 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  GtmClcVal.U = (*(volatile Ifx_GTM_CLC*)0xF019FD00u).U;
  GtmClcVal.B.DISR = 0x0U;




  if ((boolean)(1 != 0) == Mcu_ConfigPtr->McuGtmConfigPtr->IsGtmSleepModeEnabled)
  {
    GtmClcVal.B.EDIS = 0x0U;
  }
  else
  {

    GtmClcVal.B.EDIS = 0x1U;
  }
  Mcal_WritePeripEndInitProtReg(&(*(volatile Ifx_GTM_CLC*)0xF019FD00u).U, GtmClcVal.U);




  if (((uint32)0U) == (uint32)(*(volatile Ifx_GTM_CLC*)0xF019FD00u).B.DISS)
  {
# 3928 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    Mcu_lGtmCmuGlobalInit();



    Mcu_lGtmTbuGlobalInit();



    Mcu_lGtmCcmGlobalInit();



    Mcu_lGtmTomGlobalInit();



    Mcu_lGtmAtomGlobalInit();



    Mcu_lGtmTriggerInit();
    Mcu_lGtmToutSelInit();
    GtmInitStatus = 0x00u;
  }
  else
  {
# 3964 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  }


  return GtmInitStatus;
}
# 4089 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lGtmCmuGlobalInit(void)
{
  volatile uint32 ReadBack;
  uint32 TempVal;



  (*(volatile Ifx_GTM_CMU_CLK_EN*)0xF0100300u).U = ((uint32)0x00555555U);





  (*(volatile Ifx_GTM_CMU_GCLK_NUM*)0xF0100304u).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                       GtmClockCfgPtr->GtmCmuGlobalNumerator;
  (*(volatile Ifx_GTM_CMU_GCLK_NUM*)0xF0100304u).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                       GtmClockCfgPtr->GtmCmuGlobalNumerator;
  (*(volatile Ifx_GTM_CMU_GCLK_DEN*)0xF0100308u).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                       GtmClockCfgPtr->GtmCmuGlobalDenominator;


  ((*(volatile Ifx_GTM_CMU_CLK__CTRL*)0xF010030Cu)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmCmuConfClkCtrl[0];
  ((*(volatile Ifx_GTM_CMU_CLK__CTRL*)0xF0100310u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmCmuConfClkCtrl[1];
  ((*(volatile Ifx_GTM_CMU_CLK__CTRL*)0xF0100314u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmCmuConfClkCtrl[2];
  ((*(volatile Ifx_GTM_CMU_CLK__CTRL*)0xF0100318u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmCmuConfClkCtrl[3];
  ((*(volatile Ifx_GTM_CMU_CLK__CTRL*)0xF010031Cu)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmCmuConfClkCtrl[4];
  ((*(volatile Ifx_GTM_CMU_CLK__CTRL*)0xF0100320u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmCmuConfClkCtrl[5];
  ((*(volatile Ifx_GTM_CMU_CLK__CTRL*)0xF0100324u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmCmuConfClkCtrl[6];
  ((*(volatile Ifx_GTM_CMU_CLK__CTRL*)0xF0100328u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmCmuConfClkCtrl[7];




  ((*(volatile Ifx_GTM_CMU_ECLK_NUM*)0xF010032Cu)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmEclkCtrl[0].GtmCmuExtClockNum;
  ((*(volatile Ifx_GTM_CMU_ECLK_NUM*)0xF010032Cu)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmEclkCtrl[0].GtmCmuExtClockNum;
  ((*(volatile Ifx_GTM_CMU_ECLK_DEN*)0xF0100330u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmEclkCtrl[0].GtmCmuExtClockDen;

  ((*(volatile Ifx_GTM_CMU_ECLK_NUM*)0xF0100334u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmEclkCtrl[1].GtmCmuExtClockNum;
  ((*(volatile Ifx_GTM_CMU_ECLK_NUM*)0xF0100334u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmEclkCtrl[1].GtmCmuExtClockNum;
  ((*(volatile Ifx_GTM_CMU_ECLK_DEN*)0xF0100338u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmEclkCtrl[1].GtmCmuExtClockDen;

  ((*(volatile Ifx_GTM_CMU_ECLK_NUM*)0xF010033Cu)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmEclkCtrl[2].GtmCmuExtClockNum;
  ((*(volatile Ifx_GTM_CMU_ECLK_NUM*)0xF010033Cu)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmEclkCtrl[2].GtmCmuExtClockNum;
  ((*(volatile Ifx_GTM_CMU_ECLK_DEN*)0xF0100340u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmEclkCtrl[2].GtmCmuExtClockDen;

  (*(volatile Ifx_GTM_CMU_FXCLK_CTRL*)0xF0100344u).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                         GtmClockCfgPtr->GtmCmuFixedClkCtrl;

  TempVal = (uint32)(*(volatile Ifx_GTM_CTRL*)0xF0100008u).B.RF_PROT;
  (*(volatile Ifx_GTM_CTRL*)0xF0100008u).B.RF_PROT = 0x0U;
  ReadBack = (*(volatile Ifx_GTM_CTRL*)0xF0100008u).U;
  (*(volatile Ifx_GTM_CLS_CLK_CFG*)0xF01000B0u).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                      GtmClockCfgPtr->GtmCmuClsInDiv;



  (*(volatile Ifx_GTM_CTRL*)0xF0100008u).B.RF_PROT = TempVal;


  (*(volatile Ifx_GTM_CMU_CLK_EN*)0xF0100300u).U = Mcu_ConfigPtr->McuGtmConfigPtr->
                     GtmClockCfgPtr->GtmCmuClockEnable;
  (void)(ReadBack);
}
# 4273 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lGtmTriggerInit(void)
{






  ((*(volatile Ifx_GTM_ADCTRIG_OUT0*)0xF019FE40u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[0]
                       .GtmAdcTrigOut0;
  ((*(volatile Ifx_GTM_ADCTRIG_OUT1*)0xF019FE44u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[0]
                       .GtmAdcTrigOut1;
  ((*(volatile Ifx_GTM_ADCTRIG_OUT0*)0xF019FE48u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[1]
                       .GtmAdcTrigOut0;
  ((*(volatile Ifx_GTM_ADCTRIG_OUT1*)0xF019FE4Cu)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[1]
                       .GtmAdcTrigOut1;
  ((*(volatile Ifx_GTM_ADCTRIG_OUT0*)0xF019FE50u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[2]
                       .GtmAdcTrigOut0;
  ((*(volatile Ifx_GTM_ADCTRIG_OUT1*)0xF019FE54u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[2]
                       .GtmAdcTrigOut1;
  ((*(volatile Ifx_GTM_ADCTRIG_OUT0*)0xF019FE58u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[3]
                       .GtmAdcTrigOut0;
  ((*(volatile Ifx_GTM_ADCTRIG_OUT1*)0xF019FE5Cu)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[3]
                       .GtmAdcTrigOut1;
  ((*(volatile Ifx_GTM_ADCTRIG_OUT0*)0xF019FE60u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[4]
                       .GtmAdcTrigOut0;
  ((*(volatile Ifx_GTM_ADCTRIG_OUT1*)0xF019FE64u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmAdcTrigCfg[4]
                       .GtmAdcTrigOut1;







  ((*(volatile Ifx_GTM_DSADC_OUTSEL0*)0xF019FE20u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmDsadcTrigCfg[0]
                       .GtmDsadcTrigOut0;
  ((*(volatile Ifx_GTM_DSADC_OUTSEL0*)0xF019FE28u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmDsadcTrigCfg[1]
                       .GtmDsadcTrigOut0;
  ((*(volatile Ifx_GTM_DSADC_OUTSEL0*)0xF019FE30u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmDsadcTrigCfg[2]
                       .GtmDsadcTrigOut0;
  ((*(volatile Ifx_GTM_DSADC_OUTSEL0*)0xF019FE38u)).U = Mcu_ConfigPtr->McuGtmConfigPtr->GtmDsadcTrigCfg[3]
                       .GtmDsadcTrigOut0;
# 4327 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
}
# 4352 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lGtmToutSelInit(void)
{



  uint8 ToutSelRegIndex;


  for (ToutSelRegIndex = (0U);
       ToutSelRegIndex < (34U); ToutSelRegIndex++)
  {
    ((*(Ifx_GTM*)0xF0100000u)).TOUTSEL[ToutSelRegIndex].U &= (~(Mcu_ConfigPtr->McuGtmConfigPtr
                                          ->GtmToutSelCfgMsk[ToutSelRegIndex]));
    ((*(Ifx_GTM*)0xF0100000u)).TOUTSEL[ToutSelRegIndex].U |= Mcu_ConfigPtr->McuGtmConfigPtr
                                             ->GtmToutSelCfg[ToutSelRegIndex];
  }
}
# 4492 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lGtmTbuGlobalInit(void)
{

  (*(volatile Ifx_GTM_TBU_CHEN*)0xF0100100u).U = ((uint32)0x00000055U) & (~(((uint32)0x0000FFFFU) <<
                      (2U * (4U))));

  uint8 TbuChInfo = (uint8)(Mcu_ConfigPtr->McuGtmConfigPtr->GtmTbuCfg &
                              (0x000000ffU));


  if (((TbuChInfo >> (0U))& (0x3U)) == (2U))
  {
    (*(volatile Ifx_GTM_TBU_CH0_CTRL*)0xF0100104u).U = ((Mcu_ConfigPtr->McuGtmConfigPtr->GtmTbuCfg >>
                           (8U)) & ((uint32)(((0x1u) << (0u)) | ((0x7u) << (1u)))));
  }



  if (((TbuChInfo >> (2U)) & (0x3U)) == (2U))
  {
    (*(volatile Ifx_GTM_TBU_CH1_CTRL*)0xF010010Cu).U = ((Mcu_ConfigPtr->McuGtmConfigPtr->GtmTbuCfg >>
                           (12U)) & ((uint32)(((0x1u) << (0u)) | ((0x7u) << (1u)))));
  }



  if (((TbuChInfo >> (4U)) & (0x3U)) == (2U))
  {
    (*(volatile Ifx_GTM_TBU_CH2_CTRL*)0xF0100114u).U = ((Mcu_ConfigPtr->McuGtmConfigPtr->GtmTbuCfg >>
                           (16U)) & ((uint32)(((0x1u) << (0u)) | ((0x7u) << (1u)))));
  }



  if (((TbuChInfo >> (6U)) & (0x3U)) == (2U))
  {
    (*(volatile Ifx_GTM_TBU_CH3_CTRL*)0xF010011Cu).U = (((Mcu_ConfigPtr->McuGtmConfigPtr->GtmTbuCfg >>
                            (20U)) & (((uint32)(0x1u)) << ((uint32)(4u)))));
  }


  (*(volatile Ifx_GTM_TBU_CHEN*)0xF0100100u).U = (Mcu_ConfigPtr->McuGtmConfigPtr->GtmTbuCfg &
                    (0x000000ffU));
}
# 4618 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lGtmCcmGlobalInit(void)
{
  uint32 GtmCcmCfgVal;
  uint8 ClsClkVal;
  uint8 ClusterIndex;




  for (ClusterIndex = (0U);
       ClusterIndex < (9U); ClusterIndex++)
  {



    ClsClkVal = (uint8)((((*(volatile Ifx_GTM_CLS_CLK_CFG*)0xF01000B0u).U) >>
                         ((0x2U) * ClusterIndex)) &
                          (0x3U));

    if (ClsClkVal != 0x0U)
    {
      ((*(Ifx_GTM*)0xF0100000u)).CCM[ClusterIndex].PROT.B.CLS_PROT = 0x0U;
      if ( Mcu_ConfigPtr->McuGtmConfigPtr->
                        GtmClusterCfgPtr[ClusterIndex].GtmCcmCfg != 0x0U)
      {
        GtmCcmCfgVal = ((uint32)((*(Ifx_GTM*)0xF0100000u)).CCM[ClusterIndex].CFG.U);

        GtmCcmCfgVal = (GtmCcmCfgVal | Mcu_ConfigPtr->McuGtmConfigPtr->
                        GtmClusterCfgPtr[ClusterIndex].GtmCcmCfg);
        ((*(Ifx_GTM*)0xF0100000u)).CCM[ClusterIndex].CFG.U = GtmCcmCfgVal;
      }
      ((*(Ifx_GTM*)0xF0100000u)).CCM[ClusterIndex].CMU_CLK_CFG.U = Mcu_ConfigPtr->
          McuGtmConfigPtr->GtmClusterCfgPtr[ClusterIndex].GtmCcmConfClockCfg;
      ((*(Ifx_GTM*)0xF0100000u)).CCM[ClusterIndex].CMU_FXCLK_CFG.U = Mcu_ConfigPtr->
          McuGtmConfigPtr->GtmClusterCfgPtr[ClusterIndex].GtmCcmFixedClockCfg;
      ((*(Ifx_GTM*)0xF0100000u)).CCM[ClusterIndex].PROT.B.CLS_PROT = 0x1U;
    }
  }
}
# 4736 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lGtmTomGlobalInit(void)
{
  Mcu_17_Gtm_TomTgc *TomTgcRegPtr;
  uint8 TomModuleIndex;
  uint8 GtmTomCfgIndex;
  uint32 GtmTomTgcActTb;




  for (TomModuleIndex = (0U);
       TomModuleIndex < (5U); TomModuleIndex++)
  {




    if (((Mcu_ConfigPtr->McuGtmConfigPtr->GtmTomModuleUsage >>
          TomModuleIndex) & 0x1U) == 0x1U)
    {
# 4764 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      TomTgcRegPtr = (&(((Mcu_17_Gtm_TomTgcArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TOM[TomModuleIndex])))->TOM_TGC[0x0U]));
      GtmTomCfgIndex = (0x2U * TomModuleIndex);
      TomTgcRegPtr->TGC_INT_TRIG.U =
        (Mcu_ConfigPtr->McuGtmConfigPtr->GtmTomCfg[GtmTomCfgIndex]
         .TomTgcIntTrigRstCn0 & ((uint32)(((uint32)(0x3u) << (uint32)(0u)) | ((uint32)(0x3u) << (uint32)(2u)) | ((uint32)(0x3u) << (uint32)(4u)) | ((uint32)(0x3u) << (uint32)(6u)) | ((uint32)(0x3u) << (uint32)(8u)) | ((uint32)(0x3u) << (uint32)(10u)) | ((uint32)(0x3u) << (uint32)(12u)) | ((uint32)(0x3u) << (uint32)(14u)))));
      TomTgcRegPtr->TGC_FUPD_CTRL.U =
        (Mcu_ConfigPtr->McuGtmConfigPtr->GtmTomCfg[GtmTomCfgIndex]
         .TomTgcIntTrigRstCn0 & ((uint32) (((uint32)(0x3u) << (uint32)(16u)) | ((uint32)(0x3u) << (uint32)(18u)) | ((uint32)(0x3u) << (uint32)(20u)) | ((uint32)(0x3u) << (uint32)(22u)) | ((uint32)(0x3u) << (uint32)(24u)) | ((uint32)(0x3u) << (uint32)(26u)) | ((uint32)(0x3u) << (uint32)(28u)) | ((uint32)(0x3u) << (uint32)(30u)))));
      GtmTomTgcActTb = (TomTgcRegPtr->TGC_ACT_TB.U & (((uint32)(0x1u) << (uint32)(24u))));
      TomTgcRegPtr->TGC_ACT_TB.U = GtmTomTgcActTb |
        (Mcu_ConfigPtr->McuGtmConfigPtr->GtmTomCfg[GtmTomCfgIndex].TomTgcActTb);
# 4783 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      TomTgcRegPtr = (&(((Mcu_17_Gtm_TomTgcArray*)(volatile void*) (&(((*(Ifx_GTM*)0xF0100000u)).TOM[TomModuleIndex])))->TOM_TGC[0x1U]));
      GtmTomCfgIndex = ((2U * TomModuleIndex) + 0x1U);

      TomTgcRegPtr->TGC_INT_TRIG.U =
        (Mcu_ConfigPtr->McuGtmConfigPtr->GtmTomCfg[GtmTomCfgIndex]
         .TomTgcIntTrigRstCn0 & ((uint32)(((uint32)(0x3u) << (uint32)(0u)) | ((uint32)(0x3u) << (uint32)(2u)) | ((uint32)(0x3u) << (uint32)(4u)) | ((uint32)(0x3u) << (uint32)(6u)) | ((uint32)(0x3u) << (uint32)(8u)) | ((uint32)(0x3u) << (uint32)(10u)) | ((uint32)(0x3u) << (uint32)(12u)) | ((uint32)(0x3u) << (uint32)(14u)))));
      TomTgcRegPtr->TGC_FUPD_CTRL.U =
        (Mcu_ConfigPtr->McuGtmConfigPtr->GtmTomCfg[GtmTomCfgIndex]
         .TomTgcIntTrigRstCn0 & ((uint32) (((uint32)(0x3u) << (uint32)(16u)) | ((uint32)(0x3u) << (uint32)(18u)) | ((uint32)(0x3u) << (uint32)(20u)) | ((uint32)(0x3u) << (uint32)(22u)) | ((uint32)(0x3u) << (uint32)(24u)) | ((uint32)(0x3u) << (uint32)(26u)) | ((uint32)(0x3u) << (uint32)(28u)) | ((uint32)(0x3u) << (uint32)(30u)))));
      GtmTomTgcActTb = (TomTgcRegPtr->TGC_ACT_TB.U & (((uint32)(0x1u) << (uint32)(24u))));
      TomTgcRegPtr->TGC_ACT_TB.U = GtmTomTgcActTb |
        (Mcu_ConfigPtr->McuGtmConfigPtr->GtmTomCfg[GtmTomCfgIndex].TomTgcActTb);
    }
  }
}
# 4897 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lGtmAtomGlobalInit(void)
{

  Ifx_GTM_ATOM_AGC *AtomAgcRegPtr;
  uint8 AtomModuleIndex;
  uint32 GtmAtomTgcActTb;




  for (AtomModuleIndex = (0U);
       AtomModuleIndex < (9U); AtomModuleIndex++)
  {




    if (((Mcu_ConfigPtr->McuGtmConfigPtr->GtmAtomModuleUsage >>
          AtomModuleIndex) & 0x1U) == 0x1U)
    {



      AtomAgcRegPtr = (&(&(((*(Ifx_GTM*)0xF0100000u)).ATOM[AtomModuleIndex]))->AGC);

      AtomAgcRegPtr->INT_TRIG.U =
        (Mcu_ConfigPtr->McuGtmConfigPtr->GtmAtomCfg[AtomModuleIndex]
         .AtomAgcIntTrigRstCn0 & ((uint32)(((uint32)(0x3u) << (uint32)(0u)) | ((uint32)(0x3u) << (uint32)(2u)) | ((uint32)(0x3u) << (uint32)(4u)) | ((uint32)(0x3u) << (uint32)(6u)) | ((uint32)(0x3u) << (uint32)(8u)) | ((uint32)(0x3u) << (uint32)(10u)) | ((uint32)(0x3u) << (uint32)(12u)) | ((uint32)(0x3u) << (uint32)(14u)))));
      AtomAgcRegPtr->FUPD_CTRL.U =
        (Mcu_ConfigPtr->McuGtmConfigPtr->GtmAtomCfg[AtomModuleIndex]
         .AtomAgcIntTrigRstCn0 & ((uint32)(((uint32)(0x3u) << (uint32)(16u)) | ((uint32)(0x3u) << (uint32)(18u)) | ((uint32)(0x3u) << (uint32)(20u)) | ((uint32)(0x3u) << (uint32)(22u)) | ((uint32)(0x3u) << (uint32)(24u)) | ((uint32)(0x3u) << (uint32)(26u)) | ((uint32)(0x3u) << (uint32)(28u)) | ((uint32)(0x3u) << (uint32)(30u)))));
      GtmAtomTgcActTb = (AtomAgcRegPtr->ACT_TB.U & (((uint32)(0x1u) << (uint32)(24u))));
      AtomAgcRegPtr->ACT_TB.U = GtmAtomTgcActTb |
        (Mcu_ConfigPtr->McuGtmConfigPtr->GtmAtomCfg[AtomModuleIndex]
         .AtomAgcActTb);
    }
  }
}
# 5453 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lConvCtrlInit(void)
{



  Ifx_CONVERTER_CLC ConvCtrlClcVal;
  Std_ReturnType ConvCtrlInitStatus = 0x00u;

  ConvCtrlClcVal.U = (*(volatile Ifx_CONVERTER_CLC*)0xF0025000u).U;
  ConvCtrlClcVal.B.DISR = (0x0);

  Mcal_WritePeripEndInitProtReg(&(*(volatile Ifx_CONVERTER_CLC*)0xF0025000u).U, ConvCtrlClcVal.U)
                       ;




  if ((*(volatile Ifx_CONVERTER_CLC*)0xF0025000u).B.DISS != (0x0U))
  {
    ConvCtrlInitStatus = 0x01u;
# 5485 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  }
# 5500 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  return ConvCtrlInitStatus;
}
# 5599 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lInitOscClock(void)
{
  Std_ReturnType RetValue = (Std_ReturnType)0x00u;
  Mcu_SystemPllConfigType PllSource;



  Ifx_SCU_OSCCON OscconVal;




  Ifx_SCU_SYSPLLCON0 Syspllcon0Val;

  uint32 OscconPllHv, OscconPllLv;
  volatile uint32 TimeoutCtr;

  PllSource = Mcu_ConfigPtr->
      McuClockSettingPtr[Mcu_ClockSetting].SystemPllCfg;


  Syspllcon0Val.U = ((uint32)0x40003A00U);
  Syspllcon0Val.B.INSEL = PllSource.Insel;

  Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).U, (uint32)Syspllcon0Val.U)
                              ;





  if (((uint32)1U) == (uint32)PllSource.Insel)
  {
# 5641 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    OscconVal.U = (*(volatile Ifx_SCU_OSCCON*)0xF0036010u).U;
    OscconVal.U |= (0x00000000U);
    OscconVal.B.MODE = (0U);
    OscconVal.B.OSCVAL = (0x5U);
    OscconVal.B.OSCRES = 0x1U;
  }



  else if (((uint32)0U) == (uint32)PllSource.Insel)
  {
    OscconVal.U = (*(volatile Ifx_SCU_OSCCON*)0xF0036010u).U;
    OscconVal.B.MODE = (3U);
  }
  else
  {
    OscconVal.U = (*(volatile Ifx_SCU_OSCCON*)0xF0036010u).U;
    OscconVal.B.MODE = (3U);
    OscconVal.B.OSCVAL = (0x5U);
    OscconVal.B.OSCRES = 0x1U;
  }

    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_OSCCON*)0xF0036010u).U, (uint32)(OscconVal.U))
                              ;





  if (((uint32)0U) != (uint32)PllSource.Insel)
  {

    TimeoutCtr = ((uint32)10000U);
    OscconPllHv = (uint32)(*(volatile Ifx_SCU_OSCCON*)0xF0036010u).B.PLLHV;
    OscconPllLv = (uint32)(*(volatile Ifx_SCU_OSCCON*)0xF0036010u).B.PLLLV;




    while ((TimeoutCtr > 0x0U) &&
           ((0x0U == OscconPllHv) ||
            (0x0U == OscconPllLv)))
    {
      OscconPllHv = (uint32)(*(volatile Ifx_SCU_OSCCON*)0xF0036010u).B.PLLHV;
      OscconPllLv = (uint32)(*(volatile Ifx_SCU_OSCCON*)0xF0036010u).B.PLLLV;

      TimeoutCtr--;
    }




    if (0x0U == TimeoutCtr)
    {
# 5709 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      RetValue = (Std_ReturnType)0x01u;
    }



    else
    {
# 5727 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    }
  }


  return RetValue;
}
# 5757 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lInitPllClock(void)
{



  Ifx_SCU_SYSPLLCON0 Syspllcon0Val;



  Ifx_SCU_SYSPLLCON1 Syspllcon1Val;



  Ifx_SCU_PERPLLCON0 Perpllcon0Val;



  Ifx_SCU_PERPLLCON1 Perpllcon1Val;
  volatile uint32 TimeoutCtr;
  uint32 SysPllStat, PerPllStat;
  uint32 ResetDelayTicks, BaseSTMTick, CurrSTMTick, DelayTickResolution;
  Std_ReturnType RetValue = (Std_ReturnType)0x00u;
# 5788 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  Syspllcon0Val.U = (*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).U;
  Syspllcon0Val.B.NDIV = Mcu_ConfigPtr->McuClockSettingPtr
                         [Mcu_ClockSetting].SystemPllCfg.SysPllNDiv;
  Syspllcon0Val.B.PDIV = Mcu_ConfigPtr->McuClockSettingPtr
                         [Mcu_ClockSetting].SystemPllCfg.SysPllPDiv;
  Syspllcon0Val.B.PLLPWD = 0x1U;
  Syspllcon0Val.U = (uint32)Syspllcon0Val.U & (~((uint32)0x000001FBU));



  if (0x1U == Mcu_ConfigPtr->
      McuClockSettingPtr[Mcu_ClockSetting].SystemPllCfg.FmPllEn)
  {

    Syspllcon0Val.B.MODEN = Mcu_ConfigPtr->McuClockSettingPtr
                            [Mcu_ClockSetting]
                            .SystemPllCfg.FmPllEn;
    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON2*)0xF0036020u).U, (uint32)Mcu_ConfigPtr->McuClockSettingPtr [Mcu_ClockSetting].SystemPllCfg.ModulationAmplitude)

                                                            ;
  }
  Syspllcon1Val.U = (*(volatile Ifx_SCU_SYSPLLCON1*)0xF003601Cu).U;
  Syspllcon1Val.B.K2DIV = ((uint32)Mcu_ConfigPtr->
                           McuClockSettingPtr[Mcu_ClockSetting]



                            .BackupFreqKDiv & ((uint32)0x0000000FU));

  Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON1*)0xF003601Cu).U, (uint32)Syspllcon1Val.U)
                              ;




  Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).U, (uint32)Syspllcon0Val.U)
                              ;
# 5833 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  Perpllcon0Val.U = (*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).U;
  Perpllcon1Val.U = (*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U;
  Perpllcon0Val.B.DIVBY = Mcu_ConfigPtr->McuClockSettingPtr
                          [Mcu_ClockSetting]
                          .PeripheralPllCfg.K3DivByPass;
  Perpllcon0Val.B.NDIV = Mcu_ConfigPtr->McuClockSettingPtr
                         [Mcu_ClockSetting]
                         .PeripheralPllCfg.PerPllNDiv;
  Perpllcon0Val.B.PDIV = Mcu_ConfigPtr->McuClockSettingPtr
                         [Mcu_ClockSetting]
                         .PeripheralPllCfg.PerPllPDiv;
  Perpllcon0Val.B.PLLPWD = 0x1U;
  Perpllcon0Val.U = (uint32)Perpllcon0Val.U &
                    (~((uint32)0x000001FEU));

  Perpllcon1Val.B.K2DIV = (((uint32)Mcu_ConfigPtr->McuClockSettingPtr
                            [Mcu_ClockSetting]
                            .BackupFreqKDiv >>
                            (4U)) &



  ((uint32)0x0000000FU));
  Perpllcon1Val.B.K3DIV = (((uint32)Mcu_ConfigPtr->McuClockSettingPtr
                            [Mcu_ClockSetting]
                            .BackupFreqKDiv >>
                            (8U)) &



                            ((uint32)0x0000000FU));

  Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U, (uint32)(Perpllcon1Val.U))
                                ;
  Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).U, (uint32)(Perpllcon0Val.U))
                                ;

  CurrSTMTick = Mcal_DelayGetTick();
  BaseSTMTick = CurrSTMTick;
  DelayTickResolution = Mcal_DelayResetTickCalibration();
  ResetDelayTicks = (((uint32)1200000U) / DelayTickResolution);




  while ((uint32)((CurrSTMTick - BaseSTMTick) & (0xFFFFFFFFU)) <
         ResetDelayTicks)
  {
    CurrSTMTick = Mcal_DelayGetTick();
  }
# 5891 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  TimeoutCtr = ((uint32)1000U);
  SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.PWDSTAT;
  PerPllStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.PWDSTAT;




  while ((TimeoutCtr > 0x0U) && ((0x1U == SysPllStat) ||
                                 (0x1U == PerPllStat)))
  {
    SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.PWDSTAT;
    PerPllStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.PWDSTAT;
    TimeoutCtr--;
  }



  if (0x1U == (*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.PWDSTAT)
  {
# 5922 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    RetValue = (Std_ReturnType)0x01u;
  }
# 5939 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  if (0x1U == (*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.PWDSTAT)
  {
# 5953 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    RetValue = (Std_ReturnType)0x01u;
  }
# 5970 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  if ((Std_ReturnType)0x01u != RetValue)
  {





    RetValue = Mcu_lInitPllKDivCheck();
  }



  if ((Std_ReturnType)0x01u != RetValue)
  {





    Syspllcon0Val.U = (*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).U;
    Syspllcon0Val.B.RESLD = 0x1U;

    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).U, (uint32)(Syspllcon0Val.U))
                                  ;
    Perpllcon0Val.U = (*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).U;
    Perpllcon0Val.B.RESLD = 0x1U;

    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).U, (uint32)(Perpllcon0Val.U))
                                  ;
  }


  return RetValue;
}
# 6029 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lInitPllKDivCheck(void)
{
  volatile uint32 TimeoutCtr;
  uint32 SysPllStat, PerPllStat, PerPllStat1;
  Std_ReturnType RetValue = (Std_ReturnType)0x00u;







  TimeoutCtr = ((uint32)1000U);
  SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.K2RDY;
  PerPllStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.K2RDY;
  PerPllStat1 = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.K3RDY;





  while ((TimeoutCtr > 0x0U) && ((0x0U == SysPllStat) ||
                                 (0x0U == PerPllStat) ||
                                 (0x0U == PerPllStat1)))
  {
    SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.K2RDY;
    PerPllStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.K2RDY;
    PerPllStat1 = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.K3RDY;
    TimeoutCtr--;
  }




  if (0x0U == (*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.K2RDY)
  {
# 6076 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    RetValue = (Std_ReturnType)0x01u;
  }
# 6090 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  PerPllStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.K2RDY;
  PerPllStat1 = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.K3RDY;



  if ((0x0U == PerPllStat) || (0x0U == PerPllStat1))
  {
# 6108 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    RetValue = (Std_ReturnType)0x01u;
  }
# 6124 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  return RetValue;
}
# 6151 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lInitClockTree(void)
{



  Ifx_SCU_CCUCON0 Ccucon0Val;
  uint32 TimeoutCtr, Ccucon0Lck, Ccucon5Lck;



  Std_ReturnType RetValue = (Std_ReturnType)0x00u;





  Mcu_lInitCcuConCpuReg();
# 6178 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  RetValue = Mcu_lInitCcuCon12();
# 6188 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  if (0x00u == RetValue)
  {
    Ccucon0Val.U = (*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).U;
    Ccucon0Val.U = (((uint32)Ccucon0Val.U & (~((uint32)0x0FFFFFFFU))) |
                    ((Mcu_ConfigPtr->McuClockSettingPtr
                      [Mcu_ClockSetting].PllDistributionCfgPtr->Ccucon0) &
                     ((uint32)0x0FFFFFFFU)));
    Ccucon0Val.B.UP = 0x1U;

    TimeoutCtr = ((uint32)1500U);

    Ccucon0Lck = (uint32)(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).B.LCK;
    Ccucon5Lck = (uint32)(*(volatile Ifx_SCU_CCUCON5*)0xF003604Cu).B.LCK;




    while ((TimeoutCtr > 0x0U) &&
           ((0x1U == Ccucon0Lck) || (0x1U == Ccucon5Lck)))
    {
      Ccucon0Lck = (uint32)(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).B.LCK;
      Ccucon5Lck = (uint32)(*(volatile Ifx_SCU_CCUCON5*)0xF003604Cu).B.LCK;

      TimeoutCtr--;
    }



    if ((0x1U == Ccucon0Lck) || (0x1U == Ccucon5Lck))
    {
# 6234 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      RetValue = (Std_ReturnType)0x01u;
    }
    else
    {
# 6252 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON5*)0xF003604Cu).U, Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting] .PllDistributionCfgPtr->Ccucon5)

                                          ;


      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).U, (uint32)(Ccucon0Val.U))
                                 ;
# 6323 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    }




    if ((Std_ReturnType)0x01u != RetValue)
    {

      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_EXTCON*)0xF003603Cu).U, (uint32)Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting] .ExternalClockCfg)

                            ;
    }
  }


  return RetValue;
}
# 6373 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lSwitchToBackUpClockFreq(
  const uint8 ApiId,
  const Mcu_ClockType ClockSettingIndex)
{



  Ifx_SCU_CCUCON0 Ccucon0Val;



  Ifx_SCU_SYSPLLCON1 Syspllcon1Val;

  uint32 SyspllK2Div, SyspllPDiv, SyspllNDiv, KDivRampDelayTicks;
  uint32 PllBackupFreqKDiv, SysPllStat;
  uint32 DelayTickResolution, BaseSTMTick, CurrSTMTick;
  volatile uint32 TimeoutCtr;
  Std_ReturnType RetValue = (Std_ReturnType)0x00u;
# 6402 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  SyspllPDiv = (uint32)(*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).B.PDIV;
  SyspllNDiv = (uint32)(*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).B.NDIV;




  if ((*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).B.INSEL == ((uint32)1U))
  {
    PllBackupFreqKDiv = (uint32)((SyspllNDiv + 0x1U) * (20U)) /
                        ((100U) * (SyspllPDiv + 0x1U ));

  }
  else if ((*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).B.INSEL == ((uint32)0U))
  {
    PllBackupFreqKDiv = (uint32)(SyspllNDiv + 0x1U) / (SyspllPDiv + 0x1U);
  }
  else
  {
    PllBackupFreqKDiv = (uint32)((SyspllNDiv + 0x1U) * (20U)) /
                        ((100U) * (SyspllPDiv + 0x1U ));
  }

  PllBackupFreqKDiv = PllBackupFreqKDiv - 0x1U;
  SyspllK2Div = (uint32)(*(volatile Ifx_SCU_SYSPLLCON1*)0xF003601Cu).B.K2DIV;




  while ((PllBackupFreqKDiv != SyspllK2Div) &&
         ((Std_ReturnType)0x00u == RetValue))
  {
    if (PllBackupFreqKDiv > SyspllK2Div)
    {
      SyspllK2Div++;
      KDivRampDelayTicks = Mcu_ConfigPtr->
                           McuClockSettingPtr[ClockSettingIndex]
                           .SysPllK2DivStepUpChangeDelay;
    }
    else
    {
      SyspllK2Div--;
      KDivRampDelayTicks = Mcu_ConfigPtr->
                           McuClockSettingPtr[ClockSettingIndex]
                           .SysPllK2DivStepDownChangeDelay;
    }



    Syspllcon1Val.U = (*(volatile Ifx_SCU_SYSPLLCON1*)0xF003601Cu).U;




    Syspllcon1Val.B.K2DIV = SyspllK2Div;




    if (ApiId == ((uint8)2U))
    {
      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON1*)0xF003601Cu).U, (uint32)(Syspllcon1Val.U))
                                    ;
    }
    else
    {
      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON1*)0xF003601Cu).U, (uint32)(Syspllcon1Val.U))
                                    ;
    }


    TimeoutCtr = ((uint32)1000U);
    SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.K2RDY;




    while ((TimeoutCtr > 0x0U) && (0x0U == SysPllStat))
    {
      SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.K2RDY;
      TimeoutCtr--;
    }




    if (0x0U == TimeoutCtr)
    {
# 6499 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      RetValue = (Std_ReturnType)0x01u;
    }
    else
    {
# 6513 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      DelayTickResolution = Mcal_DelayResetTickCalibration();
      CurrSTMTick = Mcal_DelayGetTick();
      BaseSTMTick = CurrSTMTick;
      KDivRampDelayTicks = ((KDivRampDelayTicks * ((uint32)1000U)) /
                            DelayTickResolution);




      while ((uint32)((CurrSTMTick - BaseSTMTick) & (0xFFFFFFFFU)) <
             KDivRampDelayTicks)
      {
        CurrSTMTick = Mcal_DelayGetTick();
      }
    }
  }




  if ((Std_ReturnType)0x00u == RetValue)
  {




    Mcu_lPerPllToBackUpClockFreq(ApiId);

    Ccucon0Val.U = (*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).U;
    Ccucon0Val.B.CLKSEL = (0U);
    Ccucon0Val.B.UP = 0x1U;
    Ccucon0Val.U = (uint32)Ccucon0Val.U & ((uint32)0xFFFF7FFFU);




    if (ApiId == ((uint8)2U))
    {

      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).U, (uint32)(Ccucon0Val.U))
                                 ;
    }
    else
    {

      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).U, (uint32)(Ccucon0Val.U))
                                 ;
    }
  }


  return RetValue;
}
# 6590 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lPerPllToBackUpClockFreq(const uint8 ApiId)
{
  uint32 PerpllKDiv, KDivRampDelayTicks;
  uint32 PllBackupFreqKDiv, PerpllPDiv, PerpllNDiv;
  uint32 DelayTickResolution, BaseSTMTick, CurrSTMTick;



  Ifx_SCU_PERPLLCON1 Perpllcon1Val;


  DelayTickResolution = Mcal_DelayTickResolution();
# 6612 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  PerpllPDiv = (uint32)(*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).B.PDIV;
  PerpllNDiv = (uint32)(*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).B.NDIV;




  if ((*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).B.INSEL == ((uint32)1U))
  {
    PllBackupFreqKDiv = (uint32)((PerpllNDiv + 0x1U) * (20U)) /
                        ((100U) * (PerpllPDiv + 0x1U ));

  }
  else if ((*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).B.INSEL == ((uint32)0U))
  {
    PllBackupFreqKDiv = (uint32)(PerpllNDiv + 0x1U) / (PerpllPDiv + 0x1U );
  }
  else
  {
    PllBackupFreqKDiv = (uint32)((PerpllNDiv + 0x1U) * (20U)) /
                        ((100U) * (PerpllPDiv + 0x1U ));
  }

  PllBackupFreqKDiv = PllBackupFreqKDiv - 0x01U;
  PerpllKDiv = (uint32)(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).B.K2DIV;




  while (PllBackupFreqKDiv != PerpllKDiv)
  {
    if (PllBackupFreqKDiv > PerpllKDiv)
    {
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting]
                           .PeripheralPllK2StepUpChangeDelay;
      PerpllKDiv++;
    }
    else
    {
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting]
                           .PeripheralPllK2StepDownChangeDelay;
      PerpllKDiv--;
    }



    Perpllcon1Val.U = (*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U;




    Perpllcon1Val.B.K2DIV = PerpllKDiv;



    if (ApiId == ((uint8)2U))
    {
      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U, (uint32)(Perpllcon1Val.U))
                                    ;
    }
    else
    {
      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U, (uint32)(Perpllcon1Val.U))
                                    ;
    }


    CurrSTMTick = Mcal_DelayGetTick();
    BaseSTMTick = CurrSTMTick;
    KDivRampDelayTicks = ((KDivRampDelayTicks * ((uint32)1000U)) /
                          DelayTickResolution);



    while ((uint32)((CurrSTMTick - BaseSTMTick) & (0xFFFFFFFFU)) <
           KDivRampDelayTicks)
    {
      CurrSTMTick = Mcal_DelayGetTick();
    }
  }
# 6704 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  if ((*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).B.INSEL == ((uint32)1U))
  {
    PllBackupFreqKDiv = (uint32)((PerpllNDiv + 0x1U) * (20U)) /
                        ((100U) * (PerpllPDiv + 0x1U ));

  }
  else if ((*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).B.INSEL == ((uint32)0U))
  {
    PllBackupFreqKDiv = (uint32)(PerpllNDiv + 0x1U) / (PerpllPDiv + 0x1U );
  }
  else
  {
    PllBackupFreqKDiv = (uint32)((PerpllNDiv + 0x1U) * (20U)) /
                        ((100U) * (PerpllPDiv + 0x1U ));
  }




  if ((*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).B.DIVBY == 0x0U)
  {
    PllBackupFreqKDiv = (uint32)((PllBackupFreqKDiv * ((uint32)10U)) /
                                 ((uint32)16U));
  }
  else
  {
    PllBackupFreqKDiv = (uint32)(PllBackupFreqKDiv / ((uint32)2U));
  }
  PllBackupFreqKDiv = PllBackupFreqKDiv - 0x1U;
  PerpllKDiv = (uint32)(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).B.K3DIV;




  while (PllBackupFreqKDiv != PerpllKDiv)
  {
    if (PllBackupFreqKDiv > PerpllKDiv)
    {
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr
                           [Mcu_ClockSetting]
                           .PeripheralPllK3StepUpChangeDelay;
      PerpllKDiv++;
    }
    else
    {
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr
                           [Mcu_ClockSetting]
                           .PeripheralPllK3StepDownChangeDelay;
      PerpllKDiv--;
    }



    Perpllcon1Val.U = (*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U;




    Perpllcon1Val.B.K3DIV = PerpllKDiv;




    if (ApiId == ((uint8)2U))
    {
      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U, (uint32)(Perpllcon1Val.U))
                                    ;
    }
    else
    {
      Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U, (uint32)(Perpllcon1Val.U))
                                    ;
    }


    CurrSTMTick = Mcal_DelayGetTick();
    BaseSTMTick = CurrSTMTick;
    KDivRampDelayTicks = ((KDivRampDelayTicks * ((uint32)1000U)) /
                          DelayTickResolution);



    while ((uint32)((CurrSTMTick - BaseSTMTick) & (0xFFFFFFFFU)) <
           KDivRampDelayTicks)
    {
      CurrSTMTick = Mcal_DelayGetTick();
    }
  }
}
# 6819 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lSwitchToDesiredFreq(void)
{
  uint32 CurrentKDivVal, TargetKDivVal, KDivRampDelayTicks;
  uint32 DelayTickResolution, BaseSTMTick, CurrSTMTick, SysPllStat;
  volatile uint32 TimeoutCtr;
  Std_ReturnType RetValue = (Std_ReturnType)0x00u;



  Ifx_SCU_SYSPLLCON1 Syspllcon1Val;
# 6839 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  CurrentKDivVal = (uint32)(*(volatile Ifx_SCU_SYSPLLCON1*)0xF003601Cu).B.K2DIV;
  TargetKDivVal = Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting]
                  .SystemPllCfg.SysPllK2Div;



  while ((TargetKDivVal != CurrentKDivVal) &&
         ((Std_ReturnType)0x00u == RetValue))
  {



    if (TargetKDivVal > CurrentKDivVal)
    {
      CurrentKDivVal++;
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting]
                           .SysPllK2DivStepUpChangeDelay;
    }
    else
    {
      CurrentKDivVal--;
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting]
                           .SysPllK2DivStepDownChangeDelay;
    }



    Syspllcon1Val.U = (*(volatile Ifx_SCU_SYSPLLCON1*)0xF003601Cu).U;




    Syspllcon1Val.B.K2DIV = CurrentKDivVal;

    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON1*)0xF003601Cu).U, (uint32)(Syspllcon1Val.U))
                                  ;


    TimeoutCtr = ((uint32)1000U);
    SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.K2RDY;




    while ((TimeoutCtr > 0x0U) && (0x0U == SysPllStat))
    {

      SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.K2RDY;
      TimeoutCtr--;
    }



    if (0x0U == TimeoutCtr)
    {
# 6905 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      RetValue = (Std_ReturnType)0x01u;
    }
    else
    {
# 6920 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      DelayTickResolution = Mcal_DelayResetTickCalibration();
      CurrSTMTick = Mcal_DelayGetTick();
      BaseSTMTick = CurrSTMTick;
      KDivRampDelayTicks = ((KDivRampDelayTicks * ((uint32)1000U)) /
                            DelayTickResolution);




      while ((uint32)((CurrSTMTick - BaseSTMTick) & (0xFFFFFFFFU)) <
             KDivRampDelayTicks)
      {
        CurrSTMTick = Mcal_DelayGetTick();
      }
    }
  }




  if ((Std_ReturnType)0x00u == RetValue)
  {




    Mcu_lPerPllToDesiredFreq();
  }


  return RetValue;
}
# 6976 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lPerPllToDesiredFreq(void)
{
  uint32 CurrentKDivVal, TargetKDivVal, KDivRampDelayTicks;
  uint32 DelayTickResolution, BaseSTMTick, CurrSTMTick;



  Ifx_SCU_PERPLLCON1 Perpllcon1Val;



  DelayTickResolution = Mcal_DelayTickResolution();
# 6996 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  TargetKDivVal = Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting]
                  .PeripheralPllCfg.PerPllK2Div;

  CurrentKDivVal = (uint32)(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).B.K2DIV;




  while (TargetKDivVal != CurrentKDivVal)
  {




    if (TargetKDivVal > CurrentKDivVal)
    {
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr
                           [Mcu_ClockSetting]
                           .PeripheralPllK2StepUpChangeDelay;
      CurrentKDivVal++;
    }
    else
    {
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr
                           [Mcu_ClockSetting]
                           .PeripheralPllK2StepDownChangeDelay;
      CurrentKDivVal--;
    }




    Perpllcon1Val.U = (*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U;




    Perpllcon1Val.B.K2DIV = CurrentKDivVal;

    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U, (uint32)(Perpllcon1Val.U))
                                  ;


    CurrSTMTick = Mcal_DelayGetTick();
    BaseSTMTick = CurrSTMTick;
    KDivRampDelayTicks = ((KDivRampDelayTicks * ((uint32)1000U)) /
                          DelayTickResolution);



    while ((uint32)((CurrSTMTick - BaseSTMTick) &
                    (0xFFFFFFFFU)) < KDivRampDelayTicks)
    {
      CurrSTMTick = Mcal_DelayGetTick();
    }
  }
# 7061 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  TargetKDivVal = Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting]
                  .PeripheralPllCfg.PerPllK3Div;
  CurrentKDivVal = (uint32)(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).B.K3DIV;




  while (TargetKDivVal != CurrentKDivVal)
  {



    if (TargetKDivVal > CurrentKDivVal)
    {
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr
                           [Mcu_ClockSetting].PeripheralPllK3StepUpChangeDelay;
      CurrentKDivVal++;
    }
    else
    {
      KDivRampDelayTicks = Mcu_ConfigPtr->McuClockSettingPtr
                           [Mcu_ClockSetting].PeripheralPllK3StepDownChangeDelay;
      CurrentKDivVal--;
    }



    Perpllcon1Val.U = (*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U;




    Perpllcon1Val.B.K3DIV = CurrentKDivVal;

    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON1*)0xF003602Cu).U, (uint32)(Perpllcon1Val.U))
                                  ;


    CurrSTMTick = Mcal_DelayGetTick();
    BaseSTMTick = CurrSTMTick;
    KDivRampDelayTicks = ((KDivRampDelayTicks * ((uint32)1000U)) /
                          DelayTickResolution);



    while ((uint32)((CurrSTMTick - BaseSTMTick) & (0xFFFFFFFFU)) <
           KDivRampDelayTicks)
    {
      CurrSTMTick = Mcal_DelayGetTick();
    }
  }
}
# 7139 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Mcu_ResetType Mcu_lGetRstReason
(const Mcu_RawResetType RstReasonRaw)
{
  Mcu_ResetType ResetReason = MCU_RESET_UNDEFINED;





  switch (RstReasonRaw)
  {



    case ((Mcu_RawResetType)(0x00000001U)):
    {
      ResetReason = MCU_ESR0_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00000002U)):
    {
      ResetReason = MCU_ESR1_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00000008U)):
    {
      ResetReason = MCU_SMU_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00000010U)):
    {
      ResetReason = MCU_SW_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00000020U)):
    {
      ResetReason = MCU_STM0_RESET;
      break;
    }

    case ((Mcu_RawResetType)(0x00000040U)):
    {
      ResetReason = MCU_STM1_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00000080U)):
    {
      ResetReason = MCU_STM2_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00000100U)):
    {
      ResetReason = MCU_STM3_RESET;
      break;
    }
# 7233 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    case ((Mcu_RawResetType)(0x13810000U)):
    case ((Mcu_RawResetType)(0x00010000U)):
    {
      ResetReason = MCU_POWER_ON_RESET;
      break;
    }
    default:
    {



      ResetReason = Mcu_lGetRstReason2(RstReasonRaw);
      break;
    }
  }

  return ResetReason;
}
# 7275 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Mcu_ResetType Mcu_lGetRstReason2(const Mcu_RawResetType
    RstReasonRaw)
{
  Mcu_ResetType ResetReason = MCU_RESET_UNDEFINED;





  switch (RstReasonRaw)
  {



    case ((Mcu_RawResetType)(0x40000000U)):
    {
      ResetReason = MCU_LBIST_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00040000U)):
    {
      ResetReason = MCU_CB0_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00080000U)):
    {
      ResetReason = MCU_CB1_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00100000U)):
    {
      ResetReason = MCU_CB3_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x00810000U)):
    {
      ResetReason = MCU_EVRC_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x01010000U)):
    {
      ResetReason = MCU_EVR33_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x02010000U)):
    {
      ResetReason = MCU_SUPPLY_WDOG_RESET;
      break;
    }



    case ((Mcu_RawResetType)(0x10010000U)):
    {
      ResetReason = MCU_STBYR_RESET;
      break;
    }
    default:
    {





      if (((RstReasonRaw & ((Mcu_RawResetType)(0x13810000U))) ==
           (((Mcu_RawResetType)(0x13810000U)))) || ((RstReasonRaw &
            ((Mcu_RawResetType)(0x00010000U))) == (((Mcu_RawResetType)(0x00010000U)))))
      {
        ResetReason = MCU_RESET_MULTIPLE;
      }
      else
      {
        ResetReason = MCU_RESET_UNDEFINED;
      }
      break;
    }
  }

  return ResetReason;
}
# 7395 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lSetIdleMode(const uint8 CoreId)
{
  uint8 CoreSelect, IdleModeSel;







  CoreSelect = CoreId + (uint8)0x1U;
  IdleModeSel = (uint8)(*(volatile Ifx_SCU_PMSWCR1*)0xF00360E8u).B.CPUIDLSEL;




  if ((CoreSelect == IdleModeSel) ||
      (((uint8)0x00U) == IdleModeSel))
  {



    Mcu_lSetCpuMode((uint32)CoreId, ((uint32)1U));
  }

  else
  {
    Mcu_lReportError(((uint8)8U), ((uint8)18U));
  }

}
# 7448 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lSetSleepMode(const uint8 CoreId)
{
  uint8 CoreSelect, SleepModeSel;







  CoreSelect = CoreId + (uint8)0x1U;
  SleepModeSel = (uint8)(*(volatile Ifx_SCU_PMSWCR1*)0xF00360E8u).B.CPUSEL;




  if ((CoreSelect == SleepModeSel) ||
      (((uint8)0x07U) == SleepModeSel))
  {



    Mcu_lSetCpuMode((uint32)CoreId, ((uint32)2U));
  }

  else
  {
    Mcu_lReportError(((uint8)8U), ((uint8)18U));
  }

}
# 7505 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lSetStandbyMode(const uint8 CoreId)
{



  Ifx_SCU_SYSPLLCON0 Syspllcon0Val;



  Ifx_SCU_PERPLLCON0 Perpllcon0Val;



  Ifx_SCU_PMSWCR1 Pmswcr1Val;
  volatile uint32 TimeoutCtr;
  uint32 SysPllStat, PerPllStat, Pmswcr3Stat;
  uint32 ResetDelayTicks, BaseSTMTick, CurrSTMTick, DelayTickResolution;




  uint8 CoreSelect, StandbyModeSel;
  volatile Std_ReturnType RetValue = 0x00u;
# 7538 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  CoreSelect = CoreId + (uint8)0x1U;
  StandbyModeSel = (uint8)(*(volatile Ifx_SCU_PMSWCR1*)0xF00360E8u).B.CPUSEL;





  if (((CoreSelect == StandbyModeSel) ||
       (((uint8)0x07U) == StandbyModeSel)))
  {




    if (!((((uint8)0x07U) == StandbyModeSel) &&
          ((0U) != CoreId)))
    {




      if ((0U) != (*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).B.CLKSEL)
      {
        RetValue =
          Mcu_lSwitchToBackUpClockFreq(((uint8)8U), Mcu_ClockSetting);
      }




      if (0x00u == RetValue)
      {






        Syspllcon0Val.U = (uint32)(*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).U &
                          (~((uint32)0x000001FBU));
        Syspllcon0Val.B.PLLPWD = 0x0U;
        Perpllcon0Val.U = (uint32)(*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).U &
                          (~((uint32)0x000001FEU));
        Perpllcon0Val.B.PLLPWD = 0x0U;


        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_SYSPLLCON0*)0xF0036018u).U, (uint32)(Syspllcon0Val.U))
                                      ;

        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PERPLLCON0*)0xF0036028u).U, (uint32)(Perpllcon0Val.U))
                                      ;

        TimeoutCtr = ((uint32)1000U);
        SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.PWDSTAT;
        PerPllStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.PWDSTAT;




        while ((TimeoutCtr > 0x0U) && ((0x0U == SysPllStat) ||
                                       (0x0U == PerPllStat)))
        {
          SysPllStat = (uint32)(*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.PWDSTAT;
          PerPllStat = (uint32)(*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.PWDSTAT;
          TimeoutCtr--;
        }




        if (0x0U == (*(volatile Ifx_SCU_SYSPLLSTAT*)0xF0036014u).B.PWDSTAT)
        {
# 7622 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
          RetValue = 0x01u;
        }
# 7639 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
        if (0x0U == (*(volatile Ifx_SCU_PERPLLSTAT*)0xF0036024u).B.PWDSTAT)
        {
# 7655 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
          RetValue = 0x01u;
        }
# 7673 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
        if (0x00u == RetValue)
        {
          Pmswcr1Val.U = (*(volatile Ifx_SCU_PMSWCR1*)0xF00360E8u).U;
          Pmswcr1Val.B.IRADIS = 0x1U;

          Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_PMSWCR1*)0xF00360E8u).U, (uint32)Pmswcr1Val.U)
                                   ;

          CurrSTMTick = Mcal_DelayGetTick();
          BaseSTMTick = CurrSTMTick;

          DelayTickResolution = Mcal_DelayResetTickCalibration();
          ResetDelayTicks = (((uint32)250000U) / DelayTickResolution);
          Pmswcr3Stat = (*(volatile Ifx_PMS_PMSWCR3*)0xF02480C0u).B.BUSY;




          while (
            ((uint32)((CurrSTMTick - BaseSTMTick) & (0xFFFFFFFFU)) <
             ResetDelayTicks) &&
            (0x1U == Pmswcr3Stat))
          {
            CurrSTMTick = Mcal_DelayGetTick();
            Pmswcr3Stat = (*(volatile Ifx_PMS_PMSWCR3*)0xF02480C0u).B.BUSY;
          }




          if ((1U) == (*(volatile Ifx_PMS_PMSWCR3*)0xF02480C0u).B.BUSY)
          {
# 7717 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
            RetValue = 0x01u;
          }
          else
          {
# 7735 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
            Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_PMSWCR3*)0xF02480C0u).U, Mcu_ConfigPtr->McuLowPowerModeCfgPtr->Pmswcr3)
                                                              ;
          }
        }
      }
    }




    if (0x00u == RetValue)
    {
# 7768 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      Mcu_lSetCpuMode((uint32)CoreId, ((uint32)3U));
    }
  }




  else
  {



    Mcu_lReportError(((uint8)8U), ((uint8)18U));
  }

}
# 7807 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lWriteTrapDisReg(void)
{

  Mcal_WritePeripEndInitProtReg(&(*(volatile Ifx_SCU_TRAPDIS0*)0xF0036130u).U, Mcu_ConfigPtr->McuTrapSettingConf0)
                                         ;
# 7820 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
}
# 7882 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lInitCcuConCpuReg(void)
{


  Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON6*)0xF0036080u).U, (Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting] .PllDistributionCfgPtr->CcuconCpu[0]))

                                             ;






  Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON7*)0xF0036084u).U, (Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting] .PllDistributionCfgPtr->CcuconCpu[1]))

                                             ;







  Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON8*)0xF0036088u).U, (Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting] .PllDistributionCfgPtr->CcuconCpu[2]))

                                             ;







  Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON9*)0xF003608Cu).U, (Mcu_ConfigPtr->McuClockSettingPtr[Mcu_ClockSetting] .PllDistributionCfgPtr->CcuconCpu[3]))

                                             ;
# 7939 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
}
# 8063 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ void Mcu_lSetCpuMode(const uint32 CoreId, const uint32 ModeReq)
{



  Ifx_SCU_PMCSR0 PMCSR0Val;







  Ifx_SCU_PMCSR1 PMCSR1Val;
# 8085 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  Ifx_SCU_PMCSR2 PMCSR2Val;
# 8094 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  Ifx_SCU_PMCSR3 PMCSR3Val;
# 8115 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  switch (CoreId)
  {



    case 0U:
      PMCSR0Val.U = (*(volatile Ifx_SCU_PMCSR0*)0xF00360C8u).U;




      PMCSR0Val.B.REQSLP = ModeReq;

      Mcal_WriteCpuEndInitProtReg(&(*(volatile Ifx_SCU_PMCSR0*)0xF00360C8u).U, PMCSR0Val.U);
      break;
# 8138 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    case 1U:
      PMCSR1Val.U = (*(volatile Ifx_SCU_PMCSR1*)0xF00360CCu).U;




      PMCSR1Val.B.REQSLP = ModeReq;

      Mcal_WriteCpuEndInitProtReg(&(*(volatile Ifx_SCU_PMCSR1*)0xF00360CCu).U, PMCSR1Val.U);
      break;
# 8157 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    case 2U:
      PMCSR2Val.U = (*(volatile Ifx_SCU_PMCSR2*)0xF00360D0u).U;




      PMCSR2Val.B.REQSLP = ModeReq;

      Mcal_WriteCpuEndInitProtReg(&(*(volatile Ifx_SCU_PMCSR2*)0xF00360D0u).U, PMCSR2Val.U);
      break;
# 8176 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    case 3U:
      PMCSR3Val.U = (*(volatile Ifx_SCU_PMCSR3*)0xF00360D4u).U;




      PMCSR3Val.B.REQSLP = ModeReq;

      Mcal_WriteCpuEndInitProtReg(&(*(volatile Ifx_SCU_PMCSR3*)0xF00360D4u).U, PMCSR3Val.U);
      break;
# 8226 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    default:

      break;
  }
}
# 8255 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static void Mcu_lReportError(const uint8 ApiId, const uint8 ErrorId)
{
# 8275 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  Det_ReportError((uint16)((uint16)101U), (0U), ApiId, ErrorId);

}
# 8308 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static void Mcu_lReportMultiCoreError(
  const uint8 ApiId,
  const uint8 ErrorId)
{







  Det_ReportError((uint16)((uint16)101U), (0U), ApiId, ErrorId);
# 8332 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
}
# 9158 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lInitClockDetCheck
(const Mcu_ClockType ClockSetting)
{
  Std_ReturnType RetValue = 0x00u;





  uint32 CoreId = Mcal_GetCpuIndex();



  if ((0U) != CoreId)
  {



    Mcu_lReportMultiCoreError(((uint8)2U), ((uint8)104U));
    RetValue = 0x01u;
  }
  else

  {



    if (Mcu_DriverState != ((uint32)1U))
    {






      Mcu_lReportError(((uint8)2U), ((uint8)15U));
      RetValue = 0x01u;
    }
    else
    {






      if (ClockSetting >= (Mcu_ConfigPtr->McuNoOfClockCfg))
      {
        Mcu_lReportError(((uint8)2U), ((uint8)11U));
        RetValue = 0x01u;
      }
    }
  }

  return RetValue;
}
# 9242 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lInitCcuCon12(void)
{
  Std_ReturnType RetValue = 0x00u;
  uint32 TimeoutCtr;



  Ifx_SCU_CCUCON1 Ccucon1Val;



  Ifx_SCU_CCUCON2 Ccucon2Val;




  TimeoutCtr = ((uint32)1500U);
  do
  {
    TimeoutCtr--;
    Ccucon1Val.U = (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).U;
  } while ((TimeoutCtr > 0x0U) && (0x1U == Ccucon1Val.B.LCK));




  if (0x1U == (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.LCK)
  {
# 9279 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    RetValue = (Std_ReturnType)0x01u;
  }
  else
  {







    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).U, ((*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).U & ((uint32)0x0F0F0F8F)))
                                                      ;
  }




  TimeoutCtr = ((uint32)1500U);
  do
  {
    TimeoutCtr--;
    Ccucon2Val.U = (*(volatile Ifx_SCU_CCUCON2*)0xF0036040u).U;
  } while ((TimeoutCtr > 0x0U) && (0x1U == Ccucon2Val.B.LCK));



  if (0x1U == (*(volatile Ifx_SCU_CCUCON2*)0xF0036040u).B.LCK)
  {
# 9317 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    RetValue = (Std_ReturnType)0x01u;
  }
  else
  {







    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON2*)0xF0036040u).U, ((*(volatile Ifx_SCU_CCUCON2*)0xF0036040u).U & ((uint32)0x07000F0F)))
                                                      ;
  }




  TimeoutCtr = ((uint32)1500U);
  do
  {
    TimeoutCtr--;
    Ccucon1Val.U = (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).U;
  } while ((TimeoutCtr > 0x0U) && (0x1U == Ccucon1Val.B.LCK));



  if (0x1U == (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.LCK)
  {
# 9355 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    RetValue = (Std_ReturnType)0x01u;
  }
  else
  {







    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).U, Mcu_ConfigPtr->McuClockSettingPtr [Mcu_ClockSetting].PllDistributionCfgPtr->Ccucon1)

                                                          ;
  }




  TimeoutCtr = ((uint32)1500U);
  do
  {
    TimeoutCtr--;
    Ccucon2Val.U = (*(volatile Ifx_SCU_CCUCON2*)0xF0036040u).U;
  } while ((TimeoutCtr > 0x0U) && (0x1U == Ccucon2Val.B.LCK));



  if (0x1U == (*(volatile Ifx_SCU_CCUCON2*)0xF0036040u).B.LCK)
  {
# 9394 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    RetValue = (Std_ReturnType)0x01u;
  }
  else
  {







    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_SCU_CCUCON2*)0xF0036040u).U, Mcu_ConfigPtr->McuClockSettingPtr [Mcu_ClockSetting].PllDistributionCfgPtr->Ccucon2)

                                                          ;
  }
  return RetValue;
}
# 9436 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
static __inline__ Std_ReturnType Mcu_lEnableClockControl(void)
{
  Std_ReturnType ClcError = (Std_ReturnType)0x00u;
# 9450 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
  if ((*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).B.GTMDIV != 0U)
  {
    ClcError = Mcu_lGtmGlobalInit();
  }



  if (ClcError == (Std_ReturnType)0x00u)

  {
# 9472 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
    {
# 9487 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c"
      {


        ClcError = Mcu_lConvCtrlInit();
      }
    }
  }

  return ClcError;
}






# 1 ".\\output\\inc/Mcu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h" 1
# 312 ".\\output\\inc/..\\..\\Integration\\mcal\\Mcu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Mcu_MemMap.h" 2
# 9504 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\src\\Mcu.c" 2
