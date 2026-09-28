/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : OSTFSRV                                                  */
/*                                                                            */
/* !Module          : OSTFSRV                                                  */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : OSTFSRV_DEF.C                                            */
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
#include "OSTFSRV.h"
#include "OSTFSRV_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define OSTFSRV_CALIB_START_SEC_CONST_BOOL
#include "OSTFSRV_MemMap.h"
CONST(boolean, OSTFSRV_CALIB) OESM_bPowerOffModeInhC = 0;
#define OSTFSRV_CALIB_STOP_SEC_CONST_BOOL
#include "OSTFSRV_MemMap.h"

#define OSTFSRV_CALIB_START_SEC_CONST_16
#include "OSTFSRV_MemMap.h"
CONST(uint16, OSTFSRV_CALIB) OESM_ku16AfterrunToutCntC = 500;
#define OSTFSRV_CALIB_STOP_SEC_CONST_16
#include "OSTFSRV_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define OSTFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint16, OSTFSRV_VAR) OESM_EsmMode;
VAR(boolean, OSTFSRV_VAR) OESM_bAfterrunFin;
VAR(boolean, OSTFSRV_VAR) OESM_bAfterrunReq;
VAR(boolean, OSTFSRV_VAR) OESM_bCallAppliOn;
VAR(boolean, OSTFSRV_VAR) OESM_bMcuEnaReq;
VAR(boolean, OSTFSRV_VAR) OESM_bPwrDnReadyFlg;
VAR(boolean, OSTFSRV_VAR) OESM_bPwrLNfClrFltFinsh;
VAR(uint8, OSTFSRV_VAR) OESM_u8AllowPwrDnDelay;
VAR(uint8, OSTFSRV_VAR) OESM_u8PwrLNfStep;
VAR(uint8, OSTFSRV_VAR) OESM_u8PwrOffTim;
VAR(uint16, OSTFSRV_VAR) OESM_OpFtState;
VAR(uint16, OSTFSRV_VAR) OESM_OpNfState;
VAR(uint16, OSTFSRV_VAR) OESM_PwrLFtState;
VAR(uint16, OSTFSRV_VAR) OESM_PwrLNfState;
VAR(uint16, OSTFSRV_VAR) OESM_u16OpDelayTime;
VAR(uint16, OSTFSRV_VAR) OESM_u16OpTimeout;
VAR(uint16, OSTFSRV_VAR) OESM_StpIIFtState;
VAR(uint16, OSTFSRV_VAR) OESM_StpIINfState;
VAR(uint16, OSTFSRV_VAR) OESM_StpIState;
VAR(uint16, OSTFSRV_VAR) OESM_u16AfterrunCnt;
VAR(uint16, OSTFSRV_VAR) OESM_u16CmdReq;
VAR(uint16, OSTFSRV_VAR) OESM_u16CmdReqNm1;
VAR(uint16, OSTFSRV_VAR) OESM_u16CmdRes;
VAR(uint8, OSTFSRV_VAR) OESM_u8RestartDelayCnt;
#define OSTFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
