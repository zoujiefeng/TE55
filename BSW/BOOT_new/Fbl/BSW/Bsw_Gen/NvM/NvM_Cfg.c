

// TRACE[NVM321]
// NvM file containing all configuration parameters which are to be implemented as constants

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/
#include "NvM_Prv_HideRteApi.h"

#include "MemIf.h"
// TRACE[NVM089]
// Check version compatibility of included header files
#if (!defined(MEMIF_AR_RELEASE_MAJOR_VERSION) || (MEMIF_AR_RELEASE_MAJOR_VERSION != NVM_AR_RELEASE_MAJOR_VERSION))
    #error "AUTOSAR major version undefined or mismatched"
#endif

#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
# include "Csm.h"
// TRACE[NVM089] Check version compatibility of included header files
# if (!defined(CSM_AR_RELEASE_MAJOR_VERSION) || (CSM_AR_RELEASE_MAJOR_VERSION != NVM_AR_RELEASE_MAJOR_VERSION))
#  error "AUTOSAR major version undefined or mismatched"
# endif
# if (!defined(CSM_AR_RELEASE_MINOR_VERSION) || (CSM_AR_RELEASE_MINOR_VERSION < 3))
#  error "AUTOSAR minor version undefined or mismatched"
# endif
#endif

#include "NvM_Prv.h"
#include "NvM_Prv_BlockData.h"
#include "NvM_Prv_InternalBuffer.h"

// TRACE[BSW_SWS_AR4_0_R2_NVRAMManager_Ext-2997]
// Include custumer/user specific declarations
#include "UDS_Nvm.h"
#include "MAIN_RunTime.h"

/*
 **********************************************************************************************************************
 * Extern declarations
 **********************************************************************************************************************
*/

// Multi block callback
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern void Fbl_DataM_MultiBlockJobEndNotification(uint8 ServiceId, NvM_RequestResultType JobResult);

// Single block callback of NVRAM block NV_ExternalReprogrammingRequestFlagBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_ReprogrammingRequestFlagBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ExternalReprogrammingRequestFlagBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock[];

// ROM block start address of NVRAM block NV_ExternalReprogrammingRequestFlagBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_ReprogrammingRequestFlagBlock[];

// Single block callback of NVRAM block NV_ValidityFlagsBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_ValidityFlagsBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ValidityFlagsBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_ValidityFlagsBlock[];

// ROM block start address of NVRAM block NV_ValidityFlagsBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_ValidityFlagsBlock[];

// Single block callback of NVRAM block NV_ResetResponseFlagBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_ResetResponseBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ResetResponseFlagBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_ResetResponseBlock[];

// ROM block start address of NVRAM block NV_ResetResponseFlagBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_ResetResponseBlock[];

// Single block callback of NVRAM block NV_FingerprintBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_FingerprintBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_FingerprintBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_FingerprintBlock[];

// ROM block start address of NVRAM block NV_FingerprintBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_FingerprintBlock[];

// Single block callback of NVRAM block NV_CrcBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_CrcBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_CrcBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_CrcBlock[];

// ROM block start address of NVRAM block NV_CrcBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_CrcBlock[];

// Single block callback of NVRAM block NV_ProgrammingAttemptCounterBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_ProgrammingAttemptCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ProgrammingAttemptCounterBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_ProgrammingAttemptCounterBlock[];

// ROM block start address of NVRAM block NV_ProgrammingAttemptCounterBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_ProgrammingAttemptCounterBlock[];

// Single block callback of NVRAM block NV_ProgrammingCounterBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_ProgrammingCounterBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ProgrammingCounterBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_ProgrammingCounterBlock[];

// ROM block start address of NVRAM block NV_ProgrammingCounterBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_ProgrammingCounterBlock[];

// Single block callback of NVRAM block NV_ReserveForBoot_00_FailureAttemptCnt_L1
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve00_FACBlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_00_FailureAttemptCnt_L1
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve00_FACBlock[];

// ROM block start address of NVRAM block NV_ReserveForBoot_00_FailureAttemptCnt_L1
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve00_FACBlock[];

// Single block callback of NVRAM block NV_ReserveForBoot_01
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve01_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_01
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve01_Block[];

