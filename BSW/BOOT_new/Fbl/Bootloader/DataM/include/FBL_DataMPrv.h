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
#ifndef  FBL_DATAMPRV_H
#define  FBL_DATAMPRV_H

/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "Std_Types.h"
#include "FBL_DataMPrvCfg.h"
/*********************************************************************************************************************
* Exported Defines
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Macros
*********************************************************************************************************************/
/*********************************************************************************************************************
* Exported Types
*********************************************************************************************************************/
typedef enum
{
    FBL_DATAM_BLOCK_STATUS_SAVED,     /* Saved to dflash */
    FBL_DATAM_BLOCK_STATUS_NOT_SAVED, /* ram mirror modified and nvm write request not sent */
    FBL_DATAM_BLOCK_STATUS_PENDING    /* ram mirror modified and nvm write request sent */
} Fbl_DataM_BlockStatusType;

typedef struct
{
    Fbl_DataM_BlockStatusType   BlockStatus;
    boolean                     NvmBlockFault;
    uint32                      BlockStartTimeStamp;
}Fbl_DataM_NvmBlockStatsType;
/*********************************************************************************************************************
* Exported Variables
*********************************************************************************************************************/
extern boolean Fbl_DataM_RamMirrorLoaded;
extern Fbl_DataM_NvmBlockStatsType Fbl_DataM_NvmBlockStats[FBL_DATAM_NUM_NVM_BLOCKS];
/*********************************************************************************************************************
* Exported Functions
*********************************************************************************************************************/
/**
 * @brief The API is to update the status when the writing of a block has been completed.
 *
 * @param u8ServiceIdP [in] service ID of NVM 
 * @param JobResultP [in] the job results of NvM refer to #NvM_RequestResultType
 * @param BlockIndex_u8 [in] block ID of a block refer to #FBL_DATAM_NVM_BLOCK_ID
 */
extern void Fbl_DataM_UpdateBlockStatusEvent(  const uint8 u8ServiceIdP,
                                        const NvM_RequestResultType JobResultP,
                                        const uint8 BlockIndex_u8);

extern void Fbl_DataM_MultiBlockJobEndNotification(uint8 ServiceId, NvM_RequestResultType JobResult);

#endif
