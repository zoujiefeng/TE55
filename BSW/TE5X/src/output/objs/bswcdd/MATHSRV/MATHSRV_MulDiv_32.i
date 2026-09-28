# 1 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
# 22 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
# 1 "bswcdd\\MATHSRV\\MATHSRV.h" 1
# 25 "bswcdd\\MATHSRV\\MATHSRV.h"
# 1 "bswcdd\\MATHSRV\\AR_Mfx.h" 1
# 26 "bswcdd\\MATHSRV\\AR_Mfx.h"
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
# 27 "bswcdd\\MATHSRV\\AR_Mfx.h" 2
# 1 "bswcdd\\MATHSRV\\MATHSRV_i.h" 1
# 25 "bswcdd\\MATHSRV\\MATHSRV_i.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 26 "bswcdd\\MATHSRV\\MATHSRV_i.h" 2
# 55 "bswcdd\\MATHSRV\\MATHSRV_i.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 56 "bswcdd\\MATHSRV\\MATHSRV_i.h" 2


uint32 MATHSRV_u32Add_u32_u32
                            (uint32 u32FirstValue,
                             uint32 u32SecondValue);

uint32 MATHSRV_u32Mul_u32_u32_div_u32
                            (uint32 u32FirstValue,
                             uint32 u32SecondValue, uint32 u32Denominator);

sint32 MATHSRV_s32Add_s32_s32
                            (sint32 s32FirstValue,
                            sint32 s32SecondValue);

uint32 MATHSRV_u32Add_u32_s32
                            (uint32 u32FirstValue,
                            sint32 s32SecondValue);

uint32 MATHSRV_u32Add_s32_s32
                            (sint32 s32FirstValue,
                             sint32 s32SecondValue);

sint32 MATHSRV_s32Add_u32_s32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue);

uint32 MATHSRV_u32Sub_u32_u32
                            (uint32 u32FirstValue,
                             uint32 u32SecondValue);

uint32 MATHSRV_u32Sub_u32_s32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue);

uint32 MATHSRV_u32Sub_s32_u32
                            (sint32 s32FirstValue,
                             uint32 u32SecondValue);

uint32 MATHSRV_u32Sub_s32_s32
                            (sint32 s32FirstValue,
                             sint32 s32SecondValue);

sint32 MATHSRV_s32Sub_u32_u32
                            (uint32 u32FirstValue,
                             uint32 u32SecondValue);

sint32 MATHSRV_s32Sub_u32_s32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue);

sint32 MATHSRV_s32Sub_s32_u32
                            (sint32 s32FirstValue,
                             uint32 u32SecondValue);

sint32 MATHSRV_s32Sub_s32_s32
                            (sint32 s32FirstValue,
                             sint32 s32SecondValue);

uint32 MATHSRV_u32Div_u32_u32
                            (uint32 u32FirstValue,
                             uint32 u32SecondValue);

uint32 MATHSRV_u32Div_u32_s32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue);

uint32 MATHSRV_u32Div_s32_u32
                            (sint32 s32FirstValue,
                             uint32 u32SecondValue);

uint32 MATHSRV_u32Div_s32_s32
                            (sint32 s32FirstValue,
                             sint32 s32SecondValue);

sint32 MATHSRV_s32Div_u32_s32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue);

sint32 MATHSRV_s32Div_s32_u32
                            (sint32 s32FirstValue,
                             uint32 u32SecondValue);

sint32 MATHSRV_s32Div_s32_s32
                            (sint32 s32FirstValue,
                             sint32 s32SecondValue);

sint16 MATHSRV_s16Div_s32_u32
                            (sint32 s32FirstValue,
                             uint32 u32SecondValue);

sint16 MATHSRV_s16Div_s32_s16
                            (sint32 s32FirstValue,
                             sint16 s16SecondValue);

uint16 MATHSRV_u16Div_s32_u16
                            (sint32 s32FirstValue,
                             uint16 u16SecondValue);

uint16 MATHSRV_u16Div_u32_u16
                            (uint32 u32FirstValue,
                             uint16 u16SecondValue);

uint32 MATHSRV_u32Div_u32_u16
                            (uint32 u32FirstValue,
                             uint16 u16SecondValue);

uint32 MATHSRV_u32Mul_u32_u32
                            (uint32 u32FirstValue,
                             uint32 u32SecondValue);

uint32 MATHSRV_u32Mul_u32_s32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue);

uint32 MATHSRV_u32Mul_s32_s32
                            (sint32 s32FirstValue,
                             sint32 s32SecondValue);

sint32 MATHSRV_s32Mul_u32_s32
                            (uint32 u32FirstValue,
                            sint32 s32SecondValue);

sint32 MATHSRV_s32Mul_s32_s32
                            (sint32 s32FirstValue,
                             sint32 s32SecondValue);

uint32 MATHSRV_u32Mul_u32_u16
                            (uint32 u32FirstValue,
                             uint16 u16SecondValue);

sint32 MATHSRV_s32Mul_s32_u16
                            (sint32 s32FirstValue,
                             uint16 u16SecondValue);

uint32 MATHSRV_u32Mul_u32_u32_div_s32
                            (uint32 u32FirstValue,
                             uint32 u32SecondValue,
                             sint32 s32Denominator);

uint32 MATHSRV_u32Mul_u32_s32_div_u32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue,
                             uint32 u32Denominator);

uint32 MATHSRV_u32Mul_u32_s32_div_s32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue,
                             sint32 s32Denominator);

sint32 MATHSRV_s32Mul_u32_s32_div_u32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue,
                             uint32 u32Denominator);

sint32 MATHSRV_s32Mul_u32_s32_div_s32
                            (uint32 u32FirstValue,
                             sint32 s32SecondValue,
                             sint32 s32Denominator);

sint32 MATHSRV_s32Mul_s32_s32_div_u32
                            (sint32 s32FirstValue,
                             sint32 s32SecondValue,
                             uint32 u32Denominator);

sint32 MATHSRV_s32Mul_s32_s32_div_s32
                            (sint32 s32FirstValue,
                             sint32 s32SecondValue,
                             sint32 s32Denominator);

