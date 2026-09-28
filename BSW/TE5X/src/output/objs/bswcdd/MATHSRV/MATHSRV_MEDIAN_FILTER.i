# 1 "bswcdd\\MATHSRV\\MATHSRV_MEDIAN_FILTER.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\MATHSRV\\MATHSRV_MEDIAN_FILTER.c"
# 22 "bswcdd\\MATHSRV\\MATHSRV_MEDIAN_FILTER.c"
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
# 23 "bswcdd\\MATHSRV\\MATHSRV_MEDIAN_FILTER.c" 2
# 1 "bswcdd\\MATHSRV\\MATHSRV.h" 1
# 25 "bswcdd\\MATHSRV\\MATHSRV.h"
# 1 "bswcdd\\MATHSRV\\AR_Mfx.h" 1
# 26 "bswcdd\\MATHSRV\\AR_Mfx.h"
# 1 ".\\output\\inc/Std_Types.h" 1
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
# 24 "bswcdd\\MATHSRV\\MATHSRV_MEDIAN_FILTER.c" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 31 "bswcdd\\MATHSRV\\MATHSRV_MEDIAN_FILTER.c" 2
# 40 "bswcdd\\MATHSRV\\MATHSRV_MEDIAN_FILTER.c"
uint16 MATHSRV_u16MedianFilter
(
   uint16 u16Value1,
   uint16 u16Value2,
   uint16 u16Value3
)
{
   if (u16Value2 > u16Value1)
   {
      if (u16Value3 > u16Value2)
      {
         return(u16Value2);
      }
      if (u16Value3 > u16Value1)
      {
         return(u16Value3);
      }
      return(u16Value1);
   }
   if (u16Value3 > u16Value1)
   {
      return(u16Value1);
   }
   if (u16Value3 > u16Value2)
   {
      return(u16Value3);
   }
   return(u16Value2);


}



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 75 "bswcdd\\MATHSRV\\MATHSRV_MEDIAN_FILTER.c" 2