// ROM block start address of NVRAM block NV_ReserveForBoot_01
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve01_Block[];

// Single block callback of NVRAM block NV_ReserveForBoot_02
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve02_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_02
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve02_Block[];

// ROM block start address of NVRAM block NV_ReserveForBoot_02
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve02_Block[];

// Single block callback of NVRAM block NV_ReserveForBoot_03
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve03_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_03
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve03_Block[];

// ROM block start address of NVRAM block NV_ReserveForBoot_03
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve03_Block[];

// Single block callback of NVRAM block NV_ReserveForBoot_04
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve04_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_04
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve04_Block[];

// ROM block start address of NVRAM block NV_ReserveForBoot_04
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve04_Block[];

// Single block callback of NVRAM block NV_ReserveForBoot_05
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve05_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_05
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve05_Block[];

// ROM block start address of NVRAM block NV_ReserveForBoot_05
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve05_Block[];

// Single block callback of NVRAM block NV_ReserveForBoot_06
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve06_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_06
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve06_Block[];

// ROM block start address of NVRAM block NV_ReserveForBoot_06
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve06_Block[];

// Single block callback of NVRAM block NV_ReserveForBoot_07
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve07_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_07
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve07_Block[];

// ROM block start address of NVRAM block NV_ReserveForBoot_07
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve07_Block[];

// Single block callback of NVRAM block NV_ReserveForBoot_08
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve08_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_08
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve08_Block[];

// ROM block start address of NVRAM block NV_ReserveForBoot_08
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve08_Block[];

// Single block callback of NVRAM block NV_ReserveForBoot_09
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Fbl_DataM_NV_Reserve09_BlockCallbackFunction(uint8 ServiceId, NvM_RequestResultType JobResult);

// RAM block of NVRAM block NV_ReserveForBoot_09
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Fbl_DataM_RamMirrorNV_Reserve09_Block[];

// ROM block start address of NVRAM block NV_ReserveForBoot_09
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Fbl_DataM_RomDataNV_Reserve09_Block[];

// RAM block of NVRAM block NvMBlock_LogisticData
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 NvBlock_ECU_LogisticData[];

// ROM block start address of NVRAM block NvMBlock_LogisticData
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 NvBlock_ECU_LogisticDataRom_NVM[];

// RAM block of NVRAM block NvMBlockDescriptor_ECUConfiguration
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 NvBlock_ECU_Configuration[];

// ROM block start address of NVRAM block NvMBlockDescriptor_ECUConfiguration
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 NvBlock_ECU_ConfigurationRom_NVM[];

// RAM block of NVRAM block NvM_NativeBlock_2
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1[];

// ROM block start address of NVRAM block NvM_NativeBlock_2
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1_Rom_NVM[];

// RAM block of NVRAM block NvM_UDS_au8FailureAttemptCnt_L1
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 UDS_au8FAC_L1_Ram[];

// ROM block start address of NVRAM block NvM_UDS_au8FailureAttemptCnt_L1
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 UDS_au8FAC_L1_Rom[];

// RAM block of NVRAM block NvM_NTC_Voltage_Calibration
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 NvM_u16NTC_Voltage_Calibration[];

// ROM block start address of NVRAM block NvM_NTC_Voltage_Calibration
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 NvM_u16NTC_Voltage_CalibrationDef[];

// RAM block of NVRAM block NvM_RCVoltageGain
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 RC_au16VoltageGain[];

// ROM block start address of NVRAM block NvM_RCVoltageGain
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 RC_kau16VoltageGain[];

/*
 **********************************************************************************************************************
 * Assertions
 **********************************************************************************************************************
*/

/* Block length check for Ram block data address of NVRAM block NvM_UDS_au8WrDidTable
   Checks the configured block length against the actual data size determined by the included header-file. */
/* MR12 DIR 1.1, RULE 1.1, 8.6, 14.3 VIOLATION: RB compiler assert is using mechanisms which makes the violations necessary. */
COMPILER_RB_ASSERT_GLOBAL(sizeof(UDS_au8WrDidTableNvM_Ram)==(128u), NvM_UDS_au8WrDidTable_CheckRamBlockLength)

