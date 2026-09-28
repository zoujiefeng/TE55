/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : SPY                                                     */
/*                                                                            */
/* !Module          : SPY                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : SPY_DEF.C                                               */
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

#include "Std_Types.h"
#include "SPY.h"
#include "SPY_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define SPY_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(boolean, SPY_VAR) SPY_bBufFull;
VAR(uint16, SPY_VAR) SPY_u16DaqListFirstElmIdx;
VAR(uint16, SPY_VAR) SPY_u16NrOfElmsToTx;
VAR(uint16, SPY_VAR) SPY_u16PreTrigSmplIdx;
VAR(uint16, SPY_VAR) SPY_u16RmngSmplIdx;
VAR(uint16, SPY_VAR) SPY_u16SmplIdx;
VAR(uint16, SPY_VAR) SPY_u16TrigSmplIdx;
#define SPY_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
