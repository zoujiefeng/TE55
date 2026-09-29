/*********************************************************************************************************************
*
* Description:     DataM module private interface
* FileName:        FBL_DataMPrv.h
* Company:         INVT (www.invt.com.cn)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright INVT 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
*/
#ifndef  FBL_DATAMCFG_H
#define  FBL_DATAMCFG_H
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "Std_Types.h"
#include "rba_BswSrv.h"
#include "FBL_DataMPrv.h"
/*********************************************************************************************************************
* Exported Defines
*********************************************************************************************************************/
#define FBL_DATAM_OPERATION_A_BLOCK_PENDING_TIMEOUT     (1500U) /*Timeout of each block in ms*/

/*********************************************************************************************************************
* Exported Macros
*********************************************************************************************************************/
#define Fbl_DataM_MemCopy(pDest, pSrc, u32_NumBytes)            rba_BswSrv_MemCopy(pDest, pSrc, u32_NumBytes)
#define Fbl_DataM_MemSet(pDest, xPattern, u32_NumBytes)         rba_BswSrv_MemSet(pDest, xPattern, u32_NumBytes)
/*********************************************************************************************************************
* Exported Types
*********************************************************************************************************************/


/*********************************************************************************************************************
* Exported Variables
*********************************************************************************************************************/


/*********************************************************************************************************************
* Exported Functions
*********************************************************************************************************************/
/* Read_xxx for data stored in NvM */
extern Std_ReturnType FBL_DataM_ReadNvmReprogrammingRequestFlag(uint8 *data);
extern Std_ReturnType FBL_DataM_ReadNvmValidityFlags(uint8 *data);
extern Std_ReturnType FBL_DataM_ReadNvmResetResponseFlag(uint8 *data);
extern Std_ReturnType FBL_DataM_ReadNvmFingerprint(uint8 *data);
extern Std_ReturnType FBL_DataM_ReadNvmCrc(uint8 *data);
extern Std_ReturnType FBL_DataM_ReadNvmProgrammingAttemptCounter(uint8 *data);
extern Std_ReturnType FBL_DataM_ReadNvmProgrammingCounter(uint8 *data);
extern Std_ReturnType FBL_DataM_ReadNvmReserveForBoot_01(uint8 *data);
/* Write_xxx for data stored in NvM */
extern Std_ReturnType FBL_DataM_WriteNvmReprogrammingRequestFlag(const uint8 *data);
extern Std_ReturnType FBL_DataM_WriteNvmValidityFlags(const uint8 *data);
extern Std_ReturnType FBL_DataM_WriteNvmResetResponseFlag(const uint8 *data);
extern Std_ReturnType FBL_DataM_WriteNvmFingerprint(const uint8 *data);
extern Std_ReturnType FBL_DataM_WriteNvmCrc(const uint8 *data);
extern Std_ReturnType FBL_DataM_WriteNvmProgrammingAttemptCounter(const uint8 *data);
extern Std_ReturnType FBL_DataM_WriteNvmProgrammingCounter(const uint8 *data);

/* Get status of blocks to store NvM data */
extern boolean FBL_DataM_IsPersistedNvMReprogrammingRequestFlag(void);
extern boolean FBL_DataM_IsPersistedNvMValidityFlags(void);
extern boolean FBL_DataM_IsPersistedNvMResetResponseFlag(void);
extern boolean FBL_DataM_IsPersistedNvMFingerprint(void);
extern boolean FBL_DataM_IsPersistedNvMCrc(void);
extern boolean FBL_DataM_IsPersistedNvmProgrammingAttemptCounter(void);
extern boolean FBL_DataM_IsPersistedNvmProgrammingCounter(void);

/* NvM block callback functions */
extern Std_ReturnType Fbl_DataM_NV_ReprogrammingRequestFlagBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
extern Std_ReturnType Fbl_DataM_NV_ValidityFlagsBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
extern Std_ReturnType Fbl_DataM_NV_ResetResponseBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
extern Std_ReturnType Fbl_DataM_NV_FingerprintBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
extern Std_ReturnType Fbl_DataM_NV_CrcBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
extern Std_ReturnType Fbl_DataM_NV_ProgrammingAttemptCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
extern Std_ReturnType Fbl_DataM_NV_ProgrammingCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

#endif
