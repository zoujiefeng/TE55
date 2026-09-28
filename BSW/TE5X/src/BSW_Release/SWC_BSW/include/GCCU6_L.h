/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GCCU6                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : GCCU6                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : GCCU6_L.H                                                */
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

#ifndef GCCU6_L_H
#define GCCU6_L_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define GCCU6_AU32PWMONTIME_COLS                ( 3 )


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define CCU6_CALIB_START_SEC_CONST_BOOL
#include "CCU6_MemMap.h"
extern CONST(boolean, GCCU6_CALIB) GCCU6_bAlimFreqChgEnaC;
extern CONST(boolean, GCCU6_CALIB) GCCU6_bDualSmpEnaC;
extern CONST(boolean, GCCU6_CALIB) GCCU6_bHwOvcFltDetEnaC;
extern CONST(boolean, GCCU6_CALIB) GCCU6_bHwPinAscEnaC;
extern CONST(float32, GCCU6_CALIB) GCCU6_f32DrvClkDutyThdHighC;
extern CONST(float32, GCCU6_CALIB) GCCU6_f32DrvClkDutyThdLowC;
extern CONST(float32, GCCU6_CALIB) GCCU6_kf32MidPointDutyHC;
extern CONST(float32, GCCU6_CALIB) GCCU6_kf32MidPointDutyLC;
extern CONST(uint8, GCCU6_CALIB) GCCU6_ku8AscRecoverCntMaxC;
extern CONST(uint8, GCCU6_CALIB) GCCU6_ku8OvcRcvCntMaxC;
extern CONST(uint8, GCCU6_CALIB) GCCU6_ku8PwmMidPointFaultC;
extern CONST(uint8, GCCU6_CALIB) GCCU6_ku8PwmMidPotStartDelayC;
extern CONST(boolean, GCCU6_CALIB) GCCU6_kbDrvBdClkEnaC;
#define CCU6_CALIB_STOP_SEC_CONST_BOOL
#include "CCU6_MemMap.h"

#define CCU6_CALIB_START_SEC_CONST_16
#include "CCU6_MemMap.h"
extern CONST(uint16, GCCU6_CALIB) GCCU6_ku16AlimDutyCycRawC;
#define CCU6_CALIB_STOP_SEC_CONST_16
#include "CCU6_MemMap.h"

#define CCU6_CALIB_START_SEC_CONST_32
#include "CCU6_MemMap.h"
extern CONST(uint32, GCCU6_CALIB) GCCU6_ku32AlimFreqRawC;
#define CCU6_CALIB_STOP_SEC_CONST_32
#include "CCU6_MemMap.h"



