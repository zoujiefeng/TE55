# 1 "bswcdd\\RES\\RES_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\RES\\RES_DEF.c"
# 31 "bswcdd\\RES\\RES_DEF.c"
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
# 32 "bswcdd\\RES\\RES_DEF.c" 2
# 1 "bswcdd\\RES\\RES.h" 1
# 37 "bswcdd\\RES\\RES.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\RES\\RES.h" 2
# 53 "bswcdd\\RES\\RES.h"
# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 119 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 120 "bswcdd\\RES\\RES_MemMap.h" 2
# 54 "bswcdd\\RES\\RES.h" 2
extern const boolean RES_bGenerateSyncPosC;

# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 124 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 125 "bswcdd\\RES\\RES_MemMap.h" 2
# 57 "bswcdd\\RES\\RES.h" 2


# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 108 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 109 "bswcdd\\RES\\RES_MemMap.h" 2
# 60 "bswcdd\\RES\\RES.h" 2
extern const uint8 RES_u8ExcitDutyPercentC;
extern const uint8 RES_u8SyncDutyPercentC;
extern const uint8 RES_u8SyncDutyPercent2C;

# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 113 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 114 "bswcdd\\RES\\RES_MemMap.h" 2
# 65 "bswcdd\\RES\\RES.h" 2


# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 97 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 98 "bswcdd\\RES\\RES_MemMap.h" 2
# 68 "bswcdd\\RES\\RES.h" 2
extern const uint16 RES_u16ExcitDelayC;
extern const uint16 RES_u16SyncDelayC;
extern const uint16 RES_u16SyncDelay2C;
extern const uint16 RES_u16VSICkreqPeriodDefC;

# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 102 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 103 "bswcdd\\RES\\RES_MemMap.h" 2
# 74 "bswcdd\\RES\\RES.h" 2
# 33 "bswcdd\\RES\\RES_DEF.c" 2
# 1 "bswcdd\\RES\\RES_L.h" 1
# 37 "bswcdd\\RES\\RES_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\RES\\RES_L.h" 2
# 34 "bswcdd\\RES\\RES_DEF.c" 2






# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 119 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 120 "bswcdd\\RES\\RES_MemMap.h" 2
# 41 "bswcdd\\RES\\RES_DEF.c" 2
const boolean RES_bGenerateSyncPosC = 1;

# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 124 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 125 "bswcdd\\RES\\RES_MemMap.h" 2
# 44 "bswcdd\\RES\\RES_DEF.c" 2


# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 108 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 109 "bswcdd\\RES\\RES_MemMap.h" 2
# 47 "bswcdd\\RES\\RES_DEF.c" 2
const uint8 RES_u8ExcitDutyPercentC = 50;
const uint8 RES_u8SyncDutyPercentC = 5;
const uint8 RES_u8SyncDutyPercent2C = 5;


# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 113 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 114 "bswcdd\\RES\\RES_MemMap.h" 2
# 53 "bswcdd\\RES\\RES_DEF.c" 2


# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 97 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 98 "bswcdd\\RES\\RES_MemMap.h" 2
# 56 "bswcdd\\RES\\RES_DEF.c" 2
const uint16 RES_u16ExcitDelayC = 150;
const uint16 RES_u16SyncDelayC = 450;
const uint16 RES_u16SyncDelay2C = 960;
const uint16 RES_u16VSICkreqPeriodDefC = 1000;

# 1 "bswcdd\\RES\\RES_MemMap.h" 1
# 102 "bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 103 "bswcdd\\RES\\RES_MemMap.h" 2
# 62 "bswcdd\\RES\\RES_DEF.c" 2
