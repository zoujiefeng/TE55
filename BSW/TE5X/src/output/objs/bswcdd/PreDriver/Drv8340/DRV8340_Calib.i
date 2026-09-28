# 1 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.c"




# 1 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.h" 1







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
# 9 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.h" 2
# 26 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.h"
# 1 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h" 1
# 810 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 744 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/CddMemMap.h" 2
# 811 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h" 2
# 27 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.h" 2
extern const uint16 DRV8340_ku16EnaResetTimeC;
extern const uint16 DRV8340_ku16ErrPinChkTimC;
extern const uint16 DRV8340_ku16FaultTimerWindowC;
extern const uint8 DRV8340_u8MaxTestTimesInRunPhaseC;
extern const uint8 DRV8340_u8MaxTestTimesInInitPhaseC;

# 1 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h" 1
# 815 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 753 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 816 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h" 2
# 34 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.h" 2
# 6 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.c" 2
# 31 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.c"
# 1 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h" 1
# 810 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 744 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/CddMemMap.h" 2
# 811 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h" 2
# 32 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.c" 2
const uint16 DRV8340_ku16EnaResetTimeC = 100;
const uint16 DRV8340_ku16ErrPinChkTimC = 10;
const uint16 DRV8340_ku16FaultTimerWindowC = 500;
const uint8 DRV8340_u8MaxTestTimesInRunPhaseC = 5;
const uint8 DRV8340_u8MaxTestTimesInInitPhaseC = 5;

# 1 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h" 1
# 815 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 753 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 816 "bswcdd\\PreDriver\\Drv8340\\DRV8340_MemMap.h" 2
# 39 "bswcdd\\PreDriver\\Drv8340\\DRV8340_Calib.c" 2
