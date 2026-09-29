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
#include "bswsrv.h"

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
* Local Functions Implementation
*********************************************************************************************************************/
static boolean EcuMgr_Prv_CompareAllIDofAandB_INVT(void)
{
   boolean bRetVal = TRUE;
   Std_ReturnType ret = FALSE;

   EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

   ret = logicalBlockPtr[LOGICAL_BLOCK_ALL].apis[INVT_PROCESS_ID].isValidBlock(Swap_u8GetInactiveBank());

   /* App Invalid */
   if(FALSE == ret)
   {      
      ret = logicalBlockPtr[LOGICAL_BLOCK_ALL].apis[INVT_PROCESS_ID].isValidBlock(Swap_u8GetActiveBank());
      if(TRUE == ret)
      {
         ImplicitBlock.bNeedCopy = TRUE;
         bRetVal = FALSE;
      }
      else
      {
         bActiveAppNotValid = TRUE;
      }
   }

   return bRetVal;
}

static boolean EcuMgr_Prv_CompareBootIDofAandB_INVT(void)
{
   uint8  u8Index = 0;
   boolean bRetVal = FALSE;
   Std_ReturnType ret = FALSE;
   uint32 u32ActiveBootVerAddr = ((uint32)&BSW_kau8BootIntBswLibDate[0]) | 0xA0000000;
   uint32 u32InactiveBootVerAddr = ((uint32)&BSW_kau8BootIntBswLibDate[0] + ECUMGR_VERIFY_READ_ADDRESS_OFFSET) | 0xA0000000;
   EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

   ret = logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].apis[INVT_PROCESS_ID].isValidBlock(Swap_u8GetInactiveBank());

   if(TRUE == ret)
   {
      for(u8Index = 0; u8Index < sizeof(BSW_kau8BootIntBswLibDate); u8Index++)
      {
         if(*((uint8*)u32ActiveBootVerAddr++) != *((uint8*)u32InactiveBootVerAddr++))
         {
            ImplicitBlock.bNeedCopy = TRUE;
            break;
         }
      }
   }
   else
   {
      ImplicitBlock.bNeedCopy = TRUE;
   }

   if(FALSE == ImplicitBlock.bNeedCopy)
   {
      bRetVal = TRUE;
   }

   return bRetVal;
}

/*********************************************************************************************************************
* Hook Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 117] */
/**
 * @brief 
 * 
 * @param crcValueDataIn 
 * @return Std_ReturnType 
 */
Std_ReturnType EcuMgr_DownloadTargetGetImplicitCopyResult_INVT(void)
{
    Std_ReturnType ret = E_NOT_OK;
    ActiveBlocktype *activeblockPtr = NULL_PTR;
    activeblockPtr = EcuMgr_Prv_GetActiveBlock();
    if(activeblockPtr != NULL_PTR)
    {
        if(activeblockPtr->blockId == RAM_BLOCK_ID)
        {
            ret = E_OK;
        }
        else if(TRUE == ImplicitBlock.bCopyParamLoadFlag)
        {
            if(ECUMGR_COPY_ONGOING != ImplicitBlock.u8CopyResult)
            {
                ImplicitBlock.bCopyParamLoadFlag = FALSE;
                ImplicitBlock.u32MemStartAddress = 0;
                ImplicitBlock.u32MemEndAddress = 0;
                
                ret = E_OK;
            }
        }
        else
        {
            ret = E_OK;
        }
    }
    return ret;
}

Fbl_ProgM_EraseResultType EcuMgr_ImplicitErasePostEraseBootloaderHook_INVT(void)
{
   Fbl_ProgM_EraseResultType result = FBL_PROGM_ERASE_RESULT_BUSY;
   EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
   uint32 eraseStartAddress = 0;

   static uint32 eraseEndAddressApp = 0;
   static boolean isInitializedApp = FALSE;
   static uint32 pendingEraseAddressApp = 0;
   
   if(FALSE == EcuMgr_Prv_CompareAllIDofAandB_INVT())
   {
      if(FALSE == isInitializedApp)
      {
         /* the block is activating that should be set to invalid*/
         logicalBlockPtr[LOGICAL_BLOCK_ALL].apis[INVT_PROCESS_ID].setValidityBlock(FALSE);
         
         /* Get the erase length of application block*/
         eraseEndAddressApp = logicalBlockPtr[LOGICAL_BLOCK_ALL].endAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;
         eraseStartAddress = logicalBlockPtr[LOGICAL_BLOCK_ALL].startAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;
      
         pendingEraseAddressApp = eraseStartAddress;
         
         /* the block is activating that should be set to invalid*/
         logicalBlockPtr[LOGICAL_BLOCK_ALL].apis[INVT_PROCESS_ID].setValidityBlock(FALSE);
         Fbl_DataM_WriteBlockProcess();
         
         /* set isInitialized to TRUE*/
         isInitializedApp = TRUE;
      } else {/*Nothing*/}
      
      FlashParam.address = pendingEraseAddressApp - (uint32)ECUMGR_APPLICATION_REGION_OFFSET;
      FlashParam.length = ECUMGR_ERASE_SEGMENT_SIZE;
      /* Invoke the erase routine*/
      FLASH_DRIVER_ERASE(ECUMGR_SBL_REGION_START_ADDRESS, &FlashParam);   /* PRQA S 0306, 1840 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
      if(FlashParam.errorcode == (FlashResultType)FlashOk)
      {
         pendingEraseAddressApp += ECUMGR_ERASE_SEGMENT_SIZE;
         if(pendingEraseAddressApp >= eraseEndAddressApp)
         {
            isInitializedApp = FALSE;
            result = FBL_PROGM_ERASE_RESULT_SUCCESS;
         }
         else
         {
            /* nothing wait for the next invocation */
         }
      }
      else
      {
         isInitializedApp = FALSE;
         /* failed to perform the erase routine */
         result = FBL_PROGM_ERASE_RESULT_FAILURE;
      }
   }
   else
   {
      result = FBL_PROGM_ERASE_RESULT_SUCCESS;
   }

   return result;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 106] */