/* Block length check for Rom block data address of NVRAM block NvM_UDS_au8WrDidTable
   Checks the configured block length against the actual data size determined by the included header-file. */
/* MR12 DIR 1.1, RULE 1.1, 8.6, 14.3 VIOLATION: RB compiler assert is using mechanisms which makes the violations necessary. */
COMPILER_RB_ASSERT_GLOBAL(sizeof(UDS_au8WrDidTableNvM_Rom)==(128u), NvM_UDS_au8WrDidTable_CheckRomBlockLength)

/* Block length check for Ram block data address of NVRAM block NvM_UDS_au8ESKData
   Checks the configured block length against the actual data size determined by the included header-file. */
/* MR12 DIR 1.1, RULE 1.1, 8.6, 14.3 VIOLATION: RB compiler assert is using mechanisms which makes the violations necessary. */
COMPILER_RB_ASSERT_GLOBAL(sizeof(UDS_au8ESKDataNvM_Ram)==(16u), NvM_UDS_au8ESKData_CheckRamBlockLength)

/* Block length check for Rom block data address of NVRAM block NvM_UDS_au8ESKData
   Checks the configured block length against the actual data size determined by the included header-file. */
/* MR12 DIR 1.1, RULE 1.1, 8.6, 14.3 VIOLATION: RB compiler assert is using mechanisms which makes the violations necessary. */
COMPILER_RB_ASSERT_GLOBAL(sizeof(UDS_au8ESKDataNvM_Rom)==(16u), NvM_UDS_au8ESKData_CheckRomBlockLength)

/* Block length check for Ram block data address of NVRAM block NVM_BlockRunTime
   Checks the configured block length against the actual data size determined by the included header-file. */
/* MR12 DIR 1.1, RULE 1.1, 8.6, 14.3 VIOLATION: RB compiler assert is using mechanisms which makes the violations necessary. */
COMPILER_RB_ASSERT_GLOBAL(sizeof(MAIN_u64RunTime_NVM)==(8u), NVM_BlockRunTime_CheckRamBlockLength)

/* Block length check for Rom block data address of NVRAM block NVM_BlockRunTime
   Checks the configured block length against the actual data size determined by the included header-file. */
/* MR12 DIR 1.1, RULE 1.1, 8.6, 14.3 VIOLATION: RB compiler assert is using mechanisms which makes the violations necessary. */
COMPILER_RB_ASSERT_GLOBAL(sizeof(MAIN_u64RunTimeRom_NVM)==(8u), NVM_BlockRunTime_CheckRomBlockLength)

/*
 **********************************************************************************************************************
 * Constants
 **********************************************************************************************************************
*/

#define NVM_START_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h"

