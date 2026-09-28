/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GSTFSRV                                                  */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : GSTFSRV                                                  */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : GSTFSRV.H                                                */
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

#ifndef GSTFSRV_H
#define GSTFSRV_H

#include "Std_Types.h"
#include "gstfsrv_e.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define GESM_PWRLATCH_DELAY                4
#define GESM_SFT_STATE_1                   1
#define GESM_SFT_STATE_10                  512
#define GESM_SFT_STATE_11                  1024
#define GESM_SFT_STATE_12                  2048
#define GESM_SFT_STATE_13                  4096
#define GESM_SFT_STATE_14                  8192
#define GESM_SFT_STATE_15                  16384
#define GESM_SFT_STATE_16                  32768
#define GESM_SFT_STATE_2                   2
#define GESM_SFT_STATE_3                   4
#define GESM_SFT_STATE_4                   8
#define GESM_SFT_STATE_5                   16
#define GESM_SFT_STATE_6                   32
#define GESM_SFT_STATE_7                   64
#define GESM_SFT_STATE_8                   128
#define GESM_SFT_STATE_9                   256


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/
/* enum st401 */
#define GESM_GESM_MODE_NF                   1
#define GESM_GESM_MODE_FT                   4
/*extern uint16 GESM_EsmMode;*/

#define GSTFSRV_vidInit() GSTFSRV_vidINIT_STATEFLOW(GESM)

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define GSTFSRV_CALIB_START_SEC_CONST_BOOL
#include "GSTFSRV_MemMap.h"
extern CONST(boolean, GSTFSRV_CALIB) GESM_bPowerOffModeInhC;
#define GSTFSRV_CALIB_STOP_SEC_CONST_BOOL
#include "GSTFSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define GSTFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, GSTFSRV_VAR) GESM_EsmMode;
extern VAR(boolean, GSTFSRV_VAR) GESM_bAfterrunFin;
extern VAR(boolean, GSTFSRV_VAR) GESM_bAfterrunReq;
extern VAR(boolean, GSTFSRV_VAR) GESM_bCallAppliOn;
extern VAR(boolean, GSTFSRV_VAR) GESM_bMcuEnaReq;
extern VAR(boolean, GSTFSRV_VAR) GESM_bPwrDnReadyFlg;
extern VAR(boolean, GSTFSRV_VAR) GESM_bPwrLNfClrFltFinsh;
extern VAR(uint16, GSTFSRV_VAR) GESM_OpFtState;
extern VAR(uint16, GSTFSRV_VAR) GESM_OpNfState;
extern VAR(uint16, GSTFSRV_VAR) GESM_PwrLFtState;
extern VAR(uint16, GSTFSRV_VAR) GESM_PwrLNfState;
extern VAR(uint16, GSTFSRV_VAR) GESM_u16OpDelayTime;
extern VAR(uint16, GSTFSRV_VAR) GESM_u16OpTimeout;
extern VAR(uint16, GSTFSRV_VAR) GESM_StpIIFtState;
extern VAR(uint16, GSTFSRV_VAR) GESM_StpIINfState;
extern VAR(uint16, GSTFSRV_VAR) GESM_StpIState;
extern VAR(uint16, GSTFSRV_VAR) GESM_u16AfterrunCnt;
extern VAR(uint16, GSTFSRV_VAR) GESM_u16CmdReq;
extern VAR(uint16, GSTFSRV_VAR) GESM_u16CmdReqNm1;
extern VAR(uint16, GSTFSRV_VAR) GESM_u16CmdRes;
extern VAR(uint8, GSTFSRV_VAR) GESM_u8RestartDelayCnt;
#define GSTFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(void, GSTFSRV_CODE) GESM_vidInit(void);
FUNC(void, GSTFSRV_CODE) GESM_vidInitFt(void);
FUNC(void, GSTFSRV_CODE) GESM_vidInitNf(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfOp(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfOpFt(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfOpNf(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfPwrL(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfPwrLFt(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfPwrLNf(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfStpI(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfStpII(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfStpIIFt(void);
FUNC(void, GSTFSRV_CODE) GESM_vidStfStpIINf(void);


#endif /* GSTFSRV_H */

/*-------------------------------- end of file -------------------------------*/