/**
 * @brief 
 * 
 * @return Fbl_ProgM_EraseResultType 
 */
Fbl_ProgM_EraseResultType EcuMgr_ImplicitErasePostEraseAllHook_INVT(void)
{
   Fbl_ProgM_EraseResultType result = FBL_PROGM_ERASE_RESULT_BUSY;
   EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
   uint32 eraseStartAddress = 0;

   static uint32 eraseEndAddressBoot = 0;
   static boolean isInitializedBoot = FALSE;
   static uint32 pendingEraseAddressBoot = 0;

   if(FALSE == EcuMgr_Prv_CompareBootIDofAandB_INVT())
   {
      if(FALSE == isInitializedBoot)
      {
         /* the block is activating that should be set to invalid*/
         logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].apis[INVT_PROCESS_ID].setValidityBlock(FALSE);
         
         /* Get the erase length of application block*/
         eraseEndAddressBoot = logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].endAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;
         eraseStartAddress = logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].startAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;

         pendingEraseAddressBoot = eraseStartAddress;
         
         /* the block is activating that should be set to invalid*/
         logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].apis[INVT_PROCESS_ID].setValidityBlock(FALSE);
         Fbl_DataM_WriteBlockProcess();
         
         /* set isInitialized to TRUE*/
         isInitializedBoot = TRUE;
      } else {/*Nothing*/}

      FlashParam.address = pendingEraseAddressBoot - (uint32)ECUMGR_APPLICATION_REGION_OFFSET;
      FlashParam.length = ECUMGR_ERASE_SEGMENT_SIZE;
      /* Invoke the erase routine*/
      FLASH_DRIVER_ERASE(ECUMGR_SBL_REGION_START_ADDRESS, &FlashParam);   /* PRQA S 0306, 1840 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
      if(FlashParam.errorcode == (FlashResultType)FlashOk)
      {
         pendingEraseAddressBoot += ECUMGR_ERASE_SEGMENT_SIZE;
         if(pendingEraseAddressBoot >= eraseEndAddressBoot)
         {
            isInitializedBoot = FALSE;
            result = FBL_PROGM_ERASE_RESULT_SUCCESS;
         }
         else
         {
            /* nothing wait for the next invocation */
         }
      }
      else
      {
         isInitializedBoot = FALSE;
         /* failed to perform the erase routine */
         result = FBL_PROGM_ERASE_RESULT_FAILURE;
      }
   }
   else
   {
      result = FBL_PROGM_ERASE_RESULT_SUCCESS;
   }
   return result;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 106] */
/**
 * @brief 
 * 
 * @return Fbl_ProgM_EraseResultType 
 */
Std_ReturnType EcuMgr_ImplicitCopyPostVerifyBootloaderHook_INVT(void)
{
   EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

   ImplicitBlock.bCopyParamLoadFlag = TRUE;
   ImplicitBlock.u8CopyResult = ECUMGR_COPY_ONGOING;
   ImplicitBlock.u32MemStartAddress = logicalBlockPtr[LOGICAL_BLOCK_ALL].startAddress;
   ImplicitBlock.u32MemEndAddress = ImplicitBlock.u32MemStartAddress + BSW_u32GetAppLength() - 1;

   return E_OK;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 106] */
/**
 * @brief 
 * 
 * @return Fbl_ProgM_EraseResultType 
 */
Std_ReturnType EcuMgr_ImplicitCopyPostVerifyAllHook_INVT(void)
{
   EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
      
   ImplicitBlock.bCopyParamLoadFlag = TRUE;
   ImplicitBlock.u8CopyResult = ECUMGR_COPY_ONGOING;
   ImplicitBlock.u32MemStartAddress = logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].startAddress;
   ImplicitBlock.u32MemEndAddress = logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].endAddress;

   return E_OK;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 106] */
/**
 * @brief 
 * 
 * @return Fbl_ProgM_EraseResultType 
 */
