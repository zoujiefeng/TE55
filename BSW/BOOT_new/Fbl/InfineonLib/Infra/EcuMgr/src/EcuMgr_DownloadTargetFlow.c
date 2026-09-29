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

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/
#if ((ECUMGR_DOWNLOAD_SEGMENT_SIZE > MINIMUM_SEG_SIZE && ECUMGR_DOWNLOAD_SEGMENT_SIZE <= ECUMGR_DOWNLOAD_BLOCK_SIZE) && \
    ((ECUMGR_DOWNLOAD_SEGMENT_SIZE & (ECUMGR_DOWNLOAD_SEGMENT_SIZE - 1)) != 0))
    #error " Size of the segment must be greater than 256 and be a power of two!"
#endif

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/
typedef enum
{
    ECUMGR_DOWNLOADTARGET_INIT,
    ECUMGR_DOWNLOADTARGET_RUNNING
} EcuMgr_DownloadTargetStateType;

typedef struct
{
    boolean newTransferBlock;
    boolean firstTransferBlock;
    Fbl_ProgM_WriteResultType errorcode;
    uint32 address;
    uint32 length;
    uint32 actualWriteLength;
    uint8 *DownloadBlockBufPtr;
} DownloadBlockType;

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/
static DownloadBlockType *pendingDownloadBlockPtr = NULL_PTR;
static EcuMgr_DownloadTargetStateType downloadTarget_CmpState = ECUMGR_DOWNLOADTARGET_INIT;
static ActiveBlocktype *activeBlockPendingPtr = NULL_PTR;

FlashParamType FlashParam = {FlashFailed, UnInitialized, 0, 0, NULL_PTR, NULL_PTR, {0}, {0}, 0};

uint32 scratchBuf[ECUMGR_BUFFER_BLOCK_SIZE >> 2u];
static uint32 LogicalBlockLength[NUMBER_OF_LOGICAL_BLOCK_TYPE] = {0};//hpc
static boolean logicalBlockEraseFlag[NUMBER_OF_LOGICAL_BLOCK_TYPE] = {0};

static boolean FlsDriverFlag = 0;

/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 001] */
static void EcuMgr_Prv_SetActiveBlock(EcuMgr_BlockIdType blockId, uint8 blockIndex)
{
    static ActiveBlocktype activeblockPending;
    activeblockPending.blockId = blockId;
    activeblockPending.blockIndex = blockIndex;
    activeBlockPendingPtr = &activeblockPending;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 002] */
ActiveBlocktype *EcuMgr_Prv_GetActiveBlock(void)
{
    ActiveBlocktype *blockPtr = NULL_PTR;
    blockPtr = activeBlockPendingPtr;
    return blockPtr;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 003] */
void EcuMgr_Prv_DeactivateBlock(void)
{
    activeBlockPendingPtr = NULL_PTR;
}

uint32 EcuMgr_u32GetLogicBlockLength(uint8 u8BlockIndex)
{
    return LogicalBlockLength[u8BlockIndex];
}

boolean EcuMgr_bGetFlsValidFlag(void)
{
    return FlsDriverFlag;
}

void EcuMgr_vidSetFlsValidFlag(void)
{
    FlsDriverFlag = TRUE;
}

void EcuMgr_vidClrFlsValidFlag(void)
{
    FlsDriverFlag = FALSE;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 004] */