uint16 MATHSRV_u16Mul_u16_u16_div_u16
                            (uint16 u16FirstValue,
                             uint16 u16SecondValue,
                             uint16 u16Denominator);

uint16 MATHSRV_u16Mul_u16_u16_div_u32
                            (uint16 u16FirstValue,
                             uint16 u16SecondValue,
                             uint32 u32Denominator);

uint16 MATHSRV_u16Mul_s16_u16_div_u16
                            (sint16 s16FirstValue,
                             uint16 u16SecondValue,
                             uint16 u16Denominator);

uint16 MATHSRV_u16Mul_s16_u16_div_s16
                            (sint16 s16FirstValue,
                             uint16 u16SecondValue,
                             sint16 s16Denominator);

sint16 MATHSRV_s16Mul_u16_s16_div_u16
                            (uint16 u16FirstValue,
                             sint16 s16SecondValue,
                             uint16 u16Denominator);

sint16 MATHSRV_s16Mul_s16_u16_div_s16
                            (sint16 s16FirstValue,
                             uint16 u16SecondValue,
                             sint16 s16Denominator);

sint16 MATHSRV_s16Mul_s16_s16_div_u16
                            (sint16 s16FirstValue,
                             sint16 s16SecondValue,
                             uint16 u16Denominator);

sint16 MATHSRV_s16Mul_s16_s16_div_s16
                            (sint16 s16FirstValue,
                             sint16 s16SecondValue,
                             sint16 s16Denominator);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 268 "bswcdd\\MATHSRV\\MATHSRV_i.h" 2
# 28 "bswcdd\\MATHSRV\\AR_Mfx.h" 2
# 1 "bswcdd\\MATHSRV\\MATHSRV.h" 1
# 29 "bswcdd\\MATHSRV\\AR_Mfx.h" 2
# 26 "bswcdd\\MATHSRV\\MATHSRV.h" 2
# 1 "bswcdd\\MATHSRV\\MATHSRV_e.h" 1
# 27 "bswcdd\\MATHSRV\\MATHSRV_e.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 28 "bswcdd\\MATHSRV\\MATHSRV_e.h" 2







typedef enum
{
   MATHSRV_RISING_SCHMITT_TRIGGER = 0,
   MATHSRV_FALLING_SCHMITT_TRIGGER
} MATHSRV_tenuSchmittTriggerType;
# 124 "bswcdd\\MATHSRV\\MATHSRV_e.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 125 "bswcdd\\MATHSRV\\MATHSRV_e.h" 2


uint8 MATHSRV_u8Interp1d
   (const uint8 kau8Cartography[],
   uint16 u16SiteInterpolation);

uint8 MATHSRV_u8Interp1d09Pts
   (const uint8 kau8Cartography[9],
   uint8 u8Value);

uint8 MATHSRV_u8Interp1d11Pts
   (const uint8 kau8Cartography[11],
   uint8 u8Value);

uint8 MATHSRV_u8Interp1d17Pts
   (const uint8 kau8Cartography[17],
   uint8 u8Value);

uint8 MATHSRV_u8Interp2d
   (const uint8 * pkau8Cartography,
   uint16 u16SiteInterpolationXLine,
   uint16 u16SiteInterpolationYColumn,
   uint8 u8BreakpointNumberYColumn);



uint16 MATHSRV_u16Interp1d
   (const uint16 kau16Cartography[],
   uint16 u16SiteInterpolation);

uint16 MATHSRV_u16Interp1d09Pts
   (const uint16 kau16Cartography[9],
   uint8 u8Value);

uint16 MATHSRV_u16Interp1d11Pts
   (const uint16 kau16Cartography[11],
   uint8 u8Value);

uint16 MATHSRV_u16Interp1d17Pts
   (const uint16 kau16Cartography[17],
   uint8 u8Value);

uint16 MATHSRV_u16Interp2d
   (const uint16 * pkau16Cartography,
   uint16 u16SiteInterpolationXLine,
   uint16 u16SiteInterpolationYColumn,
   uint8 u8BreakpointNumberYColumn);



uint16 MATHSRV_u16CalcParaIncAryU8Loc
   (const uint8 kau8BreakpointMap[],
   uint8 u8Value,
   uint8 u8BreakpointNumberMinusOne);

uint16 MATHSRV_u16CalcParaIncAryU16Loc
   (const uint16 kau16BreakpointMap[],
   uint16 u16Value,
   uint8 u8BreakpointNumberMinusOne);



uint16 MATHSRV_u16FirstOrderFilterGu8
   (uint8 u8FilterGain,
   uint32 * pu32AccuracyFilterValue,
   uint16 u16MeasuredValue);

uint16 MATHSRV_u16FirstOrderFilterGu16
   (uint16 u16FilterGain,
   uint32 * pu32AccuracyFilterValue,
   uint16 u16MeasuredValue);

sint16 MATHSRV_s16FirstOrderFilterGu8
   (uint8 u8FilterGain,
   sint32 * ps32AccuracyFilterValue,
   sint16 s16MeasuredValue);

sint16 MATHSRV_s16FirstOrderFilterGu16
   (uint16 u16FilterGain,
   sint32 * ps32AccuracyFilterValue,
   sint16 s16MeasuredValue);

uint8 MATHSRV_u8SlewFilter
   (uint8 u8FilteredValue,
   uint8 u8MeasuredValue,
   uint8 u8MaxIncrementValue,
   uint8 u8MaxDecrementValue);

uint16 MATHSRV_u16SlewFilter
   (uint16 u16FilteredValue,
   uint16 u16MeasuredValue,
   uint16 u16MaxIncrementValue,
   uint16 u16MaxDecrementValue);


sint8 MATHSRV_s8SlewFilter
(
   sint8 s8FilteredValue,
   sint8 s8MeasuredValue,
   uint8 u8MaxIncrementValue,
   uint8 u8MaxDecrementValue);

sint16 MATHSRV_s16SlewFilter
(
   sint16 s16FilteredValue,
   sint16 s16MeasuredValue,
   uint16 u16MaxIncrementValue,
   uint16 u16MaxDecrementValue);

