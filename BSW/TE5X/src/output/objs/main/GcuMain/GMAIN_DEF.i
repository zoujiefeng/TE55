# 1 "main\\GcuMain\\GMAIN_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "main\\GcuMain\\GMAIN_DEF.c"
# 31 "main\\GcuMain\\GMAIN_DEF.c"
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
# 32 "main\\GcuMain\\GMAIN_DEF.c" 2
# 1 "main\\GcuMain\\GMAIN_tsk.h" 1
# 37 "main\\GcuMain\\GMAIN_tsk.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "main\\GcuMain\\GMAIN_tsk.h" 2
# 55 "main\\GcuMain\\GMAIN_tsk.h"
# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 56 "main\\GcuMain\\GMAIN_tsk.h" 2

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 58 "main\\GcuMain\\GMAIN_tsk.h" 2






# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 65 "main\\GcuMain\\GMAIN_tsk.h" 2
extern boolean GMAIN_bAscFlag;
extern boolean GMAIN_bESMStarted;
extern boolean GMAIN_bVSIStarted;
extern boolean GMAIN_ESMGo2StartupIEvent;
extern uint16 GMAIN_u16Core0Cnt5;
extern uint16 GMAIN_u16Core1Cnt1;
extern uint16 GMAIN_u16Core0Cnt100;
extern uint16 GMAIN_u16Core2Cnt10;
extern uint16 GMAIN_u16PWMPeriodVal;
extern volatile sint32 GMAIN_as32OCTrimNvm[( 5 )];
extern uint32 GMAIN_startTime;
extern uint32 GMAIN_EndTime;
extern uint32 GMAIN_TotalTime;
extern uint32 GCore1_PositionStartTime;
extern uint32 GCore1_PositionStopTime;
extern uint32 GCore1_PositionTotalTime;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 83 "main\\GcuMain\\GMAIN_tsk.h" 2





void GMAIN_TaskInit(void);
boolean GMAIN_bInitOcTrimData(void);
boolean GMAIN_bChkOcCondition(void);
boolean GMAIN_bSetSaforiAutophsAngC(const uint16);
boolean GMAIN_bSetSimensAutophsAngC(const uint16);
float GMAIN_f32GetAutophsingAngle(void);
void GMAIN_vidPositionTreatment(void);
void GMAIN_vidVSITreatment(void);
extern void GMAIN_vidOcDataRestore(void);
boolean GMAIN_vidGetProgCondition(void);
# 33 "main\\GcuMain\\GMAIN_DEF.c" 2
# 1 "main\\GcuMain\\GMAIN_L.h" 1
# 37 "main\\GcuMain\\GMAIN_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "main\\GcuMain\\GMAIN_L.h" 2
# 53 "main\\GcuMain\\GMAIN_L.h"
# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 105 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 106 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 54 "main\\GcuMain\\GMAIN_L.h" 2
extern const boolean GMAIN_HARDBenchOnC;
extern const boolean GMAIN_VSIBenchOnWriteDataC;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 58 "main\\GcuMain\\GMAIN_L.h" 2


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 72 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 182 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_32" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 73 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 61 "main\\GcuMain\\GMAIN_L.h" 2
extern const float32 GMAIN_f32UvwOvCurrThdC;
extern const uint32 GMAIN_u32VSICntCkreqESMStartedC;
extern const uint32 GMAIN_u32VSICntCkreqVSIStartedC;
extern const sint32 GMAIN_s32CurHardDelayC;
extern const sint32 GMAIN_s32ResHardDelayC;
extern const sint32 GMAIN_s32SampleDelayC;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 69 "main\\GcuMain\\GMAIN_L.h" 2


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 72 "main\\GcuMain\\GMAIN_L.h" 2
extern const uint8 GMAIN_u8IgbtFltConfirmCntC;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 99 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 100 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 75 "main\\GcuMain\\GMAIN_L.h" 2


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 78 "main\\GcuMain\\GMAIN_L.h" 2
extern const uint16 GMAIN_ku16SpdReadyEstConfirmC;
extern const uint16 GMAIN_u16OverBhvThdC;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 82 "main\\GcuMain\\GMAIN_L.h" 2





# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 88 "main\\GcuMain\\GMAIN_L.h" 2
extern boolean GMAIN_bAkdAfterAscReq;
extern boolean GMAIN_bBswReadySts;
extern boolean GMAIN_bResExcFltDetEna;
extern boolean GMAIN_bSoftOvBhvFlg;
extern boolean GMAIN_bSoftOvCurrPhsUFlg;
extern boolean GMAIN_bSoftOvCurrPhsVFlg;
extern boolean GMAIN_bSoftOvCurrPhsWFlg;
extern volatile boolean GMAIN_bSpdReadyEst;
extern boolean GMAIN_bSpeedReadyFlg;
extern boolean GMAIN_bProgConditionOk;
extern volatile float32 GMAIN_f32ElecSpeedRds;
extern volatile float32 GMAIN_f32EmailElecSpeedRds;
extern volatile float32 GMAIN_f32EmailErrThetaRdSurPi;
extern volatile float32 GMAIN_f32EmailMecaSpeedRds;
extern volatile float32 GMAIN_f32EmailMecaSpeedRpm;
extern volatile float32 GMAIN_f32EmailThetaElecRdSurPi;
extern volatile float32 GMAIN_f32ErrThetaRdSurPi;
extern float32 GMAIN_f32IuFrequency;
extern float32 GMAIN_f32IuPeriod;
extern volatile float32 GMAIN_f32MecaSpeedRds;
extern volatile float32 GMAIN_f32MecaSpeedRpm;
extern volatile float32 GMAIN_f32MotSpdEst;
extern float32 GMAIN_f32PWMDutyUPhys;
extern float32 GMAIN_f32PWMDutyVPhys;
extern float32 GMAIN_f32PWMDutyWPhys;
extern volatile float32 GMAIN_f32ThetaElecRdSurPi;
extern volatile float32 GMAIN_f32VsiPwmPeriod;
extern uint32 GMAIN_u32EmailCkreq;
extern volatile uint32 GMAIN_u32EmailPosATimeStamp;
extern uint32 GMAIN_u32IuCycleTim;
extern volatile uint32 GMAIN_u32PosATimeStamp;
extern volatile uint32 GMAIN_u32PosBTimeStamp;
extern uint32 GMAIN_u32PosTreatCkreq;
extern uint32 GMAIN_u32TestVar2;
extern uint8 GMAIN_u8DEV_Fault[( 16 )];
extern volatile uint8 GMAIN_u8IgbtHighFltCnt;
extern volatile uint8 GMAIN_u8IgbtLowFltCnt;
extern volatile uint8 GMAIN_u8StopCacheFreezeFrameCnt;
extern uint16 GMAIN_u16IuCycleCnt;
extern uint16 GMAIN_u16IuMiddleCnt;
extern uint16 GMAIN_u16IuMiddleSum;
extern uint16 GMAIN_u16IuNegtiveCnt;
extern uint16 GMAIN_u16IuNegtiveSum;
extern uint16 GMAIN_u16IuPositiveCnt;
extern uint16 GMAIN_u16IuPositiveSum;
extern uint16 GMAIN_u16SpdReadyEstCnt;
extern uint16 GMAIN_u16VadcBhv;

extern sint32 GMAIN_s32Email2PosTreqDiff;
extern sint32 GMAIN_s32PosA2BDeltTime;
extern uint8 GMAIN_u8UdsSwVerVeh[13];
extern uint8 GMAIN_u8UdsSwVerSup[21];
extern uint8 GMAIN_u8UdsOEMPartNum[13];
extern uint8 GMAIN_u8UdsManufPartNum[12];
extern uint8 GMAIN_u8UdsSupplHwVersion[8];
extern uint8 GMAIN_u8UdsManufHwVersion[13];
extern uint8 GMAIN_u8UdsSupplyerId[10];
extern uint8 GMAIN_u8UdsEcuName[10];
extern uint8 GMAIN_u8UdsEcuSerialNum[12];
extern uint8 GMAIN_u8UdsBootVersion[16];

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 150 "main\\GcuMain\\GMAIN_L.h" 2





boolean GMAIN_bSpeedReadyMng(void);
void GMAIN_vidMotorSpeedEst(const float);
# 34 "main\\GcuMain\\GMAIN_DEF.c" 2






# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 105 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 106 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 41 "main\\GcuMain\\GMAIN_DEF.c" 2
const boolean GMAIN_HARDBenchOnC = 0;
const boolean GMAIN_VSIBenchOnWriteDataC = 0;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 110 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 111 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 45 "main\\GcuMain\\GMAIN_DEF.c" 2


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 48 "main\\GcuMain\\GMAIN_DEF.c" 2
const uint8 GMAIN_u8IgbtFltConfirmCntC = 0x02;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 99 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 100 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 51 "main\\GcuMain\\GMAIN_DEF.c" 2


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 54 "main\\GcuMain\\GMAIN_DEF.c" 2
const uint16 GMAIN_ku16SpdReadyEstConfirmC = 2000;
const uint16 GMAIN_u16OverBhvThdC = 3200;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 58 "main\\GcuMain\\GMAIN_DEF.c" 2


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 72 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 182 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_32" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 73 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 61 "main\\GcuMain\\GMAIN_DEF.c" 2
const float32 GMAIN_f32UvwOvCurrThdC = 1000;
const uint32 GMAIN_u32VSICntCkreqESMStartedC = 4900;
const uint32 GMAIN_u32VSICntCkreqVSIStartedC = 100;
const sint32 GMAIN_s32CurHardDelayC = 54;
const sint32 GMAIN_s32ResHardDelayC = 58;
const sint32 GMAIN_s32SampleDelayC = 5;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 69 "main\\GcuMain\\GMAIN_DEF.c" 2





# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 75 "main\\GcuMain\\GMAIN_DEF.c" 2
boolean GMAIN_bAkdAfterAscReq;
boolean GMAIN_bAscFlag;
boolean GMAIN_bBswReadySts;
boolean GMAIN_bESMStarted;
boolean GMAIN_bResExcFltDetEna;
boolean GMAIN_bSoftOvBhvFlg;
boolean GMAIN_bSoftOvCurrPhsUFlg;
boolean GMAIN_bSoftOvCurrPhsVFlg;
boolean GMAIN_bSoftOvCurrPhsWFlg;
volatile boolean GMAIN_bSpdReadyEst;
boolean GMAIN_bSpeedReadyFlg;
boolean GMAIN_bVSIStarted;
boolean GMAIN_ESMGo2StartupIEvent;
boolean GMAIN_bProgConditionOk;
volatile float32 GMAIN_f32ElecSpeedRds;
volatile float32 GMAIN_f32EmailElecSpeedRds;
volatile float32 GMAIN_f32EmailErrThetaRdSurPi;
volatile float32 GMAIN_f32EmailMecaSpeedRds;
volatile float32 GMAIN_f32EmailMecaSpeedRpm;
volatile float32 GMAIN_f32EmailThetaElecRdSurPi;
volatile float32 GMAIN_f32ErrThetaRdSurPi;
float32 GMAIN_f32IuFrequency = 0;
float32 GMAIN_f32IuPeriod = 0;
volatile float32 GMAIN_f32MecaSpeedRds;
volatile float32 GMAIN_f32MecaSpeedRpm;
volatile float32 GMAIN_f32MotSpdEst = 0;
float32 GMAIN_f32PWMDutyUPhys = 0;
float32 GMAIN_f32PWMDutyVPhys = 0;
float32 GMAIN_f32PWMDutyWPhys = 0;
volatile float32 GMAIN_f32ThetaElecRdSurPi;
volatile float32 GMAIN_f32VsiPwmPeriod;
uint32 GMAIN_u32EmailCkreq;
volatile uint32 GMAIN_u32EmailPosATimeStamp;
uint32 GMAIN_u32IuCycleTim;
volatile uint32 GMAIN_u32PosATimeStamp;
volatile uint32 GMAIN_u32PosBTimeStamp;
uint32 GMAIN_u32PosTreatCkreq;
uint32 GMAIN_u32TestVar2;
volatile uint8 GMAIN_u8IgbtHighFltCnt;
volatile uint8 GMAIN_u8IgbtLowFltCnt;
volatile uint8 GMAIN_u8StopCacheFreezeFrameCnt;
uint16 GMAIN_u16Core0Cnt5;
uint16 GMAIN_u16Core1Cnt1;
uint16 GMAIN_u16Core0Cnt100;
uint16 GMAIN_u16Core2Cnt10;
uint16 GMAIN_u16IuCycleCnt;
uint16 GMAIN_u16IuMiddleCnt;
uint16 GMAIN_u16IuMiddleSum;
uint16 GMAIN_u16IuNegtiveCnt;
uint16 GMAIN_u16IuNegtiveSum;
uint16 GMAIN_u16IuPositiveCnt;
uint16 GMAIN_u16IuPositiveSum;
uint16 GMAIN_u16PWMPeriodVal = 2499;
uint16 GMAIN_u16SpdReadyEstCnt;
uint16 GMAIN_u16VadcBhv;

uint32 GMAIN_startTime;
uint32 GMAIN_EndTime;
uint32 GMAIN_TotalTime;

uint8 GMAIN_u8DEV_Fault[( 16 )] = {0};
volatile sint32 GMAIN_as32OCTrimNvm[( 5 )] = {0};
sint32 GMAIN_s32Email2PosTreqDiff;
sint32 GMAIN_s32PosA2BDeltTime;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 141 "main\\GcuMain\\GMAIN_DEF.c" 2
