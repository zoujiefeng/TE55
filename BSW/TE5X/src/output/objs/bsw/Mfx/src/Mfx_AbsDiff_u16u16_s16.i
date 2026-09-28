# 1 "bsw\\Mfx\\src\\Mfx_AbsDiff_u16u16_s16.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bsw\\Mfx\\src\\Mfx_AbsDiff_u16u16_s16.c"
# 12 "bsw\\Mfx\\src\\Mfx_AbsDiff_u16u16_s16.c"
# 1 ".\\output\\inc/Mfx.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 1
# 16 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h"
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
# 17 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Types.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Types.h"
typedef unsigned long long Mfx_uint64;
typedef signed long long Mfx_sint64;


typedef struct
{




    uint32 l;
    sint32 h;

} Mfx_sint64s;


typedef union
{
    Mfx_sint64 s64;
    Mfx_sint64s s64s;
} Mfx_sint64u;


typedef struct
{





    uint32 l;
    uint32 h;


} Mfx_uint64s;


typedef union
{
    Mfx_uint64 u64;
    Mfx_uint64s u64s;
} Mfx_uint64u;
# 18 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 1 ".\\output\\inc/Mfx_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\Mfx_Cfg.h" 1
# 562 ".\\output\\inc/..\\..\\bsw\\Mfx\\Mfx_Cfg.h"
# 1 ".\\output\\inc/Mfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 1
# 18 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 19 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 2
# 2 ".\\output\\inc/Mfx_MemMap.h" 2
# 563 ".\\output\\inc/..\\..\\bsw\\Mfx\\Mfx_Cfg.h" 2
    extern sint16 Mfx_Abs_s16_s16(sint16 x_value);
    extern uint16 Mfx_Abs_s16_u16(sint16 x_value);
    extern sint16 Mfx_Abs_s32_s16(sint32 x_value);
    extern sint32 Mfx_Abs_s32_s32(sint32 x_value);
    extern sint8 Mfx_Abs_s32_s8(sint32 x_value);
    extern uint16 Mfx_Abs_s32_u16(sint32 x_value);
    extern uint32 Mfx_Abs_s32_u32(sint32 x_value);
    extern uint8 Mfx_Abs_s32_u8(sint32 x_value);
    extern sint8 Mfx_Abs_s8_s8(sint8 x_value);
    extern uint8 Mfx_Abs_s8_u8(sint8 x_value);
    extern sint16 Mfx_AbsDiff_s16s16_s16(sint16 x_value, sint16 y_value);
    extern sint8 Mfx_AbsDiff_s16s16_s8(sint16 x_value, sint16 y_value);
    extern uint16 Mfx_AbsDiff_s16s16_u16(sint16 x_value, sint16 y_value);
    extern uint8 Mfx_AbsDiff_s16s16_u8(sint16 x_value, sint16 y_value);
    extern sint16 Mfx_AbsDiff_s32s32_s16(sint32 x_value, sint32 y_value);
    extern sint32 Mfx_AbsDiff_s32s32_s32(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_AbsDiff_s32s32_s8(sint32 x_value, sint32 y_value);
    extern uint16 Mfx_AbsDiff_s32s32_u16(sint32 x_value, sint32 y_value);
    extern uint32 Mfx_AbsDiff_s32s32_u32(sint32 x_value, sint32 y_value);
    extern uint8 Mfx_AbsDiff_s32s32_u8(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_AbsDiff_s8s8_s8(sint8 x_value, sint8 y_value);
    extern uint8 Mfx_AbsDiff_s8s8_u8(sint8 x_value, sint8 y_value);
    extern sint16 Mfx_AbsDiff_u16s16_s16(uint16 x_value, sint16 y_value);
    extern sint8 Mfx_AbsDiff_u16s16_s8(uint16 x_value, sint16 y_value);
    extern uint16 Mfx_AbsDiff_u16s16_u16(uint16 x_value, sint16 y_value);
    extern uint8 Mfx_AbsDiff_u16s16_u8(uint16 x_value, sint16 y_value);
    extern sint16 Mfx_AbsDiff_u16u16_s16(uint16 x_value, uint16 y_value);
    extern sint8 Mfx_AbsDiff_u16u16_s8(uint16 x_value, uint16 y_value);
    extern uint16 Mfx_AbsDiff_u16u16_u16(uint16 x_value, uint16 y_value);
    extern uint8 Mfx_AbsDiff_u16u16_u8(uint16 x_value, uint16 y_value);
    extern sint16 Mfx_Absdiff_u32s32_s16(uint32 x_value, sint32 y_value);
    extern sint32 Mfx_Absdiff_u32s32_s32(uint32 x_value, sint32 y_value);
    extern sint8 Mfx_Absdiff_u32s32_s8(uint32 x_value, sint32 y_value);
    extern uint16 Mfx_AbsDiff_u32s32_u16(uint32 x_value, sint32 y_value);
    extern uint32 Mfx_AbsDiff_u32s32_u32(uint32 x_value, sint32 y_value);
    extern uint8 Mfx_AbsDiff_u32s32_u8(uint32 x_value, sint32 y_value);
    extern sint16 Mfx_Absdiff_u32u32_s16(uint32 x_value, uint32 y_value);
    extern sint32 Mfx_Absdiff_u32u32_s32(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_Absdiff_u32u32_s8(uint32 x_value, uint32 y_value);
    extern uint16 Mfx_AbsDiff_u32u32_u16(uint32 x_value, uint32 y_value);
    extern uint32 Mfx_AbsDiff_u32u32_u32(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_AbsDiff_u32u32_u8(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_AbsDiff_u8s8_s8(uint8 x_value, sint8 y_value);
    extern uint8 Mfx_AbsDiff_u8s8_u8(uint8 x_value, sint8 y_value);
    extern sint8 Mfx_AbsDiff_u8u8_s8(uint8 x_value, uint8 y_value);
    extern uint8 Mfx_AbsDiff_u8u8_u8(uint8 x_value, uint8 y_value);
    extern sint16 Mfx_AbsDiffP2_s16s16_s16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_AbsDiffP2_s16s16_u16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_AbsDiffP2_u16s16_s16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_AbsDiffP2_u16s16_u16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_AbsDiffP2_u16u16_s16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_AbsDiffP2_u16u16_u16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_AbsP2_s16_s16(sint16 x, sint16 a, sint16 c);
    extern uint16 Mfx_AbsP2_s16_u16(sint16 x, sint16 a, sint16 c);
    extern sint32 Mfx_AbsP2_s32_s32(sint32 x, sint16 a, sint16 c);
    extern uint32 Mfx_AbsP2_s32_u32(sint32 x, sint16 a, sint16 c);
    extern sint16 Mfx_Add_s16s16_s16(sint16 x_value, sint16 y_value);
    extern sint8 Mfx_Add_s16s16_s8(sint16 x_value, sint16 y_value);
    extern uint16 Mfx_Add_s16s16_u16(sint16 x_value, sint16 y_value);
    extern uint8 Mfx_Add_s16s16_u8(sint16 x_value, sint16 y_value);
    extern sint16 Mfx_Add_s32s32_s16(sint32 x_value, sint32 y_value);
    extern sint32 Mfx_Add_s32s32_s32(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_Add_s32s32_s8(sint32 x_value, sint32 y_value);
    extern uint16 Mfx_Add_s32s32_u16(sint32 x_value, sint32 y_value);
    extern uint32 Mfx_Add_s32s32_u32(sint32 x_value, sint32 y_value);
    extern uint8 Mfx_Add_s32s32_u8(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_Add_s8s8_s8(sint8 x_value, sint8 y_value);
    extern uint8 Mfx_Add_s8s8_u8(sint8 x_value, sint8 y_value);
    extern sint16 Mfx_Add_u16s16_s16(uint16 x_value, sint16 y_value);
    extern sint8 Mfx_Add_u16s16_s8(uint16 x_value, sint16 y_value);
    extern uint16 Mfx_Add_u16s16_u16(uint16 x_value, sint16 y_value);
    extern uint8 Mfx_Add_u16s16_u8(uint16 x_value, sint16 y_value);
    extern sint16 Mfx_Add_u16u16_s16(uint16 x_value, uint16 y_value);
    extern sint8 Mfx_Add_u16u16_s8(uint16 x_value, uint16 y_value);
    extern uint16 Mfx_Add_u16u16_u16(uint16 x_value, uint16 y_value);
    extern uint8 Mfx_Add_u16u16_u8(uint16 x_value, uint16 y_value);
    extern sint16 Mfx_Add_u32s32_s16(uint32 x_value, sint32 y_value);
    extern sint32 Mfx_Add_u32s32_s32(uint32 x_value, sint32 y_value);
    extern sint8 Mfx_Add_u32s32_s8(uint32 x_value, sint32 y_value);
    extern uint16 Mfx_Add_u32s32_u16(uint32 x_value, sint32 y_value);
    extern uint32 Mfx_Add_u32s32_u32(uint32 x_value, sint32 y_value);
    extern uint8 Mfx_Add_u32s32_u8(uint32 x_value, sint32 y_value);
    extern sint16 Mfx_Add_u32u32_s16(uint32 x_value, uint32 y_value);
    extern sint32 Mfx_Add_u32u32_s32(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_Add_u32u32_s8(uint32 x_value, uint32 y_value);
    extern uint16 Mfx_Add_u32u32_u16(uint32 x_value, uint32 y_value);
    extern uint32 Mfx_Add_u32u32_u32(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_Add_u32u32_u8(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_Add_u8s8_s8(uint8 x_value, sint8 y_value);
    extern uint8 Mfx_Add_u8s8_u8(uint8 x_value, sint8 y_value);
    extern sint8 Mfx_Add_u8u8_s8(uint8 x_value, uint8 y_value);
    extern uint8 Mfx_Add_u8u8_u8(uint8 x_value, uint8 y_value);
    extern sint16 Mfx_AddP2_s16s16_s16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_AddP2_s16s16_u16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_AddP2_s32s32_s32(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
    extern uint32 Mfx_AddP2_s32s32_u32(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
    extern sint16 Mfx_AddP2_u16s16_s16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_AddP2_u16s16_u16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_AddP2_u16u16_s16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_AddP2_u16u16_u16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_AddP2_u32s32_s32(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
    extern uint32 Mfx_AddP2_u32s32_u32(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
    extern sint32 Mfx_AddP2_u32u32_s32(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
    extern uint32 Mfx_AddP2_u32u32_u32(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
    extern sint32 Mfx_ConvertP2_s16_s32(sint16 x, sint16 a, sint16 c);
    extern sint8 Mfx_ConvertP2_s16_s8(sint16 x, sint16 a, sint16 c);
    extern sint16 Mfx_ConvertP2_s32_s16(sint32 x, sint16 a, sint16 c);
    extern sint16 Mfx_ConvertP2_s8_s16(sint8 x, sint16 a, sint16 c);
    extern uint32 Mfx_ConvertP2_u16_u32(uint16 x, sint16 a, sint16 c);
    extern uint8 Mfx_ConvertP2_u16_u8(uint16 x, sint16 a, sint16 c);
    extern uint16 Mfx_ConvertP2_u32_u16(uint32 x, sint16 a, sint16 c);
    extern uint16 Mfx_ConvertP2_u8_u16(uint8 x, sint16 a, sint16 c);
    extern sint16 Mfx_Div_s16s16_s16(sint16 x_value, sint16 y_value);
    extern sint8 Mfx_Div_s16s16_s8(sint16 x_value, sint16 y_value);
    extern uint16 Mfx_Div_s16s16_u16(sint16 x_value, sint16 y_value);
    extern uint8 Mfx_Div_s16s16_u8(sint16 x_value, sint16 y_value);
    extern sint16 Mfx_Div_s16u16_s16(sint16 x_value, uint16 y_value);
    extern sint8 Mfx_Div_s16u16_s8(sint16 x_value, uint16 y_value);
    extern uint16 Mfx_Div_s16u16_u16(sint16 x_value, uint16 y_value);
    extern uint8 Mfx_Div_s16u16_u8(sint16 x_value, uint16 y_value);
    extern sint16 Mfx_Div_s32s16_s16(sint32 x_value, sint16 y_value);
    extern sint16 Mfx_Div_s32s32_s16(sint32 x_value, sint32 y_value);
    extern sint32 Mfx_Div_s32s32_s32(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_Div_s32s32_s8(sint32 x_value, sint32 y_value);
    extern uint16 Mfx_Div_s32s32_u16(sint32 x_value, sint32 y_value);
    extern uint32 Mfx_Div_s32s32_u32(sint32 x_value, sint32 y_value);
    extern uint8 Mfx_Div_s32s32_u8(sint32 x_value, sint32 y_value);
    extern uint16 Mfx_Div_s32u16_u16(sint32 x_value, uint16 y_value);
    extern sint16 Mfx_Div_s32u32_s16(sint32 x_value, uint32 y_value);
    extern sint32 Mfx_Div_s32u32_s32(sint32 x_value, uint32 y_value);
    extern sint8 Mfx_Div_s32u32_s8(sint32 x_value, uint32 y_value);
    extern uint16 Mfx_Div_s32u32_u16(sint32 x_value, uint32 y_value);
    extern uint32 Mfx_Div_s32u32_u32(sint32 x_value, uint32 y_value);
    extern uint8 Mfx_Div_s32u32_u8(sint32 x_value, uint32 y_value);
    extern sint8 Mfx_Div_s8s8_s8(sint8 x_value, sint8 y_value);
    extern uint8 Mfx_Div_s8s8_u8(sint8 x_value, sint8 y_value);
    extern sint8 Mfx_Div_s8u8_s8(sint8 x_value, uint8 y_value);
    extern uint8 Mfx_Div_s8u8_u8(sint8 x_value, uint8 y_value);
    extern sint16 Mfx_Div_u16s16_s16(uint16 x_value, sint16 y_value);
    extern sint8 Mfx_Div_u16s16_s8(uint16 x_value, sint16 y_value);
    extern uint16 Mfx_Div_u16s16_u16(uint16 x_value, sint16 y_value);
    extern uint8 Mfx_Div_u16s16_u8(uint16 x_value, sint16 y_value);
    extern sint16 Mfx_Div_u16u16_s16(uint16 x_value, uint16 y_value);
    extern sint8 Mfx_Div_u16u16_s8(uint16 x_value, uint16 y_value);
    extern uint16 Mfx_Div_u16u16_u16(uint16 x_value, uint16 y_value);
    extern uint8 Mfx_Div_u16u16_u8(uint16 x_value, uint16 y_value);
    extern sint16 Mfx_Div_u32s32_s16(uint32 x_value, sint32 y_value);
    extern sint32 Mfx_Div_u32s32_s32(uint32 x_value, sint32 y_value);
    extern sint8 Mfx_Div_u32s32_s8(uint32 x_value, sint32 y_value);
    extern uint16 Mfx_Div_u32s32_u16(uint32 x_value, sint32 y_value);
    extern uint32 Mfx_Div_u32s32_u32(uint32 x_value, sint32 y_value);
    extern uint8 Mfx_Div_u32s32_u8(uint32 x_value, sint32 y_value);
    extern uint16 Mfx_Div_u32u16_u16(uint32 x_value, uint16 y_value);
    extern uint32 Mfx_Div_u32u16_u32(uint32 x_value, uint16 y_value);
    extern sint16 Mfx_Div_u32u32_s16(uint32 x_value, uint32 y_value);
    extern sint32 Mfx_Div_u32u32_s32(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_Div_u32u32_s8(uint32 x_value, uint32 y_value);
    extern uint16 Mfx_Div_u32u32_u16(uint32 x_value, uint32 y_value);
    extern uint32 Mfx_Div_u32u32_u32(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_Div_u32u32_u8(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_Div_u8s8_s8(uint8 x_value, sint8 y_value);
    extern uint8 Mfx_Div_u8s8_u8(uint8 x_value, sint8 y_value);
    extern sint8 Mfx_Div_u8u8_s8(uint8 x_value, uint8 y_value);
    extern uint8 Mfx_Div_u8u8_u8(uint8 x_value, uint8 y_value);
    extern sint16 Mfx_DivP2_s16s16_s16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_DivP2_s16s16_u16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_DivP2_s16u16_s16(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_DivP2_s16u16_u16(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_DivP2_s32s32_s32(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
    extern uint32 Mfx_DivP2_s32s32_u32(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_DivP2_s32u32_s32(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
    extern uint32 Mfx_DivP2_s32u32_u32(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_DivP2_u16s16_s16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_DivP2_u16s16_u16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_DivP2_u16u16_s16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_DivP2_u16u16_u16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_DivP2_u32s32_s32(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
    extern uint32 Mfx_DivP2_u32s32_u32(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_DivP2_u32u32_s32(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
    extern uint32 Mfx_DivP2_u32u32_u32(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_DivShLeft_s16s16u8_s16(sint16 x_value, sint16 y_value, uint8 shift);
    extern sint16 Mfx_DivShLeft_s16u16u8_s16(sint16 x_value, uint16 y_value, uint8 shift);
    extern sint16 Mfx_DivShLeft_s32s32u8_s16(sint32 x_value, sint32 y_value, uint8 shift);
    extern sint32 Mfx_DivShLeft_s32s32u8_s32(sint32 x_value, sint32 y_value, uint8 shift);
    extern sint8 Mfx_DivShLeft_s32s32u8_s8(sint32 x_value, sint32 y_value, uint8 shift);
    extern uint16 Mfx_DivShLeft_s32s32u8_u16(sint32 x_value, sint32 y_value, uint8 shift);
    extern uint32 Mfx_DivShLeft_s32s32u8_u32(sint32 x_value, sint32 y_value, uint8 shift);
    extern uint8 Mfx_DivShLeft_s32s32u8_u8(sint32 x_value, sint32 y_value, uint8 shift);
    extern sint16 Mfx_DivShLeft_s32u32u8_s16(sint32 x_value, uint32 y_value, uint8 shift);
    extern sint32 Mfx_DivShLeft_s32u32u8_s32(sint32 x_value, uint32 y_value, uint8 shift);
    extern sint8 Mfx_DivShLeft_s32u32u8_s8(sint32 x_value, uint32 y_value, uint8 shift);
    extern uint16 Mfx_DivShLeft_s32u32u8_u16(sint32 x_value, uint32 y_value, uint8 shift);
    extern uint32 Mfx_DivShLeft_s32u32u8_u32(sint32 x_value, uint32 y_value, uint8 shift);
    extern uint8 Mfx_DivShLeft_s32u32u8_u8(sint32 x_value, uint32 y_value, uint8 shift);
    extern uint16 Mfx_DivShLeft_u16u16u8_u16(uint16 x_value, uint16 y_value, uint8 shift);
    extern uint8 Mfx_DivShLeft_u16u16u8_u8(uint16 x_value, uint16 y_value, uint8 shift);
    extern sint16 Mfx_DivShLeft_u32s32u8_s16(uint32 x_value, sint32 y_value, uint8 shift);
    extern sint32 Mfx_DivShLeft_u32s32u8_s32(uint32 x_value, sint32 y_value, uint8 shift);
    extern sint8 Mfx_DivShLeft_u32s32u8_s8(uint32 x_value, sint32 y_value, uint8 shift);
    extern uint16 Mfx_DivShLeft_u32s32u8_u16(uint32 x_value, sint32 y_value, uint8 shift);
    extern uint32 Mfx_DivShLeft_u32s32u8_u32(uint32 x_value, sint32 y_value, uint8 shift);
    extern uint8 Mfx_DivShLeft_u32s32u8_u8(uint32 x_value, sint32 y_value, uint8 shift);
    extern sint16 Mfx_DivShLeft_u32u32u8_s16(uint32 x_value, uint32 y_value, uint8 shift);
    extern sint32 Mfx_DivShLeft_u32u32u8_s32(uint32 x_value, uint32 y_value, uint8 shift);
    extern sint8 Mfx_DivShLeft_u32u32u8_s8(uint32 x_value, uint32 y_value, uint8 shift);
    extern uint16 Mfx_DivShLeft_u32u32u8_u16(uint32 x_value, uint32 y_value, uint8 shift);
    extern uint32 Mfx_DivShLeft_u32u32u8_u32(uint32 x_value, uint32 y_value, uint8 shift);
    extern uint8 Mfx_DivShLeft_u32u32u8_u8(uint32 x_value, uint32 y_value, uint8 shift);
    extern uint8 Mfx_DivShLeft_u8u8u8_u8(uint8 x_value, uint8 y_value, uint8 shift);
    extern sint16 Mfx_Limit_s16(sint16 value, sint16 min_value, sint16 max_value);
    extern sint32 Mfx_Limit_s32(sint32 value, sint32 min_value, sint32 max_value);
    extern sint8 Mfx_Limit_s8(sint8 value, sint8 min_value, sint8 max_value);
    extern uint16 Mfx_Limit_u16(uint16 value, uint16 min_value, uint16 max_value);
    extern uint32 Mfx_Limit_u32(uint32 value, uint32 min_value, uint32 max_value);
    extern uint8 Mfx_Limit_u8(uint8 value, uint8 min_value, uint8 max_value);
    extern sint16 Mfx_Max_s16(sint16 x_value, sint16 y_value);
    extern sint32 Mfx_Max_s32(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_Max_s8(sint8 x_value, sint8 y_value);
    extern uint16 Mfx_Max_u16(uint16 x_value, uint16 y_value);
    extern uint32 Mfx_Max_u32(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_Max_u8(uint8 x_value, uint8 y_value);
    extern sint16 Mfx_Min_s16(sint16 x_value, sint16 y_value);
    extern sint32 Mfx_Min_s32(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_Min_s8(sint8 x_value, sint8 y_value);
    extern uint16 Mfx_Min_u16(uint16 x_value, uint16 y_value);
    extern uint32 Mfx_Min_u32(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_Min_u8(uint8 x_value, uint8 y_value);
    extern sint16 Mfx_Minmax_s16(sint16 value, sint16 minmax_value);
    extern sint32 Mfx_Minmax_s32(sint32 value, sint32 minmax_value);
    extern sint8 Mfx_Minmax_s8(sint8 value, sint8 minmax_value);
    extern uint16 Mfx_Minmax_u16(uint16 value, uint16 minmax_value);
    extern uint32 Mfx_Minmax_u32(uint32 value, uint32 minmax_value);
    extern uint8 Mfx_Minmax_u8(uint8 value, uint8 minmax_value);
    extern sint16 Mfx_Mod_s16(sint16 x_value, sint16 y_value);
    extern sint32 Mfx_Mod_s32(sint32 x_value, sint32 y_value);
    extern sint16 Mfx_Mod_s32s32_s16(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_Mod_s32s32_s8(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_Mod_s8(sint8 x_value, sint8 y_value);
    extern uint16 Mfx_Mod_u16(uint16 x_value, uint16 y_value);
    extern uint32 Mfx_Mod_u32(uint32 x_value, uint32 y_value);
    extern uint16 Mfx_Mod_u32u32_u16(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_Mod_u32u32_u8(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_Mod_u8(uint8 x_value, uint8 y_value);
    extern sint16 Mfx_Mul_s16s16_s16(sint16 x_value, sint16 y_value);
    extern sint32 Mfx_Mul_s16s16_s32(sint16 x_value, sint16 y_value);
    extern sint8 Mfx_Mul_s16s16_s8(sint16 x_value, sint16 y_value);
    extern uint16 Mfx_Mul_s16s16_u16(sint16 x_value, sint16 y_value);
    extern uint8 Mfx_Mul_s16s16_u8(sint16 x_value, sint16 y_value);
    extern sint16 Mfx_Mul_s16u16_s16(sint16 x_value, uint16 y_value);
    extern sint32 Mfx_Mul_s16u16_s32(sint16 x_value, uint16 y_value);
    extern uint16 Mfx_Mul_s16u16_u16(sint16 x_value, uint16 y_value);
    extern sint16 Mfx_Mul_s32s32_s16(sint32 x_value, sint32 y_value);
    extern sint32 Mfx_Mul_s32s32_s32(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_Mul_s32s32_s8(sint32 x_value, sint32 y_value);
    extern uint16 Mfx_Mul_s32s32_u16(sint32 x_value, sint32 y_value);
    extern uint32 Mfx_Mul_s32s32_u32(sint32 x_value, sint32 y_value);
    extern uint8 Mfx_Mul_s32s32_u8(sint32 x_value, sint32 y_value);
    extern sint32 Mfx_Mul_s32u16_s32(sint32 x_value, uint16 y_value);
    extern sint8 Mfx_Mul_s8s8_s8(sint8 x_value, sint8 y_value);
    extern uint8 Mfx_Mul_s8s8_u8(sint8 x_value, sint8 y_value);
    extern sint8 Mfx_Mul_s8u8_s8(sint8 x_value, uint8 y_value);
    extern uint8 Mfx_Mul_s8u8_u8(sint8 x_value, uint8 y_value);
    extern sint16 Mfx_Mul_u16s16_s16(uint16 x_value, sint16 y_value);
    extern sint32 Mfx_Mul_u16s16_s32(uint16 x_value, sint16 y_value);
    extern sint8 Mfx_Mul_u16s16_s8(uint16 x_value, sint16 y_value);
    extern uint16 Mfx_Mul_u16s16_u16(uint16 x_value, sint16 y_value);
    extern uint8 Mfx_Mul_u16s16_u8(uint16 x_value, sint16 y_value);
    extern sint16 Mfx_Mul_u16u16_s16(uint16 x_value, uint16 y_value);
    extern sint8 Mfx_Mul_u16u16_s8(uint16 x_value, uint16 y_value);
    extern uint16 Mfx_Mul_u16u16_u16(uint16 x_value, uint16 y_value);
    extern uint32 Mfx_Mul_u16u16_u32(uint16 x_value, uint16 y_value);
    extern uint8 Mfx_Mul_u16u16_u8(uint16 x_value, uint16 y_value);
    extern sint16 Mfx_Mul_u32s32_s16(uint32 x_value, sint32 y_value);
    extern sint32 Mfx_Mul_u32s32_s32(uint32 x_value, sint32 y_value);
    extern sint8 Mfx_Mul_u32s32_s8(uint32 x_value, sint32 y_value);
    extern uint16 Mfx_Mul_u32s32_u16(uint32 x_value, sint32 y_value);
    extern uint32 Mfx_Mul_u32s32_u32(uint32 x_value, sint32 y_value);
    extern uint8 Mfx_Mul_u32s32_u8(uint32 x_value, sint32 y_value);
    extern uint32 Mfx_Mul_u32u16_u32(uint32 x_value, uint16 y_value);
    extern sint16 Mfx_Mul_u32u32_s16(uint32 x_value, uint32 y_value);
    extern sint32 Mfx_Mul_u32u32_s32(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_Mul_u32u32_s8(uint32 x_value, uint32 y_value);
    extern uint16 Mfx_Mul_u32u32_u16(uint32 x_value, uint32 y_value);
    extern uint32 Mfx_Mul_u32u32_u32(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_Mul_u32u32_u8(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_Mul_u8s8_s8(uint8 x_value, sint8 y_value);
    extern uint8 Mfx_Mul_u8s8_u8(uint8 x_value, sint8 y_value);
    extern sint8 Mfx_Mul_u8u8_s8(uint8 x_value, uint8 y_value);
    extern uint8 Mfx_Mul_u8u8_u8(uint8 x_value, uint8 y_value);
    extern sint16 Mfx_MulDiv_s16s16s16_s16(sint16 x_value, sint16 y_value, sint16 z_value);
    extern sint16 Mfx_MulDiv_s16s16u16_s16(sint16 x_value, sint16 y_value, uint16 z_value);
    extern sint16 Mfx_MulDiv_s16u16s16_s16(sint16 x_value, uint16 y_value, sint16 z_value);
    extern uint16 Mfx_MulDiv_s16u16s16_u16(sint16 x_value, uint16 y_value, sint16 z_value);
    extern sint16 Mfx_MulDiv_s16u16u16_s16(sint16 x_value, uint16 y_value, uint16 z_value);
    extern uint16 Mfx_MulDiv_s16u16u16_u16(sint16 x_value, uint16 y_value, uint16 z_value);
    extern sint16 Mfx_MulDiv_s32s32s16_s16(sint32 x_value, sint32 y_value, sint16 z_value);
    extern sint16 Mfx_MulDiv_s32s32s32_s16(sint32 x_value, sint32 y_value, sint32 z_value);
    extern sint32 Mfx_MulDiv_s32s32s32_s32(sint32 x_value, sint32 y_value, sint32 z_value);
    extern uint16 Mfx_MulDiv_s32s32s32_u16(sint32 x_value, sint32 y_value, sint32 z_value);
    extern sint32 Mfx_MulDiv_s32s32u32_s32(sint32 x_value, sint32 y_value, uint32 z_value);
    extern sint32 Mfx_MulDiv_s32u32s32_s32(sint32 x_value, uint32 y_value, sint32 z_value);
    extern sint32 Mfx_MulDiv_s32u32u32_s32(sint32 x_value, uint32 y_value, uint32 z_value);
    extern sint16 Mfx_MulDiv_u16s16s16_s16(uint16 x_value, sint16 y_value, sint16 z_value);
    extern uint16 Mfx_MulDiv_u16s16s16_u16(uint16 x_value, sint16 y_value, sint16 z_value);
    extern sint16 Mfx_MulDiv_u16s16u16_s16(uint16 x_value, sint16 y_value, uint16 z_value);
    extern uint16 Mfx_MulDiv_u16s16u16_u16(uint16 x_value, sint16 y_value, uint16 z_value);
    extern uint16 Mfx_MulDiv_u16u16u16_u16(uint16 x_value, uint16 y_value, uint16 z_value);
    extern sint32 Mfx_MulDiv_u32s32s32_s32(uint32 x_value, sint32 y_value, sint32 z_value);
    extern uint32 Mfx_MulDiv_u32s32s32_u32(uint32 x_value, sint32 y_value, sint32 z_value);
    extern sint32 Mfx_MulDiv_u32s32u32_s32(uint32 x_value, sint32 y_value, uint32 z_value);
    extern uint32 Mfx_MulDiv_u32s32u32_u32(uint32 x_value, sint32 y_value, uint32 z_value);
    extern uint32 Mfx_MulDiv_u32u32s32_u32(uint32 x_value, uint32 y_value, sint32 z_value);
    extern uint16 Mfx_MulDiv_u32u32u16_u16(uint32 x_value, uint32 y_value, uint16 z_value);
    extern uint16 Mfx_MulDiv_u32u32u32_u16(uint32 x_value, uint32 y_value, uint32 z_value);
    extern uint32 Mfx_MulDiv_u32u32u32_u32(uint32 x_value, uint32 y_value, uint32 z_value);
    extern sint16 Mfx_MulP2_s16s16_s16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_MulP2_s16s16_u16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_MulP2_s32s32_s32(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
    extern uint32 Mfx_MulP2_s32s32_u32(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_MulP2_u16s16_s16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_MulP2_u16s16_u16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_MulP2_u16u16_s16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_MulP2_u16u16_u16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_MulP2_u32s32_s32(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
    extern uint32 Mfx_MulP2_u32s32_u32(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_MulP2_u32u32_s32(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
    extern uint32 Mfx_MulP2_u32u32_u32(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_MulShRight_s16s16u8_s16(sint16 x_value, sint16 y_value, uint8 shift);
    extern sint8 Mfx_MulShRight_s16s16u8_s8(sint16 x_value, sint16 y_value, uint8 shift);
    extern uint16 Mfx_MulShRight_s16s16u8_u16(sint16 x_value, sint16 y_value, uint8 shift);
    extern uint8 Mfx_MulShRight_s16s16u8_u8(sint16 x_value, sint16 y_value, uint8 shift);
    extern sint16 Mfx_MulShRight_s32s32u8_s16(sint32 x_value, sint32 y_value, uint8 shift);
    extern sint32 Mfx_MulShRight_s32s32u8_s32(sint32 x_value, sint32 y_value, uint8 shift);
    extern sint8 Mfx_MulShRight_s32s32u8_s8(sint32 x_value, sint32 y_value, uint8 shift);
    extern uint16 Mfx_MulShRight_s32s32u8_u16(sint32 x_value, sint32 y_value, uint8 shift);
    extern uint32 Mfx_MulShRight_s32s32u8_u32(sint32 x_value, sint32 y_value, uint8 shift);
    extern uint8 Mfx_MulShRight_s32s32u8_u8(sint32 x_value, sint32 y_value, uint8 shift);
    extern sint16 Mfx_MulShRight_u32s32u8_s16(uint32 x_value, sint32 y_value, uint8 shift);
    extern sint32 Mfx_MulShRight_u32s32u8_s32(uint32 x_value, sint32 y_value, uint8 shift);
    extern sint8 Mfx_MulShRight_u32s32u8_s8(uint32 x_value, sint32 y_value, uint8 shift);
    extern uint16 Mfx_MulShRight_u32s32u8_u16(uint32 x_value, sint32 y_value, uint8 shift);
    extern uint32 Mfx_MulShRight_u32s32u8_u32(uint32 x_value, sint32 y_value, uint8 shift);
    extern uint8 Mfx_MulShRight_u32s32u8_u8(uint32 x_value, sint32 y_value, uint8 shift);
    extern sint16 Mfx_MulShRight_u32u32u8_s16(uint32 x_value, uint32 y_value, uint8 shift);
    extern sint32 Mfx_MulShRight_u32u32u8_s32(uint32 x_value, uint32 y_value, uint8 shift);
    extern sint8 Mfx_MulShRight_u32u32u8_s8(uint32 x_value, uint32 y_value, uint8 shift);
    extern uint16 Mfx_MulShRight_u32u32u8_u16(uint32 x_value, uint32 y_value, uint8 shift);
    extern uint32 Mfx_MulShRight_u32u32u8_u32(uint32 x_value, uint32 y_value, uint8 shift);
    extern uint8 Mfx_MulShRight_u32u32u8_u8(uint32 x_value, uint32 y_value, uint8 shift);
    extern sint16 Mfx_RDiv_s16s16_s16(sint16 x_value, sint16 y_value);
    extern sint8 Mfx_RDiv_s16s16_s8(sint16 x_value, sint16 y_value);
    extern uint16 Mfx_RDiv_s16s16_u16(sint16 x_value, sint16 y_value);
    extern uint8 Mfx_RDiv_s16s16_u8(sint16 x_value, sint16 y_value);
    extern sint16 Mfx_RDiv_s16u16_s16(sint16 x_value, uint16 y_value);
    extern sint8 Mfx_RDiv_s16u16_s8(sint16 x_value, uint16 y_value);
    extern uint16 Mfx_RDiv_s16u16_u16(sint16 x_value, uint16 y_value);
    extern uint8 Mfx_RDiv_s16u16_u8(sint16 x_value, uint16 y_value);
    extern sint16 Mfx_RDiv_s32s16_s16(sint32 x_value, sint16 y_value);
    extern sint16 Mfx_RDiv_s32s32_s16(sint32 x_value, sint32 y_value);
    extern sint32 Mfx_RDiv_s32s32_s32(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_RDiv_s32s32_s8(sint32 x_value, sint32 y_value);
    extern uint16 Mfx_RDiv_s32s32_u16(sint32 x_value, sint32 y_value);
    extern uint32 Mfx_RDiv_s32s32_u32(sint32 x_value, sint32 y_value);
    extern uint8 Mfx_RDiv_s32s32_u8(sint32 x_value, sint32 y_value);
    extern uint16 Mfx_RDiv_s32u16_u16(sint32 x_value, uint16 y_value);
    extern sint16 Mfx_RDiv_s32u32_s16(sint32 x_value, uint32 y_value);
    extern sint32 Mfx_RDiv_s32u32_s32(sint32 x_value, uint32 y_value);
    extern sint8 Mfx_RDiv_s32u32_s8(sint32 x_value, uint32 y_value);
    extern uint16 Mfx_RDiv_s32u32_u16(sint32 x_value, uint32 y_value);
    extern uint32 Mfx_RDiv_s32u32_u32(sint32 x_value, uint32 y_value);
    extern uint8 Mfx_RDiv_s32u32_u8(sint32 x_value, uint32 y_value);
    extern sint8 Mfx_RDiv_s8s8_s8(sint8 x_value, sint8 y_value);
    extern uint8 Mfx_RDiv_s8s8_u8(sint8 x_value, sint8 y_value);
    extern sint8 Mfx_RDiv_s8u8_s8(sint8 x_value, uint8 y_value);
    extern uint8 Mfx_RDiv_s8u8_u8(sint8 x_value, uint8 y_value);
    extern sint16 Mfx_RDiv_u16s16_s16(uint16 x_value, sint16 y_value);
    extern sint8 Mfx_RDiv_u16s16_s8(uint16 x_value, sint16 y_value);
    extern uint16 Mfx_RDiv_u16s16_u16(uint16 x_value, sint16 y_value);
    extern uint8 Mfx_RDiv_u16s16_u8(uint16 x_value, sint16 y_value);
    extern sint16 Mfx_RDiv_u16u16_s16(uint16 x_value, uint16 y_value);
    extern sint8 Mfx_RDiv_u16u16_s8(uint16 x_value, uint16 y_value);
    extern uint16 Mfx_RDiv_u16u16_u16(uint16 x_value, uint16 y_value);
    extern uint8 Mfx_RDiv_u16u16_u8(uint16 x_value, uint16 y_value);
    extern sint16 Mfx_RDiv_u32s32_s16(uint32 x_value, sint32 y_value);
    extern sint32 Mfx_RDiv_u32s32_s32(uint32 x_value, sint32 y_value);
    extern sint8 Mfx_RDiv_u32s32_s8(uint32 x_value, sint32 y_value);
    extern uint16 Mfx_RDiv_u32s32_u16(uint32 x_value, sint32 y_value);
    extern uint32 Mfx_RDiv_u32s32_u32(uint32 x_value, sint32 y_value);
    extern uint8 Mfx_RDiv_u32s32_u8(uint32 x_value, sint32 y_value);
    extern uint16 Mfx_RDiv_u32u16_u16(uint32 x_value, uint16 y_value);
    extern uint32 Mfx_RDiv_u32u16_u32(uint32 x_value, uint16 y_value);
    extern sint16 Mfx_RDiv_u32u32_s16(uint32 x_value, uint32 y_value);
    extern sint32 Mfx_RDiv_u32u32_s32(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_RDiv_u32u32_s8(uint32 x_value, uint32 y_value);
    extern uint16 Mfx_RDiv_u32u32_u16(uint32 x_value, uint32 y_value);
    extern uint32 Mfx_RDiv_u32u32_u32(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_RDiv_u32u32_u8(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_RDiv_u8s8_s8(uint8 x_value, sint8 y_value);
    extern uint8 Mfx_RDiv_u8s8_u8(uint8 x_value, sint8 y_value);
    extern sint8 Mfx_RDiv_u8u8_s8(uint8 x_value, uint8 y_value);
    extern uint8 Mfx_RDiv_u8u8_u8(uint8 x_value, uint8 y_value);
    extern sint16 Mfx_RMulDiv_s16s16s16_s16(sint16 x_value, sint16 y_value, sint16 z_value);
    extern sint16 Mfx_RMulDiv_s16s16u16_s16(sint16 x_value, sint16 y_value, uint16 z_value);
    extern sint16 Mfx_RMulDiv_s16u16s16_s16(sint16 x_value, uint16 y_value, sint16 z_value);
    extern uint16 Mfx_RMulDiv_s16u16s16_u16(sint16 x_value, uint16 y_value, sint16 z_value);
    extern sint16 Mfx_RMulDiv_s16u16u16_s16(sint16 x_value, uint16 y_value, uint16 z_value);
    extern uint16 Mfx_RMulDiv_s16u16u16_u16(sint16 x_value, uint16 y_value, uint16 z_value);
    extern sint16 Mfx_RMulDiv_s32s32s16_s16(sint32 x_value, sint32 y_value, sint16 z_value);
    extern sint16 Mfx_RMulDiv_s32s32s32_s16(sint32 x_value, sint32 y_value, sint32 z_value);
    extern sint32 Mfx_RMulDiv_s32s32s32_s32(sint32 x_value, sint32 y_value, sint32 z_value);
    extern uint16 Mfx_RMulDiv_s32s32s32_u16(sint32 x_value, sint32 y_value, sint32 z_value);
    extern sint32 Mfx_RMulDiv_s32s32u32_s32(sint32 x_value, sint32 y_value, uint32 z_value);
    extern sint32 Mfx_RMulDiv_s32u32s32_s32(sint32 x_value, uint32 y_value, sint32 z_value);
    extern sint32 Mfx_RMulDiv_s32u32u32_s32(sint32 x_value, uint32 y_value, uint32 z_value);
    extern sint16 Mfx_RMulDiv_u16s16s16_s16(uint16 x_value, sint16 y_value, sint16 z_value);
    extern uint16 Mfx_RMulDiv_u16s16s16_u16(uint16 x_value, sint16 y_value, sint16 z_value);
    extern sint16 Mfx_RMulDiv_u16s16u16_s16(uint16 x_value, sint16 y_value, uint16 z_value);
    extern uint16 Mfx_RMulDiv_u16s16u16_u16(uint16 x_value, sint16 y_value, uint16 z_value);
    extern uint16 Mfx_RMulDiv_u16u16u16_u16(uint16 x_value, uint16 y_value, uint16 z_value);
    extern sint32 Mfx_RMulDiv_u32s32s32_s32(uint32 x_value, sint32 y_value, sint32 z_value);
    extern uint32 Mfx_RMulDiv_u32s32s32_u32(uint32 x_value, sint32 y_value, sint32 z_value);
    extern sint32 Mfx_RMulDiv_u32s32u32_s32(uint32 x_value, sint32 y_value, uint32 z_value);
    extern uint32 Mfx_RMulDiv_u32s32u32_u32(uint32 x_value, sint32 y_value, uint32 z_value);
    extern uint32 Mfx_RMulDiv_u32u32s32_u32(uint32 x_value, uint32 y_value, sint32 z_value);
    extern uint16 Mfx_RMulDiv_u32u32u16_u16(uint32 x_value, uint32 y_value, uint16 z_value);
    extern uint16 Mfx_RMulDiv_u32u32u32_u16(uint32 x_value, uint32 y_value, uint32 z_value);
    extern uint32 Mfx_RMulDiv_u32u32u32_u32(uint32 x_value, uint32 y_value, uint32 z_value);
    extern sint16 Mfx_Sub_s16s16_s16(sint16 x_value, sint16 y_value);
    extern sint8 Mfx_Sub_s16s16_s8(sint16 x_value, sint16 y_value);
    extern uint16 Mfx_Sub_s16s16_u16(sint16 x_value, sint16 y_value);
    extern uint8 Mfx_Sub_s16s16_u8(sint16 x_value, sint16 y_value);
    extern sint16 Mfx_Sub_s16u16_s16(sint16 x_value, uint16 y_value);
    extern sint8 Mfx_Sub_s16u16_s8(sint16 x_value, uint16 y_value);
    extern uint16 Mfx_Sub_s16u16_u16(sint16 x_value, uint16 y_value);
    extern uint8 Mfx_Sub_s16u16_u8(sint16 x_value, uint16 y_value);
    extern sint16 Mfx_Sub_s32s32_s16(sint32 x_value, sint32 y_value);
    extern sint32 Mfx_Sub_s32s32_s32(sint32 x_value, sint32 y_value);
    extern sint8 Mfx_Sub_s32s32_s8(sint32 x_value, sint32 y_value);
    extern uint16 Mfx_Sub_s32s32_u16(sint32 x_value, sint32 y_value);
    extern uint32 Mfx_Sub_s32s32_u32(sint32 x_value, sint32 y_value);
    extern uint8 Mfx_Sub_s32s32_u8(sint32 x_value, sint32 y_value);
    extern sint16 Mfx_Sub_s32u32_s16(sint32 x_value, uint32 y_value);
    extern sint32 Mfx_Sub_s32u32_s32(sint32 x_value, uint32 y_value);
    extern sint8 Mfx_Sub_s32u32_s8(sint32 x_value, uint32 y_value);
    extern uint16 Mfx_Sub_s32u32_u16(sint32 x_value, uint32 y_value);
    extern uint32 Mfx_Sub_s32u32_u32(sint32 x_value, uint32 y_value);
    extern uint8 Mfx_Sub_s32u32_u8(sint32 x_value, uint32 y_value);
    extern sint8 Mfx_Sub_s8s8_s8(sint8 x_value, sint8 y_value);
    extern uint8 Mfx_Sub_s8s8_u8(sint8 x_value, sint8 y_value);
    extern sint8 Mfx_Sub_s8u8_s8(sint8 x_value, uint8 y_value);
    extern uint8 Mfx_Sub_s8u8_u8(sint8 x_value, uint8 y_value);
    extern sint16 Mfx_Sub_u16s16_s16(uint16 x_value, sint16 y_value);
    extern sint8 Mfx_Sub_u16s16_s8(uint16 x_value, sint16 y_value);
    extern uint16 Mfx_Sub_u16s16_u16(uint16 x_value, sint16 y_value);
    extern uint8 Mfx_Sub_u16s16_u8(uint16 x_value, sint16 y_value);
    extern sint16 Mfx_Sub_u16u16_s16(uint16 x_value, uint16 y_value);
    extern sint8 Mfx_Sub_u16u16_s8(uint16 x_value, uint16 y_value);
    extern uint16 Mfx_Sub_u16u16_u16(uint16 x_value, uint16 y_value);
    extern uint8 Mfx_Sub_u16u16_u8(uint16 x_value, uint16 y_value);
    extern sint16 Mfx_Sub_u32s32_s16(uint32 x_value, sint32 y_value);
    extern sint32 Mfx_Sub_u32s32_s32(uint32 x_value, sint32 y_value);
    extern sint8 Mfx_Sub_u32s32_s8(uint32 x_value, sint32 y_value);
    extern uint16 Mfx_Sub_u32s32_u16(uint32 x_value, sint32 y_value);
    extern uint32 Mfx_Sub_u32s32_u32(uint32 x_value, sint32 y_value);
    extern uint8 Mfx_Sub_u32s32_u8(uint32 x_value, sint32 y_value);
    extern sint16 Mfx_Sub_u32u32_s16(uint32 x_value, uint32 y_value);
    extern sint32 Mfx_Sub_u32u32_s32(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_Sub_u32u32_s8(uint32 x_value, uint32 y_value);
    extern uint16 Mfx_Sub_u32u32_u16(uint32 x_value, uint32 y_value);
    extern uint32 Mfx_Sub_u32u32_u32(uint32 x_value, uint32 y_value);
    extern uint8 Mfx_Sub_u32u32_u8(uint32 x_value, uint32 y_value);
    extern sint8 Mfx_Sub_u8s8_s8(uint8 x_value, sint8 y_value);
    extern uint8 Mfx_Sub_u8s8_u8(uint8 x_value, sint8 y_value);
    extern sint8 Mfx_Sub_u8u8_s8(uint8 x_value, uint8 y_value);
    extern uint8 Mfx_Sub_u8u8_u8(uint8 x_value, uint8 y_value);
    extern sint16 Mfx_SubP2_s16s16_s16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_SubP2_s16s16_u16(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_SubP2_s16u16_s16(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_SubP2_s16u16_u16(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_SubP2_s32s32_s32(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
    extern uint32 Mfx_SubP2_s32s32_u32(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
    extern sint32 Mfx_SubP2_s32u32_s32(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
    extern uint32 Mfx_SubP2_s32u32_u32(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
    extern sint16 Mfx_SubP2_u16s16_s16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_SubP2_u16s16_u16(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
    extern sint16 Mfx_SubP2_u16u16_s16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern uint16 Mfx_SubP2_u16u16_u16(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
    extern sint32 Mfx_SubP2_u32s32_s32(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
    extern uint32 Mfx_SubP2_u32s32_u32(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
    extern sint32 Mfx_SubP2_u32u32_s32(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
    extern uint32 Mfx_SubP2_u32u32_u32(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);

# 1 ".\\output\\inc/Mfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 1
# 25 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 26 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 2
# 2 ".\\output\\inc/Mfx_MemMap.h" 2
# 1056 ".\\output\\inc/..\\..\\bsw\\Mfx\\Mfx_Cfg.h" 2
# 2 ".\\output\\inc/Mfx_Cfg.h" 2
# 19 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 46 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h" 1
# 36 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ sint32 Mfx_Prv_ConvertP2_s16_s32_Inl(sint16 x, sint16 a, sint16 c);
static __inline__ sint8 Mfx_Prv_ConvertP2_s16_s8_Inl(sint16 x, sint16 a, sint16 c);
static __inline__ sint16 Mfx_Prv_ConvertP2_s32_s16_Inl(sint32 x, sint16 a, sint16 c);
static __inline__ sint16 Mfx_Prv_ConvertP2_s8_s16_Inl(sint8 x, sint16 a, sint16 c);
static __inline__ uint32 Mfx_Prv_ConvertP2_u16_u32_Inl(uint16 x, sint16 a, sint16 c);
static __inline__ uint8 Mfx_Prv_ConvertP2_u16_u8_Inl(uint16 x, sint16 a, sint16 c);
static __inline__ uint16 Mfx_Prv_ConvertP2_u32_u16_Inl(uint32 x, sint16 a, sint16 c);
static __inline__ uint16 Mfx_Prv_ConvertP2_u8_u16_Inl(uint8 x, sint16 a, sint16 c);
static __inline__ sint16 Mfx_Prv_Limit_s16_Inl(sint16 value, sint16 min_value, sint16 max_value);
static __inline__ sint32 Mfx_Prv_Limit_s32_Inl(sint32 value, sint32 min_value, sint32 max_value);
static __inline__ sint8 Mfx_Prv_Limit_s8_Inl(sint8 value, sint8 min_value, sint8 max_value);
static __inline__ uint16 Mfx_Prv_Limit_u16_Inl(uint16 value, uint16 min_value, uint16 max_value);
static __inline__ uint32 Mfx_Prv_Limit_u32_Inl(uint32 value, uint32 min_value, uint32 max_value);
static __inline__ uint8 Mfx_Prv_Limit_u8_Inl(uint8 value, uint8 min_value, uint8 max_value);
# 81 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ sint32 Mfx_Prv_ConvertP2_s16_s32_Inl(sint16 x, sint16 a, sint16 c)
{
    sint32 res_s32;
    sint32 tmp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;


    shift_s32 = (sint32) a - (sint32) c;




    if(shift_s32 >= 0)
    {
        if (x < 0)
        {
            tmp_u32 = (((uint32) (-x)) >> ((uint32)(shift_s32)));

            res_s32 = -((sint32) tmp_u32 );
        }
        else
        {


            tmp_u32 = ((uint32) x) >> ((uint32)(shift_s32));
            res_s32 = (sint32) (tmp_u32);
        }
    }
    else
    {
        shift_s32 = -shift_s32;
        tmp_u32 = ((uint32) x )<< ((uint32)(shift_s32));
        res_s32 = (sint32)(tmp_u32);
# 127 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
        tmp_u32 = ((uint32)(res_s32) >> ((uint32)(shift_s32)));

        if(res_s32 < 0L)
        {

            tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shift_s32));
        }

        tmp_s32 = (sint32)tmp_u32;


        if (tmp_s32 != x)
        {

            if (x < 0)
            {
                res_s32 = (sint32) (-((0x7fffffffL)) - 1L);
            }
            else
            {
                res_s32 = (sint32) (0x7fffffffL);
            }
        }
    }

    return (res_s32);
}
# 180 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ sint8 Mfx_Prv_ConvertP2_s16_s8_Inl(sint16 x, sint16 a, sint16 c)
{
    sint32 tmp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;


    shift_s32 = (sint32) c - (sint32) a;




    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (x < 0)
        {
            tmp_u32 = ((uint32) (-(x))) >> ((uint32)(shift_s32));

            tmp_s32 = -((sint32)tmp_u32 );
        }
        else
        {
            tmp_u32 = ((uint32) x) >> (uint32)(shift_s32);


            tmp_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = ((uint32) x << ((uint32)(shift_s32)));
        tmp_s32 = (sint32)tmp_u32;
    }


    if (tmp_s32 > (sint32) (0x7f))
    {
        tmp_s32 = (sint32) (0x7f);
    }
    if (tmp_s32 < (sint32) (-((0x7f)) - 1))
    {
        tmp_s32 = (sint32) (-((0x7f)) - 1);
    }

    return ((sint8) tmp_s32);
}
# 253 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ sint16 Mfx_Prv_ConvertP2_s32_s16_Inl(sint32 x, sint16 a, sint16 c)
{
    sint32 tmp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;


    shift_s32 = (sint32) c - (sint32) a;




    if (x < 0)
    {


        if (((shift_s32) >= 0) && (x <= (-((0x7fff)) - 1)))
        {
            tmp_s32 = (sint32) (-((0x7fff)) - 1);
        }
        else
        {

            if(shift_s32 < 0)
            {
                shift_s32 = -shift_s32;
                tmp_u32 = (((uint32) (-(x))) >> (uint32)(shift_s32));
                tmp_s32 = -((sint32) tmp_u32);
            }
            else
            {
                tmp_u32 = (((uint32) (-(x))) << (uint32)(shift_s32));
                tmp_s32 = -((sint32) tmp_u32 );
            }
        }
    }
    else
    {

        if (((shift_s32) >= 0) && (x >= (0x7fff)))
        {
            tmp_s32 = (sint32) (0x7fff);
        }
        else
        {

            if(shift_s32 < 0)
            {
                shift_s32 = -shift_s32;
                tmp_u32 = (((uint32) x) >> (uint32)(shift_s32));
                tmp_s32 = (sint32)tmp_u32;
            }
            else
            { tmp_u32 = (((uint32) x) << ((uint32)(shift_s32)));
                tmp_s32 = (sint32) tmp_u32;
            }
        }
    }


    if (tmp_s32 > (sint32) (0x7fff))
    {
        tmp_s32 = (sint32) (0x7fff);
    }
    if (tmp_s32 < (sint32) (-((0x7fff)) - 1))
    {
        tmp_s32 = (sint32) (-((0x7fff)) - 1);
    }

    return ((sint16) tmp_s32);
}
# 350 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ sint16 Mfx_Prv_ConvertP2_s8_s16_Inl(sint8 x, sint16 a, sint16 c)
{
    sint32 tmp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;


    shift_s32 = (sint32) c - (sint32) a;





    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (x < 0)
        {

            tmp_u32 = (((uint32) (-(x))) >> ((uint32)(shift_s32)));
            tmp_s32 = -((sint32)tmp_u32 );
        }
        else
        {


            tmp_u32 = (((uint32) x) >> ((uint32)(shift_s32)));
            tmp_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = (((uint32) x) << ((uint32)(shift_s32)));
        tmp_s32 = (sint32)tmp_u32;
    }


    if (tmp_s32 > (sint32) (0x7fff))
    {
        tmp_s32 = (sint32) (0x7fff);
    }
    if (tmp_s32 < (sint32) (-((0x7fff)) - 1))
    {
        tmp_s32 = (sint32) (-((0x7fff)) - 1);
    }

    return ((sint16) tmp_s32);
}
# 425 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ uint32 Mfx_Prv_ConvertP2_u16_u32_Inl(uint16 x, sint16 a, sint16 c)
{
    sint32 shift_s32;
    uint32 res_u32;
    uint32 tmp_s32;


    shift_s32 = (sint32) c - (sint32) a;


    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) x) >> (uint32)(shift_s32));
    }
    else
    {
        res_u32 = (((uint32) x) << (uint32)(shift_s32));
# 456 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
        tmp_s32 = ((res_u32) >> (uint32)(shift_s32));


        if (tmp_s32 != x)
        {
            res_u32 = (uint32) (0xffffffffuL);
        }
    }

    return ((uint32) (res_u32));
}
# 494 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ uint8 Mfx_Prv_ConvertP2_u16_u8_Inl(uint16 x, sint16 a, sint16 c)
{
    uint32 tmp_u32;
    sint32 shift_s32;


    shift_s32 = (sint32) c - (sint32) a;


    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        tmp_u32 = (((uint32) x) >> (uint32)(shift_s32));
    }
    else
    {
        tmp_u32 = (((uint32) x) << (uint32)(shift_s32));
    }

    if (tmp_u32 > (0xffu))
    {
        tmp_u32 = (0xffu);
    }

    return ((uint8) (tmp_u32));
}
# 547 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ uint16 Mfx_Prv_ConvertP2_u32_u16_Inl(uint32 x, sint16 a, sint16 c)
{
    uint32 tmp_u32;
    sint32 shift_s32;


    shift_s32 = (sint32) c - (sint32) a;


    if (((shift_s32) >= 0) && (x >= (uint32) (0xffff)))
    {
        tmp_u32 = (0xffff);
    }
    else
    {

        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = (((uint32) x) >> ((uint32)(shift_s32)));
        }
        else
        {
            tmp_u32 = (((uint32) x) << ((uint32)(shift_s32)));
        }
    }


    if (tmp_u32 > (0xffffu))
    {
        tmp_u32 = (0xffffu);
    }

    return ((uint16) (tmp_u32));
}
# 609 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ uint16 Mfx_Prv_ConvertP2_u8_u16_Inl(uint8 x, sint16 a, sint16 c)
{
    uint32 tmp_s32;
    sint32 shift_s32;


    shift_s32 = (sint32) c - (sint32) a;


    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        tmp_s32 = ((uint32) (x) >> ((uint32)(shift_s32)));
    }
    else
    {
        tmp_s32 = ((uint32) (x) << ((uint32)(shift_s32)));
    }


    if (tmp_s32 > (uint32) (0xffff))
    {
        tmp_s32 = (uint32) (0xffff);
    }

    return ((uint16) (tmp_s32));
}
# 660 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ sint16 Mfx_Prv_Limit_s16_Inl(sint16 value, sint16 min_value, sint16 max_value)
{

 return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));



}
# 693 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ sint32 Mfx_Prv_Limit_s32_Inl(sint32 value, sint32 min_value, sint32 max_value)
{

 return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));



}
# 726 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ sint8 Mfx_Prv_Limit_s8_Inl(sint8 value, sint8 min_value, sint8 max_value)
{

 return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));



}
# 759 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ uint16 Mfx_Prv_Limit_u16_Inl(uint16 value, uint16 min_value, uint16 max_value)
{

 return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));



}
# 792 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ uint32 Mfx_Prv_Limit_u32_Inl(uint32 value, uint32 min_value, uint32 max_value)
{

 return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));



}
# 825 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
static __inline__ uint8 Mfx_Prv_Limit_u8_Inl(uint8 value, uint8 min_value, uint8 max_value)
{

 return ((min_value > max_value) ? (value) : ((value <= min_value) ? (min_value) :
                                                ((value >= max_value) ? (max_value) : (value))));



}
# 47 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h" 1
# 55 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint16 Mfx_Prv_Abs_s16_s16_Inl(sint16 x_value);
static __inline__ uint16 Mfx_Prv_Abs_s16_u16_Inl(sint16 x_value);
static __inline__ sint16 Mfx_Prv_Abs_s32_s16_Inl(sint32 x_value);
static __inline__ sint32 Mfx_Prv_Abs_s32_s32_Inl(sint32 x_value);
static __inline__ sint8 Mfx_Prv_Abs_s32_s8_Inl(sint32 x_value);
static __inline__ uint16 Mfx_Prv_Abs_s32_u16_Inl(sint32 x_value);
static __inline__ uint32 Mfx_Prv_Abs_s32_u32_Inl(sint32 x_value);
static __inline__ uint8 Mfx_Prv_Abs_s32_u8_Inl(sint32 x_value);
static __inline__ sint8 Mfx_Prv_Abs_s8_s8_Inl(sint8 x_value);
static __inline__ uint8 Mfx_Prv_Abs_s8_u8_Inl(sint8 x_value);
static __inline__ sint16 Mfx_Prv_AbsP2_s16_s16_Inl(sint16 x, sint16 a, sint16 c);
static __inline__ uint16 Mfx_Prv_AbsP2_s16_u16_Inl(sint16 x, sint16 a, sint16 c);
static __inline__ sint32 Mfx_Prv_AbsP2_s32_s32_Inl(sint32 x, sint16 a, sint16 c);
static __inline__ uint32 Mfx_Prv_AbsP2_s32_u32_Inl(sint32 x, sint16 a, sint16 c);
static __inline__ sint16 Mfx_Prv_Max_s16_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint32 Mfx_Prv_Max_s32_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Max_s8_Inl(sint8 x_value, sint8 y_value);
static __inline__ uint16 Mfx_Prv_Max_u16_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint32 Mfx_Prv_Max_u32_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Max_u8_Inl(uint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_Min_s16_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint32 Mfx_Prv_Min_s32_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Min_s8_Inl(sint8 x_value, sint8 y_value);
static __inline__ uint16 Mfx_Prv_Min_u16_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint32 Mfx_Prv_Min_u32_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Min_u8_Inl(uint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_Minmax_s16_Inl(sint16 value, sint16 minmax_value);
static __inline__ sint32 Mfx_Prv_Minmax_s32_Inl(sint32 value, sint32 minmax_value);
static __inline__ sint8 Mfx_Prv_Minmax_s8_Inl(sint8 value, sint8 minmax_value);
static __inline__ uint16 Mfx_Prv_Minmax_u16_Inl(uint16 value, uint16 minmax_value);
static __inline__ uint32 Mfx_Prv_Minmax_u32_Inl(uint32 value, uint32 minmax_value);
static __inline__ uint8 Mfx_Prv_Minmax_u8_Inl(uint8 value, uint8 minmax_value);
# 106 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint16 Mfx_Prv_Abs_s16_s16_Inl(sint16 x_value)
{
    return (Mfx_Prv_Abs_s32_s16_Inl(x_value));
}
# 125 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint16 Mfx_Prv_Abs_s16_u16_Inl(sint16 x_value)
{
    return (Mfx_Prv_Abs_s32_u16_Inl(x_value));
}
# 144 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint16 Mfx_Prv_Abs_s32_s16_Inl(sint32 x_value)
{
    sint16 result_s16;


    if (x_value >= 0L)
    {
        result_s16 = ((sint16) ((x_value > ((sint32)(0x7fff))) ? (0x7fff) : ((sint16)(x_value))));
    }
    else
    {
        result_s16 = ((sint16) ((x_value <= ((sint32)(-((0x7fff)) - 1))) ? (0x7fff) : ((sint16)(-x_value))));
    }

    return result_s16;
}
# 175 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint32 Mfx_Prv_Abs_s32_s32_Inl(sint32 x_value)
{
    sint32 result_s32;


    if (x_value >= 0L)
    {
        result_s32 = x_value;
    }
    else
    {

        result_s32 = ((x_value == (-((0x7fffffffL)) - 1L)) ? (0x7fffffffL) : -x_value);
    }

    return (result_s32);
}
# 207 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint8 Mfx_Prv_Abs_s32_s8_Inl(sint32 x_value)
{
    sint8 result_s8;


    if(x_value < 0)
    {

        if (x_value <= (sint32)(-((0x7f)) - 1))
        {
            result_s8 = (0x7f);
        }
        else
        {
            result_s8 = (sint8)(-x_value);
        }
    }
    else
    {

        if (x_value > (sint32)(0x7f))
        {
            result_s8 = (0x7f);
        }
        else
        {
            result_s8 = (sint8)(x_value);
        }
    }

   return result_s8;
}
# 254 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint16 Mfx_Prv_Abs_s32_u16_Inl(sint32 x_value)
{
    uint16 result_u16;


    if(x_value < 0)
    {

        if (x_value <= (sint32)(-(0xffff)))
        {
            result_u16 = (0xffff);
        }
        else
        {
            result_u16 = (uint16)(-x_value);
        }
    }
    else
    {

        if (x_value > (sint32)(0xffff))
        {
            result_u16 = (0xffff);
        }
        else
        {
            result_u16 = (uint16)(x_value);
        }
    }

   return result_u16;
}
# 300 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint32 Mfx_Prv_Abs_s32_u32_Inl(sint32 x_value)
{
    uint32 result_u32;


    if(x_value < 0)
    {
        result_u32 = ((x_value != (-((0x7fffffffL)) - 1L)) ? (uint32)(-x_value) : 0x80000000uL) ;
    }
    else
    {
        result_u32 = ((uint32)(x_value));
    }

    return result_u32;
}
# 331 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint8 Mfx_Prv_Abs_s32_u8_Inl(sint32 x_value)
{
    sint32 result_s32;


    if (x_value >= 0L)
    {
        result_s32 = ((x_value >= ((sint32)(0xff))) ? ((sint32)(0xff)) : x_value);
    }
    else
    {
        result_s32 = ((x_value <= ((sint32)(-(0xff)))) ? ((sint32)(0xff)) : -x_value);
    }

    return (uint8)result_s32;
}
# 362 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint8 Mfx_Prv_Abs_s8_s8_Inl(sint8 x_value)
{
    return (Mfx_Prv_Abs_s32_s8_Inl(x_value));
}
# 381 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint8 Mfx_Prv_Abs_s8_u8_Inl(sint8 x_value)
{
    return (Mfx_Prv_Abs_s32_u8_Inl(x_value));
}
# 412 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint16 Mfx_Prv_AbsP2_s16_s16_Inl(sint16 x, sint16 a, sint16 c)
{
    uint32 res_u32;
    sint32 shift_s32;

    shift_s32 = (sint32) c - (sint32) a;


    if (x < 0)
    {
        x = (-(x));
    }



    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) ((uint16) x)) >> ((uint32)(shift_s32)));
    }
    else
    {
        res_u32 = (((uint32) ((uint16) x)) << ((uint32)(shift_s32)));
    }


    if (res_u32 > (uint32) (0x7fff))
    {
        res_u32 = (uint32) (0x7fff);
    }

    return ((sint16) res_u32);
}
# 472 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsP2_s16_u16_Inl(sint16 x, sint16 a, sint16 c)
{
    uint32 res_u32;
    sint32 shift_s32;

    shift_s32 = (sint32) c - (sint32) a;


    if (x < 0)
    {
        x = (-(x));
    }



    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) ((uint16) x)) >> ((uint32)(shift_s32)));
    }
    else
    {
        res_u32 = (((uint32) ((uint16) x)) << ((uint32)(shift_s32)));
    }

    if (res_u32 > (uint32) (0xffff))
    {
        res_u32 = (uint32) (0xffff);
    }

    return ((uint16) res_u32);
}
# 531 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint32 Mfx_Prv_AbsP2_s32_s32_Inl(sint32 x, sint16 a, sint16 c)
{
    uint32 res_u32;
    uint32 tmp_u32;
    sint32 shift_s32;

    shift_s32 = (sint32) c - (sint32) a;


    if (x < 0)
    {
        x = (-(x));
    }



    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) x) >> ((uint32)(shift_s32)));
    }
    else
    {
        res_u32 = (((uint32) x) << ((uint32)(shift_s32)));
# 568 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
        tmp_u32 = ((res_u32) >> (uint32)(shift_s32));


        if (tmp_u32 != (uint32) x)
        {
            res_u32 = (uint32) (0x7fffffffL);
        }
    }


    if (res_u32 > (0x7fffffffUL))
    {
        res_u32 = (0x7fffffffUL);
    }

    return ((sint32) res_u32);
}
# 612 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint32 Mfx_Prv_AbsP2_s32_u32_Inl(sint32 x, sint16 a, sint16 c)
{
    uint32 res_u32;
    uint32 tmp_u32;
    sint32 shift_s32;

    shift_s32 = (sint32) c - (sint32) a;


    if (x < 0)
    {
        x = (-(x));
    }



    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = (((uint32) x) >> ((uint32)(shift_s32)));
    }
    else
    {
        res_u32 = (((uint32) x) << ((uint32)(shift_s32)));
# 649 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
        tmp_u32 = ((res_u32) >> ((uint32)(shift_s32)));


        if (tmp_u32 != (uint32) x)
        {
            res_u32 = (0xffffffffuL);
        }
    }

    return (res_u32);
}
# 676 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint16 Mfx_Prv_Max_s16_Inl(sint16 x_value, sint16 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
# 696 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint32 Mfx_Prv_Max_s32_Inl(sint32 x_value, sint32 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
# 716 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint8 Mfx_Prv_Max_s8_Inl(sint8 x_value, sint8 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
# 736 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint16 Mfx_Prv_Max_u16_Inl(uint16 x_value, uint16 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
# 756 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint32 Mfx_Prv_Max_u32_Inl(uint32 x_value, uint32 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
# 776 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint8 Mfx_Prv_Max_u8_Inl(uint8 x_value, uint8 y_value)
{
    return ((x_value > y_value) ? x_value : y_value);
}
# 796 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint16 Mfx_Prv_Min_s16_Inl(sint16 x_value, sint16 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
# 817 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint32 Mfx_Prv_Min_s32_Inl(sint32 x_value, sint32 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
# 837 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint8 Mfx_Prv_Min_s8_Inl(sint8 x_value, sint8 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
# 857 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint16 Mfx_Prv_Min_u16_Inl(uint16 x_value, uint16 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
# 877 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint32 Mfx_Prv_Min_u32_Inl(uint32 x_value, uint32 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
# 897 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint8 Mfx_Prv_Min_u8_Inl(uint8 x_value, uint8 y_value)
{
    return ((x_value < y_value) ? x_value : y_value);
}
# 920 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint16 Mfx_Prv_Minmax_s16_Inl(sint16 value, sint16 minmax_value)
{
    sint16 res_s16;

    if(minmax_value < 0)
    {
        res_s16 = Mfx_Prv_Max_s16_Inl(value,minmax_value);
    }
    else
    {
        res_s16 = Mfx_Prv_Min_s16_Inl(value,minmax_value);
    }

    return(res_s16);
}
# 955 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint32 Mfx_Prv_Minmax_s32_Inl(sint32 value, sint32 minmax_value)
{
    sint32 res_s32;

    if(minmax_value < 0)
    {
        res_s32 = Mfx_Prv_Max_s32_Inl(value , minmax_value);
    }
    else
    {
        res_s32 = Mfx_Prv_Min_s32_Inl(value , minmax_value);
    }

    return(res_s32);
}
# 989 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ sint8 Mfx_Prv_Minmax_s8_Inl(sint8 value, sint8 minmax_value)
{
    sint8 res_s8;

    if(minmax_value < 0)
    {
        res_s8 = Mfx_Prv_Max_s8_Inl(value , minmax_value);
    }
    else
    {
        res_s8 = Mfx_Prv_Min_s8_Inl(value , minmax_value);
    }

    return (res_s8);
}
# 1023 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint16 Mfx_Prv_Minmax_u16_Inl(uint16 value, uint16 minmax_value)
{
    return (Mfx_Prv_Min_u16_Inl(value , minmax_value));
}
# 1046 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint32 Mfx_Prv_Minmax_u32_Inl(uint32 value, uint32 minmax_value)
{
    return (Mfx_Prv_Min_u32_Inl(value , minmax_value));
}
# 1069 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Stat_Inl.h"
static __inline__ uint8 Mfx_Prv_Minmax_u8_Inl(uint8 value, uint8 minmax_value)
{
    return (Mfx_Prv_Min_u8_Inl(value , minmax_value));
}
# 48 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sat_Inl.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sat_Inl.h"
static __inline__ sint16 Mfx_Prv_Sat_s32_s16_Inl(sint32 x_value);
static __inline__ sint8 Mfx_Prv_Sat_s32_s8_Inl(sint32 x_value);
static __inline__ uint8 Mfx_Prv_Sat_s32_u8_Inl(sint32 x_value);
static __inline__ uint16 Mfx_Prv_Sat_s32_u16_Inl(sint32 x_value);
static __inline__ uint32 Mfx_Prv_Sat_s32_u32_Inl(sint32 x_value);
static __inline__ sint16 Mfx_Prv_Sat_u32_s16_Inl(uint32 x_value);
static __inline__ sint32 Mfx_Prv_Sat_u32_s32_Inl(uint32 x_value);
static __inline__ sint8 Mfx_Prv_Sat_u32_s8_Inl(uint32 x_value);
static __inline__ uint16 Mfx_Prv_Sat_u32_u16_Inl(uint32 x_value);
static __inline__ uint8 Mfx_Prv_Sat_u32_u8_Inl(uint32 x_value);
# 36 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sat_Inl.h"
static __inline__ sint16 Mfx_Prv_Sat_s32_s16_Inl(sint32 x_value)
{
    sint16 res_s16;

    if (x_value <= (0x7fff))
    {
        if (x_value >= (-((0x7fff)) - 1))
        {
            res_s16 = (sint16)x_value;
        }
        else
        {
            res_s16 = (-((0x7fff)) - 1);
        }
    }
    else
    {
        res_s16 = (0x7fff);
    }

    return(res_s16);
}





static __inline__ sint8 Mfx_Prv_Sat_s32_s8_Inl(sint32 x_value)
{
    sint8 res_s8;

    if (x_value <= (0x7f))
    {
        if (x_value >= (-((0x7f)) - 1))
        {
            res_s8 = (sint8)x_value;
        }
        else
        {
            res_s8 = (-((0x7f)) - 1);
        }
    }
    else
    {
        res_s8 = (0x7f);
    }

    return(res_s8);
}





static __inline__ uint8 Mfx_Prv_Sat_s32_u8_Inl(sint32 x_value)
{
    uint8 res_u8;

    if (x_value <= (0xff))
    {
        if (x_value >= (0x0))
        {
            res_u8 = (uint8)x_value;
        }
        else
        {
            res_u8 = (0x0u);
        }
    }
    else
    {
        res_u8 = (0xffu);
    }

    return(res_u8);
}





static __inline__ uint16 Mfx_Prv_Sat_s32_u16_Inl(sint32 x_value)
{
    uint16 res_u16;

    if (x_value <= (0xffff))
    {
        if (x_value >= (0x0))
        {
            res_u16 = (uint16)x_value;
        }
        else
        {
            res_u16 = (0x0u);
        }
    }
    else
    {
        res_u16 = (0xffffu);
    }

    return(res_u16);
}





static __inline__ uint32 Mfx_Prv_Sat_s32_u32_Inl(sint32 x_value)
{
    uint32 res_u32;

    res_u32 = (x_value >= 0L) ? (uint32)x_value : (0x0uL);

    return(res_u32);
}





static __inline__ sint16 Mfx_Prv_Sat_u32_s16_Inl(uint32 x_value)
{
 sint16 res_s16;

    res_s16 = (x_value <= (0x7fffu)) ? (sint16)x_value : (0x7fff);

    return(res_s16);
}





static __inline__ sint32 Mfx_Prv_Sat_u32_s32_Inl(uint32 x_value)
{
 sint32 res_s32;

    res_s32 = (x_value <= (0x7fffffffUL)) ? (sint32)x_value : (0x7fffffffL);

    return(res_s32);
}





static __inline__ sint8 Mfx_Prv_Sat_u32_s8_Inl(uint32 x_value)
{
 sint8 res_s8;

    res_s8 = (x_value <= (0x7fu)) ? (sint8)x_value : (0x7f);

    return(res_s8);
}





static __inline__ uint16 Mfx_Prv_Sat_u32_u16_Inl(uint32 x_value)
{
 uint16 res_u16;

    res_u16 = (x_value <= (0xffffu)) ? (uint16)x_value : (0xffffu);

    return(res_u16);
}





static __inline__ uint8 Mfx_Prv_Sat_u32_u8_Inl(uint32 x_value)
{
 uint8 res_u8;

    res_u8 = (x_value <= (0xffu)) ? (uint8)x_value : (0xffu);

    return(res_u8);
}
# 49 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 67 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h" 1
# 72 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_Add_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_Add_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_Add_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_Add_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_Add_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Add_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Add_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Add_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Add_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_Add_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Add_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_Add_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
static __inline__ sint16 Mfx_Prv_Add_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_Add_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_Add_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_Add_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_Add_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_Add_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_Add_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint8 Mfx_Prv_Add_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Add_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Add_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Add_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Add_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Add_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_Add_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint16 Mfx_Prv_Add_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_Add_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Add_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_Add_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_Add_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Add_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Add_u8s8_s8_Inl(uint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_Add_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_Add_u8u8_s8_Inl(uint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_Add_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_AddP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_AddP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_AddP2_s32s32_s32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ uint32 Mfx_Prv_AddP2_s32s32_u32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ sint16 Mfx_Prv_AddP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_AddP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_AddP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_AddP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_AddP2_u32s32_s32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ uint32 Mfx_Prv_AddP2_u32s32_u32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ sint32 Mfx_Prv_AddP2_u32u32_s32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ uint32 Mfx_Prv_AddP2_u32u32_u32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
# 142 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_Add_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value + (sint32)y_value));
}
# 164 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint8 Mfx_Prv_Add_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value + (sint32)y_value));
}
# 186 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint16 Mfx_Prv_Add_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value + (sint32)y_value));
}
# 208 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint8 Mfx_Prv_Add_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value + (sint32)y_value));
}
# 230 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_Add_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;


    if( (x_value > 0L) && (y_value > 0L) )
    {

        if( y_value > ((0x7fffffffL) - x_value) )
        {
            res_s32 = (sint32) (0x7fff);
        }
    }

    if( (x_value < 0L) && (y_value < 0L) )
    {

        if( y_value < ((-((0x7fffffffL)) - 1L) - x_value) )
        {
            res_s32 = (sint32) (-((0x7fff)) - 1);
        }
    }

    if (res_s32 > (sint32) (0x7fff))
    {
        res_s32 = (sint32) (0x7fff);
    }

    if (res_s32 < (sint32) (-((0x7fff)) - 1))
    {
        res_s32 = (sint32) (-((0x7fff)) - 1);
    }

    return (sint16) (res_s32);
}
# 285 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint32 Mfx_Prv_Add_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;


    if( (x_value > 0L) && (y_value > 0L) )
    {

        if( y_value > ((0x7fffffffL) - x_value) )
        {
            res_s32 = (0x7fffffffL);
        }
    }

    if( (x_value < 0L) && (y_value < 0L) )
    {

        if( y_value < ((-((0x7fffffffL)) - 1L) - x_value) )
        {
            res_s32 = (-((0x7fffffffL)) - 1L);
        }
    }

    return (res_s32);
}
# 329 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint8 Mfx_Prv_Add_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;


    if( (x_value > 0L) && (y_value > 0L) )
    {

        if( y_value > ((0x7fffffffL) - x_value) )
        {
            res_s32 = (sint32) (0x7f);
        }
    }

    if( (x_value < 0L) && (y_value < 0L) )
    {

        if( y_value < ((-((0x7fffffffL)) - 1L) - x_value) )
        {
            res_s32 = (sint32) (-((0x7f)) - 1);
        }
    }

    if (res_s32 > (sint32) (0x7f))
    {
        res_s32 = (sint32) (0x7f);
    }

    if (res_s32 < (sint32) (-((0x7f)) - 1))
    {
        res_s32 = (sint32) (-((0x7f)) - 1);
    }

    return (sint8) (res_s32);
}
# 384 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint16 Mfx_Prv_Add_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;


    if( (x_value > 0L) && (y_value > 0L) )
    {

        if( y_value > ((0x7fffffffL) - x_value) )
        {
            res_s32 = (sint32) (0xffff);
        }
    }

    if( ((x_value < 0L) && (y_value < 0L)) || ((res_s32 < (sint32) (0x0))))
    {
            res_s32 = (sint32) (0x0);
    }

    if (res_s32 > (sint32) (0xffff))
    {
        res_s32 = (sint32) (0xffff);
    }

    return (uint16) (res_s32);
}
# 430 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint32 Mfx_Prv_Add_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 res_s32;


    if( (x_value < 0L) && (y_value < 0L) )
    {
        res_u32 = (0x0uL);
    }

    else if( (x_value >= 0L) && (y_value >= 0L) )
    {
        res_u32 = ( ((uint32) x_value) + ((uint32) y_value) );
    }

    else
    {
        res_s32 = x_value + y_value;


        res_u32 = ( res_s32 < ((sint32) (0x0uL)) ) ? ((0x0uL)) : ((uint32) res_s32);
    }

    return (res_u32);
}
# 474 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint8 Mfx_Prv_Add_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = x_value + y_value;


    if( (x_value > 0L) && (y_value > 0L) )
    {

        if( y_value > ((0x7fffffffL) - x_value) )
        {
            res_s32 = (sint32) (0xff);
        }
    }

    if( ((x_value < 0L) && (y_value < 0L)) || ((res_s32 < (sint32) (0x0))))
    {
            res_s32 = (sint32) (0x0);
    }

    if (res_s32 > (sint32) (0xff))
    {
        res_s32 = (sint32) (0xff);
    }

    return (uint8) (res_s32);
}
# 520 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint8 Mfx_Prv_Add_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Add_s16s16_s8((sint16)x_value, (sint16)y_value));
}
# 542 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint8 Mfx_Prv_Add_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Add_s16s16_u8((sint16)x_value, (sint16)y_value));
}
# 564 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_Add_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value + (sint32)y_value));
}
# 586 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint8 Mfx_Prv_Add_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value + (sint32)y_value));
}
# 608 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint16 Mfx_Prv_Add_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value + (sint32)y_value));
}
# 630 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint8 Mfx_Prv_Add_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value + (sint32)y_value));
}
# 652 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_Add_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_s16_Inl((uint32)x_value + (uint32)y_value));
}
# 675 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint8 Mfx_Prv_Add_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_s8_Inl((uint32)x_value + (uint32)y_value));
}
# 697 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint16 Mfx_Prv_Add_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_u16_Inl((uint32)x_value + (uint32)y_value));
}
# 719 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint8 Mfx_Prv_Add_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_u8_Inl((uint32)x_value + (uint32)y_value));
}
# 741 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_Add_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    res_s32 = ( ((sint32) x_value) + y_value);


    if(y_value >= 0)
    {

        if( x_value > (((0x7fffffffUL) - (uint32)y_value)) )
        {
            res_s32 = (sint32) (0x7fff);
        }
    }

    else
    {
        if(x_value > (0x7fffffffUL))
        {
            y_value = -y_value;

            if((x_value - ((0x7fffffffUL))) > ((uint32) (y_value)))
            {
                res_s32 = (sint32) (0x7fff);
            }

            else
            {
                tmp_u32 = (x_value-(uint32)(y_value));
                res_s32 = ((sint32)tmp_u32);
            }
        }
    }


    if (res_s32 > (sint32) (0x7fff))
    {
        res_s32 = (sint32) (0x7fff);
    }

    if (res_s32 < (sint32) (-((0x7fff)) - 1))
    {
        res_s32 = (sint32) (-((0x7fff)) - 1);
    }

    return ((sint16) res_s32);
}
# 808 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint32 Mfx_Prv_Add_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    res_s32 = ( ((sint32) x_value) + y_value);


    if(y_value>=0)
    {

        if( x_value > ( ((0x7fffffffUL) - (uint32)y_value)) )
        {
            res_s32 = (0x7fffffffL);
        }
    }

    else
    {

        if(x_value > (0x7fffffffUL))
        {

            if(y_value > (-((0x7fffffffL)) - 1L))
            {


                if( (x_value - ((uint32)(0x7fffffffL))) > ((uint32) (-y_value)) )
                {
                    res_s32 = (0x7fffffffL);
                }


                else
                {
                    tmp_u32 = (x_value-(uint32)(-y_value));
                    res_s32 = ( (sint32) tmp_u32 );
                }
            }


            else
            {
                tmp_u32 = (x_value - (((0x7fffffffUL)) + 1UL));
                res_s32 = ((sint32)tmp_u32);
            }

        }
    }

    return (res_s32);
}
# 878 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint8 Mfx_Prv_Add_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    res_s32 = ( ((sint32) x_value) + y_value);


    if(y_value >= 0)
    {

        if( x_value > (((0x7fffffffUL) - (uint32)y_value)) )
        {
            res_s32 = (sint32) (0x7f);
        }
    }

    else
    {
        if(x_value > (0x7fffffffUL))
        {

            if( (x_value - ((uint32) (0x7fffffffL))) > ((uint32) (-y_value)) )
            {
                res_s32 = (sint32) (0x7f);
            }

            else
            {
                tmp_u32 = (x_value-(uint32)(-y_value));
                res_s32 = ( (sint32)tmp_u32);
            }
        }
    }

    if(res_s32 > (sint32) (0x7f))
    {
        res_s32 = (sint32) (0x7f);
    }

    if(res_s32 < (sint32) (-((0x7f)) - 1))
    {
        res_s32 = (sint32) (-((0x7f)) - 1);
    }

    return (sint8) (res_s32);
}
# 943 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint16 Mfx_Prv_Add_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    res_u32 = x_value + (uint32) y_value;

    if (y_value >= 0L)
    {


        if (res_u32 < x_value)
        {
            res_u32 = (uint32) (0xffff);
        }

    }


    else
    {


        if (x_value <= ((uint32) (-y_value)))
        {
            res_u32 = (uint32) (0x0);
        }

    }


    if (res_u32 > (uint32) (0xffff))
    {
        res_u32 = (uint32) (0xffff);
    }

    return ((uint16) res_u32);
}
# 998 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint32 Mfx_Prv_Add_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + (uint32) y_value;

    if (y_value >= 0L)
    {


        if (res_u32 < x_value)
        {
            res_u32 = (uint32) (0xffffffffuL);
        }

    }


    else
    {


        if (x_value <= ((uint32) (-y_value)))
        {
            res_u32 = (0x0uL);
        }

    }

    return (res_u32);
}
# 1048 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint8 Mfx_Prv_Add_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + (uint32) y_value;

    if (y_value >= 0L)
    {



        if (res_u32 < x_value)
        {
            res_u32 = (uint32) (0xff);
        }

    }


    else
    {


        if (x_value <= ((uint32) (-y_value)))
        {
            res_u32 = (uint32) (0x0);
        }

    }


    if (res_u32 > (uint32) (0xff))
    {
        res_u32 = (uint32) (0xff);
    }

    return ((uint8) res_u32);
}
# 1105 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_Add_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + y_value;



    if ((res_u32 < x_value) || (res_u32 > ((uint32) (0x7fff))))
    {
        res_u32 = (uint32) (0x7fff);
    }

    return ((sint16) res_u32);
}
# 1139 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint32 Mfx_Prv_Add_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + y_value;



    if ((res_u32 < x_value) || (res_u32 > ((uint32) (0x7fffffffL))))
    {
        res_u32 = (uint32) (0x7fffffffL);
    }

    return ((sint32) res_u32);
}
# 1173 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint8 Mfx_Prv_Add_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;
    res_u32 = x_value + y_value;



    if ((res_u32 < x_value) || (res_u32 > ((uint32) (0x7f))))
    {
        res_u32 = (uint32) (0x7f);
    }

    return ((sint8) res_u32);
}
# 1205 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint16 Mfx_Prv_Add_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;
    res_u32 = x_value + y_value;



    if ((res_u32 < x_value) || (res_u32 > ((uint32) (0xffff))))
    {
        res_u32 = (uint32) (0xffff);
    }

    return ((uint16) res_u32);
}
# 1237 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint32 Mfx_Prv_Add_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + y_value;



    if (res_u32 < x_value)
    {
        res_u32 = (0xffffffffuL);
    }

    return (res_u32);
}
# 1271 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint8 Mfx_Prv_Add_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value + y_value;



    if ((res_u32 < x_value) || (res_u32 > ((uint32) (0xff))))
    {
        res_u32 = (uint32) (0xff);
    }

    return ((uint8) res_u32);
}
# 1305 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint8 Mfx_Prv_Add_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Add_u16s16_s8((uint16)x_value, (sint16)y_value));
}
# 1327 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint8 Mfx_Prv_Add_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Add_u16s16_u8((uint16)x_value, (sint16)y_value));
}
# 1349 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint8 Mfx_Prv_Add_u8u8_s8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Add_u16u16_s8((uint16)x_value, (uint16)y_value));
}
# 1371 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint8 Mfx_Prv_Add_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Add_u16u16_u8((uint16)x_value, (uint16)y_value));
}
# 1402 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_AddP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;



    if (a < b)
    {



        shift_s32 = ((sint32)b - (sint32)a);
        tmp_u32 = (((uint32) x) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {



        shift_s32 = ((sint32)a - (sint32)b);
        tmp_u32 = (((uint32) y) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) x;


        shift_s32 = ((sint32)c - (sint32)a);
    }


    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;

        if (result_s32 < 0)
        {
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32 ;
        }
    }
    else
    {
        tmp_u32 = ((uint32) result_s32 << ((uint32)(shift_s32)));
        result_s32 = (sint32)tmp_u32;
    }


    if (result_s32 > (0x7fff))
    {
        result_s32 = (0x7fff);
    }
    if (result_s32 < (-((0x7fff)) - 1))
    {
        result_s32 = (-((0x7fff)) - 1);
    }

    return ((sint16) result_s32);
}
# 1498 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint16 Mfx_Prv_AddP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {



        shift_s32 = ((sint32)b - (sint32)a);
        tmp_u32 = (((uint32) x) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else


    {



        shift_s32 = ((sint32)a - (sint32)b);
        tmp_u32 = (((uint32) y) << (uint32)shift_s32 );
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) x;


        shift_s32 = ((sint32)c - (sint32)a);
    }


    if (result_s32 >= 0)
    {


        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }

        if (result_s32 > (sint32) (0xffff))
        {
            result_s32 = (sint32) (0xffff);


        }
    }
    else
    {
        result_s32 = (sint32) (0x0);
    }

    return ((uint16) result_s32);
}
# 1594 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint32 Mfx_Prv_AddP2_s32s32_s32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{

    Mfx_sint64u result_s64;
    sint32 shift1_s32;
    sint32 shift2_s32;
    sint32 var1_s32;
    sint32 var2_s32;
    boolean isResultNegative_b = (0 != 0);
    uint32 tmp_u32;




    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        var1_s32 = x;
        var2_s32 = y;
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        var1_s32 = y;
        var2_s32 = x;
    }







    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (((Mfx_sint64) var1_s32 * (Mfx_sint64)tmp_u32 ) + (Mfx_sint64) var2_s32);


    if (result_s64.s64s.h < 0)
    {



        result_s64.s64 = -(result_s64.s64);
        isResultNegative_b = (1 != 0);
    }
    if (shift2_s32 < 0)
    {
        shift2_s32 = -shift2_s32;
        tmp_u32 = ((uint32) result_s64.s64s.h << (32UL - (uint32)shift2_s32));
        var1_s32 = (sint32)tmp_u32;
        tmp_u32 = (result_s64.s64s.l >> (uint32)(shift2_s32));
        var2_s32 = (sint32)tmp_u32;
        result_s64.s64s.l = ((uint32) var2_s32 | (uint32) var1_s32);
        tmp_u32 = ((uint32) result_s64.s64s.h >> ((uint32)(shift2_s32)));
        result_s64.s64s.h = (sint32)tmp_u32;
    }
    else
    {
        tmp_u32 = (result_s64.s64s.l << (uint32)(shift2_s32));
        var2_s32 = (sint32)tmp_u32;
        if (result_s64.s64s.h == 0)
        {

            tmp_u32 = (result_s64.s64s.l >> (32UL - (uint32)shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32 ;
            result_s64.s64s.l = (uint32) var2_s32;
        }
    }


    if (((result_s64.s64s.h) > 0) || (result_s64.s64s.l > (0x7fffffffUL)))
    {

        if (isResultNegative_b == (1 != 0))
        {
            result_s64.s64s.l = (uint32) (0x80000000UL);
        }
        else
        {
            result_s64.s64s.l = (uint32) (0x7fffffffL);
        }
    }


    if (isResultNegative_b == (1 != 0))
    {
        result_s64.s64s.l = (uint32) (-((sint32) result_s64.s64s.l));
    }

    return ((sint32) result_s64.s64s.l);
}
# 1714 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint32 Mfx_Prv_AddP2_s32s32_u32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{

    Mfx_sint64u result_s64;
    sint32 shift1_s32;
    sint32 shift2_s32;
    sint32 var1_s32;
    sint32 var2_s32;
    uint32 tmp_u32;




    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        var1_s32 = x;
        var2_s32 = y;
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        var1_s32 = y;
        var2_s32 = x;
    }






    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (((Mfx_sint64) var1_s32 * (Mfx_sint64)tmp_u32 ) + (Mfx_sint64) var2_s32);


    if (result_s64.s64s.h < 0)
    {
        result_s64.s64s.l = (0x0uL);
    }
    else
    {
        if (shift2_s32 < 0)
        {
            shift2_s32 = -shift2_s32;
            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
            var1_s32 = (sint32)tmp_u32;
            tmp_u32 = (result_s64.s64s.l >> (uint32)(shift2_s32));
            var2_s32 = (sint32)tmp_u32 ;
            result_s64.s64s.l = ((uint32) var2_s32 | (uint32) var1_s32);
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = (result_s64.s64s.l << (uint32)(shift2_s32));
            var2_s32 = (sint32)tmp_u32;

            if (result_s64.s64s.h == 0)
            {
                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = (uint32) var2_s32;
            }
        }

        if (result_s64.s64s.h > 0)
        {
            result_s64.s64s.l = (0xffffffffuL);
        }
    }

    return (result_s64.s64s.l);
}
# 1816 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_AddP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {



        shift_s32 = ((sint32)b - (sint32)a);
        tmp_u32 = (((uint32) x) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {



        shift_s32 = ((sint32)a - (sint32)b);
        tmp_u32 = (((uint32) y) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32);
        result_s32 = result_s32 + (sint32) x;


        shift_s32 = ((sint32)c - (sint32)a);
    }

    if (result_s32 >= 0)
    {

        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }



        if (((uint32) result_s32) > ((uint32) (0x7fff)))
        {
            result_s32 = (sint32) (0x7fff);
        }
    }
    else
    {

        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = (((uint32) (-result_s32)) << (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }

        if (result_s32 < ((sint32) (-((0x7fff)) - 1)))
        {
            result_s32 = (sint32) (-((0x7fff)) - 1);
        }
    }

    return ((sint16) result_s32);
}
# 1924 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint16 Mfx_Prv_AddP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {



        shift_s32 = ((sint32)b - (sint32)a);
        tmp_u32 = (((uint32) x) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32) ;
        result_s32 = result_s32 + (sint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {



        shift_s32 = ((sint32)a - (sint32)b);
        tmp_u32 = (((uint32) y) << (uint32)shift_s32);
        result_s32 = ((sint32)tmp_u32 );
        result_s32 = result_s32 + (sint32) x;


        shift_s32 = ((sint32)c - (sint32)a);
    }


    if (result_s32 >= 0)
    {

        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32 ;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }




        if (((uint32) result_s32) > ((uint32) (0xffff)))
        {
            result_s32 = (sint32) (0xffff);
        }
    }
    else
    {
        result_s32 = (sint32) (0x0);
    }

    return ((uint16) result_s32);
}
# 2018 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint16 Mfx_Prv_AddP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 result_u32;
    sint32 shift_s32;




    if (a < b)
    {



        shift_s32 = ((sint32)b - (sint32)a);
        result_u32 = ((uint32) x << (uint32)shift_s32);
        result_u32 = result_u32 + (uint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {



        shift_s32 = ((sint32)a - (sint32)b);
        result_u32 = ((uint32) y << (uint32)shift_s32);
        result_u32 = result_u32 + (uint32) x;


        shift_s32 = ((sint32)c - (sint32)a);
    }


    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        result_u32 = (result_u32 >> (uint32)(shift_s32));
    }
    else
    {
        result_u32 = (result_u32 << (uint32)(shift_s32));
    }


    if (result_u32 > (uint32) (0x7fff))
    {
        result_u32 = (uint32) (0x7fff);
    }

    return ((sint16) result_u32);
}
# 2097 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint16 Mfx_Prv_AddP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 result_u32;
    sint32 shift_s32;




    if (a < b)
    {



        shift_s32 = ((sint32)b - (sint32)a);
        result_u32 = ((uint32) x << (uint32)shift_s32);
        result_u32 = result_u32 + (uint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {



        shift_s32 = ((sint32)a - (sint32)b);
        result_u32 = ((uint32) y << (uint32)shift_s32);
        result_u32 = result_u32 + (uint32) x;


        shift_s32 = ((sint32)c - (sint32)a);
    }

    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        result_u32 = (result_u32 >> (uint32)(shift_s32));
    }
    else
    {
        result_u32 = (result_u32 << (uint32)(shift_s32));
    }


    if (result_u32 > (uint32) (0xffff))
    {
        result_u32 = (uint32) (0xffff);
    }

    return ((uint16) result_u32);
}
# 2175 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint32 Mfx_Prv_AddP2_u32s32_s32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = (0 != 0);

    Mfx_sint64u var2_s64;

 Mfx_sint64u result_s64;
    uint32 tmp_u32;




    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var2_s64.s64 = (Mfx_sint64) y;

    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (Mfx_sint64) y;
        var2_s64.s64 = (Mfx_sint64) x;
    }






    tmp_u32 = ( 1uL << (uint32)shift1_s32);
    result_s64.s64 = ((result_s64.s64 * ((Mfx_sint64)tmp_u32 )) + var2_s64.s64);

    if (result_s64.s64 < 0)
    {



        isResultNegative_b = (1 != 0);
        result_s64.s64 = -(result_s64.s64);
    }




    if (shift2_s32 > 0)
    {
        var2_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));

        if (result_s64.s64s.h == 0)
        {



            tmp_u32 = ((result_s64.s64s.l) >> (32uL - (uint32)shift2_s32));
            var2_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.h = var2_s64.s64s.h;
            result_s64.s64s.l = var2_s64.s64s.l;
        }
    }
    if (shift2_s32 < 0)
    {

        shift2_s32 = -shift2_s32;
        var2_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
        tmp_u32 = (((uint32) result_s64.s64s.h) << (32uL - (uint32)shift2_s32));
        var2_s64.s64s.h = (sint32)tmp_u32;
        result_s64.s64s.l = var2_s64.s64s.l | (uint32) var2_s64.s64s.h;
        tmp_u32 = (((uint32) result_s64.s64s.h) >> (uint32)(shift2_s32));
        result_s64.s64s.h = (sint32)tmp_u32;
    }


    if (((result_s64.s64s.h) > 0) || (result_s64.s64s.l > (uint32) (0x7fffffffL)))
    {
        if (isResultNegative_b == (1 != 0))
        {
            result_s64.s64s.l = (uint32) (0x80000000UL);
        }
        else
        {
            result_s64.s64s.l = (uint32) (0x7fffffffL);
        }
    }


    if (isResultNegative_b == (1 != 0))
    {
        result_s64.s64s.l = (uint32) (-((sint32) result_s64.s64s.l));
    }

    return ((sint32) result_s64.s64s.l);
}
# 2300 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint32 Mfx_Prv_AddP2_u32s32_u32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;

 Mfx_sint64u var2_s64;

 Mfx_sint64u result_s64;
    uint32 tmp_u32;




    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var2_s64.s64 = (Mfx_sint64) y;
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (Mfx_sint64) y;
        var2_s64.s64 = (Mfx_sint64) x;
    }







    tmp_u32 = ( 1uL << (uint32)shift1_s32);
    result_s64.s64 = ((result_s64.s64 * ((Mfx_sint64)tmp_u32)) + var2_s64.s64);


    if (result_s64.s64s.h < 0)
    {

        result_s64.s64s.l = (0x0uL);
    }
    else
    {
        if (shift2_s32 < 0)
        {

            shift2_s32 = -shift2_s32;
            tmp_u32 = (((uint32) result_s64.s64s.h) << (32uL - (uint32)shift2_s32));
            var2_s64.s64s.h = (sint32)tmp_u32;
            var2_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
            result_s64.s64s.l = (var2_s64.s64s.l | (uint32) var2_s64.s64s.h);
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            var2_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));
            if (result_s64.s64s.h == 0)
            {
                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = var2_s64.s64s.l;
            }
        }


        if (result_s64.s64s.h > 0)
        {
            result_s64.s64s.l = (0xffffffffuL);
        }
    }

    return (result_s64.s64s.l);
}
# 2403 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ sint32 Mfx_Prv_AddP2_u32u32_s32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    uint32 var1_u32;
    uint32 var2_u32;
    uint32 result_u32;
    uint32 highbyte_u32 = 0;




    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        var1_u32 = x;
        var2_u32 = y;
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        var1_u32 = y;
        var2_u32 = x;
    }


    result_u32 = (var1_u32 << (uint32)shift1_s32);


    highbyte_u32 = (var1_u32 >> (32uL - (uint32)shift1_s32));


    result_u32 = result_u32 + var2_u32;

    if (result_u32 < var2_u32)
    {
        highbyte_u32++;
    }
    if (shift2_s32 < 0)
    {



        shift2_s32 = -shift2_s32;
        var1_u32 = highbyte_u32 << (32uL - (uint32)shift2_s32);
        var2_u32 = (result_u32 >> (uint32)(shift2_s32));
        result_u32 = var2_u32 | var1_u32;
        highbyte_u32 = highbyte_u32 >> (uint32)(shift2_s32);
    }
    else
    {
        var2_u32 = (result_u32 << (uint32)(shift2_s32));

        if (highbyte_u32 == 0U)
        {
            highbyte_u32 = (result_u32 >> (32uL - (uint32)shift2_s32));
            result_u32 = var2_u32;
        }
    }


    if ((highbyte_u32 > 0U) || (result_u32 > (uint32) (0x7fffffffL)))
    {
        result_u32 = (uint32) (0x7fffffffL);
    }

    return ((sint32) result_u32);
}
# 2495 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Add_Inl.h"
static __inline__ uint32 Mfx_Prv_AddP2_u32u32_u32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    uint32 var1_u32;
    uint32 var2_u32;
    uint32 result_u32;
    uint32 highbyte_u32 = 0;




    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        var1_u32 = x;
        var2_u32 = y;
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        var1_u32 = y;
        var2_u32 = x;
    }


    result_u32 = (var1_u32 << (uint32)shift1_s32);


    highbyte_u32 = (var1_u32 >> (32uL - (uint32)shift1_s32));


    result_u32 = result_u32 + var2_u32;

    if (result_u32 < var2_u32)
    {
        highbyte_u32++;
    }
    if (shift2_s32 < 0)
    {



        shift2_s32 = -shift2_s32;
        var1_u32 = highbyte_u32 << (32uL - (uint32)shift2_s32);
        var2_u32 = (result_u32 >> (uint32)(shift2_s32));
        result_u32 = var2_u32 | var1_u32;
        highbyte_u32 = highbyte_u32 >> (uint32)(shift2_s32);
    }
    else
    {
        var2_u32 = (result_u32 << (uint32)(shift2_s32));


        if (highbyte_u32 == 0U)
        {
            highbyte_u32 = (result_u32 >> (32uL - (uint32)shift2_s32));
            result_u32 = var2_u32;
        }
    }

    if (highbyte_u32 > 0U)


    {
        result_u32 = (0xffffffffuL);
    }

    return (result_u32);
}
# 68 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 81 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h" 1
# 194 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_NoOvf_s32s32_s16_Inl(sint32 x_value, sint32 y_value);

