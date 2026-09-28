# 1 "main\\McuMain\\MAIN_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "main\\McuMain\\MAIN_DEF.c"
# 31 "main\\McuMain\\MAIN_DEF.c"
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
# 32 "main\\McuMain\\MAIN_DEF.c" 2
# 1 "main\\McuMain\\MAIN_tsk.h" 1
# 37 "main\\McuMain\\MAIN_tsk.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "main\\McuMain\\MAIN_tsk.h" 2
# 55 "main\\McuMain\\MAIN_tsk.h"
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
# 56 "main\\McuMain\\MAIN_tsk.h" 2

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
# 58 "main\\McuMain\\MAIN_tsk.h" 2






# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 65 "main\\McuMain\\MAIN_tsk.h" 2
extern boolean MAIN_bAscFlag;
extern boolean MAIN_bESMStarted;
extern boolean MAIN_bVSIStarted;
extern boolean MAIN_bComDisableFlg;
extern uint16 MAIN_u16Core0Cnt1;
extern uint16 MAIN_u16Core0Cnt2;
extern uint16 MAIN_u16Core0Cnt5;
extern uint16 MAIN_u16Core0Cnt10;
extern uint16 MAIN_u16Core0Cnt100;
extern uint16 MAIN_u16Core0Cnt200;
extern uint16 MAIN_u16PWMPeriodVal;
extern volatile sint32 MAIN_as32OCTrimNvm[( 5 )];
extern uint32 Core0_u32ModReqStartTime;
extern uint32 Core0_u32ModReqStopTime;
extern uint32 Core0_u32ModReqTotalTime;
extern uint32 Core0_Asw100msStartTime;
extern uint32 Core0_Asw100msStopTime;
extern uint32 Core0_Asw100msTotalTime;
extern uint32 Core0_Asw10msStartTime;
extern uint32 Core0_Asw10msStopTime;
extern uint32 Core0_Asw10msTotalTime;
extern uint32 Core0_Bsw100msStartTime;
extern uint32 Core0_Bsw100msStopTime;
extern uint32 Core0_Bsw100msTotalTime;
extern uint32 Core0_Bsw10msStartTime;
extern uint32 Core0_Bsw10msStopTime;
extern uint32 Core0_Bsw10msTotalTime;
extern uint32 Core0_Bsw1msStartTime;
extern uint32 Core0_Bsw1msStopTime;
extern uint32 Core0_Bsw1msTotalTime;
extern uint32 Core0_Bsw50msStartTime;
extern uint32 Core0_Bsw50msStopTime;
extern uint32 Core0_Bsw50msTotalTime;
extern uint32 MAIN_startTime;
extern uint32 MAIN_EndTime;
extern uint32 MAIN_TotalTime;
extern uint32 Core1_Asw10msStartTime;
extern uint32 Core1_Asw10msStopTime;
extern uint32 Core1_Asw10msTotalTime;
extern uint32 Core1_Asw1msStartTime;
extern uint32 Core1_Asw1msStopTime;
extern uint32 Core1_Asw1msTotalTime;
extern uint32 Core1_Bsw10msStartTime;
extern uint32 Core1_Bsw10msStopTime;
extern uint32 Core1_Bsw10msTotalTime;
extern uint32 Core1_PositionStartTime;
extern uint32 Core1_PositionStopTime;
extern uint32 Core1_PositionTotalTime;
extern uint32 Core2_Asw10msStartTime;
extern uint32 Core2_Asw10msStopTime;
extern uint32 Core2_Asw10msTotalTime;
extern uint32 Core2_Asw1msStartTime;
extern uint32 Core2_Asw1msStopTime;
extern uint32 Core2_Asw1msTotalTime;
extern uint32 Core2_Bsw10msStartTime;
extern uint32 Core2_Bsw10msStopTime;
extern uint32 Core2_Bsw10msTotalTime;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 124 "main\\McuMain\\MAIN_tsk.h" 2





