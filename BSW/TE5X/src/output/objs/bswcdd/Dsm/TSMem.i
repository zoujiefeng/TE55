# 1 "bswcdd\\Dsm\\TSMem.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\Dsm\\TSMem.c"
# 71 "bswcdd\\Dsm\\TSMem.c"
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
# 72 "bswcdd\\Dsm\\TSMem.c" 2
# 1 ".\\output\\inc/TSMem.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h" 1
# 20 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h" 2
# 101 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 102 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h" 2
# 118 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern void TS_MemCpy32
(
 void * const dst,
 const void * const src,
 const uint32 len
);
# 132 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern void TS_MemSet32
(
  void * const dst,
  const uint8 val,
  const uint32 len
);







extern void TS_MemBZero32
(
  void * const dst,
  const uint32 len
);
# 166 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern Std_ReturnType TS_MemCmp32
(
  const void * const a,
  const void * const b,
  const uint32 len
);
# 332 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern void TS_MemMove
(
  void * const dst,
  const void * const src,
  const uint32 len
);
# 353 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern void TS_MemCpy32_NoCheck
(
 void * const dst,
 const void * const src,
 const uint32 len
);
# 369 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern void TS_MemSet32_NoCheck
(
  void * const dst,
  const uint8 val,
  const uint32 len
);
# 384 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern void TS_MemBZero32_NoCheck
(
  void * const dst,
  const uint32 len
);
# 407 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern Std_ReturnType TS_MemCmp32_NoCheck
(
  const void * const a,
  const void * const b,
  const uint32 len
);
# 428 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern void TS_MemCpy16_NoCheck
(
  void * const dst,
  const void * const src,
  const uint32 len
);
# 444 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern void TS_MemSet16_NoCheck
(
  void * const dst,
  const uint8 val,
  const uint32 len
);
# 459 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern void TS_MemBZero16_NoCheck
(
  void * const dst,
  const uint32 len
);
# 482 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h"
extern Std_ReturnType TS_MemCmp16_NoCheck
(
  const void * const a,
  const void * const b,
  const uint32 len
);


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 491 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\TSMem.h" 2
# 2 ".\\output\\inc/TSMem.h" 2
# 73 "bswcdd\\Dsm\\TSMem.c" 2
# 222 "bswcdd\\Dsm\\TSMem.c"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 223 "bswcdd\\Dsm\\TSMem.c" 2






void TS_MemCpy32
(
  void * const dst,
  const void * const src,
  const uint32 len
)
{
# 274 "bswcdd\\Dsm\\TSMem.c"
}



void TS_MemSet32
(
  void * const dst,
  const uint8 val,
  const uint32 len
)
{
# 328 "bswcdd\\Dsm\\TSMem.c"
}



void TS_MemBZero32
(
  void * const dst,
  const uint32 len
)
{
# 374 "bswcdd\\Dsm\\TSMem.c"
}


Std_ReturnType TS_MemCmp32
(
  const void * const a,
  const void * const b,
  const uint32 len
)
{
# 431 "bswcdd\\Dsm\\TSMem.c"
}
# 663 "bswcdd\\Dsm\\TSMem.c"
void TS_MemMove
(
  void * const dst,
  const void * const src,
  const uint32 len
)
{

  uint8 * dst2 =
    (uint8 *) dst;
  const uint8 * src2 =
    (const uint8 *) src;
  uint32 len2 = len;



  if (src2 > dst2)
  {
    for (len2 = len; len2 != 0U; len2--)
    {
      *dst2 = *src2;

      dst2++;
      src2++;
    }
  }



  else if (src2 < dst2)
  {

    dst2 += len2 - 1U;
    src2 += len2 - 1U;

    for (len2 = len; len2 != 0U; len2--)
    {
      *dst2 = *src2;

      dst2--;
      src2--;
    }
  }


  else
  {

  }
}
# 928 "bswcdd\\Dsm\\TSMem.c"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 929 "bswcdd\\Dsm\\TSMem.c" 2
