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
#include "FBL_ProgM.h"
#include "SBL_Flash.h"
#include "Mcu.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
#define NUM_OF_CHECK_DEPENDENCE_TIME       1000

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

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 110] */
/**
 * @brief 
 * 
 * @param memoryAddress 
 * @param regionSize 
 * @param nrcRet 
 * @return boolean 
 */
Std_ReturnType EcuMgr_DownloadTargetPreEraseHook_INVT(Dcm_NegativeResponseCodeType * nrcRet)
{
    Std_ReturnType ret = E_NOT_OK;
    uint8 programmingAttemptCounter[NVM_CFG_NV_BLOCK_LENGTH_NV_ProgrammingAttemptCounterBlock]; // all logical
    uint16 reprogammingAttempCounterCnt = 0;
    ActiveBlocktype *activeBlockPtr = NULL_PTR;
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = NULL_PTR;

    /*Increase the reprogammingAttempCounterCnt of a targetblock*/
    activeBlockPtr = EcuMgr_Prv_GetActiveBlock();
    if(activeBlockPtr != NULL_PTR)
    {
        EcuMgr_vidClrVerifySuccessFlag();
        /*read the reprogrammingAttemptCounter*/
        (void)FBL_DataM_ReadNvmProgrammingAttemptCounter(programmingAttemptCounter);

        reprogammingAttempCounterCnt |= (uint16)(programmingAttemptCounter[0] << 8u);       /* PRQA S 4391, 4399, 0499 */
        reprogammingAttempCounterCnt |= (uint16)programmingAttemptCounter[1];

        /*Check if we are not crossing the maximum limit to erase/program*/
        logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[activeBlockPtr->blockId];     /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
        if((logicalBlockPtr[activeBlockPtr->blockIndex].maxAttemptCounter != 0u) &&
            (reprogammingAttempCounterCnt >= logicalBlockPtr[activeBlockPtr->blockIndex].maxAttemptCounter))
        {
            ret = E_NOT_OK;
            *nrcRet = (uint8)DCM_E_CONDITIONSNOTCORRECT;
        }
        else
        {
            /* no necessity to skip/prevent the erase operation*/
            if(programmingAttemptCounter[1] < 0xFFu)
            {
                /*increase the lower byte*/
                programmingAttemptCounter[1]++;
            }
            else if(programmingAttemptCounter[1] == 0xFFu)
            {
                /* set lower byte to 0*/
                programmingAttemptCounter[1] = 0;
                /*increase higher byte*/
                programmingAttemptCounter[0]++;
            }
            else {/*Nothing*/}

            /* updated the programmingAttemptCounter in nvm*/
            (void)FBL_DataM_WriteNvmProgrammingAttemptCounter(programmingAttemptCounter);
            ret = E_OK;
        }

        if(ret == E_OK)
        {
            //(void)EcuMgr_DIDService_WriteFingerPrintInfor(activeBlockPtr->blockIndex);
        }
    }
    else {/*Nothing*/}
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 118] */
/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
Std_ReturnType EcuMgr_DownloadTargetPostVerifyingRegionHook_INVT(void)
{
    Std_ReturnType ret = E_NOT_OK;
    ActiveBlocktype *activeblockPtr = NULL_PTR;
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = NULL_PTR;
    EcuMgr_RamBlockInfoType *ramBlockPtr = NULL_PTR;
    uint16 programmingCounter[1];
    uint16 programmingCount = 0;
    /*get the block to be activating*/
    activeblockPtr = EcuMgr_Prv_GetActiveBlock();
    /* if the activated block is RAM block, it will be skipped*/
    if(activeblockPtr->blockId == LOGICAL_BLOCK_ID)
    {
        logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[activeblockPtr->blockId];      /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
        
        EcuMgr_vidSetVerifySuccessFlag();

        /* increase the programming counter*/
        (void)FBL_DataM_ReadNvmProgrammingCounter((uint8 *)programmingCounter);     /* PRQA S 0310 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

        programmingCount |= (programmingCounter[0] << 8u); /* PRQA S 4397 */
        programmingCount |= (programmingCounter[1]);

        programmingCount++;

        Fbl_DataM_MemCopy((void *)&programmingCounter[0],    /* PRQA S 3200, 0310 */ /* MISRA DEVIATION: Don't need return value because there is nothing we can do with it anyway. */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
                            (const void *)&programmingCount,
                            2);
        (void)FBL_DataM_WriteNvmProgrammingCounter((const uint8 *)programmingCounter);      /* PRQA S 0310 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

        /* preprogramming sequence finished, then deactivate block*/
        EcuMgr_Prv_DeactivateBlock();
        /* Deactivated SBL*/
        FLASH_DRIVER_DEINIT(ECUMGR_SBL_REGION_START_ADDRESS, &FlashParam);      /* PRQA S 0306, 1840 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
        /*unload sbl*/
        ramBlockPtr = (EcuMgr_RamBlockInfoType *)(uint32)targetBlockInfo[RAM_BLOCK_ID];     /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
        ramBlockPtr[RAM_BLOCK_SBL].unload();
        EcuMgr_vidClrFlsValidFlag();
        ret = E_OK;
    }
    else 
    {
        /* Activate the SBL by invoking FLASH_DRIVER_INIT*/
        FLASH_DRIVER_INIT(ECUMGR_SBL_REGION_START_ADDRESS, &FlashParam);    /* PRQA S 0306, 1840 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
        if((FlashParam.errorcode == (FlashResultType)FlashOk) && (FlashParam.isInit == (uint8)Initialized))
        {
            ret = E_OK;
        }
        else
        {
            /* activate the SBL unsuccessfully*/
            ret = E_NOT_OK;
        }  
    }
    
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 119] */
/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
Fbl_ProgM_CheckDependenceResultType EcuMgr_DowloadTargetCheckDependenciesHook_INVT(void)
{
    static uint32 checkDependenceCnt = 0;
    Fbl_ProgM_CheckDependenceResultType ret = FBL_PROGM_CHECK_DEPENDENCE_RESULT_FAILURE;

    if((FBL_DataM_IsPersistedNvMValidityFlags() == TRUE) &&
        (FBL_DataM_IsPersistedNvMCrc() == TRUE) &&                      /* PRQA S 3415 */
        (FBL_DataM_IsPersistedNvmProgrammingCounter() == TRUE))         /* PRQA S 3415 */
    {
    	checkDependenceCnt = 0;
        ret = FBL_PROGM_CHECK_DEPENDENCE_RESULT_SUCCESS;
    }
    else if(checkDependenceCnt >= (uint32)NUM_OF_CHECK_DEPENDENCE_TIME)
    {
        checkDependenceCnt = 0;
        ret = FBL_PROGM_CHECK_DEPENDENCE_RESULT_FAILURE;
    }
    else
    {
        checkDependenceCnt++;
        ret = FBL_PROGM_CHECK_DEPENDENCE_RESULT_PROCESSING;
    }

    return ret;
}

Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseBootloader_INVT(void)
{
   Fbl_ProgM_EraseResultType result = FBL_PROGM_ERASE_RESULT_BUSY;
   EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
   uint32 eraseStartAddress = 0;

   static uint32 eraseEndAddressApp = 0;
   static boolean isInitializedApp = FALSE;
   static uint32 pendingEraseAddressApp = 0;

   if((TRUE == FBL_DataM_IsPersistedNvmProgrammingAttemptCounter()) && (TRUE == FBL_DataM_IsPersistedNvMFingerprint()))    /* PRQA S 3415 */
   {
      if(FALSE == isInitializedApp)
      {
         /* Get the erase length of application block*/
         eraseEndAddressApp = logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].endAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;
         eraseStartAddress = logicalBlockPtr[LOGICAL_BLOCK_BOOTLOADER].startAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;

         pendingEraseAddressApp = eraseStartAddress;
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
   return result;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 106] */
/**
 * @brief 
 * 
 * @return Fbl_ProgM_EraseResultType 
 */
Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseApplication_INVT(void)
{
    Fbl_ProgM_EraseResultType result = FBL_PROGM_ERASE_RESULT_BUSY;
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
    uint32 eraseStartAddress = 0;

    static uint32 eraseEndAddressApp = 0;
    static boolean isInitializedApp = FALSE;
    static uint32 pendingEraseAddressApp = 0;

    if((TRUE == FBL_DataM_IsPersistedNvmProgrammingAttemptCounter()) && (TRUE == FBL_DataM_IsPersistedNvMFingerprint()))    /* PRQA S 3415 */
    {
		if(FALSE == isInitializedApp)
		{
			/* Get the erase length of application block*/
			eraseEndAddressApp = logicalBlockPtr[LOGICAL_BLOCK_APPLICATION].endAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;
			eraseStartAddress = logicalBlockPtr[LOGICAL_BLOCK_APPLICATION].startAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;

			pendingEraseAddressApp = eraseStartAddress;
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
    return result;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 107] */
/**
 * @brief 
 * 
 * @return Fbl_ProgM_EraseResultType 
 */
Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseCalibration_INVT(void)
{
    Fbl_ProgM_EraseResultType result = FBL_PROGM_ERASE_RESULT_BUSY;
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
    uint32 eraseStartAddress = 0;

    static uint32 eraseEndAddressCal = 0;
    static boolean isInitializedCal = FALSE;
    static uint32 pendingEraseAddressCal = 0;

    if((TRUE == FBL_DataM_IsPersistedNvmProgrammingAttemptCounter()) && (TRUE == FBL_DataM_IsPersistedNvMFingerprint()))    /* PRQA S 3415 */
    {
		if(FALSE == isInitializedCal)
		{
			/* Get the erase length of application block*/
			eraseEndAddressCal = logicalBlockPtr[LOGICAL_BLOCK_DATA].endAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;
			eraseStartAddress = logicalBlockPtr[LOGICAL_BLOCK_DATA].startAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;

			pendingEraseAddressCal = eraseStartAddress;
			/* set isInitialized to TRUE*/
			isInitializedCal = TRUE;
		} else {/*Nothing*/}

		if(isInitializedCal == TRUE)
		{
			FlashParam.address = pendingEraseAddressCal - (uint32)ECUMGR_DATA_REGION_OFFSET;
			FlashParam.length = ECUMGR_ERASE_SEGMENT_SIZE;
			/* Invoke the erase routine*/
			FLASH_DRIVER_ERASE(ECUMGR_SBL_REGION_START_ADDRESS, &FlashParam);   /* PRQA S 0306, 1840 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
			if(FlashParam.errorcode == (FlashResultType)FlashOk)
			{
				pendingEraseAddressCal += ECUMGR_ERASE_SEGMENT_SIZE;
				if(pendingEraseAddressCal >= eraseEndAddressCal)
				{
					isInitializedCal = FALSE;
					result = FBL_PROGM_ERASE_RESULT_SUCCESS;
				}
				else
				{
					/* nothing wait for the next invocation */
				}
			}
			else
			{
				isInitializedCal = FALSE;
				/* failed to perform the erase routine */
				result = FBL_PROGM_ERASE_RESULT_FAILURE;
			}
		} else {/*Nothing*/}
    }
  return result;
}

Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseAll_INVT(void)
{
    Fbl_ProgM_EraseResultType result = FBL_PROGM_ERASE_RESULT_BUSY;
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
    uint32 eraseStartAddress = 0;

    static uint32 eraseEndAddressApp = 0;
    static boolean isInitializedApp = FALSE;
    static uint32 pendingEraseAddressApp = 0;

    if((TRUE == FBL_DataM_IsPersistedNvmProgrammingAttemptCounter()) && (TRUE == FBL_DataM_IsPersistedNvMFingerprint()))    /* PRQA S 3415 */
    {
		if(FALSE == isInitializedApp)
		{
			/* Get the erase length of application block*/
			eraseEndAddressApp = logicalBlockPtr[LOGICAL_BLOCK_ALL].endAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;
			eraseStartAddress = logicalBlockPtr[LOGICAL_BLOCK_ALL].startAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET;

			pendingEraseAddressApp = eraseStartAddress;
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
    return result;
}


Std_ReturnType EcuMgr_DownloadTargetPostEraseHook_INVT(void)
{
    Std_ReturnType ret = E_OK;
    /* the erase was successful. set the block to be invalid*/
    ActiveBlocktype *activeBlockPtr = NULL_PTR;
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = NULL_PTR;

    activeBlockPtr = EcuMgr_Prv_GetActiveBlock();
    if(activeBlockPtr != NULL_PTR)
    {
        logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[activeBlockPtr->blockId];      /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

        /* the block is activating that should be set to invalid*/
        logicalBlockPtr[activeBlockPtr->blockIndex].apis[INVT_PROCESS_ID].setValidityBlock(FALSE);

        Fbl_DataM_WriteBlockProcess();
    }
    else {/*Nothing*/}
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 112] */
/**
 * @brief 
 * 
 * @return Fbl_ProgM_EraseResultType 
 */
Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetExecuteErase_INVT(void)
{
    Fbl_ProgM_EraseResultType ret = FBL_PROGM_ERASE_RESULT_BUSY;
    ActiveBlocktype *activeBlockPtr = NULL_PTR;
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = NULL_PTR;
    static boolean bImplicitEraseFlag = FALSE;
    /* because Only the logical block is possible to be erased*/
    activeBlockPtr = EcuMgr_Prv_GetActiveBlock();
    if(activeBlockPtr != NULL_PTR)
    {
        Fbl_vidStartEraseTimer();

        logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)((uint32)targetBlockInfo[activeBlockPtr->blockId]);    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
        if(EcuMgr_bGetFlsValidFlag())
        {
            if(FALSE == bImplicitEraseFlag)
            {
                ret = logicalBlockPtr[activeBlockPtr->blockIndex].apis[INVT_PROCESS_ID].eraseFunc();
                if(FBL_PROGM_ERASE_RESULT_SUCCESS == ret)
                {
                    bImplicitEraseFlag = TRUE;
                    ret = FBL_PROGM_ERASE_RESULT_BUSY;
                }
            }
            else
            {
                if(NULL_PTR != logicalBlockPtr[activeBlockPtr->blockIndex].apis[INVT_PROCESS_ID].ImplicitEraseFunc)
                {
                    ret = logicalBlockPtr[activeBlockPtr->blockIndex].apis[INVT_PROCESS_ID].ImplicitEraseFunc();
                    if((FBL_PROGM_ERASE_RESULT_SUCCESS == ret)
                    || (FBL_PROGM_ERASE_RESULT_FAILURE == ret))
                    {
                        bImplicitEraseFlag = FALSE;
                    }
                }
                else
                {
                    bImplicitEraseFlag = FALSE;
                    ret = FBL_PROGM_ERASE_RESULT_SUCCESS;
                }
            }
        }
        else
        {
            ret = DCM_E_CONDITIONSNOTCORRECT;
        }
    }
    else
    {
        ret = FBL_PROGM_ERASE_RESULT_FAILURE;
    }
    return ret;
}

Std_ReturnType EcuMgr_DownloadTargetExecuteVerifingRegion_INVT(uint32 crcValueDataIn)
{
    Std_ReturnType ret = E_NOT_OK;
    uint32 calCrcValue;
    uint32 crcLen;
    uint32 endBlockAddress = 0;
    uint32 startBlockAddress = 0;
    ActiveBlocktype *activeblockPtr = NULL_PTR;
    uint8 crcValue[NVM_CFG_NV_BLOCK_LENGTH_NV_CrcBlock];
    EcuMgr_RamBlockInfoType *ramBlockPtr = (EcuMgr_RamBlockInfoType *)(uint32)targetBlockInfo[RAM_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

    Fbl_vidStopWriteTimer();

    activeblockPtr = EcuMgr_Prv_GetActiveBlock();
    if(activeblockPtr != NULL_PTR)
    {
        if(activeblockPtr->blockId == RAM_BLOCK_ID)
        {
            startBlockAddress = ramBlockPtr[activeblockPtr->blockIndex].startAddress;
            endBlockAddress = ramBlockPtr[activeblockPtr->blockIndex].endAddress;
        }
        else if (activeblockPtr->blockId == LOGICAL_BLOCK_ID)
        {
            startBlockAddress = logicalBlockPtr[activeblockPtr->blockIndex].startAddress + ECUMGR_VERIFY_READ_ADDRESS_OFFSET;
            endBlockAddress = logicalBlockPtr[activeblockPtr->blockIndex].endAddress + ECUMGR_VERIFY_READ_ADDRESS_OFFSET;
            reqCheckRoutineFlag_INVT = TRUE;
        }
        else {/*Nothing need to be done here*/}
        if(activeblockPtr->blockId == RAM_BLOCK_ID)
        	  crcLen = endBlockAddress - startBlockAddress + 1u; //hpc
        else
        	  crcLen = EcuMgr_u32GetLogicBlockLength(activeblockPtr->blockIndex);//hpc
        calCrcValue = Crc_CalculateCRC32((const uint8*) startBlockAddress,      /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
                                            crcLen,
                                            ECUMGR_CRC_ECU_INITIAL,
                                            TRUE);
        if(calCrcValue == crcValueDataIn)
        {
            /*Save the CRC value of the logical block*/
            if(activeblockPtr->blockId == LOGICAL_BLOCK_ID)
            {
                (void)FBL_DataM_ReadNvmCrc(crcValue);
                (void)Fbl_DataM_MemCopy((void *)&crcValue[0],     /* PRQA S 0310 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
                                        (const void *)&calCrcValue,
                                        (uint32)NVM_CFG_NV_BLOCK_LENGTH_NV_CrcBlock / (uint32)2);

                (void)FBL_DataM_WriteNvmCrc(crcValue);
                /* set the activated block to be valid*/
                logicalBlockPtr[activeblockPtr->blockIndex].apis[INVT_PROCESS_ID].setValidityBlock(TRUE);
            }
            else {/*Nothing todo*/}

            ret = E_OK;
        }
        else
        {
            /* nothing */
        }
    }
    else
    {
        /* nothing */
    }
    return ret;
}