static __inline__ sint8 Mfx_Prv_Div_NoOvf_s32s32_s8_Inl(sint32 x_value, sint32 y_value);

static __inline__ uint16 Mfx_Prv_Div_NoOvf_s32s32_u16_Inl(sint32 x_value, sint32 y_value);

static __inline__ uint8 Mfx_Prv_Div_NoOvf_s32s32_u8_Inl(sint32 x_value, sint32 y_value);

static __inline__ sint16 Mfx_Prv_Div_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_Div_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_Div_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_Div_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_Div_s16u16_s16_Inl(sint16 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_Div_s16u16_s8_Inl(sint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_Div_s16u16_u16_Inl(sint16 x_value, uint16 y_value);
static __inline__ uint8 Mfx_Prv_Div_s16u16_u8_Inl(sint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Div_s32s16_s16_Inl(sint32 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_Div_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Div_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Div_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Div_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Div_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_Div_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Div_s32u16_u16_Inl(sint32 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Div_s32u32_s16_Inl(sint32 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_Div_s32u32_s32_Inl(sint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Div_s32u32_s8_Inl(sint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_Div_s32u32_u16_Inl(sint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_Div_s32u32_u32_Inl(sint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Div_s32u32_u8_Inl(sint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Div_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_Div_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_Div_s8u8_s8_Inl(sint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_Div_s8u8_u8_Inl(sint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_Div_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_Div_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_Div_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_Div_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_Div_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_Div_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_Div_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint8 Mfx_Prv_Div_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Div_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Div_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Div_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Div_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Div_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_Div_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Div_u32u16_u16_Inl(uint32 x_value, uint16 y_value);
static __inline__ uint32 Mfx_Prv_Div_u32u16_u32_Inl(uint32 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Div_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_Div_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Div_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_Div_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_Div_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Div_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_Div_u32u32_ux_Inl(uint32 x_value, uint32 y_value, uint32 bits);
static __inline__ sint8 Mfx_Prv_Div_u8s8_s8_Inl(uint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_Div_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_Div_u8u8_s8_Inl(uint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_Div_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_DivP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_DivP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_DivP2_s16u16_s16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_DivP2_s16u16_u16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_DivP2_s32s32_s32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint32 Mfx_Prv_DivP2_s32s32_u32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_DivP2_s32u32_s32_Inl(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint32 Mfx_Prv_DivP2_s32u32_u32_Inl(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_DivP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_DivP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_DivP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_DivP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_DivP2_u32s32_s32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint32 Mfx_Prv_DivP2_u32s32_u32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_DivP2_u32u32_s32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint32 Mfx_Prv_DivP2_u32u32_u32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_DivShLeft_s16s16u8_s16_Inl(sint16 x_value, sint16 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_DivShLeft_s16u16u8_s16_Inl(sint16 x_value, uint16 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_DivShLeft_s32s32u8_s16_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint32 Mfx_Prv_DivShLeft_s32s32u8_s32_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint8 Mfx_Prv_DivShLeft_s32s32u8_s8_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint16 Mfx_Prv_DivShLeft_s32s32u8_u16_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint32 Mfx_Prv_DivShLeft_s32s32u8_u32_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_DivShLeft_s32s32u8_u8_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_DivShLeft_s32u32u8_s16_Inl(sint32 x_value, uint32 y_value, uint8 shift);
static __inline__ sint32 Mfx_Prv_DivShLeft_s32u32u8_s32_Inl(sint32 x_value, uint32 y_value, uint8 shift);
static __inline__ sint8 Mfx_Prv_DivShLeft_s32u32u8_s8_Inl(sint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint16 Mfx_Prv_DivShLeft_s32u32u8_u16_Inl(sint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint32 Mfx_Prv_DivShLeft_s32u32u8_u32_Inl(sint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_DivShLeft_s32u32u8_u8_Inl(sint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint16 Mfx_Prv_DivShLeft_u16u16u8_u16_Inl(uint16 x_value, uint16 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_DivShLeft_u16u16u8_u8_Inl(uint16 x_value, uint16 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_DivShLeft_u32s32u8_s16_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint32 Mfx_Prv_DivShLeft_u32s32u8_s32_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint8 Mfx_Prv_DivShLeft_u32s32u8_s8_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint16 Mfx_Prv_DivShLeft_u32s32u8_u16_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint32 Mfx_Prv_DivShLeft_u32s32u8_u32_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_DivShLeft_u32s32u8_u8_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_DivShLeft_u32u32u8_s16_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ sint32 Mfx_Prv_DivShLeft_u32u32u8_s32_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ sint8 Mfx_Prv_DivShLeft_u32u32u8_s8_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint16 Mfx_Prv_DivShLeft_u32u32u8_u16_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint32 Mfx_Prv_DivShLeft_u32u32u8_u32_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_DivShLeft_u32u32u8_u8_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_DivShLeft_u8u8u8_u8_Inl(uint8 x_value, uint8 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_Mod_s16_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint32 Mfx_Prv_Mod_s32_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint16 Mfx_Prv_Mod_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Mod_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Mod_s8_Inl(sint8 x_value, sint8 y_value);
static __inline__ uint16 Mfx_Prv_Mod_u16_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint32 Mfx_Prv_Mod_u32_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_Mod_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Mod_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Mod_u8_Inl(uint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_RDiv_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_RDiv_s16u16_s16_Inl(sint16 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_s16u16_s8_Inl(sint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_s16u16_u16_Inl(sint16 x_value, uint16 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_s16u16_u8_Inl(sint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_RDiv_s32s16_s16_Inl(sint32 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_RDiv_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_RDiv_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_RDiv_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_s32u16_u16_Inl(sint32 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_RDiv_s32u32_s16_Inl(sint32 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_RDiv_s32u32_s32_Inl(sint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_s32u32_s8_Inl(sint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_s32u32_u16_Inl(sint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_RDiv_s32u32_u32_Inl(sint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_s32u32_u8_Inl(sint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_s8u8_s8_Inl(sint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_s8u8_u8_Inl(sint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_RDiv_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_RDiv_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_RDiv_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_RDiv_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_RDiv_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_u32u16_u16_Inl(uint32 x_value, uint16 y_value);
static __inline__ uint32 Mfx_Prv_RDiv_u32u16_u32_Inl(uint32 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_RDiv_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_RDiv_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_RDiv_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_RDiv_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_u8s8_s8_Inl(uint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_RDiv_u8u8_s8_Inl(uint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_RDiv_u8u8_u8_Inl(uint8 x_value, uint8 y_value);


static __inline__ uint32 Mfx_Prv_Div_u64u32_u32_Inl(Mfx_uint64 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_Div_s64s32_s32_Inl(Mfx_sint64 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Div_s64s32_u32_Inl(Mfx_sint64 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Div_s64u32_s32_Inl(Mfx_sint64 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_Div_s64u32_u32_Inl(Mfx_sint64 x_value, uint32 y_value);
# 377 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_NoOvf_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint16 res_s16;

    if (y_value != 0L)
    {
        res_s16 = Mfx_Prv_Sat_s32_s16_Inl(x_value / y_value);
    }
    else
    {
        res_s16 = (x_value >= 0L) ? (0x7fff) : (-((0x7fff)) - 1);
    }

    return (res_s16);
}





static __inline__ sint8 Mfx_Prv_Div_NoOvf_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint8 res_s8;

    if (y_value != 0L)
    {
        res_s8 = Mfx_Prv_Sat_s32_s8_Inl(x_value / y_value);
    }
    else
    {
        res_s8 = (x_value >= 0L) ? (0x7f) : (-((0x7f)) - 1);
    }

    return (res_s8);
}





static __inline__ uint16 Mfx_Prv_Div_NoOvf_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint16 res_u16;

    if (y_value != 0L)
    {
        res_u16 = Mfx_Prv_Sat_s32_u16_Inl(x_value / y_value);
    }
    else
    {
        res_u16 = (x_value >= 0L) ? (0xffffu) : (0x0u);
    }

    return (res_u16);
}





static __inline__ uint8 Mfx_Prv_Div_NoOvf_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint8 res_u8;

    if (y_value != 0L)
    {
        res_u8 = Mfx_Prv_Sat_s32_u8_Inl(x_value / y_value);
    }
    else
    {
        res_u8 = (x_value >= 0L) ? (0xffu) : (0x0u);
    }

    return (res_u8);
}
# 470 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value, (sint32)y_value));
}
# 492 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s8_Inl((sint32)x_value, (sint32)y_value));
}
# 514 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value, (sint32)y_value));
}
# 536 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u8_Inl((sint32)x_value, (sint32)y_value));
}
# 558 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_s16u16_s16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value, (sint32)y_value));
}
# 580 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_s16u16_s8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s8_Inl((sint32)x_value, (sint32)y_value));
}
# 602 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_s16u16_u16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value, (sint32)y_value));
}
# 624 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_s16u16_u8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u8_Inl((sint32)x_value, (sint32)y_value));
}
# 646 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_s32s16_s16_Inl(sint32 x_value, sint16 y_value)
{
    return (Mfx_Div_s32s32_s16(x_value, (sint32)y_value));
}
# 668 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_Div_s32s32_s32_Inl(x_value, y_value)));
}
# 690 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_Div_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;



    if(y_value == 0)
    {

        res_s32 = ( (x_value >= 0) ? ((0x7fffffffL)) : ((-((0x7fffffffL)) - 1L)));

    }
    else
    {

        if( (y_value == -1) && (x_value == (-((0x7fffffffL)) - 1L)) )
        {
            res_s32 = (0x7fffffffL);
        }

        else
        {
            res_s32 = (x_value / y_value);
        }
    }

    return (res_s32);
}
# 736 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl(Mfx_Prv_Div_s32s32_s32_Inl(x_value, y_value)));
}
# 758 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl(Mfx_Prv_Div_s32s32_s32_Inl(x_value, y_value)));
}
# 780 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_Div_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 res_s32;



    if(y_value == 0)
    {

        res_u32 = ( (x_value >= 0) ? ((0xffffffffuL)) : ((0x0uL)));
    }

    else if( (y_value == -1) && (x_value == (-((0x7fffffffL)) - 1L)) )
    {
        res_u32 = ( ((uint32) (0x7fffffffL)) + 1UL );
    }

    else
    {
        res_s32 = (x_value / y_value);


        res_u32 = (res_s32 < 0) ? ((0x0uL)) : ((uint32) res_s32);
    }

    return (res_u32);
}
# 826 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl(Mfx_Prv_Div_s32s32_s32_Inl(x_value, y_value)));
}
# 848 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_s32u16_u16_Inl(sint32 x_value, uint16 y_value)
{
    return (Mfx_Div_s32s32_u16(x_value, (sint32)y_value));
}
# 870 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_s32u32_s16_Inl(sint32 x_value, uint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_Div_s32u32_s32_Inl(x_value, y_value)));
}
# 892 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_Div_s32u32_s32_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;


    if (y_value > (0x7fffffffUL))
    {

        if ((x_value == (-((0x7fffffffL)) - 1L)) && (y_value == ((uint32) (0x7fffffffL) + 1UL)))
        {
            res_s32 = -1;
        }

        else
        {
            res_s32 = 0;
        }
    }
    else
    {

        if (y_value == 0UL)
        {

            res_s32 = (x_value < 0) ? ((-((0x7fffffffL)) - 1L)) : ((0x7fffffffL));
        }

        else
        {
            res_s32 = x_value / ((sint32) y_value);
        }
    }

    return (res_s32);
}
# 945 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_s32u32_s8_Inl(sint32 x_value, uint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl(Mfx_Prv_Div_s32u32_s32_Inl(x_value, y_value)));
}
# 967 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_s32u32_u16_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;



    if (x_value < 0)
    {

        res_u32 = (0x0);
    }
    else
    {

        res_u32 = (y_value == 0UL) ? ((0xffffu)) : ( ((uint32) x_value) / y_value );
        res_u32 = ( res_u32 > ((uint32) (0xffff)) ) ? ((uint32) (0xffff)) : (res_u32);
    }

    return ((uint16) res_u32);
}
# 1005 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_Div_s32u32_u32_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;



    if (x_value < 0)
    {

        res_u32 = (0x0uL);
    }
    else
    {

        res_u32 = (y_value == 0UL) ? ((0xffffffffuL)) : ( ((uint32) x_value) / y_value );
    }

    return (res_u32);
}
# 1042 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_s32u32_u8_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;



    if (x_value < 0)
    {

        res_u32 = (0x0);
    }
    else
    {

        res_u32 = (y_value == 0UL) ? ((0xffu)) : ( ((uint32) x_value) / y_value );
        res_u32 = ( res_u32 > ((uint32) (0xff)) ) ? ((uint32) (0xff)) : (res_u32);
    }

    return ((uint8) res_u32);
}
# 1080 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Div_s16s16_s8((sint16)x_value, (sint16)y_value));
}
# 1102 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Div_s16s16_u8((sint16)x_value, (sint16)y_value));
}
# 1124 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_s8u8_s8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Div_s16u16_s8((sint16)x_value, (uint16)y_value));
}
# 1146 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_s8u8_u8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Div_s16u16_u8((sint16)x_value, (uint16)y_value));
}
# 1168 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value, (sint32)y_value));
}
# 1190 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s8_Inl((sint32)x_value, (sint32)y_value));
}
# 1212 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value, (sint32)y_value));
}
# 1234 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u8_Inl((sint32)x_value, (sint32)y_value));
}
# 1256 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Div_u32u32_s16(x_value, y_value));
}
# 1278 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Div_u32u32_s8(x_value, y_value));
}
# 1300 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    uint16 res_u16;

    if (y_value != 0U)
    {
        res_u16 = (x_value / y_value);
    }
    else
    {
        res_u16 = (0xffffu);
    }

    return (res_u16);
}
# 1333 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    uint8 res_u8;

    if (y_value != 0U)
    {
        res_u8 = Mfx_Prv_Sat_u32_u8_Inl(x_value / y_value);
    }
    else
    {
        res_u8 = (0xffu);
    }

    return (res_u8);
}
# 1366 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_Div_u32s32_s32_Inl(x_value, y_value)));
}
# 1388 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_Div_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    uint32 yAbs_u32;
    uint32 tmp_u32;
    uint32 resAbs_u32;
    uint32 tmp1_u32;




    tmp_u32 = (y_value >= 0L) ? (0x0uL) : (0xffffffffuL);
    yAbs_u32 = ((uint32)y_value ^ tmp_u32) - tmp_u32;

    res_s32 = (0x7fffffffL);
    if (yAbs_u32 > 0UL)
    {
        resAbs_u32 = (x_value / yAbs_u32);






        if ((sint32)resAbs_u32 >= 0L)
        {
            tmp1_u32 = resAbs_u32 ^ tmp_u32 ;
            res_s32 = (sint32)tmp1_u32;
        }






        res_s32 = res_s32 - (sint32)tmp_u32;
    }

    return (res_s32);
}
# 1446 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl(Mfx_Prv_Div_u32s32_s32_Inl(x_value, y_value)));
}
# 1468 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;



    if (y_value < 0)
    {

        res_u32 = (0x0);
    }
    else
    {

        res_u32 = (y_value == 0) ? ((0xffffu)) : ( x_value / ((uint32) y_value) );
        res_u32 = ( res_u32 > ((uint32) (0xffff)) ) ? ((uint32) (0xffff)) : (res_u32);
    }

    return ((uint16) res_u32);
}
# 1506 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_Div_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;



    if (y_value < 0)
    {

        res_u32 = (0x0uL);
    }
    else
    {

        res_u32 = (y_value == 0) ? ((0xffffffffuL)) : ( x_value / ((uint32) y_value) );
    }

    return (res_u32);
}
# 1543 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;



    if (y_value < 0)
    {

        res_u32 = (0x0);
    }
    else
    {

        res_u32 = (y_value == 0) ? ((0xffu)) : ( x_value / ((uint32) y_value) );
        res_u32 = ( res_u32 > ((uint32) (0xff)) ) ? ((uint32) (0xff)) : (res_u32);
    }

    return ((uint8) res_u32);
}
# 1581 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_u32u16_u16_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Div_u32u32_u16(x_value, (uint32)y_value));
}
# 1603 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_Div_u32u16_u32_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Div_u32u32_u32(x_value, (uint32)y_value));
}
# 1625 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Div_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    return ((sint16)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 15U));
}
# 1647 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_Div_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    return ((sint32)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 31U));
}
# 1669 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    return ((sint8)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 7U));
}
# 1691 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Div_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    return ((uint16)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 16U));
}
# 1713 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_Div_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    return (Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 32U));
}
# 1735 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    return ((uint8)Mfx_Prv_Div_u32u32_ux_Inl(x_value, y_value, 8U));
}
# 1757 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Div_u16s16_s8((uint16)x_value, (sint16)y_value));
}
# 1779 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Div_u16s16_u8((uint16)x_value, (sint16)y_value));
}
# 1801 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Div_u8u8_s8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Div_u16u16_s8((uint16)x_value, (uint16)y_value));
}
# 1823 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Div_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Div_u16u16_u8((uint16)x_value, (uint16)y_value));
}
# 1850 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    boolean flag_b = (0 != 0);
    uint32 tmp_u32;


    if (y == 0)
    {
        flag_b = (1 != 0);
    }
    else
    {

        shft_s32 = (((sint32)c + (sint32)b) - (sint32)a);

        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            if (x < 0)
            {
                tmp_u32 = ((uint32) -x >> (uint32)(shft_s32));

                res_s32 = -((sint32) tmp_u32);
            }
            else
            {
                tmp_u32 = ((uint32) x >> (uint32)(shft_s32));

                res_s32 = (sint32)tmp_u32;
            }
        }
        else
        {
            tmp_u32 = ((uint32) x << (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;


            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L)
            {

                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;





            if ((shft_rev_s32 != (sint32) x) || (res_s32 == (-((0x7fffffffL)) - 1L)))
            {

                flag_b = (1 != 0);
            }
        }
    }
    if (flag_b == (0 != 0))
    {

        res_s32 = res_s32 / (sint32) y;
    }
    else
    {

        flag_b = (x < 0) != (y < 0);


        res_s32 = (flag_b == (0 != 0)) ? (0x7fff) : (-((0x7fff)) - 1);
    }


    if (res_s32 > (0x7fff))
    {
        res_s32 = (0x7fff);
    }
    if (res_s32 < (-((0x7fff)) - 1))
    {
        res_s32 = (-((0x7fff)) - 1);
    }

    return (sint16) res_s32;
}
# 1960 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_DivP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    uint32 res_u32 = 0UL;
    boolean flag_b = (0 != 0);
    uint32 tmp_u32;


    if (y == 0)
    {


        flag_b = (1 != 0);
    }
    else
    {

        shft_s32 = (((sint32)c + (sint32)b) - (sint32)a);

        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            if (x < 0)
            {
                tmp_u32 = ((uint32) -x >> (uint32)(shft_s32));

                res_s32 = -((sint32)tmp_u32);
            }
            else
            {
                tmp_u32 = ((uint32) x >> (uint32)(shft_s32));

                res_s32 = (sint32)tmp_u32;
            }
        }
        else
        {
            tmp_u32 = ((uint32) x << (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32 ;


            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L)
            {

                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;




            if ((shft_rev_s32 != (sint32) x) || (res_s32 == (-((0x7fffffffL)) - 1L)))
            {

                flag_b = (1 != 0);
            }
        }
    }
    if (flag_b == (0 != 0))
    {

        res_s32 = res_s32 / (sint32) y;
    }
    else
    {

        flag_b = (x < 0) != (y < 0);


        res_s32 = (flag_b == (0 != 0)) ? (0xffff) : (0x0);
    }
    if (res_s32 > 0)
    {

        res_u32 = (uint32) res_s32;
    }
    else
    {

        res_u32 = 0UL;
    }


    if (res_u32 > (0xffffu))
    {
        res_u32 = (0xffffu);
    }

    return (uint16) res_u32;
}
# 2079 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivP2_s16u16_s16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    boolean flag_b = (0 != 0);
    uint32 tmp_u32;


    if (y == 0UL)
    {
        flag_b = (1 != 0);
    }
    else
    {

        shft_s32 = (((sint32)c + (sint32)b) - (sint32)a);

        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            if (x < 0)
            {
                tmp_u32 = ((uint32) -x >> (uint32)(shft_s32));

                res_s32 = -((sint32)tmp_u32);
            }
            else
            {
                tmp_u32 = ((uint32) x >> (uint32)(shft_s32));

                res_s32 = (sint32)tmp_u32;
            }
        }
        else
        {
            tmp_u32 = (((uint32) x) << ((uint32)shft_s32));
            res_s32 = (sint32)tmp_u32;


            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L)
            {

                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;


            if (shft_rev_s32 != (sint32) x)
            {


                flag_b = (1 != 0);

            }
        }
    }

    if (flag_b == (0 != 0))
    {

        res_s32 = res_s32 / (sint32) ((uint32) y);
    }
    else
    {

        res_s32 = (x >= 0) ? (0x7fff) : (-((0x7fff)) - 1);
    }


    if (res_s32 > (0x7fff))
    {
        res_s32 = (0x7fff);
    }
    if (res_s32 < (-((0x7fff)) - 1))
    {
        res_s32 = (-((0x7fff)) - 1);
    }

    return (sint16) res_s32;
}
# 2186 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_DivP2_s16u16_u16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32 = 0UL;
    sint32 shft_s32;
    uint32 shft_rev_u32;
    boolean flag_b = (0 != 0);


    if ((y == 0UL) || (x < 0))
    {
        flag_b = (1 != 0);
    }
    else
    {

        shft_s32 = (((sint32)c + (sint32)b) - (sint32)a);


        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            res_u32 = (uint32) x >> (uint32)(shft_s32);
        }
        else
        {
            res_u32 = (uint32) x << (uint32)(shft_s32);


            shft_rev_u32 = (res_u32 >> (uint32)shft_s32);


            if (shft_rev_u32 != (uint32) x)
            {


                flag_b = (1 != 0);

            }
        }
    }
    if (flag_b == (0 != 0))
    {

        res_u32 = res_u32 / (uint32) y;
    }
    else
    {

        res_u32 = (uint32) ((x >= 0) ? (0xffffu) : (0x0u));
    }


    if (res_u32 > (0xffffu))
    {
        res_u32 = (0xffff);
    }

    return (uint16) res_u32;
}
# 2268 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_DivP2_s32s32_s32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 sign_u32 = 0UL;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (x < 0)
    {

        x = -x;
        sign_u32 = 1UL;
    }
    if (y == 0)
    {

        res_s64.s64s.l = (0x7fffffffUL) + 1UL;
    }
    else
    {

        radix_s32 = (((sint32)c + (sint32)b) - (sint32)a);
        if (y < 0)
        {


            y = -y;
            sign_u32 = sign_u32 ^ 1UL;
        }



        if (radix_s32 > 31)
        {
            res_s64.s64s.l = (1UL << (63UL - (uint32)radix_s32));



            if (((uint32) x) > (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = (0x7fffffffUL) + 1UL;
            }
            else
            {


                tmp_u32 = (((uint32) x) << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 < 0)
            {
                radix_s32 = -radix_s32;

                res_s64.s64s.l = ((uint32) x >> (uint32)(radix_s32));


                res_s64.s64s.h = 0;
            }
            else
            {

                res_s64.s64s.l = ((uint32) x << (uint32)radix_s32);



                tmp_u32 = ((uint32) x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }
        if (flag_u32 == 0UL)
        {

            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, (uint32) y);
        }
    }



    if (res_s64.s64s.l > (0x7fffffffUL))
    {

        if (sign_u32 == 1UL)
        {
            res_s64.s64s.l = (0x80000000UL);
        }

        else
        {
            res_s64.s64s.l = (0x7fffffffUL);
        }
    }


    if (sign_u32 == 1UL)
    {
        res_s64.s64s.l = (uint32) (-(sint32) res_s64.s64s.l);
    }

    return ((sint32) res_s64.s64s.l);
}
# 2398 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_DivP2_s32s32_u32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;


    if (x < 0)
    {
        x = -x;
        flag_u32 = 1UL;
    }



    if (y < 0)
    {
        y = -y;
        flag_u32 = flag_u32 ^ 1UL;
    }


    if (flag_u32 == 1UL)
    {
        res_s64.s64s.l = (0x0uL);
    }
    else if (y == 0)
    {

        res_s64.s64s.l = (0xffffffffuL);
    }
    else
    {

        radix_s32 = (((sint32)c + (sint32)b) - (sint32)a);



        if (radix_s32 > 31)
        {
            res_s64.s64s.l = (1UL << (63UL - (uint32)radix_s32));



            if (((uint32) x) > (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = (0xffffffffuL);
            }
            else
            {


                tmp_u32 = ((uint32) x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {

            if (radix_s32 < 0)
            {
                radix_s32 = -radix_s32;

                res_s64.s64s.l = ((uint32) x >> (uint32)(radix_s32));

                res_s64.s64s.h = 0L;
            }
            else
            {

                res_s64.s64s.l = ((uint32) x << (uint32)radix_s32);



                tmp_u32 = ((uint32) x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32 ;
            }
        }
        if (flag_u32 == 0UL)
        {

            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, (uint32) y);
        }
    }

    return (res_s64.s64s.l);
}
# 2512 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_DivP2_s32u32_s32_Inl(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 sign_u32 = 0UL;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (x < 0)
    {

        x = -x;
        sign_u32 = 1UL;
    }
    if (y == 0UL)
    {

        res_s64.s64s.l = (0x7fffffffUL) + 1UL;
    }
    else
    {

        radix_s32 = (((sint32)c + (sint32)b) - (sint32)a);


        if (radix_s32 > 31)
        {
            res_s64.s64s.l = (1UL << (63UL - (uint32)radix_s32));



            if (((uint32) x) > (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = (0x7fffffffUL) + 1UL;
            }
            else
            {


                tmp_u32 = ((uint32) x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {

            if (radix_s32 < 0)
            {
                radix_s32 = -radix_s32;

                res_s64.s64s.l = ((uint32) x >> (uint32)(radix_s32));


                res_s64.s64s.h = 0;
            }
            else
            {

                res_s64.s64s.l = ((uint32) x << (uint32)radix_s32);



                tmp_u32 = ((uint32) x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }
        if (flag_u32 == 0UL)
        {

            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, y);
        }
    }



    if (res_s64.s64s.l > (0x7fffffffUL))
    {

        if (sign_u32 == 1UL)
        {
            res_s64.s64s.l = (0x80000000UL);
        }

        else
        {
            res_s64.s64s.l = (0x7fffffffL);
        }
    }


    if (sign_u32 == 1UL)
    {
        res_s64.s64s.l = (uint32) (-(sint32) res_s64.s64s.l);
    }

    return ((sint32) res_s64.s64s.l);
}
# 2635 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_DivP2_s32u32_u32_Inl(sint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (x < 0)
    {

        res_s64.s64s.l = (0x0uL);
    }
    else if (y == 0UL)
    {

        res_s64.s64s.l = (0xffffffffuL);
        ;
    }
    else
    {

        radix_s32 = (((sint32)c + (sint32)b) - (sint32)a);



        if (radix_s32 > 32)
        {
            res_s64.s64s.l = (1UL << (64UL - (uint32)radix_s32));



            if (((uint32) x) >= (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = (0xffffffffuL);
            }
            else
            {


                tmp_u32 = ((uint32) x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 <= 0)
            {
                radix_s32 = -radix_s32;

                res_s64.s64s.l = ((uint32) x >> (uint32)(radix_s32));


                res_s64.s64s.h = 0L;
            }
   else if(radix_s32 == 32)
            {

                res_s64.s64s.l = 0uL;

                res_s64.s64s.h = x;
            }
            else
            {

                res_s64.s64s.l = ((uint32) x << (uint32)radix_s32);



                tmp_u32 = ((uint32) x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }
        if (flag_u32 == 0UL)
        {

            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, y);
        }
    }

    return (res_s64.s64s.l);
}
# 2742 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;


    if (y == 0)
    {
        flag_u32 = 1UL;
    }
    else
    {

        shft_s32 = (((sint32)c + (sint32)b) - (sint32)a);


        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            tmp_u32 = ((uint32) x >> (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) x << (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;


            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L)
            {

                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;


            if (shft_rev_s32 != (sint32) x)
            {

                flag_u32 = 1UL;
            }
        }
    }
    if (flag_u32 == 0UL)
    {

        res_s32 = (sint32) res_s32 / (sint32) y;
    }
    else
    {

        res_s32 = (y >= 0) ? (0x7fff) : (-((0x7fff)) - 1);
    }


    if (res_s32 > (0x7fff))
    {
        res_s32 = (0x7fff);
    }
    if (res_s32 < (-((0x7fff)) - 1))
    {
        res_s32 = (-((0x7fff)) - 1);
    }

    return (sint16) res_s32;
}
# 2837 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_DivP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32 = 0UL;
    sint32 shft_s32;
    uint32 shft_rev_u32;
    uint32 flag_u32 = 0UL;


    if (y == 0)
    {
        flag_u32 = 1UL;
    }
    else
    {

        shft_s32 = (((sint32)c + (sint32)b) - (sint32)a);


        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            res_u32 = (uint32) x >> (uint32)(shft_s32);
        }
        else
        {
            res_u32 = (uint32) x << (uint32)(shft_s32);


            shft_rev_u32 = (res_u32 >> (uint32)shft_s32);


            if (shft_rev_u32 != (uint32) x)
            {

                flag_u32 = 1UL;
            }
        }
    }
    if (flag_u32 == 0UL)
    {

        res_u32 = (uint32) res_u32 / (uint32) ((sint32) y);
    }
    if (flag_u32 == 1UL)
    {

        res_u32 = (uint32) ((y >= 0) ? (0xffffu) : (0x0u));
    }


    if (res_u32 > (0xffffu))
    {
        res_u32 = (0xffffu);
    }

    return (uint16) res_u32;
}
# 2917 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32 = 0;
    sint32 shft_s32;
    sint32 shft_rev_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;


    if (y == 0u)
    {
        flag_u32 = 1UL;
    }
    else
    {

        shft_s32 = (((sint32)c + (sint32)b) - (sint32)a);


        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            tmp_u32 = ((uint32) x >> (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) x << (uint32)(shft_s32));
            res_s32 = (sint32)tmp_u32;


            tmp_u32 = ((uint32)res_s32 >> (uint32)shft_s32);

            if(res_s32 < 0L)
            {

                tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shft_s32));
            }

            shft_rev_s32 = (sint32)tmp_u32;


            if (shft_rev_s32 != (sint32) x)
            {

                flag_u32 = 1UL;
            }
        }
    }
    if (flag_u32 == 0UL)
    {

        res_s32 = (sint32) res_s32 / (sint32) ((uint32) y);
    }
    else
    {

        res_s32 = (0x7fff);
    }


    if (res_s32 > (0x7fff))
    {
        res_s32 = (0x7fff);
    }

    return (sint16) res_s32;
}
# 3007 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_DivP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32 = 0UL;
    sint32 shft_s32;
    uint32 shft_rev_u32;
    uint32 flag_u32 = 0UL;


    if (y == 0UL)
    {
        flag_u32 = 1UL;
    }
    else
    {

        shft_s32 = (((sint32)c + (sint32)b) - (sint32)a);


        if(shft_s32 < 0)
        {
            shft_s32 = -shft_s32;
            res_u32 = (uint32) x >> (uint32)(shft_s32);
        }
        else
        {
            res_u32 = (uint32) x << (uint32)(shft_s32);


            shft_rev_u32 = (res_u32 >> (uint32)shft_s32);


            if (shft_rev_u32 != (uint32) x)
            {

                flag_u32 = 1UL;
            }
        }
    }
    if (flag_u32 == 0UL)
    {

        res_u32 = res_u32 / (uint32) y;
    }
    else
    {


        res_u32 = (0xffffu);
    }


    if (res_u32 > (0xffffu))
    {
        res_u32 = (0xffffu);
    }

    return (uint16) res_u32;
}
# 3088 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_DivP2_u32s32_s32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 sign_u32 = 0UL;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (y == 0)
    {

        res_s64.s64s.l = (0x7fffffffL);
    }
    else
    {

        radix_s32 = (((sint32)c + (sint32)b) - (sint32)a);
        if (y < 0)
        {

            y = -y;
            sign_u32 = 1UL;
        }



        if (radix_s32 > 31)
        {
            res_s64.s64s.l = (1UL << (63UL - (uint32)radix_s32));



            if (x > (res_s64.s64s.l))
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = (0x7fffffffUL) + 1UL;
            }
            else
            {


                tmp_u32 = (x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 < 0)
            {
                radix_s32 = -radix_s32;

                res_s64.s64s.l = (x >> (uint32)(radix_s32));


                res_s64.s64s.h = 0;
            }
            else
            {

                res_s64.s64s.l = (x << (uint32)radix_s32);



                tmp_u32 = (x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }

        if (flag_u32 == 0UL)
        {

            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, (uint32) y);
        }



        if (res_s64.s64s.l > (0x7fffffffUL))
        {

            if (sign_u32 == 1UL)
            {
                res_s64.s64s.l = (0x80000000UL);
            }


            else
            {
                res_s64.s64s.l = (0x7fffffffL);
            }
        }


        if (sign_u32 == 1UL)
        {
            res_s64.s64s.l = (uint32) (-(sint32) res_s64.s64s.l);
        }
    }

    return ((sint32) res_s64.s64s.l);
}
# 3213 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_DivP2_u32s32_u32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_sint64u res_s64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;
    uint32 tmp_u32;

    if (y < 0)
    {

        res_s64.s64s.l = (0x0uL);
    }
    else if (y == 0)
    {

        res_s64.s64s.l = (0xffffffffuL);
    }
    else
    {

        radix_s32 = (((sint32)c + (sint32)b) - (sint32)a);



        if (radix_s32 > 31L)
        {
            res_s64.s64s.l = (uint32) (1UL << (63UL - (uint32)radix_s32));



            if (x > res_s64.s64s.l)
            {
                flag_u32 = 1UL;
                res_s64.s64s.l = (0xffffffffuL);
            }
            else
            {


                tmp_u32 = (x << ((uint32)radix_s32 - 32UL));
                res_s64.s64s.h = (sint32)tmp_u32;
                res_s64.s64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 < 0)
            {

                radix_s32 = -radix_s32;
                res_s64.s64s.l = (x >> (uint32)(radix_s32));

                res_s64.s64s.h = 0;
            }
            else
            {

                res_s64.s64s.l = (x << (uint32)radix_s32);


                tmp_u32 = (x >> (32UL - (uint32)radix_s32));
                res_s64.s64s.h = (sint32)tmp_u32;
            }
        }
        if (flag_u32 == 0UL)
        {

            res_s64.s64s.l = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) res_s64.s64, (uint32) y);
        }
    }

    return (res_s64.s64s.l);
}
# 3310 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_DivP2_u32u32_s32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_uint64u res_u64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;

    if (y == 0UL)
    {

        res_u64.u64s.l = (0x7fffffffL);
    }
    else
    {

        radix_s32 = (((sint32)c + (sint32)b) - (sint32)a);



        if (radix_s32 > 31L)
        {
            res_u64.u64s.l = (1UL << (63UL - (uint32)radix_s32));



            if (x > (res_u64.u64s.l))
            {
                flag_u32 = 1UL;
                res_u64.u64s.l = (0x7fffffffL);
            }
            else
            {


                res_u64.u64s.h = (x << ((uint32)radix_s32 - 32UL));
                res_u64.u64s.l = 0;
            }
        }
        else
        {

            if (radix_s32 < 0)
            {

                radix_s32 = -radix_s32;
                res_u64.u64s.l = (x >> (uint32)(radix_s32));


                res_u64.u64s.h = 0;
            }
            else
            {

                res_u64.u64s.l = (x << (uint32)radix_s32);



                res_u64.u64s.h = (x >> (32UL - (uint32)radix_s32));
            }
        }
        if (flag_u32 == 0UL)
        {

            res_u64.u64s.l = Mfx_Prv_Div_u64u32_u32_Inl(res_u64.u64, y);
        }
    }



    if (res_u64.u64s.l > (0x7fffffffUL))
    {
        res_u64.u64s.l = (0x7fffffffL);
    }

    return ((sint32) res_u64.u64s.l);
}
# 3409 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_DivP2_u32u32_u32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_uint64u res_u64;
    sint32 radix_s32;
    uint32 flag_u32 = 0UL;

    if (y != 0UL)
    {

        radix_s32 = (((sint32)c + (sint32)b) - (sint32)a);



        if (radix_s32 > 32)
        {
            res_u64.u64s.l = (1UL << (64UL - (uint32)radix_s32));



            if (x >= (res_u64.u64s.l))
            {
                flag_u32 = 1UL;
                res_u64.u64s.l = (0xffffffffuL);
            }
            else
            {


                res_u64.u64s.h = (x << ((uint32)radix_s32 - 32UL));
                res_u64.u64s.l = 0UL;
            }
        }
        else
        {
            if (radix_s32 <= 0)
            {

                radix_s32 = -radix_s32;
                res_u64.u64s.l = (x >> ((uint32)radix_s32));


                res_u64.u64s.h = 0UL;
            }
            else if(radix_s32 == 32)
            {

                res_u64.u64s.l = 0uL;

                res_u64.u64s.h = x;
            }
            else
            {

                res_u64.u64s.l = (x << (uint32)radix_s32);

                res_u64.u64s.h = (x >> (32UL - (uint32)radix_s32));
            }
        }

        if (flag_u32 == 0UL)
        {

            res_u64.u64s.l = Mfx_Prv_Div_u64u32_u32_Inl(res_u64.u64, y);
        }
    }

    else
    {
        res_u64.u64s.l = (0xffffffffuL);
    }

    return (res_u64.u64s.l);
}
# 3504 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivShLeft_s16s16u8_s16_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_s32s32u8_s16_Inl(x_value, y_value, shift));
}
# 3529 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivShLeft_s16u16u8_s16_Inl(sint16 x_value, uint16 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_s32u32u8_s16_Inl((sint32) x_value, (uint32) y_value, shift));
}
# 3554 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivShLeft_s32s32u8_s16_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_s32s32u8_s32_Inl(x_value, y_value, shift);


    if (res_s32 > (0x7fff))
    {
        res_s32 = (0x7fff);
    }
    if (res_s32 < (-((0x7fff)) - 1))
    {
        res_s32 = (-((0x7fff)) - 1);
    }

    return (sint16) res_s32;
}
# 3593 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_DivShLeft_s32s32u8_s32_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 res_s64;
    uint32 tmp_u32;


    tmp_u32 = 1UL << shift;
    res_s64 = (Mfx_sint64) x_value * (Mfx_sint64)tmp_u32;


    return (Mfx_Prv_Div_s64s32_s32_Inl(res_s64, y_value));
}
# 3626 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_DivShLeft_s32s32u8_s8_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_s32s32u8_s32_Inl(x_value, y_value, shift);


    if (res_s32 > (0x7f))
    {
        res_s32 = (0x7f);
    }
    if (res_s32 < (-((0x7f)) - 1))
    {
        res_s32 = (-((0x7f)) - 1);
    }

    return (sint8) res_s32;
}
# 3665 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_DivShLeft_s32s32u8_u16_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_s32s32u8_u32_Inl(x_value, y_value, shift);


    if (res_u32 > (0xffffu))
    {
        res_u32 = (0xffff);
    }

    return (uint16) res_u32;
}
# 3699 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_DivShLeft_s32s32u8_u32_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 res_s64;
    uint32 tmp_u32;


    tmp_u32 = 1UL << shift;
    res_s64 = (Mfx_sint64) x_value * (Mfx_sint64)tmp_u32;


    return (Mfx_Prv_Div_s64s32_u32_Inl(res_s64, y_value));
}
# 3732 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_DivShLeft_s32s32u8_u8_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_s32s32u8_u32_Inl(x_value, y_value, shift);


    if (res_u32 > (0xffu))
    {
        res_u32 = (0xff);
    }

    return (uint8) res_u32;
}
# 3767 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivShLeft_s32u32u8_s16_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_s32u32u8_s32_Inl(x_value, y_value, shift);


    if (res_s32 > (0x7fff))
    {
        res_s32 = (0x7fff);
    }
    if (res_s32 < (-((0x7fff)) - 1))
    {
        res_s32 = (-((0x7fff)) - 1);
    }

    return (sint16) res_s32;
}
# 3806 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_DivShLeft_s32u32u8_s32_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_sint64 res_s64;
    uint32 tmp_u32;


    tmp_u32 = 1UL << shift;
    res_s64 = (Mfx_sint64) x_value * (Mfx_sint64)tmp_u32;


    return (Mfx_Prv_Div_s64u32_s32_Inl(res_s64, y_value));
}
# 3839 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_DivShLeft_s32u32u8_s8_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_s32u32u8_s32_Inl(x_value, y_value, shift);


    if (res_s32 > (0x7f))
    {
        res_s32 = (0x7f);
    }
    if (res_s32 < (-((0x7f)) - 1))
    {
        res_s32 = (-((0x7f)) - 1);
    }

    return (sint8) res_s32;
}
# 3878 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_DivShLeft_s32u32u8_u16_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_s32u32u8_u32_Inl(x_value, y_value, shift);


    if (res_u32 > (0xffffu))
    {
        res_u32 = (0xffff);
    }

    return (uint16) res_u32;
}
# 3912 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_DivShLeft_s32u32u8_u32_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_uint64 res_u64;
    uint32 tmp_u32;
    uint32 res_u32;


    if (x_value < 0)
    {
        res_u32 = (0x0uL);
    }


    else
    {

        tmp_u32 = 1UL << shift;
        res_u64 = (Mfx_uint64) x_value * (Mfx_uint64)tmp_u32;


        res_u32 = Mfx_Prv_Div_u64u32_u32_Inl(res_u64, y_value);
    }

    return (uint32) (res_u32);
}
# 3958 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_DivShLeft_s32u32u8_u8_Inl(sint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_s32u32u8_u32_Inl(x_value, y_value, shift);


    if (res_u32 > (0xffu))
    {
        res_u32 = (0xff);
    }

    return (uint8) res_u32;
}
# 3993 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_DivShLeft_u16u16u8_u16_Inl(uint16 x_value, uint16 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_u32u32u8_u16_Inl((uint32) x_value, (uint32) y_value, shift));
}
# 4018 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_DivShLeft_u16u16u8_u8_Inl(uint16 x_value, uint16 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_u32u32u8_u8_Inl((uint32) x_value, (uint32) y_value, shift));
}
# 4043 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivShLeft_u32s32u8_s16_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_u32s32u8_s32_Inl(x_value, y_value, shift);


    if (res_s32 > (0x7fff))
    {
        res_s32 = (0x7fff);
    }
    if (res_s32 < (-((0x7fff)) - 1))
    {
        res_s32 = (-((0x7fff)) - 1);
    }

    return (sint16) res_s32;
}
# 4082 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_DivShLeft_u32s32u8_s32_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 res_s64;
    uint32 tmp_u32;


    tmp_u32 = 1UL << shift;
    res_s64 = (Mfx_sint64) x_value * (Mfx_sint64)tmp_u32;


    return (Mfx_Prv_Div_s64s32_s32_Inl(res_s64, y_value));
}
# 4115 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_DivShLeft_u32s32u8_s8_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_u32s32u8_s32_Inl(x_value, y_value, shift);


    if (res_s32 > (0x7f))
    {
        res_s32 = (0x7f);
    }
    if (res_s32 < (-((0x7f)) - 1))
    {
        res_s32 = (-((0x7f)) - 1);
    }

    return (sint8) res_s32;
}
# 4154 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_DivShLeft_u32s32u8_u16_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_u32s32u8_u32_Inl(x_value, y_value, shift);


    if (res_u32 > (0xffffu))
    {
        res_u32 = (0xffff);
    }

    return (uint16) res_u32;
}
# 4188 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_DivShLeft_u32s32u8_u32_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_uint64 res_u64;
    uint32 tmp_u32;
    uint32 res_u32;


    if (y_value < 0)
    {
        res_u32 = (0x0uL);
    }
    else
    {

        tmp_u32 = 1UL << shift;
        res_u64 = (Mfx_uint64) x_value * (Mfx_uint64)tmp_u32;


        res_u32 = Mfx_Prv_Div_u64u32_u32_Inl(res_u64, (uint32) y_value);
    }

    return (res_u32);
}
# 4232 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_DivShLeft_u32s32u8_u8_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_u32s32u8_u32_Inl(x_value, y_value, shift);


    if (res_u32 > (0xffu))
    {
        res_u32 = (0xff);
    }

    return (uint8) res_u32;
}
# 4267 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_DivShLeft_u32u32u8_s16_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_u32u32u8_s32_Inl(x_value, y_value, shift);


    if (res_s32 > (0x7fff))
    {
        res_s32 = (0x7fff);
    }

    return (sint16) res_s32;
}
# 4302 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_DivShLeft_u32u32u8_s32_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_uint64 res_u64;
    uint32 tmp_u32;
    uint32 res_u32;


    tmp_u32 = 1UL << shift;
    res_u64 = (Mfx_uint64) x_value * (Mfx_uint64)tmp_u32;


    res_u32 = Mfx_Prv_Div_u64u32_u32_Inl(res_u64, y_value);


    if (res_u32 > (0x7fffffffUL))
    {
        res_u32 = (0x7fffffffL);
    }

    return (sint32)(res_u32);
}
# 4344 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_DivShLeft_u32u32u8_s8_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_DivShLeft_u32u32u8_s32_Inl(x_value, y_value, shift);


    if (res_s32 > (0x7f))
    {
        res_s32 = (0x7f);
    }

    return (sint8) res_s32;
}
# 4379 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_DivShLeft_u32u32u8_u16_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_u32u32u8_u32_Inl(x_value, y_value, shift);


    if (res_u32 > (0xffffu))
    {
        res_u32 = (0xffff);
    }

    return (uint16) res_u32;
}
# 4414 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_DivShLeft_u32u32u8_u32_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_uint64 res_u64;
    uint32 tmp_u32;


    tmp_u32 = 1UL << shift;
    res_u64 = (Mfx_uint64) x_value * (Mfx_uint64)tmp_u32;


    return (Mfx_Prv_Div_u64u32_u32_Inl(res_u64, y_value));
}
# 4447 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_DivShLeft_u32u32u8_u8_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_DivShLeft_u32u32u8_u32_Inl(x_value, y_value, shift);


    if (res_u32 > (0xffu))
    {
        res_u32 = (0xff);
    }
    return (uint8) res_u32;
}
# 4481 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_DivShLeft_u8u8u8_u8_Inl(uint8 x_value, uint8 y_value, uint8 shift)
{
    return (Mfx_Prv_DivShLeft_u32u32u8_u8_Inl((uint32) x_value, (uint32) y_value, shift));
}
# 4500 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Mod_s16_Inl(sint16 x_value, sint16 y_value)
{
    return ((sint16)Mfx_Prv_Mod_s32_Inl(x_value, y_value));
}
# 4519 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_Mod_s32_Inl(sint32 x_value, sint32 y_value)
{
     return ((y_value == 0) || ( (x_value == (-((0x7fffffffL)) - 1L)) && (y_value == -1) ) ) ? 0L : (x_value % y_value);
}
# 4537 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_Mod_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_Mod_s32_Inl(x_value, y_value);


    if(res_s32 < (-((0x7fff)) - 1))
    {
        res_s32 = (-((0x7fff)) - 1);
    }


    if(res_s32 > (0x7fff))
    {
        res_s32 = (0x7fff);
    }

    return((sint16)res_s32);
}
# 4571 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Mod_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_Mod_s32_Inl(x_value, y_value);


    if(res_s32 < (-((0x7f)) - 1))
    {
        res_s32 = (-((0x7f)) - 1);
    }


    if(res_s32 > (0x7f))
    {
        res_s32 = (0x7f);
    }

    return((sint8)res_s32);
}
# 4605 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_Mod_s8_Inl(sint8 x_value, sint8 y_value)
{
    return ((sint8)Mfx_Prv_Mod_s32_Inl(x_value, y_value));
}
# 4624 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Mod_u16_Inl(uint16 x_value, uint16 y_value)
{
    return ((uint16)Mfx_Prv_Mod_u32_Inl(x_value, y_value));
}
# 4643 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_Mod_u32_Inl(uint32 x_value, uint32 y_value)
{
    return (y_value == 0UL) ? 0UL : (x_value % y_value);
}
# 4661 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_Mod_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_Mod_u32_Inl(x_value, y_value);


    if(res_u32 > (0xffffu))
    {
        res_u32 = (0xffff);
    }

    return((uint16)res_u32);
}
# 4689 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Mod_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_Mod_u32_Inl(x_value, y_value);


    if(res_u32 > (0xffu))
    {
        res_u32 = (0xff);
    }

    return((uint8)res_u32);
}
# 4717 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_Mod_u8_Inl(uint8 x_value, uint8 y_value)
{
    return ((uint8)Mfx_Prv_Mod_u32_Inl(x_value, y_value));
}
# 4741 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_RDiv_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_s16_Inl(x_value, y_value));
}
# 4766 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_s8_Inl(x_value, y_value));
}
# 4791 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_u16_Inl(x_value, y_value));
}
# 4816 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_u8_Inl(x_value, y_value));
}
# 4841 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_RDiv_s16u16_s16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_s16_Inl((sint32) x_value, (uint32) y_value));
}
# 4866 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_s16u16_s8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_s8_Inl((sint32) x_value, (uint32) y_value));
}
# 4891 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_s16u16_u16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_u16_Inl((sint32) x_value, (uint32) y_value));
}
# 4916 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_s16u16_u8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_u8_Inl((sint32) x_value, (uint32) y_value));
}
# 4941 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_RDiv_s32s16_s16_Inl(sint32 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_s16_Inl(x_value, y_value));
}
# 4966 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_RDiv_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_s32s32_s32_Inl(x_value, y_value);


    if (res_s32 > (sint32) (0x7fff))
    {
        res_s32 = (sint32) ((0x7fff));
    }
    if (res_s32 < (sint32) (-((0x7fff)) - 1))
    {
        res_s32 = (sint32) ((-((0x7fff)) - 1));
    }

    return ((sint16) res_s32);
}
# 5005 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_RDiv_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 y_tmp_u32;
    sint32 remain_s32;
    sint32 res_s32;
    sint32 incr_s32 = 1;

    if (y_value == 0)
    {

        res_s32 = ((x_value >= 0) ? ((0x7fffffffL)) : ((-((0x7fffffffL)) - 1L)));
    }
    else
    {

        if ((y_value == -1) && (x_value == (-((0x7fffffffL)) - 1L)))
        {
            res_s32 = (0x7fffffffL);
        }

        else
        {
            res_s32 = x_value / y_value;
            remain_s32 = x_value % y_value;


            if (x_value < 0)
            {

                incr_s32 = -incr_s32;
                remain_s32 = -remain_s32;
            }


            if (y_value < 0)
            {
                incr_s32 = -incr_s32;
                y_tmp_u32 = (uint32) (-y_value);
            }
            else
            {
                y_tmp_u32 = (uint32) y_value;
            }


            y_tmp_u32 = (y_tmp_u32 >> 1UL) + (y_tmp_u32 & 1UL);






            if (((uint32) remain_s32) >= y_tmp_u32)
            {
                res_s32 = res_s32 + incr_s32;
            }
        }
    }

    return (res_s32);
}
# 5087 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_s32s32_s32_Inl(x_value, y_value);


    if (res_s32 > (sint32) (0x7f))
    {
        res_s32 = (sint32) ((0x7f));
    }
    if (res_s32 < (sint32) (-((0x7f)) - 1))
    {
        res_s32 = (sint32) ((-((0x7f)) - 1));
    }

    return ((sint8) res_s32);
}
# 5126 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_s32s32_u32_Inl(x_value, y_value);


    if (res_u32 > (uint32) (0xffff))
    {
        res_u32 = (uint32) (0xffff);
    }

    return ((uint16) res_u32);
}
# 5161 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_RDiv_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    uint32 x_temp_u32;
    uint32 y_temp_u32;
    uint32 remain_u32;

    if (y_value == 0)
    {

        res_u32 = ((x_value >= 0) ? ((0xffffffffuL)) : ((0x0uL)));
    }

    else if ((y_value == -1) && (x_value == (-((0x7fffffffL)) - 1L)))
    {
        res_u32 = (((uint32) (0x7fffffffL)) + 1UL);
    }
    else
    {

        if (((x_value <= 0) && (y_value > 0)) || ((x_value >= 0) && (y_value < 0)))
        {

            res_u32 = (0x0uL);
        }
        else
        {

            if (x_value < 0)
            {
                x_temp_u32 = (uint32) (-x_value);
                y_temp_u32 = (uint32) (-y_value);
            }
            else
            {
                x_temp_u32 = (uint32) (x_value);
                y_temp_u32 = (uint32) (y_value);
            }
            res_u32 = x_temp_u32 / y_temp_u32;
            remain_u32 = x_temp_u32 % y_temp_u32;


            y_temp_u32 = (y_temp_u32 >> 1UL) + (y_temp_u32 & 1UL);


            if (remain_u32 >= y_temp_u32)
            {
                res_u32 = res_u32 + 1UL;
            }
        }
    }

    return (res_u32);
}
# 5236 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_s32s32_u32_Inl(x_value, y_value);


    if (res_u32 > (uint32) (0xff))
    {
        res_u32 = (uint32) (0xff);
    }

    return ((uint8) res_u32);
}
# 5271 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_s32u16_u16_Inl(sint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_u16_Inl(x_value, (uint32) y_value));
}
# 5296 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_RDiv_s32u32_s16_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_s32u32_s32_Inl(x_value, y_value);


    if (res_s32 > (sint32) (0x7fff))
    {
        res_s32 = (sint32) ((0x7fff));
    }
    if (res_s32 < (sint32) (-((0x7fff)) - 1))
    {
        res_s32 = (sint32) ((-((0x7fff)) - 1));
    }

    return ((sint16) res_s32);
}
# 5335 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_RDiv_s32u32_s32_Inl(sint32 x_value, uint32 y_value)
{
    uint32 y_tmp_u32;
    uint32 x_tmp_u32;
    uint32 remain_u32;
    sint32 res_s32;
    sint32 incr_s32 = 1;

    res_s32 = Mfx_Prv_Div_s32u32_s32_Inl(x_value, y_value);


    if ((res_s32 < (0x7fffffffL)) && (res_s32 > (-((0x7fffffffL)) - 1L)))
    {

        if (x_value < 0)
        {
            x_tmp_u32 = (uint32) (-x_value);
            incr_s32 = -1;
        }
        else
        {
            x_tmp_u32 = (uint32) x_value;
        }

        remain_u32 = x_tmp_u32 % y_value;





        y_tmp_u32 = (y_value >> 1UL) + (y_value & 1UL);




        if (remain_u32 >= y_tmp_u32)
        {
            res_s32 = res_s32 + incr_s32;
        }
    }

    return (res_s32);
}
# 5399 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_s32u32_s8_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_s32u32_s32_Inl(x_value, y_value);


    if (res_s32 > (sint32) (0x7f))
    {
        res_s32 = (sint32) ((0x7f));
    }
    if (res_s32 < (sint32) (-((0x7f)) - 1))
    {
        res_s32 = (sint32) ((-((0x7f)) - 1));
    }

    return ((sint8) res_s32);
}
# 5438 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_s32u32_u16_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (x_value < 0)
    {
        res_u32 = (uint32) (0x0);
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u16_Inl((uint32) x_value, y_value);
    }

    return ((uint16) res_u32);
}
# 5475 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_RDiv_s32u32_u32_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (x_value < 0)
    {
        res_u32 = (0x0uL);
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl((uint32) x_value, y_value);
    }

    return (res_u32);
}
# 5512 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_s32u32_u8_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (x_value < 0)
    {
        res_u32 = (uint32) (0x0);
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u8_Inl((uint32) x_value, y_value);
    }

    return ((uint8) res_u32);
}
# 5549 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_s8_Inl(x_value, y_value));
}
# 5574 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Prv_RDiv_s32s32_u8_Inl(x_value, y_value));
}
# 5599 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_s8u8_s8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_s8_Inl((sint32) x_value, (uint32) y_value));
}
# 5624 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_s8u8_u8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Prv_RDiv_s32u32_u8_Inl((sint32) x_value, (uint32) y_value));
}
# 5649 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_RDiv_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_s16_Inl(x_value, y_value));
}
# 5674 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_s8_Inl(x_value, y_value));
}
# 5699 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_u16_Inl(x_value, y_value));
}
# 5724 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_u8_Inl(x_value, y_value));
}
# 5749 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_RDiv_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_s16_Inl((uint32) x_value, (uint32) y_value));
}
# 5774 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_s8_Inl((uint32) x_value, (uint32) y_value));
}
# 5799 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u16_Inl((uint32) x_value, (uint32) y_value));
}
# 5824 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u8_Inl((uint32) x_value, (uint32) y_value));
}
# 5849 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_RDiv_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_u32s32_s32_Inl(x_value, y_value);


    if (res_s32 > (sint32) (0x7fff))
    {
        res_s32 = (sint32) ((0x7fff));
    }
    if (res_s32 < (sint32) (-((0x7fff)) - 1))
    {
        res_s32 = (sint32) ((-((0x7fff)) - 1));
    }

    return ((sint16) res_s32);
}
# 5888 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_RDiv_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 y_tmp_u32;
    uint32 remain_u32;
    sint32 res_s32;
    sint32 incr_s32 = 1;

    res_s32 = Mfx_Prv_Div_u32s32_s32_Inl(x_value, y_value);




    if ((res_s32 != (0x7fffffffL)) && (res_s32 != (-((0x7fffffffL)) - 1L)))
    {



        if (y_value < 0)
        {
            incr_s32 = -1;
            y_tmp_u32 = (uint32) (-y_value);
        }
        else
        {
            y_tmp_u32 = (uint32) y_value;
        }


        remain_u32 = x_value % y_tmp_u32;


        y_tmp_u32 = (y_tmp_u32 >> 1UL) + (y_tmp_u32 & 1UL);




        if (remain_u32 >= y_tmp_u32)
        {
            res_s32 = res_s32 + incr_s32;
        }
    }

    return (res_s32);
}
# 5953 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RDiv_u32s32_s32_Inl(x_value, y_value);


    if (res_s32 > (sint32) (0x7f))
    {
        res_s32 = (sint32) ((0x7f));
    }
    if (res_s32 < (sint32) (-((0x7f)) - 1))
    {
        res_s32 = (sint32) ((-((0x7f)) - 1));
    }

    return ((sint8) res_s32);
}
# 5992 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    if (y_value < 0)
    {
        res_u32 = (uint32) (0x0);
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u16_Inl(x_value, (uint32) y_value);
    }

    return ((uint16) res_u32);
}
# 6029 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_RDiv_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    if (y_value < 0)
    {
        res_u32 = (0x0uL);
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, (uint32) y_value);
    }

    return (res_u32);
}
# 6065 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    if (y_value < 0)
    {
        res_u32 = (uint32) (0x0);
    }
    else
    {
        res_u32 = Mfx_Prv_RDiv_u32u32_u8_Inl(x_value, (uint32) y_value);
    }

    return ((uint8) res_u32);
}
# 6102 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_u32u16_u16_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u16_Inl(x_value, (uint32) y_value));
}
# 6127 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_RDiv_u32u16_u32_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, (uint32) y_value));
}
# 6152 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint16 Mfx_Prv_RDiv_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);


    if (res_u32 > (uint32) (0x7fff))
    {
        res_u32 = (uint32) (0x7fff);
    }

    return ((sint16) res_u32);
}
# 6187 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_RDiv_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);


    if (res_u32 > (uint32) (0x7fffffffL))
    {
        res_u32 = (uint32) (0x7fffffffL);
    }

    return ((sint32) res_u32);
}
# 6222 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);


    if (res_u32 > (uint32) (0x7f))
    {
        res_u32 = (uint32) (0x7f);
    }

    return ((sint8) res_u32);
}
# 6257 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint16 Mfx_Prv_RDiv_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);


    if (res_u32 > (uint32) (0xffff))
    {
        res_u32 = (uint32) (0xffff);
    }

    return ((uint16) res_u32);
}
# 6292 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_RDiv_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 y_tmp_u32;
    uint32 remain_u32;
    uint32 res_u32;

    if (y_value == 0UL)
    {

        res_u32 = (0xffffffffuL);
    }
    else
    {
        res_u32 = x_value / y_value;
        remain_u32 = x_value % y_value;


        y_tmp_u32 = (y_value >> 1UL) + (y_value & 1UL);


        if (remain_u32 >= y_tmp_u32)
        {
            res_u32 = res_u32 + 1UL;
        }
    }

    return (res_u32);
}
# 6341 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RDiv_u32u32_u32_Inl(x_value, y_value);


    if (res_u32 > (uint32) (0xff))
    {
        res_u32 = (uint32) (0xff);
    }

    return ((uint8) res_u32);
}
# 6376 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_s8_Inl(x_value, y_value));
}
# 6401 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Prv_RDiv_u32s32_u8_Inl(x_value, y_value));
}
# 6426 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint8 Mfx_Prv_RDiv_u8u8_s8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_s8_Inl((uint32) x_value, (uint32) y_value));
}
# 6451 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint8 Mfx_Prv_RDiv_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Prv_RDiv_u32u32_u8_Inl((uint32) x_value, (uint32) y_value));
}
# 6472 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_Div_u64u32_u32_Inl(Mfx_uint64 x_value, uint32 y_value)
{

    Mfx_uint64u tmp_u64s;
    Mfx_uint64 res_u64;
    uint32 tmp_u32;
    uint8_least i = 0;


    tmp_u64s.u64 = x_value;


    if(y_value == 0uL)
    {

        res_u64 = (0xffffffffuL);
    }
    else if (y_value > 0x7FFFFFFFuL)
    {

        tmp_u32 = tmp_u64s.u64s.h;
        res_u64 = ((Mfx_uint64) tmp_u32);


        tmp_u64s.u64 -= ((Mfx_uint64) tmp_u32) * ((Mfx_uint64) y_value);


        while (tmp_u64s.u64s.h > 0UL)
        {

            tmp_u32 = tmp_u64s.u64s.h;
            res_u64 += ((Mfx_uint64) tmp_u32);


            tmp_u64s.u64 -= ((Mfx_uint64) tmp_u32) * ((Mfx_uint64) y_value);
        }
        tmp_u32 = tmp_u64s.u64s.l / y_value;
        res_u64 += ((Mfx_uint64) tmp_u32);


        res_u64 = ((res_u64 > ((Mfx_uint64) (0xffffffffuL))) ? ((Mfx_uint64) (0xffffffffuL)) : res_u64);
    }
    else
    {

        tmp_u32 = tmp_u64s.u64s.h / y_value;


        res_u64 = tmp_u32;


        tmp_u64s.u64s.h -= tmp_u32 * y_value;
        if (res_u64 < ((Mfx_uint64) (0xffffffffuL)))
        {
            while (i < 32u)
            {

                res_u64 <<= 1uLL;
                tmp_u64s.u64 <<= 1uLL;


                tmp_u32 = tmp_u64s.u64s.h / y_value;


                tmp_u64s.u64s.h -= tmp_u32 * y_value;


                res_u64 = res_u64 + ((Mfx_uint64) tmp_u32);


                if (res_u64 >= ((Mfx_uint64) (0xffffffffuL)))
                {
                    i = 32;
                }
                i++;
            }
        }


        res_u64 = ((res_u64 > ((Mfx_uint64) (0xffffffffuL))) ? ((Mfx_uint64) (0xffffffffuL)) : res_u64);
    }

    return ((uint32) res_u64);
}
# 6574 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_Div_s64s32_s32_Inl(Mfx_sint64 x_value, sint32 y_value)
{
    Mfx_uint64 tmp_u64;
    uint32 tmp_u32;
    uint32 div_u32;
    sint32 res_s32 = 1L;


    if (x_value < 0LL)
    {
        tmp_u64 = ((x_value < -(0x7FFFFFFFFFFFFFFFLL)) ? 0x8000000000000000ULL : ((Mfx_uint64) -x_value));
        res_s32 *= -1L;
    }
    else
    {
        tmp_u64 = ((Mfx_uint64) (x_value));
    }


    if (y_value < 0L)
    {
        div_u32 = ((y_value == (-((0x7fffffffL)) - 1L)) ? 0x80000000UL : ((uint32) -y_value));
        res_s32 *= -1L;
    }
    else
    {
        div_u32 = ((uint32) (y_value));
    }


    tmp_u32 = Mfx_Prv_Div_u64u32_u32_Inl(tmp_u64, div_u32);

    if (tmp_u32 > ((uint32) (0x7fffffffL)))
    {
        res_s32 = ((res_s32 == -1L) ? (-((0x7fffffffL)) - 1L) : (0x7fffffffL));
    }
    else
    {
        res_s32 *= ((sint32) (tmp_u32));
    }

    return (res_s32);
}
# 6635 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_Div_s64s32_u32_Inl(Mfx_sint64 x_value, sint32 y_value)
{
    Mfx_uint64 tmp_u64;
    uint32 div_u32;
    uint32 res_u32;


    if (((x_value < 0) && (y_value >= 0)) || ((x_value >= 0) && (y_value < 0)))
    {
        res_u32 = (0x0uL);
    }

    else
    {

        if (x_value <= -1LL)
        {
            tmp_u64 = ((x_value < -(0x7FFFFFFFFFFFFFFFLL)) ? 0x8000000000000000ULL : ((Mfx_uint64) -x_value));
        }
        else
        {
            tmp_u64 = ((Mfx_uint64) (x_value));
        }


        if (y_value <= -1L)
        {
            div_u32 = ((y_value == (-((0x7fffffffL)) - 1L)) ? 0x80000000UL : ((uint32) -y_value));
        }
        else
        {
            div_u32 = ((uint32) y_value);
        }


        res_u32 = Mfx_Prv_Div_u64u32_u32_Inl(tmp_u64, div_u32);
    }

    return (res_u32);
}
# 6693 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ sint32 Mfx_Prv_Div_s64u32_s32_Inl(Mfx_sint64 x_value, uint32 y_value)
{
    Mfx_uint64 tmp_u64;
    uint32 tmp_u32;
    sint32 res_s32 = 1L;


    if (x_value <= -1)
    {
        tmp_u64 = ((x_value < (-(0x7FFFFFFFFFFFFFFFLL))) ? 0x8000000000000000ULL : ((Mfx_uint64) -x_value));
        res_s32 *= -1L;
    }
    else
    {
        tmp_u64 = ((Mfx_uint64) (x_value));
    }


    tmp_u32 = Mfx_Prv_Div_u64u32_u32_Inl(tmp_u64, y_value);

    if (tmp_u32 > ((uint32) (0x7fffffffL)))
    {
        res_s32 = ((res_s32 == -1L) ? (-((0x7fffffffL)) - 1L) : (0x7fffffffL));
    }
    else
    {
        res_s32 *= ((sint32) tmp_u32);
    }

    return (res_s32);
}
# 6742 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Div_Inl.h"
static __inline__ uint32 Mfx_Prv_Div_s64u32_u32_Inl(Mfx_sint64 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (x_value < 0LL)
    {
        res_u32 = (0x0uL);
    }


    else
    {

        res_u32 = Mfx_Prv_Div_u64u32_u32_Inl((Mfx_uint64) x_value, y_value);
    }

    return (res_u32);
}



