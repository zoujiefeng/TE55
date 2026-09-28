/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     : Fault management                                        */
/*                                                                            */
/* !File            : DSM_Nvm_Def.c                                           */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2011 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive:                                                                 $*/
/* $Revision::            $$Author::                  $$Date::               $*/
/******************************************************************************/
/* !VnrOff :                                                                  */
/******************************************************************************/

#include "Std_Types.h"
#include "DSM_Nvm.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

#define DSM_START_SEC_VAR_UNSPECIFIED
#include "DSM_MemMap.h"
/*------------------------*/
/* NVM_BLOCK: DSM_DTC_ADD */
/*------------------------*/
uint8 DSM_au8NvmDummySpace01[50];
/* !MComment: Order of Nvm variables declaration is mandatory */
DSM_DtcEnvDataType DSM_DtcEnvDataNvm[DSM_DTC_NB_RECORD_SIZE];
DSM_DtcStatusType  DSM_DtcStatusNvm [DSM_DTC_NB_RECORD_SIZE];
/*------------------------*/
/* NVM_BLOCK: _DSM_DTC_FF */
/*------------------------*/
DSM_DtcSavedContextType DSM_DtcSavedFreezeFrameNvm[DSM_DTC_NB_RECORD_SIZE];

#define DSM_STOP_SEC_VAR_UNSPECIFIED
#include "DSM_MemMap.h"

/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/

#define DSM_START_SEC_CONST_UNSPECIFIED
#include "DSM_MemMap.h"

const DSM_DtcStatusType DSM_DtcStatusNvm_def[DSM_DTC_NB_RECORD_SIZE];
const DSM_DtcEnvDataType DSM_DtcEnvDataNvm_def[DSM_DTC_NB_RECORD_SIZE];

/* const DSM_DtcSavedContextType DSM_DtcSavedFreezeFrameNvm_def[DSM_DTC_NB_RECORD_SIZE]; */

#define DSM_STOP_SEC_CONST_UNSPECIFIED
#include "DSM_MemMap.h"

/*------------------------------- end of file --------------------------------*/