uint16 MATHSRV_u16MedianFilter
   (uint16 u16Value1,
   uint16 u16Value2,
   uint16 u16Value3);



void MATHSRV_vidSchmittTriggerU16
   (uint16 u16InputValue,
   uint16 u16HysteresisLowThreshold,
   uint16 u16HysteresisHighTreshold,
   MATHSRV_tenuSchmittTriggerType tenuSchmittTriggerType,
   uint8 * u8OutputValue);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 251 "bswcdd\\MATHSRV\\MATHSRV_e.h" 2
# 27 "bswcdd\\MATHSRV\\MATHSRV.h" 2
# 23 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c" 2
# 1 ".\\output\\inc/STD_Types.h" 1
# 24 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Limits.h" 1
# 2 ".\\output\\inc/Std_Limits.h" 2
# 25 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c" 2



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 29 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c" 2


static void MATHSRV_vidMul_u32_u32_Res_u64
(
   uint32 u32Factor1,
   uint32 u32Factor2,
   uint32 * pu32ResultLow32,
   uint32 * pu32ResultHigh32
);
# 51 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
uint32 MATHSRV_u32Mul_u32_u32_div_u32
(
   uint32 u32FirstValue,
   uint32 u32SecondValue,
   uint32 u32Denominator
)
{
   boolean bLocalR3OverflowFlag;
   uint8_least u8LocalLoopIndex;
   uint32 u32LocalProductLow;
   uint32 u32LocalProductHigh;
   uint32_least u32LocalTemp;
   uint32_least u32LocalTemp2;
   uint32_least u32LocalResult;
   uint32_least u32LocalRemainder;


   if (u32Denominator != 0)
   {
      if ( (u32FirstValue != 0)
         && (u32SecondValue != 0) )
      {
         MATHSRV_vidMul_u32_u32_Res_u64(u32FirstValue, u32SecondValue,
                                        &u32LocalProductLow, &u32LocalProductHigh);
         if (u32LocalProductHigh < u32Denominator)
         {

            if (u32LocalProductHigh == 0)
            {
               u32LocalResult = (u32LocalProductLow / u32Denominator);
               u32LocalRemainder = (u32LocalProductLow % u32Denominator);
               if ( (u32LocalRemainder > (u32Denominator / 2) )
                  || ( ( (u32Denominator % 2) == 0)
                     && (u32LocalRemainder == (u32Denominator / 2) ) ) )
               {
                  u32LocalResult += 1;
               }
            }
            else
            {
               u32LocalResult = 0;
               bLocalR3OverflowFlag = 0;
               u32LocalTemp2 = 2147483648UL;

               if (u32LocalProductHigh >= 2147483648UL)
               {
                  bLocalR3OverflowFlag = 1;
               }
               u32LocalProductHigh = (u32LocalProductHigh * 2);




               if (u32LocalProductLow >= 2147483648UL)
               {
                  u32LocalProductHigh = u32LocalProductHigh + 1;
               }
               u32LocalProductLow = (u32LocalProductLow * 2);



               for (u8LocalLoopIndex = 0; u8LocalLoopIndex < 32; u8LocalLoopIndex++)
               {
                  if (bLocalR3OverflowFlag == 1)
                  {
                     u32LocalProductHigh += ( (4294967295ul - u32Denominator) + 1);
                     u32LocalTemp = u32LocalTemp2;
                  }
                  else if (u32LocalProductHigh >= u32Denominator)
                  {
                     u32LocalProductHigh = u32LocalProductHigh - u32Denominator;
                     u32LocalTemp = u32LocalTemp2;
                  }
                  else
                  {
                     u32LocalTemp = 0;
                  }
                  if (u32LocalProductHigh >= 2147483648UL)
                  {
                     bLocalR3OverflowFlag = 1;
                  }
                  else
                  {
                     bLocalR3OverflowFlag = 0;
                  }
                  u32LocalProductHigh = (u32LocalProductHigh * 2);



                  if (u32LocalProductLow >= 2147483648UL)
                  {
                     u32LocalProductHigh = u32LocalProductHigh + 1;
                  }
                  u32LocalProductLow = (u32LocalProductLow * 2);




                  u32LocalResult += u32LocalTemp;
                  u32LocalTemp2 = u32LocalTemp2 / 2;
               }
               if ( ( (bLocalR3OverflowFlag == 1)
                     || (u32LocalProductHigh >= u32Denominator) )
                  && (u32LocalResult < 4294967295ul) )
               {
                  u32LocalResult += 1;
               }
            }
         }
         else
         {
            u32LocalResult = 4294967295ul;
         }
      }
      else
      {
         u32LocalResult = 0;
      }
   }
   else
   {
      u32LocalResult = 4294967295ul;
   }
   return(u32LocalResult);
}
# 189 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
uint32 MATHSRV_u32Mul_u32_u32_div_s32
(
   uint32 u32FirstValue,
   uint32 u32SecondValue,
   sint32 s32Denominator
)

