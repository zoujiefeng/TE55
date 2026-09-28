/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : CALUSR                                                  */
/*                                                                            */
/* !Module          : CALUSR                                                  */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : CALUSR_DEF.C                                            */
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
#include "CALUSR.h"
#include "CALUSR_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define CALUSR_START_SEC_CALIB_UNSPECIFIED
#include "CALIB_MemMap.h"
CONST(uint32, CALUSR_CALIB) CalUsr_ku32CalibUpdEnaMskA = 0xAAAAAAAA;
CONST(uint32, CALUSR_CALIB) CalUsr_ku32CalibUpdEnaMskB = 0xBBBBBBBB;
#define CALUSR_STOP_SEC_CALIB_UNSPECIFIED
#include "CALIB_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define CALUSR_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(boolean, CALUSR_VAR) CalUsr_bIsCalibUpdEna;
VAR(uint32, CALUSR_VAR) CalUsr_u32ChkDataCrc;
VAR(uint32, CALUSR_VAR) CalUsr_u32POCalibDnEnaMskA;
VAR(uint32, CALUSR_VAR) CalUsr_u32POCalibDnEnaMskB;
VAR(uint32, CALUSR_VAR) CalUsr_u32PODataCRC;
#define CALUSR_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
