/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : OESM                                                     */
/*                                                                            */
/* !Module          : OESM                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : OESM_DEF.C                                               */
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
#include "OESM.h"
#include "OESM_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define OESM_CALIB_START_SEC_CONST_16
#include "OESM_MemMap.h"
CONST(uint16, OESM_CALIB) OESM_u16PowerLatchTempoC = 2000u;
CONST(uint8, OESM_CALIB) OESM_u8RestartDelayCntC = 50u;
#define OESM_CALIB_STOP_SEC_CONST_16
#include "OESM_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define OESM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint8, OESM_VAR) OESM_EcuState;
VAR(uint16, OESM_VAR) OESM_u16PowerLatchTempo;
#define OESM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