{
   uint8_least u8LocalLoopIndex;
   uint32 u32LocalProductLow;
   uint32 u32LocalProductHigh;
   uint32_least u32LocalTemp;
   uint32_least u32LocalTemp2;
   uint32_least u32LocalResult;
   uint32_least u32LocalRemainder;


   if (s32Denominator != 0)
   {
      if ( (s32Denominator > 0)
         && (u32FirstValue != 0)
         && (u32SecondValue != 0) )
      {
         MATHSRV_vidMul_u32_u32_Res_u64(u32FirstValue, u32SecondValue,
                                        &u32LocalProductLow, &u32LocalProductHigh);
         if (u32LocalProductHigh < (uint32)s32Denominator)
         {
            if (u32LocalProductHigh == 0)
            {
               u32LocalResult = (u32LocalProductLow / (uint32)s32Denominator);
               u32LocalRemainder =
                  (u32LocalProductLow % (uint32)s32Denominator);
               if ( (u32LocalRemainder > ( (uint32)s32Denominator / 2) )
                  || ( ( ( ( (uint32)s32Denominator) % 2) == 0)
                     && (u32LocalRemainder == ( ( (uint32)s32Denominator) / 2) ) ) )
               {
                  u32LocalResult += 1;
               }
            }
            else
            {
               u32LocalResult = 0;
               u32LocalTemp2 = 2147483648UL;
               u32LocalProductHigh = u32LocalProductHigh % 2147483648UL;
               u32LocalProductHigh = (u32LocalProductHigh * 2);
               if (u32LocalProductLow >= 2147483648UL)
               {
                  u32LocalProductHigh = u32LocalProductHigh + 1;
               }
               u32LocalProductLow = (u32LocalProductLow * 2);



               for (u8LocalLoopIndex = 0; u8LocalLoopIndex < 32; u8LocalLoopIndex++)
               {
                  if (u32LocalProductHigh >= (uint32)s32Denominator)
                  {
                     u32LocalProductHigh -= (uint32)s32Denominator;
                     u32LocalTemp = u32LocalTemp2;
                  }
                  else
                  {
                     u32LocalTemp = 0;
                  }
                  u32LocalProductHigh = (u32LocalProductHigh * 2);
                  if (u32LocalProductLow >= 2147483648UL)
                  {
                     u32LocalProductHigh = u32LocalProductHigh + 1;
                  }
                  u32LocalProductLow = (u32LocalProductLow * 2);



                  u32LocalResult += u32LocalTemp;
                  u32LocalTemp2 = u32LocalTemp2 / 2;
               }
               if ( (u32LocalProductHigh >= ( (uint32)s32Denominator) )
                  && (u32LocalResult < 4294967295ul) )
               {
                  u32LocalResult += 1;
               }
            }
         }
         else
         {
            u32LocalResult = 4294967295ul;
         }
      }
      else
      {
         u32LocalResult = 0;
      }
   }
   else
   {
      u32LocalResult = 4294967295ul;
   }
   return(u32LocalResult);
}
# 301 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
uint32 MATHSRV_u32Mul_u32_s32_div_u32
(
   uint32 u32FirstValue,
   sint32 s32SecondValue,
   uint32 u32Denominator
)

{
   boolean bLocalR3OverflowFlag;
   uint8_least u8LocalLoopIndex;
   uint32 u32LocalProductLow;
   uint32 u32LocalProductHigh;
   uint32_least u32LocalTemp;
   uint32_least u32LocalTemp2;
   uint32_least u32LocalResult;


   if (u32Denominator != 0)
   {
      if ( (s32SecondValue > 0)
         && (u32FirstValue != 0) )
      {
         MATHSRV_vidMul_u32_u32_Res_u64(u32FirstValue, (uint32)s32SecondValue,
                                        &u32LocalProductLow, &u32LocalProductHigh);
         if (u32LocalProductHigh < u32Denominator)
         {
            if (u32LocalProductHigh == 0)
            {
               u32LocalResult = ( ((((u32LocalProductLow) % (u32Denominator)) > ((u32Denominator) / 2)) || ((((u32Denominator) % 2) == 0) && (((u32LocalProductLow) % (u32Denominator)) == ((u32Denominator) / 2)))) ? (((u32LocalProductLow) / (u32Denominator)) + 1) : ((u32LocalProductLow) / (u32Denominator)))
                                                                        ;
            }
            else
            {
               u32LocalResult = 0;
               bLocalR3OverflowFlag = 0;
               u32LocalTemp2 = 2147483648UL;
               u32LocalProductHigh = (u32LocalProductHigh * 2);
               if (u32LocalProductLow >= 2147483648UL)
               {
                  u32LocalProductHigh = u32LocalProductHigh + 1;
               }
               u32LocalProductLow = (u32LocalProductLow * 2);



               for (u8LocalLoopIndex = 0; u8LocalLoopIndex < 32; u8LocalLoopIndex++)
               {
                  if (bLocalR3OverflowFlag == 1)
                  {
                     u32LocalProductHigh += ( (4294967295ul - u32Denominator) + 1);
                     u32LocalTemp = u32LocalTemp2;
                  }
                  else if (u32LocalProductHigh >= u32Denominator)
                  {
                     u32LocalProductHigh = u32LocalProductHigh - u32Denominator;
                     u32LocalTemp = u32LocalTemp2;
                  }
                  else
                  {
                     u32LocalTemp = 0;
                  }
                  if (u32LocalProductHigh >= 2147483648UL)
                  {
                     bLocalR3OverflowFlag = 1;
                  }
                  else
                  {
                     bLocalR3OverflowFlag = 0;
                  }
                  u32LocalProductHigh = (u32LocalProductHigh * 2);



                  if (u32LocalProductLow >= 2147483648UL)
                  {
                     u32LocalProductHigh = u32LocalProductHigh + 1;
                  }
                  u32LocalProductLow = (u32LocalProductLow * 2);



                  u32LocalResult += u32LocalTemp;
                  u32LocalTemp2 = u32LocalTemp2 / 2;
               }
               if ( (bLocalR3OverflowFlag == 1)
                  || (u32LocalProductHigh >= u32Denominator) )
               {
                  u32LocalProductHigh = (u32LocalProductHigh / 2);
                  if ( (bLocalR3OverflowFlag == 1)
                     || ( (u32LocalProductHigh) >= (u32Denominator / 2) ) )
                  {
                     u32LocalResult += 1;
                  }
               }
            }
         }
         else
         {
            u32LocalResult = 4294967295ul;
         }
      }
      else
      {
         u32LocalResult = 0;
      }
   }
   else
   {
      if ( (s32SecondValue >= 0)
         || (u32FirstValue == 0) )
      {
         u32LocalResult = 4294967295ul;
      }
      else
      {
         u32LocalResult = 0;
      }
   }
   return(u32LocalResult);
}
# 434 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
uint32 MATHSRV_u32Mul_u32_s32_div_s32
(
   uint32 u32FirstValue,
   sint32 s32SecondValue,
   sint32 s32Denominator
)

