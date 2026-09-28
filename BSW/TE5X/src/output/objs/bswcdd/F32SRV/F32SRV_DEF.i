# 1 "bswcdd\\F32SRV\\F32SRV_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\F32SRV\\F32SRV_DEF.c"
# 31 "bswcdd\\F32SRV\\F32SRV_DEF.c"
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
# 32 "bswcdd\\F32SRV\\F32SRV_DEF.c" 2
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
# 33 "bswcdd\\F32SRV\\F32SRV_DEF.c" 2
# 1 "bswcdd\\F32SRV\\F32SRV_L.h" 1
# 37 "bswcdd\\F32SRV\\F32SRV_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\F32SRV\\F32SRV_L.h" 2
# 34 "bswcdd\\F32SRV\\F32SRV_DEF.c" 2