void MAIN_TaskInit(void);
boolean MAIN_bInitOcTrimData(void);
boolean MAIN_bChkOcCondition(void);
boolean MAIN_bSetSaforiAutophsAngC(const uint16);
float MAIN_f32GetAutophsingAngle(void);
void MAIN_vidPositionTreatment(void);
void MAIN_vidVSITreatment(void);
extern void MAIN_vidOcDataRestore(void);
boolean MAIN_vidGetProgCondition(void);
# 33 "main\\McuMain\\MAIN_DEF.c" 2
# 1 "main\\McuMain\\MAIN_L.h" 1
# 37 "main\\McuMain\\MAIN_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "main\\McuMain\\MAIN_L.h" 2
# 53 "main\\McuMain\\MAIN_L.h"
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
# 54 "main\\McuMain\\MAIN_L.h" 2
extern const boolean MAIN_bMSGRxToutBenchOnC;
extern const boolean MAIN_bComRxDisableFlgByUds;
extern const boolean MAIN_HARDBenchOnC;
extern const boolean MAIN_MSGRxBenchOnC;
extern const boolean MAIN_VSIBenchOnWriteDataC;
extern const boolean MAIN_MSGbIsulationTxOnC;

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
# 62 "main\\McuMain\\MAIN_L.h" 2


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
# 65 "main\\McuMain\\MAIN_L.h" 2
extern const float32 MAIN_f32UvwOvCurrThdC;
extern const uint32 MAIN_u32VSICntCkreqESMStartedC;
extern const uint32 MAIN_u32VSICntCkreqVSIStartedC;
extern const uint32 MAIN_ku32ProgFlowSeq01Step01C;
extern const uint32 MAIN_ku32ProgFlowSeq01Step02C;
extern const uint32 MAIN_ku32ProgFlowSeq01Step03C;
extern const sint32 MAIN_s32CurHardDelayC;
extern const sint32 MAIN_s32ResHardDelayC;
extern const sint32 MAIN_s32SampleDelayC;
extern const float32 MAIN_f32PowerdownVoltC;

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
# 77 "main\\McuMain\\MAIN_L.h" 2


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
# 80 "main\\McuMain\\MAIN_L.h" 2
extern const uint8 MAIN_MSGu8PwModFiltCntC;
extern const uint8 MAIN_u8IgbtFltConfirmCntC;

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
# 84 "main\\McuMain\\MAIN_L.h" 2


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
# 87 "main\\McuMain\\MAIN_L.h" 2
extern const uint16 MAIN_ku16SpdReadyEstConfirmC;
extern const uint16 MAIN_u16OverBhvThdC;

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
# 91 "main\\McuMain\\MAIN_L.h" 2





# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 97 "main\\McuMain\\MAIN_L.h" 2
extern boolean MAIN_bAkdAfterAscReq;
extern boolean MAIN_bBswReadySts;
extern boolean MAIN_bResExcFltDetEna;
extern boolean MAIN_bSoftOvBhvFlg;
extern boolean MAIN_bSoftOvCurrPhsUFlg;
extern boolean MAIN_bSoftOvCurrPhsVFlg;
extern boolean MAIN_bSoftOvCurrPhsWFlg;
extern volatile boolean MAIN_bSpdReadyEst;
extern boolean MAIN_bSpeedReadyFlg;
extern boolean MAIN_bProgConditionOk;
extern boolean MAIN_bCurGainStoreResult;
extern boolean MAIN_bDflashWriteReq;
extern volatile float32 MAIN_f32ElecSpeedRds;
extern volatile float32 MAIN_f32EmailElecSpeedRds;
extern volatile float32 MAIN_f32EmailErrThetaRdSurPi;
extern volatile float32 MAIN_f32EmailMecaSpeedRds;
extern volatile float32 MAIN_f32EmailMecaSpeedRpm;
extern volatile float32 MAIN_f32EmailThetaElecRdSurPi;
extern volatile float32 MAIN_f32ErrThetaRdSurPi;
extern float32 MAIN_f32IuFrequency;
extern float32 MAIN_f32IuPeriod;
extern volatile float32 MAIN_f32MecaSpeedRds;
extern volatile float32 MAIN_f32MecaSpeedRpm;
extern volatile float32 MAIN_f32MotSpdEst;
extern float32 MAIN_f32PWMDutyUPhys;
extern float32 MAIN_f32PWMDutyVPhys;
extern float32 MAIN_f32PWMDutyWPhys;
extern volatile float32 MAIN_f32ThetaElecRdSurPi;
extern volatile float32 MAIN_f32VsiPwmPeriod;
extern uint32 MAIN_u32EmailCkreq;
extern volatile uint32 MAIN_u32EmailPosATimeStamp;
extern uint32 MAIN_u32IuCycleTim;
extern volatile uint32 MAIN_u32PosATimeStamp;
extern volatile uint32 MAIN_u32PosBTimeStamp;
extern uint32 MAIN_u32PosTreatCkreq;
extern uint32 MAIN_u32TestVar2;
extern uint32 MAIN_u32WaitValueVSITreatment;
extern uint8 MAIN_u8DEV_Fault[( 16 )];
extern uint8 MAIN_MSGu8bcm_pepsPwrMode;
extern uint8 MAIN_u8TestVar1;
extern volatile uint8 MAIN_u8IgbtHighFltCnt;
extern volatile uint8 MAIN_u8IgbtLowFltCnt;
extern uint16 MAIN_u16IuCycleCnt;
extern uint16 MAIN_u16IuMiddleCnt;
extern uint16 MAIN_u16IuMiddleSum;
extern uint16 MAIN_u16IuNegtiveCnt;
extern uint16 MAIN_u16IuNegtiveSum;
extern uint16 MAIN_u16IuPositiveCnt;
extern uint16 MAIN_u16IuPositiveSum;
extern uint16 MAIN_u16SpdReadyEstCnt;
extern uint16 MAIN_u16VadcBhv;

