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
/* !File            : STFSRV_L.H                                              */
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

#ifndef STFSRV_L_H
#define STFSRV_L_H

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
#define STFSRV_CALIB_START_SEC_CONST_16
#include "STFSRV_MemMap.h"
extern CONST(uint16, STFSRV_CALIB) ESM_ku16AfterrunToutCntC;
#define STFSRV_CALIB_STOP_SEC_CONST_16
#include "STFSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define STFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, STFSRV_VAR) ESM_u16MsgOffDelay;
extern VAR(uint8, STFSRV_VAR) ESM_u8AllowPwrDnDelay;
extern VAR(uint8, STFSRV_VAR) ESM_u8PwrLNfStep;
extern VAR(uint8, STFSRV_VAR) ESM_u8PwrOffTim;
#define STFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* STFSRV_L_H */

/*-------------------------------- end of file -------------------------------*/