// Array containing (persistent Id, block Id) couples sorted by ascendant persistent Ids
const NvM_Prv_PersId_BlockId_tst NvM_Prv_PersId_BlockId_acst[NVM_PRV_NR_PERSISTENT_IDS] =
{
    //{PersId, BlockId}
    {2206u, 11u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_02
    {2462u, 12u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_03
    {3030u, 10u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_01
    {3101u, 16u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_07
    {3127u, 3u}, // NvMConf_NvMBlockDescriptor_NV_ValidityFlagsBlock
    {3357u, 15u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_06
    {3740u, 14u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_05
    {3996u, 13u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_04
    {4240u, 18u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_09
    {4496u, 17u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_08
    {7470u, 22u}, // NvMConf_NvMBlockDescriptor_NvM_UDS_au8ESKData
    {8344u, 9u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_00_FailureAttemptCnt_L1
    {9145u, 5u}, // NvMConf_NvMBlockDescriptor_NV_FingerprintBlock
    {19119u, 8u}, // NvMConf_NvMBlockDescriptor_NV_ProgrammingCounterBlock
    {19741u, 19u}, // NvMConf_NvMBlockDescriptor_NvMBlock_LogisticData
    {20531u, 21u}, // NvMConf_NvMBlockDescriptor_NvM_UDS_au8WrDidTable
    {21054u, 27u}, // NvMConf_NvMBlockDescriptor_NvM_RCVoltageGain
    {21762u, 6u}, // NvMConf_NvMBlockDescriptor_NV_CrcBlock
    {29226u, 24u}, // NvMConf_NvMBlockDescriptor_NVM_BlockRunTime
    {32702u, 2u}, // NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock
    {39401u, 20u}, // NvMConf_NvMBlockDescriptor_NvMBlockDescriptor_ECUConfiguration
    {42671u, 23u}, // NvMConf_NvMBlockDescriptor_NvM_NativeBlock_2
    {46837u, 7u}, // NvMConf_NvMBlockDescriptor_NV_ProgrammingAttemptCounterBlock
    {47075u, 26u}, // NvMConf_NvMBlockDescriptor_NvM_NTC_Voltage_Calibration
    {59481u, 4u}, // NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock
    {62531u, 25u}, // NvMConf_NvMBlockDescriptor_NvM_UDS_au8FailureAttemptCnt_L1
};

// TRACE[NVM028_Conf]
// Structure containing common configuration options
const NvM_Prv_Common_tst NvM_Prv_Common_cst = {&Fbl_DataM_MultiBlockJobEndNotification, NULL_PTR, NULL_PTR};

// TRACE[NVM061_Conf]
// Array containing block descriptors
// TRACE[NVM140]
// The block descriptor contents are completely determined by configuration
const NvM_Prv_BlockDescriptor_tst NvM_Prv_BlockDescriptors_acst[NVM_CFG_NR_BLOCKS] =
{
    {
        // Block descriptor of NVRAM block NvM_MultiBlock (NvM block ID: 0):
        0u, // MemIf block ID (this block is not stored on any memory device)
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[0]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[0]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        0u,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        0u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NvM_ConfigId (NvM block ID: 1):
        0u, // MemIf block ID (this block is not stored on any memory device)
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[1]), // Block length calculated on compile time
        2u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[1]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        0u,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        0u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ExternalReprogrammingRequestFlagBlock (NvM block ID: 2, persistent ID: 32702):
        FeeConf_FeeBlockConfiguration_NV_ExternalReprogrammingRequestFlagBlock, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[2]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[2]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_ReprogrammingRequestFlagBlock), // ROM block data address
        &Fbl_DataM_NV_ReprogrammingRequestFlagBlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        32702u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ValidityFlagsBlock (NvM block ID: 3, persistent ID: 3127):
        FeeConf_FeeBlockConfiguration_NV_ValidityFlagsBlock, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[3]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[3]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_ValidityFlagsBlock), // ROM block data address
        &Fbl_DataM_NV_ValidityFlagsBlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        3127u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ResetResponseFlagBlock (NvM block ID: 4, persistent ID: 59481):
        FeeConf_FeeBlockConfiguration_NV_ResetResponseFlagBlock, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[4]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[4]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_ResetResponseBlock), // ROM block data address
        &Fbl_DataM_NV_ResetResponseBlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        59481u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_FingerprintBlock (NvM block ID: 5, persistent ID: 9145):
        FeeConf_FeeBlockConfiguration_NV_FingerprintBlock, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[5]), // Block length calculated on compile time
        10u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[5]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_FingerprintBlock), // ROM block data address
        &Fbl_DataM_NV_FingerprintBlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        9145u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_CrcBlock (NvM block ID: 6, persistent ID: 21762):
        FeeConf_FeeBlockConfiguration_NV_CrcBlock, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[6]), // Block length calculated on compile time
        8u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[6]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_CrcBlock), // ROM block data address
        &Fbl_DataM_NV_CrcBlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        21762u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ProgrammingAttemptCounterBlock (NvM block ID: 7, persistent ID: 46837):
        FeeConf_FeeBlockConfiguration_NV_ProgrammingAttemptCounterBlock, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[7]), // Block length calculated on compile time
        4u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[7]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_ProgrammingAttemptCounterBlock), // ROM block data address
        &Fbl_DataM_NV_ProgrammingAttemptCounterBlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        46837u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ProgrammingCounterBlock (NvM block ID: 8, persistent ID: 19119):
        FeeConf_FeeBlockConfiguration_NV_ProgrammingCounterBlock, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[8]), // Block length calculated on compile time
        4u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[8]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_ProgrammingCounterBlock), // ROM block data address
        &Fbl_DataM_NV_ProgrammingCounterBlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        19119u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_00_FailureAttemptCnt_L1 (NvM block ID: 9, persistent ID: 8344):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_00_FailureAttemptCnt_L1, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[9]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[9]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve00_FACBlock), // ROM block data address
        &Fbl_DataM_NV_Reserve00_FACBlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        8344u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_01 (NvM block ID: 10, persistent ID: 3030):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_01, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[10]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[10]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve01_Block), // ROM block data address
        &Fbl_DataM_NV_Reserve01_BlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        3030u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_02 (NvM block ID: 11, persistent ID: 2206):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_02, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[11]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[11]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve02_Block), // ROM block data address
        &Fbl_DataM_NV_Reserve02_BlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        2206u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_03 (NvM block ID: 12, persistent ID: 2462):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_03, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[12]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[12]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve03_Block), // ROM block data address
        &Fbl_DataM_NV_Reserve03_BlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        2462u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_04 (NvM block ID: 13, persistent ID: 3996):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_04, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[13]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[13]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve04_Block), // ROM block data address
        &Fbl_DataM_NV_Reserve04_BlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        3996u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_05 (NvM block ID: 14, persistent ID: 3740):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_05, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[14]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[14]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve05_Block), // ROM block data address
        &Fbl_DataM_NV_Reserve05_BlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        3740u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_06 (NvM block ID: 15, persistent ID: 3357):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_06, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[15]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[15]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve06_Block), // ROM block data address
        &Fbl_DataM_NV_Reserve06_BlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        3357u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_07 (NvM block ID: 16, persistent ID: 3101):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_07, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[16]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[16]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve07_Block), // ROM block data address
        &Fbl_DataM_NV_Reserve07_BlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        3101u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_08 (NvM block ID: 17, persistent ID: 4496):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_08, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[17]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[17]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve08_Block), // ROM block data address
        &Fbl_DataM_NV_Reserve08_BlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        4496u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NV_ReserveForBoot_09 (NvM block ID: 18, persistent ID: 4240):
        FeeConf_FeeBlockConfiguration_NV_ReserveForBoot_09, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[18]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[18]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Fbl_DataM_RomDataNV_Reserve09_Block), // ROM block data address
        &Fbl_DataM_NV_Reserve09_BlockCallbackFunction, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        4240u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NvMBlock_LogisticData (NvM block ID: 19, persistent ID: 19741):
        FeeConf_FeeBlockConfiguration_NvMBlock_LogisticData, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[19]), // Block length calculated on compile time
        128u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[19]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(NvBlock_ECU_LogisticDataRom_NVM), // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        19741u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NvMBlockDescriptor_ECUConfiguration (NvM block ID: 20, persistent ID: 39401):
        FeeConf_FeeBlockConfiguration_NvMBlockDescriptor_ECUConfiguration, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[20]), // Block length calculated on compile time
        4u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        2u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[20]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(NvBlock_ECU_ConfigurationRom_NVM), // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_REDUNDANT, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_FIRST_INIT_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        39401u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NvM_UDS_au8WrDidTable (NvM block ID: 21, persistent ID: 20531):
        FeeConf_FeeBlockConfiguration_NvM_UDS_au8WrDidTable, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[21]), // Block length calculated on compile time
        128u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[21]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(UDS_au8WrDidTableNvM_Rom), // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        20531u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NvM_UDS_au8ESKData (NvM block ID: 22, persistent ID: 7470):
        FeeConf_FeeBlockConfiguration_NvM_UDS_au8ESKData, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[22]), // Block length calculated on compile time
        16u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[22]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(UDS_au8ESKDataNvM_Rom), // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        7470u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NvM_NativeBlock_2 (NvM block ID: 23, persistent ID: 42671):
        FeeConf_FeeBlockConfiguration_NvM_NativeBlock_2, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[23]), // Block length calculated on compile time
        100u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        2u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[23]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1_Rom_NVM), // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_REDUNDANT, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        42671u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NVM_BlockRunTime (NvM block ID: 24, persistent ID: 29226):
        FeeConf_FeeBlockConfiguration_NVM_BlockRunTime, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[24]), // Block length calculated on compile time
        8u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[24]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(MAIN_u64RunTimeRom_NVM), // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        29226u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NvM_UDS_au8FailureAttemptCnt_L1 (NvM block ID: 25, persistent ID: 62531):
        FeeConf_FeeBlockConfiguration_NvM_UDS_au8FailureAttemptCnt_L1, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[25]), // Block length calculated on compile time
        1u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[25]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(UDS_au8FAC_L1_Rom), // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        62531u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NvM_NTC_Voltage_Calibration (NvM block ID: 26, persistent ID: 47075):
        FeeConf_FeeBlockConfiguration_NvM_NTC_Voltage_Calibration, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[26]), // Block length calculated on compile time
        2u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[26]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(NvM_u16NTC_Voltage_CalibrationDef), // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        47075u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
    {
        // Block descriptor of NVRAM block NvM_RCVoltageGain (NvM block ID: 27, persistent ID: 21054):
        FeeConf_FeeBlockConfiguration_NvM_RCVoltageGain, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[27]), // Block length calculated on compile time
        50u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[27]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(RC_kau16VoltageGain), // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        NULL_PTR, // Explicit sync read callback
        NULL_PTR, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        21054u, // Persistent ID
        {
            NULL_PTR, // Pointer to associated data used for AEAD encryption
            {
                0u, // Csm job ID to generate random number
                0u, // Csm job ID to encrypt user data
                0u, // Csm job ID to decrypt user data
                0u, // Csm job ID to generate signature
                0u, // Csm job ID to verify signature
            },
            {
                0u, // Length of the random number
                0u, // Length of encrypted user data
                0u, // Length of encrypted user data
                0u, // Length of the signature
                0u, // Length of the signature
            },
            0u, // Length of associated data used for AEAD encryption
            0u, // Length of the tag stored for AEAD encryption
        }
