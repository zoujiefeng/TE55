

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
#include "MAIN_CalibData.h"
#include "EcuM.h"

/*
 **********************************************************************************************************************
 * Extern declarations
 **********************************************************************************************************************
*/

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

// RAM block of NVRAM block NvM_ShutdownStatusBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xShutdownStatusBlock[];

// ROM block start address of NVRAM block NvM_ShutdownStatusBlock
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xShutdownStatusBlockRom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_0
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_0[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_0
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_0_Rom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_1
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_1[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_1
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_1_Rom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_2
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_2[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_2
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_2_Rom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_3
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_3[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_3
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_3_Rom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_4
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_4[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_4
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_4_Rom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_5
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_5[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_5
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_5_Rom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_6
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_6[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_6
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_6_Rom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_7
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_7[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_7
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_7_Rom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_8
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_8[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_8
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_8_Rom_NVM[];

// RAM block of NVRAM block NvM_ResetLogNvMEntry_9
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern uint8 ERL_xResetLogNvMEntry_9[];

// ROM block start address of NVRAM block NvM_ResetLogNvMEntry_9
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern const uint8 ERL_xResetLogNvMEntry_9_Rom_NVM[];

// Explicit sync read callback of NVRAM block NVM_ID_DEM_GENERIC_NV_DATA
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_GenericNVDataReadRamBlockFromNvCallback(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_DEM_GENERIC_NV_DATA
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_GenericNVDataWriteRamBlockToNvCallback(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_0
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback0(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_0
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback0(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_1
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback1(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_1
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback1(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_10
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback10(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_10
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback10(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_11
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback11(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_11
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback11(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_12
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback12(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_12
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback12(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_13
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback13(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_13
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback13(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_14
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback14(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_14
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback14(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_15
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback15(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_15
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback15(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_2
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback2(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_2
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback2(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_3
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback3(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_3
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback3(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_4
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback4(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_4
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback4(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_5
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback5(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_5
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback5(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_6
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback6(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_6
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback6(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_7
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback7(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_7
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback7(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_8
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback8(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_8
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback8(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVMEM_LOC_9
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvmReadRamBlockFromNvCallback9(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVMEM_LOC_9
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EvMemNvMWriteRamBlockToNvCallback9(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_EVT_STATUSBYTE
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EventStatusByteReadRamBlockFromNvCallback(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_EVT_STATUSBYTE
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EventStatusByteWriteRamBlockToNvCallback(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_INDICATOR_ATTRIBUTES
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EventIndicatorReadRamBlockFromNvCallback(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_INDICATOR_ATTRIBUTES
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType Dem_EventIndicatorWriteRamBlockToNvCallback(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_OBD_DTR_DATA
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType rba_DemObdBasic_DtrReadRamBlockFromNvCallback(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_OBD_DTR_DATA
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType rba_DemObdBasic_DtrWriteRamBlockToNvCallback(void* NvMBuffer);

// Explicit sync read callback of NVRAM block NVM_ID_OBD_PERMANENT_MEMORY
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType rba_DemObdBasic_PdtcMemReadRamBlockFromNvCallback(void* NvMBuffer);

// Explicit sync write callback of NVRAM block NVM_ID_OBD_PERMANENT_MEMORY
/* MR12 RULE 8.5, 8.6 VIOLATION: If we declared this in NvM_Cfg.h,
                                 we would effectively re-export this to all NvM users */
extern Std_ReturnType rba_DemObdBasic_PdtcMemWriteRamBlockToNvCallback(void* NvMBuffer);

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

/* Block length check for Ram block data address of NVRAM block NvM_RCVoltageGain
   Checks the configured block length against the actual data size determined by the included header-file. */
/* MR12 DIR 1.1, RULE 1.1, 8.6, 14.3 VIOLATION: RB compiler assert is using mechanisms which makes the violations necessary. */
COMPILER_RB_ASSERT_GLOBAL(sizeof(RC_au16VoltageGain)==(50u), NvM_RCVoltageGain_CheckRamBlockLength)

/* Block length check for Rom block data address of NVRAM block NvM_RCVoltageGain
   Checks the configured block length against the actual data size determined by the included header-file. */
/* MR12 DIR 1.1, RULE 1.1, 8.6, 14.3 VIOLATION: RB compiler assert is using mechanisms which makes the violations necessary. */
COMPILER_RB_ASSERT_GLOBAL(sizeof(RC_kau16VoltageGain)==(50u), NvM_RCVoltageGain_CheckRomBlockLength)

/* Block length check for Ram block data address of NVRAM block ECUM_CFG_NVM_BLOCK
   Checks the configured block length against the actual data size determined by the included header-file. */
/* MR12 DIR 1.1, RULE 1.1, 8.6, 14.3 VIOLATION: RB compiler assert is using mechanisms which makes the violations necessary. */
COMPILER_RB_ASSERT_GLOBAL(sizeof(EcuM_Rb_dataShutdownInfo_st)==(4u), ECUM_CFG_NVM_BLOCK_CheckRamBlockLength)

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
    {560u, 50u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_4
    {945u, 51u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_5
    {2206u, 11u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_02
    {2462u, 12u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_03
    {3030u, 10u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_01
    {3101u, 16u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_07
    {3127u, 3u}, // NvMConf_NvMBlockDescriptor_NV_ValidityFlagsBlock
    {3357u, 15u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_06
    {3740u, 14u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_05
    {3996u, 13u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_04
    {4154u, 53u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_7
    {4240u, 18u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_09
    {4496u, 17u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_08
    {4539u, 52u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_6
    {5878u, 35u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_8
    {6007u, 36u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_9
    {7470u, 22u}, // NvMConf_NvMBlockDescriptor_NvM_UDS_au8ESKData
    {8344u, 9u}, // NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_00_FailureAttemptCnt_L1
    {9145u, 5u}, // NvMConf_NvMBlockDescriptor_NV_FingerprintBlock
    {9383u, 41u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_1
    {9510u, 40u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_0
    {13997u, 48u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_2
    {14124u, 49u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_3
    {14390u, 58u}, // NvMConf_NvMBlockDescriptor_NVM_ID_OBD_DTR_DATA
    {18644u, 30u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_3
    {18773u, 29u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_2
    {19105u, 39u}, // NvMConf_NvMBlockDescriptor_NVM_ID_DEM_GENERIC_NV_DATA
    {19119u, 8u}, // NvMConf_NvMBlockDescriptor_NV_ProgrammingCounterBlock
    {19741u, 19u}, // NvMConf_NvMBlockDescriptor_NvMBlock_LogisticData
    {20531u, 21u}, // NvMConf_NvMBlockDescriptor_NvM_UDS_au8WrDidTable
    {20742u, 56u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVT_STATUSBYTE
    {21054u, 37u}, // NvMConf_NvMBlockDescriptor_NvM_RCVoltageGain
    {21518u, 26u}, // NvMConf_NvMBlockDescriptor_NvM_ShutdownStatusBlock
    {21762u, 6u}, // NvMConf_NvMBlockDescriptor_NV_CrcBlock
    {23135u, 27u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_0
    {23518u, 28u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_1
    {25747u, 57u}, // NvMConf_NvMBlockDescriptor_NVM_ID_INDICATOR_ATTRIBUTES
    {27275u, 55u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_9
    {27402u, 54u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_8
    {28352u, 34u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_7
    {28481u, 33u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_6
    {29226u, 24u}, // NvMConf_NvMBlockDescriptor_NVM_BlockRunTime
    {31819u, 31u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_4
    {32202u, 32u}, // NvMConf_NvMBlockDescriptor_NvM_ResetLogNvMEntry_5
    {32702u, 2u}, // NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock
    {34539u, 42u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_10
    {37730u, 59u}, // NvMConf_NvMBlockDescriptor_NVM_ID_OBD_PERMANENT_MEMORY
    {38883u, 43u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_11
    {39401u, 20u}, // NvMConf_NvMBlockDescriptor_NvMBlockDescriptor_ECUConfiguration
    {42106u, 44u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_12
    {42671u, 23u}, // NvMConf_NvMBlockDescriptor_NvM_NativeBlock_2
    {46450u, 45u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_13
    {46837u, 7u}, // NvMConf_NvMBlockDescriptor_NV_ProgrammingAttemptCounterBlock
    {49736u, 47u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_15
    {54080u, 46u}, // NvMConf_NvMBlockDescriptor_NVM_ID_EVMEM_LOC_14
    {59481u, 4u}, // NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock
    {62199u, 38u}, // NvMConf_NvMBlockDescriptor_ECUM_CFG_NVM_BLOCK
    {62531u, 25u}, // NvMConf_NvMBlockDescriptor_NvM_UDS_au8FailureAttemptCnt_L1
};

// TRACE[NVM028_Conf]
// Structure containing common configuration options
const NvM_Prv_Common_tst NvM_Prv_Common_cst = {NULL_PTR, NULL_PTR, NULL_PTR};

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
        // Block descriptor of NVRAM block NvM_ShutdownStatusBlock (NvM block ID: 26, persistent ID: 21518):
        FeeConf_FeeBlockConfiguration_NvM_ShutdownStatusBlock, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[26]), // Block length calculated on compile time
        16u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[26]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xShutdownStatusBlockRom_NVM), // ROM block data address
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
        21518u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_0 (NvM block ID: 27, persistent ID: 23135):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_0, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[27]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[27]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_0_Rom_NVM), // ROM block data address
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
        23135u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_1 (NvM block ID: 28, persistent ID: 23518):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_1, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[28]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[28]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_1_Rom_NVM), // ROM block data address
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
        23518u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_2 (NvM block ID: 29, persistent ID: 18773):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_2, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[29]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[29]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_2_Rom_NVM), // ROM block data address
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
        18773u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_3 (NvM block ID: 30, persistent ID: 18644):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_3, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[30]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[30]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_3_Rom_NVM), // ROM block data address
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
        18644u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_4 (NvM block ID: 31, persistent ID: 31819):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_4, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[31]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[31]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_4_Rom_NVM), // ROM block data address
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
        31819u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_5 (NvM block ID: 32, persistent ID: 32202):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_5, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[32]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[32]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_5_Rom_NVM), // ROM block data address
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
        32202u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_6 (NvM block ID: 33, persistent ID: 28481):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_6, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[33]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[33]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_6_Rom_NVM), // ROM block data address
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
        28481u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_7 (NvM block ID: 34, persistent ID: 28352):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_7, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[34]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[34]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_7_Rom_NVM), // ROM block data address
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
        28352u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_8 (NvM block ID: 35, persistent ID: 5878):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_8, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[35]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[35]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_8_Rom_NVM), // ROM block data address
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
        5878u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_ResetLogNvMEntry_9 (NvM block ID: 36, persistent ID: 6007):
        FeeConf_FeeBlockConfiguration_NvM_ResetLogNvMEntry_9, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[36]), // Block length calculated on compile time
        200u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[36]), // RAM block data address calculated on compile time
        /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
        (const void *)&(ERL_xResetLogNvMEntry_9_Rom_NVM), // ROM block data address
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
        6007u, // Persistent ID
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
        // Block descriptor of NVRAM block NvM_RCVoltageGain (NvM block ID: 37, persistent ID: 21054):
        FeeConf_FeeBlockConfiguration_NvM_RCVoltageGain, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[37]), // Block length calculated on compile time
        50u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        1u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[37]), // RAM block data address calculated on compile time
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
    {
        // Block descriptor of NVRAM block ECUM_CFG_NVM_BLOCK (NvM block ID: 38, persistent ID: 62199):
        FeeConf_FeeBlockConfiguration_ECUM_CFG_NVM_BLOCK, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[38]), // Block length calculated on compile time
        4u, // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[38]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        &EcuM_Rb_NvMSingleBlockCallbackFunction, // Single block callback
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
        62199u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_DEM_GENERIC_NV_DATA (NvM block ID: 39, persistent ID: 19105):
        FeeConf_FeeBlockConfiguration_NVM_ID_DEM_GENERIC_NV_DATA, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[39]), // Block length calculated on compile time
        (DEM_SIZEOF_VAR(Dem_GenericNvData) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[39]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_GenericNVDataReadRamBlockFromNvCallback, // Explicit sync read callback
        &Dem_GenericNVDataWriteRamBlockToNvCallback, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        19105u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_0 (NvM block ID: 40, persistent ID: 9510):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_0, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[40]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[40]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback0, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback0, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        9510u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_1 (NvM block ID: 41, persistent ID: 9383):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_1, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[41]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[41]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback1, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback1, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        9383u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_10 (NvM block ID: 42, persistent ID: 34539):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_10, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[42]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[42]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback10, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback10, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        34539u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_11 (NvM block ID: 43, persistent ID: 38883):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_11, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[43]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[43]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback11, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback11, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        38883u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_12 (NvM block ID: 44, persistent ID: 42106):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_12, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[44]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[44]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback12, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback12, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        42106u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_13 (NvM block ID: 45, persistent ID: 46450):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_13, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[45]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[45]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback13, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback13, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        46450u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_14 (NvM block ID: 46, persistent ID: 54080):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_14, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[46]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[46]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback14, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback14, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        54080u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_15 (NvM block ID: 47, persistent ID: 49736):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_15, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[47]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[47]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback15, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback15, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        49736u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_2 (NvM block ID: 48, persistent ID: 13997):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_2, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[48]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[48]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback2, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback2, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        13997u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_3 (NvM block ID: 49, persistent ID: 14124):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_3, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[49]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[49]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback3, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback3, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        14124u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_4 (NvM block ID: 50, persistent ID: 560):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_4, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[50]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[50]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback4, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback4, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        560u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_5 (NvM block ID: 51, persistent ID: 945):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_5, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[51]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[51]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback5, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback5, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        945u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_6 (NvM block ID: 52, persistent ID: 4539):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_6, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[52]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[52]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback6, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback6, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        4539u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_7 (NvM block ID: 53, persistent ID: 4154):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_7, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[53]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[53]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback7, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback7, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        4154u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_8 (NvM block ID: 54, persistent ID: 27402):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_8, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[54]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[54]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback8, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback8, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        27402u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVMEM_LOC_9 (NvM block ID: 55, persistent ID: 27275):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVMEM_LOC_9, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[55]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[55]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EvMemNvmReadRamBlockFromNvCallback9, // Explicit sync read callback
        &Dem_EvMemNvMWriteRamBlockToNvCallback9, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        27275u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_EVT_STATUSBYTE (NvM block ID: 56, persistent ID: 20742):
        FeeConf_FeeBlockConfiguration_NVM_ID_EVT_STATUSBYTE, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[56]), // Block length calculated on compile time
        (DEM_SIZEOF_VAR(Dem_AllEventsStatusByte) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[56]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EventStatusByteReadRamBlockFromNvCallback, // Explicit sync read callback
        &Dem_EventStatusByteWriteRamBlockToNvCallback, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        20742u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_INDICATOR_ATTRIBUTES (NvM block ID: 57, persistent ID: 25747):
        FeeConf_FeeBlockConfiguration_NVM_ID_INDICATOR_ATTRIBUTES, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[57]), // Block length calculated on compile time
        (DEM_SIZEOF_VAR(Dem_AllEventsIndicatorState) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[57]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &Dem_EventIndicatorReadRamBlockFromNvCallback, // Explicit sync read callback
        &Dem_EventIndicatorWriteRamBlockToNvCallback, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        25747u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_OBD_DTR_DATA (NvM block ID: 58, persistent ID: 14390):
        FeeConf_FeeBlockConfiguration_NVM_ID_OBD_DTR_DATA, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[58]), // Block length calculated on compile time
        (DEM_SIZEOF_TYPE(rba_DemObdBasic_DtrDataType) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[58]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &rba_DemObdBasic_DtrReadRamBlockFromNvCallback, // Explicit sync read callback
        &rba_DemObdBasic_DtrWriteRamBlockToNvCallback, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        14390u, // Persistent ID
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
        // Block descriptor of NVRAM block NVM_ID_OBD_PERMANENT_MEMORY (NvM block ID: 59, persistent ID: 37730):
        FeeConf_FeeBlockConfiguration_NVM_ID_OBD_PERMANENT_MEMORY, // MemIf block ID
        (const uint16 *) &(NvM_Prv_BlockLengths_acu16[59]), // Block length calculated on compile time
        (DEM_SIZEOF_VAR(rba_DemObdBasic_PdtcMem) + 0), // block length in bytes stored on the medium
        0u, // Device index (0: Fee, 1..254: Ea)
        1u, // Number of NV blocks
        0u, // Number of ROM blocks
        &(NvM_Prv_RamBlockAdr_acpv[59]), // RAM block data address calculated on compile time
        NULL_PTR, // ROM block data address
        NULL_PTR, // Single block callback
        NULL_PTR, // Single block start callback
        NULL_PTR, // Initialization callback
        &rba_DemObdBasic_PdtcMemReadRamBlockFromNvCallback, // Explicit sync read callback
        &rba_DemObdBasic_PdtcMemWriteRamBlockToNvCallback, // Explicit sync write callback
        NVM_BLOCK_NATIVE, // Block management type
        1u, // Job priority (0: Immediate, 1: Standard)
        // Block flags
        (uint32)NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM |
        (uint32)NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL |
        (uint32)NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL,
#if (defined(NVM_CALC_CRC) && (NVM_CALC_CRC == STD_ON))
        NvM_Prv_Crc_Type_NoCrc_e, // CRC type used for this block
        0u, // Index of the RAM block CRC in the corresponding array with same CRC type
#endif
#if (defined(NVM_CRYPTO_USED) && (NVM_CRYPTO_USED == STD_ON))
        37730u, // Persistent ID
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
    // Block length of NVRAM block NvM_ShutdownStatusBlock (NvM block ID: 26)
    16u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_0 (NvM block ID: 27)
    200u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_1 (NvM block ID: 28)
    200u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_2 (NvM block ID: 29)
    200u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_3 (NvM block ID: 30)
    200u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_4 (NvM block ID: 31)
    200u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_5 (NvM block ID: 32)
    200u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_6 (NvM block ID: 33)
    200u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_7 (NvM block ID: 34)
    200u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_8 (NvM block ID: 35)
    200u,
    // Block length of NVRAM block NvM_ResetLogNvMEntry_9 (NvM block ID: 36)
    200u,
    // Block length of NVRAM block NvM_RCVoltageGain (NvM block ID: 37)
    50u,
    // Block length of NVRAM block ECUM_CFG_NVM_BLOCK (NvM block ID: 38)
    4u,
    // Block length of NVRAM block NVM_ID_DEM_GENERIC_NV_DATA (NvM block ID: 39)
    DEM_SIZEOF_VAR(Dem_GenericNvData),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_0 (NvM block ID: 40)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_1 (NvM block ID: 41)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_10 (NvM block ID: 42)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_11 (NvM block ID: 43)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_12 (NvM block ID: 44)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_13 (NvM block ID: 45)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_14 (NvM block ID: 46)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_15 (NvM block ID: 47)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_2 (NvM block ID: 48)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_3 (NvM block ID: 49)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_4 (NvM block ID: 50)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_5 (NvM block ID: 51)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_6 (NvM block ID: 52)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_7 (NvM block ID: 53)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_8 (NvM block ID: 54)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVMEM_LOC_9 (NvM block ID: 55)
    DEM_SIZEOF_TYPE(Dem_EvMemEventMemoryType),
    // Block length of NVRAM block NVM_ID_EVT_STATUSBYTE (NvM block ID: 56)
    DEM_SIZEOF_VAR(Dem_AllEventsStatusByte),
    // Block length of NVRAM block NVM_ID_INDICATOR_ATTRIBUTES (NvM block ID: 57)
    DEM_SIZEOF_VAR(Dem_AllEventsIndicatorState),
    // Block length of NVRAM block NVM_ID_OBD_DTR_DATA (NvM block ID: 58)
    DEM_SIZEOF_TYPE(rba_DemObdBasic_DtrDataType),
    // Block length of NVRAM block NVM_ID_OBD_PERMANENT_MEMORY (NvM block ID: 59)
    DEM_SIZEOF_VAR(rba_DemObdBasic_PdtcMem),
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
    // Permanent RAM address of NVRAM block NvM_ShutdownStatusBlock (NvM block ID: 26)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xShutdownStatusBlock),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_0 (NvM block ID: 27)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_0),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_1 (NvM block ID: 28)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_1),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_2 (NvM block ID: 29)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_2),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_3 (NvM block ID: 30)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_3),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_4 (NvM block ID: 31)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_4),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_5 (NvM block ID: 32)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_5),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_6 (NvM block ID: 33)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_6),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_7 (NvM block ID: 34)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_7),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_8 (NvM block ID: 35)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_8),
    // Permanent RAM address of NVRAM block NvM_ResetLogNvMEntry_9 (NvM block ID: 36)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(ERL_xResetLogNvMEntry_9),
    // Permanent RAM address of NVRAM block NvM_RCVoltageGain (NvM block ID: 37)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(RC_au16VoltageGain),
    // Permanent RAM address of NVRAM block ECUM_CFG_NVM_BLOCK (NvM block ID: 38)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)&(EcuM_Rb_dataShutdownInfo_st),
    // Permanent RAM address of NVRAM block NVM_ID_DEM_GENERIC_NV_DATA (NvM block ID: 39)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_0 (NvM block ID: 40)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_1 (NvM block ID: 41)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_10 (NvM block ID: 42)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_11 (NvM block ID: 43)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_12 (NvM block ID: 44)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_13 (NvM block ID: 45)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_14 (NvM block ID: 46)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_15 (NvM block ID: 47)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_2 (NvM block ID: 48)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_3 (NvM block ID: 49)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_4 (NvM block ID: 50)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_5 (NvM block ID: 51)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_6 (NvM block ID: 52)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_7 (NvM block ID: 53)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_8 (NvM block ID: 54)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVMEM_LOC_9 (NvM block ID: 55)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_EVT_STATUSBYTE (NvM block ID: 56)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_INDICATOR_ATTRIBUTES (NvM block ID: 57)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_OBD_DTR_DATA (NvM block ID: 58)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
    // Permanent RAM address of NVRAM block NVM_ID_OBD_PERMANENT_MEMORY (NvM block ID: 59)
    /* MR12 DIR 1.1, 11.6 VIOLATION: Casting to void pointer can always be done safely */
    (void *)NvM_Prv_RamMirror_au8,
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
