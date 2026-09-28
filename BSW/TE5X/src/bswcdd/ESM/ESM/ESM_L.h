/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : ESM                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : ESM                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : ESM_L.H                                                 */
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

#ifndef ESM_L_H
#define ESM_L_H

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
#define ESM_CALIB_START_SEC_CONST_16
#include "ESM_MemMap.h"
extern CONST(uint16, ESM_CALIB) ESM_u16PowerLatchTempoC;
extern CONST(uint8, ESM_CALIB) ESM_u8RestartDelayCntC;
#define ESM_CALIB_STOP_SEC_CONST_16
#include "ESM_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define ESM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, ESM_VAR) ESM_u16PowerLatchTempo;
#define ESM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* ESM_L_H */

/*-------------------------------- end of file -------------------------------*/
