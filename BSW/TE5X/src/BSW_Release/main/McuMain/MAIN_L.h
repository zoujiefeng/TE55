/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : MAIN                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : MAIN                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : MAIN_L.H                                                */
/*                                                                            */
/* !Scope           : Private                                                 */
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

#ifndef MAIN_L_H
#define MAIN_L_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define MAIN_FaultCodeNum_COLS                 ( 16 )

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"
extern CONST(boolean, MAIN_CALIB) MAIN_bMSGRxToutBenchOnC;
extern CONST(boolean, MAIN_CALIB) MAIN_bComRxDisableFlgByUds;
extern CONST(boolean, MAIN_CALIB) MAIN_HARDBenchOnC;
extern CONST(boolean, MAIN_CALIB) MAIN_MSGRxBenchOnC;
extern CONST(boolean, MAIN_CALIB) MAIN_VSIBenchOnWriteDataC;
extern CONST(boolean, MAIN_CALIB) MAIN_MSGbIsulationTxOnC;
#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"
extern CONST(float32, MAIN_CALIB) MAIN_f32UvwOvCurrThdC;
extern CONST(uint32, MAIN_CALIB) MAIN_u32VSICntCkreqESMStartedC;
extern CONST(uint32, MAIN_CALIB) MAIN_u32VSICntCkreqVSIStartedC;
extern CONST(uint32, MAIN_CALIB) MAIN_ku32ProgFlowSeq01Step01C;
extern CONST(uint32, MAIN_CALIB) MAIN_ku32ProgFlowSeq01Step02C;
extern CONST(uint32, MAIN_CALIB) MAIN_ku32ProgFlowSeq01Step03C;
extern CONST(sint32, MAIN_CALIB) MAIN_s32CurHardDelayC;
extern CONST(sint32, MAIN_CALIB) MAIN_s32ResHardDelayC;
extern CONST(sint32, MAIN_CALIB) MAIN_s32SampleDelayC;
extern CONST(float32, MAIN_CALIB) MAIN_f32PowerdownVoltC;
#define MAIN_CALIB_STOP_SEC_CONST_32
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"
extern CONST(uint8, MAIN_CALIB) MAIN_MSGu8PwModFiltCntC;
extern CONST(uint8, MAIN_CALIB) MAIN_u8IgbtFltConfirmCntC;
#define MAIN_CALIB_STOP_SEC_CONST_8
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_16
#include "MAIN_MemMap.h"
extern CONST(uint16, MAIN_CALIB) MAIN_ku16SpdReadyEstConfirmC;
extern CONST(uint16, MAIN_CALIB) MAIN_u16OverBhvThdC;
#define MAIN_CALIB_STOP_SEC_CONST_16
#include "MAIN_MemMap.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
extern VAR(boolean, MAIN_VAR) MAIN_bAkdAfterAscReq;
extern VAR(boolean, MAIN_VAR) MAIN_bBswReadySts;
extern VAR(boolean, MAIN_VAR) MAIN_bResExcFltDetEna;
extern VAR(boolean, MAIN_VAR) MAIN_bSoftOvBhvFlg;
extern VAR(boolean, MAIN_VAR) MAIN_bSoftOvCurrPhsUFlg;
extern VAR(boolean, MAIN_VAR) MAIN_bSoftOvCurrPhsVFlg;
extern VAR(boolean, MAIN_VAR) MAIN_bSoftOvCurrPhsWFlg;
extern VAR(volatile boolean, MAIN_VAR) MAIN_bSpdReadyEst;
extern VAR(boolean, MAIN_VAR) MAIN_bSpeedReadyFlg;
extern VAR(boolean, MAIN_VAR) MAIN_bProgConditionOk;
extern VAR(boolean, MAIN_VAR) MAIN_bCurGainStoreResult;
extern VAR(boolean, MAIN_VAR) MAIN_bDflashWriteReq;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32ElecSpeedRds;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32EmailElecSpeedRds;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32EmailErrThetaRdSurPi;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32EmailMecaSpeedRds;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32EmailMecaSpeedRpm;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32EmailThetaElecRdSurPi;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32ErrThetaRdSurPi;
extern VAR(float32, MAIN_VAR) MAIN_f32IuFrequency;
extern VAR(float32, MAIN_VAR) MAIN_f32IuPeriod;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32MecaSpeedRds;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32MecaSpeedRpm;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32MotSpdEst;
extern VAR(float32, MAIN_VAR) MAIN_f32PWMDutyUPhys;
extern VAR(float32, MAIN_VAR) MAIN_f32PWMDutyVPhys;
extern VAR(float32, MAIN_VAR) MAIN_f32PWMDutyWPhys;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32ThetaElecRdSurPi;
extern VAR(volatile float32, MAIN_VAR) MAIN_f32VsiPwmPeriod;
extern VAR(uint32, MAIN_VAR) MAIN_u32EmailCkreq;
extern VAR(volatile uint32, MAIN_VAR) MAIN_u32EmailPosATimeStamp;
extern VAR(uint32, MAIN_VAR) MAIN_u32IuCycleTim;
extern VAR(volatile uint32, MAIN_VAR) MAIN_u32PosATimeStamp;
extern VAR(volatile uint32, MAIN_VAR) MAIN_u32PosBTimeStamp;
extern VAR(uint32, MAIN_VAR) MAIN_u32PosTreatCkreq;
extern VAR(uint32, MAIN_VAR) MAIN_u32TestVar2;
extern VAR(uint32, MAIN_VAR) MAIN_u32WaitValueVSITreatment;
extern VAR(uint8, MAIN_VAR) MAIN_u8DEV_Fault[MAIN_FaultCodeNum_COLS];
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8bcm_pepsPwrMode;
extern VAR(uint8, MAIN_VAR) MAIN_u8TestVar1;
extern VAR(volatile uint8, MAIN_VAR) MAIN_u8IgbtHighFltCnt;
extern VAR(volatile uint8, MAIN_VAR) MAIN_u8IgbtLowFltCnt;
extern VAR(uint16, MAIN_VAR) MAIN_u16IuCycleCnt;
extern VAR(uint16, MAIN_VAR) MAIN_u16IuMiddleCnt;
extern VAR(uint16, MAIN_VAR) MAIN_u16IuMiddleSum;
extern VAR(uint16, MAIN_VAR) MAIN_u16IuNegtiveCnt;
extern VAR(uint16, MAIN_VAR) MAIN_u16IuNegtiveSum;
extern VAR(uint16, MAIN_VAR) MAIN_u16IuPositiveCnt;
extern VAR(uint16, MAIN_VAR) MAIN_u16IuPositiveSum;
extern VAR(uint16, MAIN_VAR) MAIN_u16SpdReadyEstCnt;
extern VAR(uint16, MAIN_VAR) MAIN_u16VadcBhv;

