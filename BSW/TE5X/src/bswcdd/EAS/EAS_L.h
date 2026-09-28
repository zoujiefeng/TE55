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
/* !File            : EAS_L.H                                                 */
/*                                                                            */
/* !Scope           : Private                                                 */
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

#ifndef EAS_L_H
#define EAS_L_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define EAS_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(boolean, EAS_VAR) EAS_bDefaultEskFlg;
#define EAS_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define EAS_START_SEC_CODE
#include "MemMap.h"
FUNC(boolean, EAS_CODE) EAS_bVerifyImmoCode(uint8 const*);
FUNC(void, EAS_CODE) EAS_vidAES128Encrypt(const uint32*, const uint8*, uint8*);
FUNC(void, EAS_CODE) EAS_vidAES128KeySetupEnc(uint32*, const uint8*);
FUNC(void, EAS_CODE) EAS_vidDecrypt(void*, void*, void*);
FUNC(void, EAS_CODE) EAS_vidEncrypt(void*, void*, void*);
FUNC(void, EAS_CODE) EAS_vidGenChallengeCode(void);
#define EAS_STOP_SEC_CODE
#include "MemMap.h"


#endif /* EAS_L_H */

/*-------------------------------- end of file -------------------------------*/
