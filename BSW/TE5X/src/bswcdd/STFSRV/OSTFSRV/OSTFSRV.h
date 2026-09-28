/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : OSTFSRV                                                  */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : OSTFSRV                                                  */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : OSTFSRV.H                                                */
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

#ifndef OSTFSRV_H
#define OSTFSRV_H

#include "Std_Types.h"
#include "ostfsrv_e.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define OESM_PWRLATCH_DELAY                4
#define OESM_SFT_STATE_1                   1
#define OESM_SFT_STATE_10                  512
#define OESM_SFT_STATE_11                  1024
#define OESM_SFT_STATE_12                  2048
#define OESM_SFT_STATE_13                  4096
#define OESM_SFT_STATE_14                  8192
#define OESM_SFT_STATE_15                  16384
#define OESM_SFT_STATE_16                  32768
#define OESM_SFT_STATE_2                   2
#define OESM_SFT_STATE_3                   4
#define OESM_SFT_STATE_4                   8
#define OESM_SFT_STATE_5                   16
#define OESM_SFT_STATE_6                   32
#define OESM_SFT_STATE_7                   64
#define OESM_SFT_STATE_8                   128
#define OESM_SFT_STATE_9                   256


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/
/* enum st401 */
#define OESM_OESM_MODE_NF                   1
#define OESM_OESM_MODE_FT                   4
/*extern uint16 OESM_EsmMode;*/

#define OSTFSRV_vidInit() OSTFSRV_vidINIT_STATEFLOW(OESM)

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define OSTFSRV_CALIB_START_SEC_CONST_BOOL
#include "OSTFSRV_MemMap.h"
extern CONST(boolean, OSTFSRV_CALIB) OESM_bPowerOffModeInhC;
#define OSTFSRV_CALIB_STOP_SEC_CONST_BOOL
#include "OSTFSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define OSTFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, OSTFSRV_VAR) OESM_EsmMode;
extern VAR(boolean, OSTFSRV_VAR) OESM_bAfterrunFin;
extern VAR(boolean, OSTFSRV_VAR) OESM_bAfterrunReq;
extern VAR(boolean, OSTFSRV_VAR) OESM_bCallAppliOn;
extern VAR(boolean, OSTFSRV_VAR) OESM_bMcuEnaReq;
extern VAR(boolean, OSTFSRV_VAR) OESM_bPwrDnReadyFlg;
extern VAR(boolean, OSTFSRV_VAR) OESM_bPwrLNfClrFltFinsh;
extern VAR(uint16, OSTFSRV_VAR) OESM_OpFtState;
extern VAR(uint16, OSTFSRV_VAR) OESM_OpNfState;
extern VAR(uint16, OSTFSRV_VAR) OESM_PwrLFtState;
extern VAR(uint16, OSTFSRV_VAR) OESM_PwrLNfState;
extern VAR(uint16, OSTFSRV_VAR) OESM_u16OpDelayTime;
extern VAR(uint16, OSTFSRV_VAR) OESM_u16OpTimeout;
extern VAR(uint16, OSTFSRV_VAR) OESM_StpIIFtState;
extern VAR(uint16, OSTFSRV_VAR) OESM_StpIINfState;
extern VAR(uint16, OSTFSRV_VAR) OESM_StpIState;
extern VAR(uint16, OSTFSRV_VAR) OESM_u16AfterrunCnt;
extern VAR(uint16, OSTFSRV_VAR) OESM_u16CmdReq;
extern VAR(uint16, OSTFSRV_VAR) OESM_u16CmdReqNm1;
extern VAR(uint16, OSTFSRV_VAR) OESM_u16CmdRes;
extern VAR(uint8, OSTFSRV_VAR) OESM_u8RestartDelayCnt;
#define OSTFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(void, OSTFSRV_CODE) OESM_vidInit(void);
FUNC(void, OSTFSRV_CODE) OESM_vidInitFt(void);
FUNC(void, OSTFSRV_CODE) OESM_vidInitNf(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfOp(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfOpFt(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfOpNf(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfPwrL(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfPwrLFt(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfPwrLNf(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfStpI(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfStpII(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfStpIIFt(void);
FUNC(void, OSTFSRV_CODE) OESM_vidStfStpIINf(void);


#endif /* OSTFSRV_H */

/*-------------------------------- end of file -------------------------------*/
