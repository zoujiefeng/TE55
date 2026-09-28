/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : MAIN                                                    */
/*                                                                            */
/* !Module          : MAIN                                                    */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : MAIN_DEF.C                                              */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2008 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/**************************** </AUTO_FILE_HEADER> *****************************/
/* PVCS Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::                                                               $*/
/* $Author::                                          $$Date::               $*/
/******************************************************************************/
/* !VnrOff  : Names imposed by the customer                                   */
/* !CompReq :                                                                 */
/******************************************************************************/

#include "Std_Types.h"
#include "MAIN_tsk.h"
#include "MAIN_L.h"

const uint8 MAIN_kau8BASEAppVersion[64] = {"TE5X_BASE_MCU_TC387:APP_V_XXXXX;BSW_R_10013"};
const uint8 MAIN_kau8INVTAppVersion[64] = {"IFL500_ZZQC600V_APP_MCU_TC387_A_10102"};
/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"
CONST(boolean, MAIN_CALIB) MAIN_bMSGRxToutBenchOnC = 0;
CONST(boolean, MAIN_CALIB) MAIN_bComRxDisableFlgByUds = 0;
CONST(boolean, MAIN_CALIB) MAIN_HARDBenchOnC = 0;
CONST(boolean, MAIN_CALIB) MAIN_MSGRxBenchOnC;
CONST(boolean, MAIN_CALIB) MAIN_VSIBenchOnWriteDataC = 0;
CONST(boolean, MAIN_CALIB) MAIN_MSGbIsulationTxOnC = TRUE;
#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"
CONST(uint8, MAIN_CALIB) MAIN_MSGu8PwModFiltCntC = 10;
CONST(uint8, MAIN_CALIB) MAIN_u8IgbtFltConfirmCntC = 0x02;
CONST(uint8, MAIN_CALIB) MAIN_u8TcuCapPreDrvTypeC  = 1;
#define MAIN_CALIB_STOP_SEC_CONST_8
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_16
#include "MAIN_MemMap.h"
CONST(uint16, MAIN_CALIB) MAIN_ku16SpdReadyEstConfirmC = 2000;
CONST(uint16, MAIN_CALIB) MAIN_u16OverBhvThdC = 3200;
#define MAIN_CALIB_STOP_SEC_CONST_16
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"
CONST(float32, MAIN_CALIB) MAIN_f32UvwOvCurrThdC = 1000;
CONST(uint32, MAIN_CALIB) MAIN_u32VSICntCkreqESMStartedC = 4900;
CONST(uint32, MAIN_CALIB) MAIN_u32VSICntCkreqVSIStartedC = 100;
CONST(uint32, MAIN_CALIB) MAIN_ku32ProgFlowSeq01Step01C  = 0x11111111;
CONST(uint32, MAIN_CALIB) MAIN_ku32ProgFlowSeq01Step02C  = 0x22222222;
CONST(uint32, MAIN_CALIB) MAIN_ku32ProgFlowSeq01Step03C  = 0x33333333;
CONST(sint32, MAIN_CALIB) MAIN_s32CurHardDelayC = 54; /*5.4us*//*Timebase in HPT150 is 10*/
CONST(sint32, MAIN_CALIB) MAIN_s32ResHardDelayC = 58;
CONST(sint32, MAIN_CALIB) MAIN_s32SampleDelayC = 5;
CONST(float32, MAIN_CALIB) MAIN_f32PowerdownVoltC = 60.0;
#define MAIN_CALIB_STOP_SEC_CONST_32
#include "MAIN_MemMap.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
VAR(boolean, MAIN_VAR) MAIN_bAkdAfterAscReq;
VAR(boolean, MAIN_VAR) MAIN_bAscFlag;
VAR(boolean, MAIN_VAR) MAIN_bBswReadySts;
VAR(boolean, MAIN_VAR) MAIN_bESMStarted;
VAR(boolean, MAIN_VAR) MAIN_bResExcFltDetEna;
VAR(boolean, MAIN_VAR) MAIN_bSoftOvBhvFlg;
VAR(boolean, MAIN_VAR) MAIN_bSoftOvCurrPhsUFlg;
VAR(boolean, MAIN_VAR) MAIN_bSoftOvCurrPhsVFlg;
VAR(boolean, MAIN_VAR) MAIN_bSoftOvCurrPhsWFlg;
VAR(volatile boolean, MAIN_VAR) MAIN_bSpdReadyEst;
VAR(boolean, MAIN_VAR) MAIN_bSpeedReadyFlg;
VAR(boolean, MAIN_VAR) MAIN_bVSIStarted;
VAR(boolean, MAIN_VAR) MAIN_bProgConditionOk;
VAR(boolean, MAIN_VAR) MAIN_bDflashWriteReq = FALSE;       /* Current calibration write DFLASH request */
VAR(boolean, MAIN_VAR) MAIN_bCurGainStoreResult;           
VAR(boolean, MAIN_VAR) MAIN_bComDisableFlg;
VAR(volatile float32, MAIN_VAR) MAIN_f32ElecSpeedRds;
VAR(volatile float32, MAIN_VAR) MAIN_f32EmailElecSpeedRds;
VAR(volatile float32, MAIN_VAR) MAIN_f32EmailErrThetaRdSurPi;
VAR(volatile float32, MAIN_VAR) MAIN_f32EmailMecaSpeedRds;
VAR(volatile float32, MAIN_VAR) MAIN_f32EmailMecaSpeedRpm;
VAR(volatile float32, MAIN_VAR) MAIN_f32EmailThetaElecRdSurPi;
VAR(volatile float32, MAIN_VAR) MAIN_f32ErrThetaRdSurPi;
VAR(float32, MAIN_VAR) MAIN_f32IuFrequency = 0;
VAR(float32, MAIN_VAR) MAIN_f32IuPeriod = 0;
VAR(volatile float32, MAIN_VAR) MAIN_f32MecaSpeedRds;
VAR(volatile float32, MAIN_VAR) MAIN_f32MecaSpeedRpm;
VAR(volatile float32, MAIN_VAR) MAIN_f32MotSpdEst = 0;
VAR(float32, MAIN_VAR) MAIN_f32PWMDutyUPhys = 0;
VAR(float32, MAIN_VAR) MAIN_f32PWMDutyVPhys = 0;
VAR(float32, MAIN_VAR) MAIN_f32PWMDutyWPhys = 0;
VAR(volatile float32, MAIN_VAR) MAIN_f32ThetaElecRdSurPi;
VAR(volatile float32, MAIN_VAR) MAIN_f32VsiPwmPeriod;
VAR(uint32, MAIN_VAR) MAIN_u32EmailCkreq;
VAR(volatile uint32, MAIN_VAR) MAIN_u32EmailPosATimeStamp;
VAR(uint32, MAIN_VAR) MAIN_u32IuCycleTim;
VAR(volatile uint32, MAIN_VAR) MAIN_u32PosATimeStamp;
VAR(volatile uint32, MAIN_VAR) MAIN_u32PosBTimeStamp;
VAR(uint32, MAIN_VAR) MAIN_u32PosTreatCkreq;
VAR(uint32, MAIN_VAR) MAIN_u32TestVar2;
VAR(uint32, MAIN_VAR) MAIN_u32WaitValueVSITreatment;
VAR(uint8, MAIN_VAR) MAIN_MSGu8bcm_pepsPwrMode;
VAR(uint8, MAIN_VAR) MAIN_u8TestVar1;
VAR(volatile uint8, MAIN_VAR) MAIN_u8IgbtHighFltCnt;
VAR(volatile uint8, MAIN_VAR) MAIN_u8IgbtLowFltCnt;
VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt1;
VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt2;
VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt5;
VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt10;
VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt100;
VAR(uint16, MAIN_VAR) MAIN_u16Core0Cnt200;
VAR(uint16, MAIN_VAR) MAIN_u16IuCycleCnt;
VAR(uint16, MAIN_VAR) MAIN_u16IuMiddleCnt;
VAR(uint16, MAIN_VAR) MAIN_u16IuMiddleSum;
VAR(uint16, MAIN_VAR) MAIN_u16IuNegtiveCnt;
VAR(uint16, MAIN_VAR) MAIN_u16IuNegtiveSum;
VAR(uint16, MAIN_VAR) MAIN_u16IuPositiveCnt;
VAR(uint16, MAIN_VAR) MAIN_u16IuPositiveSum;
VAR(uint16, MAIN_VAR) MAIN_u16PWMPeriodVal = 2499;
VAR(uint16, MAIN_VAR) MAIN_u16SpdReadyEstCnt;
VAR(uint16, MAIN_VAR) MAIN_u16VadcBhv;

