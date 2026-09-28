# 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
# 18 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
# 1 ".\\output\\inc/Fee.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h" 1
# 23 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h"
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
# 24 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h" 2
# 1 ".\\output\\inc/MemIf_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h" 1
# 23 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
typedef enum
{
    MEMIF_UNINIT,
    MEMIF_IDLE,
    MEMIF_BUSY,
    MEMIF_BUSY_INTERNAL
}MemIf_StatusType;

typedef enum
{
    MEMIF_JOB_OK,
    MEMIF_JOB_FAILED,
    MEMIF_JOB_PENDING,
    MEMIF_JOB_CANCELED,
    MEMIF_BLOCK_INCONSISTENT,
    MEMIF_BLOCK_INVALID
}MemIf_JobResultType;

typedef enum
{
    MEMIF_MODE_SLOW,
    MEMIF_MODE_FAST
}MemIf_ModeType;

typedef enum
{
    MEMIF_RB_MIGRATION_RESULT_INIT_E = 0,
    MEMIF_RB_MIGRATION_RESULT_NOT_NECESSARY_E = 1,
    MEMIF_RB_MIGRATION_RESULT_TO_SMALLER_SIZE_E = 2,
    MEMIF_RB_MIGRATION_RESULT_TO_BIGGER_SIZE_E = 3,
    MEMIF_RB_MIGRATION_RESULT_NOT_DONE_E = 4,
    MEMIF_RB_MIGRATION_RESULT_DEACTIVATED_E = 5
}MemIf_Rb_MigrationResult_ten;
# 2 ".\\output\\inc/MemIf_Types.h" 2
# 25 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h" 1
# 66 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
typedef enum
{
    FEE_RB_IDLE_E,
    FEE_RB_WRITE_MODE_E,
    FEE_RB_READ_MODE_E,
    FEE_RB_INVALIDATE_MODE_E,
    FEE_RB_MAINTAIN_MODE_E,
    FEE_RB_SOFT_SECTOR_REORG_MODE_E,
    FEE_RB_HARD_SECTOR_REORG_MODE_E,
    FEE_RB_SECTOR_ERASE_E,
    FEE_RB_STOPMODE_E
}Fee_Rb_WorkingStateType_ten;



typedef enum
{
    FEE_NO_ORDER = 0,
    FEE_READ_ORDER,
    FEE_WRITE_ORDER,
    FEE_INVALIDATE_ORDER,
    FEE_MAINTAIN_ORDER,
    FEE_FORCED_READ_ORDER
}Fee_HlMode_ten;

typedef struct
{
    uint8 dummy_u8;
} Fee_ConfigType;
# 26 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h" 2
# 1 ".\\output\\inc/Fee_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Cfg.h" 1





# 1 ".\\output\\inc/Fls.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls.h" 1




# 1 ".\\output\\inc/Fls_17_Dmu.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 1
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 44 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2



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
# 48 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2


# 1 ".\\output\\inc/Fls_17_Dmu_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_Cfg.h" 1
# 49 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_Cfg.h"
# 1 ".\\output\\inc/MemIf_Types.h" 1
# 50 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_Cfg.h" 2
# 2 ".\\output\\inc/Fls_17_Dmu_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2
# 2593 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
typedef uint32 Fls_17_Dmu_AddressType;



typedef uint32 Fls_17_Dmu_LengthType;


typedef struct
{
  unsigned_int Reserved1 : 1;

  unsigned_int Write : 1;

  unsigned_int Erase : 1;

  unsigned_int Read : 1;

  unsigned_int Compare : 1;

  unsigned_int Reserved2 : 3;
} Fls_17_Dmu_JobStartType;





typedef uint8 Fls_17_Dmu_Job_Type;

typedef uint8 Fls_17_Dmu_HardenType;
# 2633 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
typedef struct
{



  uint32 FlsReadAddress;
  uint32 FlsWriteAddress;
  uint32 FlsEraseAddress;
# 2650 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
  Fls_17_Dmu_LengthType FlsReadLength;
  Fls_17_Dmu_LengthType FlsWriteLength;



  uint8* FlsReadBufferPtr;
  const uint8* FlsWriteBufferPtr;


  MemIf_JobResultType FlsJobResult;


  MemIf_ModeType FlsMode;


  Fls_17_Dmu_Job_Type NotifCaller;


  Fls_17_Dmu_JobStartType JobStarted;


  uint16 FlsEraseNumSectors;

  uint8 FlsEraseNumSecPerCmd;

  Fls_17_Dmu_Job_Type FlsJobType;
# 2684 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
  uint8 FlsEver;


  uint8 FlsTimeoutErr;







} Fls_17_Dmu_StateType;





typedef void (*Fls_17_Dmu_NotifFunctionPtrType)(void);







typedef struct
{
  Fls_17_Dmu_StateType *FlsStateVarPtr;



  Fls_17_Dmu_LengthType FlsFastRead;
  Fls_17_Dmu_LengthType FlsSlowRead;

  Fls_17_Dmu_NotifFunctionPtrType FlsJobEndNotificationPtr;


  Fls_17_Dmu_NotifFunctionPtrType FlsJobErrorNotificationPtr;


  Fls_17_Dmu_NotifFunctionPtrType FlsEraseVerifyErrNotifPtr;


  Fls_17_Dmu_NotifFunctionPtrType FlsProgVerifyErrNotifPtr;


  Fls_17_Dmu_NotifFunctionPtrType FlsIllegalStateNotificationPtr;


  uint32 FlsWaitStates;
# 2742 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
  MemIf_ModeType FlsDefaultMode;

} Fls_17_Dmu_ConfigType;


typedef void (*Fls_Init_Type)(const Fls_17_Dmu_ConfigType* ConfigPtr);
# 2776 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 2777 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2
# 2800 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_Init(const Fls_17_Dmu_ConfigType*const ConfigPtr);
# 2826 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_GetVersionInfo
                               (Std_VersionInfoType* const VersionInfoPtr);
# 2860 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_Erase(
                              const Fls_17_Dmu_AddressType TargetAddress,
                              const Fls_17_Dmu_LengthType Length
                               );
# 2891 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_Write(
                                 const Fls_17_Dmu_AddressType TargetAddress,
                                 const uint8 *const SourceAddressPtr,
                                 const Fls_17_Dmu_LengthType Length
                                  );
# 2925 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_Compare(
                            const Fls_17_Dmu_AddressType SourceAddress,
                            const uint8 *const TargetAddressPtr,
                            const Fls_17_Dmu_LengthType Length
                            );
# 2964 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_BlankCheck(
                                    const Fls_17_Dmu_AddressType TargetAddress,
                                    const Fls_17_Dmu_LengthType Length
                                     );
# 3000 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_Cancel(void);
# 3060 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern MemIf_StatusType Fls_17_Dmu_GetStatus(void);
# 3089 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern MemIf_JobResultType Fls_17_Dmu_GetJobResult(void);
# 3117 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_MainFunction(void);
# 3145 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_SetMode(const MemIf_ModeType Mode);
# 3176 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_Read(
                                const Fls_17_Dmu_AddressType SourceAddress,
                                uint8 *const TargetAddressPtr,
                                const Fls_17_Dmu_LengthType Length
                               );
# 3459 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_GetOperStatus(void);
# 3479 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_ControlTimeoutDet(const uint8 Param);
# 3575 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 203 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 3576 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2

# 1 ".\\output\\inc/Fls_17_Dmu_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h" 1
# 60 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 156 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h" 2

extern const Fls_17_Dmu_ConfigType Fls_17_Dmu_Config;
# 76 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 169 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h" 2
# 2 ".\\output\\inc/Fls_17_Dmu_PBcfg.h" 2
# 3578 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2
# 2 ".\\output\\inc/Fls_17_Dmu.h" 2
# 6 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls.h" 2
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls.h"
typedef uint32 Fls_AddressType;

typedef uint32 Fls_LengthType;
# 2 ".\\output\\inc/Fls.h" 2
# 7 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Cfg.h" 2
# 2 ".\\output\\inc/Fee_Cfg.h" 2
# 27 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h" 2
# 38 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h"
# 1 ".\\output\\inc/Fee_Rb_Idx.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Rb_Idx.h" 1
# 12 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Rb_Idx.h"
typedef enum
{
    Fee_Rb_DeviceName = 0,

    Fee_Rb_Device_Max
} Fee_Rb_DeviceName_ten;
# 33 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Rb_Idx.h"
# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 174 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 34 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Rb_Idx.h" 2

extern uint8 Fee_Rb_GetDeviceIndexFromDeviceName(Fee_Rb_DeviceName_ten FeeDeviceName_en);
extern boolean Fee_Rb_IsThisDeviceIndexFee(uint8 DeviceIndex_u8);
extern Fee_Rb_DeviceName_ten Fee_Rb_GetDeviceNameFromDeviceIndex(uint8 feeDeviceIdx_u8);

extern void Fee_Rb_Idx_Init(Fee_Rb_DeviceName_ten FeeDeviceName_en, Fee_ConfigType const * ConfigPtr);
extern void Fee_Rb_Idx_EndInit(Fee_Rb_DeviceName_ten FeeDeviceName_en);
extern uint32 Fee_Rb_Idx_GetSectChngCnt(Fee_Rb_DeviceName_ten FeeDeviceName_en);
extern void Fee_Rb_Idx_Cancel(Fee_Rb_DeviceName_ten FeeDeviceName_en);
extern void Fee_Rb_Idx_MainFunction(Fee_Rb_DeviceName_ten FeeDeviceName_en);