static __inline__ uint32 Mfx_Prv_Div_u32u32_ux_Inl(uint32 x_value, uint32 y_value, uint32 bits)
{
    uint32 res_u32;

    if ((x_value >> bits) < y_value)
    {
        res_u32 = (x_value / y_value);
    }
    else
    {
        res_u32 = ((0xffffffffuL) >> (32UL - bits));
    }

    return (res_u32);
}
# 82 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 101 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h" 1
# 160 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_Mul_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint32 Mfx_Prv_Mul_s16s16_s32_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_Mul_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_Mul_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_Mul_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_Mul_s16u16_s16_Inl(sint16 x_value, uint16 y_value);
static __inline__ sint32 Mfx_Prv_Mul_s16u16_s32_Inl(sint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_Mul_s16u16_u16_Inl(sint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Mul_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Mul_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Mul_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Mul_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Mul_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_Mul_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Mul_s32u16_s32_Inl(sint32 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_Mul_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_Mul_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_Mul_s8u8_s8_Inl(sint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_Mul_s8u8_u8_Inl(sint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_Mul_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint32 Mfx_Prv_Mul_u16s16_s32_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_Mul_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_Mul_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_Mul_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_Mul_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_Mul_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_Mul_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint32 Mfx_Prv_Mul_u16u16_u32_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint8 Mfx_Prv_Mul_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Mul_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Mul_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Mul_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Mul_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Mul_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_Mul_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Mul_u32u16_u32_Inl(uint32 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Mul_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_Mul_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Mul_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_Mul_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_Mul_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Mul_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Mul_u8s8_s8_Inl(uint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_Mul_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_Mul_u8u8_s8_Inl(uint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_Mul_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_MulDiv_s16s16s16_s16_Inl(sint16 x_value, sint16 y_value, sint16 z_value);
static __inline__ sint16 Mfx_Prv_MulDiv_s16s16u16_s16_Inl(sint16 x_value, sint16 y_value, uint16 z_value);
static __inline__ sint16 Mfx_Prv_MulDiv_s16u16s16_s16_Inl(sint16 x_value, uint16 y_value, sint16 z_value);
static __inline__ uint16 Mfx_Prv_MulDiv_s16u16s16_u16_Inl(sint16 x_value, uint16 y_value, sint16 z_value);
static __inline__ sint16 Mfx_Prv_MulDiv_s16u16u16_s16_Inl(sint16 x_value, uint16 y_value, uint16 z_value);
static __inline__ uint16 Mfx_Prv_MulDiv_s16u16u16_u16_Inl(sint16 x_value, uint16 y_value, uint16 z_value);
static __inline__ sint16 Mfx_Prv_MulDiv_s32s32s16_s16_Inl(sint32 x_value, sint32 y_value, sint16 z_value);
static __inline__ sint16 Mfx_Prv_MulDiv_s32s32s32_s16_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ sint32 Mfx_Prv_MulDiv_s32s32s32_s32_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ uint16 Mfx_Prv_MulDiv_s32s32s32_u16_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ sint32 Mfx_Prv_MulDiv_s32s32u32_s32_Inl(sint32 x_value, sint32 y_value, uint32 z_value);
static __inline__ sint32 Mfx_Prv_MulDiv_s32u32s32_s32_Inl(sint32 x_value, uint32 y_value, sint32 z_value);
static __inline__ sint32 Mfx_Prv_MulDiv_s32u32u32_s32_Inl(sint32 x_value, uint32 y_value, uint32 z_value);
static __inline__ sint16 Mfx_Prv_MulDiv_u16s16s16_s16_Inl(uint16 x_value, sint16 y_value, sint16 z_value);
static __inline__ uint16 Mfx_Prv_MulDiv_u16s16s16_u16_Inl(uint16 x_value, sint16 y_value, sint16 z_value);
static __inline__ sint16 Mfx_Prv_MulDiv_u16s16u16_s16_Inl(uint16 x_value, sint16 y_value, uint16 z_value);
static __inline__ uint16 Mfx_Prv_MulDiv_u16s16u16_u16_Inl(uint16 x_value, sint16 y_value, uint16 z_value);
static __inline__ uint16 Mfx_Prv_MulDiv_u16u16u16_u16_Inl(uint16 x_value, uint16 y_value, uint16 z_value);
static __inline__ sint32 Mfx_Prv_MulDiv_u32s32s32_s32_Inl(uint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ uint32 Mfx_Prv_MulDiv_u32s32s32_u32_Inl(uint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ sint32 Mfx_Prv_MulDiv_u32s32u32_s32_Inl(uint32 x_value, sint32 y_value, uint32 z_value);
static __inline__ uint32 Mfx_Prv_MulDiv_u32s32u32_u32_Inl(uint32 x_value, sint32 y_value, uint32 z_value);
static __inline__ uint32 Mfx_Prv_MulDiv_u32u32s32_u32_Inl(uint32 x_value, uint32 y_value, sint32 z_value);
static __inline__ uint16 Mfx_Prv_MulDiv_u32u32u16_u16_Inl(uint32 x_value, uint32 y_value, uint16 z_value);
static __inline__ uint16 Mfx_Prv_MulDiv_u32u32u32_u16_Inl(uint32 x_value, uint32 y_value, uint32 z_value);
static __inline__ uint32 Mfx_Prv_MulDiv_u32u32u32_u32_Inl(uint32 x_value, uint32 y_value, uint32 z_value);
static __inline__ sint16 Mfx_Prv_MulP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_MulP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_MulP2_s32s32_s32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint32 Mfx_Prv_MulP2_s32s32_u32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_MulP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_MulP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_MulP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_MulP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_MulP2_u32s32_s32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint32 Mfx_Prv_MulP2_u32s32_u32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_MulP2_u32u32_s32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint32 Mfx_Prv_MulP2_u32u32_u32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_MulShRight_s16s16u8_s16_Inl(sint16 x_value, sint16 y_value, uint8 shift);
static __inline__ sint8 Mfx_Prv_MulShRight_s16s16u8_s8_Inl(sint16 x_value, sint16 y_value, uint8 shift);
static __inline__ uint16 Mfx_Prv_MulShRight_s16s16u8_u16_Inl(sint16 x_value, sint16 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_MulShRight_s16s16u8_u8_Inl(sint16 x_value, sint16 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_MulShRight_s32s32u8_s16_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint32 Mfx_Prv_MulShRight_s32s32u8_s32_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint8 Mfx_Prv_MulShRight_s32s32u8_s8_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint16 Mfx_Prv_MulShRight_s32s32u8_u16_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint32 Mfx_Prv_MulShRight_s32s32u8_u32_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_MulShRight_s32s32u8_u8_Inl(sint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_MulShRight_u32s32u8_s16_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint32 Mfx_Prv_MulShRight_u32s32u8_s32_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint8 Mfx_Prv_MulShRight_u32s32u8_s8_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint16 Mfx_Prv_MulShRight_u32s32u8_u16_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint32 Mfx_Prv_MulShRight_u32s32u8_u32_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_MulShRight_u32s32u8_u8_Inl(uint32 x_value, sint32 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_MulShRight_u32u32u8_s16_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ sint32 Mfx_Prv_MulShRight_u32u32u8_s32_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ sint8 Mfx_Prv_MulShRight_u32u32u8_s8_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint16 Mfx_Prv_MulShRight_u32u32u8_u16_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint32 Mfx_Prv_MulShRight_u32u32u8_u32_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ uint8 Mfx_Prv_MulShRight_u32u32u8_u8_Inl(uint32 x_value, uint32 y_value, uint8 shift);
static __inline__ sint16 Mfx_Prv_RMulDiv_s16s16s16_s16_Inl(sint16 x_value, sint16 y_value, sint16 z_value);
static __inline__ sint16 Mfx_Prv_RMulDiv_s16s16u16_s16_Inl(sint16 x_value, sint16 y_value, uint16 z_value);
static __inline__ sint16 Mfx_Prv_RMulDiv_s16u16s16_s16_Inl(sint16 x_value, uint16 y_value, sint16 z_value);
static __inline__ uint16 Mfx_Prv_RMulDiv_s16u16s16_u16_Inl(sint16 x_value, uint16 y_value, sint16 z_value);
static __inline__ sint16 Mfx_Prv_RMulDiv_s16u16u16_s16_Inl(sint16 x_value, uint16 y_value, uint16 z_value);
static __inline__ uint16 Mfx_Prv_RMulDiv_s16u16u16_u16_Inl(sint16 x_value, uint16 y_value, uint16 z_value);
static __inline__ sint16 Mfx_Prv_RMulDiv_s32s32s16_s16_Inl(sint32 x_value, sint32 y_value, sint16 z_value);
static __inline__ sint16 Mfx_Prv_RMulDiv_s32s32s32_s16_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ sint32 Mfx_Prv_RMulDiv_s32s32s32_s32_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ uint16 Mfx_Prv_RMulDiv_s32s32s32_u16_Inl(sint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ sint32 Mfx_Prv_RMulDiv_s32s32u32_s32_Inl(sint32 x_value, sint32 y_value, uint32 z_value);
static __inline__ sint32 Mfx_Prv_RMulDiv_s32u32s32_s32_Inl(sint32 x_value, uint32 y_value, sint32 z_value);
static __inline__ sint32 Mfx_Prv_RMulDiv_s32u32u32_s32_Inl(sint32 x_value, uint32 y_value, uint32 z_value);
static __inline__ sint16 Mfx_Prv_RMulDiv_u16s16s16_s16_Inl(uint16 x_value, sint16 y_value, sint16 z_value);
static __inline__ uint16 Mfx_Prv_RMulDiv_u16s16s16_u16_Inl(uint16 x_value, sint16 y_value, sint16 z_value);
static __inline__ sint16 Mfx_Prv_RMulDiv_u16s16u16_s16_Inl(uint16 x_value, sint16 y_value, uint16 z_value);
static __inline__ uint16 Mfx_Prv_RMulDiv_u16s16u16_u16_Inl(uint16 x_value, sint16 y_value, uint16 z_value);
static __inline__ uint16 Mfx_Prv_RMulDiv_u16u16u16_u16_Inl(uint16 x_value, uint16 y_value, uint16 z_value);
static __inline__ sint32 Mfx_Prv_RMulDiv_u32s32s32_s32_Inl(uint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ uint32 Mfx_Prv_RMulDiv_u32s32s32_u32_Inl(uint32 x_value, sint32 y_value, sint32 z_value);
static __inline__ sint32 Mfx_Prv_RMulDiv_u32s32u32_s32_Inl(uint32 x_value, sint32 y_value, uint32 z_value);
static __inline__ uint32 Mfx_Prv_RMulDiv_u32s32u32_u32_Inl(uint32 x_value, sint32 y_value, uint32 z_value);
static __inline__ uint32 Mfx_Prv_RMulDiv_u32u32s32_u32_Inl(uint32 x_value, uint32 y_value, sint32 z_value);
static __inline__ uint16 Mfx_Prv_RMulDiv_u32u32u16_u16_Inl(uint32 x_value, uint32 y_value, uint16 z_value);
static __inline__ uint16 Mfx_Prv_RMulDiv_u32u32u32_u16_Inl(uint32 x_value, uint32 y_value, uint32 z_value);
static __inline__ uint32 Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(uint32 x_value, uint32 y_value, uint32 z_value);


static __inline__ Mfx_sint64 Mfx_Prv_RightShift_s64u8_s64_Inl(Mfx_sint64 X_s64, uint8 Shift_u8);
static __inline__ sint32 Mfx_Prv_ShRight_s32u8_s32_Inl(sint32 x_value, uint8 shift);
static __inline__ Mfx_uint64 Mfx_Prv_Mul_u32u32_u64_Inl(uint32 x_value, uint32 y_value);
static __inline__ Mfx_sint64 Mfx_Prv_Mul_u32s32_s64_Inl(uint32 x_value, sint32 y_value);
static __inline__ Mfx_sint64 Mfx_Prv_Mul_s32s32_s64_Inl(sint32 x_value, sint32 y_value);
# 320 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_Mul_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value * (sint32)y_value));
}
# 340 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_Mul_s16s16_s32_Inl(sint16 x_value, sint16 y_value)
{
    return ((sint32)x_value * (sint32)y_value);
}
# 360 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value * (sint32)y_value));
}
# 380 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_Mul_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value * (sint32)y_value));
}
# 400 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value * (sint32)y_value));
}
# 420 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_Mul_s16u16_s16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value * (sint32)y_value));
}
# 440 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_Mul_s16u16_s32_Inl(sint16 x_value, uint16 y_value)
{
    return ((sint32)x_value * (sint32)y_value);
}
# 460 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_Mul_s16u16_u16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value * (sint32)y_value));
}
# 480 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_Mul_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint16 res_s16;



    if ( ((y_value < 0L) && (x_value > 0L)) || ((x_value < 0L) && (y_value > 0L)) )
    {

        if( x_value > 0L)
        {
            if ( x_value <= ( ((sint32)(-((0x7fff)) - 1)) / y_value))
            {
                res_s16 = ((sint16)x_value) * ((sint16)y_value);
            }
            else
            {
                res_s16 = (-((0x7fff)) - 1);
            }
        }


        else
        {
            if ( x_value >= (((sint32)(-((0x7fff)) - 1)) / y_value) )
            {
                res_s16 = ((sint16)x_value) * ((sint16)y_value);
            }
            else
            {
                res_s16 = (-((0x7fff)) - 1);
            }
        }
    }


    else if ((y_value == 0L) || (x_value == 0L))
    {
        res_s16 = 0;
    }

    else
    {

        if( x_value > 0)
        {
            if ( x_value <= (((sint32)(0x7fff)) / y_value))
            {
                res_s16 = ((sint16) x_value) * ((sint16) y_value);
            }
            else
            {
                res_s16 = (0x7fff);
            }
        }


        else
        {
            if (x_value >= (((sint32)(0x7fff)) / y_value))
            {
                res_s16 = ((sint16)x_value) * ((sint16)y_value);
            }
            else
            {
                res_s16 = (0x7fff);
            }
        }
    }

    return (res_s16);
}
# 568 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_Mul_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;



    if ( ((y_value < 0L) && (x_value > 0L)) || ((x_value < 0L) && (y_value > 0L)) )
    {

        if( x_value > 0L)
        {
            if ( y_value >= ((-((0x7fffffffL)) - 1L) / x_value))
            {
                res_s32 = x_value * y_value;
            }
            else
            {
                res_s32 = (-((0x7fffffffL)) - 1L);
            }
        }


        else
        {
            if ( x_value >= ((-((0x7fffffffL)) - 1L) / y_value))
            {
                res_s32 = x_value * y_value;
            }
            else
            {
                res_s32 = (-((0x7fffffffL)) - 1L);
            }
        }
    }


    else if ((y_value == 0L) || (x_value == 0L))
    {
        res_s32 = 0L;
    }


    else
    {

        if( x_value > 0)
        {
            if ( x_value <= ((0x7fffffffL) / y_value))
            {
                res_s32 = x_value * y_value;
            }
            else
            {
                res_s32 = (0x7fffffffL);
            }
        }


        else
        {
            if ( x_value >= ((0x7fffffffL) / y_value) )
            {
                res_s32 = x_value * y_value;
            }
            else
            {
                res_s32 = (0x7fffffffL);
            }
        }
    }

    return (res_s32);
}
# 657 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint8 res_s8;



    if ( ((y_value < 0L) && (x_value > 0L)) || ( (x_value < 0L) && (y_value > 0L)) )
    {
        if( x_value > 0L)
        {
            if ( x_value <= (((sint32)(-((0x7f)) - 1)) / y_value))
            {
                res_s8 = ((sint8)x_value) * ((sint8)y_value);
            }
            else
            {
                res_s8 = (-((0x7f)) - 1);
            }
        }
        else
        {
            if ( x_value >= (((sint32)(-((0x7f)) - 1)) / y_value) )
            {
                res_s8 = ((sint8)x_value) * ((sint8)y_value);
            }
            else
            {
                res_s8 = (-((0x7f)) - 1);
            }
        }
    }


    else if ((y_value == 0L) || (x_value == 0L))
    {
        res_s8 = 0;
    }


    else
    {

        if( x_value > 0L)
        {
            if ( x_value <= (((sint32)(0x7f)) / y_value))
            {
                res_s8 = ((sint8)x_value) * ((sint8)y_value);
            }
            else
            {
                res_s8 = (0x7f);
            }
        }


        else
        {
            if ( x_value >= ( ((sint32)(0x7f)) / y_value) )
            {
                res_s8 = ((sint8)x_value) * ((sint8)y_value);
            }
            else
            {
                res_s8 = (0x7f);
            }
        }
    }

    return (res_s8);
}
# 743 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_Mul_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint32 tmp1_u32;
    uint32 tmp2_u32;


    if (((x_value >= 0L) && (y_value <= 0L)) || ((x_value <= 0L) && (y_value >= 0L)))
    {
        tmp1_u32 = 0UL;
    }


    else
    {
        tmp1_u32 = (uint32)x_value;
        tmp2_u32 = (uint32)y_value;


        if(x_value < 0L)
        {
            tmp1_u32 = ((uint32)(0xFFFFFFFFU ^ tmp1_u32)) + 1UL;
            tmp2_u32 = ((uint32)(0xFFFFFFFFU ^ tmp2_u32)) + 1UL;
        }


        if(tmp1_u32 <= (((uint32) (0xffff)) / tmp2_u32))
        {
            tmp1_u32 *= tmp2_u32;
        }
        else
        {
            tmp1_u32 = (uint32) (0xffff);
        }
    }
    return ((uint16) tmp1_u32);
}
# 795 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_Mul_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 tmp1_u32;
    uint32 tmp2_u32;


    if (((x_value >= 0L) && (y_value <= 0L)) || ((x_value <= 0L) && (y_value >= 0L)))
    {
        tmp1_u32 = 0UL;
    }


    else
    {
        tmp1_u32 = (uint32)x_value;
        tmp2_u32 = (uint32)y_value;


        if(x_value < 0L)
        {
            tmp1_u32 = ((uint32)(0xFFFFFFFFU ^ tmp1_u32)) + 1UL;
            tmp2_u32 = ((uint32)(0xFFFFFFFFU ^ tmp2_u32)) + 1UL;
        }


        if(tmp1_u32 <= ((0xffffffffuL) / tmp2_u32))
        {
            tmp1_u32 *= tmp2_u32;
        }
        else
        {
            tmp1_u32 = (0xffffffffuL);
        }
    }
    return (tmp1_u32);
}
# 847 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint32 tmp1_u32;
    uint32 tmp2_u32;


    if (((x_value >= 0L) && (y_value <= 0L)) || ((x_value <= 0L) && (y_value >= 0L)))
    {
        tmp1_u32 = 0UL;
    }

    else
    {
        tmp1_u32 = (uint32)x_value;
        tmp2_u32 = (uint32)y_value;


        if(x_value < 0L)
        {
            tmp1_u32 = ((uint32)(0xFFFFFFFFU ^ tmp1_u32)) + 1UL;
            tmp2_u32 = ((uint32)(0xFFFFFFFFU ^ tmp2_u32)) + 1UL;
        }


        if(tmp1_u32 <= (((uint32) (0xff)) / tmp2_u32))
        {
            tmp1_u32 *= tmp2_u32;
        }
        else
        {
            tmp1_u32 = (uint32) (0xff);
        }
    }
    return ((uint8) tmp1_u32);
}
# 898 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_Mul_s32u16_s32_Inl(sint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_Mul_s32s32_s32_Inl(x_value, (sint32)y_value));
}
# 918 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Mul_s16s16_s8((sint16)x_value, (sint16)y_value));
}
# 938 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Mul_s16s16_u8((sint16)x_value, (sint16)y_value));
}
# 958 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_s8u8_s8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Mul_s16s16_s8((sint16)x_value, (sint16)y_value));
}
# 978 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_s8u8_u8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Mul_s16s16_u8((sint16)x_value, (sint16)y_value));
}
# 998 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_Mul_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Mul_s16u16_s16(y_value, x_value));
}
# 1018 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_Mul_u16s16_s32_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Mul_s16u16_s32(y_value, x_value));
}
# 1038 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value * (sint32)y_value));
}
# 1058 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_Mul_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value * (sint32)y_value));
}
# 1078 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value * (sint32)y_value));
}
# 1098 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_Mul_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_s16_Inl((uint32)x_value * (uint32)y_value));
}
# 1118 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_s8_Inl((uint32)x_value * (uint32)y_value));
}
# 1138 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_Mul_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_u16_Inl((uint32)x_value * (uint32)y_value));
}
# 1158 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_Mul_u16u16_u32_Inl(uint16 x_value, uint16 y_value)
{
    return ((uint32)x_value * (uint32)y_value);
}
# 1178 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_u32_u8_Inl((uint32)x_value * (uint32)y_value));
}
# 1198 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_Mul_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_Mul_u32s32_s32_Inl(x_value, y_value)));
}
# 1218 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_Mul_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;
    sint32 tmp_s32;



    if ( y_value > 0L )
    {
        if( x_value <= (((0x7fffffffUL) / (uint32)y_value)) )
        {
            res_s32 = ((sint32) x_value) * y_value;
        }
        else
        {
            res_s32 = (0x7fffffffL);
        }
    }


    else if ((x_value == 0UL) || (y_value == 0L))
    {
        res_s32 = 0L;
    }


    else
    {
        tmp_s32 = (0x7fffffffL);


        if(y_value != -1L)
        {
            tmp_s32 = ((-((0x7fffffffL)) - 1L) / y_value);
        }

        if ((x_value) <= ((uint32)tmp_s32))
        {
            res_s32 = ((sint32) x_value) * y_value;
        }
        else
        {
            res_s32 = (-((0x7fffffffL)) - 1L);
        }
    }

    return (res_s32);
}
# 1282 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    sint8 res_s8;
    sint32 tmp_s32;



    if ( y_value > 0L )
    {
        if(x_value <= (((uint32)(0x7f)) / ((uint32)y_value)))
        {
            res_s8 = ((sint8) x_value) * ((sint8) y_value);
        }
        else
        {
            res_s8 = (0x7f);
        }
    }

    else if ((x_value == 0UL) || (y_value == 0L))
    {
        res_s8 = 0;
    }

    else
    {
        tmp_s32 = (((sint32)(-((0x7f)) - 1)) / y_value);
        if (x_value <= (uint32)tmp_s32)
        {
            res_s8 = ((sint8) x_value) * ((sint8) y_value);
        }
        else
        {
            res_s8 = (-((0x7f)) - 1);
        }
    }

    return (res_s8);
}
# 1337 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_Mul_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    if ((y_value <= 0L) || (x_value <= 0uL))
    {
        res_u32 = 0UL;
    }
    else
    {
        res_u32 = ((uint32)(0xffff)) / ((uint32)y_value);

        if (res_u32 >= x_value)
        {
            res_u32 = x_value * ((uint32) y_value);
        }
        else
        {
            res_u32 = (uint32)(0xffff);
        }
    }

    return ((uint16)res_u32);
}
# 1378 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_Mul_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    if ( (y_value <= 0L) || (x_value <= 0UL) )
    {
        res_u32 = 0uL;
    }
    else
    {
        res_u32 = (0xffffffffuL) / ((uint32) y_value);

        if (res_u32 >= x_value)
        {
            res_u32 = x_value * ((uint32) y_value);
        }
        else
        {
            res_u32 = (0xffffffffuL);
        }
    }

    return (res_u32);
}
# 1419 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    if ( (y_value <= 0L) || (x_value == 0UL) )
    {
        res_u32 = 0UL;
    }
    else
    {
        if ((((uint32) (0xff)) / ((uint32)y_value)) >= x_value)
        {
            res_u32 = x_value * ((uint32) y_value);
        }
        else
        {
            res_u32 = (uint32) (0xff);
        }
    }

    return ((uint8) res_u32);
}
# 1458 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_Mul_u32u16_u32_Inl(uint32 x_value, uint16 y_value)
{
    return (Mfx_Prv_Mul_u32u32_u32_Inl(x_value, y_value));
}
# 1478 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_Mul_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    sint16 res_s16;
    uint32 tmp_u32;


    if (y_value <= 0uL)
    {
        res_s16 = 0;
    }
    else
    {
        tmp_u32 = ( (uint32)(0x7fffu)) / y_value;
        res_s16 = (sint16)(tmp_u32) ;

        if( ((uint32)(res_s16)) >= x_value)
        {
            res_s16 = ((sint16) x_value) * ((sint16) y_value);
        }
        else
        {
            res_s16 = (0x7fff);
        }
    }

    return (res_s16);
}
# 1521 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_Mul_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    if (y_value <= 0uL)
    {
        res_s32 = 0L;
    }
    else
    {
        tmp_u32 = ((0x7fffffffUL) / y_value);
        res_s32 = ( (sint32)tmp_u32 );

        if (((uint32) res_s32) >= x_value)
        {
            res_s32 = ((sint32) x_value) * ((sint32) y_value);
        }
        else
        {
            res_s32 = (0x7fffffffL);
        }
    }

    return (res_s32);
}
# 1563 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    sint8 res_s8;
    uint32 tmp_u32;

    if (y_value <= 0UL)
    {
        res_s8 = 0;
    }
    else
    {
       tmp_u32 = ((uint32)(0x7f)) / y_value;
       res_s8 = ((sint8) tmp_u32);

        if ( ((uint32) res_s8) >= x_value)
        {
            tmp_u32 = (x_value * y_value);
            res_s8 = (sint8)tmp_u32;
        }
        else
        {
            res_s8 = (0x7f);
        }
    }

    return (res_s8);
}
# 1606 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_Mul_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (y_value == 0UL)
    {
        res_u32 = 0UL;
    }
    else
    {
        res_u32 = ((uint32)(0xffff)) / y_value;

        if (res_u32 >= x_value)
        {
            res_u32 = x_value * y_value;
        }
        else
        {
            res_u32 = (uint32)(0xffff);
        }
    }

    return ((uint16)res_u32);
}
# 1647 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_Mul_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (y_value == 0UL)
    {
        res_u32 = 0;
    }
    else
    {
        res_u32 = (0xffffffffuL) / y_value;

        if (res_u32 >= x_value)
        {
            res_u32 = x_value * y_value;
        }
        else
        {
            res_u32 = (0xffffffffuL);
        }
    }

    return (res_u32);
}
# 1688 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (y_value == 0uL)
    {
        res_u32 = 0UL;
    }
    else
    {
        res_u32 = ((uint32)(0xff)) / y_value;

        if (res_u32 >= x_value)
        {
            res_u32 = x_value * y_value;
        }
        else
        {
            res_u32 = (uint32)(0xff);
        }
    }

    return ((uint8)res_u32);
}
# 1729 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Mul_s16s16_s8((sint16)x_value, (sint16)y_value));
}
# 1749 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Mul_s16s16_u8((sint16)x_value, (sint16)y_value));
}
# 1769 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_Mul_u8u8_s8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Mul_u16u16_s8((uint16)x_value, (uint16)y_value));
}
# 1789 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_Mul_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Mul_u16u16_u8((uint16)x_value, (uint16)y_value));
}




