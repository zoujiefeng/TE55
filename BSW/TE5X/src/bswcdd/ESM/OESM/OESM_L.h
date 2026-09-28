/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : OESM                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : OESM                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : OESM_L.H                                                 */
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

#ifndef OESM_L_H
#define OESM_L_H

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
#define OESM_CALIB_START_SEC_CONST_16
#include "OESM_MemMap.h"
extern CONST(uint16, OESM_CALIB) OESM_u16PowerLatchTempoC;
extern CONST(uint8, OESM_CALIB) OESM_u8RestartDelayCntC;
#define OESM_CALIB_STOP_SEC_CONST_16
#include "OESM_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define OESM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, OESM_VAR) OESM_u16PowerLatchTempo;
#define OESM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* OESM_L_H */

/*-------------------------------- end of file -------------------------------*/
