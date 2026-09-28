# 1 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
# 42 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
# 1 ".\\output\\inc/Port.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 1
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
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
# 46 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
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
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2

# 1 ".\\output\\inc/Port_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_Cfg.h" 1
# 2 ".\\output\\inc/Port_Cfg.h" 2
# 49 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2
# 164 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
typedef uint16 Port_PinType;




typedef enum
{
  PORT_PIN_IN = 0x00U,
  PORT_PIN_OUT = 0x80U
} Port_PinDirectionType;




typedef uint8 Port_PinModeType;





typedef struct
{

  uint8 PC0;
  uint8 PC1;
  uint8 PC2;
  uint8 PC3;
  uint8 PC4;
  uint8 PC5;
  uint8 PC6;
  uint8 PC7;
  uint8 PC8;
  uint8 PC9;
  uint8 PC10;
  uint8 PC11;
  uint8 PC12;
  uint8 PC13;
  uint8 PC14;
  uint8 PC15;

} Port_n_ControlType;



typedef struct
{

  unsigned_int P0 : 1;
  unsigned_int P1 : 1;
  unsigned_int P2 : 1;
  unsigned_int P3 : 1;
  unsigned_int P4 : 1;
  unsigned_int P5 : 1;
  unsigned_int P6 : 1;
  unsigned_int P7 : 1;
  unsigned_int P8 : 1;
  unsigned_int P9 : 1;
  unsigned_int P10 : 1;
  unsigned_int P11 : 1;
  unsigned_int P12 : 1;
  unsigned_int P13 : 1;
  unsigned_int P14 : 1;
  unsigned_int P15 : 1;
  unsigned_int reserved: 16;

} Port_n_PinType;







typedef struct
{

  uint8 U[(16U)];

} Port_n_ModeType;






typedef struct
{

  Port_n_ControlType PinControl;

  Port_n_PinType PinLevel;

  uint32 DriverStrength0;

  uint32 DriverStrength1;



  Port_n_PinType ModeChangeControl;




  Port_n_PinType DirChangeControl;


  Port_n_ControlType PinControl2;

  Port_n_PinType EmergencyStopConf;
} Port_n_ConfigType;





typedef struct
{
  uint32 LPCR0;

  uint32 LPCR1;


  uint32 LPCR2;


  uint32 LPCR3;


  uint32 LPCR4;


  uint32 LPCR5;


  uint32 LPCR6;




} Port_n_LVDSConfigType;



typedef uint32 Port_n_PCSRConfigType;






typedef struct
{

  const Port_n_ConfigType* PortConfigSetPtr;

  const uint32* PDiscSet;
# 328 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
  const Port_n_LVDSConfigType* Port_LVDSConfigTypePtr;
  const Port_n_PCSRConfigType* Port_PCSRConfigTypePtr;
} Port_ConfigType;
# 348 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 271 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 349 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2
# 379 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
extern void Port_Init
(
  const Port_ConfigType * ConfigPtr
);
# 418 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
extern void Port_SetPinDirection
(
  const Port_PinType Pin,
  const Port_PinDirectionType Direction
);
# 452 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
extern void Port_RefreshPortDirection(void);
# 528 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
extern void Port_SetPinMode
(
  const Port_PinType Pin,
  const Port_PinModeType Mode
);
# 579 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 283 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 580 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2

# 1 ".\\output\\inc/Port_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_PBcfg.h" 1
# 50 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_PBcfg.h"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 236 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 51 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_PBcfg.h" 2

extern const Port_ConfigType Port_Config;




# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 249 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_PBcfg.h" 2
# 2 ".\\output\\inc/Port_PBcfg.h" 2
# 582 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2
# 2 ".\\output\\inc/Port.h" 2
# 43 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c" 2
# 116 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 236 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 117 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c" 2
# 350 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
static const Port_n_ConfigType Port_kConfiguration[] =
{

  {
    {




    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 431 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12)| ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 442 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x01U) ,
      (0x01U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {


    ((0x10U)),
    ((0x10U)),
    ((0x10U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      0U,
      0U,
      0U,
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U))) )
# 612 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U))) )
# 623 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {


      ((0x10U)),
      ((0x10U)),
      ((0x10U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x40U) | (0x28U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x01U),
      (0x01U),
      (0x00U),
      (0x01U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 791 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12)| ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 802 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x40U) | (0x28U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_OUT | (0x00U) | (0x18U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x18U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x18U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x30U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x01U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 978 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 989 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_OUT | (0x00U) | (0x18U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x18U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x18U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x30U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x08U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 1173 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12)| ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 1184 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x08U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12) | ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 1354 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U))) )
# 1365 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 1511 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U))) )
# 1522 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 1686 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 1697 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x01U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x18U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x01U),
      (0x00U),
      (0x01U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 1871 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 1882 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x18U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x20U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      (0x01U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 2060 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12)| ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 2071 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x20U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x28U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 2247 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U))) )
# 2258 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 2432 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12)| ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 2443 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 2617 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U))) )
# 2628 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 2794 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U))) )
# 2805 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 2987 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12)| ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 2998 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x01U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),


