# 1 "bswcdd\\ESM\\ESM\\ESM_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\ESM\\ESM\\ESM_DEF.c"
# 31 "bswcdd\\ESM\\ESM\\ESM_DEF.c"
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
# 32 "bswcdd\\ESM\\ESM\\ESM_DEF.c" 2
# 1 "bswcdd\\ESM\\ESM\\ESM.h" 1
# 37 "bswcdd\\ESM\\ESM\\ESM.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\ESM\\ESM\\ESM.h" 2
# 58 "bswcdd\\ESM\\ESM\\ESM.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 59 "bswcdd\\ESM\\ESM\\ESM.h" 2
extern uint8 ESM_EcuState;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 62 "bswcdd\\ESM\\ESM\\ESM.h" 2
# 33 "bswcdd\\ESM\\ESM\\ESM_DEF.c" 2
# 1 "bswcdd\\ESM\\ESM\\ESM_L.h" 1
# 37 "bswcdd\\ESM\\ESM\\ESM_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\ESM\\ESM\\ESM_L.h" 2
# 53 "bswcdd\\ESM\\ESM\\ESM_L.h"
# 1 "bswcdd\\ESM\\ESM\\ESM_MemMap.h" 1
# 54 "bswcdd\\ESM\\ESM\\ESM_L.h" 2
extern const uint16 ESM_u16PowerLatchTempoC;
extern const uint8 ESM_u8RestartDelayCntC;

# 1 "bswcdd\\ESM\\ESM\\ESM_MemMap.h" 1
# 58 "bswcdd\\ESM\\ESM\\ESM_L.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 65 "bswcdd\\ESM\\ESM\\ESM_L.h" 2
extern uint16 ESM_u16PowerLatchTempo;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 68 "bswcdd\\ESM\\ESM\\ESM_L.h" 2
# 34 "bswcdd\\ESM\\ESM\\ESM_DEF.c" 2






# 1 "bswcdd\\ESM\\ESM\\ESM_MemMap.h" 1
# 41 "bswcdd\\ESM\\ESM\\ESM_DEF.c" 2
const uint16 ESM_u16PowerLatchTempoC = 2000u;
const uint8 ESM_u8RestartDelayCntC = 50u;

# 1 "bswcdd\\ESM\\ESM\\ESM_MemMap.h" 1
# 45 "bswcdd\\ESM\\ESM\\ESM_DEF.c" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 52 "bswcdd\\ESM\\ESM\\ESM_DEF.c" 2
uint8 ESM_EcuState;
uint16 ESM_u16PowerLatchTempo;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 56 "bswcdd\\ESM\\ESM\\ESM_DEF.c" 2
