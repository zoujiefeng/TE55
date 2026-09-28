/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : CCU6                                                    */
/*                                                                            */
/* !Module          : CCU6                                                    */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : CCU6_DEF.C                                              */
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
#include "CCU6.h"
#include "CCU6_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define CCU6_CALIB_START_SEC_CONST_BOOL
#include "CCU6_MemMap.h"
CONST(boolean, CCU6_CALIB) CCU6_bAlimFreqChgEnaC = 0x00;
CONST(boolean, CCU6_CALIB) CCU6_bDualSmpEnaC = 0x01;
CONST(boolean, CCU6_CALIB) CCU6_bHwOvcFltDetEnaC = 0x00;
CONST(boolean, CCU6_CALIB) CCU6_bHwPinAscEnaC = 0x00;
CONST(float32, CCU6_CALIB) CCU6_f32DrvClkDutyThdHighC = 0.7;
CONST(float32, CCU6_CALIB) CCU6_f32DrvClkDutyThdLowC = 0.2;
CONST(float32, CCU6_CALIB) CCU6_kf32MidPointDutyHC = 0.8;
CONST(float32, CCU6_CALIB) CCU6_kf32MidPointDutyLC = 0.2;
CONST(uint8, CCU6_CALIB) CCU6_ku8AscRecoverCntMaxC = 100;
CONST(uint8, CCU6_CALIB) CCU6_ku8OvcRcvCntMaxC = 10;
CONST(uint8, CCU6_CALIB) CCU6_ku8PwmMidPointFaultC = 20;
CONST(uint8, CCU6_CALIB) CCU6_ku8PwmMidPotStartDelayC = 0x03;
CONST(boolean, CCU6_CALIB) CCU6_kbDrvBdClkEnaC = 0x01;
#define CCU6_CALIB_STOP_SEC_CONST_BOOL
#include "CCU6_MemMap.h"

#define CCU6_CALIB_START_SEC_CONST_16
#include "CCU6_MemMap.h"
CONST(uint16, CCU6_CALIB) CCU6_ku16AlimDutyCycRawC = 22282;
#define CCU6_CALIB_STOP_SEC_CONST_16
#include "CCU6_MemMap.h"

