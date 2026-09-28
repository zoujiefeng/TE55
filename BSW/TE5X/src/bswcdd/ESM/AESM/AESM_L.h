/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : AESM                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : AESM                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : AESM_L.H                                                 */
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

#ifndef AESM_L_H
#define AESM_L_H

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
#define AESM_CALIB_START_SEC_CONST_16
#include "AESM_MemMap.h"
extern CONST(uint16, AESM_CALIB) AESM_u16PowerLatchTempoC;
extern CONST(uint8, AESM_CALIB) AESM_u8RestartDelayCntC;
#define AESM_CALIB_STOP_SEC_CONST_16
#include "AESM_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define AESM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, AESM_VAR) AESM_u16PowerLatchTempo;
#define AESM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* AESM_L_H */

/*-------------------------------- end of file -------------------------------*/
