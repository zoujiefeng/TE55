/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GMAIN                                                    */
/*                                                                            */
/* !Module          : GMAIN                                                    */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : GMAIN_DEF.C                                              */
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
#include "GMAIN_tsk.h"
#include "GMAIN_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"
CONST(boolean, GMAIN_CALIB) GMAIN_HARDBenchOnC = 0;
CONST(boolean, GMAIN_CALIB) GMAIN_VSIBenchOnWriteDataC = 0;
#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"
CONST(uint8, GMAIN_CALIB) GMAIN_u8IgbtFltConfirmCntC = 0x02;
#define MAIN_CALIB_STOP_SEC_CONST_8
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_16
#include "MAIN_MemMap.h"
CONST(uint16, GMAIN_CALIB) GMAIN_ku16SpdReadyEstConfirmC = 2000;
CONST(uint16, GMAIN_CALIB) GMAIN_u16OverBhvThdC = 3200;
#define MAIN_CALIB_STOP_SEC_CONST_16
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"
CONST(float32, GMAIN_CALIB) GMAIN_f32UvwOvCurrThdC = 1000;
CONST(uint32, GMAIN_CALIB) GMAIN_u32VSICntCkreqESMStartedC = 4900;
CONST(uint32, GMAIN_CALIB) GMAIN_u32VSICntCkreqVSIStartedC = 100;
CONST(sint32, GMAIN_CALIB) GMAIN_s32CurHardDelayC = 54; /*5.4us*//*Timebase in HPT150 is 10*/
CONST(sint32, GMAIN_CALIB) GMAIN_s32ResHardDelayC = 58;
CONST(sint32, GMAIN_CALIB) GMAIN_s32SampleDelayC = 5;
#define MAIN_CALIB_STOP_SEC_CONST_32
#include "MAIN_MemMap.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
VAR(boolean, GMAIN_VAR) GMAIN_bAkdAfterAscReq;
VAR(boolean, GMAIN_VAR) GMAIN_bAscFlag;
VAR(boolean, GMAIN_VAR) GMAIN_bBswReadySts;
VAR(boolean, GMAIN_VAR) GMAIN_bESMStarted;
VAR(boolean, GMAIN_VAR) GMAIN_bResExcFltDetEna;
VAR(boolean, GMAIN_VAR) GMAIN_bSoftOvBhvFlg;
VAR(boolean, GMAIN_VAR) GMAIN_bSoftOvCurrPhsUFlg;
VAR(boolean, GMAIN_VAR) GMAIN_bSoftOvCurrPhsVFlg;
VAR(boolean, GMAIN_VAR) GMAIN_bSoftOvCurrPhsWFlg;
VAR(volatile boolean, GMAIN_VAR) GMAIN_bSpdReadyEst;
VAR(boolean, GMAIN_VAR) GMAIN_bSpeedReadyFlg;
VAR(boolean, GMAIN_VAR) GMAIN_bVSIStarted;
VAR(boolean, GMAIN_VAR) GMAIN_ESMGo2StartupIEvent;
VAR(boolean, GMAIN_VAR) GMAIN_bProgConditionOk;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32ElecSpeedRds;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailElecSpeedRds;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailErrThetaRdSurPi;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailMecaSpeedRds;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailMecaSpeedRpm;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailThetaElecRdSurPi;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32ErrThetaRdSurPi;
VAR(float32, GMAIN_VAR) GMAIN_f32IuFrequency = 0;
VAR(float32, GMAIN_VAR) GMAIN_f32IuPeriod = 0;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32MecaSpeedRds;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32MecaSpeedRpm;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32MotSpdEst = 0;
VAR(float32, GMAIN_VAR) GMAIN_f32PWMDutyUPhys = 0;
VAR(float32, GMAIN_VAR) GMAIN_f32PWMDutyVPhys = 0;
VAR(float32, GMAIN_VAR) GMAIN_f32PWMDutyWPhys = 0;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32ThetaElecRdSurPi;
VAR(volatile float32, GMAIN_VAR) GMAIN_f32VsiPwmPeriod;
VAR(uint32, GMAIN_VAR) GMAIN_u32EmailCkreq;
VAR(volatile uint32, GMAIN_VAR) GMAIN_u32EmailPosATimeStamp;
VAR(uint32, GMAIN_VAR) GMAIN_u32IuCycleTim;
VAR(volatile uint32, GMAIN_VAR) GMAIN_u32PosATimeStamp;
VAR(volatile uint32, GMAIN_VAR) GMAIN_u32PosBTimeStamp;
VAR(uint32, GMAIN_VAR) GMAIN_u32PosTreatCkreq;
VAR(uint32, GMAIN_VAR) GMAIN_u32TestVar2;
VAR(volatile uint8, GMAIN_VAR) GMAIN_u8IgbtHighFltCnt;
VAR(volatile uint8, GMAIN_VAR) GMAIN_u8IgbtLowFltCnt;
VAR(volatile uint8, GMAIN_VAR) GMAIN_u8StopCacheFreezeFrameCnt;
VAR(uint16, GMAIN_VAR) GMAIN_u16Core0Cnt5;
VAR(uint16, GMAIN_VAR) GMAIN_u16Core1Cnt1;
VAR(uint16, GMAIN_VAR) GMAIN_u16Core0Cnt100;
VAR(uint16, GMAIN_VAR) GMAIN_u16Core2Cnt10;
VAR(uint16, GMAIN_VAR) GMAIN_u16IuCycleCnt;
VAR(uint16, GMAIN_VAR) GMAIN_u16IuMiddleCnt;
VAR(uint16, GMAIN_VAR) GMAIN_u16IuMiddleSum;
VAR(uint16, GMAIN_VAR) GMAIN_u16IuNegtiveCnt;
VAR(uint16, GMAIN_VAR) GMAIN_u16IuNegtiveSum;
VAR(uint16, GMAIN_VAR) GMAIN_u16IuPositiveCnt;
VAR(uint16, GMAIN_VAR) GMAIN_u16IuPositiveSum;
VAR(uint16, GMAIN_VAR) GMAIN_u16PWMPeriodVal = 2499;
VAR(uint16, GMAIN_VAR) GMAIN_u16SpdReadyEstCnt;
VAR(uint16, GMAIN_VAR) GMAIN_u16VadcBhv;

VAR(uint32,GMAIN_VAR) GMAIN_startTime;
VAR(uint32,GMAIN_VAR) GMAIN_EndTime;
VAR(uint32,GMAIN_VAR) GMAIN_TotalTime;

VAR(uint8, GMAIN_VAR) GMAIN_u8DEV_Fault[GMAIN_FaultCodeNum_COLS] = {0};
VAR(volatile sint32, GMAIN_VAR) GMAIN_as32OCTrimNvm[GMAIN_AS32OCTRIMNVM_COLS] = {0};
VAR(sint32, GMAIN_VAR) GMAIN_s32Email2PosTreqDiff;
VAR(sint32, GMAIN_VAR) GMAIN_s32PosA2BDeltTime;
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
