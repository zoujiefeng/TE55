# 1 "bswcdd\\HARD\\MATH_SC.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\HARD\\MATH_SC.c"
# 40 "bswcdd\\HARD\\MATH_SC.c"
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
# 41 "bswcdd\\HARD\\MATH_SC.c" 2

# 1 "bswcdd\\HARD\\MATH_SC.h" 1
# 38 "bswcdd\\HARD\\MATH_SC.h"
# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 69 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section ".text" ax
# 39 "bswcdd\\HARD\\MATH_SC.h" 2

extern uint16 MathCalcBkptU8(const uint8 *tabPtr, uint8 value, uint8 nbBkptNM1);
extern uint16 MathCalcBkptU16(const uint16 *tabPtr, uint16 value, uint8 nbBkptNM1);
extern uint8 MathInterp1dU8(const uint8 *tabPtr, uint16 siteInterp);
extern sint8 MathInterp1dS8(const sint8 *tabPtr, uint16 siteInterp);
extern uint16 MathInterp1dU16(const uint16 *tabPtr, uint16 siteInterp);
extern sint16 MathInterp1dS16(const sint16 *tabPtr, uint16 siteInterp);
extern uint16 MathInterp2dU16 (const uint16 *tabPtr, uint16 siteInterpY, uint16 siteInterpX, uint8 nbBkptX);
extern void MathScalingU16(uint16 *output, uint16 input, sint16 offset, sint16 factor, uint16 shift);
extern void MathScalingS16(sint16 *output, sint16 input, sint16 offset, sint16 factor, uint16 shift);
extern void MathScalingUnsignedOffsetU16(uint16 *output, uint16 input, uint16 offset, sint16 factor, uint16 shift);


# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 95 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section
# 53 "bswcdd\\HARD\\MATH_SC.h" 2
# 43 "bswcdd\\HARD\\MATH_SC.c" 2


# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 69 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section ".text" ax
# 46 "bswcdd\\HARD\\MATH_SC.c" 2
# 60 "bswcdd\\HARD\\MATH_SC.c"
uint16 MathCalcBkptU8(const uint8 *tabPtr, uint8 value, uint8 nbBkptNM1)
{
   uint16 localPivot;
   uint16 localSite;
   uint16 localInterp;
   uint16 localTabPtrSite;
   uint16 localNbBkptNM1;

   if (value >= tabPtr[nbBkptNM1])
   {
      return((uint16)nbBkptNM1 << 8);
   }
   if (value < tabPtr[0])
   {
      return(0);
   }
   localSite = 0;
   localNbBkptNM1 = (uint16)nbBkptNM1;
   while (localNbBkptNM1 > 2)
   {
      localPivot = localSite + (localNbBkptNM1 >> 1);
      if (value < tabPtr[localPivot])
      {
         localNbBkptNM1 = localPivot - localSite;
      }
      else
      {
         localNbBkptNM1 = localSite + localNbBkptNM1 - localPivot;
         localSite = localPivot;
      }
   }
   if (value >= tabPtr[localSite + 1])
   {
      localSite++;
   }

   localTabPtrSite = tabPtr[localSite];
   localPivot = value - localTabPtrSite;
   localPivot = localPivot << 8;
   localInterp = tabPtr[localSite + 1] - localTabPtrSite;
   localInterp = localPivot / localInterp;
   localSite = localSite << 8;
   localInterp = localSite + localInterp;
   return(localInterp);
}
# 115 "bswcdd\\HARD\\MATH_SC.c"
uint16 MathCalcBkptU16(const uint16 *tabPtr, uint16 value, uint8 nbBkptNM1)
{
   uint32 localPivot;
   uint32 localSite;
   uint32 localInterp;
   uint32 localTabPtrSite;
   uint32 localNbBkptNM1;

   if (value >= tabPtr[nbBkptNM1])
   {
      return(nbBkptNM1 << 8);
   }
   if (value < tabPtr[0])
   {
      return(0);
   }
   localSite = 0;
   localNbBkptNM1 = (uint32)nbBkptNM1;
   while (localNbBkptNM1 > 2)
   {
      localPivot = localSite + (localNbBkptNM1 >> 1);
      if (value < tabPtr[localPivot])
      {
         localNbBkptNM1 = localPivot - localSite;
      }
      else
      {
         localNbBkptNM1 = localSite + localNbBkptNM1 - localPivot;
         localSite = localPivot;
      }
   }
   if (value >= tabPtr[localSite + 1])
   {
      localSite++;
   }

   localTabPtrSite = tabPtr[localSite];
   localPivot = value - localTabPtrSite;
   localPivot = localPivot << 8;
   localInterp = tabPtr[localSite + 1] - localTabPtrSite;
   localInterp = localPivot / localInterp;
   localSite = localSite << 8;
   localInterp = localSite + localInterp;
   return((uint16)localInterp);
}
# 170 "bswcdd\\HARD\\MATH_SC.c"
uint8 MathInterp1dU8(const uint8 *tabPtr, uint16 siteInterp)
{
   sint16 localSw;
   uint8 localUb;

   localSw = siteInterp;
   localSw = localSw >> 8;
   tabPtr = tabPtr + localSw;
   localSw = *(tabPtr + 1);
   localUb = *tabPtr;
   localSw = localSw - localUb;
   siteInterp = siteInterp & 0x00FF;
   localSw = localSw * siteInterp;
   localSw = localSw + 0x80;
   localSw = localSw >> 8;
   localSw = localSw + localUb;
   return((uint8)localSw);
}
# 198 "bswcdd\\HARD\\MATH_SC.c"
sint8 MathInterp1dS8(const sint8 *tabPtr, uint16 siteInterp)
{
   sint16 localSw;
   sint8 localSb;

   localSw = siteInterp;
   localSw = localSw >> 8;
   tabPtr = tabPtr + localSw;
   localSw = *(tabPtr + 1);
   localSb = *tabPtr;
   localSw = localSw - localSb;
   siteInterp = siteInterp & 0x00FF;
   localSw = localSw * siteInterp;
   localSw = localSw + 0x80;
   localSw = localSw >> 8;
   localSw = localSw + localSb;
   return((sint8)localSw);
}
# 226 "bswcdd\\HARD\\MATH_SC.c"
uint16 MathInterp1dU16(const uint16 *tabPtr, uint16 siteInterp)
{
   sint32 localS4;
   uint16 localUw;

   localS4 = siteInterp;
   localS4 = localS4 >> 8;
   tabPtr = tabPtr + localS4;
   localS4 = *(tabPtr + 1);
   localUw = *tabPtr;
   localS4 = localS4 - localUw;
   siteInterp = siteInterp & 0x00FF;
   localS4 = localS4 * siteInterp;
   localS4 = localS4 + 0x80;
   localS4 = localS4 >> 8;
   localS4 = localS4 + localUw;
   return((uint16)localS4);
}
# 254 "bswcdd\\HARD\\MATH_SC.c"
sint16 MathInterp1dS16(const sint16 *tabPtr, uint16 siteInterp)
{
   sint32 localS4;
   sint16 localSw;

   localS4 = siteInterp;
   localS4 = localS4 >> 8;
   tabPtr = tabPtr + localS4;
   localS4 = *(tabPtr + 1);
   localSw = *tabPtr;
   localS4 = localS4 - localSw;
   siteInterp = siteInterp & 0x00FF;
   localS4 = localS4 * siteInterp;
   localS4 = localS4 + 0x80;
   localS4 = localS4 >> 8;
   localS4 = localS4 + localSw;
   return((sint16)localS4);
}
# 282 "bswcdd\\HARD\\MATH_SC.c"
uint16 MathInterp2dU16 (const uint16 *tabPtr, uint16 siteInterpY, uint16 siteInterpX, uint8 nbBkptX)
{
   uint16 localSiteY;
   uint16 localInterpY;
   uint16 localValue1;
   uint16 localValue2;
   sint32 localValue;

   localSiteY = (siteInterpY >> 8);
   localInterpY = (siteInterpY & 0x00FF);

   localValue1 = MathInterp1dU16 (&tabPtr[(localSiteY * nbBkptX)], siteInterpX);
   localValue2 = MathInterp1dU16 (&tabPtr[((localSiteY + 1) * nbBkptX)], siteInterpX);

   localValue = (((sint32)localValue2 - localValue1) * localInterpY) + 0x80;
   localValue = (localValue / 256);

   return (localValue1 + (sint16)localValue);
}
# 311 "bswcdd\\HARD\\MATH_SC.c"
void MathScalingU16(uint16 *output, uint16 input, sint16 offset, sint16 factor, uint16 shift)
{
   uint16 localOutput;

   localOutput =(sint16) (((sint32)input * factor) >> shift);
   *output=localOutput + offset;
   if (offset >= 0)
   {
      if (*output < localOutput)
      {
         *output = 0xFFFF;
      }
   }
   else
   {
      if (*output > localOutput)
      {
         *output = 0;
      }
   }
}
# 342 "bswcdd\\HARD\\MATH_SC.c"
void MathScalingS16(sint16 *output, sint16 input, sint16 offset, sint16 factor, uint16 shift)
{
   sint16 localOutput;

   localOutput =(sint16) (((sint32)input * factor) >> shift);
   *output=localOutput + offset;
   if (offset >= 0)
   {
      if (*output < localOutput)
      {
         *output = 0x7FFF;
      }
   }
   else
   {
      if (*output > localOutput)
      {
         *output = 0x8000;
      }
   }
}
# 373 "bswcdd\\HARD\\MATH_SC.c"
void MathScalingUnsignedOffsetU16(uint16 *output, uint16 input, uint16 offset, sint16 factor, uint16 shift)
{
   sint16 localOutput;

   localOutput =(sint16) (((sint32)input * factor) >> shift);
   *output=localOutput + offset;
}


# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 95 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section
# 383 "bswcdd\\HARD\\MATH_SC.c" 2