{
   uint8_least u8LocalLoopIndex;
   uint32 u32LocalProductLow;
   uint32 u32LocalProductHigh;
   uint32_least u32LocalTemp;
   uint32_least u32LocalTemp2;
   uint32_least u32LocalFactor2;
   uint32_least u32LocalDenominator;
   uint32_least u32LocalResult;


   if (s32Denominator != 0)
   {
      if ( ( ( (s32SecondValue > 0)
               && (s32Denominator > 0) )
            || ( (s32SecondValue < 0)
               && (s32Denominator < 0) ) )
         && (u32FirstValue != 0) )
      {
         u32LocalFactor2 = (uint32)( ( (s32SecondValue) < 0) ? (0 - (s32SecondValue) ) : (s32SecondValue) );
         u32LocalDenominator = (uint32)( ( (s32Denominator) < 0) ? (0 - (s32Denominator) ) : (s32Denominator) );
         MATHSRV_vidMul_u32_u32_Res_u64(u32FirstValue, u32LocalFactor2,
                                        &u32LocalProductLow, &u32LocalProductHigh);
         if (u32LocalProductHigh < u32LocalDenominator)
         {
            if (u32LocalProductHigh == 0)
            {
               u32LocalResult = ( ((((u32LocalProductLow) % (u32LocalDenominator)) > ((u32LocalDenominator) / 2)) || ((((u32LocalDenominator) % 2) == 0) && (((u32LocalProductLow) % (u32LocalDenominator)) == ((u32LocalDenominator) / 2)))) ? (((u32LocalProductLow) / (u32LocalDenominator)) + 1) : ((u32LocalProductLow) / (u32LocalDenominator)))
                                                                             ;


            }
            else
            {
               u32LocalResult = 0;
               u32LocalTemp2 = 2147483648UL;
               u32LocalProductHigh = (u32LocalProductHigh * 2);
               if (u32LocalProductLow >= 2147483648UL)
               {
                  u32LocalProductHigh = u32LocalProductHigh + 1;
               }
               u32LocalProductLow = (u32LocalProductLow * 2);



               for (u8LocalLoopIndex = 0; u8LocalLoopIndex < 32; u8LocalLoopIndex++)
               {
                  if (u32LocalProductHigh >= u32LocalDenominator)
                  {
                     u32LocalProductHigh -= u32LocalDenominator;
                     u32LocalTemp = u32LocalTemp2;
                  }
                  else
                  {
                     u32LocalTemp = 0;
                  }
                  u32LocalProductHigh = (u32LocalProductHigh * 2);
                  if (u32LocalProductLow >= 2147483648UL)
                  {
                     u32LocalProductHigh = u32LocalProductHigh + 1;
                  }
                  u32LocalProductLow = (u32LocalProductLow * 2);



                  u32LocalResult += u32LocalTemp;
                  u32LocalTemp2 = u32LocalTemp2 / 2;
               }
               if ( (u32LocalProductHigh) >= u32LocalDenominator)
               {
                  u32LocalResult += 1;
               }
            }
         }
         else
         {
            u32LocalResult = 4294967295ul;
         }
      }
      else
      {
         u32LocalResult = 0;
      }
   }
   else
   {
      if ( (s32SecondValue >= 0)
         || (u32FirstValue == 0) )
      {
         u32LocalResult = 4294967295ul;
      }
      else
      {
         u32LocalResult = 0;
      }
   }
   return(u32LocalResult);
}
# 552 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
sint32 MATHSRV_s32Mul_s32_s32_div_s32
(
   sint32 s32FirstValue,
   sint32 s32SecondValue,
   sint32 s32Denominator
)

{
   boolean bLocalPositiveResult;
   uint8_least u8LocalLoopIndex;
   uint32 u32LocalProductLow;
   uint32 u32LocalProductHigh;
   uint32_least u32LocalTemp;
   uint32_least u32LocalTemp2;
   uint32_least u32LocalFactor1;
   uint32_least u32LocalFactor2;
   uint32_least u32LocalDenominator;
   uint32_least u32LocalResult;
   sint32_least s32LocalResult;


   if (s32Denominator != 0)
   {
      u32LocalFactor1 = (uint32)( ( (s32FirstValue) < 0) ? (0 - (s32FirstValue) ) : (s32FirstValue) );
      u32LocalFactor2 = (uint32)( ( (s32SecondValue) < 0) ? (0 - (s32SecondValue) ) : (s32SecondValue) );
      u32LocalDenominator = (uint32)( ( (s32Denominator) < 0) ? (0 - (s32Denominator) ) : (s32Denominator) );
      MATHSRV_vidMul_u32_u32_Res_u64(u32LocalFactor1, u32LocalFactor2,
                                     &u32LocalProductLow, &u32LocalProductHigh);

      if ( ( ( ( (s32FirstValue > 0)
                  && (s32SecondValue > 0) )
               || ( (s32FirstValue < 0)
                  && (s32SecondValue < 0) ) )
            && (s32Denominator > 0) )
         || ( ( ( (s32FirstValue > 0)
                  && (s32SecondValue < 0) )
               || ( (s32FirstValue < 0)
                  && (s32SecondValue > 0) ) )
            && (s32Denominator < 0) ) )
      {
         bLocalPositiveResult = (1 != 0);
      }
      else
      {
         bLocalPositiveResult = (0 != 0);
      }



      u32LocalProductHigh = (u32LocalProductHigh * 2);

      if (u32LocalProductLow >= 2147483648UL)
      {
         u32LocalProductHigh = u32LocalProductHigh + 1;
      }

      if (u32LocalProductHigh < u32LocalDenominator)
      {


         if (u32LocalProductHigh <= 1)
         {
            u32LocalResult = ( ((((u32LocalProductLow) % (u32LocalDenominator)) > ((u32LocalDenominator) / 2)) || ((((u32LocalDenominator) % 2) == 0) && (((u32LocalProductLow) % (u32LocalDenominator)) == ((u32LocalDenominator) / 2)))) ? (((u32LocalProductLow) / (u32LocalDenominator)) + 1) : ((u32LocalProductLow) / (u32LocalDenominator)))
                                                                          ;


         }
         else
         {
            u32LocalResult = 0;
            u32LocalTemp2 = 1073741824UL;
            u32LocalProductLow = u32LocalProductLow * 2;



            u32LocalProductHigh = u32LocalProductHigh * 2;


            if (u32LocalProductLow >= 2147483648UL)
            {
               u32LocalProductHigh = u32LocalProductHigh + 1;
            }
            u32LocalProductLow = (u32LocalProductLow * 2);



            for (u8LocalLoopIndex = 0; u8LocalLoopIndex < 31; u8LocalLoopIndex++)
            {
               if (u32LocalProductHigh >= u32LocalDenominator)
               {
                  u32LocalProductHigh -= u32LocalDenominator;
                  u32LocalTemp = u32LocalTemp2;
               }
               else
               {
                  u32LocalTemp = 0;
               }
               u32LocalProductHigh = (u32LocalProductHigh * 2);
               if (u32LocalProductLow >= 2147483648UL)
               {
                  u32LocalProductHigh = u32LocalProductHigh + 1;
               }
               u32LocalProductLow = (u32LocalProductLow * 2);



               u32LocalResult += u32LocalTemp;
               u32LocalTemp2 = u32LocalTemp2 / 2;
            }
            if (u32LocalProductHigh >= u32LocalDenominator)
            {
               u32LocalResult += 1;
            }
         }

         if (bLocalPositiveResult == (1 != 0))
         {
            s32LocalResult = (sint32)( ( (u32LocalResult) > ((uint32)2147483647l) ) ? ((uint32)2147483647l) : (u32LocalResult) )
                                                                       ;

         }
         else
         {
            if (u32LocalResult < ( ( (uint32)2147483647l) + 1) )
            {

               s32LocalResult = -( (sint32)u32LocalResult);
            }
            else
            {
               s32LocalResult = (-2147483647l - 1);
            }
         }
      }
      else
      {

         if (bLocalPositiveResult == (1 != 0))
         {
            s32LocalResult = 2147483647l;
         }
         else
         {
            s32LocalResult = (-2147483647l - 1);
         }
      }
   }
   else
   {

      if ( ( (s32FirstValue >= 0)
            && (s32SecondValue >= 0) )
         || ( (s32FirstValue <= 0)
            && (s32SecondValue <= 0) ) )
      {
         s32LocalResult = 2147483647l;
      }
      else
      {
         s32LocalResult = (-2147483647l - 1);
      }
   }

   return(s32LocalResult);
}
# 730 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
sint32 MATHSRV_s32Mul_s32_s32_div_u32
(
   sint32 s32FirstValue,
   sint32 s32SecondValue,
   uint32 u32Denominator
)

