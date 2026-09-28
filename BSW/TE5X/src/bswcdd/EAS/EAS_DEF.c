/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : EAS                                                     */
/*                                                                            */
/* !Module          : EAS                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : EAS_DEF.C                                               */
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
#include "EAS.h"
#include "EAS_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define EAS_START_SEC_CALIB_UNSPECIFIED
#include "MemMap.h"
CONST(boolean, EAS_CALIB) EAS_bDefaultEskPassC = 1;
CONST(boolean, EAS_CALIB) EAS_bRN32EnaOnC = 1;
CONST(uint8, EAS_CALIB) EAS_u8Chg1DelayTimoutC = 0x01;
#define EAS_STOP_SEC_CALIB_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define EAS_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(boolean, EAS_VAR) EAS_bAesVerifyRes;
VAR(boolean, EAS_VAR) EAS_bDefaultEskFlg;
VAR(boolean, EAS_VAR) EAS_bImmoCodRcvFlg;
VAR(boolean, EAS_VAR) EAS_bSendNewChalgFlg;
VAR(uint32, EAS_VAR) EAS_au32PinESK32[EAS_AU32PINESK32_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ComChallengeVal[EAS_AU8COMCHALLENGEVAL_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ComChallengeValBkp[EAS_AU8COMCHALLENGEVALBKP_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ComImmoCode[EAS_AU8COMIMMOCODE_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ParmCC64Nvm[EAS_AU8PARMCC64NVM_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ParmEacEncr[EAS_AU8PARMEACENCR_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ParmEacSeed[EAS_AU8PARMEACSEED_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ParmEarEncr1[EAS_AU8PARMEARENCR1_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ParmEarEncr2[EAS_AU8PARMEARENCR2_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ParmRN32[EAS_AU8PARMRN32_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ParmSC32Nvm[EAS_AU8PARMSC32NVM_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_au8ParmSK128Nvm[EAS_AU8PARMSK128NVM_COLS] = {0};
VAR(uint8, EAS_VAR) EAS_u8AuthFailedCnt;
VAR(uint8, EAS_VAR) EAS_u8AuthState;
VAR(uint8, EAS_VAR) EAS_u8AuthVerifyCnt;
VAR(uint8, EAS_VAR) EAS_u8Chg1DelayCnt;
VAR(uint8, EAS_VAR) EAS_u8ImmFailReason;
VAR(uint8, EAS_VAR) EAS_u8SttTimerCnt;
VAR(uint8, EAS_VAR) EAS_u8TMReleaseSig;
#define EAS_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
