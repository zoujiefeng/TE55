/*********************************************************************************************************************
*
* Description:     DataM module configuration implementation
* FileName:        FBL_DataMCfg.c
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

#include "FBL_DataMCfg.h"
#include "FBL_DataMPrv.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/
static Std_ReturnType Fbl_DataM_WriteToNvmBlockVarLength(uint8 * pTo, const uint8 * value, const uint8 blockIndex, const uint8 size);

/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/

/* [$Satisfies $LEAR_FBL_DD_DataM 003] */
/**
 * @brief the API is to read data from Nvm ram mirror block.
 *
 * @param pTo [out] the destination is written to
 * @param pFrom [in] the ram mirror block nvm
 * @param size [in] size of ram mirror block nvm
 * @return Std_ReturnType result is E_OK        - succeeded.
 *                                  E_NOT_OK    - Failed.
 */
static Std_ReturnType Fbl_DataM_ReadFromNvmBlockVarLength (uint8 *  pTo, const uint8 * pFrom, const uint8 size)
{
    Std_ReturnType ret = E_NOT_OK;
    uint8 index;
    if ((NULL_PTR != pFrom) && (NULL_PTR != pTo) && (TRUE == Fbl_DataM_RamMirrorLoaded))
    {
		for(index = 0; index < size; index++)
		{
			pTo[index] = pFrom[index];
		}
		ret = E_OK;
    }
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 004] */
/**
 * @brief wrtie to ram mirror block nvm 
 *
 * @param pTo [out] Ram mirror block
 * @param value [in] value to write
 * @param blockIndex [in] block id of user define refer #FBL_DATAM_NVM_BLOCK_ID
 * @param size [in]
 * @return Std_ReturnType result is E_OK        - succeeded.
 *                                  E_NOT_OK    - Failed.
 */
static Std_ReturnType Fbl_DataM_WriteToNvmBlockVarLength(uint8 * pTo, const uint8 *value, const uint8 blockIndex, const uint8 size)
{
    Std_ReturnType ret = E_NOT_OK;
    uint8 index;
    boolean isChanged = FALSE;

    if((NULL_PTR != pTo) && (NULL_PTR != value) && (size > (uint8)0))
    {
        /*verify value change */
        for(index = 0; index < size; index++)
        {
            if(pTo[index] != value[index])
            {
                isChanged = TRUE;
                break;
            }
        }
        if(TRUE == isChanged)
        {
            for(index = 0; index < size; index++)
            {
                pTo[index] = value[index];
            }
            /*Update status as FBL_DATAM_BLOCK_STATUS_NOT_SAVED*/
            Fbl_DataM_NvmBlockStats[blockIndex].BlockStatus = FBL_DATAM_BLOCK_STATUS_NOT_SAVED;
        }
        ret = E_OK;
    }
    return ret;
}

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_DataM 105] */
Std_ReturnType FBL_DataM_ReadNvmReprogrammingRequestFlag(uint8 *data)
{
    return Fbl_DataM_ReadFromNvmBlockVarLength( data,
                                                Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock)].RamMirror,
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ExternalReprogrammingRequestFlagBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 106] */
Std_ReturnType FBL_DataM_ReadNvmValidityFlags(uint8 *data)
{
    return Fbl_DataM_ReadFromNvmBlockVarLength( data,
                                                Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ValidityFlagsBlock)].RamMirror,
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ValidityFlagsBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 107] */
Std_ReturnType FBL_DataM_ReadNvmResetResponseFlag(uint8 *data)
{
    return Fbl_DataM_ReadFromNvmBlockVarLength( data,
                                                Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock)].RamMirror,
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ResetResponseFlagBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 108] */
Std_ReturnType FBL_DataM_ReadNvmFingerprint(uint8 *data)
{
    return Fbl_DataM_ReadFromNvmBlockVarLength( data,
                                                Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_FingerprintBlock)].RamMirror,
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 109] */
Std_ReturnType FBL_DataM_ReadNvmCrc(uint8 *data)
{
    return Fbl_DataM_ReadFromNvmBlockVarLength( data,
                                                Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_CrcBlock)].RamMirror,
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_CrcBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 110] */
Std_ReturnType FBL_DataM_ReadNvmProgrammingAttemptCounter(uint8 *data)
{
    return Fbl_DataM_ReadFromNvmBlockVarLength( data,
                                                Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingAttemptCounterBlock)].RamMirror,
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingAttemptCounterBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 111] */
Std_ReturnType FBL_DataM_ReadNvmProgrammingCounter(uint8 *data)
{
    return Fbl_DataM_ReadFromNvmBlockVarLength( data,
                                                Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingCounterBlock)].RamMirror,
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingCounterBlock);
}

