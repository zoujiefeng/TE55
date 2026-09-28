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
/* !File            : GSTFSRV_L.H                                              */
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

#ifndef GSTFSRV_L_H
#define GSTFSRV_L_H

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
#define GSTFSRV_CALIB_START_SEC_CONST_16
#include "GSTFSRV_MemMap.h"
extern CONST(uint16, GSTFSRV_CALIB) GESM_ku16AfterrunToutCntC;
#define GSTFSRV_CALIB_STOP_SEC_CONST_16
#include "GSTFSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define GSTFSRV_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint8, GSTFSRV_VAR) GESM_u8AllowPwrDnDelay;
extern VAR(uint8, GSTFSRV_VAR) GESM_u8PwrLNfStep;
extern VAR(uint8, GSTFSRV_VAR) GESM_u8PwrOffTim;
#define GSTFSRV_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* GSTFSRV_L_H */

/*-------------------------------- end of file -------------------------------*/
