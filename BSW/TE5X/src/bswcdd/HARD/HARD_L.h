/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : HARD                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : HARD_L.H                                                */
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

#ifndef HARD_L_H
#define HARD_L_H

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
#define HARD_CALIB_START_SEC_CONST_16
#include "HARD_MemMap.h"
extern CONST(uint16, HARD_CALIB) HARD_u16PtgUSignalShiftC;
extern CONST(uint16, HARD_CALIB) HARD_u16PtgVSignalShiftC;
extern CONST(uint16, HARD_CALIB) HARD_u16PtgWSignalShiftC;
#define HARD_CALIB_STOP_SEC_CONST_16
#include "HARD_MemMap.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define HARD_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, HARD_VAR) HARD_u16Adc2An44_CTN_BOARD1Phys;
extern VAR(uint16, HARD_VAR) HARD_u16PtgRefSignalNbPeriode;
#define HARD_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* HARD_L_H */

/*-------------------------------- end of file -------------------------------*/
