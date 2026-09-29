/*********************************************************************************************************************
*
* Description:     EcuM module implementation 
* FileName:        EcuM_Cfg_Startup.c
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
#include "EcuMgr_Cfg_DownloadTarget.h"
#include "EcuMgr.h"
#include "EcuMgr_CallOuts.h"
#include "FBL_BootM.h"
#include "FBL_DataM.h"
#include "UcbSwap.h"
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
* Local Functions
*********************************************************************************************************************/
boolean EcuMgr_IsValidWholeLogicalBlock(void)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_WHOLE_BLOCKS_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

boolean EcuMgr_IsValidBootloaderLogicalBlock(void)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_BOOT_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

/**
 * @brief 
 * 
 * @param isValid 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_SetValidityBootloaderLogicalBlock(boolean isValid)
{
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);

    if(TRUE == isValid)
    {
        CLEAR_BIT(validityFlags, (ECUMGR_STATUS_INFO_BOOT_VALIDITY << u8ValidityShiftBit)); 
    }
    else
    {
        SET_BIT(validityFlags, (ECUMGR_STATUS_INFO_BOOT_VALIDITY << u8ValidityShiftBit));
    }

    return Fbl_BootM_WriteValidityFlags(&validityFlags);
}

/**
 * @brief 
 * 
 * @return boolean 
 */
static boolean EcuMgr_Prv_IsValidBootloaderLogicalBlock(uint8 u8CheckBank)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = u8CheckBank * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_BOOT_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_IsPersistedBootloaderLogicalBlock(void)
{
    return FBL_DataM_IsPersistedNvMValidityFlags();
}

/**
 * @brief 
 * 
 * @param isValid 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_SetValidityApplicationLogicalBlock(boolean isValid)
{
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
    
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    if(TRUE == isValid)
    {
        CLEAR_BIT(validityFlags, (ECUMGR_STATUS_INFO_APP_VALIDITY << u8ValidityShiftBit)); 
    }
    else
    {
        SET_BIT(validityFlags, (ECUMGR_STATUS_INFO_APP_VALIDITY << u8ValidityShiftBit));

    }

    return Fbl_BootM_WriteValidityFlags(&validityFlags);
}

/**
 * @brief 
 * 
 * @return boolean 
 */
static boolean EcuMgr_Prv_IsValidApplicationLogicalBlock(uint8 u8CheckBank)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = u8CheckBank * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_APP_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_IsPersistedApplicationLogicalBlock(void)
{
    return FBL_DataM_IsPersistedNvMValidityFlags();
}