extern Std_ReturnType Fee_Rb_Idx_Write(Fee_Rb_DeviceName_ten FeeDeviceName_en, uint16 Blocknumber,
                                uint8* DataBufferPtr);
extern Std_ReturnType Fee_Rb_Idx_VarLenWrite(Fee_Rb_DeviceName_ten FeeDeviceName_en, uint16 Blocknumber,
                                         uint8* DataBufferPtr,
                                         uint16 Length);

extern Std_ReturnType Fee_Rb_Idx_Read(Fee_Rb_DeviceName_ten FeeDeviceName_en, uint16 Blocknumber,
                               uint16 BlockOffset,
                               uint8* DataBufferPtr,
                               uint16 Length);
extern Std_ReturnType Fee_Rb_Idx_VarLenRead(Fee_Rb_DeviceName_ten FeeDeviceName_en, uint16 Blocknumber,
                                        uint16 BlockOffset,
                                        uint8* DataBufferPtr,
                                        uint16 Length);

extern Std_ReturnType Fee_Rb_Idx_InvalidateBlock(Fee_Rb_DeviceName_ten FeeDeviceName_en, uint16 Blocknumber);

extern Std_ReturnType Fee_Rb_Idx_EraseImmediateBlock(Fee_Rb_DeviceName_ten FeeDeviceName_en, uint16 BlockNumber);

extern Std_ReturnType Fee_Rb_Idx_BlockMaintenance(Fee_Rb_DeviceName_ten FeeDeviceName_en, uint16 Blocknumber);

extern MemIf_StatusType Fee_Rb_Idx_GetStatus(Fee_Rb_DeviceName_ten FeeDeviceName_en);

extern MemIf_JobResultType Fee_Rb_Idx_GetJobResult(Fee_Rb_DeviceName_ten FeeDeviceName_en);

extern MemIf_JobResultType Fee_Rb_Idx_GetAdapterJobResult(Fee_Rb_DeviceName_ten FeeDeviceName_en);

extern MemIf_Rb_MigrationResult_ten Fee_Rb_Idx_GetMigrationResult(Fee_Rb_DeviceName_ten FeeDeviceName_en, uint16 Blocknumber);

extern void Fee_Rb_Idx_DisableBackgroundOperation(Fee_Rb_DeviceName_ten FeeDeviceName_en);

extern void Fee_Rb_Idx_EnableBackgroundOperation(Fee_Rb_DeviceName_ten FeeDeviceName_en);







extern Fee_Rb_WorkingStateType_ten Fee_Rb_Idx_GetWorkingState(Fee_Rb_DeviceName_ten FeeDeviceName_en);



# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 178 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Rb_Idx.h" 2
# 2 ".\\output\\inc/Fee_Rb_Idx.h" 2
# 39 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h" 2
# 54 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h"
# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 174 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 55 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h" 2


extern void Fee_Init(Fee_ConfigType const * ConfigPtr);




extern void Fee_Rb_EndInit(void);
extern uint32 Fee_Rb_GetSectChngCnt(void);
extern void Fee_Cancel(void);
extern void Fee_MainFunction(void);
extern Std_ReturnType Fee_Write(uint16 Blocknumber,
                                uint8* DataBufferPtr);
extern Std_ReturnType Fee_Rb_VarLenWrite(uint16 Blocknumber,
                                         uint8* DataBufferPtr,
                                         uint16 Length);
extern Std_ReturnType Fee_Read(uint16 Blocknumber,
                               uint16 BlockOffset,
                               uint8* DataBufferPtr,
                               uint16 Length);
extern Std_ReturnType Fee_Rb_VarLenRead(uint16 Blocknumber,
                                        uint16 BlockOffset,
                                        uint8* DataBufferPtr,
                                        uint16 Length);
extern Std_ReturnType Fee_InvalidateBlock(uint16 Blocknumber);
extern Std_ReturnType Fee_EraseImmediateBlock(uint16 BlockNumber);


extern Std_ReturnType Fee_Rb_BlockMaintenance(uint16 Blocknumber);


extern MemIf_StatusType Fee_GetStatus(void);
extern MemIf_JobResultType Fee_GetJobResult(void);

extern MemIf_JobResultType Fee_Rb_GetAdapterJobResult(void);
extern MemIf_Rb_MigrationResult_ten Fee_Rb_GetMigrationResult(uint16 Blocknumber);

extern void Fee_Rb_DisableBackgroundOperation(void);
extern void Fee_Rb_EnableBackgroundOperation(void);
# 120 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h"
extern Fee_Rb_WorkingStateType_ten Fee_Rb_GetWorkingState(void);



# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 178 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h" 2
# 2 ".\\output\\inc/Fee.h" 2
# 19 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c" 2
# 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 1
# 158 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
typedef enum
{
    FEE_NORMAL_PRIO_E = 0,
    FEE_HIGH_PRIO_E = 1
}Fee_HlPriority_ten;





typedef enum
{
    FEE_INTERNAL_JOB,
    FEE_NVM_JOB,
    FEE_ADAPTER_JOB,
    FEE_QUEUE_SIZE
}Fee_HlJobType_ten;

typedef struct
{
    uint8* DataBufferPtr_pu8;
    uint16 FeeIdx_u16;
    uint16 BlockPropIdx_u16;
    uint16 Offset_u16;
    uint16 Length_u16;
    Fee_HlMode_ten Mode_en;
    Fee_HlPriority_ten Prio_en;
    uint8 SecLevel_u8;
}Fee_OrderFifo_tst;
# 218 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
enum
{
    FEE_ERASED_MARKER_ID_E = 0x01u,
    FEE_USED_MARKER_ID_E,
    FEE_FULL_MARKER_ID_E,
    FEE_ERASE_REQUEST_ID_E,
    FEE_START_MARKER_ID_E,
    FEE_CLONE_START_MARKER_ID_E,
    FEE_RESERVED_MARKER_ID1_E,
    FEE_RESERVED_MARKER_ID2_E,
    FEE_RESERVED_MARKER_ID3_E,
    FEE_RESERVED_MARKER_ID4_E,
    FEE_RESERVED_MARKER_ID5_E,
    FEE_ERASE_START_FLAG_ID_E,
    FEE_NUM_MARKER_E
};


typedef struct
{
    uint16 xPattern;
    uint8 xIdent;
    uint8 xContent[3];
    uint16 xChecksum;
}Fee_MarkerProp_t;


typedef struct
{
    uint32 SecChngCnt_u32;
    uint8 ctErasedMarker_u8;
    uint8 ctUsedMarker_u8;
    uint8 ctFullMarker_u8;
    uint8 ctEraseReq_u8;
    uint32 xStartAddr_u32;
    uint8 ctCloneMarker_u8;
    boolean eraseStartFlagFound_b;
}Fee_stSecDet_tst;


typedef enum
{
    FEE_SECTOR_STATE_UNDEF_E = 0,
    FEE_SECTOR_ERASED_E = FEE_ERASED_MARKER_ID_E,
    FEE_SECTOR_USED_E = FEE_USED_MARKER_ID_E,
    FEE_SECTOR_FULL_E = FEE_FULL_MARKER_ID_E,
    FEE_SECTOR_REQUEST2ERASE_E = FEE_ERASE_REQUEST_ID_E,
    FEE_SECTOR_CONSIDERED_E = FEE_NUM_MARKER_E
}Fee_SectorState_ten;


typedef struct
{
    uint32 SecChngCnt_u32;
    Fee_SectorState_ten SecState_en;
    uint8 xPhySecIdx_u8;
}Fee_LLSectorOrder_tst;


typedef enum
{
    FEE_ORDER_PENDING_E,
    FEE_ORDER_FINISHED_E,
    FEE_BLOCK_INVALIDATED_E,
    FEE_ERROR_E,
    FEE_SECTORCHANGE_E,
    FEE_SECTORFULL_E,
    FEE_ABORTED_E,
    FEE_ERASE_SECTOR_E,
    FEE_SEARCH_ABORTED_E,
    FEE_NUM_RET_VAL_E
}Fee_stRetVal_ten;



typedef struct
{
    uint32 Fee_PhysStartAddress_u32;
    uint32 Fee_PhysEndAddress_u32;
    uint32 Fee_LogStartAddress_u32;
    uint32 Fee_LogEndAddress_u32;
}Fee_FlashProp_tst;
# 332 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
typedef struct
{
    uint16 BlockPersistentId_u16;
    uint16 Flags_u16;
    uint16 Length_u16;
    void (* const JobEndNotification_pfn) (void);
    void (* const JobErrorNotification_pfn) (void);
}Fee_BlockPropertiesType_tst;


enum
{
    FEE_JOB_TYPE_INTERNAL_E = 0,
    FEE_JOB_TYPE_NVM_E = 1,
    FEE_JOB_TYPE_ADAPTER_E = 2
};


typedef enum
{
    FEE_LL_MARKER_INIT_E,
    FEE_LL_MARKER_BLK_CHK_E,
    FEE_LL_MARKER_BLK_CHK_WAIT_E,
    FEE_LL_MARKER_BLK_CHK_ERROR_E,
    FEE_LL_MARKER_BLK_CHK_FINISHED_E,
    FEE_LL_MARKER_WRITE_WAIT_E,
    FEE_LL_MARKER_WRITE_ERROR_E,
    FEE_LL_MARKER_VERIFY_E,
    FEE_LL_MARKER_VERIFY_WAIT_E,
    FEE_LL_MARKER_VERIFY_FINISHED_E
}Fee_LLWrMarkerType_ten;


