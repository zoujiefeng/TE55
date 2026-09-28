/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GCCU6                                                    */
/*                                                                            */
/* !Module          : GCCU6                                                    */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : GCCU6_DEF.C                                              */
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
#include "GCCU6.h"
#include "GCCU6_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define CCU6_CALIB_START_SEC_CONST_BOOL
#include "CCU6_MemMap.h"
CONST(boolean, GCCU6_CALIB) GCCU6_bAlimFreqChgEnaC = 0x00;
CONST(boolean, GCCU6_CALIB) GCCU6_bDualSmpEnaC = 0x01;
CONST(boolean, GCCU6_CALIB) GCCU6_bHwOvcFltDetEnaC = 0x00;
CONST(boolean, GCCU6_CALIB) GCCU6_bHwPinAscEnaC = 0x00;
CONST(float32, GCCU6_CALIB) GCCU6_f32DrvClkDutyThdHighC = 0.7;
CONST(float32, GCCU6_CALIB) GCCU6_f32DrvClkDutyThdLowC = 0.2;
CONST(float32, GCCU6_CALIB) GCCU6_kf32MidPointDutyHC = 0.8;
CONST(float32, GCCU6_CALIB) GCCU6_kf32MidPointDutyLC = 0.2;
CONST(uint8, GCCU6_CALIB) GCCU6_ku8AscRecoverCntMaxC = 100;
CONST(uint8, GCCU6_CALIB) GCCU6_ku8OvcRcvCntMaxC = 10;
CONST(uint8, GCCU6_CALIB) GCCU6_ku8PwmMidPointFaultC = 20;
CONST(uint8, GCCU6_CALIB) GCCU6_ku8PwmMidPotStartDelayC = 0x03;
CONST(boolean, GCCU6_CALIB) GCCU6_kbDrvBdClkEnaC = 0x00;
#define CCU6_CALIB_STOP_SEC_CONST_BOOL
#include "CCU6_MemMap.h"

#define CCU6_CALIB_START_SEC_CONST_16
#include "CCU6_MemMap.h"
CONST(uint16, GCCU6_CALIB) GCCU6_ku16AlimDutyCycRawC = 22282;
#define CCU6_CALIB_STOP_SEC_CONST_16
#include "CCU6_MemMap.h"