extern uint16 MAIN_u16HVInputCheck;
extern uint16 MAIN_u16SuperStructureCheck;
extern uint16 MAIN_u16DCACResevedCheck;
extern uint16 MAIN_u16DCACInverterCheck;
extern uint16 MAIN_u16AirConditionerCheck;
extern uint16 MAIN_u16HVFanCheck;
extern uint16 MAIN_u16WaterCoolingCheck;
extern uint16 MAIN_u16BatHeatPTCCheck;

extern uint32 OBD_u32CalVerifyNum;

extern sint32 MAIN_s32Email2PosTreqDiff;
extern sint32 MAIN_s32PosA2BDeltTime;
extern uint8 MAIN_MSGu8PwModOnCnt;
extern uint8 MAIN_MSGu8PwModOffCnt;
extern uint8 UDS_au8CalibSoftId[16];
extern uint8 MAIN_u8UdsSwVerVeh[13];
extern uint8 MAIN_u8UdsSwVerSup[21];
extern uint8 MAIN_u8UdsOEMPartNum[13];
extern uint8 MAIN_u8UdsManufPartNum[12];
extern uint8 MAIN_u8UdsSupplHwVersion[8];
extern uint8 MAIN_u8UdsManufHwVersion[13];
extern uint8 MAIN_u8UdsSupplyerId[10];
extern uint8 MAIN_u8UdsEcuName[10];
extern uint8 MAIN_u8UdsEcuSerialNum[12];
extern uint8 MAIN_u8UdsBootVersion[16];

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 177 "main\\McuMain\\MAIN_L.h" 2





boolean MAIN_bSpeedReadyMng(void);
void MAIN_vidMotorSpeedEst(const float);
void MAIN_Wait(uint32 time);
# 34 "main\\McuMain\\MAIN_DEF.c" 2

const uint8 MAIN_kau8BASEAppVersion[64] = {"TE5X_BASE_MCU_TC387:APP_V_XXXXX;BSW_R_10013"};
const uint8 MAIN_kau8INVTAppVersion[64] = {"IFL500_ZZQC600V_APP_MCU_TC387_A_10102"};




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
# 42 "main\\McuMain\\MAIN_DEF.c" 2
const boolean MAIN_bMSGRxToutBenchOnC = 0;
const boolean MAIN_bComRxDisableFlgByUds = 0;
const boolean MAIN_HARDBenchOnC = 0;
const boolean MAIN_MSGRxBenchOnC;
const boolean MAIN_VSIBenchOnWriteDataC = 0;
const boolean MAIN_MSGbIsulationTxOnC = (1 != 0);

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
# 50 "main\\McuMain\\MAIN_DEF.c" 2


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
# 53 "main\\McuMain\\MAIN_DEF.c" 2
const uint8 MAIN_MSGu8PwModFiltCntC = 10;
const uint8 MAIN_u8IgbtFltConfirmCntC = 0x02;
const uint8 MAIN_u8TcuCapPreDrvTypeC = 1;

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
# 58 "main\\McuMain\\MAIN_DEF.c" 2


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
# 61 "main\\McuMain\\MAIN_DEF.c" 2
const uint16 MAIN_ku16SpdReadyEstConfirmC = 2000;
const uint16 MAIN_u16OverBhvThdC = 3200;

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
# 65 "main\\McuMain\\MAIN_DEF.c" 2


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
# 68 "main\\McuMain\\MAIN_DEF.c" 2
const float32 MAIN_f32UvwOvCurrThdC = 1000;
const uint32 MAIN_u32VSICntCkreqESMStartedC = 4900;
const uint32 MAIN_u32VSICntCkreqVSIStartedC = 100;
const uint32 MAIN_ku32ProgFlowSeq01Step01C = 0x11111111;
const uint32 MAIN_ku32ProgFlowSeq01Step02C = 0x22222222;
const uint32 MAIN_ku32ProgFlowSeq01Step03C = 0x33333333;
const sint32 MAIN_s32CurHardDelayC = 54;
const sint32 MAIN_s32ResHardDelayC = 58;
const sint32 MAIN_s32SampleDelayC = 5;
const float32 MAIN_f32PowerdownVoltC = 60.0;

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
# 80 "main\\McuMain\\MAIN_DEF.c" 2





# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 86 "main\\McuMain\\MAIN_DEF.c" 2
boolean MAIN_bAkdAfterAscReq;
boolean MAIN_bAscFlag;
boolean MAIN_bBswReadySts;
boolean MAIN_bESMStarted;
boolean MAIN_bResExcFltDetEna;
boolean MAIN_bSoftOvBhvFlg;
boolean MAIN_bSoftOvCurrPhsUFlg;
boolean MAIN_bSoftOvCurrPhsVFlg;
boolean MAIN_bSoftOvCurrPhsWFlg;
volatile boolean MAIN_bSpdReadyEst;
boolean MAIN_bSpeedReadyFlg;
boolean MAIN_bVSIStarted;
boolean MAIN_bProgConditionOk;
boolean MAIN_bDflashWriteReq = (0 != 0);
boolean MAIN_bCurGainStoreResult;
boolean MAIN_bComDisableFlg;
volatile float32 MAIN_f32ElecSpeedRds;
volatile float32 MAIN_f32EmailElecSpeedRds;
volatile float32 MAIN_f32EmailErrThetaRdSurPi;
volatile float32 MAIN_f32EmailMecaSpeedRds;
volatile float32 MAIN_f32EmailMecaSpeedRpm;
volatile float32 MAIN_f32EmailThetaElecRdSurPi;
volatile float32 MAIN_f32ErrThetaRdSurPi;
float32 MAIN_f32IuFrequency = 0;
float32 MAIN_f32IuPeriod = 0;
volatile float32 MAIN_f32MecaSpeedRds;
volatile float32 MAIN_f32MecaSpeedRpm;
volatile float32 MAIN_f32MotSpdEst = 0;
float32 MAIN_f32PWMDutyUPhys = 0;
float32 MAIN_f32PWMDutyVPhys = 0;
float32 MAIN_f32PWMDutyWPhys = 0;
volatile float32 MAIN_f32ThetaElecRdSurPi;
volatile float32 MAIN_f32VsiPwmPeriod;
uint32 MAIN_u32EmailCkreq;
volatile uint32 MAIN_u32EmailPosATimeStamp;
uint32 MAIN_u32IuCycleTim;
volatile uint32 MAIN_u32PosATimeStamp;
volatile uint32 MAIN_u32PosBTimeStamp;
uint32 MAIN_u32PosTreatCkreq;
uint32 MAIN_u32TestVar2;
uint32 MAIN_u32WaitValueVSITreatment;
uint8 MAIN_MSGu8bcm_pepsPwrMode;
uint8 MAIN_u8TestVar1;
volatile uint8 MAIN_u8IgbtHighFltCnt;
volatile uint8 MAIN_u8IgbtLowFltCnt;
uint16 MAIN_u16Core0Cnt1;
uint16 MAIN_u16Core0Cnt2;
uint16 MAIN_u16Core0Cnt5;
uint16 MAIN_u16Core0Cnt10;
uint16 MAIN_u16Core0Cnt100;
uint16 MAIN_u16Core0Cnt200;
uint16 MAIN_u16IuCycleCnt;
uint16 MAIN_u16IuMiddleCnt;
uint16 MAIN_u16IuMiddleSum;
uint16 MAIN_u16IuNegtiveCnt;
uint16 MAIN_u16IuNegtiveSum;
uint16 MAIN_u16IuPositiveCnt;
uint16 MAIN_u16IuPositiveSum;
uint16 MAIN_u16PWMPeriodVal = 2499;
uint16 MAIN_u16SpdReadyEstCnt;
uint16 MAIN_u16VadcBhv;