VAR(uint16, MAIN_VAR) MAIN_u16HVInputCheck;   
VAR(uint16, MAIN_VAR) MAIN_u16SuperStructureCheck;
VAR(uint16, MAIN_VAR) MAIN_u16DCACResevedCheck;   
VAR(uint16, MAIN_VAR) MAIN_u16DCACInverterCheck;  
VAR(uint16, MAIN_VAR) MAIN_u16AirConditionerCheck;
VAR(uint16, MAIN_VAR) MAIN_u16HVFanCheck;         
VAR(uint16, MAIN_VAR) MAIN_u16WaterCoolingCheck;  
VAR(uint16, MAIN_VAR) MAIN_u16BatHeatPTCCheck;

VAR(uint32,MAIN_VAR) OBD_u32CalVerifyNum;
VAR(uint32,MAIN_VAR) Core0_u32ModReqStartTime;
VAR(uint32,MAIN_VAR) Core0_u32ModReqStopTime;
VAR(uint32,MAIN_VAR) Core0_u32ModReqTotalTime;
VAR(uint32,MAIN_VAR) Core0_Asw100msStartTime;
VAR(uint32,MAIN_VAR) Core0_Asw100msStopTime;
VAR(uint32,MAIN_VAR) Core0_Asw100msTotalTime;
VAR(uint32,MAIN_VAR) Core0_Asw10msStartTime;
VAR(uint32,MAIN_VAR) Core0_Asw10msStopTime;
VAR(uint32,MAIN_VAR) Core0_Asw10msTotalTime;
VAR(uint32,MAIN_VAR) Core0_Bsw100msStartTime;
VAR(uint32,MAIN_VAR) Core0_Bsw100msStopTime;
VAR(uint32,MAIN_VAR) Core0_Bsw100msTotalTime;
VAR(uint32,MAIN_VAR) Core0_Bsw10msStartTime;
VAR(uint32,MAIN_VAR) Core0_Bsw10msStopTime;
VAR(uint32,MAIN_VAR) Core0_Bsw10msTotalTime;
VAR(uint32,MAIN_VAR) Core0_Bsw1msStartTime;
VAR(uint32,MAIN_VAR) Core0_Bsw1msStopTime;
VAR(uint32,MAIN_VAR) Core0_Bsw1msTotalTime;
VAR(uint32,MAIN_VAR) Core0_Bsw50msStartTime;
VAR(uint32,MAIN_VAR) Core0_Bsw50msStopTime;
VAR(uint32,MAIN_VAR) Core0_Bsw50msTotalTime;
VAR(uint32,MAIN_VAR) MAIN_startTime;
VAR(uint32,MAIN_VAR) MAIN_EndTime;
VAR(uint32,MAIN_VAR) MAIN_TotalTime;
VAR(uint32,MAIN_VAR) Core1_Asw10msStartTime;
VAR(uint32,MAIN_VAR) Core1_Asw10msStopTime;
VAR(uint32,MAIN_VAR) Core1_Asw10msTotalTime;
VAR(uint32,MAIN_VAR) Core1_Asw1msStartTime;
VAR(uint32,MAIN_VAR) Core1_Asw1msStopTime;
VAR(uint32,MAIN_VAR) Core1_Asw1msTotalTime;
VAR(uint32,MAIN_VAR) Core1_Bsw10msStartTime;
VAR(uint32,MAIN_VAR) Core1_Bsw10msStopTime;
VAR(uint32,MAIN_VAR) Core1_Bsw10msTotalTime;
VAR(uint32,MAIN_VAR) Core1_PositionStartTime;
VAR(uint32,MAIN_VAR) Core1_PositionStopTime;
VAR(uint32,MAIN_VAR) Core1_PositionTotalTime;
VAR(uint32,MAIN_VAR) Core2_Asw10msStartTime;
VAR(uint32,MAIN_VAR) Core2_Asw10msStopTime;
VAR(uint32,MAIN_VAR) Core2_Asw10msTotalTime;
VAR(uint32,MAIN_VAR) Core2_Asw1msStartTime;
VAR(uint32,MAIN_VAR) Core2_Asw1msStopTime;
VAR(uint32,MAIN_VAR) Core2_Asw1msTotalTime;
VAR(uint32,MAIN_VAR) Core2_Bsw10msStartTime;
VAR(uint32,MAIN_VAR) Core2_Bsw10msStopTime;
VAR(uint32,MAIN_VAR) Core2_Bsw10msTotalTime;