static __inline__ Mfx_sint64 Mfx_Prv_Mul_s32s32_s64_Inl(sint32 x_value, sint32 y_value)
{
    Mfx_sint64 res_s64;

    res_s64 = (Mfx_sint64)x_value * (Mfx_sint64)y_value;

    return (res_s64);
}




static __inline__ Mfx_sint64 Mfx_Prv_Mul_u32s32_s64_Inl(uint32 x_value, sint32 y_value)
{
    Mfx_sint64 res_s64;

    res_s64 = (Mfx_sint64)x_value * (Mfx_sint64)y_value;

    return (res_s64);
}



static __inline__ Mfx_uint64 Mfx_Prv_Mul_u32u32_u64_Inl(uint32 x_value, uint32 y_value)
{
    Mfx_uint64 res_u64;

    res_u64 = (Mfx_uint64)x_value * (Mfx_uint64)y_value;

    return (res_u64);
}



static __inline__ sint32 Mfx_Prv_ShRight_s32u8_s32_Inl(sint32 x_value, uint8 shift)
{
    uint32 res_u32;
    sint32 res_s32;

    res_u32 = (uint32)x_value >> shift;

    if (x_value < 0L)
    {
        res_u32 |= (0xFFFFFFFFUL << (32UL - shift));
    }

    res_s32 = (sint32)res_u32;

    return (res_s32);
}
# 1868 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulDiv_s16s16s16_s16_Inl(sint16 x_value, sint16 y_value, sint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
# 1895 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulDiv_s16s16u16_s16_Inl(sint16 x_value, sint16 y_value, uint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
# 1923 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulDiv_s16u16s16_s16_Inl(sint16 x_value, uint16 y_value, sint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
# 1951 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulDiv_s16u16s16_u16_Inl(sint16 x_value, uint16 y_value, sint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
# 1979 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulDiv_s16u16u16_s16_Inl(sint16 x_value, uint16 y_value, uint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_s16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
# 2007 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulDiv_s16u16u16_u16_Inl(sint16 x_value, uint16 y_value, uint16 z_value)
{
    return (Mfx_Prv_Div_NoOvf_s32s32_u16_Inl((sint32)x_value*(sint32)y_value, (sint32)z_value));
}
# 2034 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulDiv_s32s32s16_s16_Inl(sint32 x_value, sint32 y_value, sint16 z_value)
{
    return (Mfx_MulDiv_s32s32s32_s16(x_value, y_value, (sint32)z_value));
}
# 2061 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulDiv_s32s32s32_s16_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_MulDiv_s32s32s32_s32_Inl(x_value, y_value, z_value)));
}
# 2088 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulDiv_s32s32s32_s32_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_s32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64s32_s32_Inl(dividend_s64, z_value));
}
# 2119 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulDiv_s32s32s32_u16_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl(Mfx_Prv_MulDiv_s32s32s32_s32_Inl(x_value, y_value, z_value)));
}
# 2141 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulDiv_s32s32u32_s32_Inl(sint32 x_value, sint32 y_value, uint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_s32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64u32_s32_Inl(dividend_s64, z_value));
}
# 2167 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulDiv_s32u32s32_s32_Inl(sint32 x_value, uint32 y_value, sint32 z_value)
{
    return (Mfx_MulDiv_u32s32s32_s32(y_value, x_value, z_value));
}
# 2189 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulDiv_s32u32u32_s32_Inl(sint32 x_value, uint32 y_value, uint32 z_value)
{
    return (Mfx_MulDiv_u32s32u32_s32(y_value, x_value, z_value));
}
# 2211 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulDiv_u16s16s16_s16_Inl(uint16 x_value, sint16 y_value, sint16 z_value)
{
    return (Mfx_MulDiv_s16u16s16_s16(y_value, x_value, z_value));
}
# 2233 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulDiv_u16s16s16_u16_Inl(uint16 x_value, sint16 y_value, sint16 z_value)
{
    return (Mfx_MulDiv_s16u16s16_u16(y_value, x_value, z_value));
}
# 2255 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulDiv_u16s16u16_s16_Inl(uint16 x_value, sint16 y_value, uint16 z_value)
{
    return (Mfx_MulDiv_s16u16u16_s16(y_value, x_value, z_value));
}
# 2277 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulDiv_u16s16u16_u16_Inl(uint16 x_value, sint16 y_value, uint16 z_value)
{
    return (Mfx_MulDiv_s16u16u16_u16(y_value, x_value, z_value));
}
# 2304 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulDiv_u16u16u16_u16_Inl(uint16 x_value, uint16 y_value, uint16 z_value)
{
    return (Mfx_Prv_Div_u32u32_u16_Inl((uint32)x_value * (uint32)y_value, (uint32)z_value));
}
# 2326 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulDiv_u32s32s32_s32_Inl(uint32 x_value, sint32 y_value, sint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_u32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64s32_s32_Inl(dividend_s64, z_value));
}
# 2352 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulDiv_u32s32s32_u32_Inl(uint32 x_value, sint32 y_value, sint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_u32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64s32_u32_Inl(dividend_s64, z_value));
}
# 2378 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulDiv_u32s32u32_s32_Inl(uint32 x_value, sint32 y_value, uint32 z_value)
{
    Mfx_sint64 dividend_s64;

    dividend_s64 = Mfx_Prv_Mul_u32s32_s64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_s64u32_s32_Inl(dividend_s64, z_value));
}
# 2404 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulDiv_u32s32u32_u32_Inl(uint32 x_value, sint32 y_value, uint32 z_value)
{
    uint32 res_u32;

    if (y_value >= 0L)
    {
        res_u32 = Mfx_Prv_MulDiv_u32u32u32_u32_Inl(x_value, (uint32)y_value, z_value);
    }
    else
    {
        res_u32 = ((x_value | z_value) == 0UL) ? (0xffffffffuL) : 0UL;
    }

    return (res_u32);
}
# 2437 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulDiv_u32u32s32_u32_Inl(uint32 x_value, uint32 y_value, sint32 z_value)
{
    uint32 res_u32;

    if (z_value >= 0L)
    {
        res_u32 = Mfx_Prv_MulDiv_u32u32u32_u32_Inl(x_value, y_value, (uint32)z_value);
    }
    else
    {
        res_u32 = (0x0uL);
    }

    return (res_u32);
}
# 2475 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulDiv_u32u32u16_u16_Inl(uint32 x_value, uint32 y_value, uint16 z_value)
{
    return (Mfx_MulDiv_u32u32u32_u16(x_value, y_value, (uint32)z_value));
}
# 2502 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulDiv_u32u32u32_u16_Inl(uint32 x_value, uint32 y_value, uint32 z_value)
{
    return (Mfx_Prv_Sat_u32_u16_Inl(Mfx_Prv_MulDiv_u32u32u32_u32_Inl(x_value, y_value, z_value)));
}
# 2529 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulDiv_u32u32u32_u32_Inl(uint32 x_value, uint32 y_value, uint32 z_value)
{
    Mfx_uint64 dividend_u64;

    dividend_u64 = Mfx_Prv_Mul_u32u32_u64_Inl(x_value, y_value);

    return (Mfx_Prv_Div_u64u32_u32_Inl(dividend_u64, z_value));
}
# 2563 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 mul_s32;
    sint32 res_s32;
    sint32 temp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;


    shift_s32 = (sint32) c - (sint32) b - (sint32) a;


    mul_s32 = (sint32) x * (sint32) y;




    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (mul_s32 < 0)
        {
            tmp_u32 = ((uint32) (-mul_s32) >> ((uint32)(shift_s32)));

            res_s32 = -((sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) mul_s32 >> ((uint32)(shift_s32)));


            res_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = ((uint32) mul_s32 << ((uint32)(shift_s32)));
        res_s32 = (sint32)tmp_u32 ;
# 2612 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
        tmp_u32 = (uint32)res_s32 >> (uint32)shift_s32;

        if(res_s32 < 0L)
        {

            tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shift_s32));
        }

        temp_s32 = (sint32)tmp_u32;


        if (temp_s32 != mul_s32)
        {

            if (mul_s32 < 0L)
            {
                res_s32 = (sint32) (-((0x7fff)) - 1);
            }
            else
            {
                res_s32 = (sint32) (0x7fff);
            }
        }
    }


    if (res_s32 > (sint32) (0x7fff))
    {
        res_s32 = (sint32) (0x7fff);
    }
    if (res_s32 < (sint32) (-((0x7fff)) - 1))
    {
        res_s32 = (sint32) (-((0x7fff)) - 1);
    }

    return ((sint16) res_s32);
}
# 2674 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32;
    uint32 temp_u32;
    sint32 temp_s32;
    boolean tmp_b;
    uint32 mul_u32;
    sint32 shift_s32;


    tmp_b = ( (x > 0) != (y > 0));


    if (tmp_b == (1 != 0))
    {
        res_u32 = (uint32) (0x0);
    }
    else
    {

        shift_s32 = (sint32) c - (sint32) b - (sint32) a;


        temp_s32 = ((sint32) x * (sint32) y);
        mul_u32 = (uint32)temp_s32;


        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            res_u32 = (mul_u32 >> ((uint32)(shift_s32)));
        }
        else
        {
            res_u32 = (mul_u32 << (uint32)shift_s32);
# 2722 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
            temp_u32 = (res_u32 >> ((uint32)shift_s32));


            if (temp_u32 != mul_u32)
            {
                res_u32 = (uint32) (0xffff);
            }
        }


        if (res_u32 > (uint32) (0xffff))
        {
            res_u32 = (uint32) (0xffff);
        }
    }
    return ((uint16) res_u32);
}
# 2764 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulP2_s32s32_s32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_sint64u Res_Temp;
    sint32 shift_s32;
    sint32 flag = 0;
    uint32 tmp_u32;


    Res_Temp.s64 = (Mfx_sint64) x * (Mfx_sint64) y;


    shift_s32 = (sint32) c - (sint32) a - (sint32) b;


    if (Res_Temp.s64s.h < 0L)
    {
        Res_Temp.s64 = -(Res_Temp.s64);

        flag = 1;
    }


    if ((shift_s32 < 0L) || (Res_Temp.s64s.h == 0L))
    {


        if (shift_s32 < -31)
        {
            shift_s32 = (shift_s32 + 32);
            Res_Temp.s64s.l = (uint32) Res_Temp.s64s.h;
            Res_Temp.s64s.h = 0L;
        }


        if (shift_s32 < 0L)
        {

            shift_s32 = -shift_s32;


            Res_Temp.s64s.l = (((uint32) Res_Temp.s64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.s64s.l >>(uint32) shift_s32));
            tmp_u32 = ((uint32) Res_Temp.s64s.h >> (uint32)shift_s32);
            Res_Temp.s64s.h = (sint32) tmp_u32;
        }
        else
        {

            tmp_u32 = (Res_Temp.s64s.l >> (32uL - (uint32)shift_s32));
            Res_Temp.s64s.h = (sint32)tmp_u32;
            Res_Temp.s64s.l = (Res_Temp.s64s.l << (uint32)shift_s32);
        }
    }


    if ((Res_Temp.s64s.h > 0L) || (Res_Temp.s64s.l > (0x7fffffffUL)))
    {

        if (flag == 1)
        {
            Res_Temp.s64s.l = (uint32) (0x80000000UL);
        }
        else
        {
            Res_Temp.s64s.l = (uint32) (0x7fffffffL);
        }
    }


    if (flag == 1L)
    {


        Res_Temp.s64s.l = ((0xFFFFFFFFUL ^ Res_Temp.s64s.l) + 1UL);
    }

    return ((sint32) Res_Temp.s64s.l);
}
# 2867 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulP2_s32s32_u32_Inl(sint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_sint64u Res_Temp;
    Mfx_uint64u Res_u64;
    sint32 shift_s32;


    Res_Temp.s64 = (Mfx_sint64) x * (Mfx_sint64) y;


    shift_s32 = (sint32) c - (sint32) a - (sint32) b;


    if (Res_Temp.s64s.h < 0L)
    {
        Res_Temp.s64s.l = (0x0uL);
    }
    else
    {

        Res_u64.u64 = (Mfx_uint64) Res_Temp.s64;


        if ((shift_s32 < 0L) || (Res_u64.u64s.h == 0UL))
        {


            if ((shift_s32 < -31))
            {
                shift_s32 = shift_s32 + 32;
                Res_u64.u64s.l = Res_u64.u64s.h;
                Res_u64.u64s.h = (0x0uL);
            }


            if (shift_s32 < 0L)
            {

                shift_s32 = -shift_s32;


                Res_u64.u64s.l = ((Res_u64.u64s.h << (32UL - (uint32)shift_s32)) | (Res_u64.u64s.l >> (uint32)(shift_s32)));
                Res_u64.u64s.h = (Res_u64.u64s.h >> (uint32)(shift_s32));
            }
            else
            {

                Res_u64.u64s.h = (Res_u64.u64s.l >> (32UL - (uint32)shift_s32));
                Res_u64.u64s.l = Res_u64.u64s.l << (uint32)(shift_s32);
            }
        }


        if (Res_u64.u64s.h > 0UL)
        {
            Res_u64.u64s.l = (0xffffffffuL);
        }

        Res_Temp.s64s.l = Res_u64.u64s.l;
    }

    return (Res_Temp.s64s.l);
}
# 2956 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 res_s32;
    sint32 mul_s32;
    sint32 temp_s32;
    sint32 shift_s32;
    uint32 tmp_u32;



    shift_s32 = (sint32) c - (sint32) b - (sint32) a;


    mul_s32 = (sint32) x * (sint32) y;




    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (mul_s32 < 0)
        {
            tmp_u32 = ((uint32) (-mul_s32) >> (uint32)(shift_s32));

            res_s32 = -((sint32) tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) mul_s32 >> (uint32)(shift_s32));


            res_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = ((uint32) mul_s32 << (uint32)(shift_s32));
        res_s32 = (sint32)tmp_u32;
