/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : AESM                                                     */
/*                                                                            */
/* !Module          : AESM                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : AESM_DEF.C                                               */
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
#include "AESM.h"
#include "AESM_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define AESM_CALIB_START_SEC_CONST_16
#include "AESM_MemMap.h"
CONST(uint16, AESM_CALIB) AESM_u16PowerLatchTempoC = 2000u;
CONST(uint8, AESM_CALIB) AESM_u8RestartDelayCntC = 50u;
#define AESM_CALIB_STOP_SEC_CONST_16
#include "AESM_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define AESM_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint8, AESM_VAR) AESM_EcuState;
VAR(uint16, AESM_VAR) AESM_u16PowerLatchTempo;
#define AESM_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
