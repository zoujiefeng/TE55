/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     : Failures data types definition                          */
/*                                                                            */
/* !File            : DSM_Nvm.h                                               */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2016 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive:                                                                 $*/
/* $Revision::            $$Author::                  $$Date::               $*/
/******************************************************************************/
/* !VnrOff :                                                                  */
/******************************************************************************/

#ifndef _DSM_NVM_H_
#define _DSM_NVM_H_

#include "Std_Types.h"
#include "DSM_Typ.h"
#include "FAULT_FF.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

#define DSM_DTC_NB_RECORD_SIZE    10
/* !Comment: Must be larger than FF type size. --Daniel */
#define DSM_DTC_FREEZE_FRAME_SIZE  224

#define TestFailed                         0
#define TestFailedThisOperationCycle       1
#define ConfirmedDTC                       2
#define PendingDTC                         3
#define TestNotCompletedSinceLastClear     4
#define TestFailedSinceLastClear           5
#define TestNotCompletedThisOperationCycle 6



/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/

typedef uint8 DSM_DtcStatusType;

typedef struct
{
   uint8 u8DtcAgingCycleCnt;
   uint8 u8DtcOccurCnt;
   uint8 u8DtcEnvDataSpare1;
   uint8 u8DtcEnvDataSpare2;
}DSM_DtcEnvDataType; 

typedef struct
{
   uint32 DtcNumber;
   uint8 DtcFreezeFrame[DSM_DTC_FREEZE_FRAME_SIZE];
}DSM_DtcSavedContextType;

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

#define DSM_START_SEC_VAR_UNSPECIFIED
#include "DSM_MemMap.h"

extern DSM_DtcEnvDataType DSM_DtcEnvDataNvm[DSM_DTC_NB_RECORD_SIZE];
extern DSM_DtcStatusType DSM_DtcStatusNvm[DSM_DTC_NB_RECORD_SIZE];

extern DSM_DtcSavedContextType DSM_DtcSavedFreezeFrameNvm[DSM_DTC_NB_RECORD_SIZE];

#define DSM_STOP_SEC_VAR_UNSPECIFIED
#include "DSM_MemMap.h"

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/

#define DSM_START_SEC_CONST_UNSPECIFIED
#include "DSM_MemMap.h"

extern const DSM_DtcEnvDataType DSM_DtcEnvDataNvm_def[DSM_DTC_NB_RECORD_SIZE];
extern const DSM_DtcStatusType DSM_DtcStatusNvm_def[DSM_DTC_NB_RECORD_SIZE];

/* extern const DSM_DtcSavedContextType DSM_DtcSavedFreezeFrameNvm_def[DSM_DTC_NB_RECORD_SIZE]; */

#define DSM_STOP_SEC_CONST_UNSPECIFIED
#include "DSM_MemMap.h"

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

#define DSM_START_SEC_CODE
#include "DSM_MemMap.h"

extern boolean DSM_bDtcSupported(uint32 DtcNumber);
extern boolean DSM_bDtcLogged(uint32 DtcNumber, uint8 *NvmFaultId);
extern void DSM_vidAgingCycleCnt(void);
extern void DSM_vidDtcStsInit(void);
extern void DSM_vidClrDtcStsTFBit(const uint8 u8LocalListIdx);

#define DSM_STOP_SEC_CODE
#include "DSM_MemMap.h"

#endif /* _DSM_NVM_H_ */

/*------------------------------- end of file --------------------------------*/
