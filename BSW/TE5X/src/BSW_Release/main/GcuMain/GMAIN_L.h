/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GMAIN                                                   */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : GMAIN                                                   */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : GMAIN_L.H                                               */
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

#ifndef GMAIN_L_H
#define GMAIN_L_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define GMAIN_FaultCodeNum_COLS                 ( 16 )

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define MAIN_CALIB_START_SEC_CONST_BOOL
#include "MAIN_MemMap.h"
extern CONST(boolean, GMAIN_CALIB) GMAIN_HARDBenchOnC;
extern CONST(boolean, GMAIN_CALIB) GMAIN_VSIBenchOnWriteDataC;
#define MAIN_CALIB_STOP_SEC_CONST_BOOL
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_32
#include "MAIN_MemMap.h"
extern CONST(float32, GMAIN_CALIB) GMAIN_f32UvwOvCurrThdC;
extern CONST(uint32, GMAIN_CALIB) GMAIN_u32VSICntCkreqESMStartedC;
extern CONST(uint32, GMAIN_CALIB) GMAIN_u32VSICntCkreqVSIStartedC;
extern CONST(sint32, GMAIN_CALIB) GMAIN_s32CurHardDelayC;
extern CONST(sint32, GMAIN_CALIB) GMAIN_s32ResHardDelayC;
extern CONST(sint32, GMAIN_CALIB) GMAIN_s32SampleDelayC;
#define MAIN_CALIB_STOP_SEC_CONST_32
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_8
#include "MAIN_MemMap.h"
extern CONST(uint8, GMAIN_CALIB) GMAIN_u8IgbtFltConfirmCntC;
#define MAIN_CALIB_STOP_SEC_CONST_8
#include "MAIN_MemMap.h"

#define MAIN_CALIB_START_SEC_CONST_16
#include "MAIN_MemMap.h"
extern CONST(uint16, GMAIN_CALIB) GMAIN_ku16SpdReadyEstConfirmC;
extern CONST(uint16, GMAIN_CALIB) GMAIN_u16OverBhvThdC;
#define MAIN_CALIB_STOP_SEC_CONST_16
#include "MAIN_MemMap.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"
extern VAR(boolean, GMAIN_VAR) GMAIN_bAkdAfterAscReq;
extern VAR(boolean, GMAIN_VAR) GMAIN_bBswReadySts;
extern VAR(boolean, GMAIN_VAR) GMAIN_bResExcFltDetEna;
extern VAR(boolean, GMAIN_VAR) GMAIN_bSoftOvBhvFlg;
extern VAR(boolean, GMAIN_VAR) GMAIN_bSoftOvCurrPhsUFlg;
extern VAR(boolean, GMAIN_VAR) GMAIN_bSoftOvCurrPhsVFlg;
extern VAR(boolean, GMAIN_VAR) GMAIN_bSoftOvCurrPhsWFlg;
extern VAR(volatile boolean, GMAIN_VAR) GMAIN_bSpdReadyEst;
extern VAR(boolean, GMAIN_VAR) GMAIN_bSpeedReadyFlg;
extern VAR(boolean, GMAIN_VAR) GMAIN_bProgConditionOk;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32ElecSpeedRds;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailElecSpeedRds;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailErrThetaRdSurPi;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailMecaSpeedRds;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailMecaSpeedRpm;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32EmailThetaElecRdSurPi;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32ErrThetaRdSurPi;
extern VAR(float32, GMAIN_VAR) GMAIN_f32IuFrequency;
extern VAR(float32, GMAIN_VAR) GMAIN_f32IuPeriod;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32MecaSpeedRds;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32MecaSpeedRpm;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32MotSpdEst;
extern VAR(float32, GMAIN_VAR) GMAIN_f32PWMDutyUPhys;
extern VAR(float32, GMAIN_VAR) GMAIN_f32PWMDutyVPhys;
extern VAR(float32, GMAIN_VAR) GMAIN_f32PWMDutyWPhys;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32ThetaElecRdSurPi;
extern VAR(volatile float32, GMAIN_VAR) GMAIN_f32VsiPwmPeriod;
extern VAR(uint32, GMAIN_VAR) GMAIN_u32EmailCkreq;
extern VAR(volatile uint32, GMAIN_VAR) GMAIN_u32EmailPosATimeStamp;
extern VAR(uint32, GMAIN_VAR) GMAIN_u32IuCycleTim;
extern VAR(volatile uint32, GMAIN_VAR) GMAIN_u32PosATimeStamp;
extern VAR(volatile uint32, GMAIN_VAR) GMAIN_u32PosBTimeStamp;
extern VAR(uint32, GMAIN_VAR) GMAIN_u32PosTreatCkreq;
extern VAR(uint32, GMAIN_VAR) GMAIN_u32TestVar2;
extern VAR(uint8, GMAIN_VAR) GMAIN_u8DEV_Fault[GMAIN_FaultCodeNum_COLS];
extern VAR(volatile uint8, GMAIN_VAR) GMAIN_u8IgbtHighFltCnt;
extern VAR(volatile uint8, GMAIN_VAR) GMAIN_u8IgbtLowFltCnt;
extern VAR(volatile uint8, GMAIN_VAR) GMAIN_u8StopCacheFreezeFrameCnt;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16IuCycleCnt;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16IuMiddleCnt;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16IuMiddleSum;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16IuNegtiveCnt;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16IuNegtiveSum;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16IuPositiveCnt;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16IuPositiveSum;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16SpdReadyEstCnt;
extern VAR(uint16, GMAIN_VAR) GMAIN_u16VadcBhv;

extern VAR(sint32, GMAIN_VAR) GMAIN_s32Email2PosTreqDiff;
extern VAR(sint32, GMAIN_VAR) GMAIN_s32PosA2BDeltTime;
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsSwVerVeh[13];         /* F189 */
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsSwVerSup[21];         /* F195 */
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsOEMPartNum[13];       /* F187 */
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsManufPartNum[12];     /* F087 */
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsSupplHwVersion[8];    /* F193 */
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsManufHwVersion[13];   /* F089 */
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsSupplyerId[10];       /* F18A */
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsEcuName[10];          /* F197 */
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsEcuSerialNum[12];     /* F18C */
extern VAR(uint8,GMAIN_VAR) GMAIN_u8UdsBootVersion[16];      /* F180 */
#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(boolean, GMAIN_CODE) GMAIN_bSpeedReadyMng(void);
FUNC(void, GMAIN_CODE) GMAIN_vidMotorSpeedEst(const float);

#endif /* GMAIN_L_H */

/*-------------------------------- end of file -------------------------------*/