VAR(uint8, MAIN_VAR) MAIN_u8DEV_Fault[MAIN_FaultCodeNum_COLS] = {0};
VAR(volatile sint32, MAIN_VAR) MAIN_as32OCTrimNvm[MAIN_AS32OCTRIMNVM_COLS] = {0};
VAR(sint32, MAIN_VAR) MAIN_s32Email2PosTreqDiff;
VAR(sint32, MAIN_VAR) MAIN_s32PosA2BDeltTime;
VAR(uint8, MAIN_VAR) MAIN_MSGu8PwModOnCnt;
VAR(uint8, MAIN_VAR) MAIN_MSGu8PwModOffCnt;
uint8 UDS_au8CalibSoftId[16] = {0};                                    /* Calibration ID */
VAR(uint8,MAIN_VAR) MAIN_u8UdsSwVerVeh[13] = {"H56B3700006EH"};        /* F189 */
VAR(uint8,MAIN_VAR) MAIN_u8UdsSwVerSup[21] = {"ZZQC600V_APP_A_10102"};   /* F195 */
VAR(uint8,MAIN_VAR) MAIN_u8UdsOEMPartNum[13] = {"H56B3700013AB"};      /* F187 */
VAR(uint8,MAIN_VAR) MAIN_u8UdsManufPartNum[12] = {"            "};     /* F087 */
VAR(uint8,MAIN_VAR) MAIN_u8UdsSupplHwVersion[8] = {"HD150MFA"};        /* F193 */
VAR(uint8,MAIN_VAR) MAIN_u8UdsManufHwVersion[13] = {"H56B3700009AA"};  /* F089 */
VAR(uint8,MAIN_VAR) MAIN_u8UdsSupplyerId[10] = {"DPPC6     "};         /* F18A */
VAR(uint8,MAIN_VAR) MAIN_u8UdsEcuName[10] = {"IPUM      "};            /* F197 */
VAR(uint8,MAIN_VAR) MAIN_u8UdsEcuSerialNum[12] = {"230818      "};     /* F18C */
VAR(uint8,MAIN_VAR) MAIN_u8UdsBootVersion[16] = {"HD150BTVEB      "};  /* F180 */

#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
