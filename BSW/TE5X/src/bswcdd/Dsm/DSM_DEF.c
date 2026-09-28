/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : DSM                                                     */
/*                                                                            */
/* !Module          : DSM                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : DSM_DEF.C                                               */
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
#include "DSM.h"
#include "DSM_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define CALIB_START_SEC_CONST_16
#include "MemMap.h"
CONST(uint16, DSM_CALIB) FaultEraseRequestC = 0x0000;
#define CALIB_STOP_SEC_CONST_16
#include "MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define DSM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint32, DSM_VAR) DSM_DtcNumber[DSM_DTCNUMBER_COLS] = {0};
VAR(volatile uint8, DSM_VAR) FaultFailureLevel;
VAR(volatile uint8, DSM_VAR) DSM_FaultFailureLevel[DSM_CONTROL_UNIT_NUM] = {0};
VAR(uint16, DSM_VAR) FaultEraseRequest;
#define DSM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
