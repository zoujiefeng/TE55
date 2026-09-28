/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : ESM                                                     */
/*                                                                            */
/* !Module          : ESM                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : ESM_DEF.C                                               */
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
#include "ESM.h"
#include "ESM_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define ESM_CALIB_START_SEC_CONST_16
#include "ESM_MemMap.h"
CONST(uint16, ESM_CALIB) ESM_u16PowerLatchTempoC = 2000u;
CONST(uint8, ESM_CALIB) ESM_u8RestartDelayCntC = 50u;
#define ESM_CALIB_STOP_SEC_CONST_16
#include "ESM_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define ESM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint8, ESM_VAR) ESM_EcuState;
VAR(uint16, ESM_VAR) ESM_u16PowerLatchTempo;
#define ESM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