typedef enum
{
    FEE_HL_RDWR_BLK_INIT_E,
    FEE_HL_SEARCH_BLK_HDR_E,
    FEE_HL_READ_BLK_HDR_WAIT_E,
    FEE_HL_CHECK_BLK_HDR_E,
    FEE_HL_CALC_BLK_CS_E,
    FEE_HL_CHECK_BLK_CS_E,
    FEE_HL_RD_DATA_FROM_BLK_E,
    FEE_HL_COMP_BLK_E,







    FEE_HL_WR_BLK_E
}Fee_HLRdWrBlockType_ten;


typedef enum
{
    FEE_LL_WR_BLK_INIT_E,
    FEE_LL_WR_WRITEHEADER_E,
    FEE_LL_WR_SIZECHECK_HSR_E,
# 401 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
    FEE_LL_WR_WRITEHEADER_WAIT_E,
    FEE_LL_WR_VERIFYHEADER_E,
    FEE_LL_WR_VERIFYHEADER_WAIT_E,
    FEE_LL_WR_VERIFYHEADER_ERROR_E,
    FEE_LL_WR_WRITEDATA_SEC_A_E,
    FEE_LL_WR_WAIT_WRITEDATA_SEC_A_E,
    FEE_LL_WR_WRITE_ERROR_E,

    FEE_LL_WR_WRITE_FULL_MARKER_E,
    FEE_LL_WR_ERASE_SECTOR_E,
    FEE_LL_WR_WRITE_USED_MARKER_E,
    FEE_LL_WR_WRITE_START_MARKER_E,
# 423 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
    FEE_LL_WR_VERIFY_BLK_E



    ,FEE_LL_WR_WRITEHDRPG2_E,
    FEE_LL_WR_WAIT_WRITEHDRPG2_E

}Fee_LLWrBlockType_ten;


typedef enum
{
    FEE_LL_CMP_BLK_INIT_E,
    FEE_LL_CMP_HEADER_E,
    FEE_LL_CMP_WAIT_HEADER_E,
    FEE_LL_CMP_CHECK_OVERLAP_E,
    FEE_LL_CMP_DATA_SEC_A_E,
    FEE_LL_CMP_WAIT_DATA_SEC_A_E,
    FEE_LL_CMP_FINISHED_E
}Fee_LLCmpBlkType_ten;


typedef enum
{
    FEE_LL_CPY_BLK_INIT_E,
    FEE_LL_CPY_BLOCK_DATA_FROM_HDR_E,
    FEE_LL_CPY_BLOCK_START_E,
    FEE_LL_CPY_BLOCK_WAIT_E,
    FEE_LL_CPY_BLOCK_ERROR_E,
    FEE_LL_CPY_BLOCK_FINISHED_E
}Fee_LLCpyBlkType_ten;


typedef enum
{
    FEE_LL_CRC_BLK_INIT_E,
    FEE_LL_CRC_RD_HD_PAGE_E,
    FEE_LL_CRC_RD_PAGE_E,
    FEE_LL_CRC_CHECK_OVERLAP_E,

    FEE_LL_CRC_RD_ROB_PAGE_E,
    FEE_LL_CRC_CHECK_OVERLAP_ROB_E,
    FEE_LL_CRC_RD_ROB_PAGE_WAIT_E,

    FEE_LL_CRC_RD_PAGE_WAIT_E,
    FEE_LL_CRC_RD_ERROR_E
}Fee_LLCalcCrcBlkType_ten;


typedef enum
{
    FEE_LL_INIT_READ_E
    ,FEE_LL_BLANK_CHECK_E
    ,FEE_LL_BLANK_CHECK_WAIT_E
    ,FEE_LL_READ_PAGE_E
    ,FEE_LL_WAIT_READ_PAGE_E
    ,FEE_LL_READ_ERROR_E
    ,FEE_LL_READ_FINISHED_E
# 495 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
    ,FEE_LL_BLANK_CHECK_ERASE_START_FLAG_E
    ,FEE_LL_BLANK_CHECK_ERASE_START_FLAG_WAIT_E
    ,FEE_LL_ERASE_START_FLAG_NOT_PRESENT_E
    ,FEE_LL_ERASE_START_FLAG_PRESENT_E
} Fee_LLRdStateType_ten;


typedef enum
{
    FEE_LL_INIT_BLANK_CHECK_E,
    FEE_LL_PERFORM_BLANK_CHECK_E,
    FEE_LL_WAIT_PERFORM_BLANK_CHECK_E,
    FEE_LL_BLANK_CHECK_ERROR_E,
    FEE_LL_BLANK_CHECK_FINISHED_E
} Fee_LLBlankCheckType_ten;


typedef enum
{







    FEE_LL_FIND_CURRENT_SECTOR_E,
    FEE_LL_FIND_LAST_HEADER_E,
    FEE_LL_FINISHED_E

}Fee_LLFndEmptyPgeType_ten;


typedef enum
{
    FEE_LL_SEARCHBLK_INIT_E,
    FEE_LL_SEARCHBLK_BLK_HEADER_E
}Fee_LLSearchBlkHdrType_ten;



typedef enum
{
    FEE_LL_BLD_UP_CACHE_INIT_E,
    FEE_LL_BLD_UP_CACHE_READ_E
}Fee_LLBuildUpCache_ten;


typedef enum
{
    FEE_LL_BLD_UP_CACHE_ALL_SECT_INIT_E,
    FEE_LL_BLD_UP_CACHE_ALL_SECT_DO_E
}Fee_LLBuildUpCacheAllSect_ten;
# 572 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
typedef enum
{
    FEE_LL_REORG_INIT_E,
    FEE_LL_REORG_PREP_SEARCH_BLK_E,
    FEE_LL_REORG_SEARCH_BLK_E,
    FEE_LL_REORG_CHECK_BLOCK_CS_E,
    FEE_LL_REORG_REDUNDANT_BLK_CHK_E,
    FEE_LL_REORG_WRITE_BLOCK_E,
# 596 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
    FEE_LL_REORG_FINISHED_E
}Fee_LLSecReorgType_ten;


typedef enum
{
    FEE_LL_REDUNDANT_CPY_CHK_INIT_E,
    FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_WAIT_E,




    FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_SUC_E,
    FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_ERR_E,
    FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E,
    FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_E,
    FEE_LL_REDUNDANT_CPY_CHK_BLK_CS_E
}Fee_LLRedundantCpyChk_ten;


typedef enum
{
    FEE_LL_CPY_FLS2FLS_INIT_E,
# 630 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
    FEE_LL_CPY_FLS2FLS_READ_E,
    FEE_LL_CPY_FLS2FLS_WAIT_READ_E,
    FEE_LL_CPY_FLS2FLS_READ_ERROR_E,



    FEE_LL_CPY_FLS2FLS_HDRPG1_WRITE_E,
    FEE_LL_CPY_FLS2FLS_WAIT_HDRPG1_WRITE_E,
    FEE_LL_CPY_FLS2FLS_HDRPG1_WRITE_ERROR_E,
    FEE_LL_CPY_FLS2FLS_HDRPG1_VERIFY_E,
    FEE_LL_CPY_FLS2FLS_WAIT_HDRPG1_VERIFY_E,
    FEE_LL_CPY_FLS2FLS_HDRPG1_VERIFY_ERROR_E,


    FEE_LL_CPY_FLS2FLS_WRITE_E,
    FEE_LL_CPY_FLS2FLS_WAIT_WRITE_E,
    FEE_LL_CPY_FLS2FLS_WRITE_ERROR_E,
    FEE_LL_CPY_FLS2FLS_VERIFY_E,
    FEE_LL_CPY_FLS2FLS_WAIT_VERIFY_E,
    FEE_LL_CPY_FLS2FLS_VERIFY_ERROR_E,



    FEE_LL_CPY_FLS2FLS_HDRPG2_WRITE_E,
    FEE_LL_CPY_FLS2FLS_WAIT_HDRPG2_WRITE_E,
    FEE_LL_CPY_FLS2FLS_HDRPG2_WRITE_ERROR_E,
    FEE_LL_CPY_FLS2FLS_HDRPG2_VERIFY_E,
    FEE_LL_CPY_FLS2FLS_WAIT_HDRPG2_VERIFY_E,
    FEE_LL_CPY_FLS2FLS_HDRPG2_VERIFY_ERROR_E,


    FEE_LL_CPY_FLS2FLS_CHECK_ADR_OVERFLOW_E,
    FEE_LL_CPY_FLS2FLS_WRITE_FULL_MARKER_E,
    FEE_LL_CPY_FLS2FLS_ERASE_SECTOR_E,
    FEE_LL_CPY_FLS2FLS_WRITE_USED_MARKER_E,
# 674 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
    FEE_LL_CPY_FLS2FLS_WRITE_START_MARKER_E
}Fee_LLCpyBlkFls2Fls_ten;
# 705 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
typedef struct
{
    uint32 xRdAddress;
    uint32 xWrAddress;
    uint32 xCmpAddress;
    uint32 xCrcAddress;
    uint32 xCpyAddress;
    uint32 AdrHdSearchStart_u32;
    uint32 xStartAddrNextSector_u32;



    uint32 xHdPg2Address;



    uint32 LastProgrammedAddress_u32;
    uint32 LastValidHdrAddress_u32;


    Fee_LLSecReorgType_ten Fee_LLSecReorg_en;
    Fee_LLRedundantCpyChk_ten Fee_LLRedundantCpyChk_en;
    Fee_LLCpyBlkFls2Fls_ten Fee_LLCpyBlkFls2Fls_en;





    Fee_HLRdWrBlockType_ten Fee_HLWrBlock_en;


    Fee_HLRdWrBlockType_ten Fee_HLMtBlock_en;


    Fee_LLWrBlockType_ten Fee_LLWrBlock_en;
    Fee_HLRdWrBlockType_ten Fee_HLRdBlock;
    Fee_LLWrBlockType_ten Fee_LLNextUsedWrBlock_en;
    Fee_LLWrBlockType_ten Fee_LLNextEraseWrBlock_en;
    Fee_LLCmpBlkType_ten Fee_LLCompBlk;
    Fee_LLCpyBlkType_ten Fee_LLCopyBlk_en;
    Fee_LLCalcCrcBlkType_ten Fee_LLCalcCrcBlk_en;
    Fee_LLWrMarkerType_ten Fee_LLWrMarker_en;
    Fee_LLRdStateType_ten Fee_LLRdState_en;
    Fee_LLBlankCheckType_ten Fee_LLBlankCheckState_en;
    Fee_LLFndEmptyPgeType_ten Fee_LLFindEmptyPageState_en;
    Fee_LLSearchBlkHdrType_ten Fee_LLSearchBlkHdr_en;
# 763 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
    Fee_LLBuildUpCache_ten Fee_LLBuildUpCache_en;
    Fee_LLBuildUpCacheAllSect_ten Fee_LLBuildUpCacheAllSect_en;

} Fee_RdWrOrder_tst;


