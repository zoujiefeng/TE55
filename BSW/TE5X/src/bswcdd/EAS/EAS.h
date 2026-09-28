/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : EAS                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : EAS                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : EAS.H                                                   */
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

#ifndef EAS_H
#define EAS_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define EAS_AU32PINESK32_COLS                  ( 4 )
#define EAS_AU8COMCHALLENGEVAL_COLS            ( 8 )
#define EAS_AU8COMCHALLENGEVALBKP_COLS         ( 8 )
#define EAS_AU8COMIMMOCODE_COLS                ( 8 )
#define EAS_AU8PARMCC64NVM_COLS                ( 8 )
#define EAS_AU8PARMEACENCR_COLS                ( 16 )
#define EAS_AU8PARMEACSEED_COLS                ( 16 )
#define EAS_AU8PARMEARENCR1_COLS               ( 16 )
#define EAS_AU8PARMEARENCR2_COLS               ( 16 )
#define EAS_AU8PARMRN32_COLS                   ( 4 )
#define EAS_AU8PARMSC32NVM_COLS                ( 4 )
#define EAS_AU8PARMSK128NVM_COLS               ( 16 )


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define EAS_START_SEC_CALIB_UNSPECIFIED
#include "MemMap.h"
extern CONST(boolean, EAS_CALIB) EAS_bDefaultEskPassC;
extern CONST(boolean, EAS_CALIB) EAS_bRN32EnaOnC;
extern CONST(uint8, EAS_CALIB) EAS_u8Chg1DelayTimoutC;
#define EAS_STOP_SEC_CALIB_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define EAS_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(boolean, EAS_VAR) EAS_bAesVerifyRes;
extern VAR(boolean, EAS_VAR) EAS_bImmoCodRcvFlg;
extern VAR(boolean, EAS_VAR) EAS_bSendNewChalgFlg;
extern VAR(uint32, EAS_VAR) EAS_au32PinESK32[EAS_AU32PINESK32_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ComChallengeVal[EAS_AU8COMCHALLENGEVAL_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ComChallengeValBkp[EAS_AU8COMCHALLENGEVALBKP_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ComImmoCode[EAS_AU8COMIMMOCODE_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ParmCC64Nvm[EAS_AU8PARMCC64NVM_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ParmEacEncr[EAS_AU8PARMEACENCR_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ParmEacSeed[EAS_AU8PARMEACSEED_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ParmEarEncr1[EAS_AU8PARMEARENCR1_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ParmEarEncr2[EAS_AU8PARMEARENCR2_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ParmRN32[EAS_AU8PARMRN32_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ParmSC32Nvm[EAS_AU8PARMSC32NVM_COLS];
extern VAR(uint8, EAS_VAR) EAS_au8ParmSK128Nvm[EAS_AU8PARMSK128NVM_COLS];
extern VAR(uint8, EAS_VAR) EAS_u8AuthFailedCnt;
extern VAR(uint8, EAS_VAR) EAS_u8AuthState;
extern VAR(uint8, EAS_VAR) EAS_u8AuthVerifyCnt;
extern VAR(uint8, EAS_VAR) EAS_u8Chg1DelayCnt;
extern VAR(uint8, EAS_VAR) EAS_u8ImmFailReason;
extern VAR(uint8, EAS_VAR) EAS_u8SttTimerCnt;
extern VAR(uint8, EAS_VAR) EAS_u8TMReleaseSig;
#define EAS_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define EAS_START_SEC_CODE
#include "MemMap.h"
FUNC(uint8, EAS_CODE) EAS_u8GetImmFailRes(void);
FUNC(uint8, EAS_CODE) EAS_u8GetTMRelsSig(void);
FUNC(void, EAS_CODE) EAS_vidAuthStateMng(void);
FUNC(void, EAS_CODE) EAS_vidImmoCodeCallback(const uint8*);
FUNC(void, EAS_CODE) EAS_vidInit(void);
#define EAS_STOP_SEC_CODE
#include "MemMap.h"


#endif /* EAS_H */

/*-------------------------------- end of file -------------------------------*/
