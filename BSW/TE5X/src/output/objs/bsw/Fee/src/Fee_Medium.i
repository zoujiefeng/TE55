# 1 "bsw\\Fee\\src\\Fee_Medium.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Fee\\src\\Fee_Medium.c"
# 9 "bsw\\Fee\\src\\Fee_Medium.c"
# 1 ".\\output\\inc/Fee_Idx_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Idx_Cfg.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Idx_Cfg.h"
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
# 14 ".\\output\\inc/..\\..\\bsw\\Fee\\Fee_Idx_Cfg.h" 2
# 2 ".\\output\\inc/Fee_Idx_Cfg.h" 2
# 10 "bsw\\Fee\\src\\Fee_Medium.c" 2
