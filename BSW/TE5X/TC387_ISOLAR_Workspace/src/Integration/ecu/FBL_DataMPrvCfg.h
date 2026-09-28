/*********************************************************************************************************************
*
* Description:     DataM module private interface
* FileName:        FBL_DataMPrv.h
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
**********************************************************************************************************************
*/
#ifndef  FBL_DATAMPRVCFG_H
#define  FBL_DATAMPRVCFG_H
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/

#include "NvM.h"
/*********************************************************************************************************************
* Exported Defines
*********************************************************************************************************************/
/* The total number of blocks */
#define FBL_DATAM_NUM_NVM_BLOCKS        NVM_PRV_NR_PERSISTENT_IDS
/* The first block shall be used firstly*/
#define FBL_DATAM_NUM_NVM_FIRST_USE     NVM_CFG_FIRST_USED_BLOCK
/* Block ID of user define*/
#define FBL_DATAM_NVM_BLOCK_ID(id)      (id - FBL_DATAM_NUM_NVM_FIRST_USE)

/*********************************************************************************************************************
* Exported Types
*********************************************************************************************************************/
typedef struct
{
    uint8 *RamMirror;
    const uint16 Size;
    const uint16 NvMBlockId;
} Fbl_DataM_BlockDescriptorType;

/*********************************************************************************************************************
* Exported Variables
*********************************************************************************************************************/
extern const Fbl_DataM_BlockDescriptorType Fbl_DataM_NvmBlockInfo[FBL_DATAM_NUM_NVM_BLOCKS];
extern uint8 Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock[];
extern uint8 Fbl_DataM_RamMirrorNV_ValidityFlagsBlock[];
extern uint8 Fbl_DataM_RamMirrorNV_ResetResponseBlock[];
extern uint8 Fbl_DataM_RamMirrorNV_FingerprintBlock[];
extern uint8 Fbl_DataM_RamMirrorNV_CrcBlock[];
extern uint8 Fbl_DataM_RamMirrorNV_ProgrammingAttemptCounterBlock[];
extern uint8 Fbl_DataM_RamMirrorNV_ProgrammingCounterBlock[];
extern const uint8 Fbl_DataM_RomDataNV_ReprogrammingRequestFlagBlock[];
extern const uint8 Fbl_DataM_RomDataNV_ValidityFlagsBlock[];
extern const uint8 Fbl_DataM_RomDataNV_ResetResponseBlock[];
extern const uint8 Fbl_DataM_RomDataNV_FingerprintBlock[];
extern const uint8 Fbl_DataM_RomDataNV_CrcBlock[];
extern const uint8 Fbl_DataM_RomDataNV_ProgrammingAttemptCounterBlock[];
extern const uint8 Fbl_DataM_RomDataNV_ProgrammingCounterBlock[];

/*********************************************************************************************************************
* Exported functions
*********************************************************************************************************************/

#endif
