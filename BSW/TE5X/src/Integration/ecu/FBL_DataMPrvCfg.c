/*********************************************************************************************************************
*
* Description:     DataM module private configuration implementation
* FileName:        FBL_DataMPrvCfg.c
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
Std_ReturnType Fbl_DataM_NV_Reserve00_FACBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_Reserve01_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_Reserve02_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_Reserve03_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_Reserve04_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_Reserve05_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_Reserve06_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_Reserve07_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_Reserve08_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);
Std_ReturnType Fbl_DataM_NV_Reserve09_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

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
uint8 Fbl_DataM_RamMirrorNV_Reserve00_FACBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_00_FailureAttemptCnt_L1];
uint8 Fbl_DataM_RamMirrorNV_Reserve01_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_01];
uint8 Fbl_DataM_RamMirrorNV_Reserve02_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_02];
uint8 Fbl_DataM_RamMirrorNV_Reserve03_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_03];
uint8 Fbl_DataM_RamMirrorNV_Reserve04_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_04];
uint8 Fbl_DataM_RamMirrorNV_Reserve05_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_05];
uint8 Fbl_DataM_RamMirrorNV_Reserve06_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_06];
uint8 Fbl_DataM_RamMirrorNV_Reserve07_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_07];
uint8 Fbl_DataM_RamMirrorNV_Reserve08_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_08];
uint8 Fbl_DataM_RamMirrorNV_Reserve09_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_09];

const uint8 NvBlock_ECU_LogisticDataRom_NVM[NVM_CFG_NV_BLOCK_LENGTH_NvMBlock_LogisticData] = {0};
const uint8 NvBlock_ECU_ConfigurationRom_NVM[NVM_CFG_NV_BLOCK_LENGTH_NvMBlockDescriptor_ECUConfiguration] = {0};
const uint8 Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1_Rom_NVM[NVM_CFG_NV_BLOCK_LENGTH_NvM_NativeBlock_2] = {0};

const uint8 Fbl_DataM_RomDataNV_ReprogrammingRequestFlagBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ExternalReprogrammingRequestFlagBlock]
    = {0};
const uint8 Fbl_DataM_RomDataNV_ValidityFlagsBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ValidityFlagsBlock]
    = {0x03};
const uint8 Fbl_DataM_RomDataNV_ResetResponseBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ResetResponseFlagBlock]
    = {0};
const uint8 Fbl_DataM_RomDataNV_FingerprintBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock]
    = {20, 20, 01, 01, 0, 0, 0, 0, 0, 0};
const uint8 Fbl_DataM_RomDataNV_CrcBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_CrcBlock]
    = {0, 0, 0, 0, 0, 0, 0, 0};
const uint8 Fbl_DataM_RomDataNV_ProgrammingAttemptCounterBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingAttemptCounterBlock]
    = {0, 0, 0, 0};
const uint8 Fbl_DataM_RomDataNV_ProgrammingCounterBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingCounterBlock]
    = {0, 0, 0, 0};
const uint8 Fbl_DataM_RomDataNV_Reserve00_FACBlock[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_00_FailureAttemptCnt_L1]
    = {0};
const uint8 Fbl_DataM_RomDataNV_Reserve01_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_01]
    = {0};
const uint8 Fbl_DataM_RomDataNV_Reserve02_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_02]
    = {0};
const uint8 Fbl_DataM_RomDataNV_Reserve03_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_03]
    = {0};
const uint8 Fbl_DataM_RomDataNV_Reserve04_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_04]
    = {0};
const uint8 Fbl_DataM_RomDataNV_Reserve05_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_05]
    = {0};
const uint8 Fbl_DataM_RomDataNV_Reserve06_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_06]
    = {0};
const uint8 Fbl_DataM_RomDataNV_Reserve07_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_07]
    = {0};
const uint8 Fbl_DataM_RomDataNV_Reserve08_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_08]
    = {0};
const uint8 Fbl_DataM_RomDataNV_Reserve09_Block[NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_09]
    = {0};


const Fbl_DataM_BlockDescriptorType Fbl_DataM_NvmBlockInfo[FBL_DATAM_NUM_NVM_BLOCKS] =
{
    {Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_ExternalReprogrammingRequestFlagBlock, NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock},
    {Fbl_DataM_RamMirrorNV_ValidityFlagsBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_ValidityFlagsBlock, NvMConf_NvMBlockDescriptor_NV_ValidityFlagsBlock},
    {Fbl_DataM_RamMirrorNV_ResetResponseBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_ResetResponseFlagBlock, NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock},
    {Fbl_DataM_RamMirrorNV_FingerprintBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock, NvMConf_NvMBlockDescriptor_NV_FingerprintBlock},
    {Fbl_DataM_RamMirrorNV_CrcBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_CrcBlock, NvMConf_NvMBlockDescriptor_NV_CrcBlock},
    {Fbl_DataM_RamMirrorNV_ProgrammingAttemptCounterBlock, NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingAttemptCounterBlock, NvMConf_NvMBlockDescriptor_NV_ProgrammingAttemptCounterBlock},
    {Fbl_DataM_RamMirrorNV_ProgrammingCounterBlock,NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingCounterBlock,NvMConf_NvMBlockDescriptor_NV_ProgrammingCounterBlock},
    {Fbl_DataM_RamMirrorNV_Reserve00_FACBlock,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_00_FailureAttemptCnt_L1,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_00_FailureAttemptCnt_L1},
    {Fbl_DataM_RamMirrorNV_Reserve01_Block,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_01,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_01},
    {Fbl_DataM_RamMirrorNV_Reserve02_Block,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_02,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_02},
    {Fbl_DataM_RamMirrorNV_Reserve03_Block,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_03,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_03},
    {Fbl_DataM_RamMirrorNV_Reserve04_Block,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_04,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_04},
    {Fbl_DataM_RamMirrorNV_Reserve05_Block,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_05,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_05},
    {Fbl_DataM_RamMirrorNV_Reserve06_Block,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_06,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_06},
    {Fbl_DataM_RamMirrorNV_Reserve07_Block,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_07,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_07},
    {Fbl_DataM_RamMirrorNV_Reserve08_Block,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_08,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_08},
    {Fbl_DataM_RamMirrorNV_Reserve09_Block,NVM_CFG_NV_BLOCK_LENGTH_NV_ReserveForBoot_09,NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_09},
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

Std_ReturnType Fbl_DataM_NV_Reserve00_FACBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_Reserve01_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_Reserve02_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_Reserve03_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_Reserve04_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_Reserve05_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_Reserve06_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_Reserve07_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_Reserve08_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

Std_ReturnType Fbl_DataM_NV_Reserve09_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult)
{
    return E_OK;
}

