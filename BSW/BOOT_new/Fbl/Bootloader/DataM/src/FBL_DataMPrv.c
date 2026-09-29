/*********************************************************************************************************************
*
* Description:     DataM module private implementation
* FileName:        FBL_DataMPrv.c
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
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "FBL_DataMPrv.h"
#include "Os_TimeServices.h"
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

/*********************************************************************************************************************
* Exported Variables Implementation
*********************************************************************************************************************/
Fbl_DataM_NvmBlockStatsType Fbl_DataM_NvmBlockStats[FBL_DATAM_NUM_NVM_BLOCKS];
boolean Fbl_DataM_RamMirrorLoaded = FALSE;

/*********************************************************************************************************************
* Implement Functions Prototypes
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_DataM 133] */
/**
 * @brief The API is to update the status when the writing of a block has been completed.
 *
 * @param u8ServiceIdP [in] service ID of NVM 
 * @param JobResultP [in] the job results of NvM refer to #NvM_RequestResultType
 * @param BlockIndex_u8 [in] block ID of a block refer to #FBL_DATAM_NVM_BLOCK_ID
 */
void Fbl_DataM_UpdateBlockStatusEvent(  const uint8 u8ServiceIdP,
                                        const NvM_RequestResultType JobResultP,
                                        const uint8 BlockIndex_u8)
{
    if(NVM_SERVICE_ID_WRITE_BLOCK == u8ServiceIdP)
    {
        if((NvM_RequestResultType)NVM_REQ_OK == JobResultP)
        {
            /*Set the block status to FBL_DATAM_BLOCK_STATUS_SAVED*/
            Fbl_DataM_NvmBlockStats[BlockIndex_u8].BlockStatus = FBL_DATAM_BLOCK_STATUS_SAVED;
        }
        else
        {
            /*Update error of block status to TRUE */
            Fbl_DataM_NvmBlockStats[BlockIndex_u8].NvmBlockFault = TRUE;
        }
    }
    else
    {
        if((NVM_SERVICE_ID_READ_BLOCK   == u8ServiceIdP) ||
            (NVM_SERVICE_ID_READ_ALL    == u8ServiceIdP))
        {
            if(((NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED    == JobResultP) ||
                ((NvM_RequestResultType)NVM_REQ_NV_INVALIDATED     == JobResultP))
            {
                /*Update error of block status to TRUE */
                Fbl_DataM_NvmBlockStats[BlockIndex_u8].NvmBlockFault = TRUE;
            }
        }
    }
}
