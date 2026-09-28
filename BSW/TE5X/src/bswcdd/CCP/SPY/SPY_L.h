/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : SPY                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : SPY                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : SPY_L.H                                                 */
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

#ifndef SPY_L_H
#define SPY_L_H

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
#define SPY_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(boolean, SPY_VAR) SPY_bBufFull;
extern VAR(uint16, SPY_VAR) SPY_u16DaqListFirstElmIdx;
extern VAR(uint16, SPY_VAR) SPY_u16NrOfElmsToTx;
extern VAR(uint16, SPY_VAR) SPY_u16PreTrigSmplIdx;
extern VAR(uint16, SPY_VAR) SPY_u16RmngSmplIdx;
extern VAR(uint16, SPY_VAR) SPY_u16SmplIdx;
extern VAR(uint16, SPY_VAR) SPY_u16TrigSmplIdx;
#define SPY_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* SPY_L_H */

/*-------------------------------- end of file -------------------------------*/