Std_ReturnType FBL_DataM_ReadNvmReserveForBoot_01(uint8 *data)
{
    return Fbl_DataM_ReadFromNvmBlockVarLength( data,
                                                Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_01)].RamMirror,
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_01);
}

/* Write_xxx for data stored in NvM */
/* [$Satisfies $LEAR_FBL_DD_DataM 112] */
Std_ReturnType FBL_DataM_WriteNvmReprogrammingRequestFlag(const uint8 *data)
{
    return Fbl_DataM_WriteToNvmBlockVarLength(  (uint8 *)Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock)].RamMirror,
                                                data,
                                                FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock),
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ExternalReprogrammingRequestFlagBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 113] */
Std_ReturnType FBL_DataM_WriteNvmValidityFlags(const uint8 *data)
{
    return Fbl_DataM_WriteToNvmBlockVarLength(  (uint8 *)Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ValidityFlagsBlock)].RamMirror,
                                                data,
                                                FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ValidityFlagsBlock),
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ValidityFlagsBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 114] */
Std_ReturnType FBL_DataM_WriteNvmResetResponseFlag(const uint8 *data)
{
    return Fbl_DataM_WriteToNvmBlockVarLength(  (uint8 *)Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock)].RamMirror,
                                                data,
                                                FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock),
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ResetResponseFlagBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 115] */
Std_ReturnType FBL_DataM_WriteNvmFingerprint(const uint8 *data)
{
    return Fbl_DataM_WriteToNvmBlockVarLength(  (uint8 *)Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_FingerprintBlock)].RamMirror,
                                                data,
                                                FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_FingerprintBlock),
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 116] */
Std_ReturnType FBL_DataM_WriteNvmCrc(const uint8 *data)
{
    return Fbl_DataM_WriteToNvmBlockVarLength(  (uint8 *)Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_CrcBlock)].RamMirror,
                                                data,
                                                FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_CrcBlock),
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_CrcBlock);
}

/* [$Satisfies $LEAR_FBL_DD_DataM 117] */
Std_ReturnType FBL_DataM_WriteNvmProgrammingAttemptCounter(const uint8 *data)
{
    return Fbl_DataM_WriteToNvmBlockVarLength(  (uint8 *)Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingAttemptCounterBlock)].RamMirror,
                                                data,
                                                FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingAttemptCounterBlock),
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingAttemptCounterBlock);    
}

/* [$Satisfies $LEAR_FBL_DD_DataM 118] */
Std_ReturnType FBL_DataM_WriteNvmProgrammingCounter(const uint8 *data)
{
    return Fbl_DataM_WriteToNvmBlockVarLength(  (uint8 *)Fbl_DataM_NvmBlockInfo[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingCounterBlock)].RamMirror,
                                                data,
                                                FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingCounterBlock),
                                                NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingCounterBlock);    
}

/********************************************************************************************************************
 * NvM block callback functions
 */
/* [$Satisfies $LEAR_FBL_DD_DataM 119] */
Std_ReturnType Fbl_DataM_NV_ReprogrammingRequestFlagBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock));
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 120] */
Std_ReturnType Fbl_DataM_NV_ValidityFlagsBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ValidityFlagsBlock));
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 121] */
Std_ReturnType Fbl_DataM_NV_ResetResponseBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock));
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 122] */
Std_ReturnType Fbl_DataM_NV_FingerprintBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_FingerprintBlock));
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 123] */
Std_ReturnType Fbl_DataM_NV_CrcBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_CrcBlock));
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 124] */
Std_ReturnType Fbl_DataM_NV_ProgrammingAttemptCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingAttemptCounterBlock));
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 125] */
Std_ReturnType Fbl_DataM_NV_ProgrammingCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingCounterBlock));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve00_FACBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_00_FailureAttemptCnt_L1));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve01_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_01));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve02_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_02));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve03_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_03));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve04_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_04));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve05_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_05));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve06_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_06));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve07_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_07));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve08_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_08));
    return ret;
}
Std_ReturnType Fbl_DataM_NV_Reserve09_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    Std_ReturnType ret = E_OK;
    Fbl_DataM_UpdateBlockStatusEvent(   ServiceId,
                                        JobResult,
                                        FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_09));
    return ret;
}