{
   boolean bLocalPositiveResult;
   boolean bLocalR3OverflowFlag;
   uint8_least u8LocalLoopIndex;
   uint32 u32LocalProductLow;
   uint32 u32LocalProductHigh;
   uint32_least u32LocalTemp;
   uint32_least u32LocalTemp2;
   uint32_least u32LocalFactor1;
   uint32_least u32LocalFactor2;
   uint32_least u32LocalResult;
   sint32_least s32LocalResult;


   if ( ( (s32FirstValue >= 0)
         && (s32SecondValue >= 0) )
      || ( (s32FirstValue <= 0)
         && (s32SecondValue <= 0) ) )
   {
      bLocalPositiveResult = (1 != 0);
   }
   else
   {
      bLocalPositiveResult = (0 != 0);
   }
   if (u32Denominator != 0)
   {
      u32LocalFactor1 = (uint32)( ( (s32FirstValue) < 0) ? (0 - (s32FirstValue) ) : (s32FirstValue) );
      u32LocalFactor2 = (uint32)( ( (s32SecondValue) < 0) ? (0 - (s32SecondValue) ) : (s32SecondValue) );
      MATHSRV_vidMul_u32_u32_Res_u64(u32LocalFactor1, u32LocalFactor2,
                                     &u32LocalProductLow, &u32LocalProductHigh);




      u32LocalProductHigh = (u32LocalProductHigh * 2);
      if (u32LocalProductLow >= 2147483648UL)
      {
         u32LocalProductHigh = u32LocalProductHigh + 1;
      }

      if (u32LocalProductHigh < u32Denominator)
      {


         if (u32LocalProductHigh <= 1)
         {
            u32LocalResult = ( ((((u32LocalProductLow) % (u32Denominator)) > ((u32Denominator) / 2)) || ((((u32Denominator) % 2) == 0) && (((u32LocalProductLow) % (u32Denominator)) == ((u32Denominator) / 2)))) ? (((u32LocalProductLow) / (u32Denominator)) + 1) : ((u32LocalProductLow) / (u32Denominator)))
                                                                     ;
         }
         else
         {
            u32LocalResult = 0;


            bLocalR3OverflowFlag = 0;
            u32LocalTemp2 = 1073741824UL;
            u32LocalProductLow = u32LocalProductLow * 2;



            if (u32LocalProductHigh >= 2147483648UL)
            {
               bLocalR3OverflowFlag = 1;
            }
            u32LocalProductHigh = u32LocalProductHigh * 2;






            if (u32LocalProductLow >= 2147483648UL)
            {
               u32LocalProductHigh = u32LocalProductHigh + 1;
            }
            u32LocalProductLow = (u32LocalProductLow * 2);



            for (u8LocalLoopIndex = 0; u8LocalLoopIndex < 31; u8LocalLoopIndex++)
            {
               if (bLocalR3OverflowFlag == 1)
               {
                  u32LocalProductHigh += ( (4294967295ul - u32Denominator) + 1);
                  u32LocalTemp = u32LocalTemp2;
               }
               else if (u32LocalProductHigh >= u32Denominator)
               {
                  u32LocalProductHigh = u32LocalProductHigh - u32Denominator;
                  u32LocalTemp = u32LocalTemp2;
               }
               else
               {
                  u32LocalTemp = 0;
               }

               if (u32LocalProductHigh >= 2147483648UL)
               {
                  bLocalR3OverflowFlag = 1;
               }
               else
               {
                  bLocalR3OverflowFlag = 0;
               }
               u32LocalProductHigh = (u32LocalProductHigh * 2);





               if (u32LocalProductLow >= 2147483648UL)
               {
                  u32LocalProductHigh = u32LocalProductHigh + 1;
               }
               u32LocalProductLow = (u32LocalProductLow * 2);



               u32LocalResult += u32LocalTemp;
               u32LocalTemp2 = u32LocalTemp2 / 2;
            }
            if ( ( (bLocalR3OverflowFlag == 1)
                  || (u32LocalProductHigh >= u32Denominator) )
               && (u32LocalResult < 4294967295ul) )
            {
               u32LocalResult += 1;
            }
         }
         if (bLocalPositiveResult == (1 != 0))
         {
            s32LocalResult = (sint32)( ( (u32LocalResult) > ((uint32)2147483647l) ) ? ((uint32)2147483647l) : (u32LocalResult) )
                                                                       ;

         }
         else
         {
            if (u32LocalResult < ( ( (uint32)2147483647l) + 1) )
            {

               s32LocalResult = -( (sint32)u32LocalResult);
            }
            else
            {
               s32LocalResult = (-2147483647l - 1);
            }
         }
      }
      else
      {
         if (bLocalPositiveResult == (1 != 0))
         {
            s32LocalResult = 2147483647l;
         }
         else
         {
            s32LocalResult = (-2147483647l - 1);
         }
      }
   }
   else
   {
      if (bLocalPositiveResult == (1 != 0))
      {

         s32LocalResult = 2147483647l;
      }
      else
      {
         s32LocalResult = (-2147483647l - 1);
      }
   }
   return(s32LocalResult);
}
# 924 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
sint32 MATHSRV_s32Mul_u32_s32_div_s32
(
   uint32 u32FirstValue,
   sint32 s32SecondValue,
   sint32 s32Denominator
)

