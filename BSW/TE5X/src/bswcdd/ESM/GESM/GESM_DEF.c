/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : GESM                                                     */
/*                                                                            */
/* !Module          : GESM                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : GESM_DEF.C                                               */
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
#include "GESM.h"
#include "GESM_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define GESM_CALIB_START_SEC_CONST_16
#include "GESM_MemMap.h"
CONST(uint16, GESM_CALIB) GESM_u16PowerLatchTempoC = 2000u;
CONST(uint8, GESM_CALIB) GESM_u8RestartDelayCntC = 50u;
#define GESM_CALIB_STOP_SEC_CONST_16
#include "GESM_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define GESM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint8, GESM_VAR) GESM_EcuState;
VAR(uint16, GESM_VAR) GESM_u16PowerLatchTempo;
#define GESM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