/**
 * @brief 
 * 
 * @param isValid 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_SetValidityCalibrationLogicalBlock(boolean isValid)
{
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
    
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    if(TRUE == isValid)
    {
        CLEAR_BIT(validityFlags, (ECUMGR_STATUS_INFO_CAL_VALIDITY << u8ValidityShiftBit));
    }
    else
    {
        SET_BIT(validityFlags, (ECUMGR_STATUS_INFO_CAL_VALIDITY << u8ValidityShiftBit));
    }

    return Fbl_BootM_WriteValidityFlags(&validityFlags);
}

/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_IsValidCalibrationLogicalBlock(uint8 u8CheckBank)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = u8CheckBank * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_CAL_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_IsPersistedCalibrationLogicalBlock(void)
{
    return FBL_DataM_IsPersistedNvMValidityFlags();
}

static Std_ReturnType EcuMgr_Prv_SetValidityAllLogicalBlock(boolean isValid)
{
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
    
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    if(TRUE == isValid)
    {
        CLEAR_BIT(validityFlags, (ECUMGR_STATUS_INFO_BLOCKS_VALIDITY << u8ValidityShiftBit));
    }
    else
    {
        SET_BIT(validityFlags, (ECUMGR_STATUS_INFO_BLOCKS_VALIDITY << u8ValidityShiftBit));
    }

    return Fbl_BootM_WriteValidityFlags(&validityFlags);
}

static boolean EcuMgr_Prv_IsValidAllLogicalBlock(uint8 u8CheckBank)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = u8CheckBank * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_BLOCKS_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

static Std_ReturnType EcuMgr_Prv_IsPersistedAllLogicalBlock(void)
{
    return FBL_DataM_IsPersistedNvMValidityFlags();
}

static void EcuMgr_Prv_LoadSblRamBlock(uint32 targetAddress, const uint8 *sourceAddress, uint32 length)
{
    (void)Fbl_DataM_MemCopy((uint32*)targetAddress, (const uint8 *)sourceAddress, length);    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
}

static void EcuMgr_Prv_UnloadSblRamBlock(void)
{
    EcuMgr_RamBlockInfoType *ramBlockPtr = (EcuMgr_RamBlockInfoType *)(uint32)targetBlockInfo[RAM_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
    uint32 xBlockSize = ramBlockPtr[RAM_BLOCK_SBL].endAddress - ramBlockPtr[RAM_BLOCK_SBL].startAddress + 1u;
    (void)Fbl_DataM_MemSet((uint32*)ramBlockPtr[RAM_BLOCK_SBL].startAddress, 0x0, xBlockSize);  /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
}

static Std_ReturnType EcuMgr_Prv_SetValidityBootloaderLogicalBlock_INVT(boolean isValid)
{
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);

    if(TRUE == isValid)
    {
        CLEAR_BIT(validityFlags, (ECUMGR_STATUS_INFO_BOOT_VALIDITY << u8ValidityShiftBit)); 
    }
    else
    {
        SET_BIT(validityFlags, (ECUMGR_STATUS_INFO_BOOT_VALIDITY << u8ValidityShiftBit));
    }

    return Fbl_BootM_WriteValidityFlags(&validityFlags);
}

/**
 * @brief 
 * 
 * @return boolean 
 */
static boolean EcuMgr_Prv_IsValidBootloaderLogicalBlock_INVT(uint8 u8CheckBank)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = u8CheckBank * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_BOOT_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_IsPersistedBootloaderLogicalBlock_INVT(void)
{
    return FBL_DataM_IsPersistedNvMValidityFlags();
}

/**
 * @brief 
 * 
 * @param isValid 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_SetValidityApplicationLogicalBlock_INVT(boolean isValid)
{
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
    
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    if(TRUE == isValid)
    {
        CLEAR_BIT(validityFlags, (ECUMGR_STATUS_INFO_APP_VALIDITY << u8ValidityShiftBit)); 
    }
    else
    {
        SET_BIT(validityFlags, (ECUMGR_STATUS_INFO_APP_VALIDITY << u8ValidityShiftBit));

    }

    return Fbl_BootM_WriteValidityFlags(&validityFlags);
}

/**
 * @brief 
 * 
 * @return boolean 
 */
static boolean EcuMgr_Prv_IsValidApplicationLogicalBlock_INVT(uint8 u8CheckBank)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = u8CheckBank * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_APP_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_IsPersistedApplicationLogicalBlock_INVT(void)
{
    return FBL_DataM_IsPersistedNvMValidityFlags();
}

/**
 * @brief 
 * 
 * @param isValid 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_SetValidityCalibrationLogicalBlock_INVT(boolean isValid)
{
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
    
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    if(TRUE == isValid)
    {
        CLEAR_BIT(validityFlags, (ECUMGR_STATUS_INFO_CAL_VALIDITY << u8ValidityShiftBit));
    }
    else
    {
        SET_BIT(validityFlags, (ECUMGR_STATUS_INFO_CAL_VALIDITY << u8ValidityShiftBit));
    }

    return Fbl_BootM_WriteValidityFlags(&validityFlags);
}

/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_IsValidCalibrationLogicalBlock_INVT(uint8 u8CheckBank)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = u8CheckBank * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_CAL_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

/**
 * @brief 
 * 
 * @return Std_ReturnType 
 */