#endif
    },
};

#if (defined(NVM_CFG_CRC_NR_RAM_BLOCKS) && (NVM_CFG_CRC_NR_RAM_BLOCKS > 0u))
NvM_BlockIdType const NvM_Prv_idBlockRamCrc_cauo[NVM_CFG_CRC_NR_RAM_BLOCKS] =
{
};
#endif

// TRACE[BSW_SWS_AR4_0_R2_NVRAMManager_Ext-3028]
// Runtime Calculation feature disabled
#if (NVM_PRV_RUNTIME_RAM_BLOCK_CONFIG == STD_OFF)
// Used to calculate the NV block lengths on compile time
// This variable is mapped into the block descriptor NvM_Prv_BlockDescriptors_acst
const uint16 NvM_Prv_BlockLengths_acu16[NVM_CFG_NR_BLOCKS] =
{
    // Block length of NVRAM block NvM_MultiBlock (NvM block ID: 0)
    1u,
    // Block length of NVRAM block NvM_ConfigId (NvM block ID: 1)
    2u,
    // Block length of NVRAM block NV_ExternalReprogrammingRequestFlagBlock (NvM block ID: 2)
    1u,
    // Block length of NVRAM block NV_ValidityFlagsBlock (NvM block ID: 3)
    1u,
    // Block length of NVRAM block NV_ResetResponseFlagBlock (NvM block ID: 4)
    1u,
    // Block length of NVRAM block NV_FingerprintBlock (NvM block ID: 5)
    10u,
    // Block length of NVRAM block NV_CrcBlock (NvM block ID: 6)
    8u,
    // Block length of NVRAM block NV_ProgrammingAttemptCounterBlock (NvM block ID: 7)
    4u,
    // Block length of NVRAM block NV_ProgrammingCounterBlock (NvM block ID: 8)
    4u,
    // Block length of NVRAM block NV_ReserveForBoot_00_FailureAttemptCnt_L1 (NvM block ID: 9)
    1u,
    // Block length of NVRAM block NV_ReserveForBoot_01 (NvM block ID: 10)
    200u,
    // Block length of NVRAM block NV_ReserveForBoot_02 (NvM block ID: 11)
    1u,
    // Block length of NVRAM block NV_ReserveForBoot_03 (NvM block ID: 12)
    1u,
    // Block length of NVRAM block NV_ReserveForBoot_04 (NvM block ID: 13)
    1u,
    // Block length of NVRAM block NV_ReserveForBoot_05 (NvM block ID: 14)
    1u,
    // Block length of NVRAM block NV_ReserveForBoot_06 (NvM block ID: 15)
    1u,
    // Block length of NVRAM block NV_ReserveForBoot_07 (NvM block ID: 16)
    1u,
    // Block length of NVRAM block NV_ReserveForBoot_08 (NvM block ID: 17)
    1u,
    // Block length of NVRAM block NV_ReserveForBoot_09 (NvM block ID: 18)
    1u,
    // Block length of NVRAM block NvMBlock_LogisticData (NvM block ID: 19)
    128u,
    // Block length of NVRAM block NvMBlockDescriptor_ECUConfiguration (NvM block ID: 20)
    4u,
    // Block length of NVRAM block NvM_UDS_au8WrDidTable (NvM block ID: 21)
    128u,
    // Block length of NVRAM block NvM_UDS_au8ESKData (NvM block ID: 22)
    16u,
    // Block length of NVRAM block NvM_NativeBlock_2 (NvM block ID: 23)
    100u,
    // Block length of NVRAM block NVM_BlockRunTime (NvM block ID: 24)
    8u,
    // Block length of NVRAM block NvM_UDS_au8FailureAttemptCnt_L1 (NvM block ID: 25)
    1u,
    // Block length of NVRAM block NvM_NTC_Voltage_Calibration (NvM block ID: 26)
    2u,
    // Block length of NVRAM block NvM_RCVoltageGain (NvM block ID: 27)
    50u,
};
// Used to calculate the RAM block data addresses on compile runtime
// This variable is mapped into the block descriptor NvM_Prv_BlockDescriptors_acst
void * const NvM_Prv_RamBlockAdr_acpv[NVM_CFG_NR_BLOCKS] =
{
    // Permanent RAM address of NVRAM block NvM_MultiBlock (NvM block ID: 0)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NULL_PTR,
    // Permanent RAM address of NVRAM block NvM_ConfigId (NvM block ID: 1)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NULL_PTR,
    // Permanent RAM address of NVRAM block NV_ExternalReprogrammingRequestFlagBlock (NvM block ID: 2)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock),
    // Permanent RAM address of NVRAM block NV_ValidityFlagsBlock (NvM block ID: 3)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_ValidityFlagsBlock),
    // Permanent RAM address of NVRAM block NV_ResetResponseFlagBlock (NvM block ID: 4)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_ResetResponseBlock),
    // Permanent RAM address of NVRAM block NV_FingerprintBlock (NvM block ID: 5)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_FingerprintBlock),
    // Permanent RAM address of NVRAM block NV_CrcBlock (NvM block ID: 6)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_CrcBlock),
    // Permanent RAM address of NVRAM block NV_ProgrammingAttemptCounterBlock (NvM block ID: 7)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_ProgrammingAttemptCounterBlock),
    // Permanent RAM address of NVRAM block NV_ProgrammingCounterBlock (NvM block ID: 8)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_ProgrammingCounterBlock),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_00_FailureAttemptCnt_L1 (NvM block ID: 9)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve00_FACBlock),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_01 (NvM block ID: 10)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve01_Block),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_02 (NvM block ID: 11)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve02_Block),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_03 (NvM block ID: 12)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve03_Block),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_04 (NvM block ID: 13)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve04_Block),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_05 (NvM block ID: 14)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve05_Block),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_06 (NvM block ID: 15)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve06_Block),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_07 (NvM block ID: 16)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve07_Block),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_08 (NvM block ID: 17)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve08_Block),
    // Permanent RAM address of NVRAM block NV_ReserveForBoot_09 (NvM block ID: 18)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Fbl_DataM_RamMirrorNV_Reserve09_Block),
    // Permanent RAM address of NVRAM block NvMBlock_LogisticData (NvM block ID: 19)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(NvBlock_ECU_LogisticData),
    // Permanent RAM address of NVRAM block NvMBlockDescriptor_ECUConfiguration (NvM block ID: 20)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(NvBlock_ECU_Configuration),
    // Permanent RAM address of NVRAM block NvM_UDS_au8WrDidTable (NvM block ID: 21)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(UDS_au8WrDidTableNvM_Ram),
    // Permanent RAM address of NVRAM block NvM_UDS_au8ESKData (NvM block ID: 22)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(UDS_au8ESKDataNvM_Ram),
    // Permanent RAM address of NVRAM block NvM_NativeBlock_2 (NvM block ID: 23)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1),
    // Permanent RAM address of NVRAM block NVM_BlockRunTime (NvM block ID: 24)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(MAIN_u64RunTime_NVM),
    // Permanent RAM address of NVRAM block NvM_UDS_au8FailureAttemptCnt_L1 (NvM block ID: 25)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(UDS_au8FAC_L1_Ram),
    // Permanent RAM address of NVRAM block NvM_NTC_Voltage_Calibration (NvM block ID: 26)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(NvM_u16NTC_Voltage_Calibration),
    // Permanent RAM address of NVRAM block NvM_RCVoltageGain (NvM block ID: 27)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(RC_au16VoltageGain),
};
#endif