extern VAR(uint16, MAIN_VAR) MAIN_u16HVInputCheck;   
extern VAR(uint16, MAIN_VAR) MAIN_u16SuperStructureCheck;
extern VAR(uint16, MAIN_VAR) MAIN_u16DCACResevedCheck;   
extern VAR(uint16, MAIN_VAR) MAIN_u16DCACInverterCheck;  
extern VAR(uint16, MAIN_VAR) MAIN_u16AirConditionerCheck;
extern VAR(uint16, MAIN_VAR) MAIN_u16HVFanCheck;         
extern VAR(uint16, MAIN_VAR) MAIN_u16WaterCoolingCheck;  
extern VAR(uint16, MAIN_VAR) MAIN_u16BatHeatPTCCheck;    

extern VAR(uint32, MAIN_VAR) OBD_u32CalVerifyNum;

extern VAR(sint32, MAIN_VAR) MAIN_s32Email2PosTreqDiff;
extern VAR(sint32, MAIN_VAR) MAIN_s32PosA2BDeltTime;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8PwModOnCnt;
extern VAR(uint8, MAIN_VAR) MAIN_MSGu8PwModOffCnt;
extern uint8 UDS_au8CalibSoftId[16];
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsSwVerVeh[13];         /* F189 */
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsSwVerSup[21];         /* F195 */
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsOEMPartNum[13];       /* F187 */
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsManufPartNum[12];     /* F087 */
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsSupplHwVersion[8];    /* F193 */
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsManufHwVersion[13];   /* F089 */
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsSupplyerId[10];       /* F18A */
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsEcuName[10];          /* F197 */
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsEcuSerialNum[12];     /* F18C */
extern VAR(uint8,MAIN_VAR) MAIN_u8UdsBootVersion[16];      /* F180 */
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(boolean, MAIN_CODE) MAIN_bSpeedReadyMng(void);
FUNC(void, MAIN_CODE) MAIN_vidMotorSpeedEst(const float);
FUNC(void, MAIN_CODE) MAIN_Wait(uint32 time);
#endif /* MAIN_L_H */

/*-------------------------------- end of file -------------------------------*/