typedef struct
{
    uint32 AdrBlkHeader_u32;
    uint32 BlkCrc32_u32;
    uint16 HdrCrc16_u16;
    uint16 BlkLength_u16;
    uint16 FeeIndex_u16;
    uint8 DataBytes_au8[2u];
    uint8 BlkStatus_u8;
}Fee_GlobInfoLastRdHeader_tst;


typedef struct
{
    uint16 BytesAlrdyConsid_u16;
    uint16 BytesAlrdyCompared_u16;
    uint16 Bytes2Read_u16;
    uint8 CompareResult_u8;
    uint8 cntWriteRetry_u8;
    uint8 cntCopies_u8;
}Fee_GlobInfoWrBlock_tst;


typedef struct
{
    uint32 xRdAddress_u32;
    uint16 xNumBytesAlrdyCopied_u16;
    uint16 xNumBytesLeftToRdWr_u16;
    uint8 xCntCopies_u8;

    uint8 xFirstDataPgPgm_u8;

}Fee_LLSecReorgStruct_tst;


typedef enum
{
    FEE_ERASESEC_IDLE_E = 0,
    FEE_ERASESEC_CHECK_CACHE_E,
    FEE_ERASESEC_WRITE_ERASESTARTFLAG_E,
    FEE_ERASESEC_START_E,
    FEE_ERASESEC_DO_E,
    FEE_ERASESEC_WRITE_MARKER_E,
    FEE_ERASESEC_ERROR_E
}Fee_LLEraseStateType_ten;


typedef struct
{
    Fee_LLEraseStateType_ten EraseState_en;
    uint8 xPhySectorIdx_u8;
}Fee_LLEraseOrderType_tst;


typedef enum
{
    FEE_LLWR_ERASESTARTFLAG_INIT_E = 0,
    FEE_LLWR_ERASESTARTFLAG_BLK_CHK_E,
    FEE_LLWR_ERASESTARTFLAG_BLK_CHK_WAIT_E,
    FEE_LLWR_ERASESTARTFLAG_ALREADY_PROGRAMMED_E,
    FEE_LLWR_ERASESTARTFLAG_WRITE_E,
    FEE_LLWR_ERASESTARTFLAG_WRITE_WAIT_E,
    FEE_LLWR_ERASESTARTFLAG_WRITE_ERROR_E,
    FEE_LLWR_ERASESTARTFLAG_WRITE_FINISHED_E
}Fee_LLWrEraseStartFlagStateType_ten;


typedef struct
{
    Fee_LLWrEraseStartFlagStateType_ten state_en;
    uint32 eraseStartFlagAddr_u32;
}Fee_LLWrEraseStartFlagOrderType_tst;


typedef struct
{
    uint8 Preamble_au8[3];
    uint8 BlkStatus_u8;
    uint16 FeeIndex_u16;
    uint16 BlkLength_u16;
    uint16 HdrCrc16_u16;
    uint32 BlkCrc32_u32;
    uint8 DataBytes_au8[2u];
}Fee_BlkHeader_tst;


typedef struct
{
    void(* Fee_ResetUsedSectors_pfn)(void);
}Fee_LinkedFunctions_tst;
# 940 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
typedef struct
{
    uint32 Fee_Totalfree_bytes;
    uint32 Fee_hardThreshold;
    uint32 Fee_softThershold;

}Fee_FreeByte_thrshold_t;




typedef enum
{
    FEE_POLLING_MODE_E,
    FEE_NORMAL_MODE_E
}Fee_stMainType;
# 1019 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1020 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern const Fee_FlashProp_tst Fee_FlashProp_st[2u];
extern const MemIf_JobResultType Fee_JobTypeMapping[FEE_NUM_RET_VAL_E];
extern const Fee_LinkedFunctions_tst Fee_LinkedFunctions_cst;

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 125 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 126 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1025 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 46 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 47 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1028 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern uint8* Fee_PageBytePtr_cpu8;
extern Fee_RdWrOrder_tst Fee_RdWrOrder_st;
extern Fee_LLSectorOrder_tst Fee_LLSectorOrder_st[2u];
extern Fee_LLEraseOrderType_tst Fee_LLEraseOrder_st;
extern Fee_LLWrEraseStartFlagOrderType_tst Fee_LLWrEraseStartFlag_st;
extern Fee_OrderFifo_tst Fee_OrderFifo_st[FEE_QUEUE_SIZE];
extern Fee_GlobInfoLastRdHeader_tst Fee_GlobInfoLastRdHeader_st;
extern Fee_GlobInfoWrBlock_tst Fee_GlobInfoWrBlock_st;
extern Fee_LLSecReorgStruct_tst Fee_LLSecReorgStruct_st;
extern MemIf_JobResultType Fee_JobResult[FEE_QUEUE_SIZE];

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 50 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 51 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1040 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1043 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern uint8* const Fee_MarkerBufBytePtr_cpu8;
extern uint8* const Fee_DataBytePtr_cpu8;

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 125 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 126 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1047 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 57 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1050 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern uint8 Fee_Prv_stInit_u8;
extern uint8 Fee_Prv_stReorg_u8;
extern uint8 Fee_NumFlashBanksUsed_u8;
extern uint8 Fee_idxActQueueBackUp;



extern uint8 Fee_hdr2Buffer_au8[8u];
# 1067 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 61 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1068 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 81 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 82 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1071 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern MemIf_StatusType Fee_GlobModuleState_st;
extern Fee_Rb_WorkingStateType_ten Fee_Rb_WorkingStateBackUp_en;
extern Fee_stMainType Fee_stMain;

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 86 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1076 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 22 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1079 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern uint8 Fee_idxLLSectorOrder_au8[2u];
extern uint8 Fee_idxActQueue_u8;
extern uint8 Fee_CacheUpdCompForSect_au8[2u];
extern uint8 Fee_RdWrRetries_u8;
# 1094 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 26 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 27 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1095 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 38 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 39 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1098 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern uint32 Fee_llMarkerPageBuf_au32[96u / 4u];
extern uint32 Fee_Cache_au32[58u];


extern uint32 Fee_DataByteStartCrc_u32;



# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 42 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 43 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1107 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 134 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 135 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1110 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern uint32 Fee_llPageBuf_au32[(1024u / 4u) + 2u];
extern uint32 Fee_llDataBuf_au32[256u / 4u];

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 138 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 139 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1114 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
# 1123 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 81 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 82 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1124 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern Fee_BlockPropertiesType_tst Fee_BlockProperties_st[58u];

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 86 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1127 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
# 1174 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 81 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 82 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1175 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern Fee_Rb_WorkingStateType_ten Fee_Rb_WorkingState_en;

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 86 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1178 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 73 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 74 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1181 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern uint32 Fee_SecChngCnt_u32;

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1184 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
# 1195 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 174 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1196 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern uint32 Fee_CalculateNumOfFreeBytesInCurSector(uint32 DataEndAdr_u32);
extern void Fee_InitVarAndState(void);
extern void Fee_InitCache(void);
extern void Fee_InitOrderFifoBuffer(void);


extern void Fee_LLSearchSectors(Fee_stSecDet_tst* Fee_stSecDet_ps);
extern uint8 Fee_LLDetectActiveSector(void);
extern Fee_stRetVal_ten Fee_LLFindEmptyPage(uint8 PhySectIdxUsedSect_u8);
extern uint8 Fee_GetMostCurrentSectorIdx(void);
extern void Fee_CheckErasedSectorEmpty(void);
extern uint8 Fee_GetPhysSectorByAddress(uint32 Address_u32);


extern Fee_stRetVal_ten Fee_LLWriteMarker(uint8 PhySectIdx_u8, uint8 MarkerID_u8);


