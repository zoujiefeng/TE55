/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : DSM                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : DSM_L.H                                                 */
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

#ifndef DSM_L_H
#define DSM_L_H

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


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define DSM_START_SEC_CODE
#include "MemMap.h"
FUNC(void, DSM_CODE) FaultClearDTCRecord(void);
FUNC(void, DSM_CODE) FaultDetectionWithFail(uint8 Function, uint8 Type);
FUNC(void, DSM_CODE) FaultDetectionWithoutFail(uint8 Function, uint8 Type);
FUNC(void, DSM_CODE) FaultRecordDTC(uint16 FaultOffset);
FUNC(void, DSM_CODE) FaultRecordDTCContext(const uint16 dTCArrayIdx);
#define DSM_STOP_SEC_CODE
#include "MemMap.h"


#endif /* DSM_L_H */

/*-------------------------------- end of file -------------------------------*/
