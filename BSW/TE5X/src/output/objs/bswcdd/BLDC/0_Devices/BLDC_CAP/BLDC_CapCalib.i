# 1 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c"







# 1 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 1
# 11 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h"
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
# 12 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
# 21 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h"
# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 22 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
extern const boolean BLDC_bHallInvalidFltTestOnC;
extern const boolean BLDC_bHallUndefFltTestOnC;
extern const boolean BLDC_bP5vAD2SOverVolFltTestOnC;
extern const boolean BLDC_bP5vAD2SUnderVolFltTestOnC;
extern const boolean BLDC_bOilPressShortGndFltTestOnC;
extern const boolean BLDC_bOilPressShortVccFltTestOnC;

# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 115 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 116 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 30 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2


# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 33 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
extern const uint16 BLDC_ku16TgtDutyRisingTimC;
extern const uint16 BLDC_ku16MidPotRcvTimC;
extern const uint16 BLDC_ku16MidPotFltConfirmC;
extern const uint16 BLDC_ku16MidPotFltIncStepC;

# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 93 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 94 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 39 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2


# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 42 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
extern const float32 BLDC_kf32LVThdHighC;
extern const float32 BLDC_kf32LVThdLowC;
extern const float32 BLDC_kf32P5vAD2SOverVolC;
extern const float32 BLDC_kf32P5vAD2SUnderVolC;
extern const float32 BLDC_kf32MidPotShrtGndDutyC;
extern const float32 BLDC_kf32MidPotShrtVccDutyC;
extern const float32 BLDC_kf32MidPotTgtHighC;
extern const float32 BLDC_kf32MidPotTgtLowC;
extern const float32 BLDC_kf32TgtDutyDeltMaxC;
extern const float32 BLDC_kf32MidPotMaxMonitorDutyC;
extern const float32 BLDC_kf32MidPotMinMonitorDutyC;
extern const float32 BLDC_kf32MotorSpeedC;

# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 56 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.h" 2
# 9 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c" 2
# 19 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c"
# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 20 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c" 2
const boolean BLDC_bHallInvalidFltTestOnC = (0 != 0);
const boolean BLDC_bHallUndefFltTestOnC = (0 != 0);
const boolean BLDC_bP5vAD2SOverVolFltTestOnC = (0 != 0);
const boolean BLDC_bP5vAD2SUnderVolFltTestOnC = (0 != 0);
const boolean BLDC_bOilPressShortGndFltTestOnC = (0 != 0);
const boolean BLDC_bOilPressShortVccFltTestOnC = (0 != 0);

# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 115 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 116 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 28 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c" 2



# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 32 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c" 2
const uint16 BLDC_ku16TgtDutyRisingTimC = 20000;
const uint16 BLDC_ku16MidPotRcvTimC = 20;
const uint16 BLDC_ku16MidPotFltConfirmC = 6;
const uint16 BLDC_ku16MidPotFltIncStepC = 2;

# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 93 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 94 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 38 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c" 2


# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 121 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 122 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 41 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c" 2
const float32 BLDC_kf32LVThdHighC = 24.0f;
const float32 BLDC_kf32LVThdLowC = 6.5f;
const float32 BLDC_kf32P5vAD2SOverVolC = 6.0f;
const float32 BLDC_kf32P5vAD2SUnderVolC = 4.0f;
const float32 BLDC_kf32MidPotShrtGndDutyC = 0.02f;
const float32 BLDC_kf32MidPotShrtVccDutyC = 0.95f;
const float32 BLDC_kf32MidPotTgtHighC = 0.6f;
const float32 BLDC_kf32MidPotTgtLowC = 0.2f;
const float32 BLDC_kf32TgtDutyDeltMaxC = 0.2f;
const float32 BLDC_kf32MidPotMaxMonitorDutyC = 0.95f;
const float32 BLDC_kf32MidPotMinMonitorDutyC = 0.02f;
const float32 BLDC_kf32MotorSpeedC = 3500.0f;

# 1 ".\\output\\inc/BLDC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 1
# 126 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 127 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_MemMap.h" 2
# 2 ".\\output\\inc/BLDC_MemMap.h" 2
# 55 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapCalib.c" 2