extern Fee_stRetVal_ten Fee_LLEraseSector(void);
extern void Fee_LLSetEraseSector(uint8 EraseLogIdx);


extern void Fee_LLInitializeLastHdrVariable(Fee_GlobInfoLastRdHeader_tst* xLastHdr_ptr);

extern Fee_stRetVal_ten Fee_LLSearchNextBlkHeader(Fee_GlobInfoLastRdHeader_tst* Fee_GlobInfoLastRdHeader_ptr,
                                                  uint8 CachedAccess_u8,
                                                  uint8 FastCacheUpdate_u8,
                                                  boolean xForcePageBufReload_b,
                                                  uint32 strAddrHdrSearch);

extern Fee_stRetVal_ten Fee_LLSearchSpecifiedBlkHeader(uint16 FeeIdx_u16,
                                                       uint32* LastHdrAddr_ptr,
                                                       Fee_GlobInfoLastRdHeader_tst* GlobBlkHdr_ptr,
                                                       boolean SearchRetry_b);
# 1243 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
extern uint32 Fee_LLGetSecStartAddress(uint8 xPhySectorIdx_u8);
extern uint32 Fee_LLGetSecEndAddress(uint8 xPhySectorIdx_u8);


extern Fee_stRetVal_ten Fee_LLCompBlkInFlash(const Fee_GlobInfoLastRdHeader_tst* HeaderInfo_pcst, const uint8* Data_pcu8);
extern Fee_stRetVal_ten Fee_LLCalcBlkCrcInFlash(const Fee_GlobInfoLastRdHeader_tst* HeaderInfo_pcst);
extern Fee_stRetVal_ten Fee_LLCpyBlkFromFls2Fls(const Fee_GlobInfoLastRdHeader_tst* Fee_GlobInfoLastRdHeader_pcst, boolean Fee_WriteTwice_b);



extern void Fee_LLPrepMarkerBufWithMarkerData(const Fee_MarkerProp_t* Marker_pcst, uint8* MarkerBuf_pu8);
extern void Fee_LLCopyPageBuff2Marker(Fee_MarkerProp_t* Marker_pst, const uint8* PageBuf_pcu8);
extern void Fee_LLPrepPageBufWithHdrDataStart(Fee_GlobInfoLastRdHeader_tst* HeaderInfo_pst);
extern void Fee_LLPrepPageBufWithHdrDataEnd(Fee_GlobInfoLastRdHeader_tst* HeaderInfo_pst, const uint8* Data_pcu8, uint32 BlkCrc32_u32);

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 178 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1259 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2

static __inline__ void Fee_LLCopyPageBuff2HeaderStart(Fee_BlkHeader_tst* BlkHdr_pst, const uint8* PageBuf_pcu8);

static __inline__ void Fee_LLCopyPageBuff2HeaderIdxAndCrc(Fee_BlkHeader_tst* BlkHdr_pst, const uint8* PageBuf_pcu8);


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 174 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1266 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2

extern Fee_stRetVal_ten Fee_SearchLastBlkHeader(Fee_GlobInfoLastRdHeader_tst* Fee_GlobInfoLastRdHeader_ptr);


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 178 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1271 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2



# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 174 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1275 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2

extern uint32 Fee_SearchHighestCacheEntry(uint32 UpperBoundary_u32, uint8 SectIdx_u8);
extern void Fee_InvalidateCacheByAddress(uint32 xAddress_u32);

extern void Fee_LLCopyPageBuff2HeaderMid(Fee_BlkHeader_tst* BlkHdr_pst, const uint8* PageBuf_pcu8);
extern void Fee_LLCopyPageBuff2HeaderEnd(Fee_BlkHeader_tst* BlkHdr_pst, const uint8* PageBuf_pcu8);
extern Fee_stRetVal_ten Fee_LLCopyData2Buffer(const Fee_GlobInfoLastRdHeader_tst* Fee_GlobInfoLastRdHeader_pcst,
                                              uint8* DataPtr_pu8,
                                              uint16 DataOffset_u16,
                                              uint16 DataLength_u16);
extern void Fee_IncAddressInsideSector(uint32* Address_u32, uint16 numBytes_u16, boolean EnsurePageAlign_b);


extern Fee_stRetVal_ten Fee_LLCheckReorganizationNeed(uint32 Threshold_u32, uint16 DataLength_u16);
extern Fee_stRetVal_ten Fee_LLSectorReorganization(boolean* SectReorgInterSt_pb);


extern Fee_stRetVal_ten Fee_HLWriteBlock(void);
extern Fee_stRetVal_ten Fee_LLWriteBlock(Fee_GlobInfoLastRdHeader_tst* Info_ptr, const uint8* Data_pcu8);


extern Fee_stRetVal_ten Fee_HLReadBlock(void);
extern Fee_stRetVal_ten Fee_LLReadBlock(Fee_GlobInfoLastRdHeader_tst* Info_ptr, uint8* Data_ptr);


    extern Fee_stRetVal_ten Fee_HLMaintainBlock(void);



extern Std_ReturnType Fee_HLPlaceOrder(uint16 Blocknumber_u16, uint16 Offset_u16, uint8* DataBufferPtr_pu8, uint16 Length_16, Fee_HlMode_ten Mode_en);



extern uint32 Fee_LLGetAddressFromCache(uint16 FeeIdx_u16);
extern boolean Fee_LLCheckAddressInCache(uint32 AdrInSector_u32);
extern void Fee_LLUpdateAddressInCache(uint16 FeeIdx_u16,
                                                         uint32 Addr_u32);
extern void Fee_LLUpdateCacheStForSect(uint8 PhySecIdx_u8);
extern void Fee_LLEraseCacheStForSect(uint8 PhySecIdx_u8);
extern uint8 Fee_LLGetCacheUpdateStForSect(uint8 PhySecIdx_u8);
extern uint8 Fee_LLGetCacheUpdateStForAllSect(void);
extern boolean Fee_SrvBinarySearchInBlockProp(uint16 FeeIdx_u16, uint16* CacheIdx_pu16);

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 178 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1319 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2


static __inline__ boolean Fee_SrvBinarySearchInBlockPropFast(uint16 FeeIdx_u16, uint16* CacheIdx_pu16);


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 174 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1325 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
extern Fee_stRetVal_ten Fee_BuildUpCache(uint32 StartAdr_u32, uint32 EndAdr_u32);
extern Fee_stRetVal_ten Fee_BuildUpCacheForAllSect(void);

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 178 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1329 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2




# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 174 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1334 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2

extern void Fee_SrvMemSet8(uint8* xDest_pu8, uint32 xPattern_u32, uint32 numBytes_u32);
extern void Fee_SrvMemCopy8(uint8* xDest_pu8, const uint8* xSrc_pcu8, uint32 numBytes_u32);
extern void Fee_SrvSetFifoMode(Fee_HlMode_ten Mode_en, uint16 xJobType_u16);
extern Fee_HlMode_ten Fee_SrvGetFifoMode(uint16 xJobType_u16);
extern void Fee_LoadNextOrder(void);
extern uint8 Fee_SearchNextOrder(boolean isIntOrder_b);
extern void Fee_UpdateStatus(void);
extern void Fee_TriggerHardSectorReorg(Fee_Rb_WorkingStateType_ten WorkingState_en);

extern Std_ReturnType Fee_CheckBlockCfg(uint8 ApiId_u8, uint16 BlockNum_u16);
extern Std_ReturnType Fee_CheckModuleSt(uint8 ApiId_u8);
extern Std_ReturnType Fee_CheckAdrPtr(uint8 ApiId_u8, const uint8* DataBufferPtr_pcu8);
extern Std_ReturnType Fee_CheckBlkOfs(uint8 ApiId_u8, uint16 BlockNum_u16, uint16 BlockOfs_u16);
extern Std_ReturnType Fee_CheckBlkLen(uint8 ApiId_u8, uint16 BlockNum_u16, uint16 BlockOfs_u16, uint16 BlockLen_u16);


extern void Fee_CheckFlsJobResult(void);
extern void (* Fee_Prv_ResetUsedSectors_pfn)(void);





# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 178 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1359 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h" 2
# 1392 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
static __inline__ void Fee_LLCopyPageBuff2HeaderStart(Fee_BlkHeader_tst* BlkHdr_pst, const uint8* PageBuf_pcu8)
{
    BlkHdr_pst->Preamble_au8[0] = PageBuf_pcu8[0];
    BlkHdr_pst->Preamble_au8[1] = PageBuf_pcu8[1];
    BlkHdr_pst->Preamble_au8[2] = PageBuf_pcu8[2];
}
# 1428 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
static __inline__ void Fee_LLCopyPageBuff2HeaderIdxAndCrc(Fee_BlkHeader_tst* BlkHdr_pst, const uint8* PageBuf_pcu8)
{

    BlkHdr_pst->FeeIndex_u16 = (uint16)((uint16)(((uint16)(PageBuf_pcu8[4])) << 8u) | (uint16)(PageBuf_pcu8[5]));


    BlkHdr_pst->HdrCrc16_u16 = (uint16)((uint16)(((uint16)(PageBuf_pcu8[8])) << 8u) | (uint16)(PageBuf_pcu8[9]));
}
# 1457 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
static __inline__ boolean Fee_SrvBinarySearchInBlockPropFast(uint16 FeeIdx_u16, uint16* CacheIdx_pu16)
{
    boolean xFuncRet_b = (0 != 0);
    uint16 xMid_u16;
    uint16 xLeft_u16 = 0;
    uint16 xRight_u16 = 58u - 1u;


    do
    {

        xMid_u16 = (uint16)(xLeft_u16 + ((xRight_u16 - xLeft_u16) / 2));


        if(Fee_BlockProperties_st[xMid_u16].BlockPersistentId_u16 == FeeIdx_u16)
        {

            *CacheIdx_pu16 = xMid_u16;


            xFuncRet_b = (1 != 0);


            return xFuncRet_b;
        }


        if(Fee_BlockProperties_st[xMid_u16].BlockPersistentId_u16 > FeeIdx_u16)
        {

            if(xMid_u16 != 0)
            {

                xRight_u16 = (uint16)(xMid_u16 - 1u);
            }
            else
            {

                return xFuncRet_b;
            }
        }
        else
        {


            xLeft_u16 = (uint16)(xMid_u16 + 1u);
        }
    }
    while(xRight_u16 >= xLeft_u16);

    return xFuncRet_b;
}
# 1527 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
static __inline__ uint32 Fee_SrvRoundUp(uint32 value_u32 , uint32 stepsize_u32)
{
    uint32 modValue_u32, retVal_u32;

    retVal_u32 = value_u32;

    modValue_u32 = value_u32 % stepsize_u32;

    if(modValue_u32 != 0u)
    {
        retVal_u32 += stepsize_u32 - modValue_u32;
    }

    return retVal_u32;
}
# 1557 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
static __inline__ uint32 Fee_SrvCalcSpaceNeededForWrite(uint16 blockLen_u16 , boolean securityLevel_b , boolean noFallback_b)
{
    uint32 neededSpace_u32;


    neededSpace_u32 = (uint32)14u + (uint32)(blockLen_u16);




    neededSpace_u32 = Fee_SrvRoundUp(neededSpace_u32 , (uint32)8u);





    if (noFallback_b)
    {
        neededSpace_u32 += (uint32)8u;
    }



    if(securityLevel_b)
    {
        neededSpace_u32 *= 2u;
    }

    return neededSpace_u32;
}
# 20 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c" 2
# 1 ".\\output\\inc/Crc.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 1
# 11 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 2

# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 1
# 97 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h"
# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 84 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 85 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 98 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint8 CRC_8_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 103 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 84 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 85 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint8 CRC_8H2F_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 112 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 75 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 116 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint16 CRC_16_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 79 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 80 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 121 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 66 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint32 CRC_32_REV_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 71 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 130 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2



# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 66 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 134 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2

extern const uint32 CRC_32P4_REV_Tbl[(256U)];


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 71 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 139 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc_Cfg.h" 2
# 14 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 2
# 30 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
typedef union
{
    const uint8* b8Ptr;
    const uint16* b16Ptr;
}Crc_DataType;
# 59 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 46 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 47 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 60 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 2

extern void Crc_GetVersionInfo(Std_VersionInfoType * const VersionInfo);
extern uint8 Crc_CalculateCRC8(const uint8* Crc_DataPtr, uint32 Crc_Length, uint8 Crc_StartValue8, boolean Crc_IsFirstCall);
extern uint8 Crc_CalculateCRC8H2F(const uint8* Crc_DataPtr, uint32 Crc_Length, uint8 Crc_StartValue8, boolean Crc_IsFirstCall);
extern uint16 Crc_CalculateCRC16(const uint8* Crc_DataPtr, uint32 Crc_Length, uint16 Crc_StartValue16, boolean Crc_IsFirstCall);
extern uint32 Crc_CalculateCRC32(const uint8* Crc_DataPtr, uint32 Crc_Length, uint32 Crc_StartValue32, boolean Crc_IsFirstCall);
extern uint32 Crc_CalculateCRC32P4(const uint8* Crc_DataPtr, uint32 Crc_Length, uint32 Crc_StartValue32, boolean Crc_IsFirstCall);


# 1 ".\\output\\inc/Crc_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 1
# 52 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 53 ".\\output\\inc/..\\..\\bsw\\Crc\\integration\\Crc_MemMap.h" 2
# 2 ".\\output\\inc/Crc_MemMap.h" 2
# 70 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h" 2
# 2 ".\\output\\inc/Crc.h" 2
# 21 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c" 2
# 44 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 46 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 47 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 45 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c" 2

static Fee_GlobInfoLastRdHeader_tst Fee_GlobInfoRedundantRdHeader_st;

# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 50 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 51 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 49 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c" 2


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 174 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 52 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c" 2