#define CCU6_CALIB_START_SEC_CONST_32
#include "CCU6_MemMap.h"
CONST(uint32, GCCU6_CALIB) GCCU6_ku32AlimFreqRawC = 83;
CONST(float32, CCU6_CALIB) GCCU6_kf32DeadTimeC = 0.03;    /* dead time 2.5us;    Previous value: 0.025  */
#define CCU6_CALIB_STOP_SEC_CONST_32
#include "CCU6_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define CCU6_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(boolean, GCCU6_VAR) GCCU6_bAkdAfterAscReq;
VAR(boolean, GCCU6_VAR) GCCU6_bClrTrapReq;
VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultDcOvVolt;
VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultIgbtH;
VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultIgbtL;
VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultOvcU;
VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultOvcV;
VAR(boolean, GCCU6_VAR) GCCU6_bHwFaultOvcW;
VAR(volatile boolean, GCCU6_VAR) GCCU6_bIgbtHighSideShort;
VAR(volatile boolean, GCCU6_VAR) GCCU6_bIgbtLowSideShort;
VAR(boolean, GCCU6_VAR) GCCU6_bIsGCCU6Start;
VAR(boolean, GCCU6_VAR) GCCU6_bIuvwCompReq;
VAR(boolean, GCCU6_VAR) GCCU6_bMotorSpdRdy;
VAR(volatile boolean, GCCU6_VAR) GCCU6_bP5VDiagReinitCmd;
VAR(volatile boolean, GCCU6_VAR) GCCU6_bP5VHSFltFlg;
VAR(volatile boolean, GCCU6_VAR) GCCU6_bP5VLSFltFlg;
VAR(volatile boolean, GCCU6_VAR) GCCU6_bPwmMidPointU;
VAR(volatile boolean, GCCU6_VAR) GCCU6_bPwmMidPointV;
VAR(volatile boolean, GCCU6_VAR) GCCU6_bPwmMidPointW;
VAR(volatile boolean, GCCU6_VAR) GCCU6_bPwmOnGoingFlg;
VAR(boolean, GCCU6_VAR) GCCU6_bT12ZeroMatchFlg;
VAR(boolean, GCCU6_VAR) GCCU6_bTrapTrigger;
VAR(volatile float32, GCCU6_VAR) GCCU6_f32DrvClkHsDuty = 0x00;
VAR(volatile float32, GCCU6_VAR) GCCU6_f32DrvClkLsDuty = 0x00;
VAR(volatile float32, GCCU6_VAR) GCCU6_f32HighVolPhys;
VAR(volatile float32, GCCU6_VAR) GCCU6_f32PwmDutyPhysUZ;
VAR(volatile float32, GCCU6_VAR) GCCU6_f32PwmDutyPhysVZ;
VAR(volatile float32, GCCU6_VAR) GCCU6_f32PwmDutyPhysWZ;
VAR(uint32, GCCU6_VAR) GCCU6_au32PWMOnTime[GCCU6_AU32PWMONTIME_COLS] = {0};
VAR(volatile uint32, GCCU6_VAR) GCCU6_u32DrvClkHsDutyRaw = 0x00;
VAR(volatile uint32, GCCU6_VAR) GCCU6_u32DrvClkHsPerdRaw = 0x00;
VAR(volatile uint32, GCCU6_VAR) GCCU6_u32DrvClkLsDutyRaw = 0x00;
VAR(volatile uint32, GCCU6_VAR) GCCU6_u32DrvClkLsPerdRaw = 0x00;
VAR(volatile uint32, GCCU6_VAR) GCCU6_u32TrapCreq = 0;
VAR(volatile uint8, GCCU6_VAR) GCCU6_u8AscRecoverCnt = 0x00;
VAR(volatile uint8, GCCU6_VAR) GCCU6_u8OvcRcvCnt = 0x00;
VAR(uint8, GCCU6_VAR) GCCU6_u8McuAscSttStep = 0x00;
VAR(uint8, GCCU6_VAR) GCCU6_u8McuAscType = 0x00;
VAR(volatile uint8, GCCU6_VAR) GCCU6_u8P5VHSFltCnt = 0x00;
VAR(volatile uint8, GCCU6_VAR) GCCU6_u8P5VLSFltCnt = 0x00;
VAR(volatile uint8, GCCU6_VAR) GCCU6_u8P5VPowerMngStt = 0x00;
VAR(volatile uint8, GCCU6_VAR) GCCU6_u8P5VSelfTstTimCnt = 0x00;
VAR(volatile uint8, GCCU6_VAR) GCCU6_u8StartMidPotDetCnt = 0x00;
VAR(uint8, GCCU6_VAR) GCCU6_u8PreTestStep = 0x00;
VAR(uint8, GCCU6_VAR) GCCU6_u8PwmState = 0x00;
VAR(uint16, GCCU6_VAR) GCCU6_u16AlimPowerOnDelay = 0x00;
VAR(uint16, GCCU6_VAR) GCCU6_u16GCCU6T13CmpVal = 4999;
VAR(volatile uint16, GCCU6_VAR) GCCU6_u16HighVolAdc = 0x00;
VAR(uint16, GCCU6_VAR) GCCU6_u16McuAscSttDelay = 0x00;
VAR(volatile uint16, GCCU6_VAR) GCCU6_u16P5VHSAdc = 0x00;
VAR(uint16, GCCU6_VAR) GCCU6_u16PowerOnDelay = 0x00;
VAR(uint16, GCCU6_VAR) GCCU6_u16PwmMaxDutyCyc = 0x00;
VAR(volatile uint16, GCCU6_VAR) GCCU6_u16PwmMidPointErrCnt = 0x00;
VAR(uint16, GCCU6_VAR) GCCU6_u16PwmMinDutyCyc = 0x00;
VAR(uint16, GCCU6_VAR) GCCU6_u16PwmModReq = 0x00;
VAR(volatile uint16, GCCU6_VAR) GCCU6_u16T12CntVal = 0x00;
VAR(volatile uint16, GCCU6_VAR) GCCU6_u16T12PeriodVal = 4999;
VAR(uint16, GCCU6_VAR) GCCU6_u16T13PeriodVal = 0x00;
VAR(float32, GCCU6_VAR) GCCU6_f32PwmDutyTstU = 0.25;
VAR(float32, GCCU6_VAR) GCCU6_f32PwmDutyTstV = 0.5;
VAR(float32, GCCU6_VAR) GCCU6_f32PwmDutyTstW = 0.75;
#define CCU6_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