static Fbl_ProgM_WriteResultType EcuMgr_Prv_ExecuteWrite(uint32 memoryAddress, uint32 dataLength, const uint8  *sourceAddressPtr)
{
    Fbl_ProgM_WriteResultType result = FBL_PROGM_WRITE_RESULT_FAILURE;
    ActiveBlocktype *activeBlockPtr = NULL_PTR;
    uint32 xBlockSize;
    EcuMgr_RamBlockInfoType *ramBlockPtr;

    activeBlockPtr = EcuMgr_Prv_GetActiveBlock();
    if(activeBlockPtr != NULL_PTR)
    {
        if(activeBlockPtr->blockId == RAM_BLOCK_ID)
        {
            ramBlockPtr = (EcuMgr_RamBlockInfoType *)(uint32)targetBlockInfo[activeBlockPtr->blockId];  /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
            xBlockSize = ramBlockPtr[activeBlockPtr->blockIndex].endAddress - ramBlockPtr[activeBlockPtr->blockIndex].startAddress + 1u;
            if(dataLength > xBlockSize)
            {
                ramBlockPtr[activeBlockPtr->blockIndex].load(memoryAddress, sourceAddressPtr, xBlockSize);
            }
            else
            {
                ramBlockPtr[activeBlockPtr->blockIndex].load(memoryAddress, sourceAddressPtr, dataLength);
            }

            EcuMgr_vidSetFlsValidFlag();
            result = FBL_PROGM_WRITE_RESULT_SUCCESS;
        }
        else if(activeBlockPtr->blockId == LOGICAL_BLOCK_ID)
        {
            if(EcuMgr_bGetFlsValidFlag())
            {
                FlashParam.address = (memoryAddress + ECUMGR_DOWNLOAD_ADDRESS_OFFSET - (uint32)ECUMGR_APPLICATION_REGION_OFFSET);
                FlashParam.length = dataLength;
                FlashParam.data = sourceAddressPtr;
                DISABLE();
                FLASH_DRIVER_WRITE(ECUMGR_SBL_REGION_START_ADDRESS, &FlashParam);   /* PRQA S 0306, 1840 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
                DISABLE();
                if(FlashParam.errorcode == (FlashResultType)FlashOk)
                {
                    result = FBL_PROGM_WRITE_RESULT_SUCCESS;
                }
                else
                {
                    result = FBL_PROGM_WRITE_RESULT_FAILURE;
                }
            }else
            {
                result = DCM_E_CONDITIONSNOTCORRECT;
            }
        }
        else
        {
            /* nothing */
        }
    }
    else {/*Nothing*/}
    return result;
}

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 108] */
boolean EcuMgr_DownloadTargetCheckValidEraseInputs(uint32 MemoryAddress, uint32 regionSize, Dcm_NegativeResponseCodeType *nrcRet)
{
    boolean ret = FALSE;

    EcuMgr_LogicalBlockInfoType *logicalBlockPtr;
    uint8 logicalBlockIndex = 0;
    /* only check The memmoryAddress on the logical block to be erased being in targetblockinfo*/

    logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)((uint32)targetBlockInfo[LOGICAL_BLOCK_ID]);   /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
    for(logicalBlockIndex = 0; logicalBlockIndex < (uint8)NUMBER_OF_LOGICAL_BLOCK_TYPE; logicalBlockIndex++)
    {
        if((MemoryAddress >= logicalBlockPtr[logicalBlockIndex].startAddress) &&
            (MemoryAddress <= logicalBlockPtr[logicalBlockIndex].endAddress) &&
            ((MemoryAddress + regionSize) >= logicalBlockPtr[logicalBlockIndex].startAddress) &&
            ((MemoryAddress + regionSize - 1u) <= logicalBlockPtr[logicalBlockIndex].endAddress))
        {
            ret = TRUE;
            logicalBlockEraseFlag[logicalBlockPtr[logicalBlockIndex].blockType] = TRUE;
            break;
        }
        else
        {
            /* continue the loop*/
        }
    }

    if(ret == TRUE)
    {
        *nrcRet = DCM_E_OK;
        EcuMgr_Prv_SetActiveBlock(LOGICAL_BLOCK_ID, logicalBlockIndex);
        LogicalBlockLength[logicalBlockIndex] = regionSize;//hpc
    }
    else
    {
        *nrcRet = (uint8)DCM_E_REQUESTOUTOFRANGE;
    }
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 109] */
/**
 * @brief 
 * 
 * @param DataFormatIdentifier 
 * @param MemoryAddress 
 * @param MemorySize 
 * @param nrcRet 
 * @return boolean 
 */