static Fee_stRetVal_ten Fee_LLRedundantCpyChk(Fee_GlobInfoLastRdHeader_tst * xFee_GlobInfoRedundantRdHeader_pst);
# 108 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
Fee_stRetVal_ten Fee_LLCheckReorganizationNeed(uint32 Threshold_u32,
                                                               uint16 DataLength_u16)
{
    Fee_stRetVal_ten xRetVal_en = FEE_SECTORFULL_E;
    uint8 xLogSecIdx_u8;
    uint8 xPhySecIdx_u8;
    uint32 xNumFreeBytes_u32;


    xNumFreeBytes_u32 = Fee_CalculateNumOfFreeBytesInCurSector(Fee_RdWrOrder_st.xWrAddress);



    if((xNumFreeBytes_u32 > DataLength_u16) &&
      ((xNumFreeBytes_u32 - DataLength_u16) >= Threshold_u32))
    {


        xRetVal_en = FEE_ORDER_FINISHED_E;
    }
    else
    {




        xLogSecIdx_u8 = Fee_idxLLSectorOrder_au8[Fee_GetPhysSectorByAddress(Fee_RdWrOrder_st.xWrAddress)];


        xLogSecIdx_u8++;


        if(xLogSecIdx_u8<Fee_NumFlashBanksUsed_u8)
        {







            for(;xLogSecIdx_u8<(Fee_NumFlashBanksUsed_u8); xLogSecIdx_u8++)
            {
                if((Fee_LLSectorOrder_st[xLogSecIdx_u8].SecState_en == FEE_SECTOR_USED_E) ||
                   (Fee_LLSectorOrder_st[xLogSecIdx_u8].SecState_en == FEE_SECTOR_FULL_E))
                {


                    break;
                }
                else
                {




                    xPhySecIdx_u8 = Fee_LLSectorOrder_st[xLogSecIdx_u8].xPhySecIdx_u8;


                    xNumFreeBytes_u32 += (Fee_FlashProp_st[xPhySecIdx_u8].Fee_LogEndAddress_u32 + 1uL) -
                                          Fee_FlashProp_st[xPhySecIdx_u8].Fee_LogStartAddress_u32;
                }
            }


            if ((xNumFreeBytes_u32 > DataLength_u16) &&
               ((xNumFreeBytes_u32 - DataLength_u16) >= Threshold_u32))
            {


                xRetVal_en = FEE_ORDER_FINISHED_E;
            }
        }
    }
# 190 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
    return (xRetVal_en);
}
# 262 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
Fee_stRetVal_ten Fee_LLSectorReorganization(boolean* SectReorgInterSt_pb)
{
    Fee_stRetVal_ten xRetVal_en = FEE_ORDER_PENDING_E;
    Fee_stRetVal_ten xTmpRetVal_en = FEE_ORDER_PENDING_E;
    uint8 xLogSecIdx_u8;
    uint8 xPhySecIdx_u8;
    uint32 xTmpAddr_u32 = 0xCAFEAFFEuL;
    uint8 xStCache_u8 = 0;
    boolean xSectReorgInterSt_b = (0 != 0);

    static uint32 xAdrBlkHeader_u32;
    static boolean xSearchRetry_b;
    static uint16 xBlkIdx_u16;
    static boolean xFee_WriteTwice_b;
# 289 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
    *SectReorgInterSt_pb = (0 != 0);
# 322 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
    switch(Fee_RdWrOrder_st.Fee_LLSecReorg_en)
    {

        case FEE_LL_REORG_INIT_E:
        {

            Fee_Prv_stReorg_u8 = 0x01u;


            xBlkIdx_u16 = (0xFFFFu);
            xSearchRetry_b = (0 != 0);
# 346 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
            Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_PREP_SEARCH_BLK_E;






            if ((Fee_RdWrOrder_st.xWrAddress>=Fee_FlashProp_st[Fee_LLSectorOrder_st[0].xPhySecIdx_u8].Fee_LogStartAddress_u32) &&
                (Fee_RdWrOrder_st.xWrAddress<=Fee_FlashProp_st[Fee_LLSectorOrder_st[0].xPhySecIdx_u8].Fee_LogEndAddress_u32)){







                Fee_RdWrOrder_st.xWrAddress = Fee_FlashProp_st[Fee_LLSectorOrder_st[0].xPhySecIdx_u8].Fee_LogEndAddress_u32;
            }
        }




        case FEE_LL_REORG_PREP_SEARCH_BLK_E:
        {





            xBlkIdx_u16++;


            Fee_GlobInfoRedundantRdHeader_st.AdrBlkHeader_u32 = (0u);
            Fee_GlobInfoRedundantRdHeader_st.BlkLength_u16 = 0;
            Fee_GlobInfoRedundantRdHeader_st.BlkStatus_u8 = 0;
            Fee_GlobInfoRedundantRdHeader_st.FeeIndex_u16 = 0;
            Fee_GlobInfoRedundantRdHeader_st.HdrCrc16_u16 = 0;
            Fee_GlobInfoRedundantRdHeader_st.BlkCrc32_u32 = 0;
            Fee_GlobInfoRedundantRdHeader_st.DataBytes_au8[0u]= 0;
            Fee_GlobInfoRedundantRdHeader_st.DataBytes_au8[1u]= 0;


            xFee_WriteTwice_b = (1 != 0);


            if (xBlkIdx_u16 >= 58u)
            {
# 429 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
                Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_FINISHED_E;


                break;
            }


            xTmpAddr_u32 = Fee_LLGetAddressFromCache(Fee_BlockProperties_st[xBlkIdx_u16].BlockPersistentId_u16);


            xStCache_u8 = Fee_LLGetCacheUpdateStForAllSect();






            if((xTmpAddr_u32 != 0xCAFEAFFEuL) ||
               (xStCache_u8 == 0x00u))
            {





                xAdrBlkHeader_u32 = (0xFFFFFFFFuL);


                xSearchRetry_b = (0 != 0);


                Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_SEARCH_BLK_E;
            }
            else
            {




                break;
            }
        }




        case FEE_LL_REORG_SEARCH_BLK_E:
        {

            xTmpRetVal_en = Fee_LLSearchSpecifiedBlkHeader(Fee_BlockProperties_st[xBlkIdx_u16].BlockPersistentId_u16,
                                                           &xAdrBlkHeader_u32,
                                                           &Fee_GlobInfoLastRdHeader_st,
                                                           xSearchRetry_b);



            switch (xTmpRetVal_en)
            {

                case FEE_ORDER_PENDING_E:
                {

                    ;
                }
                break;


                case FEE_ORDER_FINISHED_E:
                {







                    xAdrBlkHeader_u32 = Fee_GlobInfoLastRdHeader_st.AdrBlkHeader_u32;






                    if(xSearchRetry_b != (0 != 0))
                    {
                        Fee_LLUpdateAddressInCache(Fee_BlockProperties_st[xBlkIdx_u16].BlockPersistentId_u16,
                                                   Fee_GlobInfoLastRdHeader_st.AdrBlkHeader_u32);
                    }


                    Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_CHECK_BLOCK_CS_E;
                }
                break;


                case FEE_ERROR_E:
                {



                    Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_PREP_SEARCH_BLK_E;
                }
                break;


                case FEE_ABORTED_E:





                    xSearchRetry_b = (1 != 0);
                break;


                case FEE_ERASE_SECTOR_E:
                case FEE_SECTORCHANGE_E:
                case FEE_SECTORFULL_E:
                case FEE_BLOCK_INVALIDATED_E:
                case FEE_NUM_RET_VAL_E:
                default:
                {

                    Fee_LLUpdateAddressInCache(Fee_BlockProperties_st[xBlkIdx_u16].BlockPersistentId_u16,
                                               0xAFFECAFEuL);


                    Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_INIT_E;
                }
                break;
            }
        }
        break;


        case FEE_LL_REORG_CHECK_BLOCK_CS_E:
        {

            xTmpRetVal_en = Fee_LLCalcBlkCrcInFlash(&Fee_GlobInfoLastRdHeader_st);


            switch (xTmpRetVal_en)
            {

                case FEE_ORDER_PENDING_E:
                {

                }
                break;


                case FEE_ORDER_FINISHED_E:
                {

                    xPhySecIdx_u8 = Fee_LLSectorOrder_st[0].xPhySecIdx_u8;


                    if((Fee_GlobInfoLastRdHeader_st.AdrBlkHeader_u32 >= Fee_FlashProp_st[xPhySecIdx_u8].Fee_LogStartAddress_u32) &&
                       (Fee_GlobInfoLastRdHeader_st.AdrBlkHeader_u32 < (Fee_FlashProp_st[xPhySecIdx_u8].Fee_LogEndAddress_u32)))
                    {
# 597 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
                        if((Fee_Prv_stReorg_u8 == 0x01u) ||
                           ((Fee_Prv_stReorg_u8 == 0x02u) &&
                           (((Fee_GlobInfoLastRdHeader_st.BlkStatus_u8 & (uint8)0x0010u) > 0u) ||
                             ((0 != 0) != (0 != 0)))))
                        {

                            Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_WRITE_BLOCK_E;
                        }
                        else
                        {

                            xSectReorgInterSt_b = (1 != 0);


                            Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_PREP_SEARCH_BLK_E;
                        }
                    }
                    else
                    {



                        if((Fee_GlobInfoLastRdHeader_st.BlkStatus_u8 & (uint8)0x0001u) != 1u)
                        {


                            xSectReorgInterSt_b = (1 != 0);


                            Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_PREP_SEARCH_BLK_E;
                        }
                        else
                        {


                            Fee_GlobInfoRedundantRdHeader_st = Fee_GlobInfoLastRdHeader_st;


                            Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_REDUNDANT_BLK_CHK_E;
                        }
                    }
                }
                break;


                case FEE_ERROR_E:
                {
# 676 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
                    {

                        Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_SEARCH_BLK_E;
# 697 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
                        xSearchRetry_b = (1 != 0);
                    }
                }
                break;


                case FEE_ERASE_SECTOR_E:
                case FEE_SECTORCHANGE_E:
                case FEE_SECTORFULL_E:
                case FEE_ABORTED_E:
                case FEE_BLOCK_INVALIDATED_E:
                case FEE_NUM_RET_VAL_E:
                default:
                {




                    Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_INIT_E;
                }
                break;
            }
        }
        break;
# 739 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
        case FEE_LL_REORG_REDUNDANT_BLK_CHK_E:
        {
            xTmpRetVal_en = Fee_LLRedundantCpyChk(&Fee_GlobInfoRedundantRdHeader_st);


            switch(xTmpRetVal_en)
            {

                case FEE_ORDER_PENDING_E:
                {

                    ;
                }
                break;


                case FEE_ORDER_FINISHED_E:
                {


                    xPhySecIdx_u8 = Fee_LLSectorOrder_st[0].xPhySecIdx_u8;


                    if((Fee_GlobInfoRedundantRdHeader_st.AdrBlkHeader_u32 >= Fee_FlashProp_st[xPhySecIdx_u8].Fee_LogStartAddress_u32) &&
                       (Fee_GlobInfoRedundantRdHeader_st.AdrBlkHeader_u32 < Fee_FlashProp_st[xPhySecIdx_u8].Fee_LogEndAddress_u32))
                    {

                        xFee_WriteTwice_b = (0 != 0);

                        Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_WRITE_BLOCK_E;
                    }
                    else
                    {



                        xSectReorgInterSt_b = (1 != 0);

                        Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_PREP_SEARCH_BLK_E;
                    }
                }
                break;


                case FEE_ERROR_E:
                {
                    xFee_WriteTwice_b = (0 != 0);

                    Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_WRITE_BLOCK_E;
                }
                break;

                case FEE_ABORTED_E:
                case FEE_ERASE_SECTOR_E:
                case FEE_SECTORCHANGE_E:
                case FEE_SECTORFULL_E:
                case FEE_BLOCK_INVALIDATED_E:
                case FEE_NUM_RET_VAL_E:
                default:
                {

                    Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_INIT_E;
                }
                break;
            }
        }
        break;


        case FEE_LL_REORG_WRITE_BLOCK_E:
        {



            xTmpRetVal_en = Fee_LLCpyBlkFromFls2Fls(&Fee_GlobInfoLastRdHeader_st, xFee_WriteTwice_b);


            switch(xTmpRetVal_en)
            {

                case FEE_ORDER_PENDING_E:
                {

                    ;
                }
                break;


                case FEE_ORDER_FINISHED_E:
                {

                    xSectReorgInterSt_b = (1 != 0);





                    Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_PREP_SEARCH_BLK_E;
                }
                break;


                case FEE_ERROR_E:



                case FEE_ABORTED_E:







                case FEE_ERASE_SECTOR_E:
                case FEE_SECTORCHANGE_E:
                case FEE_SECTORFULL_E:
                case FEE_BLOCK_INVALIDATED_E:
                case FEE_NUM_RET_VAL_E:
                default:
                {

                    Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_INIT_E;
                }
                break;
            }
        }
        break;
# 1080 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
        case FEE_LL_REORG_FINISHED_E:
        {






            xPhySecIdx_u8 = Fee_LLSectorOrder_st[0].xPhySecIdx_u8;


            if(Fee_LLWriteMarker(xPhySecIdx_u8, FEE_ERASE_REQUEST_ID_E) != FEE_ORDER_PENDING_E)
            {
# 1105 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
                for(xLogSecIdx_u8=0; xLogSecIdx_u8<(Fee_NumFlashBanksUsed_u8-1); xLogSecIdx_u8++)
                {

                    Fee_LLSectorOrder_st[xLogSecIdx_u8] = Fee_LLSectorOrder_st[xLogSecIdx_u8+1];


                    Fee_idxLLSectorOrder_au8[Fee_LLSectorOrder_st[xLogSecIdx_u8].xPhySecIdx_u8] = xLogSecIdx_u8;
                }


                Fee_LLSectorOrder_st[Fee_NumFlashBanksUsed_u8-1].SecState_en = FEE_SECTOR_REQUEST2ERASE_E;
                Fee_LLSectorOrder_st[Fee_NumFlashBanksUsed_u8-1].xPhySecIdx_u8 = xPhySecIdx_u8;
                Fee_LLSectorOrder_st[Fee_NumFlashBanksUsed_u8-1].SecChngCnt_u32 = 0xFFFFFFFFuL;

                Fee_idxLLSectorOrder_au8[xPhySecIdx_u8] = Fee_NumFlashBanksUsed_u8-1;


                xRetVal_en = FEE_ORDER_FINISHED_E;
            }






        }
        break;


        default:
        {

            xRetVal_en = FEE_ERROR_E;
        }
        break;
    }



    *SectReorgInterSt_pb = xSectReorgInterSt_b;


    if(xRetVal_en != FEE_ORDER_PENDING_E)
    {

        Fee_Prv_stReorg_u8 = 0x00u;


        Fee_RdWrOrder_st.Fee_LLSecReorg_en = FEE_LL_REORG_INIT_E;


        xSearchRetry_b = (0 != 0);
# 1179 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
    }
# 1188 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
    return (xRetVal_en);
}
# 1210 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
static Fee_stRetVal_ten Fee_LLRedundantCpyChk(Fee_GlobInfoLastRdHeader_tst * xFee_GlobInfoRedundantRdHeader_pst)
{
    Fee_stRetVal_ten xRetVal_en = FEE_ORDER_PENDING_E;
    Fee_stRetVal_ten xTmpRetVal_en = FEE_ORDER_PENDING_E;
    static uint16 xFeeIndex_u16;
    static uint32 xAdrLastBlkHeader_u32;
    static uint32 xAdrFirstBlkHeader_u32;
    Fee_BlkHeader_tst xTmpBlkHdr_st;
    uint32 xExpectedAdrLastBlkHdr_u32;
    uint32 len_u32;
    uint16 xCalcCrc_u16;

    switch (Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en)
    {

        case FEE_LL_REDUNDANT_CPY_CHK_INIT_E:
        {

            xFeeIndex_u16 = xFee_GlobInfoRedundantRdHeader_pst->FeeIndex_u16;


            xAdrFirstBlkHeader_u32 = xFee_GlobInfoRedundantRdHeader_pst->AdrBlkHeader_u32;


            len_u32 = xFee_GlobInfoRedundantRdHeader_pst->BlkLength_u16 + 14u;
            while(0u != (len_u32 % 8u))
            {
                len_u32++;
            }


            xExpectedAdrLastBlkHdr_u32 = xFee_GlobInfoRedundantRdHeader_pst->AdrBlkHeader_u32 - len_u32;



            if(
                (xExpectedAdrLastBlkHdr_u32 >= Fee_LLGetSecStartAddress(Fee_GetPhysSectorByAddress(xAdrFirstBlkHeader_u32))) &&
                ((xFee_GlobInfoRedundantRdHeader_pst->BlkStatus_u8 & 0x0040u) == 0u)
            )
            {

                if(0x00u == Fls_17_Dmu_Read(xExpectedAdrLastBlkHdr_u32,(uint8*)&Fee_PageBytePtr_cpu8[0],14u))
                {
                    xAdrLastBlkHeader_u32 = xExpectedAdrLastBlkHdr_u32;
                    Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_WAIT_E;
                }
                else
                {
                    Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E;
                }
            }
            else
            {
                Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E;
            }
        }
        break;


        case FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_WAIT_E:
        {
            if (Fee_stMain == FEE_POLLING_MODE_E)
            {

                Fls_17_Dmu_MainFunction();
            }



            Fee_CheckFlsJobResult();

        }
        break;
# 1322 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
        case FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_SUC_E:
        {

            if ((Fee_PageBytePtr_cpu8[2] == (0xA53C96uL & 0xFFu)) &&
                (Fee_PageBytePtr_cpu8[1] == ((0xA53C96uL >> 8u) & 0xFFu)) &&
                (Fee_PageBytePtr_cpu8[0] == ((0xA53C96uL >> 16u) & 0xFFu)))
            {

                Fee_LLCopyPageBuff2HeaderMid(&xTmpBlkHdr_st, &Fee_PageBytePtr_cpu8[0]);


                xCalcCrc_u16 = Crc_CalculateCRC16((uint8*)&Fee_PageBytePtr_cpu8[0],
                                                  (uint32)(14u - 6u),
                                                  (uint16)0xCAFEu,
                                                  (0 != 0));




                if(
                    (xCalcCrc_u16 == xTmpBlkHdr_st.HdrCrc16_u16) &&
                    (xFeeIndex_u16 == xTmpBlkHdr_st.FeeIndex_u16) &&
                    (0u == (xTmpBlkHdr_st.BlkStatus_u8 & (uint8)0x80))
                )
                {

                    Fee_LLCopyPageBuff2HeaderEnd(&xTmpBlkHdr_st, &Fee_PageBytePtr_cpu8[0]);


                    xFee_GlobInfoRedundantRdHeader_pst->AdrBlkHeader_u32 = xAdrLastBlkHeader_u32;
                    xFee_GlobInfoRedundantRdHeader_pst->BlkCrc32_u32 = xTmpBlkHdr_st.BlkCrc32_u32;
                    xFee_GlobInfoRedundantRdHeader_pst->BlkLength_u16 = xTmpBlkHdr_st.BlkLength_u16;
                    xFee_GlobInfoRedundantRdHeader_pst->BlkStatus_u8 = xTmpBlkHdr_st.BlkStatus_u8;
                    xFee_GlobInfoRedundantRdHeader_pst->FeeIndex_u16 = xTmpBlkHdr_st.FeeIndex_u16;
                    xFee_GlobInfoRedundantRdHeader_pst->HdrCrc16_u16 = xTmpBlkHdr_st.HdrCrc16_u16;
                    xFee_GlobInfoRedundantRdHeader_pst->DataBytes_au8[0u] = xTmpBlkHdr_st.DataBytes_au8[0u];
                    xFee_GlobInfoRedundantRdHeader_pst->DataBytes_au8[1u] = xTmpBlkHdr_st.DataBytes_au8[1u];

                    Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_BLK_CS_E;
                }
                else
                {
                    Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E;
                }
            }
            else
            {
                Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E;
            }
        }
        break;

        case FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_ERR_E:
        {

            Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E;
        }
        break;


        case FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E:
        {

            xFeeIndex_u16 = xFee_GlobInfoRedundantRdHeader_pst->FeeIndex_u16;


            xAdrFirstBlkHeader_u32 = xFee_GlobInfoRedundantRdHeader_pst->AdrBlkHeader_u32;


            xAdrLastBlkHeader_u32 = xFee_GlobInfoRedundantRdHeader_pst->AdrBlkHeader_u32;


            Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_E;
        }
        break;


        case FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_E:
        {


            xTmpRetVal_en = Fee_LLSearchSpecifiedBlkHeader(xFeeIndex_u16,
                                                           &xAdrLastBlkHeader_u32,
                                                           xFee_GlobInfoRedundantRdHeader_pst,
                                                           (1 != 0));


            switch (xTmpRetVal_en)
            {

                case FEE_ORDER_PENDING_E:
                {

                    ;
                }
                break;


                case FEE_ORDER_FINISHED_E:
                {

                    Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_BLK_CS_E;
                }
                break;

                case FEE_ERROR_E:
                {



                    xFee_GlobInfoRedundantRdHeader_pst->FeeIndex_u16 = xFeeIndex_u16;

                    xRetVal_en = FEE_ERROR_E;
                }
                break;


                case FEE_ABORTED_E:
                case FEE_BLOCK_INVALIDATED_E:
                case FEE_NUM_RET_VAL_E:
                case FEE_ERASE_SECTOR_E:
                case FEE_SECTORCHANGE_E:
                case FEE_SECTORFULL_E:
                default:
                {

                    xFee_GlobInfoRedundantRdHeader_pst->FeeIndex_u16 = xFeeIndex_u16;


                    xRetVal_en = FEE_ABORTED_E;
                }
                break;
            }
        }
        break;


        case FEE_LL_REDUNDANT_CPY_CHK_BLK_CS_E:
        {

            xTmpRetVal_en = Fee_LLCalcBlkCrcInFlash(xFee_GlobInfoRedundantRdHeader_pst);


            switch (xTmpRetVal_en)
            {

                case FEE_ORDER_PENDING_E:
                {

                }
                break;


                case FEE_ORDER_FINISHED_E:
                {

                    xRetVal_en = FEE_ORDER_FINISHED_E;
                }
                break;


                case FEE_ERROR_E:
                {


                    xAdrLastBlkHeader_u32 = xFee_GlobInfoRedundantRdHeader_pst->AdrBlkHeader_u32;


                    Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_E;
                }
                break;


                case FEE_BLOCK_INVALIDATED_E:
                case FEE_NUM_RET_VAL_E:
                case FEE_ERASE_SECTOR_E:
                case FEE_SECTORCHANGE_E:
                case FEE_SECTORFULL_E:
                case FEE_ABORTED_E:
                default:
                {

                    xRetVal_en = FEE_ABORTED_E;
                }
                break;
            }
        }
        break;

        default:
        {

            xRetVal_en = FEE_ABORTED_E;
        }
        break;
    }


    if (xRetVal_en != FEE_ORDER_PENDING_E)
    {

        Fee_RdWrOrder_st.Fee_LLRedundantCpyChk_en = FEE_LL_REDUNDANT_CPY_CHK_INIT_E;



        Fee_LLUpdateAddressInCache(xFeeIndex_u16, xAdrFirstBlkHeader_u32);
    }

    return (xRetVal_en);
}


# 1 ".\\output\\inc/Fee_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 1
# 178 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_MemMap.h" 2
# 2 ".\\output\\inc/Fee_MemMap.h" 2
# 1535 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c" 2
