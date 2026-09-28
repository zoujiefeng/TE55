# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 46 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/Spi.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h" 1
# 48 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
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
# 47 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2

# 1 ".\\output\\inc/Std_Types.h" 1
# 49 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2


# 1 ".\\output\\inc/IfxQspi_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h" 2
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
# 52 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2
# 1 ".\\output\\inc/IfxQspi_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_bf.h" 1
# 2 ".\\output\\inc/IfxQspi_bf.h" 2
# 53 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2







# 1 ".\\output\\inc/IfxPort_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h" 1
# 122 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h" 1
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
# 61 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2
# 73 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/SchM_Spi.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Spi.h" 1
# 58 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Spi.h"
extern void SchM_Enter_Spi_Queue_Update(void);
# 81 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Spi.h"
extern void SchM_Exit_Spi_Queue_Update(void);
# 104 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Spi.h"
extern void SchM_Enter_Spi_ChannelLock(void);
# 127 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Spi.h"
extern void SchM_Exit_Spi_ChannelLock(void);
# 150 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Spi.h"
extern void SchM_Enter_Spi_SyncLock(void);
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Spi.h"
extern void SchM_Exit_Spi_SyncLock(void);
# 2 ".\\output\\inc/SchM_Spi.h" 2
# 74 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2
# 84 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/IfxCpu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_reg.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR:32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS:1;
    volatile unsigned int BIV:31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BLK_OMASK_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int OMASK:12;
    volatile unsigned int ONE:11;
    volatile unsigned int reserved_28:4;
} Ifx_CPU_BLK_OMASK_Bits;


typedef struct _Ifx_CPU_BLK_OTAR_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int TBASE:23;
    volatile unsigned int reserved_28:4;
} Ifx_CPU_BLK_OTAR_Bits;


typedef struct _Ifx_CPU_BLK_RABR_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int OBASE:17;
    volatile unsigned int reserved_22:2;
    volatile unsigned int OMEM:4;
    volatile unsigned int reserved_28:3;
    volatile unsigned int OVEN:1;
} Ifx_CPU_BLK_RABR_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int BTV:31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM:1;
    volatile unsigned int CE:1;
    volatile unsigned int M1:3;
    volatile unsigned int M2:3;
    volatile unsigned int M3:3;
    volatile unsigned int reserved_11:21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int RM:1;
    volatile unsigned int SP:1;
    volatile unsigned int reserved_5:27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID:3;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int LOWBND:27;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int UPPBND:27;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MOD_REV:8;
    volatile unsigned int MOD_32B:8;
    volatile unsigned int MOD:16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE_N:10;
    volatile unsigned int reserved_10:22;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID:3;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA:32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int SBE:1;
    volatile unsigned int reserved_4:5;
    volatile unsigned int CWE:1;
    volatile unsigned int CFE:1;
    volatile unsigned int reserved_11:3;
    volatile unsigned int SOE:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE:1;
    volatile unsigned int HALT:2;
    volatile unsigned int SIH:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int reserved_5:1;
    volatile unsigned int PREVSUSP:1;
    volatile unsigned int PEVT:1;
    volatile unsigned int EVTSRC:5;
    volatile unsigned int reserved_13:19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int DCBYP:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE:16;
    volatile unsigned int DSCRATCH_SZE:16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0:6;
    volatile unsigned int DCXVALUE:26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS:32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA:32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED:1;
    volatile unsigned int IE_T:1;
    volatile unsigned int IE_C:1;
    volatile unsigned int IE_S:1;
    volatile unsigned int IE_BI:1;
    volatile unsigned int E_INFO:6;
    volatile unsigned int IE_UNC:1;
    volatile unsigned int IE_SP:1;
    volatile unsigned int IE_BS:1;
    volatile unsigned int IE_DLMU:1;
    volatile unsigned int IE_LPB:1;
    volatile unsigned int IE_MTMV:1;
    volatile unsigned int reserved_17:15;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNACCENA_R_Bits
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
} Ifx_CPU_DLMU_SPROT_RGNACCENA_R_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNACCENA_W_Bits
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
} Ifx_CPU_DLMU_SPROT_RGNACCENA_W_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNACCENB_R_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_DLMU_SPROT_RGNACCENB_R_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNACCENB_W_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_DLMU_SPROT_RGNACCENB_W_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNLA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_DLMU_SPROT_RGNLA_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNUA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_DLMU_SPROT_RGNUA_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int DMSVALUE:31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE_N:18;
    volatile unsigned int reserved_18:14;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int LOWBND:29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int UPPBND:29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE_N:18;
    volatile unsigned int reserved_18:14;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE:1;
    volatile unsigned int GAE:1;
    volatile unsigned int LBE:1;
    volatile unsigned int DRE:1;
    volatile unsigned int reserved_4:2;
    volatile unsigned int CRE:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int DTME:1;
    volatile unsigned int LOE:1;
    volatile unsigned int SDE:1;
    volatile unsigned int SCE:1;
    volatile unsigned int CAC:1;
    volatile unsigned int MPE:1;
    volatile unsigned int CLE:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int ALN:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO:16;
    volatile unsigned int FCXS:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FLASHCON0_Bits
{
    volatile unsigned int TAG1:6;
    volatile unsigned int reserved_6:2;
    volatile unsigned int TAG2:6;
    volatile unsigned int reserved_14:2;
    volatile unsigned int TAG3:6;
    volatile unsigned int reserved_22:2;
    volatile unsigned int TAG4:6;
    volatile unsigned int reserved_30:2;
} Ifx_CPU_FLASHCON0_Bits;


typedef struct _Ifx_CPU_FLASHCON1_Bits
{
    volatile unsigned int STALL:1;
    volatile unsigned int reserved_1:15;
    volatile unsigned int MASKUECC:2;
    volatile unsigned int reserved_18:6;
    volatile unsigned int reserved_24:2;
    volatile unsigned int reserved_26:6;
} Ifx_CPU_FLASHCON1_Bits;


typedef struct _Ifx_CPU_FLASHCON2_Bits
{
    volatile unsigned int RECDIS:2;
    volatile unsigned int ECCCORDIS:2;
    volatile unsigned int reserved_4:4;
    volatile unsigned int HMARGIN:2;
    volatile unsigned int MSEL:2;
    volatile unsigned int reserved_12:4;
    volatile unsigned int ECCSCLR:2;
    volatile unsigned int reserved_18:6;
    volatile unsigned int SBABCLR:2;
    volatile unsigned int DBABCLR:2;
    volatile unsigned int MBABCLR:2;
    volatile unsigned int ZBABCLR:2;
} Ifx_CPU_FLASHCON2_Bits;


typedef struct _Ifx_CPU_FLASHCON3_Bits
{
    volatile unsigned int ECCERRINJ:1;
    volatile unsigned int EDCERRINJ:1;
    volatile unsigned int SBABERRINJ:1;
    volatile unsigned int DBABERRINJ:1;
    volatile unsigned int MBABERRINJ:1;
    volatile unsigned int ZBABERRINJ:1;
    volatile unsigned int SBERERRINJ:1;
    volatile unsigned int DBERERRINJ:1;
    volatile unsigned int NVMCERRINJ:1;
    volatile unsigned int FLCONERRINJ:1;
    volatile unsigned int reserved_10:22;
} Ifx_CPU_FLASHCON3_Bits;


typedef struct _Ifx_CPU_FLASHCON4_Bits
{
    volatile unsigned int DDIS:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_FLASHCON4_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST:1;
    volatile unsigned int TCL:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int RM:2;
    volatile unsigned int reserved_10:8;
    volatile unsigned int FXE:1;
    volatile unsigned int FUE:1;
    volatile unsigned int FZE:1;
    volatile unsigned int FVE:1;
    volatile unsigned int FIE:1;
    volatile unsigned int reserved_23:3;
    volatile unsigned int FX:1;
    volatile unsigned int FU:1;
    volatile unsigned int FZ:1;
    volatile unsigned int FV:1;
    volatile unsigned int FI:1;
    volatile unsigned int reserved_31:1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC:8;
    volatile unsigned int FMT:1;
    volatile unsigned int reserved_9:7;
    volatile unsigned int DREG:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC:32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1:32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2:32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3:32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN:8;
    volatile unsigned int reserved_8:7;
    volatile unsigned int IE:1;
    volatile unsigned int PIPN:8;
    volatile unsigned int reserved_24:8;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP:32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_KRST0_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int RSTSTAT:2;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_KRST0_Bits;


typedef struct _Ifx_CPU_KRST1_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_KRST1_Bits;


typedef struct _Ifx_CPU_KRSTCLR_Bits
{
    volatile unsigned int CLR:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_KRSTCLR_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO:16;
    volatile unsigned int LCXS:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_LPB_SPROT_ACCENA_R_Bits
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
} Ifx_CPU_LPB_SPROT_ACCENA_R_Bits;


typedef struct _Ifx_CPU_LPB_SPROT_ACCENB_R_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_LPB_SPROT_ACCENB_R_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_OSEL_Bits
{
    volatile unsigned int SHOVEN_X:32;
} Ifx_CPU_OSEL_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int PC:31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int PCBYP:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV:1;
    volatile unsigned int PBINV:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE:16;
    volatile unsigned int PSCRATCH_SZE:16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO:16;
    volatile unsigned int PCXS:4;
    volatile unsigned int UL:1;
    volatile unsigned int PIE:1;
    volatile unsigned int PCPN:8;
    volatile unsigned int reserved_30:2;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA:32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED:1;
    volatile unsigned int IE_T:1;
    volatile unsigned int IE_C:1;
    volatile unsigned int IE_S:1;
    volatile unsigned int IE_BI:1;
    volatile unsigned int E_INFO:6;
    volatile unsigned int IE_UNC:1;
    volatile unsigned int IE_SP:1;
    volatile unsigned int IE_BS:1;
    volatile unsigned int IE_ADDR:1;
    volatile unsigned int IE_LPB:1;
    volatile unsigned int IE_MTMV:1;
    volatile unsigned int reserved_17:15;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int DAC:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int CAC:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE:1;
    volatile unsigned int reserved_1:1;
    volatile unsigned int FBE:1;
    volatile unsigned int reserved_3:9;
    volatile unsigned int FPE:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int FME:1;
    volatile unsigned int reserved_15:17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC:7;
    volatile unsigned int CDE:1;
    volatile unsigned int GW:1;
    volatile unsigned int IS:1;
    volatile unsigned int IO:2;
    volatile unsigned int PRS:2;
    volatile unsigned int S:1;
    volatile unsigned int PRS2:1;
    volatile unsigned int reserved_16:8;
    volatile unsigned int USB:8;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_RGN_ACCENA_Bits
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
} Ifx_CPU_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_RGN_ACCENB_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_RGN_LA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_RGN_LA_Bits;


