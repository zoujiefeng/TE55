/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GESM                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : GESM                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : GESM_L.H                                                 */
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

#ifndef GESM_L_H
#define GESM_L_H

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
#define GESM_CALIB_START_SEC_CONST_16
#include "GESM_MemMap.h"
extern CONST(uint16, GESM_CALIB) GESM_u16PowerLatchTempoC;
extern CONST(uint8, GESM_CALIB) GESM_u8RestartDelayCntC;
#define GESM_CALIB_STOP_SEC_CONST_16
#include "GESM_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define GESM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, GESM_VAR) GESM_u16PowerLatchTempo;
#define GESM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* GESM_L_H */

/*-------------------------------- end of file -------------------------------*/
