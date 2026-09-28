# 1 "Integration\\mcal\\Spi_Irq.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Integration\\mcal\\Spi_Irq.c"
# 39 "Integration\\mcal\\Spi_Irq.c"
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
# 40 "Integration\\mcal\\Spi_Irq.c" 2


# 1 ".\\output\\inc/Spi.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h" 1
# 48 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 49 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h" 2
# 1 ".\\output\\inc/Spi_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Spi_Cfg.h" 1
# 2 ".\\output\\inc/Spi_Cfg.h" 2
# 50 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h" 2


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
# 53 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h" 2
# 157 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
typedef enum
{
  SPI_UNINIT,
  SPI_IDLE,
  SPI_BUSY
} Spi_StatusType;







typedef enum
{
  SPI_JOB_OK,
  SPI_JOB_PENDING,
  SPI_JOB_FAILED,
  SPI_JOB_QUEUED
} Spi_JobResultType;







typedef enum
{
  SPI_SEQ_OK,
  SPI_SEQ_PENDING,
  SPI_SEQ_FAILED,
  SPI_SEQ_CANCELED
} Spi_SeqResultType;





typedef enum
{
  SPI_LOOPBACK_DISABLE = 0U,
  SPI_LOOPBACK_ENABLE = 1U
} Spi_LoopBackType;
# 215 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
typedef uint8 Spi_DataBufferType;






typedef uint16 Spi_NumberOfDataType;





typedef uint8 Spi_ChannelType;





typedef uint16 Spi_JobType;





typedef uint8 Spi_SequenceType;





typedef uint8 Spi_HWUnitType;



typedef uint32 Spi_QSPIHwMapConfigType ;
# 271 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
typedef void(*Spi_JobEndNotification)(void);






typedef void(*Spi_SeqEndNotification)(void);






typedef struct
{
  Spi_SequenceType SequenceId;







  const Spi_JobType *JobLinkPtrPhysical;







  uint16 NoOfJobInSeq;
# 313 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
  uint8 HwModuleUsed;

  uint8 u8Comm;

} Spi_SequenceConfigType;






typedef struct
{
  Spi_JobType JobId;
# 336 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
  uint32 BaudRateAndClockParam;




  uint32 IdleLeadTrailDelay;


  const Spi_ChannelType *ChnlLinkPtrPhysical;




  uint16 CSPortPin;



  uint8 JobPriority;


  uint8 CsPolarity;


  Spi_HWUnitType HwUnit;


  uint8 ParitySupport;

  uint8 FramebasedCs;
} Spi_JobConfigType;







typedef struct
{



  uint32 ActiveChipSelectLevel;



  uint32 IBBufferSize;


  uint16 JobQueueLength;
# 401 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
  uint8 ClockSetting;


  uint8 MasterReceivePortPin;

  Spi_SequenceType MaxSequence;


  uint8 ExternalDemuxEnabled;


  uint32 StrobeDelay;

} Spi_QspiHwConfigType;







typedef struct
{


  uint32 Defaultdata;



  uint16 NoOfDataElements;


  uint8 ChannelType;
# 444 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
  uint8 DataConfig;

  Spi_ChannelType ChannelId;


} Spi_ChannelConfigType;






typedef struct
{

  const Spi_DataBufferType* SrcPtr;


  const Spi_DataBufferType * DestPtr;


  Spi_NumberOfDataType TransferLength;

} Spi_BufferType;





typedef struct
{
  uint16 ChannelOffset;
  uint16 DataTransferLength;
} Spi_CoreChannelOffsetType;


typedef struct
{

  const Spi_SequenceConfigType* SequenceConfigPtr;


  const Spi_JobConfigType* JobConfigPtr;


  const Spi_ChannelConfigType* ChannelConfigPtr;


  const Spi_CoreChannelOffsetType* ChannelOffsetInfo;



  const Spi_QspiHwConfigType *QSPIHwConfigPtr[(5U)];



  const Spi_QSPIHwMapConfigType QSPIHwMap;


  Spi_SequenceType NoOfSequences;


  Spi_JobType NoOfJobs;


  Spi_ChannelType NoOfChannels;

} Spi_CoreConfigType;



typedef struct
{
  const Spi_CoreConfigType *CoreConfigPtr[(0x4U)];


  const uint8* SequenceLookup;


  const uint16* JobLookup;


  const uint8* ChannelLookup;


  Spi_SequenceType NoOfSequences;


  Spi_JobType NoOfJobs;


  Spi_ChannelType NoOfChannels;


  uint32 SyncTimeout;
} Spi_ConfigType;
# 558 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 637 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 559 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h" 2
# 604 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
extern void Spi_Init(const Spi_ConfigType* const ConfigPtr);
# 624 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
extern Std_ReturnType Spi_DeInit(void);
# 804 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
extern Std_ReturnType Spi_SetupEB
(
  const Spi_ChannelType Channel,
  const Spi_DataBufferType* const SrcDataBufferPtr,
  const Spi_DataBufferType* const DesDataBufferPtr,
  const Spi_NumberOfDataType Length
);
# 839 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
extern Spi_StatusType Spi_GetStatus(void);
# 863 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
extern Spi_JobResultType Spi_GetJobResult(const Spi_JobType Job);
# 888 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
extern Spi_SeqResultType Spi_GetSequenceResult(const Spi_SequenceType Sequence);
# 912 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
extern Std_ReturnType Spi_ControlLoopBack(const Spi_HWUnitType HWUnit,
                                        const Spi_LoopBackType EnableOrDisable);
# 950 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
extern Std_ReturnType Spi_SyncTransmit(const Spi_SequenceType Sequence);
# 989 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
extern Spi_StatusType Spi_GetHWUnitStatus(const Spi_HWUnitType HWUnit);
# 1223 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 649 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 1224 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h" 2

# 1 ".\\output\\inc/Spi_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Spi_PBcfg.h" 1
# 57 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Spi_PBcfg.h"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 440 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section "Config.Cpu0.32bit" a 4
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Spi_PBcfg.h" 2


extern const Spi_ConfigType Spi_Config;
# 72 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Spi_PBcfg.h"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 453 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 73 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Spi_PBcfg.h" 2
# 2 ".\\output\\inc/Spi_PBcfg.h" 2
# 1226 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h" 2
# 2 ".\\output\\inc/Spi.h" 2
# 43 "Integration\\mcal\\Spi_Irq.c" 2


# 1 ".\\output\\inc/IFX_Os.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h" 1
# 40 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h"
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 41 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h" 2
# 49 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h"
void SuspendAllInterrupts(void);
void ResumeAllInterrupts(void);
# 2 ".\\output\\inc/IFX_Os.h" 2
# 46 "Integration\\mcal\\Spi_Irq.c" 2
# 1 ".\\output\\inc/Irq.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 1
# 42 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2


# 1 ".\\output\\inc/Irq_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Irq_Cfg.h" 1
# 2 ".\\output\\inc/Irq_Cfg.h" 2
# 46 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 218 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 219 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 241 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqCcu6_Init(void);
# 264 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqCan_Init(void);
# 287 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqGpt_Init(void);
# 311 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqGtm_Init(void);
# 334 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqGpsrGroup_Init(void);
# 380 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqSpi_Init(void);
# 426 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqAdc_Init(void);
# 472 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqDma_Init(void);
# 495 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqScu_Init(void);
# 518 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqDmu_Init(void);
# 610 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void Irq_ClearAllInterruptFlags(void);
# 656 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqI2c_Init(void);







# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 80 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 665 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 2 ".\\output\\inc/Irq.h" 2
# 47 "Integration\\mcal\\Spi_Irq.c" 2