{
   boolean bLocalPositiveResult;
   uint8_least u8LocalLoopIndex;
   uint32 u32LocalProductLow;
   uint32 u32LocalProductHigh;
   uint32_least u32LocalTemp;
   uint32_least u32LocalTemp2;
   uint32_least u32LocalFactor2;
   uint32_least u32LocalDenominator;
   uint32_least u32LocalResult;
   sint32_least s32LocalResult;


   if (s32Denominator != 0)
   {
      u32LocalFactor2 = (uint32)( ( (s32SecondValue) < 0) ? (0 - (s32SecondValue) ) : (s32SecondValue) );
      u32LocalDenominator = (uint32)( ( (s32Denominator) < 0) ? (0 - (s32Denominator) ) : (s32Denominator) );
      MATHSRV_vidMul_u32_u32_Res_u64(u32FirstValue, u32LocalFactor2,
                                     &u32LocalProductLow, &u32LocalProductHigh);

      if ( ( (s32SecondValue > 0)
            && (s32Denominator > 0) )
         || ( (s32SecondValue < 0)
            && (s32Denominator < 0) ) )
      {
         bLocalPositiveResult = (1 != 0);
      }
      else
      {
         bLocalPositiveResult = (0 != 0);
      }



      u32LocalProductHigh = (u32LocalProductHigh * 2);
      if (u32LocalProductLow >= 2147483648UL)
      {
         u32LocalProductHigh = u32LocalProductHigh + 1;
      }

      if (u32LocalProductHigh < u32LocalDenominator)
      {


         if (u32LocalProductHigh <= 1)
         {
            u32LocalResult = ( ((((u32LocalProductLow) % (u32LocalDenominator)) > ((u32LocalDenominator) / 2)) || ((((u32LocalDenominator) % 2) == 0) && (((u32LocalProductLow) % (u32LocalDenominator)) == ((u32LocalDenominator) / 2)))) ? (((u32LocalProductLow) / (u32LocalDenominator)) + 1) : ((u32LocalProductLow) / (u32LocalDenominator)))
                                                                          ;

         }
         else
         {
            u32LocalResult = 0;
            u32LocalTemp2 = 1073741824UL;
            u32LocalProductLow = u32LocalProductLow * 2;



            u32LocalProductHigh = u32LocalProductHigh * 2;

            if (u32LocalProductLow >= 2147483648UL)
            {
               u32LocalProductHigh = u32LocalProductHigh + 1;
            }
            u32LocalProductLow = (u32LocalProductLow * 2);



            for (u8LocalLoopIndex = 0; u8LocalLoopIndex < 31; u8LocalLoopIndex++)
            {
               if (u32LocalProductHigh >= u32LocalDenominator)
               {
                  u32LocalProductHigh -= u32LocalDenominator;
                  u32LocalTemp = u32LocalTemp2;
               }
               else
               {
                  u32LocalTemp = 0;
               }
               u32LocalProductHigh = (u32LocalProductHigh * 2);
               if (u32LocalProductLow >= 2147483648UL)
               {
                  u32LocalProductHigh = u32LocalProductHigh + 1;
               }
               u32LocalProductLow = (u32LocalProductLow * 2);



               u32LocalResult += u32LocalTemp;
               u32LocalTemp2 = u32LocalTemp2 / 2;
            }
            if (u32LocalProductHigh >= u32LocalDenominator)
            {
               u32LocalResult += 1;
            }
         }
         if (bLocalPositiveResult == (1 != 0))
         {
            s32LocalResult = (sint32)( ( (u32LocalResult) > ((uint32)2147483647l) ) ? ((uint32)2147483647l) : (u32LocalResult) )
                                                                       ;

         }
         else
         {
            s32LocalResult = -( (sint32)u32LocalResult);
         }
      }
      else
      {
         if (bLocalPositiveResult == (1 != 0))
         {
            s32LocalResult = 2147483647l;
         }
         else
         {
            s32LocalResult = (-2147483647l - 1);
         }
      }
   }
   else
   {

      if ( (s32SecondValue >= 0)
         || (u32FirstValue == 0) )
      {
         s32LocalResult = 2147483647l;
      }
      else
      {
         s32LocalResult = (-2147483647l - 1);
      }
   }
   return(s32LocalResult);
}
# 1078 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
sint32 MATHSRV_s32Mul_u32_s32_div_u32
(
   uint32 u32FirstValue,
   sint32 s32SecondValue,
   uint32 u32Denominator
)