typedef struct _Ifx_CPU_RGN_UA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_RGN_UA_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP:8;
    volatile unsigned int ADTYPE:2;
    volatile unsigned int reserved_10:21;
    volatile unsigned int AE:1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SFR_SPROT_ACCENA_W_Bits
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
} Ifx_CPU_SFR_SPROT_ACCENA_W_Bits;


typedef struct _Ifx_CPU_SFR_SPROT_ACCENB_W_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_SFR_SPROT_ACCENB_W_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int reserved_0:24;
    volatile unsigned int IODT:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPR_SPROT_RGNACCENA_R_Bits
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
} Ifx_CPU_SPR_SPROT_RGNACCENA_R_Bits;


typedef struct _Ifx_CPU_SPR_SPROT_RGNACCENB_R_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_SPR_SPROT_RGNACCENB_R_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF:1;
    volatile unsigned int PROTEN:1;
    volatile unsigned int TPROTEN:1;
    volatile unsigned int IS:1;
    volatile unsigned int TS:1;
    volatile unsigned int reserved_5:3;
    volatile unsigned int ESDIS:1;
    volatile unsigned int reserved_9:7;
    volatile unsigned int U1_IED:1;
    volatile unsigned int U1_IOS:1;
    volatile unsigned int reserved_18:6;
    volatile unsigned int BHALT:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI:5;
    volatile unsigned int reserved_5:27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0:1;
    volatile unsigned int TEXP1:1;
    volatile unsigned int TEXP2:1;
    volatile unsigned int reserved_3:13;
    volatile unsigned int TTRAP:1;
    volatile unsigned int reserved_17:15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_CLASS_EN_Bits
{
    volatile unsigned int EXTIM_CLASS_EN:8;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_TPS_EXTIM_CLASS_EN_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_ENTRY_CVAL_Bits
{
    volatile unsigned int ENTRY_CVAL:12;
    volatile unsigned int reserved_12:20;
} Ifx_CPU_TPS_EXTIM_ENTRY_CVAL_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_ENTRY_LVAL_Bits
{
    volatile unsigned int reserved_0:4;
    volatile unsigned int ENTRY_LVAL:8;
    volatile unsigned int reserved_12:20;
} Ifx_CPU_TPS_EXTIM_ENTRY_LVAL_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_EXIT_CVAL_Bits
{
    volatile unsigned int EXIT_CVAL:24;
    volatile unsigned int reserved_24:8;
} Ifx_CPU_TPS_EXTIM_EXIT_CVAL_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_EXIT_LVAL_Bits
{
    volatile unsigned int reserved_0:4;
    volatile unsigned int EXIT_LVAL:20;
    volatile unsigned int reserved_24:8;
} Ifx_CPU_TPS_EXTIM_EXIT_LVAL_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_FCX_Bits
{
    volatile unsigned int EXIT_FCX:20;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_TPS_EXTIM_FCX_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_STAT_Bits
{
    volatile unsigned int EXIT_TIN:8;
    volatile unsigned int EXIT_CLASS:3;
    volatile unsigned int reserved_11:4;
    volatile unsigned int EXIT_AT:1;
    volatile unsigned int ENTRY_TIN:8;
    volatile unsigned int ENTRY_CLASS:3;
    volatile unsigned int reserved_27:4;
    volatile unsigned int ENTRY_AT:1;
} Ifx_CPU_TPS_EXTIM_STAT_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int TIMER:32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0:1;
    volatile unsigned int T1:1;
    volatile unsigned int T2:1;
    volatile unsigned int T3:1;
    volatile unsigned int T4:1;
    volatile unsigned int T5:1;
    volatile unsigned int T6:1;
    volatile unsigned int T7:1;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_TRIG_ACC_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR:32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:4;
    volatile unsigned int TYP:1;
    volatile unsigned int RNG:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int ASI_EN:1;
    volatile unsigned int ASI:5;
    volatile unsigned int reserved_21:6;
    volatile unsigned int AST:1;
    volatile unsigned int ALD:1;
    volatile unsigned int reserved_29:3;
} Ifx_CPU_TR_EVT_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BLK_OMASK_Bits B;
} Ifx_CPU_BLK_OMASK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BLK_OTAR_Bits B;
} Ifx_CPU_BLK_OTAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BLK_RABR_Bits B;
} Ifx_CPU_BLK_RABR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNACCENA_R_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNACCENA_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNACCENA_W_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNACCENA_W;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNACCENB_R_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNACCENB_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNACCENB_W_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNACCENB_W;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNLA_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNLA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNUA_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNUA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON0_Bits B;
} Ifx_CPU_FLASHCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON1_Bits B;
} Ifx_CPU_FLASHCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON2_Bits B;
} Ifx_CPU_FLASHCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON3_Bits B;
} Ifx_CPU_FLASHCON3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON4_Bits B;
} Ifx_CPU_FLASHCON4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_KRST0_Bits B;
} Ifx_CPU_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_KRST1_Bits B;
} Ifx_CPU_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_KRSTCLR_Bits B;
} Ifx_CPU_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_LPB_SPROT_ACCENA_R_Bits B;
} Ifx_CPU_LPB_SPROT_ACCENA_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_LPB_SPROT_ACCENB_R_Bits B;
} Ifx_CPU_LPB_SPROT_ACCENB_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_OSEL_Bits B;
} Ifx_CPU_OSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_RGN_ACCENA_Bits B;
} Ifx_CPU_RGN_ACCENA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_RGN_ACCENB_Bits B;
} Ifx_CPU_RGN_ACCENB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_RGN_LA_Bits B;
} Ifx_CPU_RGN_LA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_RGN_UA_Bits B;
} Ifx_CPU_RGN_UA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SFR_SPROT_ACCENA_W_Bits B;
} Ifx_CPU_SFR_SPROT_ACCENA_W;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SFR_SPROT_ACCENB_W_Bits B;
} Ifx_CPU_SFR_SPROT_ACCENB_W;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SPR_SPROT_RGNACCENA_R_Bits B;
} Ifx_CPU_SPR_SPROT_RGNACCENA_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SPR_SPROT_RGNACCENB_R_Bits B;
} Ifx_CPU_SPR_SPROT_RGNACCENB_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_CLASS_EN_Bits B;
} Ifx_CPU_TPS_EXTIM_CLASS_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_ENTRY_CVAL_Bits B;
} Ifx_CPU_TPS_EXTIM_ENTRY_CVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_ENTRY_LVAL_Bits B;
} Ifx_CPU_TPS_EXTIM_ENTRY_LVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_EXIT_CVAL_Bits B;
} Ifx_CPU_TPS_EXTIM_EXIT_CVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_EXIT_LVAL_Bits B;
} Ifx_CPU_TPS_EXTIM_EXIT_LVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_FCX_Bits B;
} Ifx_CPU_TPS_EXTIM_FCX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_STAT_Bits B;
} Ifx_CPU_TPS_EXTIM_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;
# 2141 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_RGN
{
       Ifx_CPU_RGN_LA LA;
       Ifx_CPU_RGN_UA UA;
       Ifx_CPU_RGN_ACCENA ACCENA;
       Ifx_CPU_RGN_ACCENB ACCENB;
} Ifx_CPU_RGN;
# 2162 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_BLK
{
       Ifx_CPU_BLK_RABR RABR;
       Ifx_CPU_BLK_OTAR OTAR;
       Ifx_CPU_BLK_OMASK OMASK;
} Ifx_CPU_BLK;
# 2182 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_FPU_TRAP
{
       Ifx_CPU_FPU_TRAP_CON CON;
       Ifx_CPU_FPU_TRAP_PC PC;
       Ifx_CPU_FPU_TRAP_OPC OPC;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_CPU_FPU_TRAP_SRC1 SRC1;
       Ifx_CPU_FPU_TRAP_SRC2 SRC2;
       Ifx_CPU_FPU_TRAP_SRC3 SRC3;
} Ifx_CPU_FPU_TRAP;
# 2206 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_DPR
{
       Ifx_CPU_DPR_L L;
       Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;
# 2225 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
       Ifx_CPU_CPR_L L;
       Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;
# 2244 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_TPS
{
       Ifx_CPU_TPS_CON CON;
       Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;
# 2263 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_TPS_EXTIM
{
       Ifx_CPU_TPS_EXTIM_ENTRY_LVAL ENTRY_LVAL;
       Ifx_CPU_TPS_EXTIM_ENTRY_CVAL ENTRY_CVAL;
       Ifx_CPU_TPS_EXTIM_EXIT_LVAL EXIT_LVAL;
       Ifx_CPU_TPS_EXTIM_EXIT_CVAL EXIT_CVAL;
       Ifx_CPU_TPS_EXTIM_CLASS_EN CLASS_EN;
       Ifx_CPU_TPS_EXTIM_STAT STAT;
       Ifx_CPU_TPS_EXTIM_FCX FCX;
} Ifx_CPU_TPS_EXTIM;
# 2287 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_TR
{
       Ifx_CPU_TR_EVT EVT;
       Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 2306 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
       Ifx_UReg_8Bit reserved_0[4352];
       Ifx_CPU_FLASHCON0 FLASHCON0;
       Ifx_CPU_FLASHCON1 FLASHCON1;
       Ifx_CPU_FLASHCON2 FLASHCON2;
       Ifx_CPU_FLASHCON3 FLASHCON3;
       Ifx_CPU_FLASHCON4 FLASHCON4;
       Ifx_UReg_8Bit reserved_1114[48876];
       Ifx_CPU_KRST0 KRST0;
       Ifx_CPU_KRST1 KRST1;
       Ifx_CPU_KRSTCLR KRSTCLR;
       Ifx_UReg_8Bit reserved_D00C[4084];
       Ifx_CPU_RGN RGN[8];
       Ifx_UReg_8Bit reserved_E080[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R0;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R0;
       Ifx_UReg_8Bit reserved_E090[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R1;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R1;
       Ifx_UReg_8Bit reserved_E0A0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R2;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R2;
       Ifx_UReg_8Bit reserved_E0B0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R3;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R3;
       Ifx_UReg_8Bit reserved_E0C0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R4;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R4;
       Ifx_UReg_8Bit reserved_E0D0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R5;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R5;
       Ifx_UReg_8Bit reserved_E0E0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R6;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R6;
       Ifx_UReg_8Bit reserved_E0F0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R7;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R7;
       Ifx_CPU_SFR_SPROT_ACCENA_W SFR_SPROT_ACCENA_W;
       Ifx_CPU_SFR_SPROT_ACCENB_W SFR_SPROT_ACCENB_W;
       Ifx_UReg_8Bit reserved_E108[8];
       Ifx_CPU_LPB_SPROT_ACCENA_R LPB_SPROT_ACCENA_R;
       Ifx_CPU_LPB_SPROT_ACCENB_R LPB_SPROT_ACCENB_R;
       Ifx_UReg_8Bit reserved_E118[232];
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA0;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA0;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W0;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W0;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA1;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA1;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W1;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W1;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA2;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA2;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W2;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W2;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA3;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA3;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W3;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W3;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA4;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA4;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W4;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W4;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA5;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA5;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W5;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W5;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA6;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA6;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W6;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W6;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA7;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA7;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W7;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W7;
       Ifx_UReg_8Bit reserved_E280[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R0;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R0;
       Ifx_UReg_8Bit reserved_E290[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R1;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R1;
       Ifx_UReg_8Bit reserved_E2A0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R2;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R2;
       Ifx_UReg_8Bit reserved_E2B0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R3;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R3;
       Ifx_UReg_8Bit reserved_E2C0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R4;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R4;
       Ifx_UReg_8Bit reserved_E2D0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R5;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R5;
       Ifx_UReg_8Bit reserved_E2E0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R6;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R6;
       Ifx_UReg_8Bit reserved_E2F0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R7;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R7;
       Ifx_UReg_8Bit reserved_E300[6144];
       Ifx_CPU_OSEL OSEL;
       Ifx_UReg_8Bit reserved_FB04[12];
       Ifx_CPU_BLK BLK[32];
       Ifx_UReg_8Bit reserved_FC90[5024];
       Ifx_CPU_SEGEN SEGEN;
       Ifx_UReg_8Bit reserved_11034[28624];
       Ifx_CPU_TASK_ASI TASK_ASI;
       Ifx_UReg_8Bit reserved_18008[248];
       Ifx_CPU_PMA0 PMA0;
       Ifx_CPU_PMA1 PMA1;
       Ifx_CPU_PMA2 PMA2;
       Ifx_UReg_8Bit reserved_1810C[3828];
       Ifx_CPU_DCON2 DCON2;
       Ifx_UReg_8Bit reserved_19004[8];
       Ifx_CPU_SMACON SMACON;
       Ifx_CPU_DSTR DSTR;
       Ifx_UReg_8Bit reserved_19014[4];
       Ifx_CPU_DATR DATR;
       Ifx_CPU_DEADD DEADD;
       Ifx_CPU_DIEAR DIEAR;
       Ifx_CPU_DIETR DIETR;
       Ifx_UReg_8Bit reserved_19028[24];
       Ifx_CPU_DCON0 DCON0;
       Ifx_UReg_8Bit reserved_19044[444];
       Ifx_CPU_PSTR PSTR;
       Ifx_CPU_PCON1 PCON1;
       Ifx_CPU_PCON2 PCON2;
       Ifx_CPU_PCON0 PCON0;
       Ifx_CPU_PIEAR PIEAR;
       Ifx_CPU_PIETR PIETR;
       Ifx_UReg_8Bit reserved_19218[488];
       Ifx_CPU_COMPAT COMPAT;
       Ifx_UReg_8Bit reserved_19404[3068];
       Ifx_CPU_FPU_TRAP FPU_TRAP;
       Ifx_UReg_8Bit reserved_1A01C[8164];
       Ifx_CPU_DPR DPR[18];
       Ifx_UReg_8Bit reserved_1C090[3952];
       Ifx_CPU_CPR CPR[10];
       Ifx_UReg_8Bit reserved_1D050[4016];
       Ifx_CPU_CPXE CPXE_0;
       Ifx_CPU_CPXE CPXE_1;
       Ifx_CPU_CPXE CPXE_2;
       Ifx_CPU_CPXE CPXE_3;
       Ifx_CPU_DPRE DPRE_0;
       Ifx_CPU_DPRE DPRE_1;
       Ifx_CPU_DPRE DPRE_2;
       Ifx_CPU_DPRE DPRE_3;
       Ifx_CPU_DPWE DPWE_0;
       Ifx_CPU_DPWE DPWE_1;
       Ifx_CPU_DPWE DPWE_2;
       Ifx_CPU_DPWE DPWE_3;
       Ifx_UReg_8Bit reserved_1E030[16];
       Ifx_CPU_CPXE CPXE_4;
       Ifx_CPU_CPXE CPXE_5;
       Ifx_UReg_8Bit reserved_1E048[8];
       Ifx_CPU_DPRE DPRE_4;
       Ifx_CPU_DPRE DPRE_5;
       Ifx_UReg_8Bit reserved_1E058[8];
       Ifx_CPU_DPWE DPWE_4;
       Ifx_CPU_DPWE DPWE_5;
       Ifx_UReg_8Bit reserved_1E068[920];
       Ifx_CPU_TPS TPS;
       Ifx_UReg_8Bit reserved_1E410[48];
       Ifx_CPU_TPS_EXTIM TPS_EXTIM;
       Ifx_UReg_8Bit reserved_1E45C[2980];
       Ifx_CPU_TR TR[8];
       Ifx_UReg_8Bit reserved_1F040[3008];
       Ifx_CPU_CCTRL CCTRL;
       Ifx_CPU_CCNT CCNT;
       Ifx_CPU_ICNT ICNT;
       Ifx_CPU_M1CNT M1CNT;
       Ifx_CPU_M2CNT M2CNT;
       Ifx_CPU_M3CNT M3CNT;
       Ifx_UReg_8Bit reserved_1FC18[232];
       Ifx_CPU_DBGSR DBGSR;
       Ifx_UReg_8Bit reserved_1FD04[4];
       Ifx_CPU_EXEVT EXEVT;
       Ifx_CPU_CREVT CREVT;
       Ifx_CPU_SWEVT SWEVT;
       Ifx_UReg_8Bit reserved_1FD14[28];
       Ifx_CPU_TRIG_ACC TRIG_ACC;
       Ifx_UReg_8Bit reserved_1FD34[12];
       Ifx_CPU_DMS DMS;
       Ifx_CPU_DCX DCX;
       Ifx_CPU_DBGTCR DBGTCR;
       Ifx_UReg_8Bit reserved_1FD4C[180];
       Ifx_CPU_PCXI PCXI;
       Ifx_CPU_PSW PSW;
       Ifx_CPU_PC PC;
       Ifx_UReg_8Bit reserved_1FE0C[8];
       Ifx_CPU_SYSCON SYSCON;
       Ifx_CPU_CPU_ID CPU_ID;
       Ifx_CPU_CORE_ID CORE_ID;
       Ifx_CPU_BIV BIV;
       Ifx_CPU_BTV BTV;
       Ifx_CPU_ISP ISP;
       Ifx_CPU_ICR ICR;
       Ifx_UReg_8Bit reserved_1FE30[8];
       Ifx_CPU_FCX FCX;
       Ifx_CPU_LCX LCX;
       Ifx_UReg_8Bit reserved_1FE40[16];
       Ifx_CPU_CUS_ID CUS_ID;
       Ifx_UReg_8Bit reserved_1FE54[172];
       Ifx_CPU_D D[16];
       Ifx_UReg_8Bit reserved_1FF40[64];
       Ifx_CPU_A A[16];
       Ifx_UReg_8Bit reserved_1FFC0[64];
} Ifx_CPU;
# 66 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_reg.h" 2
# 2 ".\\output\\inc/IfxCpu_reg.h" 2
# 85 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2
# 421 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
typedef enum
{
  SPI_SYNC_COMMS = 1,
  SPI_ASYNC_COMMS,
  SPI_BOTH
} SpiCommsTypes;
# 534 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
typedef struct
{

  Spi_StatusType SyncStatus;



  uint32 KernelLock;
# 550 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  Spi_SeqResultType* SeqStatus;


  Spi_JobResultType* JobStatus;


  const Spi_DataBufferType* TxBuffer;


  const Spi_DataBufferType* RxBuffer;


  Spi_BufferType *ChannelBufPointers;
} Spi_RunTimeCoreConfigType;
# 589 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 637 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 590 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2

static uint8 Spi_lGetChannelDataWidth(
        const Spi_ChannelConfigType* const ChnlConfigPtr);
static void Spi_lClearMem(uint8 *const BufferPtr, const uint32 BufferSize);
# 627 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static void Spi_lCoreInit(const uint32 CoreId);
static void Spi_lInitIBBuffer(void);
static uint8 Spi_lGetTotalIBChannelsInCore(const uint32 CoreId);
# 762 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lCheckInitStatus(const uint8 ApiId,
    const uint8 DetRaise);


static Std_ReturnType Spi_lIsStatusBusy(const SpiCommsTypes CheckCommsType);




static Std_ReturnType Spi_lIsQSPIHwConfiguredSync(const uint8 HwModule);



static Std_ReturnType Spi_lIsQSPIHwConfigured(const uint8 HwModule);




static void Spi_lQSPIHwResetInit(const uint8 ModIndex);



static void Spi_lQSPIHwInit(const uint8 ModIndex);
# 797 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lSyncTransmitData32Bit
(
  const Spi_ChannelType ChannelId,
  const Spi_JobConfigType* const JobConfigPtr,
  const uint8 IsFirstChnl,
  const uint8 IsLastChnl
);
static Std_ReturnType Spi_lSyncTransmitData16Bit
(
  const Spi_ChannelType ChannelId,
  const Spi_JobConfigType* const JobConfigPtr,
  const uint8 IsFirstChnl,
  const uint8 IsLastChnl
);
static Std_ReturnType Spi_lSyncTransmitData8Bit
(
  const Spi_ChannelType ChannelId,
  const Spi_JobConfigType* const JobConfigPtr,
  const uint8 IsFirstChnl,
  const uint8 IsLastChnl
);



static Std_ReturnType Spi_lSyncTransmit(const Spi_SequenceType Sequence);


static Std_ReturnType Spi_lSyncStartJob(const Spi_JobType JobId);




static Std_ReturnType Spi_lSynTransErrCheck(const Ifx_QSPI* ModulePtr);






static Ifx_QSPI_BACON Spi_lHwSetChannelConfig
(
  const Spi_ChannelType SpiChId,
  const Spi_JobConfigType* const JobConfigPtr,
  const uint8 ToggleCs
);



static void Spi_lHwSetJobConfig
(
  const Spi_JobConfigType* const JobConfigPtr,
  const uint8 IsAsynchronous
);


static void Spi_lSetCsViaGpio(const uint8 Port, const uint8 Pin,
                              const uint8 Level);
# 872 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 649 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 873 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2
# 884 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section "ClearedData.LmuNC.32bit" aw 4
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 885 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2

static Spi_RunTimeCoreConfigType *Spi_RuntimeCoreVar[(0x4U)];






static const Spi_ConfigType *Spi_kGlobalConfigPtr;





# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 62 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 900 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2
# 918 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section "ClearedData.Cpu0.32bit" aw 4
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 919 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2


static Spi_RunTimeCoreConfigType Spi_RuntimeCore0Var;



static Spi_BufferType Spi_BufferCore0[(0U) +
                                                    (3U)];
# 940 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Spi_SeqResultType Spi_SequenceStatusCore0[3U];

static Spi_JobResultType Spi_JobStatusCore0[3U];
# 959 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 960 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2
# 3115 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 637 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 3116 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2
# 3720 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
void Spi_Init(const Spi_ConfigType* const ConfigPtr)
{
  uint32 CoreId = 0;
  const Spi_CoreConfigType *CoreConfigPtr = ((void *)0);
  uint8 HwMap = 0;
# 3736 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  {



    CoreId = Mcal_GetCpuIndex();

    Spi_kGlobalConfigPtr = ConfigPtr;

    CoreConfigPtr = Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];




    Spi_lCoreInit(CoreId);

    for(HwMap = 0; HwMap < (5U); HwMap++)
    {



      if(Spi_lIsQSPIHwConfigured(HwMap) == (uint8)0x00u)
      {
# 3767 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
        Mcal_WritePeripEndInitProtReg((uint32*)&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HwMap].CLC.U,CoreConfigPtr->QSPIHwConfigPtr[HwMap]->ClockSetting)

                                                                ;



        Spi_lQSPIHwResetInit(HwMap);





        Spi_lQSPIHwInit(HwMap);
# 3795 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
      }
    }



    if(Spi_lGetTotalIBChannelsInCore(CoreId) != 0U)
    {
      Spi_lInitIBBuffer();
    }
# 3818 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    Spi_RuntimeCoreVar[CoreId]->SyncStatus = SPI_IDLE;
# 3833 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  }
}
# 3857 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
Std_ReturnType Spi_DeInit(void)
{
  Std_ReturnType RetVal = 0x00u;



  uint8 LoopIndex = 0U;




  uint32 CoreId = Mcal_GetCpuIndex();
  SpiCommsTypes temp;

  uint8 ClearGlobalPtr = 1;
# 3886 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  {




    temp = SPI_BOTH;


    RetVal = Spi_lIsStatusBusy(temp);
    if(RetVal == (uint8)0x01u)
    {


      Spi_RuntimeCoreVar[CoreId]->SyncStatus = SPI_UNINIT;
# 3917 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
      for(LoopIndex = 0U; LoopIndex < (uint8)(5U); LoopIndex++)
      {



        if(Spi_lIsQSPIHwConfigured(LoopIndex) == (uint8)0x00u)
        {
# 3934 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
          Spi_lQSPIHwResetInit(LoopIndex);







          Mcal_WritePeripEndInitProtReg((uint32*)&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[LoopIndex].CLC.U,(0x00000001U))

                                        ;





        }
      }


      Spi_RuntimeCoreVar[CoreId] = ((void *)0);

      for(LoopIndex = 0U; LoopIndex < (uint8)(0x4U); LoopIndex++)
      {

        if(Spi_RuntimeCoreVar[LoopIndex] != ((void *)0))
        {
          ClearGlobalPtr = 0U;
        }
      }


      if(ClearGlobalPtr == 1U)
      {
        Spi_kGlobalConfigPtr = ((void *)0);
      }





      RetVal = 0x00u;
    }
    else
    {



      RetVal = 0x01u;
    }
  }
  return RetVal;
}
# 4223 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
Std_ReturnType Spi_SyncTransmit(const Spi_SequenceType Sequence)
{



  Std_ReturnType RetVal = 0x01u;
  uint32 CoreId = Mcal_GetCpuIndex();
  const Spi_CoreConfigType *CoreConfigPtr;
  uint8 PhysicalSeqId = 0;
  uint8 temp;
# 4248 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  PhysicalSeqId = Spi_kGlobalConfigPtr->SequenceLookup[Sequence];




  {
    CoreConfigPtr = Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];
    temp = CoreConfigPtr->SequenceConfigPtr[PhysicalSeqId].HwModuleUsed;





    SchM_Enter_Spi_SyncLock();
# 4275 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    if(((Spi_RuntimeCoreVar[CoreId]->KernelLock & (temp)) == (uint8)0)
        && (Spi_RuntimeCoreVar[CoreId]->SyncStatus != SPI_BUSY))




    {



      Spi_RuntimeCoreVar[CoreId]->KernelLock |= (temp);



      Spi_RuntimeCoreVar[CoreId]->SyncStatus = SPI_BUSY;




      SchM_Exit_Spi_SyncLock();







      RetVal = Spi_lSyncTransmit(PhysicalSeqId);




      SchM_Enter_Spi_SyncLock();
      Spi_RuntimeCoreVar[CoreId]->KernelLock &= (uint8)(~(temp));
      if(Spi_RuntimeCoreVar[CoreId]->KernelLock == (uint8)0U)
      {
        Spi_RuntimeCoreVar[CoreId]->SyncStatus = SPI_IDLE;
      }

      SchM_Exit_Spi_SyncLock();
    }

    else
    {



      SchM_Exit_Spi_SyncLock();
# 4334 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    }

  }



  return RetVal;
}
# 4565 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static uint8 Spi_lGetChannelDataWidth(
    const Spi_ChannelConfigType* const ChnlConfigPtr)
{
  uint8 SizeofElement = 0;





  if(((ChnlConfigPtr->DataConfig) & (uint8)(0x0000007FU))
      > ((uint8)16U))
  {
    SizeofElement = 4U;
  }

  else if(((ChnlConfigPtr->DataConfig) & (uint8)(0x0000007FU))
          > ((uint8)8U))
  {
    SizeofElement = 2U;
  }
  else

  {

    SizeofElement = 1U;
  }


  return SizeofElement;
}
# 4891 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
Std_ReturnType Spi_SetupEB
(
    const Spi_ChannelType Channel,
    const Spi_DataBufferType* const SrcDataBufferPtr,
    const Spi_DataBufferType* const DesDataBufferPtr,
    const Spi_NumberOfDataType Length
)
{
  Std_ReturnType RetVal = 0x01u;


  uint32 CoreId = Mcal_GetCpuIndex();
  uint8 ChannelId = 0;
# 4950 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  ChannelId = Spi_kGlobalConfigPtr->ChannelLookup[Channel];

  {

    Spi_RuntimeCoreVar[CoreId]->
    ChannelBufPointers[ChannelId].SrcPtr = SrcDataBufferPtr;
    Spi_RuntimeCoreVar[CoreId]->
    ChannelBufPointers[ChannelId].DestPtr = DesDataBufferPtr;
    Spi_RuntimeCoreVar[CoreId]->
    ChannelBufPointers[ChannelId].TransferLength = Length;




    RetVal = 0x00u;
  }



  return RetVal;
}
# 5000 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
Spi_JobResultType Spi_GetJobResult(const Spi_JobType Job)
{
  Spi_JobResultType JobResult = SPI_JOB_FAILED;


  uint32 CoreId = Mcal_GetCpuIndex();
# 5061 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  {
    JobResult =
      Spi_RuntimeCoreVar[CoreId]->JobStatus
      [Spi_kGlobalConfigPtr->JobLookup[Job]];
  }






  return JobResult;
}
# 5098 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
Spi_SeqResultType Spi_GetSequenceResult(const Spi_SequenceType Sequence)
{
  Spi_SeqResultType SeqResult = SPI_SEQ_FAILED;



  uint32 CoreId = Mcal_GetCpuIndex();
  uint8 SeqIndex = 0;
# 5129 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  SeqIndex = Spi_kGlobalConfigPtr->SequenceLookup[Sequence];

  {



    SeqResult = Spi_RuntimeCoreVar[CoreId]->SeqStatus[SeqIndex];
  }
  return SeqResult;
}
# 5166 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
Spi_StatusType Spi_GetStatus(void)
{
  Spi_StatusType RetVal = SPI_UNINIT;
  SpiCommsTypes temp = SPI_BOTH;
# 5181 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  if(Spi_lCheckInitStatus(((uint8)0x06U), (uint8)(0U)) ==
      (uint8)0x00u)

  {



    if(Spi_lIsStatusBusy(temp) == 0x00u)
    {






      RetVal = SPI_BUSY;
    }
    else
    {






      RetVal = SPI_IDLE;
    }
  }



  return RetVal;
}
# 5244 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
Spi_StatusType Spi_GetHWUnitStatus(const Spi_HWUnitType HWUnit)
{
  Spi_StatusType RetVal = SPI_UNINIT;
  uint8 HwIdle = 0U;

  uint32 CoreId = Mcal_GetCpuIndex();
# 5258 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  {




    if(HWUnit < (uint8)(5U))
    {
      if(Spi_lIsQSPIHwConfigured(HWUnit) == (uint8)0x00u)
      {


        if (Spi_lIsQSPIHwConfiguredSync(HWUnit) == 0x00u)
        {

          if((Spi_RuntimeCoreVar[CoreId]->KernelLock &
                                 (1UL << (uint32)HWUnit)) == 0U)
          {
            HwIdle = 1U;
          }
        }
# 5290 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
        if (HwIdle == 1U)
        {
          RetVal = SPI_IDLE;
        }
        else
        {
          RetVal = SPI_BUSY;
        }
      }
      else
      {
# 5314 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
      }
    }
    else
    {







    }
  }



  return RetVal;
}
# 5484 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
Std_ReturnType Spi_ControlLoopBack(const Spi_HWUnitType HWUnit,
                                         const Spi_LoopBackType EnableOrDisable)
{
  Std_ReturnType RetVal = 0x01u;

  uint32 CoreId = Mcal_GetCpuIndex();

  uint8 HwIdle = 0U;

  Ifx_QSPI_GLOBALCON GlobalConReg;




  {



    if ((EnableOrDisable == SPI_LOOPBACK_ENABLE) ||
                 (EnableOrDisable == SPI_LOOPBACK_DISABLE))
    {



      if(HWUnit < (uint8)(5U))
      {


        if (Spi_lIsQSPIHwConfiguredSync(HWUnit) == 0x00u)
        {
          if((Spi_RuntimeCoreVar[CoreId]->KernelLock &
                               (1UL << (uint32)HWUnit)) == 0U)
            {
              HwIdle = 1U;
            }
        }
# 5532 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
        if (HwIdle == 1U)
        {




          GlobalConReg.U = ((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HWUnit].GLOBALCON.U;
          if (EnableOrDisable == SPI_LOOPBACK_ENABLE)
          {
              GlobalConReg.U = (GlobalConReg.U |
                        (1UL << (uint32)(14u)));
          }
          else
          {
              GlobalConReg.U = (GlobalConReg.U &
                     ~(1UL << (uint32)(14u)));
          }







          (*(&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HWUnit]. GLOBALCON.U) = (uint32)(GlobalConReg.U))
                                                        ;
          RetVal = 0x00u;
        }
      }
      else
      {
# 5573 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
      }
    }
    else
    {
# 5586 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    }
  }

  return RetVal;
}
# 6605 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lCheckInitStatus(const uint8 ApiId,
    const uint8 DetRaise)
{
  Std_ReturnType RetVal = 0x00u;




  uint32 CoreId = Mcal_GetCpuIndex();



  if((ApiId == ((uint8)0x00U)))
  {


    if((Spi_RuntimeCoreVar[CoreId] != ((void *)0)))
    {
      RetVal = 0x01u;
    }
  }
  else
  {


    if((Spi_RuntimeCoreVar[CoreId] != ((void *)0)))
    {




      if(Spi_RuntimeCoreVar[CoreId]->SyncStatus == SPI_UNINIT)
      {
        RetVal = 0x01u;
      }
# 6664 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    }
    else
    {
      RetVal = 0x01u;
    }
# 6684 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    (void)(ApiId);
    (void)(DetRaise);

  }
  return RetVal;
}
# 6710 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static void Spi_lCoreInit(const uint32 CoreId)
{




  switch(CoreId)
  {
    case (0U):


      Spi_RuntimeCoreVar[CoreId] = &Spi_RuntimeCore0Var;
      Spi_RuntimeCoreVar[CoreId]->KernelLock = 0;
      Spi_RuntimeCoreVar[CoreId]->ChannelBufPointers = Spi_BufferCore0;
      Spi_lClearMem((uint8*)Spi_BufferCore0, sizeof(Spi_BufferCore0));






      Spi_RuntimeCoreVar[CoreId]->TxBuffer = ((void *)0);
      Spi_RuntimeCoreVar[CoreId]->RxBuffer = ((void *)0);

      Spi_RuntimeCoreVar[CoreId]->SeqStatus = Spi_SequenceStatusCore0;
      Spi_RuntimeCoreVar[CoreId]->JobStatus = Spi_JobStatusCore0;
      Spi_lClearMem((uint8*)Spi_SequenceStatusCore0,
                                 sizeof(Spi_SequenceStatusCore0));
      Spi_lClearMem((uint8*)Spi_JobStatusCore0, sizeof(Spi_JobStatusCore0));


      break;

    case (1U):
# 6766 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
      break;

    case (2U):
# 6791 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
      break;

    case (3U):
# 6816 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
      break;

    case (4U):
# 6841 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
      break;
# 6870 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    default:
      break;
  }
}
# 6894 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static uint8 Spi_lGetTotalIBChannelsInCore(const uint32 CoreId)
{
  uint8 TotalIbChannels = 0;

  switch(CoreId)
  {

    case (0U):
      TotalIbChannels = (0U);
      break;
# 6943 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    default:

      break;
  }
  return TotalIbChannels;
}
# 7242 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lIsQSPIHwConfiguredSync(const uint8 HwModule)
{

  Std_ReturnType RetVal = 0x01u;
  Spi_QSPIHwMapConfigType HWType = 0;
  const Spi_CoreConfigType *CoreConfigPtr =
    Spi_kGlobalConfigPtr->CoreConfigPtr[Mcal_GetCpuIndex()];
  HWType = (CoreConfigPtr->QSPIHwMap);
  HWType = HWType >> ((Spi_QSPIHwMapConfigType)HwModule *
                  (Spi_QSPIHwMapConfigType)(0x03U));



  HWType = HWType & (Spi_QSPIHwMapConfigType)(0x03U);


  if((Spi_QSPIHwMapConfigType)(0x01U) == HWType)
  {
    RetVal = 0x00u;
  }

  return RetVal;
}
# 7287 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lIsQSPIHwConfigured(const uint8 HwModule)
{
  Std_ReturnType RetVal = 0x01u;




  if(Spi_lIsQSPIHwConfiguredSync(HwModule) == (uint8)0x00u)
# 7308 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    {
      RetVal = 0x00u;
    }
  return RetVal;
}
# 7333 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static void Spi_lClearMem(uint8 *const BufferPtr, const uint32 BufferSize)
{


  uint32 LoopCount;
  for(LoopCount = 0; LoopCount < BufferSize; LoopCount++)
  {
    BufferPtr[LoopCount] = 0x00U;
  }
}
# 7397 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static void Spi_lQSPIHwResetInit(const uint8 ModIndex)
{
  uint8 LoopIndex;
# 7410 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  (*(&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[ModIndex].PISEL.U) = (uint32)((0x00000000U)))
                                     ;







  (*(&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[ModIndex].GLOBALCON.U) = (uint32)((0x000F30FFU)))
                                         ;







  (*(&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[ModIndex].GLOBALCON1.U) = (uint32)((0x00050000U)))
                                     ;

  for(LoopIndex = 0U; LoopIndex < (8U); LoopIndex++)
  {






    (*(&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[ModIndex].ECON[LoopIndex].U) = (uint32)((0x00001450U)))
                                          ;
  }
# 7450 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  (*(&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[ModIndex]. SSOC.U) = (uint32)((0x00000000U)))
                                                                 ;




  ((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[ModIndex].FLAGSCLEAR.U = (0x00009FFFU);

}
# 7480 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static void Spi_lQSPIHwInit(const uint8 ModIndex)
{
  const Spi_CoreConfigType *CoreConfigPtr =
    Spi_kGlobalConfigPtr->CoreConfigPtr[Mcal_GetCpuIndex()];
# 7492 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  (*(&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[ModIndex]. PISEL.U) = (uint32)(((0x7u) & (uint32)(CoreConfigPtr-> QSPIHwConfigPtr[ModIndex]->MasterReceivePortPin))))

                                                                  ;
# 7503 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  (*(&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[ModIndex].SSOC.U) = (uint32)((CoreConfigPtr->QSPIHwConfigPtr[ModIndex]->ActiveChipSelectLevel)))
                                                                    ;

}
# 7586 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static void Spi_lInitIBBuffer(void)
{

  const Spi_ChannelConfigType *ChnlConfigPtr;
  uint8 ChannelIndex;
  uint32 CoreId = Mcal_GetCpuIndex();
  const Spi_CoreConfigType *CoreConfigPtr =
    Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];
  const Spi_DataBufferType *TxPtr =
    Spi_RuntimeCoreVar[CoreId]->TxBuffer;
  const Spi_DataBufferType *RxPtr =
    Spi_RuntimeCoreVar[CoreId]->RxBuffer;
  uint16 ChOffset = 0;



  for(ChannelIndex = 0U; ChannelIndex < CoreConfigPtr->NoOfChannels;
      ChannelIndex++)
  {

    ChnlConfigPtr = &(CoreConfigPtr->ChannelConfigPtr[ChannelIndex]);

    ChOffset = CoreConfigPtr->ChannelOffsetInfo[ChannelIndex].ChannelOffset;



    if(ChnlConfigPtr->ChannelType == (1U))
    {

      Spi_RuntimeCoreVar[CoreId]->
      ChannelBufPointers[ChannelIndex].SrcPtr =
        &TxPtr[ChOffset];

      Spi_RuntimeCoreVar[CoreId]->
      ChannelBufPointers[ChannelIndex].DestPtr =
        &RxPtr[ChOffset];


      Spi_RuntimeCoreVar[CoreId]->
      ChannelBufPointers[ChannelIndex].TransferLength =
        ChnlConfigPtr->NoOfDataElements;
    }
  }
}
# 7652 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lIsStatusBusy(const SpiCommsTypes CheckCommsType)
{
  Std_ReturnType RetVal = 0x01u;
  uint8 LoopIndex = 0U;



  uint32 CoreId = Mcal_GetCpuIndex();





  for(LoopIndex = 0U; LoopIndex < (5U); LoopIndex++)
  {


    if(Spi_lIsQSPIHwConfigured(LoopIndex) == 0x00u)
    {






      if((CheckCommsType == SPI_SYNC_COMMS) ||
          (CheckCommsType == SPI_BOTH))
      {




        if(Spi_lIsQSPIHwConfiguredSync(LoopIndex) == 0x00u)
        {

          if(Spi_RuntimeCoreVar[CoreId]->SyncStatus ==
              SPI_BUSY)
          {

            RetVal = 0x00u;
          }
        }
      }
    }
# 7719 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    if(RetVal == 0x00u)
    {
      break;
    }
  }



  return RetVal;

}
# 7840 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lSyncTransmit(const Spi_SequenceType Sequence)
{
  const Spi_SequenceConfigType* SeqConfigPtr;
  Spi_JobType JobId, JobIndex;
  Std_ReturnType RetVal = 0x01u;


  uint32 CoreId = Mcal_GetCpuIndex();
  const Spi_CoreConfigType *CoreConfigPtr =
    Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];




  Spi_RuntimeCoreVar[CoreId]->SeqStatus[Sequence] = SPI_SEQ_PENDING;


  SeqConfigPtr = &CoreConfigPtr->SequenceConfigPtr[Sequence];


  JobIndex = 0U;
  JobId = SeqConfigPtr->JobLinkPtrPhysical[JobIndex];





  do
  {






    RetVal = Spi_lSyncStartJob(JobId);




    if(Spi_RuntimeCoreVar[CoreId]->JobStatus[JobId] == SPI_JOB_FAILED)
    {



      Spi_RuntimeCoreVar[CoreId]->SeqStatus[Sequence] = SPI_SEQ_FAILED;




      while(JobId != ((uint16)0xFFFFU))
      {

        Spi_RuntimeCoreVar[CoreId]->JobStatus[JobId] = SPI_JOB_FAILED;
        JobIndex++;
        JobId = SeqConfigPtr->JobLinkPtrPhysical[JobIndex];
      }
    }
    else
    {

      JobIndex++;
      JobId = SeqConfigPtr->JobLinkPtrPhysical[JobIndex];
    }
# 7929 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  } while(JobId != ((uint16)0xFFFFU));






  if(Spi_RuntimeCoreVar[CoreId]->SeqStatus[Sequence] == SPI_SEQ_PENDING)
  {
    Spi_RuntimeCoreVar[CoreId]->SeqStatus[Sequence] = SPI_SEQ_OK;
  }
  return RetVal;
}
# 7966 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lSyncStartJob(const Spi_JobType JobId)
{
  const Spi_JobConfigType* JobConfigPtr;
  Spi_ChannelType ChannelId;
  Std_ReturnType ChnlTxErr = 0x00u;
  uint8 ChannelIndex = 0U;
  uint8 IsFirstChnl = 1U;
  uint8 IsLastChnl = 0U;
  uint8 DataWidth = 0;
  uint8 HwId;
  uint8 CsPolarity;


  uint32 CoreId = Mcal_GetCpuIndex();
  const Spi_CoreConfigType *CoreConfigPtr =
    Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];
  const Spi_ChannelConfigType* ChannelConfigPtr;

  Ifx_QSPI_GLOBALCON GlobalConReg;
  const Ifx_QSPI* ModulePtr;
  uint8 port;

  Ifx_QSPI_BACON lBacon;





  JobConfigPtr = &CoreConfigPtr->JobConfigPtr[JobId];
  uint8 ToggleCs = JobConfigPtr->FramebasedCs;


  Spi_RuntimeCoreVar[CoreId]->JobStatus[JobId] = SPI_JOB_PENDING;


  Spi_lHwSetJobConfig(JobConfigPtr, (0U));


  ChannelId = JobConfigPtr->ChnlLinkPtrPhysical[ChannelIndex];

  HwId = JobConfigPtr->HwUnit & ((uint8)0x0FU);




  ModulePtr = &(((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HwId]);





  do
  {

    if(JobConfigPtr->ChnlLinkPtrPhysical[ChannelIndex + 1U] ==
        ((uint8)0xFFU))
    {
      IsLastChnl = 1U;
    }


    lBacon = Spi_lHwSetChannelConfig(ChannelId, JobConfigPtr, ToggleCs);






    ((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HwId].BACONENTRY.U = lBacon.U;

    ChannelConfigPtr =
      &CoreConfigPtr->ChannelConfigPtr[ChannelId];

    DataWidth = Spi_lGetChannelDataWidth(ChannelConfigPtr);
# 8048 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
    if(DataWidth == 1U)
    {
      ChnlTxErr = Spi_lSyncTransmitData8Bit( ChannelId, JobConfigPtr,
                                             IsFirstChnl, IsLastChnl);
    }



    else if(DataWidth == 2U)
    {
      ChnlTxErr = Spi_lSyncTransmitData16Bit( ChannelId, JobConfigPtr,
                                              IsFirstChnl, IsLastChnl);

    }
    else
    {
      ChnlTxErr = Spi_lSyncTransmitData32Bit( ChannelId, JobConfigPtr,
                                              IsFirstChnl, IsLastChnl);
    }

    IsFirstChnl = 0U;




    if((IsLastChnl == 1U) || (ChnlTxErr == 0x01u))
    {


        while(ModulePtr->STATUS.B.PHASE != 0U)
        {


          uint32 u32Sts = (ModulePtr->STATUS.U & (0x0000007FU));
          if(u32Sts != 0U)
          {
            break;
          }
        }


      if(JobConfigPtr->CSPortPin != (0xFFFFU))
      {



        if(JobConfigPtr->CsPolarity == (uint8)0x00u)
        {
          CsPolarity = (uint8)0x00u ;
        }
        else
        {
          CsPolarity = (uint8)0x01u;
        }

        port = (uint8)((JobConfigPtr->CSPortPin) >>
                       (uint16)(4U));
        Spi_lSetCsViaGpio(port,
                    (uint8)((JobConfigPtr->CSPortPin) & (0x0000000FU)),
                     CsPolarity);
      }
    }




    if(ChnlTxErr == (uint8)0x00u)
    {





      ChannelIndex++;
      ChannelId = JobConfigPtr->ChnlLinkPtrPhysical[ChannelIndex];
    }
    else
    {
# 8134 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
      Spi_RuntimeCoreVar[CoreId]->JobStatus[JobId] = SPI_JOB_FAILED;





      GlobalConReg.U = ((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HwId].GLOBALCON.U;
      GlobalConReg.B.RESETS = 1;






      (*(&((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HwId]. GLOBALCON.U) = (uint32)(GlobalConReg.U))
                                                                        ;

      ChannelId = ((uint8)0xFFU);
    }
  } while(ChannelId != ((uint8)0xFFU));




  if(Spi_RuntimeCoreVar[CoreId]->JobStatus[JobId] == SPI_JOB_PENDING)
  {

    Spi_RuntimeCoreVar[CoreId]->JobStatus[JobId] = SPI_JOB_OK;
  }
  return ChnlTxErr;
}
# 8240 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static void Spi_lHwSetJobConfig
(
  const Spi_JobConfigType *const JobConfigPtr,
  const uint8 IsAsynchronous
)
{
  Ifx_QSPI* ModulePtr;

  Ifx_QSPI_GLOBALCON GlobalConReg;

  Ifx_QSPI_GLOBALCON1 GlobalCon1Reg;

  Ifx_QSPI_ECON EconReg;
  uint8 HwChannelno;
  uint8 HwUnitNum;
  uint32 Strobe;
  uint32 LBbitstatus;
  const Spi_CoreConfigType *CoreConfigPtr = ((void *)0);





  uint32 CoreId = Mcal_GetCpuIndex();

  CoreConfigPtr = Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];





  ModulePtr = &(((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[JobConfigPtr->HwUnit & ((uint8)0x0FU)]);
  HwUnitNum = (JobConfigPtr->HwUnit & ((uint8)0x0FU));
  HwChannelno = JobConfigPtr->HwUnit >> (4U);

  GlobalConReg.U = ((JobConfigPtr->BaudRateAndClockParam >>
                   (16U)) & (0x0000FFFFU));




  LBbitstatus = (ModulePtr->GLOBALCON.U &
                        (1UL << (uint32)(14u)));
  GlobalConReg.U |= (0x21003C00U);
  GlobalConReg.U |= LBbitstatus;




  if ((CoreConfigPtr->QSPIHwConfigPtr[HwUnitNum]->ExternalDemuxEnabled) == 1U)
  {
      Strobe = CoreConfigPtr->QSPIHwConfigPtr[HwUnitNum]->StrobeDelay;

      GlobalConReg.U |= (0x00008000U);

      GlobalConReg.U |= (Strobe << (uint32)(0x10U));
  }
  GlobalCon1Reg.U = (0x1700007FU);




  (void)(IsAsynchronous);
# 8352 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  EconReg.U = (JobConfigPtr->BaudRateAndClockParam & (0x0000FFFFU));







  (*(&ModulePtr->GLOBALCON.U) = (uint32)(GlobalConReg.U));
# 8370 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
  (*(&ModulePtr->GLOBALCON1.U) = (uint32)(GlobalCon1Reg.U))
                                                        ;






  (*(&ModulePtr->ECON[HwChannelno & (0x7U)].U) = (uint32)(EconReg.U))
                                                                               ;

  ModulePtr->FLAGSCLEAR.U = ((0x00000FFFU));
}
# 8410 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Ifx_QSPI_BACON Spi_lHwSetChannelConfig
(
  const Spi_ChannelType SpiChId,
  const Spi_JobConfigType* const JobConfigPtr,
  const uint8 ToggleCs
)
{

  Ifx_QSPI_BACON BaconReg;
  Ifx_QSPI* ModulePtr;


  uint32 CoreId = Mcal_GetCpuIndex();
  const Spi_CoreConfigType *CoreConfigPtr =
    Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];
  const Spi_ChannelConfigType* ChannelConfigPtr =
    &CoreConfigPtr->ChannelConfigPtr[SpiChId];




  ModulePtr = &(((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[JobConfigPtr->HwUnit & ((uint8)0x0FU)]);


  ModulePtr->FLAGSCLEAR.U = (0x00000FFFU);



  BaconReg.U = JobConfigPtr->IdleLeadTrailDelay;
  BaconReg.B.PARTYP = JobConfigPtr->ParitySupport;



  BaconReg.B.CS = JobConfigPtr->HwUnit >> (4U);


  BaconReg.B.MSB = (ChannelConfigPtr->DataConfig) >>
                               (7U);




  BaconReg.B.DL = ((ChannelConfigPtr->DataConfig) &
                   (uint8)(0x0000007FU)) - 1U;



  BaconReg.B.LAST = ToggleCs;

  BaconReg.B.BYTE = 0U;
  BaconReg.B.UINT = 1U;

  return BaconReg;
}
# 8497 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lSyncTransmitData8Bit
(
  const Spi_ChannelType ChannelId,
  const Spi_JobConfigType* const JobConfigPtr,
  const uint8 IsFirstChnl,
  const uint8 IsLastChnl
)
{
  Ifx_QSPI* ModulePtr;
  const uint8* Src8BitPtr = ((void *)0);
  uint8* Dest8BitPtr = ((void *)0);
  uint8 CsPolarity = 0;
  Spi_NumberOfDataType TransferCount;
  Std_ReturnType RetVal = 0x00u;
  uint8 HwId;
  uint8 SrcBufferNull = 0U;
  uint8 DestBufferNull = 0U;
  uint8 port;
  uint32 SyncDummyRead;

  Ifx_QSPI_BACON lBacon;


  uint32 CoreId = Mcal_GetCpuIndex();
  const Spi_CoreConfigType *CoreConfigPtr =
    Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];
  const Spi_ChannelConfigType* ChannelConfigPtr =
    &CoreConfigPtr->ChannelConfigPtr[ChannelId];
  HwId = JobConfigPtr->HwUnit & ((uint8)0x0FU);


  Src8BitPtr = Spi_RuntimeCoreVar[CoreId]->
               ChannelBufPointers[ChannelId].SrcPtr;


  Dest8BitPtr = (uint8*)Spi_RuntimeCoreVar[CoreId]->
                ChannelBufPointers[ChannelId].DestPtr;




  if(Dest8BitPtr == ((void *)0))
  {


    Dest8BitPtr = (uint8*)&SyncDummyRead;
    DestBufferNull = 1U;
  }



  if(Src8BitPtr == ((void *)0))
  {
    Src8BitPtr = (const uint8*)&ChannelConfigPtr->Defaultdata;
    SrcBufferNull = 1U;
  }



  TransferCount = Spi_RuntimeCoreVar[CoreId]->
                  ChannelBufPointers[ChannelId].TransferLength;





  ModulePtr = &(((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HwId]);





  if((JobConfigPtr->CSPortPin != (0xFFFFU)) && (IsFirstChnl == 1U))
  {
    if(JobConfigPtr->CsPolarity == (uint8)0x00u)
    {
      CsPolarity = (uint8)0x01u ;
    }
    else
    {
      CsPolarity = (uint8)0x00u;
    }
    port = (uint8)(((JobConfigPtr->CSPortPin) >> (uint16)(4U)));
    Spi_lSetCsViaGpio(port, (uint8)((JobConfigPtr->CSPortPin) &
                                    (0x0000000FU)), (CsPolarity));
  }


  do
  {





    if(TransferCount == 1U)
    {
      if(IsLastChnl == 1U)
      {
        lBacon = Spi_lHwSetChannelConfig(ChannelId, JobConfigPtr, 1U);
        ModulePtr->BACONENTRY.U = lBacon.U;
      }
    }

    ModulePtr->FLAGSCLEAR.U = (((uint32)1U << (10u)) |
                               ((uint32)1U << (9u)));


    ModulePtr->DATAENTRY[(0x00U)].U = (uint32) * Src8BitPtr;






    if(SrcBufferNull == 0U)
    {
      Src8BitPtr++;
    }






    RetVal = Spi_lSynTransErrCheck(ModulePtr);
    if(RetVal == (uint8)0x00u)
    {

      *Dest8BitPtr = (uint8)ModulePtr->RXEXIT.U;






      if(DestBufferNull == 0U)
      {
        Dest8BitPtr++;
      }

      TransferCount--;
    }
    else
    {

      break;
    }


  } while(TransferCount > 0U);


  return RetVal;
}
# 8684 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lSyncTransmitData16Bit
(
  const Spi_ChannelType ChannelId,
  const Spi_JobConfigType* const JobConfigPtr,
  const uint8 IsFirstChnl,
  const uint8 IsLastChnl
)
{
  Ifx_QSPI* ModulePtr;
  const uint16* Src16BitPtr = ((void *)0);
  uint16* Dest16BitPtr = ((void *)0);
  uint8 CsPolarity = 0;
  Spi_NumberOfDataType TransferCount;
  Std_ReturnType RetVal = 0x00u;
  uint8 HwId;
  uint8 SrcBufferNull = 0U;
  uint8 DestBufferNull = 0U;
  uint8 port;
  uint32 SyncDummyRead;

  Ifx_QSPI_BACON lBacon;


  uint32 CoreId = Mcal_GetCpuIndex();
  const Spi_CoreConfigType *CoreConfigPtr =
    Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];
  const Spi_ChannelConfigType* ChannelConfigPtr =
    &CoreConfigPtr->ChannelConfigPtr[ChannelId];
  HwId = JobConfigPtr->HwUnit & ((uint8)0x0FU);




  Src16BitPtr = (const uint16*)Spi_RuntimeCoreVar[CoreId]->
                ChannelBufPointers[ChannelId].SrcPtr;




  Dest16BitPtr = (uint16*)Spi_RuntimeCoreVar[CoreId]->
                 ChannelBufPointers[ChannelId].DestPtr;




  if(Dest16BitPtr == ((void *)0))
  {




    Dest16BitPtr = (uint16*)&SyncDummyRead;
    DestBufferNull = 1U;
  }




  if(Src16BitPtr == ((void *)0))
  {




    Src16BitPtr = (const uint16*)&ChannelConfigPtr->Defaultdata;
    SrcBufferNull = 1U;
  }



  TransferCount = Spi_RuntimeCoreVar[CoreId]->
                  ChannelBufPointers[ChannelId].TransferLength;





  ModulePtr = &(((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HwId]);





  if((JobConfigPtr->CSPortPin != (0xFFFFU)) && (IsFirstChnl == 1U))
  {
    if(JobConfigPtr->CsPolarity == (uint8)0x00u)
    {
      CsPolarity = (uint8)0x01u ;
    }
    else
    {
      CsPolarity = (uint8)0x00u;
    }

    port = (uint8)(((JobConfigPtr->CSPortPin) >> (uint16)(4U)));
    Spi_lSetCsViaGpio(port, (uint8)((JobConfigPtr->CSPortPin) &
                                    (0x0000000FU)), (CsPolarity));
  }


  do
  {






    if(TransferCount == 1U)
    {
      if(IsLastChnl == 1U)
      {
        lBacon = Spi_lHwSetChannelConfig(ChannelId, JobConfigPtr, 1U);
        ModulePtr->BACONENTRY.U = lBacon.U;
      }
    }

    ModulePtr->FLAGSCLEAR.U = (((uint32)1U << (10u)) |
                               ((uint32)1U << (9u)));


    ModulePtr->DATAENTRY[(0x00U)].U = (uint32) * Src16BitPtr;






    if(SrcBufferNull == 0U)
    {
      Src16BitPtr++;
    }






    RetVal = Spi_lSynTransErrCheck(ModulePtr);
    if(RetVal == (uint8)0x00u)
    {
      *Dest16BitPtr = (uint16)ModulePtr->RXEXIT.U;






      if(DestBufferNull == 0U)
      {
        Dest16BitPtr++;
      }

      TransferCount--;
    }
    else
    {

      break;
    }


  } while(TransferCount > 0U);


  return RetVal;
}
# 8883 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lSyncTransmitData32Bit
(
  const Spi_ChannelType ChannelId,
  const Spi_JobConfigType* const JobConfigPtr,
  const uint8 IsFirstChnl,
  const uint8 IsLastChnl
)
{
  Ifx_QSPI* ModulePtr;
  const uint32* Src32BitPtr = ((void *)0);
  uint32* Dest32BitPtr = ((void *)0);
  uint8 CsPolarity = 0;

  Spi_NumberOfDataType TransferCount;
  Std_ReturnType RetVal = 0x00u;
  uint8 HwId;
  uint8 SrcBufferNull = 0U;
  uint8 DestBufferNull = 0U;
  uint8 port;
  uint32 SyncDummyRead;

  Ifx_QSPI_BACON lBacon;


  uint32 CoreId = Mcal_GetCpuIndex();
  const Spi_CoreConfigType *CoreConfigPtr =
    Spi_kGlobalConfigPtr->CoreConfigPtr[CoreId];
  const Spi_ChannelConfigType* ChannelConfigPtr =
    &CoreConfigPtr->ChannelConfigPtr[ChannelId];
  HwId = JobConfigPtr->HwUnit & ((uint8)0x0FU);



  Src32BitPtr = (const uint32*)Spi_RuntimeCoreVar[CoreId]->
                ChannelBufPointers[ChannelId].SrcPtr;




  Dest32BitPtr = (uint32*)Spi_RuntimeCoreVar[CoreId]->
                 ChannelBufPointers[ChannelId].DestPtr;





  if(Dest32BitPtr == ((void *)0))
  {


    Dest32BitPtr = (uint32*)&SyncDummyRead;
    DestBufferNull = 1U;
  }




  if(Src32BitPtr == ((void *)0))
  {
    Src32BitPtr = (const uint32*)&ChannelConfigPtr->Defaultdata;
    SrcBufferNull = 1U;
  }


  TransferCount = Spi_RuntimeCoreVar[CoreId]->
                  ChannelBufPointers[ChannelId].TransferLength;





  ModulePtr = &(((volatile Ifx_QSPI*)(volatile void*)&(((*(Ifx_QSPI*)0xF0001C00u))))[HwId]);





  if((JobConfigPtr->CSPortPin != (0xFFFFU)) && (IsFirstChnl == 1U))
  {
    if(JobConfigPtr->CsPolarity == (uint8)0x00u)
    {
      CsPolarity = (uint8)0x01u ;
    }
    else
    {
      CsPolarity = (uint8)0x00u;
    }
    port = (uint8)(((JobConfigPtr->CSPortPin) >> (uint16)(4U)));
    Spi_lSetCsViaGpio(port, (uint8)((JobConfigPtr->CSPortPin) &
                                    (0x0000000FU)), (CsPolarity));
  }


  do
  {





    if(TransferCount == 1U)
    {
      if(IsLastChnl == 1U)
      {
        lBacon = Spi_lHwSetChannelConfig(ChannelId, JobConfigPtr, 1U);
        ModulePtr->BACONENTRY.U = lBacon.U;
      }
    }

    ModulePtr->FLAGSCLEAR.U = (((uint32)1U << (10u)) |
                               ((uint32)1U << (9u)));

    ModulePtr->DATAENTRY[(0x00U)].U = (uint32) * Src32BitPtr;






    if(SrcBufferNull == 0U)
    {
      Src32BitPtr++;
    }






    RetVal = Spi_lSynTransErrCheck(ModulePtr);
    if(RetVal == (uint8)0x00u)
    {
      *Dest32BitPtr = (uint32)ModulePtr->RXEXIT.U;






      if(DestBufferNull == 0U)
      {
        Dest32BitPtr++;
      }

      TransferCount--;
    }
    else
    {

      break;
    }


  } while(TransferCount > 0U);


  return RetVal;
}
# 9066 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static Std_ReturnType Spi_lSynTransErrCheck(const Ifx_QSPI* const ModulePtr)
{
  uint32 LoopCounter = Spi_kGlobalConfigPtr->SyncTimeout;
  Std_ReturnType RetVal = 0x00u;




  while(((ModulePtr->STATUS.U & (0x00380200U)) != (0x00080200U))
        && (LoopCounter != 0U))
  {



    if((ModulePtr->STATUS.U & (0x0000007FU)) != 0U)
    {

      RetVal = 0x01u;
      break;
    }
    LoopCounter--;
  }




  if(((ModulePtr->STATUS.U & (0x0000007FU)) != 0U) || (LoopCounter == 0U))
  {

    RetVal = 0x01u;
  }


  return RetVal;
}
# 9125 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
static void Spi_lSetCsViaGpio(const uint8 Port,
                              const uint8 Pin, const uint8 Level)
{
  uint32 PortOmrVal;




  PortOmrVal = (uint32)(((uint8)16U)) * Level;
  PortOmrVal += Pin;
  PortOmrVal = (uint32)1U << PortOmrVal;





  ((volatile Ifx_P*)(volatile void*)&(((*(Ifx_P*)0xF003A000u))))[Port].OMR.U = PortOmrVal;
}
# 10819 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
# 1 ".\\output\\inc/Spi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h" 1
# 649 ".\\output\\inc/..\\..\\Integration\\mcal\\Spi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Spi_MemMap.h" 2
# 10820 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c" 2