/*
 * Define function to check writing NvM status.
 */
/* [$Satisfies $LEAR_FBL_DD_DataM 126] */
boolean FBL_DataM_IsPersistedNvMReprogrammingRequestFlag(void)
{
    boolean retVal = FALSE;
    Fbl_DataM_NvmBlockStatsType *NvMBlockState = &Fbl_DataM_NvmBlockStats[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock)];

    if((NvMBlockState->BlockStatus == FBL_DATAM_BLOCK_STATUS_SAVED) && (NvMBlockState->NvmBlockFault == FALSE))
    {
        retVal = TRUE;
    }
    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 127] */
boolean FBL_DataM_IsPersistedNvMValidityFlags(void)
{
    boolean retVal = FALSE;
    Fbl_DataM_NvmBlockStatsType *NvMBlockState = &Fbl_DataM_NvmBlockStats[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ValidityFlagsBlock)];

    if((NvMBlockState->BlockStatus == FBL_DATAM_BLOCK_STATUS_SAVED) && (NvMBlockState->NvmBlockFault == FALSE))
    {
        retVal = TRUE;
    }
    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 128] */
boolean FBL_DataM_IsPersistedNvMResetResponseFlag(void)
{
    boolean retVal = FALSE;
    Fbl_DataM_NvmBlockStatsType *NvMBlockState = &Fbl_DataM_NvmBlockStats[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock)];

    if((NvMBlockState->BlockStatus == FBL_DATAM_BLOCK_STATUS_SAVED) && (NvMBlockState->NvmBlockFault == FALSE))
    {
        retVal = TRUE;
    }
    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 129] */
boolean FBL_DataM_IsPersistedNvMFingerprint(void)
{
    boolean retVal = FALSE;
    Fbl_DataM_NvmBlockStatsType *NvMBlockState = &Fbl_DataM_NvmBlockStats[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_FingerprintBlock)];

    if((NvMBlockState->BlockStatus == FBL_DATAM_BLOCK_STATUS_SAVED) && (NvMBlockState->NvmBlockFault == FALSE))
    {
        retVal = TRUE;
    }
    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 130] */
boolean FBL_DataM_IsPersistedNvMCrc(void)
{
    boolean retVal = FALSE;
    Fbl_DataM_NvmBlockStatsType *NvMBlockState = &Fbl_DataM_NvmBlockStats[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_CrcBlock)];

    if((NvMBlockState->BlockStatus == FBL_DATAM_BLOCK_STATUS_SAVED) && (NvMBlockState->NvmBlockFault == FALSE))
    {
        retVal = TRUE;
    }
    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 131] */
boolean FBL_DataM_IsPersistedNvmProgrammingAttemptCounter(void)
{
    boolean retVal = FALSE;
    Fbl_DataM_NvmBlockStatsType *NvMBlockState = &Fbl_DataM_NvmBlockStats[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingAttemptCounterBlock)];

    if((NvMBlockState->BlockStatus == FBL_DATAM_BLOCK_STATUS_SAVED) && (NvMBlockState->NvmBlockFault == FALSE))
    {
        retVal = TRUE;
    }
    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_DataM 132] */
boolean FBL_DataM_IsPersistedNvmProgrammingCounter(void)
{
    boolean retVal = FALSE;
    Fbl_DataM_NvmBlockStatsType *NvMBlockState = &Fbl_DataM_NvmBlockStats[FBL_DATAM_NVM_BLOCK_ID(NvMConf_NvMBlockDescriptor_NV_ProgrammingCounterBlock)];

    if((NvMBlockState->BlockStatus == FBL_DATAM_BLOCK_STATUS_SAVED) && (NvMBlockState->NvmBlockFault == FALSE))
    {
        retVal = TRUE;
    }
    return retVal;
}