((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x38U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {


    ((0x10U)),


    ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U)),
    ((0x10U))

    },
    {

      0U,
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U,
      0U
    },

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U))) )
# 3174 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U))) << (uint32)24) | ((uint32)(((0x0U))) << (uint32)20) | ((uint32)(((0x0U))) << (uint32)16) | ((uint32)(((0x0U))) << (uint32)12)| ((uint32)(((0x0U))) << (uint32)8) | ((uint32)(((0x0U))) << (uint32)4) | (uint32)(((0x0U))) )
# 3185 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {


      ((0x10U)),


      ((uint8)PORT_PIN_IN | (0x10U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_OUT | (0x00U) | (0x08U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },

  {
    {




    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


    ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),
    ((0x10U))

    },
    {

      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U,
      0U
    },

    ( ((uint32)(((0x0U)|(0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12) | ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 3359 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,

    ( ((uint32)(((0x0U))) << (uint32)28) | ((uint32)(((0x0U)|(0x0U))) << (uint32)24) | ((uint32)(((0x0U)|(0x0U))) << (uint32)20) | ((uint32)(((0x0U)|(0x0U))) << (uint32)16) | ((uint32)(((0x0U)|(0x0U))) << (uint32)12)| ((uint32)(((0x0U)|(0x0U))) << (uint32)8) | ((uint32)(((0x0U)|(0x0U))) << (uint32)4) | (uint32)(((0x0U)|(0x0U))) )
# 3370 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                   ,
    {
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    (0x00U),
    0U

    },
    {
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U) ,
      (0x00U)

    },
    {




      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),


      ((uint8)PORT_PIN_IN | (0x00U) | (0x00U)),
      ((0x10U))
    },
    {
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      (0x00U),
      0U

    }
  },
};

static const uint32 Port_DiscSet[] =
{

  ((uint16)( (uint32)((0x0U)) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U))<< (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3503 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
   ,

  ((uint16)( (uint32)((0x0U)) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U))<< (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3522 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
   ,

  ((uint16)( (uint32)((0x0U)) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U))<< (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3541 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
   ,

  ((uint16)( (uint32)((0x0U)) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U))<< (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3560 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
   ,

  ((uint16)( (uint32)((0x0U)) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U))<< (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3579 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
   ,

  ((uint16)( (uint32)((0x0U)) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U))<< (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3598 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
   ,

};


static const Port_n_LVDSConfigType Port_kLVDSConfig[] =
{

  {

    ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)6) |((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) |((uint32)((0x1U)) << (uint32)10) | ((uint32)((0x1U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13)| ((uint32)((0x1U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3622 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
       ,

    ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)6) |((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) |((uint32)((0x1U)) << (uint32)10) | ((uint32)((0x1U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13)| ((uint32)((0x1U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3638 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
       ,

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U)
  },
  {

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U),

    ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x1U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)6) |((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) |((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13)| ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3676 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
       ,

      (0xFFFF0000U)
  },
  {

    ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x1U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)6) |((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) |((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13)| ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3696 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
       ,

    ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x1U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)6) |((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) |((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13)| ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3712 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
       ,

    ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)6) |((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) |((uint32)((0x1U)) << (uint32)10) | ((uint32)((0x1U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13)| ((uint32)((0x1U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3728 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
       ,

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U)
  },
  {

    ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)6) |((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) |((uint32)((0x1U)) << (uint32)10) | ((uint32)((0x1U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13)| ((uint32)((0x1U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3754 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
       ,

    ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)6) |((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) |((uint32)((0x1U)) << (uint32)10) | ((uint32)((0x1U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13)| ((uint32)((0x1U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3770 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
       ,

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U),

      (0xFFFF0000U)
  }
};

static const Port_n_PCSRConfigType Port_kPCSRConfig[] =
{

  ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3804 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                 ,

  ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3823 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                 ,

  ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3842 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                 ,

  ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3861 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
                 ,

  ((uint32)( ((uint32)((0x0U))) | ((uint32)((0x0U)) << (uint32)1) | ((uint32)((0x0U)) << (uint32)2) | ((uint32)((0x0U)) << (uint32)3) | ((uint32)((0x0U)) << (uint32)4) | ((uint32)((0x0U)) << (uint32)5) | ((uint32)((0x0U)) << (uint32)6) | ((uint32)((0x0U)) << (uint32)7) | ((uint32)((0x0U)) << (uint32)8) | ((uint32)((0x0U)) << (uint32)9) | ((uint32)((0x0U)) << (uint32)10) | ((uint32)((0x0U)) << (uint32)11) | ((uint32)((0x0U)) << (uint32)12) | ((uint32)((0x0U)) << (uint32)13) | ((uint32)((0x0U)) << (uint32)14) | ((uint32)((0x0U)) << (uint32)15) ))
# 3881 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c"
};




const Port_ConfigType Port_Config =
{


  &Port_kConfiguration[0],

  &Port_DiscSet[0],

  &Port_kLVDSConfig[0],

  &Port_kPCSRConfig[0]
};






# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 249 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 3905 "Targets\\TC38xx\\MCAL\\MCAL_Gen\\src\\Port_PBcfg.c" 2
