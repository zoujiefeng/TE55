# 1 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c"
# 31 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c"
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
# 32 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c" 2
# 1 "bswcdd\\CCP\\CAL\\CALUSR.h" 1
# 37 "bswcdd\\CCP\\CAL\\CALUSR.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
# 53 "bswcdd\\CCP\\CAL\\CALUSR.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 54 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
extern const uint32 CalUsr_ku32CalibUpdEnaMskA;
extern const uint32 CalUsr_ku32CalibUpdEnaMskB;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 58 "bswcdd\\CCP\\CAL\\CALUSR.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 65 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
extern boolean CalUsr_bIsCalibUpdEna;
extern uint32 CalUsr_u32PODataCRC;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 "bswcdd\\CCP\\CAL\\CALUSR.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 76 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
boolean CALUsr_bIsCalDownldEnabled(void);
boolean CalUsr_bVerifyCalData(void);
void CalUsr_vidInit(void);
void CalUsr_vidSchHandler(void);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 82 "bswcdd\\CCP\\CAL\\CALUSR.h" 2
# 33 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c" 2
# 1 "bswcdd\\CCP\\CAL\\CALUSR_L.h" 1
# 37 "bswcdd\\CCP\\CAL\\CALUSR_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\CCP\\CAL\\CALUSR_L.h" 2
# 58 "bswcdd\\CCP\\CAL\\CALUSR_L.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 59 "bswcdd\\CCP\\CAL\\CALUSR_L.h" 2
extern uint32 CalUsr_u32ChkDataCrc;
extern uint32 CalUsr_u32POCalibDnEnaMskA;
extern uint32 CalUsr_u32POCalibDnEnaMskB;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 64 "bswcdd\\CCP\\CAL\\CALUSR_L.h" 2
# 34 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c" 2






# 1 "bswcdd\\CCP\\CAL\\CALIB_MemMap.h" 1
# 58 "bswcdd\\CCP\\CAL\\CALIB_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 59 "bswcdd\\CCP\\CAL\\CALIB_MemMap.h" 2
# 41 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c" 2
const uint32 CalUsr_ku32CalibUpdEnaMskA = 0xAAAAAAAA;
const uint32 CalUsr_ku32CalibUpdEnaMskB = 0xBBBBBBBB;

# 1 "bswcdd\\CCP\\CAL\\CALIB_MemMap.h" 1
# 63 "bswcdd\\CCP\\CAL\\CALIB_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 64 "bswcdd\\CCP\\CAL\\CALIB_MemMap.h" 2
# 45 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 52 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c" 2
boolean CalUsr_bIsCalibUpdEna;
uint32 CalUsr_u32ChkDataCrc;
uint32 CalUsr_u32POCalibDnEnaMskA;
uint32 CalUsr_u32POCalibDnEnaMskB;
uint32 CalUsr_u32PODataCRC;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 59 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c" 2
