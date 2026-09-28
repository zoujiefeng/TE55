# 1 "bswcdd\\HARD\\MATH_TRI.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\HARD\\MATH_TRI.c"
# 41 "bswcdd\\HARD\\MATH_TRI.c"
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
# 42 "bswcdd\\HARD\\MATH_TRI.c" 2

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
# 44 "bswcdd\\HARD\\MATH_TRI.c" 2
# 1 "bswcdd\\HARD\\MATH_TRI.h" 1
# 34 "bswcdd\\HARD\\MATH_TRI.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 "bswcdd\\HARD\\MATH_TRI.h" 2
# 48 "bswcdd\\HARD\\MATH_TRI.h"
typedef sint8 int8_T;
typedef uint8 uint8_T;
typedef sint16 int16_T;
typedef uint16 uint16_T;
typedef sint32 int32_T;
typedef uint32 uint32_T;
typedef float32 real32_T;
typedef float64 real64_T;



# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 69 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section ".text" ax
# 60 "bswcdd\\HARD\\MATH_TRI.h" 2

extern sint16 MathSinus(uint16 angle);
extern sint16 MathCosinus(uint16 angle);
extern sint16 MathArcsinus(sint16 arc);
extern sint16 MathArccosinus(sint16 arc);
extern sint32 MathTangente(sint16 sinus,sint16 cosinus);
extern sint16 MathArctangente(sint32 tangente);
extern void MathSinusCosinus(uint16 angle, sint16 *sinResult, sint16 *cosResult);

extern void LIBTRIG_Sin_Outputs_wrapper(const int16_T *Theta, int16_T *Sin);
extern void LIBTRIG_Cos_Outputs_wrapper(const int16_T *Theta, int16_T *Cos);
extern void LIBTRIG_SinCos_Outputs_wrapper(const int16_T *Theta, int16_T *Sin, int16_T *Cos);
extern void LIBTRIG_Arctan_Outputs_wrapper(const int32_T *Tangente, int16_T *Theta);


# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 95 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section
# 76 "bswcdd\\HARD\\MATH_TRI.h" 2




typedef uint16 MathAngleType;
# 115 "bswcdd\\HARD\\MATH_TRI.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 116 "bswcdd\\HARD\\MATH_TRI.h" 2

extern const sint16 mathSinusTable[257];
extern const sint16 mathArcsinusTable[257];
extern const uint16 mathArctangenteTable1[257];
extern const uint16 mathArctangenteTable2[257];
extern const uint16 mathArctangenteTable3[257];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 125 "bswcdd\\HARD\\MATH_TRI.h" 2
# 45 "bswcdd\\HARD\\MATH_TRI.c" 2






# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 69 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section ".text" ax
# 52 "bswcdd\\HARD\\MATH_TRI.c" 2
# 63 "bswcdd\\HARD\\MATH_TRI.c"
void LIBTRIG_Sin_Outputs_wrapper(const int16_T *Theta, int16_T *Sin)
{
   uint16 localIndexAngle;
   sint16 localInterpResult;
   sint16 localBkptHigh;
   sint16 localBkptLow;
   uint16 localReste;
   sint16 localDelta;
   sint16 localRatio;
   const sint16 *localAddOfTable;

   localIndexAngle = (uint16)((uint16)*Theta >> (uint16)8);
   localAddOfTable = &mathSinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = (uint16)*Theta & (uint16)0x00FF;
   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   localInterpResult = (localBkptLow + localRatio);

   *Sin = (sint16)(localInterpResult / 2);
}
# 97 "bswcdd\\HARD\\MATH_TRI.c"
sint16 MathSinus(uint16 angle)
{
   uint16 localIndexAngle;
   sint16 localInterpResult;
   sint16 localBkptHigh;
   sint16 localBkptLow;
   uint16 localReste;
   sint16 localDelta;
   sint16 localRatio;
   const sint16 *localAddOfTable;

   localIndexAngle = (uint16)(angle >> (uint16)8);
   localAddOfTable = &mathSinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = angle & (uint16)0x00FF;
   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   localInterpResult = (localBkptLow + localRatio);

   return(localInterpResult);
}
# 131 "bswcdd\\HARD\\MATH_TRI.c"
void LIBTRIG_Cos_Outputs_wrapper(const int16_T *Theta, int16_T *Cos)
{
   uint16 localIndexAngle;
   sint16 localBkptHigh;
   sint16 localBkptLow;
   uint16 localReste;
   sint16 localDelta;
   sint16 localRatio;
   uint32 localAngle;
   const sint16 *localAddOfTable;

   localAngle = (uint16)*Theta + (uint16)16383;

   localIndexAngle = (uint16)(localAngle) >> (uint16)8;
   localAddOfTable = &mathSinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = (sint16)(localAngle) & (uint16)0x00FF;
   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   *Cos = ((localBkptLow + localRatio) / 2);
}
# 165 "bswcdd\\HARD\\MATH_TRI.c"
sint16 MathCosinus(uint16 angle)
{
   uint16 localIndexAngle;
   sint16 localInterpResult;
   sint16 localBkptHigh;
   sint16 localBkptLow;
   uint16 localReste;
   sint16 localDelta;
   sint16 localRatio;
   uint32 localAngle;
   const sint16 *localAddOfTable;

   localAngle = angle + (uint16)16383;
   if (localAngle > (uint16)65535)
   {
      localAngle -= (uint16)65535;
   }

   localIndexAngle = (uint16)(localAngle) >> (uint16)8;
   localAddOfTable = &mathSinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = (sint16)(localAngle) & (uint16)0x00FF;
   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   localInterpResult = (sint16)(localBkptLow + localRatio);

   return(localInterpResult);
}
# 205 "bswcdd\\HARD\\MATH_TRI.c"
sint16 MathArcsinus(sint16 argument)
{
   uint16 localIndexAngle;
   sint16 localBkptHigh;
   sint16 localBkptLow;
   sint16 localReste;
   sint16 localDelta;
   sint16 localRatio;
   sint16 localAngle;
   uint16 localArgument;
   const sint16 *localAddOfTable;

   localArgument = argument + (uint16)32768;
   localIndexAngle = localArgument >> (uint16)8;
   localAddOfTable = &mathArcsinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = localArgument & (uint16)0x00FF;
   localRatio = (uint16)(((uint32)localDelta * localReste) >> 8);
   localAngle = localBkptLow + localRatio;

   return(localAngle);
}
# 240 "bswcdd\\HARD\\MATH_TRI.c"
sint16 MathArccosinus(sint16 argument)
{
   uint16 localIndexAngle;
   sint16 localBkptHigh;
   sint16 localBkptLow;
   sint16 localReste;
   sint16 localDelta;
   sint16 localRatio;
   sint16 localAngle;
   uint16 localArgument;
   const sint16 *localAddOfTable;

   localArgument = argument + (uint16)(uint16)32768;
   localIndexAngle = localArgument >> (uint16)8;
   localAddOfTable = &mathArcsinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = localArgument & (uint16)0x00FF;
   localRatio = (uint16)(((uint32)localDelta * localReste) >> 8);

   localAngle = localBkptLow + localRatio;
   localAngle = (uint16)16383 - localAngle;
   if (localAngle > (uint16)16383)
   {
      localAngle -= (uint16)16383;
   }

   return(localAngle);
}
# 281 "bswcdd\\HARD\\MATH_TRI.c"
void LIBTRIG_SinCos_Outputs_wrapper(const int16_T *Theta, int16_T *Sin, int16_T *Cos)
{
   uint16 localIndexAngle;
   sint16 localBkptHigh;
   sint16 localBkptLow;
   sint16 localReste;
   sint16 localDelta;
   sint16 localRatio;
   uint32 localAngle;
   const sint16 *localAddOfTable;

   localIndexAngle = (uint16)*Theta >> (uint16)8;
   localAddOfTable = &mathSinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = (sint16)((uint16)*Theta & (uint16)0x00FF);
   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   *Sin = (localBkptLow + localRatio)/2;

   localAngle = (uint16)*Theta + (uint16)16383;
   localIndexAngle = (uint16)(localAngle) >> (uint16)8;
   localAddOfTable = &mathSinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = (sint16)(localAngle) & (uint16)0x00FF;
   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   *Cos = ((localBkptLow + localRatio) / 2);
}
# 323 "bswcdd\\HARD\\MATH_TRI.c"
void MathSinusCosinus(uint16 angle, sint16 *sinResult, sint16 *cosResult)
{
   uint16 localIndexAngle;
   sint16 localBkptHigh;
   sint16 localBkptLow;
   sint16 localReste;
   sint16 localDelta;
   sint16 localRatio;
   uint32 localAngle;
   const sint16 *localAddOfTable;

   localIndexAngle = angle >> (uint16)8;
   localAddOfTable = &mathSinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = (sint16)(angle & (uint16)0x00FF);
   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   *sinResult = localBkptLow + localRatio;

   localAngle = angle + (uint16)16383;

   localIndexAngle = (uint16)(localAngle) >> (uint16)8;
   localAddOfTable = &mathSinusTable[localIndexAngle];
   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localReste = (sint16)(localAngle) & (uint16)0x00FF;
   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   *cosResult = localBkptLow + localRatio;
}
# 366 "bswcdd\\HARD\\MATH_TRI.c"
sint32 MathTangente(sint16 sinus, sint16 cosinus)
{
   sint32 localSinus;
   sint32 localTangente;

   localSinus = ((sint16)sinus * 65536);
   if (cosinus != 0)
   {
      localTangente = ((sint32)localSinus / (sint16)cosinus);
      return(localTangente);
   }
   else
   {
      if (localSinus < 0)
      {
         if (cosinus > 0)
         {
            return(- (sint32)(uint32)(65536*1024));
         }
         else
         {
            return((uint32)(65536*1024));
         }
      }
      else
      {
         if (cosinus > 0)
         {
            return((uint32)(65536*1024));
         }
         else
         {
            return(- (sint32)(uint32)(65536*1024));
         }
      }
   }
}
# 413 "bswcdd\\HARD\\MATH_TRI.c"
void LIBTRIG_Arctan_Outputs_wrapper(const int32_T *Tangente, int16_T *Theta)
{
   uint16 localIndexTan;
   uint16 localBkptHigh;
   uint16 localBkptLow;
   uint16 localReste;
   uint16 localDelta;
   uint16 localRatio;
   uint32 localTangente;
   sint16 localAngle;
   const uint16 *localAddOfTable;

   if (*Tangente < 0)
   {
      localTangente = (uint32)(-(*Tangente));
   }
   else
   {
      localTangente = (uint32)*Tangente;
   }

   if (localTangente < (uint32)65536)
   {
      localIndexTan = (uint16)(localTangente >> 8);
      localAddOfTable = &mathArctangenteTable1[localIndexTan];
      localReste = (uint16)(localTangente) & (uint16)0x00FF;
   }
   else
   {
      if (localTangente < (uint32)(65536*8))
      {
         localIndexTan = (uint16)(localTangente >> (uint16)11);
         localIndexTan -= (uint16)32;

         localAddOfTable = &mathArctangenteTable2[localIndexTan];
         localReste = (sint16)(localTangente >> (uint16)3) & (uint16)0x00FF;
      }
      else
      {
         if (localTangente > (uint32)(65536*1024))
         {
            localTangente = (uint32)(65536*1024);
         }
         localIndexTan = (uint16)(localTangente >> (uint16)18);
         localIndexTan -= (uint16)2;

         localAddOfTable = &mathArctangenteTable3[localIndexTan];
         localReste = (uint16)(localTangente >> (uint16)10) & (uint16)0x00FF;
      }
   }

   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   localAngle = (localBkptLow + localRatio);

   if (*Tangente < 0)
   {
      localAngle = -localAngle;
   }

   *Theta = localAngle;
}
# 488 "bswcdd\\HARD\\MATH_TRI.c"
sint16 MathArctangente(sint32 tangente)
{
   uint16 localIndexTan;
   uint16 localBkptHigh;
   uint16 localBkptLow;
   uint16 localReste;
   uint16 localDelta;
   uint16 localRatio;
   uint32 localTangente;
   sint16 localAngle;
   const uint16 *localAddOfTable;

   if (tangente < 0)
   {
      localTangente = (uint32)(-tangente);
   }
   else
   {
      localTangente = (uint32)tangente;
   }

   if (localTangente < (uint32)65536)
   {
      localIndexTan = (uint16)(localTangente >> 8);
      localAddOfTable = &mathArctangenteTable1[localIndexTan];
      localReste = (uint16)(localTangente) & (uint16)0x00FF;
   }
   else
   {
      if (localTangente < (uint32)(65536*8))
      {
         localIndexTan = (uint16)(localTangente >> (uint16)11);
         localIndexTan -= (uint16)32;

         localAddOfTable = &mathArctangenteTable2[localIndexTan];
         localReste = (sint16)(localTangente >> (uint16)3) & (uint16)0x00FF;
      }
      else
      {
         if (localTangente > (uint32)(65536*1024))
         {
            localTangente = (uint32)(65536*1024);
         }
         localIndexTan = (uint16)(localTangente >> (uint16)18);
         localIndexTan -= (uint16)2;

         localAddOfTable = &mathArctangenteTable3[localIndexTan];
         localReste = (uint16)(localTangente >> (uint16)10) & (uint16)0x00FF;
      }
   }

   localBkptLow = *localAddOfTable++;
   localBkptHigh = *localAddOfTable;
   localDelta = localBkptHigh - localBkptLow;

   localRatio = (sint16)(((sint32)localDelta * localReste) >> 8);
   localAngle = (localBkptLow + localRatio);

   if (tangente < 0)
   {
      localAngle = -localAngle;
   }

   return(localAngle);
}


# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 95 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section
# 556 "bswcdd\\HARD\\MATH_TRI.c" 2