uint16 MAIN_u16HVInputCheck;
uint16 MAIN_u16SuperStructureCheck;
uint16 MAIN_u16DCACResevedCheck;
uint16 MAIN_u16DCACInverterCheck;
uint16 MAIN_u16AirConditionerCheck;
uint16 MAIN_u16HVFanCheck;
uint16 MAIN_u16WaterCoolingCheck;
uint16 MAIN_u16BatHeatPTCCheck;

uint32 OBD_u32CalVerifyNum;
uint32 Core0_u32ModReqStartTime;
uint32 Core0_u32ModReqStopTime;
uint32 Core0_u32ModReqTotalTime;
uint32 Core0_Asw100msStartTime;
uint32 Core0_Asw100msStopTime;
uint32 Core0_Asw100msTotalTime;
uint32 Core0_Asw10msStartTime;
uint32 Core0_Asw10msStopTime;
uint32 Core0_Asw10msTotalTime;
uint32 Core0_Bsw100msStartTime;
uint32 Core0_Bsw100msStopTime;
uint32 Core0_Bsw100msTotalTime;
uint32 Core0_Bsw10msStartTime;
uint32 Core0_Bsw10msStopTime;
uint32 Core0_Bsw10msTotalTime;
uint32 Core0_Bsw1msStartTime;
uint32 Core0_Bsw1msStopTime;
uint32 Core0_Bsw1msTotalTime;
uint32 Core0_Bsw50msStartTime;
uint32 Core0_Bsw50msStopTime;
uint32 Core0_Bsw50msTotalTime;
uint32 MAIN_startTime;
uint32 MAIN_EndTime;
uint32 MAIN_TotalTime;
uint32 Core1_Asw10msStartTime;
uint32 Core1_Asw10msStopTime;
uint32 Core1_Asw10msTotalTime;
uint32 Core1_Asw1msStartTime;
uint32 Core1_Asw1msStopTime;
uint32 Core1_Asw1msTotalTime;
uint32 Core1_Bsw10msStartTime;
uint32 Core1_Bsw10msStopTime;
uint32 Core1_Bsw10msTotalTime;
uint32 Core1_PositionStartTime;
uint32 Core1_PositionStopTime;
uint32 Core1_PositionTotalTime;
uint32 Core2_Asw10msStartTime;
uint32 Core2_Asw10msStopTime;
uint32 Core2_Asw10msTotalTime;
uint32 Core2_Asw1msStartTime;
uint32 Core2_Asw1msStopTime;
uint32 Core2_Asw1msTotalTime;
uint32 Core2_Bsw10msStartTime;
uint32 Core2_Bsw10msStopTime;
uint32 Core2_Bsw10msTotalTime;

uint8 MAIN_u8DEV_Fault[( 16 )] = {0};
volatile sint32 MAIN_as32OCTrimNvm[( 5 )] = {0};
sint32 MAIN_s32Email2PosTreqDiff;
sint32 MAIN_s32PosA2BDeltTime;
uint8 MAIN_MSGu8PwModOnCnt;
uint8 MAIN_MSGu8PwModOffCnt;
uint8 UDS_au8CalibSoftId[16] = {0};
uint8 MAIN_u8UdsSwVerVeh[13] = {"H56B3700006EH"};
uint8 MAIN_u8UdsSwVerSup[21] = {"ZZQC600V_APP_A_10102"};
uint8 MAIN_u8UdsOEMPartNum[13] = {"H56B3700013AB"};
uint8 MAIN_u8UdsManufPartNum[12] = {"            "};
uint8 MAIN_u8UdsSupplHwVersion[8] = {"HD150MFA"};
uint8 MAIN_u8UdsManufHwVersion[13] = {"H56B3700009AA"};
uint8 MAIN_u8UdsSupplyerId[10] = {"DPPC6     "};
uint8 MAIN_u8UdsEcuName[10] = {"IPUM      "};
uint8 MAIN_u8UdsEcuSerialNum[12] = {"230818      "};
uint8 MAIN_u8UdsBootVersion[16] = {"HD150BTVEB      "};


# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 224 "main\\McuMain\\MAIN_DEF.c" 2