Std_ReturnType EcuMgr_ImplicitCheckPostVerifyBootloaderHook_INVT(void)
{
   Std_ReturnType result = E_OK;
   EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
   uint32 u32Index = 0;
   uint32 u32MaxSize = 0;
   uint32 * pu32SrcPtr = NULL_PTR;
   uint32 * pu32DestPtr = NULL_PTR;

   if(ECUMGR_COPY_SUCCESS == ImplicitBlock.u8CopyResult)
   {
      /* Get the erase length of application block*/
      pu32SrcPtr  = (uint32 *)logicalBlockPtr[LOGICAL_BLOCK_ALL].startAddress;
      pu32DestPtr = (uint32 *)(logicalBlockPtr[LOGICAL_BLOCK_ALL].startAddress + ECUMGR_VERIFY_READ_ADDRESS_OFFSET);

      u32MaxSize = BSW_u32GetAppLength();
      u32MaxSize = u32MaxSize / 4;
      
      for(u32Index = 0; u32Index < u32MaxSize; u32Index++)
      {
         if(pu32DestPtr[u32Index] != pu32SrcPtr[u32Index])
         {
             result = E_NOT_OK;
             break;
         }
      }
   }
   else
   {
      result = E_NOT_OK;
   }
   
   if(E_OK == result)
   {
      logicalBlockPtr[LOGICAL_BLOCK_ALL].apis[INVT_PROCESS_ID].setValidityBlock(TRUE);
   }

   return result;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 106] */
/**
 * @brief 
 * 
 * @return Fbl_ProgM_EraseResultType 
 */
Std_ReturnType EcuMgr_ImplicitCheckPostVerifyAllHook_INVT(void)
{
   Std_ReturnType result = E_OK;
   EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
   uint32 u32Index = 0;
   uint32 u32MaxSize = 0;
   uint32 * pu32SrcPtr = NULL_PTR;
   uint32 * pu32DestPtr = NULL_PTR;

   if(ECUMGR_COPY_SUCCESS == ImplicitBlock.u8CopyResult)
   {
      /* Get the erase length of application block*/
      pu32SrcPtr  = (uint32 *)logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].startAddress;
      pu32DestPtr = (uint32 *)(logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].startAddress + ECUMGR_VERIFY_READ_ADDRESS_OFFSET);

      u32MaxSize = logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].endAddress - logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].startAddress + 1;
      u32MaxSize = u32MaxSize / 4;
      
      for(u32Index = 0; u32Index < u32MaxSize; u32Index++)
      {
         if(pu32DestPtr[u32Index] != pu32SrcPtr[u32Index])
         {
             result = E_NOT_OK;
             break;
         }
      }
   }
   else
   {
      result = E_NOT_OK;
   }

   if(E_OK == result)
   {
      logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].apis[INVT_PROCESS_ID].setValidityBlock(TRUE);
   }

   return result;
}

Std_ReturnType EcuMgr_DownloadTargetExecuteImplicitCheck_INVT(void)
{
    Std_ReturnType ret = E_OK;
    ActiveBlocktype *activeblockPtr = NULL_PTR;
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

    if(TRUE == ImplicitBlock.bNeedCopy)
    {
        ImplicitBlock.bNeedCopy = FALSE;
        activeblockPtr = EcuMgr_Prv_GetActiveBlock();
        if(activeblockPtr != NULL_PTR)
        {
            if((activeblockPtr->blockId == LOGICAL_BLOCK_ID)
            && (NULL_PTR != logicalBlockPtr[activeblockPtr->blockIndex].apis[INVT_PROCESS_ID].ImplicitCheckFunc))
            {
                ret = logicalBlockPtr[activeblockPtr->blockIndex].apis[INVT_PROCESS_ID].ImplicitCheckFunc();
            }
            else
            {
                /*Nothing need to be done here*/
            }
        }
        else
        {
            ret = E_NOT_OK;
        }
    }
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 117] */
/**
 * @brief 
 * 
 * @param crcValueDataIn 
 * @return Std_ReturnType 
 */
Std_ReturnType EcuMgr_DownloadTargetExecuteImplicitCopy_INVT(void)
{
    Std_ReturnType ret = E_OK;
    ActiveBlocktype *activeblockPtr = NULL_PTR;
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

    if(TRUE == ImplicitBlock.bNeedCopy)
    {
        activeblockPtr = EcuMgr_Prv_GetActiveBlock();
        if(activeblockPtr != NULL_PTR)
        {
            if((activeblockPtr->blockId == LOGICAL_BLOCK_ID)
            && (NULL_PTR != logicalBlockPtr[activeblockPtr->blockIndex].apis[INVT_PROCESS_ID].ImplicitCopyFunc))
            {
                ret = logicalBlockPtr[activeblockPtr->blockIndex].apis[INVT_PROCESS_ID].ImplicitCopyFunc();
            }
            else
            {
                /*Nothing need to be done here*/
            }
        }
        else
        {
            ret = E_NOT_OK;
        }
    }
    return ret;
}




