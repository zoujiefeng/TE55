# 1 "bswcdd\\F32SRV\\F32SRV_API.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\F32SRV\\F32SRV_API.c"
# 41 "bswcdd\\F32SRV\\F32SRV_API.c"
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
# 42 "bswcdd\\F32SRV\\F32SRV_API.c" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Limits.h" 1
# 2 ".\\output\\inc/Std_Limits.h" 2
# 43 "bswcdd\\F32SRV\\F32SRV_API.c" 2
# 1 "bswcdd\\F32SRV\\F32SRV.h" 1
# 37 "bswcdd\\F32SRV\\F32SRV.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\F32SRV\\F32SRV.h" 2
# 62 "bswcdd\\F32SRV\\F32SRV.h"
boolean F32SRV_bIsFinite(float32 f32Data);
sint16 F32SRV_s16F32ToSint16(float32 f32Data, sint16 s16UnderflowValue, sint16 s16OverflowValue, sint16 s16NanValue);
sint32 F32SRV_s32F32ToSint32(float32 f32Data, sint32 s32UnderflowValue, sint32 s32OverflowValue, sint32 s32NanValue);
sint8 F32SRV_s8F32ToSint8(float32 f32Data, sint8 s8UnderflowValue, sint8 s8OverflowValue, sint8 s8NanValue);
uint16 F32SRV_u16F32ToUint16(float32 f32Data, uint16 u16UnderflowValue, uint16 u16OverflowValue, uint16 u16NanValue);
uint32 F32SRV_u32F32ToUint32(float32 f32Data, uint32 u32UnderflowValue, uint32 u32OverflowValue, uint32 u32NanValue);
uint8 F32SRV_u8F32ToUint8(float32 f32Data, uint8 u8UnderflowValue, uint8 u8OverflowValue, uint8 u8NanValue);
# 44 "bswcdd\\F32SRV\\F32SRV_API.c" 2
# 1 "bswcdd\\F32SRV\\F32SRV_E.h" 1
# 33 "bswcdd\\F32SRV\\F32SRV_E.h"
# 1 "bswcdd\\F32SRV\\F32SRV_I.h" 1
# 34 "bswcdd\\F32SRV\\F32SRV_E.h" 2
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 "bswcdd\\F32SRV\\F32SRV_E.h" 2
# 45 "bswcdd\\F32SRV\\F32SRV_API.c" 2