#define CCU6_CALIB_START_SEC_CONST_32
#include "CCU6_MemMap.h"
CONST(uint32, CCU6_CALIB) CCU6_ku32AlimFreqRawC = 83;
CONST(float32, CCU6_CALIB) CCU6_kf32DeadTimeC = 0.03;    /* dead time 2.5us;    Previous value: 0.025  */
#define CCU6_CALIB_STOP_SEC_CONST_32
#include "CCU6_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define CCU6_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(boolean, CCU6_VAR) CCU6_bAkdAfterAscReq;
VAR(boolean, CCU6_VAR) CCU6_bClrTrapReq;
VAR(boolean, CCU6_VAR) CCU6_bHwFaultDcOvVolt;
VAR(boolean, CCU6_VAR) CCU6_bHwFaultIgbtH;
VAR(boolean, CCU6_VAR) CCU6_bHwFaultIgbtL;
VAR(boolean, CCU6_VAR) CCU6_bHwFaultOvcU;
VAR(boolean, CCU6_VAR) CCU6_bHwFaultOvcV;
VAR(boolean, CCU6_VAR) CCU6_bHwFaultOvcW;
VAR(volatile boolean, CCU6_VAR) CCU6_bIgbtHighSideShort;
VAR(volatile boolean, CCU6_VAR) CCU6_bIgbtLowSideShort;
VAR(boolean, CCU6_VAR) CCU6_bIsCCU6Start;
VAR(boolean, CCU6_VAR) CCU6_bIuvwCompReq;
VAR(boolean, CCU6_VAR) CCU6_bMotorSpdRdy;
VAR(volatile boolean, CCU6_VAR) CCU6_bP5VDiagReinitCmd;
VAR(volatile boolean, CCU6_VAR) CCU6_bP5VHSFltFlg;
VAR(volatile boolean, CCU6_VAR) CCU6_bP5VLSFltFlg;
VAR(volatile boolean, CCU6_VAR) CCU6_bPwmMidPointU;
VAR(volatile boolean, CCU6_VAR) CCU6_bPwmMidPointV;
VAR(volatile boolean, CCU6_VAR) CCU6_bPwmMidPointW;
VAR(volatile boolean, CCU6_VAR) CCU6_bPwmOnGoingFlg;
VAR(boolean, CCU6_VAR) CCU6_bT12ZeroMatchFlg;
VAR(boolean, CCU6_VAR) CCU6_bTrapTrigger;
VAR(volatile float32, CCU6_VAR) CCU6_f32HighVolPhys;
VAR(volatile float32, CCU6_VAR) CCU6_f32PwmDutyPhysUZ;
VAR(volatile float32, CCU6_VAR) CCU6_f32PwmDutyPhysVZ;
VAR(volatile float32, CCU6_VAR) CCU6_f32PwmDutyPhysWZ;
VAR(uint32, CCU6_VAR) CCU6_au32PWMOnTime[CCU6_AU32PWMONTIME_COLS] = {0};
VAR(volatile uint32, CCU6_VAR) CCU6_u32DrvClkHsDutyRaw = 0x00;
VAR(volatile uint32, CCU6_VAR) CCU6_u32DrvClkHsPerdRaw = 0x00;
VAR(volatile uint32, CCU6_VAR) CCU6_u32DrvClkLsDutyRaw = 0x00;
VAR(volatile uint32, CCU6_VAR) CCU6_u32DrvClkLsPerdRaw = 0x00;
VAR(volatile uint32, CCU6_VAR) CCU6_u32TrapCreq = 0;
VAR(volatile uint8, CCU6_VAR) CCU6_u8AscRecoverCnt = 0x00;
VAR(volatile uint8, CCU6_VAR) CCU6_u8OvcRcvCnt = 0x00;
VAR(uint8, CCU6_VAR) CCU6_u8McuAscSttStep = 0x00;
VAR(uint8, CCU6_VAR) CCU6_u8McuAscType = 0x00;
VAR(volatile uint8, CCU6_VAR) CCU6_u8P5VHSFltCnt = 0x00;
VAR(volatile uint8, CCU6_VAR) CCU6_u8P5VLSFltCnt = 0x00;
VAR(volatile uint8, CCU6_VAR) CCU6_u8P5VPowerMngStt = 0x00;
VAR(volatile uint8, CCU6_VAR) CCU6_u8P5VSelfTstTimCnt = 0x00;
VAR(volatile uint8, CCU6_VAR) CCU6_u8StartMidPotDetCnt = 0x00;
VAR(uint8, CCU6_VAR) CCU6_u8PreTestStep = 0x00;
VAR(uint8, CCU6_VAR) CCU6_u8PwmState = 0x00;
VAR(uint16, CCU6_VAR) CCU6_u16AlimPowerOnDelay = 0x00;
VAR(uint16, CCU6_VAR) CCU6_u16CCU6T13CmpVal = 4999;
VAR(volatile uint16, CCU6_VAR) CCU6_u16HighVolAdc = 0x00;
VAR(uint16, CCU6_VAR) CCU6_u16McuAscSttDelay = 0x00;
VAR(volatile uint16, CCU6_VAR) CCU6_u16P5VHSAdc = 0x00;
VAR(uint16, CCU6_VAR) CCU6_u16PowerOnDelay = 0x00;
VAR(uint16, CCU6_VAR) CCU6_u16PwmMaxDutyCyc = 0x00;
VAR(volatile uint16, CCU6_VAR) CCU6_u16PwmMidPointErrCnt = 0x00;
VAR(uint16, CCU6_VAR) CCU6_u16PwmMinDutyCyc = 0x00;
VAR(uint16, CCU6_VAR) CCU6_u16PwmModReq = 0x00;
VAR(volatile uint16, CCU6_VAR) CCU6_u16T12CntVal = 0x00;
VAR(volatile uint16, CCU6_VAR) CCU6_u16T12PeriodVal = 4999;
VAR(uint16, CCU6_VAR) CCU6_u16T13PeriodVal = 0x00;
VAR(float32, CCU6_VAR) CCU6_f32PwmDutyTstU = 0.25;
VAR(float32, CCU6_VAR) CCU6_f32PwmDutyTstV = 0.5;
VAR(float32, CCU6_VAR) CCU6_f32PwmDutyTstW = 0.75;
#define CCU6_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
