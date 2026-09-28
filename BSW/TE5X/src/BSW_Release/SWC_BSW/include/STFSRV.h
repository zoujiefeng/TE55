/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : STFSRV                                                  */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : STFSRV                                                  */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : STFSRV.H                                                */
/*                                                                            */
/* !Scope           : Public                                                  */
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

#ifndef STFSRV_H
#define STFSRV_H

#include "Std_Types.h"
#include "stfsrv_e.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define ESM_PWRLATCH_DELAY                4
#define ESM_SFT_STATE_1                   1
#define ESM_SFT_STATE_10                  512
#define ESM_SFT_STATE_11                  1024
#define ESM_SFT_STATE_12                  2048
#define ESM_SFT_STATE_13                  4096
#define ESM_SFT_STATE_14                  8192
#define ESM_SFT_STATE_15                  16384
#define ESM_SFT_STATE_16                  32768
#define ESM_SFT_STATE_2                   2
#define ESM_SFT_STATE_3                   4
#define ESM_SFT_STATE_4                   8
#define ESM_SFT_STATE_5                   16
#define ESM_SFT_STATE_6                   32
#define ESM_SFT_STATE_7                   64
#define ESM_SFT_STATE_8                   128
#define ESM_SFT_STATE_9                   256


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/
/* enum st401 */
#define ESM_ESM_MODE_NF                   1
#define ESM_ESM_MODE_FT                   4
/*extern uint16 ESM_EsmMode;*/

#define STFSRV_vidInit() STFSRV_vidINIT_STATEFLOW(ESM)

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define STFSRV_CALIB_START_SEC_CONST_BOOL
#include "STFSRV_MemMap.h"
extern CONST(boolean, STFSRV_CALIB) ESM_bPowerOffModeInhC;
#define STFSRV_CALIB_STOP_SEC_CONST_BOOL
#include "STFSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define STFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, STFSRV_VAR) ESM_EsmMode;
extern VAR(boolean, STFSRV_VAR) ESM_bAfterrunFin;
extern VAR(boolean, STFSRV_VAR) ESM_bAfterrunReq;
extern VAR(boolean, STFSRV_VAR) ESM_bCallAppliOn;
extern VAR(boolean, STFSRV_VAR) ESM_bMcuEnaReq;
extern VAR(boolean, STFSRV_VAR) ESM_bPwrDnReadyFlg;
extern VAR(boolean, STFSRV_VAR) ESM_bPwrLNfClrFltFinsh;
extern VAR(uint16, STFSRV_VAR) ESM_OpFtState;
extern VAR(uint16, STFSRV_VAR) ESM_OpNfState;
extern VAR(uint16, STFSRV_VAR) ESM_PwrLFtState;
extern VAR(uint16, STFSRV_VAR) ESM_PwrLNfState;
extern VAR(uint16, STFSRV_VAR) ESM_u16OpDelayTime;
extern VAR(uint16, STFSRV_VAR) ESM_u16OpTimeout;
extern VAR(uint16, STFSRV_VAR) ESM_StpIIFtState;
extern VAR(uint16, STFSRV_VAR) ESM_StpIINfState;
extern VAR(uint16, STFSRV_VAR) ESM_StpIState;
extern VAR(uint16, STFSRV_VAR) ESM_u16CmdReq;
extern VAR(uint16, STFSRV_VAR) ESM_u16CmdReqNm1;
extern VAR(uint16, STFSRV_VAR) ESM_u16CmdRes;
extern VAR(uint8, STFSRV_VAR) ESM_u8RestartDelayCnt;
#define STFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(void, STFSRV_CODE) ESM_vidInit(void);
FUNC(void, STFSRV_CODE) ESM_vidInitFt(void);
FUNC(void, STFSRV_CODE) ESM_vidInitNf(void);
FUNC(void, STFSRV_CODE) ESM_vidStfOp(void);
FUNC(void, STFSRV_CODE) ESM_vidStfOpFt(void);
FUNC(void, STFSRV_CODE) ESM_vidStfOpNf(void);
FUNC(void, STFSRV_CODE) ESM_vidStfPwrL(void);
FUNC(void, STFSRV_CODE) ESM_vidStfPwrLFt(void);
FUNC(void, STFSRV_CODE) ESM_vidStfPwrLNf(void);
FUNC(void, STFSRV_CODE) ESM_vidStfStpI(void);
FUNC(void, STFSRV_CODE) ESM_vidStfStpII(void);
FUNC(void, STFSRV_CODE) ESM_vidStfStpIIFt(void);
FUNC(void, STFSRV_CODE) ESM_vidStfStpIINf(void);


#endif /* STFSRV_H */

/*-------------------------------- end of file -------------------------------*/
