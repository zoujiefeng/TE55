/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : ASTFSRV                                                  */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : ASTFSRV                                                  */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : ASTFSRV.H                                                */
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

#ifndef ASTFSRV_H
#define ASTFSRV_H

#include "Std_Types.h"
#include "astfsrv_e.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define AESM_PWRLATCH_DELAY                4
#define AESM_SFT_STATE_1                   1
#define AESM_SFT_STATE_10                  512
#define AESM_SFT_STATE_11                  1024
#define AESM_SFT_STATE_12                  2048
#define AESM_SFT_STATE_13                  4096
#define AESM_SFT_STATE_14                  8192
#define AESM_SFT_STATE_15                  16384
#define AESM_SFT_STATE_16                  32768
#define AESM_SFT_STATE_2                   2
#define AESM_SFT_STATE_3                   4
#define AESM_SFT_STATE_4                   8
#define AESM_SFT_STATE_5                   16
#define AESM_SFT_STATE_6                   32
#define AESM_SFT_STATE_7                   64
#define AESM_SFT_STATE_8                   128
#define AESM_SFT_STATE_9                   256


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/
/* enum st401 */
#define AESM_AESM_MODE_NF                   1
#define AESM_AESM_MODE_FT                   4
/*extern uint16 AESM_EsmMode;*/

#define ASTFSRV_vidInit() ASTFSRV_vidINIT_STATEFLOW(AESM)

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define ASTFSRV_CALIB_START_SEC_CONST_BOOL
#include "ASTFSRV_MemMap.h"
extern CONST(boolean, ASTFSRV_CALIB) AESM_bPowerOffModeInhC;
#define ASTFSRV_CALIB_STOP_SEC_CONST_BOOL
#include "ASTFSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define ASTFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, ASTFSRV_VAR) AESM_EsmMode;
extern VAR(boolean, ASTFSRV_VAR) AESM_bAfterrunFin;
extern VAR(boolean, ASTFSRV_VAR) AESM_bAfterrunReq;
extern VAR(boolean, ASTFSRV_VAR) AESM_bCallAppliOn;
extern VAR(boolean, ASTFSRV_VAR) AESM_bMcuEnaReq;
extern VAR(boolean, ASTFSRV_VAR) AESM_bPwrDnReadyFlg;
extern VAR(boolean, ASTFSRV_VAR) AESM_bPwrLNfClrFltFinsh;
extern VAR(uint16, ASTFSRV_VAR) AESM_OpFtState;
extern VAR(uint16, ASTFSRV_VAR) AESM_OpNfState;
extern VAR(uint16, ASTFSRV_VAR) AESM_PwrLFtState;
extern VAR(uint16, ASTFSRV_VAR) AESM_PwrLNfState;
extern VAR(uint16, ASTFSRV_VAR) AESM_u16OpDelayTime;
extern VAR(uint16, ASTFSRV_VAR) AESM_u16OpTimeout;
extern VAR(uint16, ASTFSRV_VAR) AESM_StpIIFtState;
extern VAR(uint16, ASTFSRV_VAR) AESM_StpIINfState;
extern VAR(uint16, ASTFSRV_VAR) AESM_StpIState;
extern VAR(uint16, ASTFSRV_VAR) AESM_u16AfterrunCnt;
extern VAR(uint16, ASTFSRV_VAR) AESM_u16CmdReq;
extern VAR(uint16, ASTFSRV_VAR) AESM_u16CmdReqNm1;
extern VAR(uint16, ASTFSRV_VAR) AESM_u16CmdRes;
extern VAR(uint8, ASTFSRV_VAR) AESM_u8RestartDelayCnt;
#define ASTFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(void, ASTFSRV_CODE) AESM_vidInit(void);
FUNC(void, ASTFSRV_CODE) AESM_vidInitFt(void);
FUNC(void, ASTFSRV_CODE) AESM_vidInitNf(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfOp(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfOpFt(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfOpNf(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfPwrL(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfPwrLFt(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfPwrLNf(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfStpI(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfStpII(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfStpIIFt(void);
FUNC(void, ASTFSRV_CODE) AESM_vidStfStpIINf(void);


#endif /* ASTFSRV_H */

/*-------------------------------- end of file -------------------------------*/
