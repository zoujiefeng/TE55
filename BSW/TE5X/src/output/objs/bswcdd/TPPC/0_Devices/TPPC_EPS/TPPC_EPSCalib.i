# 1 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c"







# 1 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h" 1
# 11 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h"
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
# 12 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h" 2
# 21 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h"
typedef struct TPPC_tBoolCalibSet{
   boolean bHallInvalidFltTestOnC;
   boolean bHallUndefFltTestOnC;
   boolean bP5vAD2SOverVolFltTestOnC;
   boolean bP5vAD2SUnderVolFltTestOnC;
   boolean bOilPressShortGndFltTestOnC;
   boolean bOilPressShortVccFltTestOnC;
}TPPC_tBoolCalibSet;

typedef struct TPPC_tUint16CalibSet{
   uint16 u16TgtDutyRisingTimC;
   uint16 u16MidPotRcvTimC;
   uint16 u16MidPotFltConfirmC;
   uint16 u16MidPotFltIncStepC;
}TPPC_tUint16CalibSet;

typedef struct TPPC_tFloatCalibSet{
   float32 f32LVThdHighC;
   float32 f32LVThdLowC;
   float32 f32P5vAD2SOverVolC;
   float32 f32P5vAD2SUnderVolC;
   float32 f32MidPotShrtGndDutyC;
   float32 f32MidPotShrtVccDutyC;
   float32 f32MidPotTgtHighC;
   float32 f32MidPotTgtLowC;
   float32 f32TgtDutyDeltMaxC;
   float32 f32MidPotMaxMonitorDutyC;
   float32 f32MidPotMinMonitorDutyC;
   float32 f32MotorSpeedC;
}TPPC_tFloatCalibSet;





# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 825 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 708 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/CddMemMap.h" 2
# 826 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 57 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h" 2

# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 830 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 717 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 831 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 59 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h" 2


# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 803 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 744 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/CddMemMap.h" 2
# 804 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 62 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h" 2
extern const uint8 TPPC_ku8AscRecoverCntMaxC;

# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 808 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 753 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 809 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 65 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h" 2


# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 836 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 689 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/CddMemMap.h" 2
# 837 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 68 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h" 2

# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 841 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 698 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 842 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 70 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.h" 2
# 9 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c" 2
# 19 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c"
# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 825 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 708 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/CddMemMap.h" 2
# 826 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 20 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c" 2

# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 830 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 717 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 831 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 22 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c" 2



# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 803 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 744 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/CddMemMap.h" 2
# 804 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 26 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c" 2
const uint8 TPPC_ku8AscRecoverCntMaxC = 10;

# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 808 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 753 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 809 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 29 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c" 2


# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 836 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 689 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/CddMemMap.h" 2
# 837 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 32 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c" 2

# 1 ".\\output\\inc/TPPC_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 841 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 698 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 842 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 2 ".\\output\\inc/TPPC_MemMap.h" 2
# 34 "bswcdd\\TPPC\\0_Devices\\TPPC_EPS\\TPPC_EPSCalib.c" 2