#define NVM_STOP_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h"
/*
 **********************************************************************************************************************
 * Variables
 **********************************************************************************************************************
*/

// TRACE[BSW_SWS_AR4_0_R2_NVRAMManager_Ext-3028]
// Runtime Calculation feature enabled
#if (NVM_PRV_RUNTIME_RAM_BLOCK_CONFIG == STD_ON)
# define NVM_START_SEC_VAR_CLEARED_UNSPECIFIED
# include "NvM_MemMap.h"
// Used to calculate the NV block lengths and RAM block data addresses on runtime
// These variables are mapped into the block descriptor NvM_Prv_BlockDescriptors_acst
uint16 NvM_Prv_BlockLengths_au16[NVM_CFG_NR_BLOCKS];
void *NvM_Prv_RamBlockAdr_apv[NVM_CFG_NR_BLOCKS];
# define NVM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
# include "NvM_MemMap.h"
#endif

/*
 **********************************************************************************************************************
 * Functions
 **********************************************************************************************************************
*/
# define NvM_START_SEC_CODE
# include "NvM_MemMap.h"
/********************************************************************************************
 * Initialization of NV block length and RAM block data address (permanent RAM address)     *
 *                                                                                          *
 * In this case NvMRbRuntimeRamBlockConfiguration is enabled                                *
 * + NV block length is defined either by NvMRbNvBlockLengthString or NvMNvBlockLength      *
 * + RAM block data address is still defined by NvMRamBlockDataAddress but now              *
 *   NvMRamBlockDataAddress can also contain C expressions                                  *
 *                                                                                          *
 * Furthermore if explicit sync feature is enabled the explicit sync buffer is defined here *
 * by setting the start address and calculating the buffer size                             *
 * Start address and end address is defined by user in common options with the parameters   *
 * + NvMRbRuntimeRamBufferAddressStart                                                      *
 * + NvMRbRuntimeRamBufferAddressEnd                                                        *
 *                                                                                          *
 * ******************************************************************************************
*/
/* HIS METRIC STMT VIOLATION IN NvM_Prv_InitRamBlockProperties: Due to the configuration this generated function may be empty */
void NvM_Prv_InitRamBlockProperties(void)
{
    // TRACE[BSW_SWS_AR4_0_R2_NVRAMManager_Ext-3028]
    // Runtime Calculation feature enabled
#if (NVM_PRV_RUNTIME_RAM_BLOCK_CONFIG == STD_ON)
# if (NVM_PRV_EXPLICIT_SYNC == STD_ON)
    // Calculate explicit synchronization RAM buffer size
    /* MR12 RULE 11.4 VIOLATION: Cast to an integral type is necessary to calculate the size of the object*/
    uint32 RuntimeRamMirrorSize_u32 = (uint32)(0) - (uint32)(0);

    // TRACE[BSW_SWS_AR4_0_R2_NVRAMManager_Ext-3029] Calculate explicit synchronization RAM buffer
    // TRACE[BSW_SWS_AR4_0_R2_NVRAMManager_Ext-3030] Calculate explicit synchronization RAM buffer
    // Set explicit synchronization RAM buffer start address and its size
    NvM_Prv_InitRuntimeRamMirror((uint8 *)(0),
                                 RuntimeRamMirrorSize_u32);
# endif



#endif
}
# define NVM_STOP_SEC_CODE
# include "NvM_MemMap.h"