# 3008 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
        tmp_u32 = ((uint32)res_s32 >> (uint32)shift_s32);

        if(res_s32 < 0L)
        {

            tmp_u32 = tmp_u32 | (0xFFFFFFFFuL << (32u - (uint32)shift_s32));
        }

        temp_s32 = (sint32)tmp_u32;


        if (temp_s32 != mul_s32)
        {

            if (mul_s32 < 0L)
            {
                res_s32 = (sint32) (-((0x7fff)) - 1);
            }
            else
            {
                res_s32 = (sint32) (0x7fff);
            }
        }
    }


    if (res_s32 > (sint32) (0x7fff))
    {
        res_s32 = (sint32) (0x7fff);
    }
    if (res_s32 < (sint32) (-((0x7fff)) - 1))
    {
        res_s32 = (sint32) (-((0x7fff)) - 1);
    }

    return ((sint16) res_s32);
}
# 3070 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32;
    uint32 mul_u32;
    uint32 temp_u32;
    sint32 shift_s32;


    if (y < 0)
    {
        res_u32 = (uint32) (0x0);
    }
    else
    {

        shift_s32 = (sint32) c - (sint32) b - (sint32) a;


        mul_u32 = (uint32) x * (uint32) y;


        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            res_u32 = (mul_u32 >> (uint32)(shift_s32));
        }
        else
        {
            res_u32 = (mul_u32 << (uint32)(shift_s32));
# 3111 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
            temp_u32 = (res_u32 >> (uint32)shift_s32);


            if (temp_u32 != mul_u32)
            {
                res_u32 = (uint32) (0xffff);
            }
        }


        if (res_u32 > (uint32) (0xffff))
        {
            res_u32 = (uint32) (0xffff);
        }
    }

    return ((uint16) res_u32);
}
# 3154 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32;
    uint32 mul_u32;
    uint32 temp_u32;
    sint32 shift_s32;


    shift_s32 = (sint32) c - (sint32) b - (sint32) a;


    mul_u32 = (uint32) x * (uint32) y;


    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = mul_u32 >> (uint32)(shift_s32);
    }
    else
    {
        res_u32 = mul_u32 << (uint32)(shift_s32);
# 3189 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
        temp_u32 = (res_u32 >> (uint32)shift_s32);


        if (temp_u32 != mul_u32)
        {
            res_u32 = (uint32) (0x7fff);
        }
    }


    if (res_u32 > (uint32) (0x7fff))
    {
        res_u32 = (uint32) (0x7fff);
    }
    return ((sint16) res_u32);
}
# 3230 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 res_u32;
    uint32 mul_u32;
    uint32 temp_u32;
    sint32 shift_s32;


    shift_s32 = (sint32) c - (sint32) b - (sint32) a;


    mul_u32 = (uint32) x * (uint32) y;


    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        res_u32 = mul_u32 >> (uint32)(shift_s32);
    }
    else
    {
        res_u32 = mul_u32 << (uint32)(shift_s32);
# 3265 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
        temp_u32 = (res_u32) >> (uint32)(shift_s32);


        if (temp_u32 != mul_u32)
        {
            res_u32 = (uint32) (0xffff);
        }
    }


    if (res_u32 > (uint32) (0xffff))
    {
        res_u32 = (uint32) (0xffff);
    }

    return ((uint16) res_u32);
}
# 3307 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulP2_u32s32_s32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_sint64u Res_Temp;
    sint32 shift_s32;
    sint32 flag = 0;
    uint32 tmp_u32;


    Res_Temp.s64 = (Mfx_sint64) x * (Mfx_sint64) y;


    shift_s32 = (sint32) c - (sint32) a - (sint32) b;


    if (y < 0L)
    {
        Res_Temp.s64 = -(Res_Temp.s64);


        flag = 1L;
    }


    if ((shift_s32 < 0L) || (Res_Temp.s64s.h == 0L))
    {


        if ((shift_s32 < -31))
        {
            shift_s32 = shift_s32 + 32;
            Res_Temp.s64s.l = (uint32) Res_Temp.s64s.h;
            Res_Temp.s64s.h = 0L;
        }


        if (shift_s32 < 0L)
        {

            shift_s32 = -shift_s32;


            Res_Temp.s64s.l = (((uint32) Res_Temp.s64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.s64s.l >> (uint32)(shift_s32)));
            tmp_u32 = ((uint32) Res_Temp.s64s.h >> (uint32)(shift_s32));
            Res_Temp.s64s.h = (sint32)tmp_u32;
        }
        else
        {


             tmp_u32 = (Res_Temp.s64s.l >> (32UL - (uint32)shift_s32));
            Res_Temp.s64s.h = (sint32)tmp_u32;
            Res_Temp.s64s.l = Res_Temp.s64s.l << (uint32)(shift_s32);
        }
    }


    if ((Res_Temp.s64s.h > 0L) || (Res_Temp.s64s.l > (0x7fffffffUL)))
    {

        if (flag == 1L)
        {
            Res_Temp.s64s.l = (uint32) (0x80000000UL);
        }
        else
        {
            Res_Temp.s64s.l = (uint32) (0x7fffffffL);
        }
    }


    if (flag == 1)
    {
        Res_Temp.s64s.l = ((0xFFFFFFFFUL ^ Res_Temp.s64s.l) + 1UL);
    }

    return ((sint32) Res_Temp.s64s.l);
}
# 3410 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulP2_u32s32_u32_Inl(uint32 x, sint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_uint64u Res_Temp;
    sint32 shift_s32;


    Res_Temp.u64 = (Mfx_uint64) x * (Mfx_uint64) y;


    shift_s32 = (sint32) c - (sint32) a - (sint32) b;


    if (y < 0L)
    {
        Res_Temp.u64s.l = (0x0uL);
    }
    else
    {

        if ((shift_s32 < 0L) || (Res_Temp.u64s.h == 0UL))
        {


            if ((shift_s32 < -31))
            {
                shift_s32 = shift_s32 + 32;
                Res_Temp.u64s.l = Res_Temp.u64s.h;
                Res_Temp.u64s.h = (0x0uL);
            }


            if (shift_s32 < 0L)
            {

                shift_s32 = -shift_s32;


                Res_Temp.u64s.l = ((Res_Temp.u64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.u64s.l >> (uint32)(shift_s32)));
                Res_Temp.u64s.h = (Res_Temp.u64s.h >> (uint32)(shift_s32));
            }
            else
            {

                Res_Temp.u64s.h = (Res_Temp.u64s.l >> (32UL - (uint32)shift_s32));
                Res_Temp.u64s.l = Res_Temp.u64s.l << (uint32)(shift_s32);
            }
        }


        if (Res_Temp.u64s.h > 0UL)
        {
            Res_Temp.u64s.l = (0xffffffffuL);
        }
    }

    return (Res_Temp.u64s.l);
}
# 3493 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulP2_u32u32_s32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_uint64u Res_Temp;
    sint32 shift_s32;


    Res_Temp.u64 = (Mfx_uint64) x * (Mfx_uint64) y;


    shift_s32 = (sint32) c - (sint32) a - (sint32) b;


    if ((shift_s32 < 0L) || (Res_Temp.u64s.h == 0UL))
    {


        if ((shift_s32 < -31))
        {
            shift_s32 = shift_s32 + 32;
            Res_Temp.u64s.l = Res_Temp.u64s.h;
            Res_Temp.u64s.h = (0x0uL);
        }


        if (shift_s32 < 0)
        {

            shift_s32 = -shift_s32;


            Res_Temp.u64s.l = ((Res_Temp.u64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.u64s.l >> (uint32)(shift_s32)));
            Res_Temp.u64s.h = (Res_Temp.u64s.h >> (uint32)(shift_s32));
        }
        else
        {

            Res_Temp.u64s.h = (Res_Temp.u64s.l >> (32UL - (uint32)shift_s32));
            Res_Temp.u64s.l = Res_Temp.u64s.l << (uint32)(shift_s32);
        }
    }


    if ((Res_Temp.u64s.h != 0UL) || (Res_Temp.u64s.l > (0x7fffffffUL)))
    {
        Res_Temp.u64s.l = (0x7fffffffL);
    }

    return ((sint32) Res_Temp.u64s.l);
}
# 3568 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulP2_u32u32_u32_Inl(uint32 x, uint32 y, sint16 a, sint16 b, sint16 c)
{

 Mfx_uint64u Res_Temp;
    sint32 shift_s32;


    Res_Temp.u64 = (Mfx_uint64) x * (Mfx_uint64) y;


    shift_s32 = (sint32) c - (sint32) a - (sint32) b;


    if ((shift_s32 < 0L) || (Res_Temp.u64s.h == 0UL))
    {


        if ((shift_s32 < -31L))
        {
            shift_s32 = shift_s32 + 32L;
            Res_Temp.u64s.l = Res_Temp.u64s.h;
            Res_Temp.u64s.h = 0L;
        }


        if (shift_s32 < 0L)
        {

            shift_s32 = -shift_s32;


            Res_Temp.u64s.l = ((Res_Temp.u64s.h << (32UL - (uint32)shift_s32)) | (Res_Temp.u64s.l >> (uint32)(shift_s32)));
            Res_Temp.u64s.h = (Res_Temp.u64s.h >> (uint32)(shift_s32));
        }
        else
        {

            Res_Temp.u64s.h = (Res_Temp.u64s.l >> (32UL - (uint32)shift_s32));
            Res_Temp.u64s.l = Res_Temp.u64s.l << (uint32)(shift_s32);
        }
    }


    if (Res_Temp.u64s.h != 0UL)
    {
        Res_Temp.u64s.l = (uint32) (0xffffffffuL);
    }

    return (Res_Temp.u64s.l);
}
# 3641 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulShRight_s16s16u8_s16_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_Sat_s32_s16_Inl(Mfx_Prv_ShRight_s32u8_s32_Inl((sint32)x_value * (sint32)y_value, shift)));
}
# 3668 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_MulShRight_s16s16u8_s8_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_Sat_s32_s8_Inl(Mfx_Prv_ShRight_s32u8_s32_Inl((sint32)x_value * (sint32)y_value, shift)));
}
# 3695 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulShRight_s16s16u8_u16_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_Sat_s32_u16_Inl(Mfx_Prv_ShRight_s32u8_s32_Inl((sint32)x_value * (sint32)y_value, shift)));
}
# 3722 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_MulShRight_s16s16u8_u8_Inl(sint16 x_value, sint16 y_value, uint8 shift)
{
    return (Mfx_Prv_Sat_s32_u8_Inl(Mfx_Prv_ShRight_s32u8_s32_Inl((sint32)x_value * (sint32)y_value, shift)));
}
# 3749 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulShRight_s32s32u8_s16_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_s32s32u8_s32_Inl(x_value, y_value, shift);

    return ((sint16) (
            (tmp_s32 <= (sint32) (-((0x7fff)) - 1)) ? (-((0x7fff)) - 1) :
                    ((tmp_s32 >= (sint32) (0x7fff)) ? (0x7fff) : tmp_s32)));
}
# 3782 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulShRight_s32s32u8_s32_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 tmp_s64;

    tmp_s64 = (((Mfx_sint64) x_value) * ((Mfx_sint64) y_value));

    tmp_s64 = Mfx_Prv_RightShift_s64u8_s64_Inl(tmp_s64, shift);


    tmp_s64 = (
            (tmp_s64 >= ((Mfx_sint64) (0x7fffffffL))) ? ((Mfx_sint64) (0x7fffffffL)) :
                    ((tmp_s64 <= ((Mfx_sint64) (-((0x7fffffffL)) - 1L))) ? ((Mfx_sint64) (-((0x7fffffffL)) - 1L)) : tmp_s64));

    return ((sint32) tmp_s64);
}
# 3820 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_MulShRight_s32s32u8_s8_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_s32s32u8_s32_Inl(x_value, y_value, shift);

    return ((sint8) (
            (tmp_s32 <= (sint32) (-((0x7f)) - 1)) ? (-((0x7f)) - 1) :
                    ((tmp_s32 >= (sint32) (0x7f)) ? (0x7f) : tmp_s32)));
}
# 3853 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulShRight_s32s32u8_u16_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_s32s32u8_s32_Inl(x_value, y_value, shift);

    return ((uint16) (
            (tmp_s32 <= (sint32) (0x0)) ? (0x0) :
                    ((tmp_s32 >= (sint32) (0xffff)) ? (0xffff) : tmp_s32)));
}
# 3886 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulShRight_s32s32u8_u32_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 tmp_s64;

    tmp_s64 = (((Mfx_sint64) x_value) * ((Mfx_sint64) y_value));

    tmp_s64 = Mfx_Prv_RightShift_s64u8_s64_Inl(tmp_s64, shift);


    tmp_s64 =
            ((tmp_s64 >= ((Mfx_sint64) (0xffffffffuL))) ? ((Mfx_sint64) (0xffffffffuL)) : ((tmp_s64 <= 0) ? 0 : tmp_s64));

    return ((uint32) tmp_s64);
}
# 3923 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_MulShRight_s32s32u8_u8_Inl(sint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_s32s32u8_s32_Inl(x_value, y_value, shift);

    return ((uint8) (
            (tmp_s32 <= (sint32) (0x0)) ? (0x0) :
                    ((tmp_s32 >= (sint32) (0xff)) ? (0xff) : tmp_s32)));
}
# 3956 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulShRight_u32s32u8_s16_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_u32s32u8_s32_Inl(x_value, y_value, shift);

    return ((sint16) (
            (tmp_s32 <= (sint32) (-((0x7fff)) - 1)) ? (-((0x7fff)) - 1) :
                    ((tmp_s32 >= (sint32) (0x7fff)) ? (0x7fff) : tmp_s32)));
}
# 3989 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulShRight_u32s32u8_s32_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 tmp_s64;

    tmp_s64 = (((Mfx_sint64) x_value) * ((Mfx_sint64) y_value));

    tmp_s64 = Mfx_Prv_RightShift_s64u8_s64_Inl(tmp_s64, shift);


    tmp_s64 = (
            (tmp_s64 >= ((Mfx_sint64) (0x7fffffffL))) ? ((Mfx_sint64) (0x7fffffffL)) :
                    ((tmp_s64 <= ((Mfx_sint64) (-((0x7fffffffL)) - 1L))) ? ((Mfx_sint64) (-((0x7fffffffL)) - 1L)) : tmp_s64));

    return ((sint32) tmp_s64);
}
# 4027 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_MulShRight_u32s32u8_s8_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    sint32 tmp_s32;

    tmp_s32 = Mfx_Prv_MulShRight_u32s32u8_s32_Inl(x_value, y_value, shift);

    return ((sint8) (
            (tmp_s32 <= (sint32) (-((0x7f)) - 1)) ? (-((0x7f)) - 1) :
                    ((tmp_s32 >= (sint32) (0x7f)) ? (0x7f) : tmp_s32)));
}
# 4060 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulShRight_u32s32u8_u16_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32s32u8_u32_Inl(x_value, y_value, shift);

    return ((uint16) ((tmp_u32 >= (uint32) (0xffff)) ? (0xffffu) : tmp_u32));
}
# 4091 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulShRight_u32s32u8_u32_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    Mfx_sint64 tmp_s64;
    uint32 res_u32;

    tmp_s64 = (((Mfx_sint64) x_value) * ((Mfx_sint64) y_value));

    tmp_s64 = Mfx_Prv_RightShift_s64u8_s64_Inl(tmp_s64, shift);


    tmp_s64 =
            ((tmp_s64 >= ((Mfx_sint64) (0xffffffffuL))) ? ((Mfx_sint64) (0xffffffffuL)) : ((tmp_s64 <= 0) ? 0 : tmp_s64));
    res_u32 = ((uint32) tmp_s64);

    return (res_u32);
}
# 4130 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_MulShRight_u32s32u8_u8_Inl(uint32 x_value, sint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32s32u8_u32_Inl(x_value, y_value, shift);

    return ((uint8) ((tmp_u32 >= (uint32) (0xff)) ? (0xffu) : tmp_u32));
}
# 4161 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_MulShRight_u32u32u8_s16_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((sint16) ((tmp_u32 >= (uint32) (0x7fff)) ? (0x7fffu) : tmp_u32));
}
# 4192 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_MulShRight_u32u32u8_s32_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((sint32) ((tmp_u32 >= (uint32) (0x7fffffffL)) ? (0x7fffffffUL) : tmp_u32));
}
# 4223 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint8 Mfx_Prv_MulShRight_u32u32u8_s8_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((sint8) ((tmp_u32 >= (uint32) (0x7f)) ? (0x7fu) : tmp_u32));
}
# 4254 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_MulShRight_u32u32u8_u16_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((uint16) ((tmp_u32 >= (uint32) (0xffff)) ? (0xffffu) : tmp_u32));
}
# 4285 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_MulShRight_u32u32u8_u32_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    Mfx_uint64 tmp_u64;



    tmp_u64 = (((Mfx_uint64) x_value) * ((Mfx_uint64) y_value)) >> shift;


    if (tmp_u64 >= ((Mfx_uint64) (0xffffffffuL)))
    {
        tmp_u64 = ((Mfx_uint64) (0xffffffffuL));
    }

    return ((uint32) tmp_u64);
}
# 4324 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint8 Mfx_Prv_MulShRight_u32u32u8_u8_Inl(uint32 x_value, uint32 y_value, uint8 shift)
{
    uint32 tmp_u32;

    tmp_u32 = Mfx_Prv_MulShRight_u32u32u8_u32_Inl(x_value, y_value, shift);

    return ((uint8) ((tmp_u32 >= (uint32) (0xff)) ? (0xffu) : tmp_u32));
}
# 4358 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_RMulDiv_s16s16s16_s16_Inl(sint16 x_value, sint16 y_value, sint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_s16_Inl(temp_s32, (sint32) z_value));
}
# 4393 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_RMulDiv_s16s16u16_s16_Inl(sint16 x_value, sint16 y_value, uint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_s16_Inl(temp_s32, (uint32) z_value));
}
# 4428 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_RMulDiv_s16u16s16_s16_Inl(sint16 x_value, uint16 y_value, sint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_s16_Inl(temp_s32, (sint32) z_value));
}
# 4463 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_RMulDiv_s16u16s16_u16_Inl(sint16 x_value, uint16 y_value, sint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_u16_Inl(temp_s32, (sint32) z_value));
}
# 4498 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_RMulDiv_s16u16u16_s16_Inl(sint16 x_value, uint16 y_value, uint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_s16_Inl(temp_s32, (uint32) z_value));
}
# 4533 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_RMulDiv_s16u16u16_u16_Inl(sint16 x_value, uint16 y_value, uint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_u16_Inl(temp_s32, (uint32) z_value));
}
# 4568 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_RMulDiv_s32s32s16_s16_Inl(sint32 x_value, sint32 y_value, sint16 z_value)
{
    return (Mfx_Prv_RMulDiv_s32s32s32_s16_Inl(x_value, y_value, (sint32) z_value));
}
# 4598 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_RMulDiv_s32s32s32_s16_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RMulDiv_s32s32s32_s32_Inl(x_value, y_value, z_value);


    if (res_s32 > (sint32) (0x7fff))
    {
        res_s32 = (sint32) (0x7fff);
    }
    if (res_s32 < (sint32) (-((0x7fff)) - 1))
    {
        res_s32 = (sint32) (-((0x7fff)) - 1);
    }

    return ((sint16) res_s32);
}
# 4642 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_RMulDiv_s32s32s32_s32_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{

    Mfx_sint64u mulres_s64;
    sint32 temp_s32;


    mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;


    temp_s32 = z_value / 2;


    if ((mulres_s64.s64s.h < 0L) != (z_value < 0L))
    {

        temp_s32 = -temp_s32;
    }


    mulres_s64.s64 = mulres_s64.s64 + temp_s32;

    return (Mfx_Prv_Div_s64s32_s32_Inl(mulres_s64.s64, z_value));
}
# 4692 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_RMulDiv_s32s32s32_u16_Inl(sint32 x_value, sint32 y_value, sint32 z_value)
{
    sint32 res_s32;

    res_s32 = Mfx_Prv_RMulDiv_s32s32s32_s32_Inl(x_value, y_value, z_value);


    if (res_s32 < (sint32) (0x0))
    {
        res_s32 = (sint32) (0x0);
    }
    if (res_s32 > (sint32) (0xffff))
    {
        res_s32 = (sint32) (0xffff);
    }

    return ((uint16) res_s32);
}
# 4736 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_RMulDiv_s32s32u32_s32_Inl(sint32 x_value, sint32 y_value, uint32 z_value)
{

    Mfx_sint64u mulres_s64;
    sint32 temp_s32;
    uint32 temp_u32;


    mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;


    temp_u32 = (z_value / 2UL);
    temp_s32 = (sint32)temp_u32;


    if (mulres_s64.s64s.h < 0L)
    {

        temp_s32 = -(temp_s32);
    }


    mulres_s64.s64 = mulres_s64.s64 + temp_s32;

    return (Mfx_Prv_Div_s64u32_s32_Inl(mulres_s64.s64, z_value));
}
# 4788 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_RMulDiv_s32u32s32_s32_Inl(sint32 x_value, uint32 y_value, sint32 z_value)
{

    Mfx_sint64u mulres_s64;
    sint32 temp_s32;


    mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;


    temp_s32 = z_value / 2;


    if ((mulres_s64.s64s.h < 0L) != (z_value < 0L))
    {

        temp_s32 = -temp_s32;
    }


    mulres_s64.s64 = mulres_s64.s64 + temp_s32;

    return (Mfx_Prv_Div_s64s32_s32_Inl(mulres_s64.s64, z_value));
}
# 4838 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_RMulDiv_s32u32u32_s32_Inl(sint32 x_value, uint32 y_value, uint32 z_value)
{

    Mfx_sint64u mulres_s64;
    sint32 temp_s32;
    uint32 temp_u32;


    mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;


    temp_u32 = (z_value / 2UL);
    temp_s32 = (sint32)temp_u32;


    if (mulres_s64.s64s.h < 0L)
    {

        temp_s32 = -(temp_s32);
    }


    mulres_s64.s64 = mulres_s64.s64 + temp_s32;

    return (Mfx_Prv_Div_s64u32_s32_Inl(mulres_s64.s64, z_value));
}
# 4890 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_RMulDiv_u16s16s16_s16_Inl(uint16 x_value, sint16 y_value, sint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_s16_Inl(temp_s32, (sint32) z_value));
}
# 4925 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_RMulDiv_u16s16s16_u16_Inl(uint16 x_value, sint16 y_value, sint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32s32_u16_Inl(temp_s32, (sint32) z_value));
}
# 4960 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint16 Mfx_Prv_RMulDiv_u16s16u16_s16_Inl(uint16 x_value, sint16 y_value, uint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_s16_Inl(temp_s32, (uint32) z_value));
}
# 4995 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_RMulDiv_u16s16u16_u16_Inl(uint16 x_value, sint16 y_value, uint16 z_value)
{
    sint32 temp_s32;


    temp_s32 = (sint32) x_value * (sint32) y_value;

    return (Mfx_Prv_RDiv_s32u32_u16_Inl(temp_s32, (uint32) z_value));
}
# 5030 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_RMulDiv_u16u16u16_u16_Inl(uint16 x_value, uint16 y_value, uint16 z_value)
{
    uint32 mul_u32;


    mul_u32 = (uint32) x_value * (uint32) y_value;

    return (Mfx_Prv_RDiv_u32u32_u16_Inl(mul_u32, (uint32) z_value));
}
# 5065 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_RMulDiv_u32s32s32_s32_Inl(uint32 x_value, sint32 y_value, sint32 z_value)
{
    return (Mfx_Prv_RMulDiv_s32u32s32_s32_Inl(y_value, x_value, z_value));
}
# 5095 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_RMulDiv_u32s32s32_u32_Inl(uint32 x_value, sint32 y_value, sint32 z_value)
{

    Mfx_sint64u mulres_s64;
    sint32 temp_s32;
    uint32 res_u32;





    if (((y_value < 0L) != (z_value < 0L)) && (z_value != 0L))
    {
        res_u32 = (0x0uL);
    }
    else
    {

        mulres_s64.s64 = (Mfx_sint64) x_value * (Mfx_sint64) y_value;


        temp_s32 = (sint32) (z_value / 2);


        mulres_s64.s64 = mulres_s64.s64 + temp_s32;


        res_u32 = Mfx_Prv_Div_s64s32_u32_Inl(mulres_s64.s64, z_value);
    }

    return (res_u32);
}
# 5153 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ sint32 Mfx_Prv_RMulDiv_u32s32u32_s32_Inl(uint32 x_value, sint32 y_value, uint32 z_value)
{
    return (Mfx_Prv_RMulDiv_s32u32u32_s32_Inl(y_value, x_value, z_value));
}
# 5183 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_RMulDiv_u32s32u32_u32_Inl(uint32 x_value, sint32 y_value, uint32 z_value)
{
    uint32 res_u32;






    if ((y_value < 0L) && (x_value != (0x0uL)))
    {
        res_u32 = (0x0uL);
    }
    else
    {
        res_u32 = Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(x_value, (uint32) y_value, z_value);
    }

    return (res_u32);
}
# 5229 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_RMulDiv_u32u32s32_u32_Inl(uint32 x_value, uint32 y_value, sint32 z_value)
{
    uint32 res_u32;


    if (z_value < 0L)
    {
        res_u32 = (0x0uL);
    }
    else
    {
        res_u32 = Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(x_value, y_value, (uint32) z_value);
    }

    return (res_u32);
}
# 5271 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_RMulDiv_u32u32u16_u16_Inl(uint32 x_value, uint32 y_value, uint16 z_value)
{
    return (Mfx_Prv_RMulDiv_u32u32u32_u16_Inl(x_value, y_value, (uint32) z_value));
}
# 5301 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint16 Mfx_Prv_RMulDiv_u32u32u32_u16_Inl(uint32 x_value, uint32 y_value, uint32 z_value)
{
    uint32 res_u32;

    res_u32 = Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(x_value, y_value, z_value);

    if (res_u32 > (uint32) (0xffff))
    {
        res_u32 = (uint32) (0xffff);
    }

    return ((uint16) res_u32);
}
# 5340 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ uint32 Mfx_Prv_RMulDiv_u32u32u32_u32_Inl(uint32 x_value, uint32 y_value, uint32 z_value)
{

    Mfx_uint64u mulres_u64;
    uint32 temp_u32;


    mulres_u64.u64 = (Mfx_uint64) x_value * (Mfx_uint64) y_value;

    temp_u32 = z_value / 2UL;


    mulres_u64.u64 = mulres_u64.u64 + temp_u32;

    return (Mfx_Prv_Div_u64u32_u32_Inl(mulres_u64.u64, z_value));
}
# 5371 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Mul_Inl.h"
static __inline__ Mfx_sint64 Mfx_Prv_RightShift_s64u8_s64_Inl(Mfx_sint64 X_s64, uint8 Shift_u8)
{
    Mfx_sint64u Res_Temp;
    uint32 tmp_u32;

    Res_Temp.s64 = X_s64;

    if (Shift_u8 > 31U)
    {
        Shift_u8 = Shift_u8 - 32U;
        Res_Temp.s64s.l = (uint32)Res_Temp.s64s.h;

        if(Res_Temp.s64s.h < 0L)
        {
            Res_Temp.s64s.h = -1L;
        }
        else
        {
            Res_Temp.s64s.h = 0L;
        }
    }

    if (Shift_u8 > 0U)
    {

        Res_Temp.s64s.l = (((uint32) Res_Temp.s64s.h << (32UL - Shift_u8)) | (Res_Temp.s64s.l >> Shift_u8));

        tmp_u32 = ((uint32) Res_Temp.s64s.h >> (uint32)Shift_u8);

        if(Res_Temp.s64s.h < 0L)
        {

            tmp_u32 = tmp_u32 | (0xFFFFFFFFUL << (32U - (uint32)Shift_u8));
        }

        Res_Temp.s64s.h = (sint32) tmp_u32;
    }

    return Res_Temp.s64;
}
# 102 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 112 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h"
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h" 1
# 129 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_AbsDiff_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_AbsDiff_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_AbsDiff_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_AbsDiff_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_AbsDiff_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_AbsDiff_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_AbsDiff_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_AbsDiff_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_AbsDiff_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_AbsDiff_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_AbsDiff_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_AbsDiff_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
static __inline__ sint16 Mfx_Prv_AbsDiff_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_AbsDiff_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_AbsDiff_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_AbsDiff_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_AbsDiff_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_AbsDiff_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_AbsDiff_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint8 Mfx_Prv_AbsDiff_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Absdiff_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Absdiff_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Absdiff_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_AbsDiff_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_AbsDiff_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_AbsDiff_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint16 Mfx_Prv_Absdiff_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_Absdiff_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Absdiff_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_AbsDiff_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_AbsDiff_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_AbsDiff_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_AbsDiff_u8s8_s8_Inl(uint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_AbsDiff_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_AbsDiff_u8u8_s8_Inl(uint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_AbsDiff_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_AbsDiffP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_AbsDiffP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_AbsDiffP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_AbsDiffP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_AbsDiffP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_AbsDiffP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_Sub_s16s16_s16_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_Sub_s16s16_s8_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_Sub_s16s16_u16_Inl(sint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_Sub_s16s16_u8_Inl(sint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_Sub_s16u16_s16_Inl(sint16 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_Sub_s16u16_s8_Inl(sint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_Sub_s16u16_u16_Inl(sint16 x_value, uint16 y_value);
static __inline__ uint8 Mfx_Prv_Sub_s16u16_u8_Inl(sint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Sub_s32s32_s16_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Sub_s32s32_s32_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Sub_s32s32_s8_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Sub_s32s32_u16_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Sub_s32s32_u32_Inl(sint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_Sub_s32s32_u8_Inl(sint32 x_value, sint32 y_value);
static __inline__ sint16 Mfx_Prv_Sub_s32u32_s16_Inl(sint32 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_Sub_s32u32_s32_Inl(sint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Sub_s32u32_s8_Inl(sint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_Sub_s32u32_u16_Inl(sint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_Sub_s32u32_u32_Inl(sint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Sub_s32u32_u8_Inl(sint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Sub_s8s8_s8_Inl(sint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_Sub_s8s8_u8_Inl(sint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_Sub_s8u8_s8_Inl(sint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_Sub_s8u8_u8_Inl(sint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_Sub_u16s16_s16_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint8 Mfx_Prv_Sub_u16s16_s8_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint16 Mfx_Prv_Sub_u16s16_u16_Inl(uint16 x_value, sint16 y_value);
static __inline__ uint8 Mfx_Prv_Sub_u16s16_u8_Inl(uint16 x_value, sint16 y_value);
static __inline__ sint16 Mfx_Prv_Sub_u16u16_s16_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint8 Mfx_Prv_Sub_u16u16_s8_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint16 Mfx_Prv_Sub_u16u16_u16_Inl(uint16 x_value, uint16 y_value);
static __inline__ uint8 Mfx_Prv_Sub_u16u16_u8_Inl(uint16 x_value, uint16 y_value);
static __inline__ sint16 Mfx_Prv_Sub_u32s32_s16_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint32 Mfx_Prv_Sub_u32s32_s32_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint8 Mfx_Prv_Sub_u32s32_s8_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint16 Mfx_Prv_Sub_u32s32_u16_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint32 Mfx_Prv_Sub_u32s32_u32_Inl(uint32 x_value, sint32 y_value);
static __inline__ uint8 Mfx_Prv_Sub_u32s32_u8_Inl(uint32 x_value, sint32 y_value);
static __inline__ sint16 Mfx_Prv_Sub_u32u32_s16_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint32 Mfx_Prv_Sub_u32u32_s32_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Sub_u32u32_s8_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint16 Mfx_Prv_Sub_u32u32_u16_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint32 Mfx_Prv_Sub_u32u32_u32_Inl(uint32 x_value, uint32 y_value);
static __inline__ uint8 Mfx_Prv_Sub_u32u32_u8_Inl(uint32 x_value, uint32 y_value);
static __inline__ sint8 Mfx_Prv_Sub_u8s8_s8_Inl(uint8 x_value, sint8 y_value);
static __inline__ uint8 Mfx_Prv_Sub_u8s8_u8_Inl(uint8 x_value, sint8 y_value);
static __inline__ sint8 Mfx_Prv_Sub_u8u8_s8_Inl(uint8 x_value, uint8 y_value);
static __inline__ uint8 Mfx_Prv_Sub_u8u8_u8_Inl(uint8 x_value, uint8 y_value);
static __inline__ sint16 Mfx_Prv_SubP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_SubP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_SubP2_s16u16_s16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_SubP2_s16u16_u16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_SubP2_s32s32_s32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ uint32 Mfx_Prv_SubP2_s32s32_u32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ sint32 Mfx_Prv_SubP2_s32u32_s32_Inl(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ uint32 Mfx_Prv_SubP2_s32u32_u32_Inl(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ sint16 Mfx_Prv_SubP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_SubP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint16 Mfx_Prv_SubP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ uint16 Mfx_Prv_SubP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c);
static __inline__ sint32 Mfx_Prv_SubP2_u32s32_s32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ uint32 Mfx_Prv_SubP2_u32s32_u32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ sint32 Mfx_Prv_SubP2_u32u32_s32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
static __inline__ uint32 Mfx_Prv_SubP2_u32u32_u32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c);
# 257 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_AbsDiff_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_s16((sint32)x_value, (sint32)y_value));
}
# 279 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_AbsDiff_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_s8((sint32)x_value, (sint32)y_value));
}
# 298 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsDiff_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_u16((sint32)x_value, (sint32)y_value));
}
# 317 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_AbsDiff_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_u8((sint32)x_value, (sint32)y_value));
}
# 339 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_AbsDiff_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint16 res_s16;


    res_s16 = Mfx_Prv_Sub_s32s32_s16_Inl(x_value, y_value);

    if(res_s16 < 0)
    {

        res_s16 = ((res_s16 == (-((0x7fff)) - 1)) ? (0x7fff) : (-res_s16));
    }

    return (res_s16);
}
# 372 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_AbsDiff_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;


    res_s32 = Mfx_Prv_Sub_s32s32_s32_Inl(x_value, y_value);

    if(res_s32 < 0)
    {

        res_s32 = ((res_s32 == (-((0x7fffffffL)) - 1L)) ? (0x7fffffffL) : (-res_s32));
    }

    return (res_s32);
}
# 405 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_AbsDiff_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint8 res_s8;


    res_s8 = Mfx_Prv_Sub_s32s32_s8_Inl(x_value, y_value);

    if(res_s8 < 0)
    {

        res_s8 = ((res_s8 == (-((0x7f)) - 1)) ? (0x7f) : (-res_s8));
    }

    return (res_s8);
}
# 438 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsDiff_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;

    if(x_value >= y_value)
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);
    }
    else
    {
        tmp_s32 = (y_value - x_value);
        res_u32 = ((uint32)tmp_s32);
    }


    res_u32 = (res_u32 > (0xffffu)) ? ((0xffffu)) : (res_u32);

    return ((uint16) res_u32);
}
# 477 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_AbsDiff_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;


    if(x_value >= y_value)
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);
    }
    else
    {
        tmp_s32 = (y_value - x_value);
        res_u32 = ((uint32)tmp_s32);
    }

    return (res_u32);
}
# 514 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_AbsDiff_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;


    if(x_value >= y_value)
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);
    }
    else
    {
        tmp_s32 = (y_value - x_value);
        res_u32 = ((uint32)tmp_s32);
    }


    res_u32 = (res_u32 > (0xffu)) ? ((0xffu)) : (res_u32);

    return ((uint8) res_u32);
}
# 554 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_AbsDiff_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_AbsDiff_s32s32_s8((sint32)x_value, (sint32)y_value));
}
# 576 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_AbsDiff_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_AbsDiff_s32s32_u8((sint32)x_value, (sint32)y_value));
}
# 598 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_AbsDiff_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_s16((sint32)x_value, (sint32)y_value));
}
# 620 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_AbsDiff_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_s8((sint32)x_value, (sint32)y_value));
}
# 642 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsDiff_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_u16((sint32)x_value, (sint32)y_value));
}
# 664 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_AbsDiff_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_AbsDiff_s32s32_u8((sint32)x_value, (sint32)y_value));
}
# 686 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_AbsDiff_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Absdiff_u32u32_s16((uint32)x_value, (uint32)y_value));
}
# 708 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_AbsDiff_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Absdiff_u32u32_s8((uint32)x_value, (uint32)y_value));
}
# 727 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsDiff_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_AbsDiff_u32u32_u16((uint32)x_value, (uint32)y_value));
}
# 749 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_AbsDiff_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_AbsDiff_u32u32_u8((uint32)x_value, (uint32)y_value));
}
# 771 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Absdiff_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    sint16 res_s16;


    if( (y_value <= 0) || ((y_value > 0) && (x_value >= ((uint32) y_value) )) )
    {
        res_s16 = Mfx_Prv_Sub_u32s32_s16_Inl(x_value, y_value);
    }
    else
    {
        res_s16 = Mfx_Prv_Sub_s32u32_s16_Inl(y_value, x_value);
    }

    return (res_s16);
}
# 805 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_Absdiff_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    sint32 res_s32;


    if( (y_value <= 0) || ((y_value > 0) && (x_value >= ((uint32) y_value) )) )
    {
        res_s32 = Mfx_Prv_Sub_u32s32_s32_Inl(x_value, y_value);
    }
    else
    {
        res_s32 = Mfx_Prv_Sub_s32u32_s32_Inl(y_value, x_value);
    }

    return (res_s32);
}
# 839 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Absdiff_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    sint8 res_s8;


    if( (y_value <= 0) || ((y_value > 0) && (x_value >= ((uint32) y_value) )) )
    {
        res_s8 = Mfx_Prv_Sub_u32s32_s8_Inl(x_value, y_value);
    }
    else
    {
        res_s8 = Mfx_Prv_Sub_s32u32_s8_Inl(y_value, x_value);
    }

    return (res_s8);
}
# 873 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsDiff_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint16 res_u16;

    if( (y_value <= 0) || (x_value >= ((uint32) y_value) ))
    {
        res_u16 = Mfx_Prv_Sub_u32s32_u16_Inl(x_value, y_value);
    }
    else
    {
        res_u16 = Mfx_Prv_Sub_s32u32_u16_Inl(y_value, x_value);
    }

    return (res_u16);
}
# 906 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_AbsDiff_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;

    if( (y_value <= 0) || ((y_value > 0) && (x_value >= ((uint32) y_value) )) )
    {
        res_u32 = Mfx_Prv_Sub_u32s32_u32_Inl(x_value, y_value);
    }
    else
    {
        res_u32 = Mfx_Prv_Sub_s32u32_u32_Inl(y_value, x_value);
    }

    return (res_u32);
}
# 939 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_AbsDiff_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint8 res_u8;

    if( (y_value <= 0) || (x_value >= ((uint32) y_value) ) )
    {
        res_u8 = Mfx_Prv_Sub_u32s32_u8_Inl(x_value, y_value);
    }
    else
    {
        res_u8 = Mfx_Prv_Sub_s32u32_u8_Inl(y_value, x_value);
    }

    return (res_u8);
}
# 972 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Absdiff_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    if (res_u32 > (uint32)(0x7fff))
    {
        res_u32 = (uint32)(0x7fff);
    }

    return ((sint16)res_u32);
}
# 1011 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_Absdiff_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    if (res_u32 > (uint32)(0x7fffffffL))
    {
        res_u32 = (uint32)(0x7fffffffL);
    }

    return ((sint32)res_u32);
}
# 1050 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Absdiff_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    if (res_u32 > (uint32)(0x7f))
    {
        res_u32 = (uint32)(0x7f);
    }

    return ((sint8)res_u32);
}
# 1089 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsDiff_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }


    res_u32 = (res_u32 > (0xffffu)) ? ((0xffffu)) : (res_u32);

    return ((uint16) res_u32);
}
# 1126 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_AbsDiff_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if(x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }

    return (res_u32);
}
# 1160 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_AbsDiff_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    if (x_value >= y_value)
    {
        res_u32 = ((uint32) (x_value - y_value));
    }
    else
    {
        res_u32 = ((uint32) (y_value - x_value));
    }


    res_u32 = (res_u32 > (0xffu)) ? ((0xffu)) : (res_u32);

    return ((uint8) res_u32);
}
# 1197 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_AbsDiff_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_AbsDiff_s32s32_s8((sint32)x_value, (sint32)y_value));
}
# 1219 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_AbsDiff_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_AbsDiff_s32s32_u8((sint32)x_value, (sint32)y_value));
}
# 1241 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_AbsDiff_u8u8_s8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Absdiff_u32u32_s8((uint32)x_value, (uint32)y_value));
}
# 1260 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_AbsDiff_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_AbsDiff_u32u32_u8((uint32)x_value, (uint32)y_value));
}
# 1300 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_AbsDiffP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 xTmp_s32;
    sint32 yTmp_s32;
    sint32 absres_s32;
    sint32 shift_s32;
    uint32 tmp_u32;


    if (a >= b)
    {

        shift_s32 = (sint32) a - (sint32) b;




        if (y < 0)
        {

            tmp_u32 = (((uint32) (-(y))) << (uint32)(shift_s32));
            yTmp_s32 = -((sint32)tmp_u32);
        }
        else
        {


            tmp_u32 = (((uint32) y) << (uint32)(shift_s32));
            yTmp_s32 = (sint32)tmp_u32;
        }


        xTmp_s32 = (sint32) x;


        shift_s32 = (sint32) a;
    }

    else
    {

        shift_s32 = (sint32) b - (sint32) a;


        if (x < 0)
        {

            tmp_u32 = (((uint32) (-(x))) << (uint32)(shift_s32));
            xTmp_s32 = -((sint32)tmp_u32);
        }
        else
        {


            tmp_u32 = (((uint32) x) << (uint32)(shift_s32));
            xTmp_s32 = (sint32)tmp_u32;
        }


        yTmp_s32 = (sint32) y;


        shift_s32 = (sint32) b;
    }


    absres_s32 = Mfx_Prv_AbsDiff_s32s32_s32_Inl(xTmp_s32, yTmp_s32);


    return (Mfx_Prv_ConvertP2_s32_s16_Inl(absres_s32, (sint16) shift_s32, c));
}
# 1407 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsDiffP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 xTmp_s32;
    sint32 yTmp_s32;
    uint32 absres_u32;
    sint32 shift_s32;


    if (a >= b)
    {

        shift_s32 = (sint32) a - (sint32) b;




        if (y < 0)
        {

            absres_u32 = (((uint32) (-(y))) << (uint32)(shift_s32));
            yTmp_s32 = -((sint32)absres_u32);
        }
        else
        {

            absres_u32 = (((uint32) y) << (uint32)(shift_s32));
            yTmp_s32 = (sint32)absres_u32;
        }


        xTmp_s32 = (sint32) x;


        shift_s32 = (sint32) a;
    }

    else
    {

        shift_s32 = (sint32) b - (sint32) a;


        if (x < 0)
        {

            absres_u32 = (((uint32) (-(x))) << (uint32)(shift_s32));
            xTmp_s32 = -((sint32)absres_u32);
        }
        else
        {

            absres_u32 = (((uint32) x) << (uint32)(shift_s32));
            xTmp_s32 = (sint32)absres_u32;
        }


        yTmp_s32 = (sint32) y;


        shift_s32 = (sint32) b;
    }


    absres_u32 = Mfx_Prv_AbsDiff_s32s32_u32_Inl(xTmp_s32, yTmp_s32);


    return (Mfx_Prv_ConvertP2_u32_u16_Inl(absres_u32, (sint16) shift_s32, c));
}
# 1511 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_AbsDiffP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 xTmp_u32;
    sint32 yTmp_s32;
    sint32 absres_s32;
    sint32 shift_s32;


    if (a >= b)
    {

        shift_s32 = (sint32) a - (sint32) b;




        if (y < 0)
        {

            xTmp_u32 = (((uint32) (-(y))) << (uint32)(shift_s32));
            yTmp_s32 = -((sint32)xTmp_u32);
        }
        else
        {

            xTmp_u32 = (((uint32) y) << (uint32)(shift_s32));
            yTmp_s32 = (sint32)xTmp_u32;
        }


        xTmp_u32 = (uint32) x;


        shift_s32 = (sint32) a;
    }

    else
    {

        shift_s32 = (sint32)b - (sint32)a;
        xTmp_u32 = (((uint32) x) << (uint32)shift_s32);


        yTmp_s32 = (sint32) y;


        shift_s32 = (sint32) b;
    }


    absres_s32 = Mfx_Prv_Absdiff_u32s32_s32_Inl(xTmp_u32, yTmp_s32);


    return (Mfx_Prv_ConvertP2_s32_s16_Inl(absres_s32, (sint16) shift_s32, c));
}
# 1601 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsDiffP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 xTmp_u32;
    sint32 yTmp_s32;
    uint32 absres_u32;
    sint32 shift_s32;


    if (a >= b)
    {

        shift_s32 = (sint32) a - (sint32) b;






        if (y < 0)
        {

            absres_u32 = (((uint32) (-(y))) << (uint32)(shift_s32));
            yTmp_s32 = -((sint32)absres_u32);
        }
        else
        {

            absres_u32 = (((uint32) y) << (uint32)(shift_s32));
            yTmp_s32 = (sint32)absres_u32;
        }


        xTmp_u32 = (uint32) x;


        shift_s32 = (sint32) a;
    }

    else
    {

        shift_s32 = (sint32) b - (sint32) a;


        xTmp_u32 = (((uint32) x) << (uint32)(shift_s32));


        yTmp_s32 = (sint32) y;


        shift_s32 = (sint32) b;
    }

    absres_u32 = Mfx_Prv_AbsDiff_u32s32_u32_Inl(xTmp_u32, yTmp_s32);


    return (Mfx_Prv_ConvertP2_u32_u16_Inl(absres_u32, (sint16) shift_s32, c));
}
# 1693 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_AbsDiffP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 xTmp_u32;
    uint32 yTmp_u32;
    uint32 absres_u32;
    sint32 shift_s32;


    if (a >= b)
    {
        shift_s32 = (sint32)a - (sint32)b;

        yTmp_u32 = ((uint32) y << (uint32)shift_s32);


        xTmp_u32 = (uint32) x;


        shift_s32 = (sint32) a;
    }

    else
    {
        shift_s32 = (sint32)b - (sint32)a;

        xTmp_u32 = (((uint32) x) << (uint32)shift_s32);


        yTmp_u32 = (uint32) y;


        shift_s32 = (sint32) b;
    }


    absres_u32 = Mfx_Prv_AbsDiff_u32u32_u32_Inl(xTmp_u32, yTmp_u32);


    shift_s32 = (sint32) c - shift_s32;






    if (((shift_s32) >= 0) && (absres_u32 >= (uint32) (0x7fff)))
    {
        absres_u32 = (uint32) (0x7fff);
    }
    else
    {

        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            absres_u32 = ((absres_u32) >> (uint32)(shift_s32));
        }
        else
        {
            absres_u32 = ((absres_u32) << (uint32)(shift_s32));
        }
    }


    if (absres_u32 > (uint32) (0x7fff))
    {
        absres_u32 = (uint32) (0x7fff);
    }

    return ((sint16) absres_u32);
}
# 1799 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_AbsDiffP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    uint32 xTmp_u32;
    uint32 yTmp_u32;
    uint32 absres_u32;
    sint32 shift_s32;


    if (a >= b)
    {
        shift_s32 = ((sint32)a - (sint32)b);

        yTmp_u32 = (((uint32) y) << (uint32)shift_s32);


        xTmp_u32 = (uint32) x;


        shift_s32 = (sint32) a;
    }

    else
    {
        shift_s32 = ((sint32)b - (sint32)a);

        xTmp_u32 = (((uint32) x) << (uint32)shift_s32);


        yTmp_u32 = (uint32) y;


        shift_s32 = (sint32) b;
    }


    absres_u32 = Mfx_Prv_AbsDiff_u32u32_u32_Inl(xTmp_u32, yTmp_u32);


    return (Mfx_Prv_ConvertP2_u32_u16_Inl(absres_u32, (sint16) shift_s32, c));
}
# 1854 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Sub_s16s16_s16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value - (sint32)y_value));
}
# 1873 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_s16s16_s8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value - (sint32)y_value));
}
# 1892 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_Sub_s16s16_u16_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value - (sint32)y_value));
}
# 1911 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_s16s16_u8_Inl(sint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value - (sint32)y_value));
}
# 1930 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Sub_s16u16_s16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value - (sint32)y_value));
}
# 1952 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_s16u16_s8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value - (sint32)y_value));
}
# 1974 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_Sub_s16u16_u16_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value - (sint32)y_value));
}
# 1996 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_s16u16_u8_Inl(sint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value - (sint32)y_value));
}
# 2018 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Sub_s32s32_s16_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = (x_value - y_value);

    if( (x_value >= 0L) && (y_value <= 0L) )
    {

        if( x_value > ((0x7fffffffL) + y_value) )
        {
            res_s32 = (sint32) (0x7fff);
        }
    }

    if( (x_value < 0L) && (y_value > 0L) )
    {

        if( x_value < ((-((0x7fffffffL)) - 1L) + y_value) )
        {
            res_s32 = (sint32) (-((0x7fff)) - 1);
        }
    }


    if(res_s32 > (sint32) (0x7fff))
    {
        res_s32 = (sint32) (0x7fff);
    }
    if(res_s32 < (sint32) (-((0x7fff)) - 1))
    {
        res_s32 = (sint32) (-((0x7fff)) - 1);
    }

    return ((sint16) res_s32);
}
# 2072 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_Sub_s32s32_s32_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = (x_value - y_value);

    if( (x_value >= 0L) && (y_value <= 0L) )
    {

        if( x_value > ((0x7fffffffL) + y_value) )
        {
            res_s32 = (0x7fffffffL);
        }
    }

    if( (x_value < 0L) && (y_value > 0L) )
    {

        if( x_value < ((-((0x7fffffffL)) - 1L) + y_value) )
        {
            res_s32 = (-((0x7fffffffL)) - 1L);
        }
    }

    return (res_s32);
}
# 2116 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_s32s32_s8_Inl(sint32 x_value, sint32 y_value)
{
    sint32 res_s32;

    res_s32 = (x_value - y_value);

    if( (x_value >= 0L) && (y_value <= 0L) )
    {

        if( x_value > ((0x7fffffffL) + y_value) )
        {
            res_s32 = (sint32) (0x7f);
        }
    }

    if( (x_value < 0L) && (y_value > 0L) )
    {

        if( x_value < ((-((0x7fffffffL)) - 1L) + y_value) )
        {
            res_s32 = (sint32) (-((0x7f)) - 1);
        }
    }


    if(res_s32 > (sint32) (0x7f))
    {
        res_s32 = (sint32) (0x7f);
    }

    if(res_s32 < (sint32) (-((0x7f)) - 1))
    {
        res_s32 = (sint32) (-((0x7f)) - 1);
    }

    return ((sint8) res_s32);
}
# 2171 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_Sub_s32s32_u16_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;


    if (x_value <= y_value)
    {
        res_u32 = (uint32) (0x0);
    }

    else
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);


        if(res_u32 > (uint32) (0xffff))
        {
            res_u32 = (uint32) (0xffff);
        }
    }

    return ((uint16) res_u32);
}
# 2214 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_Sub_s32s32_u32_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;


    if (x_value <= y_value)
    {
        res_u32 = (0x0uL);
    }

    else
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);
    }

    return (res_u32);
}
# 2251 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_s32s32_u8_Inl(sint32 x_value, sint32 y_value)
{
    uint32 res_u32;
    sint32 tmp_s32;



    if (x_value <= y_value)
    {
        res_u32 = (uint32) (0x0);
    }

    else
    {
        tmp_s32 = (x_value - y_value);
        res_u32 = ((uint32)tmp_s32);


        if(res_u32 > (uint32) (0xff))
        {
            res_u32 = (uint32) (0xff);
        }
    }

    return ((uint8) res_u32);
}
# 2295 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Sub_s32u32_s16_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;


    if(x_value >= 0L)
    {

        if( ( ((uint32) x_value) + ((uint32) (0x7fff)) + 1UL ) < y_value )
        {
            res_s32 = (sint32) (-((0x7fff)) - 1);
        }

        else
        {
            if( y_value <= (uint32) (0x7fffffffL) )
            {
                res_s32 = ( x_value - ((sint32) y_value) );
            }
            else
            {
                tmp_u32 = (y_value - (0x7fffffffUL));
                res_s32 = ( x_value - (0x7fffffffL) - ((sint32)tmp_u32) );
            }


            if(res_s32 > (sint32) (0x7fff))
            {
                res_s32 = (sint32) (0x7fff);
            }
        }
    }

    else
    {

        res_s32 = (x_value - (-((0x7fffffffL)) - 1L));
        if( y_value >= ((uint32)res_s32) )
        {
            res_s32 = (sint32) (-((0x7fff)) - 1);
        }

        else
        {
            res_s32 = ( x_value - ((sint32) y_value) );


            if(res_s32 < (sint32) (-((0x7fff)) - 1))
            {
                res_s32 = (sint32) (-((0x7fff)) - 1);
            }
        }
    }

    return ((sint16) res_s32);
}
# 2370 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_Sub_s32u32_s32_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;


    if(x_value >= 0)
    {

        if( ( ((uint32) x_value) + ((uint32) (0x7fffffffL)) + 1UL ) < y_value )
        {
            res_s32 = (-((0x7fffffffL)) - 1L);
        }

        else
        {
            if( y_value <= (0x7fffffffUL) )
            {
                res_s32 = ( x_value - ((sint32) y_value) );
            }
            else
            {
                tmp_u32 = (y_value - (0x7fffffffUL));
                res_s32 = ( x_value - (0x7fffffffL) - ((sint32)tmp_u32) );
            }
        }
    }

    else
    {

        res_s32 = (x_value - (-((0x7fffffffL)) - 1L));
        if( y_value >= ((uint32)res_s32 ) )
        {
            res_s32 = (-((0x7fffffffL)) - 1L);
        }

        else
        {
            res_s32 = ( x_value - ((sint32) y_value) );
        }
    }

    return (res_s32);
}
# 2433 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_s32u32_s8_Inl(sint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;


    if(x_value >= 0)
    {

        if( ( ((uint32) x_value) + ((uint32) (0x7f)) + 1UL ) < y_value )
        {
            res_s32 = (sint32) (-((0x7f)) - 1);
        }

        else
        {
            if( y_value <= (0x7fffffffUL) )
            {
                res_s32 = ( x_value - ((sint32) y_value) );
            }
            else
            {
                tmp_u32 = (y_value - ((uint32) (0x7fffffffL)));
                res_s32 = ( x_value - (0x7fffffffL) - ((sint32)tmp_u32) );
            }


            if(res_s32 > (sint32) (0x7f))
            {
                res_s32 = (sint32) (0x7f);
            }
        }
    }

    else
    {

        res_s32 = (x_value - (-((0x7fffffffL)) - 1L));
        if( y_value >= ((uint32)res_s32 ) )
        {
            res_s32 = (sint32) (-((0x7f)) - 1);
        }

        else
        {
            res_s32 = ( x_value - ((sint32) y_value) );


            if(res_s32 < (sint32) (-((0x7f)) - 1))
            {
                res_s32 = (sint32) (-((0x7f)) - 1);
            }
        }
    }

    return ((sint8) res_s32);
}
# 2508 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_Sub_s32u32_u16_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;



    if( (x_value < 0L) || (((uint32) x_value) < y_value) )
    {
        res_u32 = (uint32) (0x0);
    }

    else
    {
        res_u32 = (((uint32) x_value) - y_value);


        if(res_u32 > (uint32) (0xffff))
        {
            res_u32 = (uint32) (0xffff);
        }
    }

    return ((uint16) res_u32);
}
# 2550 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_Sub_s32u32_u32_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;



    if( (x_value < 0) || (((uint32) x_value) < y_value) )
    {
        res_u32 = (0x0uL);
    }

    else
    {
        res_u32 = (((uint32) x_value) - y_value);
    }

    return (res_u32);
}
# 2586 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_s32u32_u8_Inl(sint32 x_value, uint32 y_value)
{
    uint32 res_u32;



    if( (x_value < 0L) || (((uint32) x_value) < y_value) )
    {
        res_u32 = (uint32) (0x0);
    }

    else
    {
        res_u32 = (((uint32) x_value) - y_value);


        if(res_u32 > (uint32) (0xff))
        {
            res_u32 = (uint32) (0xff);
        }
    }

    return ((uint8) res_u32);
}
# 2625 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_s8s8_s8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Sub_s16s16_s8(x_value, y_value));
}
# 2647 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_s8s8_u8_Inl(sint8 x_value, sint8 y_value)
{
    return (Mfx_Sub_s16s16_u8(x_value, y_value));
}
# 2666 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_s8u8_s8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Sub_s16u16_s8(x_value, y_value));
}
# 2688 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_s8u8_u8_Inl(sint8 x_value, uint8 y_value)
{
    return (Mfx_Sub_s16u16_u8(x_value, y_value));
}
# 2707 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Sub_u16s16_s16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value - (sint32)y_value));
}
# 2729 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_u16s16_s8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value - (sint32)y_value));
}
# 2748 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_Sub_u16s16_u16_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value - (sint32)y_value));
}
# 2770 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_u16s16_u8_Inl(uint16 x_value, sint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value - (sint32)y_value));
}
# 2789 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Sub_u16u16_s16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s16_Inl((sint32)x_value - (sint32)y_value));
}
# 2808 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_u16u16_s8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_s8_Inl((sint32)x_value - (sint32)y_value));
}
# 2827 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_Sub_u16u16_u16_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u16_Inl((sint32)x_value - (sint32)y_value));
}
# 2846 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_u16u16_u8_Inl(uint16 x_value, uint16 y_value)
{
    return (Mfx_Prv_Sat_s32_u8_Inl((sint32)x_value - (sint32)y_value));
}
# 2868 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Sub_u32s32_s16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);



    if (y_value <= 0L)
    {



        if ((res_u32 > (uint32) (0x7fff)) || (res_u32 < x_value))
        {
            res_u32 = (uint32) (0x7fff);
        }
    }


    else
    {

        if ((uint32) y_value < x_value)
        {

            if (res_u32 > (uint32) (0x7fff))
            {
                res_u32 = (uint32) (0x7fff);
            }
        }

        else
        {

            if ((sint32) res_u32 < (sint32) (-((0x7fff)) - 1))
            {
                res_u32 = (uint32) (0x8000u);
            }
        }
    }

    return ((sint16) res_u32);
}
# 2931 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_Sub_u32s32_s32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - ((uint32) y_value));



    if (y_value <= 0L)
    {




        if ((res_u32 > (uint32) (0x7fffffffL)) || (res_u32 < x_value))
        {
            res_u32 = (uint32) (0x7fffffffL);
        }
    }

    else
    {


        if ((((uint32) y_value) < x_value) && (res_u32 > (uint32) (0x7fffffffL)))
        {
            res_u32 = (uint32) (0x7fffffffL);
        }

    }

    return ((sint32) res_u32);
}
# 2983 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_u32s32_s8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);



    if (y_value <= 0L)
    {


        if ((res_u32 > (uint32) (0x7f)) || (res_u32 < x_value))
        {
            res_u32 = (uint32) (0x7f);
        }
    }

    else
    {

        if ((uint32) y_value < x_value)
        {

            if (res_u32 > (uint32) (0x7f))
            {
                res_u32 = (uint32) (0x7f);
            }
        }

        else
        {

            if ((sint32) res_u32 < (sint32) (-((0x7f)) - 1))
            {
                res_u32 = (uint32) (0x80u);
            }
        }
    }

    return ((sint8) res_u32);
}
# 3044 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_Sub_u32s32_u16_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);

    if (y_value >= 0L)
    {


        if (res_u32 > x_value)
        {
            res_u32 = (uint32) (0x0);
        }
        else
        {

            if (res_u32 > (uint32) (0xffff))
            {
                res_u32 = (uint32) (0xffff);
            }
        }
    }

    else
    {



        if ((res_u32 < x_value) || (res_u32 > (uint32) (0xffff)))
        {
            res_u32 = (uint32) (0xffff);
        }
    }

    return ((uint16) res_u32);
}
# 3100 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_Sub_u32s32_u32_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);

    if (y_value >= 0L)
    {


        if (res_u32 > x_value)
        {
            res_u32 = (0x0uL);
        }
    }

    else
    {


        if (res_u32 < x_value)
        {
            res_u32 = (0xffffffffuL);
        }
    }
    return (res_u32);
}
# 3146 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_u32s32_u8_Inl(uint32 x_value, sint32 y_value)
{
    uint32 res_u32;


    res_u32 = (x_value - (uint32) y_value);

    if (y_value >= 0L)
    {


        if (res_u32 > x_value)
        {
            res_u32 = (uint32) (0x0);
        }
        else
        {

            if (res_u32 > (uint32) (0xff))
            {
                res_u32 = (uint32) (0xff);
            }
        }
    }

    else
    {



        if ((res_u32 < x_value) || (res_u32 > (uint32) (0xff)))
        {
            res_u32 = (uint32) (0xff);
        }
    }

    return ((uint8) res_u32);
}
# 3202 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_Sub_u32u32_s16_Inl(uint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    tmp_u32 = (x_value - y_value);
    res_s32 = (sint32)tmp_u32 ;




    if (((res_s32 < 0L) && (x_value > y_value)) || (res_s32 > (sint32) (0x7fff)))
    {
        res_s32 = (sint32) (0x7fff);
    }




    if (((res_s32 > 0L) && (x_value < y_value)) || (res_s32 < (sint32) (-((0x7fff)) - 1)))
    {
        res_s32 = (sint32) (-((0x7fff)) - 1);
    }

    return ((sint16) res_s32);
}
# 3246 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_Sub_u32u32_s32_Inl(uint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    tmp_u32 = (x_value - y_value);
    res_s32 = (sint32)tmp_u32;




    if ((res_s32 < 0L) && (x_value > y_value))
    {
        res_s32 = (0x7fffffffL);
    }




    if ((res_s32 > 0L) && (x_value < y_value))
    {
        res_s32 = (-((0x7fffffffL)) - 1L);
    }

    return (res_s32);
}
# 3290 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_u32u32_s8_Inl(uint32 x_value, uint32 y_value)
{
    sint32 res_s32;
    uint32 tmp_u32;

    tmp_u32 = (x_value - y_value);
    res_s32 = (sint32)tmp_u32;




    if (((res_s32 < 0L) && (x_value > y_value)) || (res_s32 > (sint32) (0x7f)))
    {
        res_s32 = (sint32) (0x7f);
    }



    if (((res_s32 > 0L) && (x_value < y_value)) || (res_s32 < (sint32) (-((0x7f)) - 1)))
    {
        res_s32 = (sint32) (-((0x7f)) - 1);
    }

    return ((sint8) res_s32);
}
# 3333 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_Sub_u32u32_u16_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value - y_value;


    if (res_u32 > x_value)
    {
        res_u32 = (uint32) (0x0);
    }
    else
    {

        if (res_u32 > (uint32) (0xffff))
        {
            res_u32 = (uint32) (0xffff);
        }
    }

    return ((uint16) res_u32);
}
# 3374 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_Sub_u32u32_u32_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value - y_value;


    if (res_u32 > x_value)
    {
        res_u32 = (0x0uL);
    }

    return (res_u32);
}
# 3407 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_u32u32_u8_Inl(uint32 x_value, uint32 y_value)
{
    uint32 res_u32;


    res_u32 = x_value - y_value;


    if (res_u32 > x_value)
    {
        res_u32 = (uint32) (0x0);
    }
    else
    {

        if (res_u32 > (uint32) (0xff))
        {
            res_u32 = (uint32) (0xff);
        }
    }

    return ((uint8) res_u32);
}
# 3448 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_u8s8_s8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Sub_u16s16_s8(x_value, y_value));
}
# 3467 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_u8s8_u8_Inl(uint8 x_value, sint8 y_value)
{
    return (Mfx_Sub_u16s16_u8(x_value, y_value));
}
# 3486 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint8 Mfx_Prv_Sub_u8u8_s8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Sub_u16u16_s8(x_value, y_value));
}
# 3505 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint8 Mfx_Prv_Sub_u8u8_u8_Inl(uint8 x_value, uint8 y_value)
{
    return (Mfx_Sub_u16u16_u8(x_value, y_value));
}
# 3536 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_SubP2_s16s16_s16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);



        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);



        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;


        shift_s32 = ((sint32)c - (sint32)a);
    }





    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (result_s32 < 0)
        {
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));

            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
        result_s32 = (sint32)tmp_u32;
    }

    if (result_s32 > (0x7fff))
    {
        result_s32 = (0x7fff);
    }
    if (result_s32 < (-((0x7fff)) - 1))
    {
        result_s32 = (-((0x7fff)) - 1);
    }

    return ((sint16) result_s32);
}
# 3635 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_SubP2_s16s16_u16_Inl(sint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);



        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;

        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);



        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;

        shift_s32 = ((sint32)c - (sint32)a);
    }

    if (result_s32 < 0)
    {
        result_s32 = (sint32) (0x0);
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }

        if (result_s32 > (sint32) (0xffff))
        {
            result_s32 = (sint32) (0xffff);
        }
    }

    return ((uint16) result_s32);
}
# 3722 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_SubP2_s16u16_s16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {
        shift_s32 = (sint32)b - (sint32)a;



        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;

        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = (sint32)a - (sint32)b;



        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;

        shift_s32 = ((sint32)c - (sint32)a);
    }




    if (result_s32 < 0)
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = (((uint32) (-result_s32)) << (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }



        if ((result_s32 < (-((0x7fff)) - 1)) || (result_s32 > 0))
        {
            result_s32 = (-((0x7fff)) - 1);
        }
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        if (result_s32 > (0x7fff))
        {
            result_s32 = (0x7fff);
        }
    }

    return ((sint16) result_s32);
}
# 3828 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_SubP2_s16u16_u16_Inl(sint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);



        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;

        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);



        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;

        shift_s32 = ((sint32)c - (sint32)a);
    }

    if (result_s32 < 0)
    {
        result_s32 = (sint32) (0x0);
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }

        if (result_s32 > (sint32) (0xffff))
        {
            result_s32 = (sint32) (0xffff);
        }
    }

    return ((uint16) result_s32);
}
# 3914 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_SubP2_s32s32_s32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = (0 != 0);

  Mfx_sint64u var_s64;

  Mfx_sint64u result_s64;
    uint32 tmp_u32;






    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }
# 3952 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32 )) + (var_s64.s64);




    if (result_s64.s64s.h < 0)
    {
        result_s64.s64 = -(result_s64.s64);
        isResultNegative_b = (1 != 0);
    }

    if (shift2_s32 < 0)
    {
        shift2_s32 = -shift2_s32;

        tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
        var_s64.s64s.h = (sint32)tmp_u32;
        var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
        result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
        tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
        result_s64.s64s.h = (sint32)tmp_u32;
    }
    else
    {
        var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));



        if (result_s64.s64s.h == 0)
        {

            tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.l = var_s64.s64s.l;
        }
    }


    if ((result_s64.s64s.h > 0) || (result_s64.s64s.l > (uint32) (0x7fffffffL)))
    {
        if (isResultNegative_b == (1 != 0))
        {
            result_s64.s64s.l = (uint32) (0x80000000UL);
        }
        else
        {
            result_s64.s64s.l = (uint32) (0x7fffffffL);
        }
    }
    if (isResultNegative_b == (1 != 0))
    {
        result_s64.s64 = -(result_s64.s64);
    }

    return ((sint32) result_s64.s64s.l);
}
# 4036 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_SubP2_s32s32_u32_Inl(sint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;


  Mfx_sint64u var_s64;


  Mfx_sint64u result_s64;
    uint32 tmp_u32;







    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }







    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

    if (result_s64.s64s.h < 0)
    {
        result_s64.s64s.l = (uint32) (0x0uL);
    }
    else
    {

        if (shift2_s32 < 0)
        {
            shift2_s32 = -shift2_s32;

            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
            var_s64.s64s.h = (sint32)tmp_u32;
            var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
            result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));



            if (result_s64.s64s.h == 0)
            {

                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = var_s64.s64s.l;
            }
        }

        if (result_s64.s64s.h > 0)
        {
            result_s64.s64s.l = (uint32) (0xffffffffuL);
        }
    }

    return (result_s64.s64s.l);
}
# 4145 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_SubP2_s32u32_s32_Inl(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = (0 != 0);


  Mfx_sint64u var_s64;


  Mfx_sint64u result_s64;
    uint32 tmp_u32;







    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }



    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);




    if (result_s64.s64s.h < 0)
    {
        result_s64.s64 = -(result_s64.s64);
        isResultNegative_b = (1 != 0);
    }

    if (shift2_s32 < 0)
    {
        shift2_s32 = -shift2_s32;

        tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
        var_s64.s64s.h = (sint32)tmp_u32;
        var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
        result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
        tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
        result_s64.s64s.h = (sint32)tmp_u32;
    }
    else
    {
        var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));



        if (result_s64.s64s.h == 0)
        {

            tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.l = var_s64.s64s.l;
        }
    }

    if ((result_s64.s64s.h != 0) || (result_s64.s64s.l > (uint32) (0x7fffffffL)))
    {
        if (isResultNegative_b == (1 != 0))
        {
            result_s64.s64s.l = (uint32) (0x80000000UL);
        }
        else
        {
            result_s64.s64s.l = (uint32) (0x7fffffffL);
        }
    }

    if (isResultNegative_b == (1 != 0))
    {
        result_s64.s64 = -(result_s64.s64);
    }

    return ((sint32) result_s64.s64s.l);
}
# 4265 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_SubP2_s32u32_u32_Inl(sint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;


  Mfx_sint64u var_s64;


  Mfx_sint64u result_s64;
    uint32 tmp_u32;






    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }



    tmp_u32 = (1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

    if (result_s64.s64s.h < 0)
    {
        result_s64.s64s.l = (uint32) (0x0uL);
    }
    else
    {
        if (shift2_s32 < 0)
        {
            shift2_s32 = -shift2_s32;
            var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));

            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
            var_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));



            if (result_s64.s64s.h == 0)
            {

                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = var_s64.s64s.l;
            }
        }

        if (result_s64.s64s.h > 0)
        {
            result_s64.s64s.l = (uint32) (0xffffffffuL);
        }
    }

    return (result_s64.s64s.l);
}
# 4369 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_SubP2_u16s16_s16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);



        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);



        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;


        shift_s32 = ((sint32)c - (sint32)a);
    }






    if ((result_s32 < 0) && (y > 0))
    {



        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = (((uint32) (-result_s32)) << (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }

        if (result_s32 < (sint32) (-((0x7fff)) - 1))
        {
            result_s32 = (sint32) (-((0x7fff)) - 1);
        }
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }




        if ((uint32) result_s32 > (uint32) (0x7fff))
        {
            result_s32 = (sint32) (0x7fff);
        }
    }

    return ((sint16) result_s32);
}
# 4484 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_SubP2_u16s16_u16_Inl(uint16 x, sint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {
        shift_s32 = (sint32)b - (sint32)a;



        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);



        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;


        shift_s32 = ((sint32)c - (sint32)a);
    }






    if ((result_s32 < 0) && (y > 0))
    {
        result_s32 = (sint32) (0x0);
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }





        if ((uint32) result_s32 > (uint32) (0xffff))
        {
            result_s32 = (sint32) (0xffff);
        }
    }

    return ((uint16) result_s32);
}
# 4582 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint16 Mfx_Prv_SubP2_u16u16_s16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;




    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);



        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);



        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;


        shift_s32 = ((sint32)c - (sint32)a);
    }




    if(shift_s32 < 0)
    {
        shift_s32 = -shift_s32;
        if (result_s32 < 0)
        {

            tmp_u32 = (((uint32) (-result_s32)) >> (uint32)(shift_s32));
            result_s32 = (-(sint32)tmp_u32);
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
    }
    else
    {
        tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
        result_s32 = (sint32)tmp_u32;
    }

    if (result_s32 > (0x7fff))
    {
        result_s32 = (0x7fff);
    }
    if (result_s32 < (-((0x7fff)) - 1))
    {
        result_s32 = (-((0x7fff)) - 1);
    }

    return ((sint16) result_s32);
}
# 4680 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint16 Mfx_Prv_SubP2_u16u16_u16_Inl(uint16 x, uint16 y, sint16 a, sint16 b, sint16 c)
{
    sint32 result_s32;
    sint32 shift_s32;
    uint32 tmp_u32;



    if (a < b)
    {
        shift_s32 = ((sint32)b - (sint32)a);



        tmp_u32 = ((uint32) x << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = result_s32 - (sint32) y;


        shift_s32 = ((sint32)c - (sint32)b);
    }
    else
    {
        shift_s32 = ((sint32)a - (sint32)b);



        tmp_u32 = ((uint32) y << (uint32)shift_s32);
        result_s32 = (sint32)tmp_u32;
        result_s32 = (sint32) x - result_s32;


        shift_s32 = ((sint32)c - (sint32)a);
    }

    if (result_s32 < 0)
    {
        result_s32 = (sint32) (0x0);
    }
    else
    {
        if(shift_s32 < 0)
        {
            shift_s32 = -shift_s32;
            tmp_u32 = ((uint32) result_s32 >> (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }
        else
        {
            tmp_u32 = ((uint32) result_s32 << (uint32)(shift_s32));
            result_s32 = (sint32)tmp_u32;
        }

        if (result_s32 > (sint32) (0xffff))
        {
            result_s32 = (sint32) (0xffff);
        }
    }

    return ((uint16) result_s32);
}
# 4767 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_SubP2_u32s32_s32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = (0 != 0);


  Mfx_sint64u var_s64;


  Mfx_sint64u result_s64;
    uint32 tmp_u32;






    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }




    if ((x == (0xffffffffuL)) && (y == (-((0x7fffffffL)) - 1L)) && (shift1_s32 == 31) && (a < b))
    {
        result_s64.s64s.l = (uint32) (0x7fffffffL);
    }
    else
    {







        tmp_u32 = ( 1uL << (uint32)shift1_s32);
        result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);




        if (result_s64.s64s.h < 0)
        {
            result_s64.s64 = -(result_s64.s64);
            isResultNegative_b = (1 != 0);
        }
        if (shift2_s32 < 0)
        {
            shift2_s32 = -shift2_s32;
            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));

            var_s64.s64s.h = (sint32)tmp_u32;
            var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
            result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));


            if (result_s64.s64s.h == 0)
            {

                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32 ;
                result_s64.s64s.l = var_s64.s64s.l;
            }
        }

        if ((result_s64.s64s.h != 0) || (result_s64.s64s.l > (uint32) (0x7fffffffL)))
        {
            if (isResultNegative_b == (1 != 0))
            {
                result_s64.s64s.l = (uint32) (0x80000000UL);
            }
            else
            {
                result_s64.s64s.l = (uint32) (0x7fffffffL);
            }
        }
        if (isResultNegative_b == (1 != 0))
        {
            result_s64.s64 = -(result_s64.s64);
        }
    }

    return ((sint32) result_s64.s64s.l);
}
# 4897 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_SubP2_u32s32_u32_Inl(uint32 x, sint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;


  Mfx_sint64u var_s64;


  Mfx_sint64u result_s64;
    uint32 tmp_u32;







    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }




    if ((x == (0xffffffffuL)) && (y == (-((0x7fffffffL)) - 1L)) && (shift1_s32 == 31) && (a < b))
    {
        result_s64.s64s.l = (uint32) (0xffffffffuL);
    }
    else
    {







        tmp_u32 = ( 1uL << (uint32)shift1_s32);
        result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

        if (result_s64.s64s.h < 0)
        {
            result_s64.s64s.l = (uint32) (0x0uL);
        }
        else
        {

            if (shift2_s32 < 0)
            {

                shift2_s32 = -shift2_s32;
                tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
                var_s64.s64s.h = (sint32)tmp_u32;
                var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
                result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
                tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
            }
            else
            {
                var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));



                if (result_s64.s64s.h == 0)
                {


                    tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                    result_s64.s64s.h = (sint32)tmp_u32;
                    result_s64.s64s.l = var_s64.s64s.l;

                }
            }

            if (result_s64.s64s.h != 0)
            {
                result_s64.s64s.l = (uint32) (0xffffffffuL);
            }
        }
    }

    return (result_s64.s64s.l);
}
# 5020 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ sint32 Mfx_Prv_SubP2_u32u32_s32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;
    boolean isResultNegative_b = (0 != 0);

  Mfx_sint64u var_s64;

  Mfx_sint64u result_s64;
    uint32 tmp_u32;







    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }
# 5059 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
    tmp_u32 = ( 1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);




    if (result_s64.s64s.h < 0)
    {
        result_s64.s64 = -(result_s64.s64);
        isResultNegative_b = (1 != 0);
    }

    if (shift2_s32 < 0)
    {
        shift2_s32 = -shift2_s32;

        tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
        var_s64.s64s.h = (sint32)tmp_u32;
        var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
        result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
        tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
        result_s64.s64s.h = (sint32)tmp_u32;
    }
    else
    {
        var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));



        if (result_s64.s64s.h == 0)
        {

            tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
            result_s64.s64s.l = var_s64.s64s.l;
        }
    }

    if ((result_s64.s64s.h > 0) || (result_s64.s64s.l > (uint32) (0x7fffffffL)))
    {
        if (isResultNegative_b == (1 != 0))
        {
            result_s64.s64s.l = (uint32) (0x80000000UL);
        }
        else
        {
            result_s64.s64s.l = (uint32) (0x7fffffffL);
        }
    }
    if (isResultNegative_b == (1 != 0))
    {
        result_s64.s64 = -(result_s64.s64);
    }

    return ((sint32) result_s64.s64s.l);
}
# 5142 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
static __inline__ uint32 Mfx_Prv_SubP2_u32u32_u32_Inl(uint32 x, uint32 y, sint32 a, sint32 b, sint32 c)
{
    sint32 shift1_s32;
    sint32 shift2_s32;

  Mfx_sint64u var_s64;

  Mfx_sint64u result_s64;
    uint32 tmp_u32;







    if (a < b)
    {
        shift1_s32 = (sint32) (b - a);
        shift2_s32 = (sint32) (c - b);
        result_s64.s64 = (Mfx_sint64) x;
        var_s64.s64 = (-(Mfx_sint64) y);
    }
    else
    {
        shift1_s32 = (sint32) (a - b);
        shift2_s32 = (sint32) (c - a);
        result_s64.s64 = (-(Mfx_sint64) y);
        var_s64.s64 = (Mfx_sint64) x;
    }
# 5180 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Sub_Inl.h"
    tmp_u32 = ( 1uL << (uint32)shift1_s32);
    result_s64.s64 = (result_s64.s64 * ((Mfx_sint64)tmp_u32)) + (var_s64.s64);

    if (result_s64.s64s.h < 0)
    {
        result_s64.s64s.l = (uint32) (0x0uL);
    }
    else
    {
        if (shift2_s32 < 0)
        {
            shift2_s32 = -shift2_s32;

            tmp_u32 = ((uint32) result_s64.s64s.h << (32uL - (uint32)shift2_s32));
            var_s64.s64s.h = (sint32)tmp_u32;
            var_s64.s64s.l = (result_s64.s64s.l >> (uint32)(shift2_s32));
            result_s64.s64s.l = var_s64.s64s.l | (uint32) var_s64.s64s.h;
            tmp_u32 = ((uint32) result_s64.s64s.h >> (uint32)(shift2_s32));
            result_s64.s64s.h = (sint32)tmp_u32;
        }
        else
        {
            var_s64.s64s.l = (result_s64.s64s.l << (uint32)(shift2_s32));



            if (result_s64.s64s.h == 0)
            {

                tmp_u32 = (result_s64.s64s.l >> (32uL - (uint32)shift2_s32));
                result_s64.s64s.h = (sint32)tmp_u32;
                result_s64.s64s.l = var_s64.s64s.l;
            }
        }

        if (result_s64.s64s.h > 0)
        {
            result_s64.s64s.l = (uint32) (0xffffffffuL);
        }
    }

    return (result_s64.s64s.l);
}
# 113 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 160 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h"
# 1 ".\\output\\inc/Mfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 1
# 18 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 19 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 2
# 2 ".\\output\\inc/Mfx_MemMap.h" 2
# 161 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
    extern void Mfx_GetVersionInfo(Std_VersionInfoType* versionInfo);