{
   boolean bLocalR3OverflowFlag;
   uint8_least u8LocalLoopIndex;
   uint32 u32LocalProductLow;
   uint32 u32LocalProductHigh;
   uint32_least u32LocalTemp;
   uint32_least u32LocalTemp2;
   uint32_least u32LocalFactor2;
   uint32_least u32LocalResult;
   sint32_least s32LocalResult;


   if (u32Denominator != 0)
   {
      u32LocalFactor2 = (uint32)( ( (s32SecondValue) < 0) ? (0 - (s32SecondValue) ) : (s32SecondValue) );
      MATHSRV_vidMul_u32_u32_Res_u64(u32FirstValue, u32LocalFactor2,
                                     &u32LocalProductLow, &u32LocalProductHigh);




      u32LocalProductHigh = (u32LocalProductHigh * 2);
      if (u32LocalProductLow >= 2147483648UL)
      {
         u32LocalProductHigh = u32LocalProductHigh + 1;
      }

      if (u32LocalProductHigh < u32Denominator)
      {


         if (u32LocalProductHigh <= 1)
         {
            u32LocalResult = ( ((((u32LocalProductLow) % (u32Denominator)) > ((u32Denominator) / 2)) || ((((u32Denominator) % 2) == 0) && (((u32LocalProductLow) % (u32Denominator)) == ((u32Denominator) / 2)))) ? (((u32LocalProductLow) / (u32Denominator)) + 1) : ((u32LocalProductLow) / (u32Denominator)))
                                                                     ;
         }
         else
         {
            u32LocalResult = 0;


            bLocalR3OverflowFlag = 0;
            u32LocalTemp2 = 1073741824UL;
            u32LocalProductLow = u32LocalProductLow * 2;



            if (u32LocalProductHigh >= 2147483648UL)
            {
               bLocalR3OverflowFlag = 1;
            }
            u32LocalProductHigh = u32LocalProductHigh * 2;




            if (u32LocalProductLow >= 2147483648UL)
            {
               u32LocalProductHigh = u32LocalProductHigh + 1;
            }
            u32LocalProductLow = (u32LocalProductLow * 2);



            for (u8LocalLoopIndex = 0; u8LocalLoopIndex < 31; u8LocalLoopIndex++)
            {
               if (bLocalR3OverflowFlag == 1)
               {
                  u32LocalProductHigh += ( (4294967295ul - u32Denominator) + 1);
                  u32LocalTemp = u32LocalTemp2;
               }
               else if (u32LocalProductHigh >= u32Denominator)
               {
                  u32LocalProductHigh = u32LocalProductHigh - u32Denominator;
                  u32LocalTemp = u32LocalTemp2;
               }
               else
               {
                  u32LocalTemp = 0;
               }
               if (u32LocalProductHigh >= 2147483648UL)
               {
                  bLocalR3OverflowFlag = 1;
               }
               else
               {
                  bLocalR3OverflowFlag = 0;
               }
               u32LocalProductHigh = (u32LocalProductHigh * 2);




               if (u32LocalProductLow >= 2147483648UL)
               {
                  u32LocalProductHigh = u32LocalProductHigh + 1;
               }
               u32LocalProductLow = (u32LocalProductLow * 2);



               u32LocalResult += u32LocalTemp;
               u32LocalTemp2 = u32LocalTemp2 / 2;
            }
            if ( ( (bLocalR3OverflowFlag == 1)
                  || (u32LocalProductHigh >= u32Denominator) )
               && (u32LocalResult < 4294967295ul) )
            {
               u32LocalResult += 1;
            }
         }

         if (s32SecondValue >= 0)
         {
            s32LocalResult = (sint32)( ( (u32LocalResult) > ((uint32)2147483647l) ) ? ((uint32)2147483647l) : (u32LocalResult) )
                                                                       ;

         }
         else
         {
            if (u32LocalResult < ( ( (uint32)2147483647l) + 1) )
            {

               s32LocalResult = -( (sint32)u32LocalResult);
            }
            else
            {
               s32LocalResult = (-2147483647l - 1);
            }
         }
      }
      else
      {

         if (s32SecondValue >= 0)
         {
            s32LocalResult = 2147483647l;
         }
         else
         {
            s32LocalResult = (-2147483647l - 1);
         }
      }
   }
   else
   {

      if ( (s32SecondValue >= 0)
         || (u32FirstValue == 0) )
      {
         s32LocalResult = 2147483647l;
      }
      else
      {
         s32LocalResult = (-2147483647l - 1);
      }
   }
   return(s32LocalResult);
}
# 1258 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c"
static void MATHSRV_vidMul_u32_u32_Res_u64
(
   uint32 u32Factor1,

   uint32 u32Factor2,

   uint32 * pu32ResultLow32,

   uint32 * pu32ResultHigh32

)

{
   uint32_least u32LocalR1;
   uint32_least u32LocalR3;
   uint32_least u32LocalR21;
   uint32_least u32LocalR22;
   uint32_least u32LocalXL;
   uint32_least u32LocalXM;
   uint32_least u32LocalYL;
   uint32_least u32LocalYM;
   uint32_least u32LocalTemp;


   u32LocalXL = (u32Factor1 % 65536);
   u32LocalXM = (u32Factor1 / 65536);
   u32LocalYL = (u32Factor2 % 65536);
   u32LocalYM = (u32Factor2 / 65536);
   u32LocalR1 = (u32LocalXL * u32LocalYL);
   u32LocalR21 = (u32LocalXL * u32LocalYM);
   u32LocalR22 = (u32LocalXM * u32LocalYL);
   u32LocalR3 = (u32LocalXM * u32LocalYM);

   u32LocalTemp = (u32LocalR1 / 65536);
   u32LocalTemp += (u32LocalR21 % 65536);
   u32LocalTemp += (u32LocalR22 % 65536);
   *pu32ResultLow32 = (u32LocalR1 % 65536) + (u32LocalTemp * 65536);

   u32LocalTemp = (u32LocalTemp / 65536);
   u32LocalTemp += (u32LocalR21 / 65536);
   u32LocalTemp += (u32LocalR22 / 65536);
   *pu32ResultHigh32 = u32LocalR3 + u32LocalTemp;
}


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 1304 "bswcdd\\MATHSRV\\MATHSRV_MulDiv_32.c" 2