static Std_ReturnType EcuMgr_Prv_IsPersistedCalibrationLogicalBlock_INVT(void)
{
    return FBL_DataM_IsPersistedNvMValidityFlags();
}

static Std_ReturnType EcuMgr_Prv_SetValidityAllLogicalBlock_INVT(boolean isValid)
{
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = Swap_u8GetInactiveBank() * 4;
    
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    if(TRUE == isValid)
    {
        CLEAR_BIT(validityFlags, (ECUMGR_STATUS_INFO_BLOCKS_VALIDITY << u8ValidityShiftBit));
    }
    else
    {
        SET_BIT(validityFlags, (ECUMGR_STATUS_INFO_BLOCKS_VALIDITY << u8ValidityShiftBit));
    }

    return Fbl_BootM_WriteValidityFlags(&validityFlags);
}

static boolean EcuMgr_Prv_IsValidAllLogicalBlock_INVT(uint8 u8CheckBank)
{
    Std_ReturnType ret = E_OK;
    Fbl_BootM_ValidityFlagType validityFlags;
    uint8 u8ValidityShiftBit = u8CheckBank * 4;
      
    (void)Fbl_BootM_ReadValidityFlags(&validityFlags);
    ret = ((validityFlags & (ECUMGR_STATUS_INFO_BLOCKS_VALIDITY << u8ValidityShiftBit)) == 0) ? TRUE : FALSE;
    return ret;
}

static Std_ReturnType EcuMgr_Prv_IsPersistedAllLogicalBlock_INVT(void)
{
    return FBL_DataM_IsPersistedNvMValidityFlags();
}


/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
static const EcuMgr_BlockApisType bootBlockApis[NUMBER_OF_PROCESS_TYPE] =
{
   {
    EcuMgr_DownloadTargetEraseBootloader,
    EcuMgr_ImplicitErasePostEraseBootloaderHook,
    EcuMgr_ImplicitCopyPostVerifyBootloaderHook,
    EcuMgr_ImplicitCheckPostVerifyBootloaderHook,
    EcuMgr_Prv_SetValidityBootloaderLogicalBlock,
    EcuMgr_Prv_IsValidBootloaderLogicalBlock,
    EcuMgr_Prv_IsPersistedBootloaderLogicalBlock
   },
   {
    EcuMgr_DownloadTargetEraseBootloader_INVT,
    EcuMgr_ImplicitErasePostEraseBootloaderHook_INVT,
    EcuMgr_ImplicitCopyPostVerifyBootloaderHook_INVT,
    EcuMgr_ImplicitCheckPostVerifyBootloaderHook_INVT,
    EcuMgr_Prv_SetValidityBootloaderLogicalBlock_INVT,
    EcuMgr_Prv_IsValidBootloaderLogicalBlock_INVT,
    EcuMgr_Prv_IsPersistedBootloaderLogicalBlock_INVT
   }
};

static const EcuMgr_BlockApisType appBlockApis[NUMBER_OF_PROCESS_TYPE] =
{
   {
    EcuMgr_DownloadTargetEraseApplication,
    NULL_PTR,
    NULL_PTR,
    NULL_PTR,
    EcuMgr_Prv_SetValidityApplicationLogicalBlock,
    EcuMgr_Prv_IsValidApplicationLogicalBlock,
    EcuMgr_Prv_IsPersistedApplicationLogicalBlock
   },
   {
    EcuMgr_DownloadTargetEraseApplication_INVT,
    NULL_PTR,
    NULL_PTR,
    NULL_PTR,
    EcuMgr_Prv_SetValidityApplicationLogicalBlock_INVT,
    EcuMgr_Prv_IsValidApplicationLogicalBlock_INVT,
    EcuMgr_Prv_IsPersistedApplicationLogicalBlock_INVT
   }
};