# 1 ".\\output\\inc/Mfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 1
# 25 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 26 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 2
# 2 ".\\output\\inc/Mfx_MemMap.h" 2
# 164 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx.h" 2
# 2 ".\\output\\inc/Mfx.h" 2
# 13 "bsw\\Mfx\\src\\Mfx_AbsDiff_u16u16_s16.c" 2
# 32 "bsw\\Mfx\\src\\Mfx_AbsDiff_u16u16_s16.c"
# 1 ".\\output\\inc/Mfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 1
# 18 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 19 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 2
# 2 ".\\output\\inc/Mfx_MemMap.h" 2
# 33 "bsw\\Mfx\\src\\Mfx_AbsDiff_u16u16_s16.c" 2

    sint16 Mfx_AbsDiff_u16u16_s16(uint16 x_value, uint16 y_value)
    {
        return (Mfx_Prv_AbsDiff_u16u16_s16_Inl(x_value, y_value));
    }
# 48 "bsw\\Mfx\\src\\Mfx_AbsDiff_u16u16_s16.c"
# 1 ".\\output\\inc/Mfx_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 1
# 25 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h"
# 1 ".\\output\\inc/Bsw_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/Bsw_MemMap.h" 2
# 26 ".\\output\\inc/..\\..\\bsw\\Mfx\\integration\\Mfx_MemMap.h" 2
# 2 ".\\output\\inc/Mfx_MemMap.h" 2
# 49 "bsw\\Mfx\\src\\Mfx_AbsDiff_u16u16_s16.c" 2