/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define CCU6_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(boolean, GCCU6_VAR) GCCU6_bAkdAfterAscReq;
extern VAR(boolean, GCCU6_VAR) GCCU6_bClrTrapReq;
extern VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultDcOvVolt;
extern VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultIgbtH;
extern VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultIgbtL;
extern VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultOvcU;
extern VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultOvcV;
extern VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultOvcW;
extern VAR(volatile boolean, GCCU6_VAR) GCCU6_bIgbtHighSideShort;
extern VAR(volatile boolean, GCCU6_VAR) GCCU6_bIgbtLowSideShort;
extern VAR(boolean, GCCU6_VAR) GCCU6_bIsGCCU6Start;
extern VAR(boolean, GCCU6_VAR) GCCU6_bIuvwCompReq;
extern VAR(boolean, GCCU6_VAR) GCCU6_bMotorSpdRdy;
extern VAR(volatile boolean, GCCU6_VAR) GCCU6_bP5VDiagReinitCmd;
extern VAR(volatile boolean, GCCU6_VAR) GCCU6_bP5VHSFltFlg;
extern VAR(volatile boolean, GCCU6_VAR) GCCU6_bP5VLSFltFlg;
extern VAR(volatile boolean, GCCU6_VAR) GCCU6_bPwmMidPointU;
extern VAR(volatile boolean, GCCU6_VAR) GCCU6_bPwmMidPointV;
extern VAR(volatile boolean, GCCU6_VAR) GCCU6_bPwmMidPointW;
extern VAR(volatile boolean, GCCU6_VAR) GCCU6_bPwmOnGoingFlg;
extern VAR(boolean, GCCU6_VAR) GCCU6_bT12ZeroMatchFlg;
extern VAR(boolean, GCCU6_VAR) GCCU6_bTrapTrigger;
extern VAR(volatile float32, GCCU6_VAR) GCCU6_f32DrvClkHsDuty;
extern VAR(volatile float32, GCCU6_VAR) GCCU6_f32DrvClkLsDuty;
extern VAR(volatile float32, GCCU6_VAR) GCCU6_f32HighVolPhys;
extern VAR(volatile float32, GCCU6_VAR) GCCU6_f32PwmDutyPhysUZ;
extern VAR(volatile float32, GCCU6_VAR) GCCU6_f32PwmDutyPhysVZ;
extern VAR(volatile float32, GCCU6_VAR) GCCU6_f32PwmDutyPhysWZ;
extern VAR(uint32, GCCU6_VAR) GCCU6_au32PWMOnTime[GCCU6_AU32PWMONTIME_COLS];
extern VAR(volatile uint32, GCCU6_VAR) GCCU6_u32DrvClkHsDutyRaw;
extern VAR(volatile uint32, GCCU6_VAR) GCCU6_u32DrvClkHsPerdRaw;
extern VAR(volatile uint32, GCCU6_VAR) GCCU6_u32DrvClkLsDutyRaw;
extern VAR(volatile uint32, GCCU6_VAR) GCCU6_u32DrvClkLsPerdRaw;
extern VAR(volatile uint32, GCCU6_VAR) GCCU6_u32TrapCreq;
extern VAR(volatile uint8, GCCU6_VAR) GCCU6_u8AscRecoverCnt;
extern VAR(volatile uint8, GCCU6_VAR) GCCU6_u8OvcRcvCnt;
extern VAR(uint8, GCCU6_VAR) GCCU6_u8McuAscSttStep;
extern VAR(uint8, GCCU6_VAR) GCCU6_u8McuAscType;
extern VAR(volatile uint8, GCCU6_VAR) GCCU6_u8P5VHSFltCnt;
extern VAR(volatile uint8, GCCU6_VAR) GCCU6_u8P5VLSFltCnt;
extern VAR(volatile uint8, GCCU6_VAR) GCCU6_u8P5VPowerMngStt;
extern VAR(volatile uint8, GCCU6_VAR) GCCU6_u8P5VSelfTstTimCnt;
extern VAR(volatile uint8, GCCU6_VAR) GCCU6_u8StartMidPotDetCnt;
extern VAR(uint8, GCCU6_VAR) GCCU6_u8PreTestStep;
extern VAR(uint8, GCCU6_VAR) GCCU6_u8PwmState;
extern VAR(uint16, GCCU6_VAR) GCCU6_u16AlimPowerOnDelay;
extern VAR(uint16, GCCU6_VAR) GCCU6_u16GCCU6T13CmpVal;
extern VAR(volatile uint16, GCCU6_VAR) GCCU6_u16HighVolAdc;
extern VAR(uint16, GCCU6_VAR) GCCU6_u16McuAscSttDelay;
extern VAR(volatile uint16, GCCU6_VAR) GCCU6_u16P5VHSAdc;
extern VAR(uint16, GCCU6_VAR) GCCU6_u16PowerOnDelay;
extern VAR(uint16, GCCU6_VAR) GCCU6_u16PwmMaxDutyCyc;
extern VAR(volatile uint16, GCCU6_VAR) GCCU6_u16PwmMidPointErrCnt;
extern VAR(uint16, GCCU6_VAR) GCCU6_u16PwmMinDutyCyc;
extern VAR(uint16, GCCU6_VAR) GCCU6_u16PwmModReq;
extern VAR(volatile uint16, GCCU6_VAR) GCCU6_u16T12CntVal;
extern VAR(volatile uint16, GCCU6_VAR) GCCU6_u16T12PeriodVal;
extern VAR(uint16, GCCU6_VAR) GCCU6_u16T13PeriodVal;
extern VAR(float32, GCCU6_VAR) GCCU6_f32PwmDutyTstU;
extern VAR(float32, GCCU6_VAR) GCCU6_f32PwmDutyTstV;
extern VAR(float32, GCCU6_VAR) GCCU6_f32PwmDutyTstW;
#define CCU6_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(boolean, GCCU6_CODE) GCCU6_bGetAscRecoverCondition(void);
FUNC(void, GCCU6_CODE) GCCU6_vidMcuAscExit(void);
FUNC(void, GCCU6_CODE) GCCU6_vidTryClearTrap(void);
FUNC(void, GCCU6_CODE) GCCU6_vidWait(uint32);


#endif /* GCCU6_L_H */

/*-------------------------------- end of file -------------------------------*/