boolean EcuMgr_DownloadTargetCheckValidRequestDownloadInputs(uint8 DataFormatIdentifier,
                                                                uint32 MemoryAddress,
                                                                uint32 MemorySize, 
                                                                Dcm_NegativeResponseCodeType * nrcRet)
{
    Std_ReturnType ret = FALSE;
    uint8 compression;
    uint8 encryption;
    ActiveBlocktype *activeBlockPtr = NULL_PTR;

    EcuMgr_RamBlockInfoType *ramBlockPtr = NULL_PTR;
    uint8 ramBlockIndex = 0;

    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = NULL_PTR;

    compression = (DataFormatIdentifier & 0xF0u) >> 4u;
    encryption = DataFormatIdentifier & 0x0Fu;
    
    /* if compression and encryption are valid, then we should be returned invalid input*/
    if((compression != 0x00u) && (encryption != 0x00u))
    {
        /* NRC $31*/
        *nrcRet = (uint8)DCM_E_REQUESTOUTOFRANGE;
    }
    else 
    {
        /* Check if memory address is in the SBL target block*/
        ramBlockPtr = (EcuMgr_RamBlockInfoType *)(uint32)targetBlockInfo[RAM_BLOCK_ID];     /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
        for(ramBlockIndex = 0; ramBlockIndex <  (uint8)NUMBER_OF_RAM_BLOCK_TYPE; ramBlockIndex++)
        {
            if((MemoryAddress >= ramBlockPtr[ramBlockIndex].startAddress) &&
            (MemoryAddress <= ramBlockPtr[ramBlockIndex].endAddress) &&
            ((MemoryAddress + MemorySize) >= ramBlockPtr[ramBlockIndex].startAddress) &&
            ((MemoryAddress + MemorySize - 1u) <= ramBlockPtr[ramBlockIndex].endAddress))
            {
                ret = TRUE;
                EcuMgr_Prv_SetActiveBlock(RAM_BLOCK_ID, ramBlockIndex);
            }
        }

        if(TRUE == ret)
        {
            *nrcRet = (uint8)DCM_E_OK;
        }
        else
        {
            /* continue to check whether have any the logical block to be active or not*/ 
            activeBlockPtr = EcuMgr_Prv_GetActiveBlock();
            if(activeBlockPtr != NULL_PTR)
            {
                logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[activeBlockPtr->blockId];      /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
                
                if(logicalBlockEraseFlag[logicalBlockPtr[activeBlockPtr->blockIndex].blockType] == TRUE)
                {
                    if(((MemoryAddress >= logicalBlockPtr[activeBlockPtr->blockIndex].startAddress)) &&
                        (MemoryAddress <= logicalBlockPtr[activeBlockPtr->blockIndex].endAddress) &&
                        ((MemoryAddress + MemorySize) >= logicalBlockPtr[activeBlockPtr->blockIndex].startAddress) &&
                        ((MemoryAddress + MemorySize - 1u) <= logicalBlockPtr[activeBlockPtr->blockIndex].endAddress))
                    {
                        *nrcRet = (uint8)DCM_E_OK;
                        ret = TRUE;
                    }
                    else
                    {
                        /* The requested memory address didnot match with the erased memmory region*/
                        *nrcRet = (uint8) DCM_E_REQUESTOUTOFRANGE;
                    }
                    logicalBlockEraseFlag[logicalBlockPtr[activeBlockPtr->blockIndex].blockType] = FALSE;
                }
                else
                {
                    *nrcRet = (uint8) DCM_E_UPLOADDOWNLOADNOTACCEPTED;
                }
            }
            else
            {
                /* there are no block to be activated*/
                *nrcRet = (uint8) DCM_E_REQUESTOUTOFRANGE;
            }
        }
    }

    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 113] */
/**
 * @brief 
 * 
 */
void EcuMgr_DownloadTargetInit(void)
{
    downloadTarget_CmpState          = ECUMGR_DOWNLOADTARGET_RUNNING;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 114] */
/**
 * @brief process downloading the data to memory
 * 
 * @return boolean 
 */
