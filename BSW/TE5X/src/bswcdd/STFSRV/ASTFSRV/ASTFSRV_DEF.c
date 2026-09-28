/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : ASTFSRV                                                  */
/*                                                                            */
/* !Module          : ASTFSRV                                                  */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : ASTFSRV_DEF.C                                            */
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
#include "ASTFSRV.h"
#include "ASTFSRV_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define ASTFSRV_CALIB_START_SEC_CONST_BOOL
#include "ASTFSRV_MemMap.h"
CONST(boolean, ASTFSRV_CALIB) AESM_bPowerOffModeInhC = 0;
#define ASTFSRV_CALIB_STOP_SEC_CONST_BOOL
#include "ASTFSRV_MemMap.h"

#define ASTFSRV_CALIB_START_SEC_CONST_16
#include "ASTFSRV_MemMap.h"
CONST(uint16, ASTFSRV_CALIB) AESM_ku16AfterrunToutCntC = 500;
#define ASTFSRV_CALIB_STOP_SEC_CONST_16
#include "ASTFSRV_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define ASTFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint16, ASTFSRV_VAR) AESM_EsmMode;
VAR(boolean, ASTFSRV_VAR) AESM_bAfterrunFin;
VAR(boolean, ASTFSRV_VAR) AESM_bAfterrunReq;
VAR(boolean, ASTFSRV_VAR) AESM_bCallAppliOn;
VAR(boolean, ASTFSRV_VAR) AESM_bMcuEnaReq;
VAR(boolean, ASTFSRV_VAR) AESM_bPwrDnReadyFlg;
VAR(boolean, ASTFSRV_VAR) AESM_bPwrLNfClrFltFinsh;
VAR(uint8, ASTFSRV_VAR) AESM_u8AllowPwrDnDelay;
VAR(uint8, ASTFSRV_VAR) AESM_u8PwrLNfStep;
VAR(uint8, ASTFSRV_VAR) AESM_u8PwrOffTim;
VAR(uint16, ASTFSRV_VAR) AESM_OpFtState;
VAR(uint16, ASTFSRV_VAR) AESM_OpNfState;
VAR(uint16, ASTFSRV_VAR) AESM_PwrLFtState;
VAR(uint16, ASTFSRV_VAR) AESM_PwrLNfState;
VAR(uint16, ASTFSRV_VAR) AESM_u16OpDelayTime;
VAR(uint16, ASTFSRV_VAR) AESM_u16OpTimeout;
VAR(uint16, ASTFSRV_VAR) AESM_StpIIFtState;
VAR(uint16, ASTFSRV_VAR) AESM_StpIINfState;
VAR(uint16, ASTFSRV_VAR) AESM_StpIState;
VAR(uint16, ASTFSRV_VAR) AESM_u16AfterrunCnt;
VAR(uint16, ASTFSRV_VAR) AESM_u16CmdReq;
VAR(uint16, ASTFSRV_VAR) AESM_u16CmdReqNm1;
VAR(uint16, ASTFSRV_VAR) AESM_u16CmdRes;
VAR(uint8, ASTFSRV_VAR) AESM_u8RestartDelayCnt;
#define ASTFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