# 1 "bswcdd\\F32SRV\\F32SRV_MemMap.h" 1
# 61 "bswcdd\\F32SRV\\F32SRV_MemMap.h"
#pragma section ".text" ax
# 52 "bswcdd\\F32SRV\\F32SRV_API.c" 2
# 63 "bswcdd\\F32SRV\\F32SRV_API.c"
boolean F32SRV_bIsFinite
(
   float32 f32Data
)
{
   boolean bLocalReturnValue;

   if ((boolean)((f32Data != f32Data) ? (boolean)(1 != 0) : (boolean)(0 != 0) ) != (boolean)(1 != 0))
   {
      if ( (f32Data >= -3.4028234663852886e+38f) && (f32Data <= 3.4028234663852886e+38f) )
      {
         bLocalReturnValue = (1 != 0);
      }
      else
      {
         bLocalReturnValue = (0 != 0);
      }
   }
   else
   {
      bLocalReturnValue = (0 != 0);
   }

   return(bLocalReturnValue);
}
# 99 "bswcdd\\F32SRV\\F32SRV_API.c"
uint8 F32SRV_u8F32ToUint8
(
   float32 f32Data,

   uint8 u8UnderflowValue,


   uint8 u8OverflowValue,


   uint8 u8NanValue

)
{
   uint8 u8LocalReturnValue;

   if ((boolean)((f32Data != f32Data) ? (boolean)(1 != 0) : (boolean)(0 != 0) ) == (boolean)(1 != 0))
   {

      u8LocalReturnValue = u8NanValue;
   }
   else
   {
      if (f32Data > (float32)255)
      {

         u8LocalReturnValue = u8OverflowValue;
      }
      else if (f32Data < (float32)0)
      {

         u8LocalReturnValue = u8UnderflowValue;
      }
      else
      {


         u8LocalReturnValue = (uint8)(f32Data + 0.5f);
      }
   }

   return(u8LocalReturnValue);
}
# 153 "bswcdd\\F32SRV\\F32SRV_API.c"
sint8 F32SRV_s8F32ToSint8
(
   float32 f32Data,

   sint8 s8UnderflowValue,


   sint8 s8OverflowValue,


   sint8 s8NanValue

)
{
   sint8 s8LocalReturnValue;

   if ((boolean)((f32Data != f32Data) ? (boolean)(1 != 0) : (boolean)(0 != 0) ) == (boolean)(1 != 0))
   {

      s8LocalReturnValue = s8NanValue;
   }
   else
   {
      if (f32Data > (float32)127)
      {

         s8LocalReturnValue = s8OverflowValue;
      }
      else if (f32Data < (float32)-128)
      {

         s8LocalReturnValue = s8UnderflowValue;
      }
      else
      {

         if (f32Data < 0.0f)
         {

            s8LocalReturnValue = (sint8)(f32Data - 0.5f);
         }
         else if (f32Data > 0.0f)
         {

            s8LocalReturnValue = (sint8)(f32Data + 0.5f);
         }
         else
         {

            s8LocalReturnValue = 0;
         }
      }
   }

   return(s8LocalReturnValue);
}
# 220 "bswcdd\\F32SRV\\F32SRV_API.c"
uint16 F32SRV_u16F32ToUint16
(
   float32 f32Data,

   uint16 u16UnderflowValue,


   uint16 u16OverflowValue,


   uint16 u16NanValue

)
{
   uint16 u16LocalReturnValue;

   if ((boolean)((f32Data != f32Data) ? (boolean)(1 != 0) : (boolean)(0 != 0) ) == (boolean)(1 != 0))
   {

      u16LocalReturnValue = u16NanValue;
   }
   else
   {
      if (f32Data > (float32)65535u)
      {

         u16LocalReturnValue = u16OverflowValue;
      }
      else if (f32Data < (float32)0)
      {

         u16LocalReturnValue = u16UnderflowValue;
      }
      else
      {


         u16LocalReturnValue = (uint16)(f32Data + 0.5f);
      }
   }

   return(u16LocalReturnValue);
}
# 273 "bswcdd\\F32SRV\\F32SRV_API.c"
sint16 F32SRV_s16F32ToSint16
(
   float32 f32Data,

   sint16 s16UnderflowValue,


   sint16 s16OverflowValue,


   sint16 s16NanValue

)
{
   sint16 s16LocalReturnValue;

   if ((boolean)((f32Data != f32Data) ? (boolean)(1 != 0) : (boolean)(0 != 0) ) == (boolean)(1 != 0))
   {

      s16LocalReturnValue = s16NanValue;
   }
   else
   {
      if (f32Data > (float32)32767)
      {

         s16LocalReturnValue = s16OverflowValue;
      }
      else if (f32Data < (float32)(-32767 - 1))
      {

         s16LocalReturnValue = s16UnderflowValue;
      }
      else
      {

         if (f32Data < 0.0f)
         {

            s16LocalReturnValue = (sint16)(f32Data - 0.5f);
         }
         else if (f32Data > 0.0f)
         {

            s16LocalReturnValue = (sint16)(f32Data + 0.5f);
         }
         else
         {

            s16LocalReturnValue = 0;
         }
      }
   }

   return(s16LocalReturnValue);
}
# 339 "bswcdd\\F32SRV\\F32SRV_API.c"
uint32 F32SRV_u32F32ToUint32
(
   float32 f32Data,

   uint32 u32UnderflowValue,


   uint32 u32OverflowValue,


   uint32 u32NanValue

)
{
   uint32 u32LocalReturnValue;

   if ((boolean)((f32Data != f32Data) ? (boolean)(1 != 0) : (boolean)(0 != 0) ) == (boolean)(1 != 0))
   {

      u32LocalReturnValue = u32NanValue;
   }
   else
   {


      if (f32Data >= 4294967296.0f)
      {

         u32LocalReturnValue = u32OverflowValue;
      }
      else if (f32Data < (float32)0)
      {

         u32LocalReturnValue = u32UnderflowValue;
      }
      else
      {




         if (f32Data < 8388608.0f)
         {
            u32LocalReturnValue = (uint32)(f32Data + 0.5f);
         }
         else
         {
            u32LocalReturnValue = (uint32)f32Data;
         }
      }
   }

   return(u32LocalReturnValue);
}
# 403 "bswcdd\\F32SRV\\F32SRV_API.c"
sint32 F32SRV_s32F32ToSint32
(
   float32 f32Data,

   sint32 s32UnderflowValue,


   sint32 s32OverflowValue,


   sint32 s32NanValue

)
{
   sint32 s32LocalReturnValue;

   if ((boolean)((f32Data != f32Data) ? (boolean)(1 != 0) : (boolean)(0 != 0) ) == (boolean)(1 != 0))
   {

      s32LocalReturnValue = s32NanValue;
   }
   else
   {


      if (f32Data >= 2147483648.0f)
      {

         s32LocalReturnValue = s32OverflowValue;
      }
      else if (f32Data < (float32)(-2147483647l - 1))
      {

         s32LocalReturnValue = s32UnderflowValue;
      }
      else
      {

         if ( (f32Data < 0.0f) && (f32Data > -8388608.0f) )
         {

            s32LocalReturnValue = (sint32)(f32Data - 0.5f);
         }
         else if ((f32Data > 0.0f) && (f32Data < 8388608.0f))
         {

            s32LocalReturnValue = (sint32)(f32Data + 0.5f);
         }
         else
         {



            s32LocalReturnValue = (sint32)f32Data;
         }
      }
   }

   return(s32LocalReturnValue);
}



# 1 "bswcdd\\F32SRV\\F32SRV_MemMap.h" 1
# 77 "bswcdd\\F32SRV\\F32SRV_MemMap.h"
#pragma section
# 467 "bswcdd\\F32SRV\\F32SRV_API.c" 2