static void EcuMgr_ProcessDowload(void)
{
    Fbl_ProgM_WriteResultType wStatus = FBL_PROGM_WRITE_RESULT_BUSY;
    ActiveBlocktype *activeBlockPtr = NULL_PTR;
    EcuMgr_RamBlockInfoType *ramBlockPtr = (EcuMgr_RamBlockInfoType *)(uint32)targetBlockInfo[RAM_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */

    uint32 endAddressBlock;
    static uint32 writeIndex = 0;

    if((pendingDownloadBlockPtr !=NULL_PTR) && (pendingDownloadBlockPtr->newTransferBlock == TRUE))
    {
        /*Get the active block*/
        activeBlockPtr = EcuMgr_Prv_GetActiveBlock();
        if(activeBlockPtr != NULL_PTR)
        {
            if(activeBlockPtr->blockId == RAM_BLOCK_ID)
            {
                endAddressBlock = ramBlockPtr[activeBlockPtr->blockIndex].endAddress;
            }
            else if(activeBlockPtr->blockId == LOGICAL_BLOCK_ID)
            {
                endAddressBlock = logicalBlockPtr[activeBlockPtr->blockIndex].endAddress;
            }
            else
            {
               /*Nothing*/
            }

            if(pendingDownloadBlockPtr->address >= endAddressBlock)
            {
                pendingDownloadBlockPtr->errorcode = FBL_PROGM_WRITE_INVALIDLENGTH;
            }
            else
            {
                /* Write into the memory once all conditions are valid */
                wStatus = EcuMgr_Prv_ExecuteWrite(pendingDownloadBlockPtr->address,
                                                ECUMGR_DOWNLOAD_SEGMENT_SIZE,
                                                (const uint8 *)&pendingDownloadBlockPtr->DownloadBlockBufPtr[writeIndex]);

                if(wStatus == FBL_PROGM_WRITE_RESULT_SUCCESS)
                {
                    pendingDownloadBlockPtr->address += ECUMGR_DOWNLOAD_SEGMENT_SIZE;
                    writeIndex += ECUMGR_DOWNLOAD_SEGMENT_SIZE;
                    
                    if(writeIndex <= ECUMGR_BUFFER_BLOCK_SIZE)
                    {
                        if((pendingDownloadBlockPtr->address >= endAddressBlock) || (writeIndex == ECUMGR_BUFFER_BLOCK_SIZE))
                        {
                            writeIndex = 0;
                            pendingDownloadBlockPtr->newTransferBlock = FALSE;
                            pendingDownloadBlockPtr->firstTransferBlock = TRUE;
                            pendingDownloadBlockPtr->errorcode = FBL_PROGM_WRITE_RESULT_SUCCESS;
                        }
                        else 
                        {
                            pendingDownloadBlockPtr->errorcode = FBL_PROGM_WRITE_RESULT_BUSY;
                        }
                    }
                    else
                    {
                        pendingDownloadBlockPtr->errorcode = FBL_PROGM_WRITE_RESULT_FAILURE;
                    }                   
                }
                else
                {
                    pendingDownloadBlockPtr->errorcode = FBL_PROGM_WRITE_RESULT_FAILURE;
                }
            }
        }
        else
        {
            /* nothing */
        }
    }
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 115] */
Fbl_ProgM_WriteResultType EcuMgr_DownloadTargetWrite(uint32 memoryAddress, uint32 dataLength, const uint8  * reqBuf, Dcm_OpStatusType Wmba_Opstatus)
{
    Fbl_ProgM_WriteResultType ret = FBL_PROGM_WRITE_RESULT_BUSY;
    ActiveBlocktype *activeBlockPtr = NULL_PTR;
    EcuMgr_RamBlockInfoType *ramBlockPtr = (EcuMgr_RamBlockInfoType *)(uint32)targetBlockInfo[RAM_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
    EcuMgr_LogicalBlockInfoType *logicalBlockPtr = (EcuMgr_LogicalBlockInfoType *)(uint32)targetBlockInfo[LOGICAL_BLOCK_ID];    /* PRQA S 0306 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
    static uint32 xBlockSize;
    static DownloadBlockType pendingDownloadblock = {FALSE, TRUE, FBL_PROGM_WRITE_RESULT_SUCCESS, 0, 0, 0, NULL_PTR};

    if(Wmba_Opstatus == DCM_INITIAL)
    {

        if(pendingDownloadBlockPtr == NULL_PTR)
        {
            pendingDownloadBlockPtr = &pendingDownloadblock;
            
            pendingDownloadBlockPtr->DownloadBlockBufPtr = (uint8 *)scratchBuf;     /* PRQA S 0310 */ /* MISRA DEVIATION: Cast between a pointer to object and an integral type is necessary. */
        }
        
        if(pendingDownloadBlockPtr->firstTransferBlock == TRUE)
        {
            /*record the entry address of 1st block*/
            pendingDownloadBlockPtr->address = memoryAddress;
            pendingDownloadBlockPtr->length = 0;
            pendingDownloadBlockPtr->firstTransferBlock = FALSE;
        }
        else
        {
            /* the consecutive block*/
            pendingDownloadBlockPtr->errorcode = FBL_PROGM_WRITE_RESULT_BUSY;
        }
        
        /*Get the active block*/
        activeBlockPtr = EcuMgr_Prv_GetActiveBlock();
        if(activeBlockPtr->blockId == RAM_BLOCK_ID)
        {
            xBlockSize = (ramBlockPtr[activeBlockPtr->blockIndex].endAddress - ramBlockPtr[activeBlockPtr->blockIndex].startAddress) + 1u;
        }
        else if(activeBlockPtr->blockId == LOGICAL_BLOCK_ID)
        {
            Fbl_vidStartWriteTimer();
            xBlockSize = logicalBlockPtr[activeBlockPtr->blockIndex].endAddress - logicalBlockPtr[activeBlockPtr->blockIndex].startAddress + 1u;
        }
        else
        {
            /* do nothing */
        }

    }
    else
    {
       /*nothing*/
    }

    if(pendingDownloadBlockPtr->length < ECUMGR_BUFFER_BLOCK_SIZE)
    {
        if((pendingDownloadBlockPtr->actualWriteLength < xBlockSize))
        {
            if(pendingDownloadBlockPtr->firstTransferBlock == FALSE)
            {
                /* put data into buffer with length*/
                (void)Fbl_DataM_MemCopy((uint8 *)&pendingDownloadBlockPtr->DownloadBlockBufPtr[pendingDownloadBlockPtr->length], reqBuf, dataLength);
                pendingDownloadBlockPtr->length += dataLength;
                pendingDownloadBlockPtr->actualWriteLength += dataLength;
                /* succeeded dowloading the consecutive block*/
                pendingDownloadBlockPtr->newTransferBlock = ((pendingDownloadBlockPtr->actualWriteLength >= xBlockSize) || (pendingDownloadBlockPtr->length == ECUMGR_BUFFER_BLOCK_SIZE)) ? TRUE : FALSE;
                pendingDownloadBlockPtr->errorcode = ((pendingDownloadBlockPtr->actualWriteLength >= xBlockSize) || (pendingDownloadBlockPtr->length == ECUMGR_BUFFER_BLOCK_SIZE)) ? FBL_PROGM_WRITE_RESULT_BUSY : FBL_PROGM_WRITE_RESULT_SUCCESS;
            }
            else {/*Nothing*/}
        }
    }
    
    if(pendingDownloadBlockPtr->actualWriteLength >= xBlockSize)
    {
        pendingDownloadBlockPtr->actualWriteLength = (pendingDownloadBlockPtr->errorcode == FBL_PROGM_WRITE_RESULT_SUCCESS) ? (uint32)0 : pendingDownloadBlockPtr->actualWriteLength;
    }
    
    ret = pendingDownloadBlockPtr->errorcode;
    return ret ;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 116] */
void EcuMgr_DownloadTargetMainFunction(void)
{
    if(ECUMGR_DOWNLOADTARGET_RUNNING == downloadTarget_CmpState)
    {
        EcuMgr_ProcessDowload();
        EcuMgr_ProcessCopy();
    }
    else
    {
        /*Nothing Todo*/
    }
}

