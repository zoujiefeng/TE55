/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : CALUSR                                                  */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : CALUSR                                                  */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : CALUSR_L.H                                              */
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

#ifndef CALUSR_L_H
#define CALUSR_L_H

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
#define CALUSR_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint32, CALUSR_VAR) CalUsr_u32ChkDataCrc;
extern VAR(uint32, CALUSR_VAR) CalUsr_u32POCalibDnEnaMskA;
extern VAR(uint32, CALUSR_VAR) CalUsr_u32POCalibDnEnaMskB;
#define CALUSR_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* CALUSR_L_H */

/*-------------------------------- end of file -------------------------------*/
