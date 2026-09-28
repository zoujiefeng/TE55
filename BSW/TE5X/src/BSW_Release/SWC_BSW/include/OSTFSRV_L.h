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
/* !File            : OSTFSRV_L.H                                              */
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

#ifndef OSTFSRV_L_H
#define OSTFSRV_L_H

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
#define OSTFSRV_CALIB_START_SEC_CONST_16
#include "OSTFSRV_MemMap.h"
extern CONST(uint16, OSTFSRV_CALIB) OESM_ku16AfterrunToutCntC;
#define OSTFSRV_CALIB_STOP_SEC_CONST_16
#include "OSTFSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define OSTFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint8, OSTFSRV_VAR) OESM_u8AllowPwrDnDelay;
extern VAR(uint8, OSTFSRV_VAR) OESM_u8PwrLNfStep;
extern VAR(uint8, OSTFSRV_VAR) OESM_u8PwrOffTim;
#define OSTFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* OSTFSRV_L_H */

/*-------------------------------- end of file -------------------------------*/