static const EcuMgr_BlockApisType dataBlockApis[NUMBER_OF_PROCESS_TYPE] =
{
   {
    EcuMgr_DownloadTargetEraseCalibration,
    NULL_PTR,
    NULL_PTR,
    NULL_PTR,
    EcuMgr_Prv_SetValidityCalibrationLogicalBlock,
    EcuMgr_Prv_IsValidCalibrationLogicalBlock,
    EcuMgr_Prv_IsPersistedCalibrationLogicalBlock
   },
   {
    EcuMgr_DownloadTargetEraseCalibration_INVT,
    NULL_PTR,
    NULL_PTR,
    NULL_PTR,
    EcuMgr_Prv_SetValidityCalibrationLogicalBlock_INVT,
    EcuMgr_Prv_IsValidCalibrationLogicalBlock_INVT,
    EcuMgr_Prv_IsPersistedCalibrationLogicalBlock_INVT
   }
};

static const EcuMgr_BlockApisType allBlockApis[NUMBER_OF_PROCESS_TYPE] =
{
   {
    EcuMgr_DownloadTargetEraseAll,
    EcuMgr_ImplicitErasePostEraseAllHook,
    EcuMgr_ImplicitCopyPostVerifyAllHook,
    EcuMgr_ImplicitCheckPostVerifyAllHook,
    EcuMgr_Prv_SetValidityAllLogicalBlock,
    EcuMgr_Prv_IsValidAllLogicalBlock,
    EcuMgr_Prv_IsPersistedAllLogicalBlock
   },
   {
    EcuMgr_DownloadTargetEraseAll_INVT,
    EcuMgr_ImplicitErasePostEraseAllHook_INVT,
    EcuMgr_ImplicitCopyPostVerifyAllHook_INVT,
    EcuMgr_ImplicitCheckPostVerifyAllHook_INVT,
    EcuMgr_Prv_SetValidityAllLogicalBlock_INVT,
    EcuMgr_Prv_IsValidAllLogicalBlock_INVT,
    EcuMgr_Prv_IsPersistedAllLogicalBlock_INVT
   }
};

const EcuMgr_LogicalBlockInfoType targetLogicalBlockinfo[NUMBER_OF_LOGICAL_BLOCK_TYPE] =
{
   {
      LOGICAL_BLOCK_APPLICATION,
      ECUMGR_APPLICATION_REGION_START_ADDRESS,
      ECUMGR_APPLICATION_REGION_END_ADDRESS,
      ECUMGR_APP_MAX_PROGRAMMING_ATTEMPT_COUNTER,
      &appBlockApis
   },    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
   {
      LOGICAL_BLOCK_DATA,
      ECUMGR_DATA_REGION_START_ADDRESS,
      ECUMGR_DATA_REGION_END_ADDRESS,
      ECUMGR_DATA_MAX_PROGRAMMING_ATTEMPT_COUNTER,
      &dataBlockApis
   },    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
   {
      LOGICAL_BLOCK_ALL,
      ECUMGR_DATA_REGION_START_ADDRESS,
      ECUMGR_APPLICATION_REGION_END_ADDRESS,
      ECUMGR_ALL_MAX_PROGRAMMING_ATTEMPT_COUNTER,
      &allBlockApis
   },    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
   {
      LOGICAL_BLOCK_BOOTLOADER,
      ECUMGR_BOOTLOADER_REGION_START_ADDRESS,
      ECUMGR_BOOTLOADER_REGION_END_ADDRESS,
      ECUMGR_APP_MAX_PROGRAMMING_ATTEMPT_COUNTER,
      &bootBlockApis
   },    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
};

const EcuMgr_RamBlockInfoType targetRamBlockInfo[NUMBER_OF_RAM_BLOCK_TYPE] =
{
    {
       RAM_BLOCK_SBL,
       ECUMGR_SBL_REGION_START_ADDRESS,
       ECUMGR_SBL_REGION_END_ADDRESS,
       EcuMgr_Prv_LoadSblRamBlock,
       EcuMgr_Prv_UnloadSblRamBlock
    }   /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
};


const void *targetBlockInfo[NUMBER_OF_BLOCK_ID] =
{
    (void *)&targetRamBlockInfo,
    (void *)&targetLogicalBlockinfo
};


