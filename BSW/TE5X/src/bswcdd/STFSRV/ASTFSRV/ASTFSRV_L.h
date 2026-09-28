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
/* !File            : ASTFSRV_L.H                                              */
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

#ifndef ASTFSRV_L_H
#define ASTFSRV_L_H

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
#define ASTFSRV_CALIB_START_SEC_CONST_16
#include "ASTFSRV_MemMap.h"
extern CONST(uint16, ASTFSRV_CALIB) AESM_ku16AfterrunToutCntC;
#define ASTFSRV_CALIB_STOP_SEC_CONST_16
#include "ASTFSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define ASTFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint8, ASTFSRV_VAR) AESM_u8AllowPwrDnDelay;
extern VAR(uint8, ASTFSRV_VAR) AESM_u8PwrLNfStep;
extern VAR(uint8, ASTFSRV_VAR) AESM_u8PwrOffTim;
#define ASTFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* ASTFSRV_L_H */

/*-------------------------------- end of file -------------------------------*/
