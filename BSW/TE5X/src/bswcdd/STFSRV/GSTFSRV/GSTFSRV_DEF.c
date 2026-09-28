/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GSTFSRV                                                  */
/*                                                                            */
/* !Module          : GSTFSRV                                                  */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : GSTFSRV_DEF.C                                            */
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
#include "GSTFSRV.h"
#include "GSTFSRV_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define GSTFSRV_CALIB_START_SEC_CONST_BOOL
#include "GSTFSRV_MemMap.h"
CONST(boolean, GSTFSRV_CALIB) GESM_bPowerOffModeInhC = 0;
#define GSTFSRV_CALIB_STOP_SEC_CONST_BOOL
#include "GSTFSRV_MemMap.h"

#define GSTFSRV_CALIB_START_SEC_CONST_16
#include "GSTFSRV_MemMap.h"
CONST(uint16, GSTFSRV_CALIB) GESM_ku16AfterrunToutCntC = 500;
#define GSTFSRV_CALIB_STOP_SEC_CONST_16
#include "GSTFSRV_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define GSTFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint16, GSTFSRV_VAR) GESM_EsmMode;
VAR(boolean, GSTFSRV_VAR) GESM_bAfterrunFin;
VAR(boolean, GSTFSRV_VAR) GESM_bAfterrunReq;
VAR(boolean, GSTFSRV_VAR) GESM_bCallAppliOn;
VAR(boolean, GSTFSRV_VAR) GESM_bMcuEnaReq;
VAR(boolean, GSTFSRV_VAR) GESM_bPwrDnReadyFlg;
VAR(boolean, GSTFSRV_VAR) GESM_bPwrLNfClrFltFinsh;
VAR(uint8, GSTFSRV_VAR) GESM_u8AllowPwrDnDelay;
VAR(uint8, GSTFSRV_VAR) GESM_u8PwrLNfStep;
VAR(uint8, GSTFSRV_VAR) GESM_u8PwrOffTim;
VAR(uint16, GSTFSRV_VAR) GESM_OpFtState;
VAR(uint16, GSTFSRV_VAR) GESM_OpNfState;
VAR(uint16, GSTFSRV_VAR) GESM_PwrLFtState;
VAR(uint16, GSTFSRV_VAR) GESM_PwrLNfState;
VAR(uint16, GSTFSRV_VAR) GESM_u16OpDelayTime;
VAR(uint16, GSTFSRV_VAR) GESM_u16OpTimeout;
VAR(uint16, GSTFSRV_VAR) GESM_StpIIFtState;
VAR(uint16, GSTFSRV_VAR) GESM_StpIINfState;
VAR(uint16, GSTFSRV_VAR) GESM_StpIState;
VAR(uint16, GSTFSRV_VAR) GESM_u16AfterrunCnt;
VAR(uint16, GSTFSRV_VAR) GESM_u16CmdReq;
VAR(uint16, GSTFSRV_VAR) GESM_u16CmdReqNm1;
VAR(uint16, GSTFSRV_VAR) GESM_u16CmdRes;
VAR(uint8, GSTFSRV_VAR) GESM_u8RestartDelayCnt;
#define GSTFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
