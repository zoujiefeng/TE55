/*********************************************************************************************************************
*
* Description:     DataM module private configuration implementation
* FileName:        FBL_DataMPrvCfg.c
* Company:         ETAS GmbH (www.etas.com)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright ETAS GmbH 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "NvM.h"
#include "FBL_DataMPrvCfg.h"
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
Std_ReturnType Fbl_DataM_NV_ReprogrammingRequestFlagBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_ValidityFlagsBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_ResetResponseBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_FingerprintBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_CrcBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_ProgrammingAttemptCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_ProgrammingCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

/*********************************************************************************************************************
* Exported Variables Implementation
*********************************************************************************************************************/
uint8 Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ExternalReprogrammingRequestFlagBlock];
uint8 Fbl_DataM_RamMirrorNV_ValidityFlagsBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ValidityFlagsBlock];
uint8 Fbl_DataM_RamMirrorNV_ResetResponseBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ResetResponseFlagBlock];
uint8 Fbl_DataM_RamMirrorNV_FingerprintBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock];
uint8 Fbl_DataM_RamMirrorNV_CrcBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_CrcBlock];
uint8 Fbl_DataM_RamMirrorNV_ProgrammingAttemptCounterBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingAttemptCounterBlock];
uint8 Fbl_DataM_RamMirrorNV_ProgrammingCounterBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingCounterBlock];

const uint8 Fbl_DataM_RomDataNV_ReprogrammingRequestFlagBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ExternalReprogrammingRequestFlagBlock]
    = {0};
const uint8 Fbl_DataM_RomDataNV_ValidityFlagsBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ValidityFlagsBlock]
    = {0x03};
const uint8 Fbl_DataM_RomDataNV_ResetResponseBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ResetResponseFlagBlock]
    = {0};
const uint8 Fbl_DataM_RomDataNV_FingerprintBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock]
    = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
const uint8 Fbl_DataM_RomDataNV_CrcBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_CrcBlock]
    = {0, 0, 0, 0, 0, 0, 0, 0};
const uint8 Fbl_DataM_RomDataNV_ProgrammingAttemptCounterBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingAttemptCounterBlock]
    = {0, 0, 0, 0};

const uint8 Fbl_DataM_RomDataNV_ProgrammingCounterBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingCounterBlock]
    = {0, 0, 0, 0};

const Fbl_DataM_BlockDescriptorType Fbl_DataM_NvmBlockInfo[FBL_DATAM_NUM_NVM_BLOCKS] =
{
    {Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_ExternalReprogrammingRequestFlagBlock, NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock},
    {Fbl_DataM_RamMirrorNV_ValidityFlagsBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_ValidityFlagsBlock, NvMConf_NvMBlockDescriptor_NV_ValidityFlagsBlock},
    {Fbl_DataM_RamMirrorNV_ResetResponseBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_ResetResponseFlagBlock, NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock},
    {Fbl_DataM_RamMirrorNV_FingerprintBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock, NvMConf_NvMBlockDescriptor_NV_FingerprintBlock},
    {Fbl_DataM_RamMirrorNV_CrcBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_CrcBlock, NvMConf_NvMBlockDescriptor_NV_CrcBlock},
    {Fbl_DataM_RamMirrorNV_ProgrammingAttemptCounterBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingAttemptCounterBlock, NvMConf_NvMBlockDescriptor_NV_ProgrammingAttemptCounterBlock},
    {Fbl_DataM_RamMirrorNV_ProgrammingCounterBlock,NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingCounterBlock,NvMConf_NvMBlockDescriptor_NV_ProgrammingCounterBlock},
};


Std_ReturnType Fbl_DataM_NV_ReprogrammingRequestFlagBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_ValidityFlagsBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_ResetResponseBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_FingerprintBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_CrcBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_ProgrammingAttemptCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_ProgrammingCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}