/*********************************************************************************************************************
*
* Description:     EcuM module implementation 
* FileName:        EcuM_DownloadTarget.c
* Company:         invt GmbH (www.invt.com)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright invt GmbH 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
UCN1HC          10/18/2020
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "EcuMgr.h"
#include "EcuMgr_Cfg_DownloadTarget.h"
#include "Crc.h"
#include "FBL_DataM.h"
#include "FBL_BootM.h"
#include "SBL_Flash.h"
#include "Mcu.h"

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
ImplicitManageBlock ImplicitBlock;

/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Hook Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 114] */
/**
 * @brief process downloading the data to memory
 * 
 * @return boolean 
 */
void EcuMgr_ProcessCopy(void)
{
    Fbl_ProgM_WriteResultType wStatus = FBL_PROGM_WRITE_RESULT_BUSY;
    static uint8 u8FailCnt = 0;

    if(TRUE == ImplicitBlock.bNeedCopy)
    {
       if((TRUE == ImplicitBlock.bCopyParamLoadFlag)
       && (ECUMGR_COPY_ONGOING == ImplicitBlock.u8CopyResult))
       {
           if(EcuMgr_bGetFlsValidFlag())
           {
               FlashParam.address = ImplicitBlock.u32MemStartAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;
               FlashParam.length = ECUMGR_DOWNLOAD_SEGMENT_SIZE;
               FlashParam.data = (const uint8*)ImplicitBlock.u32MemStartAddress;
               DISABLE();
               FLASH_DRIVER_WRITE(ECUMGR_SBL_REGION_START_ADDRESS, &FlashParam);   /* PRQA S 0306, 1840 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
               DISABLE();
               if(FlashParam.errorcode == (FlashResultType)FlashOk)
               {
                   wStatus = FBL_PROGM_WRITE_RESULT_SUCCESS;
               }
               else
               {
                   wStatus = FBL_PROGM_WRITE_RESULT_FAILURE;
               }
           }
           else
           {
               wStatus = DCM_E_CONDITIONSNOTCORRECT;
           }
       
           if(wStatus == FBL_PROGM_WRITE_RESULT_SUCCESS)
           {
               ImplicitBlock.u32MemStartAddress += ECUMGR_DOWNLOAD_SEGMENT_SIZE;
               
               if(ImplicitBlock.u32MemStartAddress >= ImplicitBlock.u32MemEndAddress)
               {
                   ImplicitBlock.u8CopyResult = ECUMGR_COPY_SUCCESS;
               }
               else
               {
                   ImplicitBlock.u8CopyResult = ECUMGR_COPY_ONGOING;
               }
               u8FailCnt = 0;
           }
           else
           {
               if(u8FailCnt < 10)
               {
                   u8FailCnt++;
               }
               else
               {
                   ImplicitBlock.u8CopyResult = ECUMGR_COPY_FAILED;
                   u8FailCnt = 0;
               }
           }
       }
       else
       {
          /* nothing */
       }
    }
}





