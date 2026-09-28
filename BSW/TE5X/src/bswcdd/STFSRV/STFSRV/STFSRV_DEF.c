/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : STFSRV                                                  */
/*                                                                            */
/* !Module          : STFSRV                                                  */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : STFSRV_DEF.C                                            */
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
#include "STFSRV.h"
#include "STFSRV_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define STFSRV_CALIB_START_SEC_CONST_BOOL
#include "STFSRV_MemMap.h"
CONST(boolean, STFSRV_CALIB) ESM_bPowerOffModeInhC = 0;
#define STFSRV_CALIB_STOP_SEC_CONST_BOOL
#include "STFSRV_MemMap.h"

#define STFSRV_CALIB_START_SEC_CONST_16
#include "STFSRV_MemMap.h"
CONST(uint16, STFSRV_CALIB) ESM_ku16AfterrunToutCntC = 500;
#define STFSRV_CALIB_STOP_SEC_CONST_16
#include "STFSRV_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define STFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint16, STFSRV_VAR) ESM_EsmMode;
VAR(boolean, STFSRV_VAR) ESM_bAfterrunFin;
VAR(boolean, STFSRV_VAR) ESM_bAfterrunReq;
VAR(boolean, STFSRV_VAR) ESM_bCallAppliOn;
VAR(boolean, STFSRV_VAR) ESM_bMcuEnaReq;
VAR(boolean, STFSRV_VAR) ESM_bPwrDnReadyFlg;
VAR(boolean, STFSRV_VAR) ESM_bPwrLNfClrFltFinsh;
VAR(uint8, STFSRV_VAR) ESM_u8AllowPwrDnDelay;
VAR(uint8, STFSRV_VAR) ESM_u8PwrLNfStep;
VAR(uint8, STFSRV_VAR) ESM_u8PwrOffTim;
VAR(uint16, STFSRV_VAR) ESM_u16MsgOffDelay;
VAR(uint16, STFSRV_VAR) ESM_OpFtState;
VAR(uint16, STFSRV_VAR) ESM_OpNfState;
VAR(uint16, STFSRV_VAR) ESM_PwrLFtState;
VAR(uint16, STFSRV_VAR) ESM_PwrLNfState;
VAR(uint16, STFSRV_VAR) ESM_u16OpDelayTime;
VAR(uint16, STFSRV_VAR) ESM_u16OpTimeout;
VAR(uint16, STFSRV_VAR) ESM_StpIIFtState;
VAR(uint16, STFSRV_VAR) ESM_StpIINfState;
VAR(uint16, STFSRV_VAR) ESM_StpIState;
VAR(uint16, STFSRV_VAR) ESM_u16CmdReq;
VAR(uint16, STFSRV_VAR) ESM_u16CmdReqNm1;
VAR(uint16, STFSRV_VAR) ESM_u16CmdRes;
VAR(uint8, STFSRV_VAR) ESM_u8RestartDelayCnt;
#define STFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
