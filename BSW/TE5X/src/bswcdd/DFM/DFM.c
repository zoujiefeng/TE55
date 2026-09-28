
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "DFM_hal.h"
#include "MutexDef.h"
#include "DFM.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef enum DFM_Q_HANDLE_FUNC_STATE{
   DFM_QUEUE_IDLE = 0,
   DFM_QUEUE_GET_LOCK,
   DFM_PARSE_AND_EXE_CMD,
   DFM_QUEUE_RELASE_LOCK
}DFM_Q_HANDLE_FUNC_STATE;

typedef enum DFM_LOCK_INDEX_CAL{
   DFM_ESM_LOCK_INDEX  = MUTEX_ESM_AND_DFLASH_INDEX,
   DFM_NVM_LOCK_INDEX  = MUTEX_NVM_AND_DFLASH_INDEX,
   DFM_MIF_LOCK_INDEX  = MUTEX_MEMIF_AND_DFLASH_INDEX,
   DFM_CORE_LOCK_INDEX = MUTEX_DFLASH_MULTI_CORE_INDEX
}DFM_LOCK_INDEX_CAL;
   
typedef enum DFM_OPERATION_TYPE_CAL{
   DFM_GET_LOCK = MUTEX_GET_LOCK,
   DFM_RELEASE_LOCK = MUTEX_RELEASE_LOCK
}DFM_OPERATION_TYPE_CAL;


/* The number of active cores running this module */
enum{
#if ((defined DFM_CORE0_Q_ENABLE) && (DFM_CORE0_Q_ENABLE == TRUE))
   DFM_CORE0_QUEUE_INDEX,
#endif
#if ((defined DFM_CORE1_Q_ENABLE) && (DFM_CORE1_Q_ENABLE == TRUE))
   DFM_CORE1_QUEUE_INDEX,
#endif
#if ((defined DFM_CORE2_Q_ENABLE) && (DFM_CORE2_Q_ENABLE == TRUE))
   DFM_CORE2_QUEUE_INDEX,
#endif
#if ((defined DFM_CORE3_Q_ENABLE) && (DFM_CORE3_Q_ENABLE == TRUE))
   DFM_CORE3_QUEUE_INDEX,
#endif
#if ((defined DFM_CORE4_Q_ENABLE) && (DFM_CORE4_Q_ENABLE == TRUE))
   DFM_CORE4_QUEUE_INDEX,
#endif
#if ((defined DFM_CORE5_Q_ENABLE) && (DFM_CORE5_Q_ENABLE == TRUE))
   DFM_CORE5_QUEUE_INDEX,
#endif
   DFM_CORE_CONFIG_NUM
};

enum{
#if ((defined DFM_CORE0_Q_ENABLE) && (DFM_CORE0_Q_ENABLE == TRUE))
   DFM_CORE0_RING_Q_SIZE = DFM_CFG_CORE0_RING_Q_SIZE,
#endif
#if ((defined DFM_CORE1_Q_ENABLE) && (DFM_CORE1_Q_ENABLE == TRUE))
   DFM_CORE1_RING_Q_SIZE = DFM_CFG_CORE1_RING_Q_SIZE,
#endif
#if ((defined DFM_CORE2_Q_ENABLE) && (DFM_CORE2_Q_ENABLE == TRUE))
   DFM_CORE2_RING_Q_SIZE = DFM_CFG_CORE2_RING_Q_SIZE,
#endif
#if ((defined DFM_CORE3_Q_ENABLE) && (DFM_CORE3_Q_ENABLE == TRUE))
   DFM_CORE3_RING_Q_SIZE = DFM_CFG_CORE3_RING_Q_SIZE,
#endif
#if ((defined DFM_CORE4_Q_ENABLE) && (DFM_CORE4_Q_ENABLE == TRUE))
   DFM_CORE4_RING_Q_SIZE = DFM_CFG_CORE4_RING_Q_SIZE,
#endif
#if ((defined DFM_CORE5_Q_ENABLE) && (DFM_CORE5_Q_ENABLE == TRUE))
   DFM_CORE5_RING_Q_SIZE = DFM_CFG_CORE5_RING_Q_SIZE
#endif
};

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void DFM_vidReleaseLock(uint8 u8CoreId);
static boolean DFM_bGetAllLock(uint8 u8CoreId);
static boolean DFM_bGrabNvmLock(void);
static boolean DFM_bQueueIsEmpty(PKDFM_CmdQConstObj pxQueue);
static boolean DFM_bQueueIsFull(PKDFM_CmdQConstObj pxQueue);
static boolean DFM_bQueueAdd(PKDFM_CmdQConstObj pxQueue, PDFM_Cmd pxCmd);
static boolean DFM_bQueuePop(PKDFM_CmdQConstObj pxQueue, PDFM_Cmd pxCmd);
static boolean DFM_bGetDataFromDFlash(uint32 u32DflashAddr, uint8 *pu8DestBuf, uint32 u32Size);
static boolean DFM_bBlockErase(const struct DFM_Block * ptBlock);
boolean DFM_bBlockWrite(const struct DFM_Block * ptBlock, uint32 u32SrcAddress, uint32 u32DestOffset);
static inline boolean DFM_bDriverIsIdle(void);
static PKDFM_CmdQConstObj DFM_pxGetCmdQueue(uint8 u8QIndex);

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/    
#define DFM_BYTE_INVALID_VALUE      0xFF
   
#define DFM_FLASH_WRITE_RETRY_TIME  10

#define DFM_bCalLockHandle(eLockIndex, eOpType)   Mutex_bGrabSpecifiedLock((MUTEX_LOCK_INDEX)eLockIndex, (MUTEX_LOCK_OPERATION_TYPE)eOpType)

#define DFM_USER_CMD_NOT_PARSED        0xAA
#define DFM_USER_CMD_PARSED            0x00

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint32 DFlash_u32ErrorAddr = 0;

#if ((defined DFM_CORE0_Q_ENABLE) && (DFM_CORE0_Q_ENABLE == TRUE))
   #pragma section "ClearedData.Cpu0.Unspecified" aw 4
   static uint8 DFM_au8Core0Block[DFM_RAM_BUFFER_SIZE] = {0};
   static RingQueue_ElementType DFM_axCore0QBuffer[DFM_CORE0_RING_Q_SIZE];
   #pragma section
#endif
#if ((defined DFM_CORE1_Q_ENABLE) && (DFM_CORE1_Q_ENABLE == TRUE))
   #pragma section "ClearedData.Cpu1.Unspecified" aw 4
   static uint8 DFM_au8Core1Block[DFM_RAM_BUFFER_SIZE] = {0};
   static RingQueue_ElementType DFM_axCore1QBuffer[DFM_CORE1_RING_Q_SIZE];
   #pragma section
#endif
#if ((defined DFM_CORE2_Q_ENABLE) && (DFM_CORE2_Q_ENABLE == TRUE))
   #pragma section "ClearedData.Cpu2.Unspecified" aw 4
   static uint8 DFM_au8Core2Block[DFM_RAM_BUFFER_SIZE] = {0};
   static RingQueue_ElementType DFM_axCore2QBuffer[DFM_CORE2_RING_Q_SIZE];
   #pragma section
#endif
#if ((defined DFM_CORE3_Q_ENABLE) && (DFM_CORE3_Q_ENABLE == TRUE))
   #pragma section "ClearedData.Cpu3.Unspecified" aw 4
   static uint8 DFM_au8Core3Block[DFM_RAM_BUFFER_SIZE] = {0};
   static RingQueue_ElementType DFM_axCore3QBuffer[DFM_CORE3_RING_Q_SIZE];
   #pragma section
#endif
#if ((defined DFM_CORE4_Q_ENABLE) && (DFM_CORE4_Q_ENABLE == TRUE))
   #pragma section "ClearedData.Cpu4.Unspecified" aw 4
   static uint8 DFM_au8Core4Block[DFM_RAM_BUFFER_SIZE] = {0};
   static RingQueue_ElementType DFM_axCore4QBuffer[DFM_CORE4_RING_Q_SIZE];
   #pragma section
#endif
#if ((defined DFM_CORE5_Q_ENABLE) && (DFM_CORE5_Q_ENABLE == TRUE))
   #pragma section "ClearedData.Cpu5.Unspecified" aw 4
   static uint8 DFM_au8Core5Block[DFM_RAM_BUFFER_SIZE] = {0};
   static RingQueue_ElementType DFM_axCore5QBuffer[DFM_CORE5_RING_Q_SIZE];
   #pragma section
#endif

static RingQueue_ObjectType DFM_axQObjSet[DFM_CORE_CONFIG_NUM] = {
#if ((defined DFM_CORE0_Q_ENABLE) && (DFM_CORE0_Q_ENABLE == TRUE))
   {
      .u8HeadIdx       = 0,
      .u8TailIdx       = 0,
      .u8QueueMask     = DFM_CORE0_RING_Q_SIZE - 1,
      .u8ElementLength = RINGQUEUE_ELEMENT_LEN,
      .u32Lock         = 0,
      .pxElementSetPtr = &DFM_axCore0QBuffer[0],
      .bPutData        = NULL_PTR,
      .bGetData        = NULL_PTR
   },
#endif
#if ((defined DFM_CORE1_Q_ENABLE) && (DFM_CORE1_Q_ENABLE == TRUE))
   {
      .u8HeadIdx       = 0,
      .u8TailIdx       = 0,
      .u8QueueMask     = DFM_CORE1_RING_Q_SIZE - 1,
      .u8ElementLength = RINGQUEUE_ELEMENT_LEN,
      .u32Lock         = 0,
      .pxElementSetPtr = &DFM_axCore1QBuffer[0],
      .bPutData        = NULL_PTR,
      .bGetData        = NULL_PTR
   },
#endif
#if ((defined DFM_CORE2_Q_ENABLE) && (DFM_CORE2_Q_ENABLE == TRUE))
   {
      .u8HeadIdx       = 0,
      .u8TailIdx       = 0,
      .u8QueueMask     = DFM_CORE2_RING_Q_SIZE - 1,
      .u8ElementLength = RINGQUEUE_ELEMENT_LEN,
      .u32Lock         = 0,
      .pxElementSetPtr = &DFM_axCore2QBuffer[0],
      .bPutData        = NULL_PTR,
      .bGetData        = NULL_PTR
   },
#endif
#if ((defined DFM_CORE3_Q_ENABLE) && (DFM_CORE3_Q_ENABLE == TRUE))
   {
      .u8HeadIdx       = 0,
      .u8TailIdx       = 0,
      .u8QueueMask     = DFM_CORE3_RING_Q_SIZE - 1,
      .u8ElementLength = RINGQUEUE_ELEMENT_LEN,
      .u32Lock         = 0,
      .pxElementSetPtr = &DFM_axCore3QBuffer[0],
      .bPutData        = NULL_PTR,
      .bGetData        = NULL_PTR
   },
#endif
#if ((defined DFM_CORE4_Q_ENABLE) && (DFM_CORE4_Q_ENABLE == TRUE))
   {
      .u8HeadIdx       = 0,
      .u8TailIdx       = 0,
      .u8QueueMask     = DFM_CORE4_RING_Q_SIZE - 1,
      .u8ElementLength = RINGQUEUE_ELEMENT_LEN,
      .u32Lock         = 0,
      .pxElementSetPtr = &DFM_axCore4QBuffer[0],
      .bPutData        = NULL_PTR,
      .bGetData        = NULL_PTR
   },
#endif
#if ((defined DFM_CORE5_Q_ENABLE) && (DFM_CORE5_Q_ENABLE == TRUE))
   {
      .u8HeadIdx       = 0,
      .u8TailIdx       = 0,
      .u8QueueMask     = DFM_CORE5_RING_Q_SIZE - 1,
      .u8ElementLength = RINGQUEUE_ELEMENT_LEN,
      .u32Lock         = 0,
      .pxElementSetPtr = &DFM_axCore5QBuffer[0],
      .bPutData        = NULL_PTR,
      .bGetData        = NULL_PTR
   }
#endif
};
   
/**********************************************************************
 * Object name      :  DFM_vFRModuleInit
 * Description      :  Each active Core has its own queue
 * Object type      :  DFM_CmdQueue[DFM_CORE_CONFIG_NUM]
 *                     DFM_CORE_CONFIG_NUM - The number of active cores running this module
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/01/05       V1.0        Zyx        Create
 ***********************************************************************/
static DFM_CmdQVarObj g_xCmdQueueVarObjSet[DFM_CORE_CONFIG_NUM];

/**********************************************************************
 * Object name      :  g_u8LockStateVarSet
 * Description      :  
 * Object type      :  uint8[DFM_MAX_CORE_NUM]  
 *                     DFM_MAX_CORE_NUM - Maximum number of supported cores  
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/01/05       V1.0        Zyx        Create
 ***********************************************************************/
static volatile uint8 g_u8LockStateVarSet[DFM_MAX_CORE_NUM];

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/
static const DFM_CmdQConstObj g_kxCmdQueueSet[DFM_CORE_CONFIG_NUM] = {
#if ((defined DFM_CORE0_Q_ENABLE) && (DFM_CORE0_Q_ENABLE == TRUE))
   {
      /* Variable objs set */
      .kpxVarObjSet     = &g_xCmdQueueVarObjSet[DFM_CORE0_QUEUE_INDEX],
      /* Const objs */
      .pu8FlashWriteBuf = &DFM_au8Core0Block[0],  /* Flash Write Buf */
      .bIsEmpty         = DFM_bQueueIsEmpty,      /* Queue Empty Interface */
      .bIsFull          = DFM_bQueueIsFull,       /* Queue Full Interface */
      .bAdd             = DFM_bQueueAdd,          /* Queue Add Interface */
      .bPop             = DFM_bQueuePop           /* Queue Pop Interface */
   },
#endif
#if ((defined DFM_CORE1_Q_ENABLE) && (DFM_CORE1_Q_ENABLE == TRUE))
   {
      /* Variable objs set */
      .kpxVarObjSet     = &g_xCmdQueueVarObjSet[DFM_CORE1_QUEUE_INDEX],
      /* Const objs */
      .pu8FlashWriteBuf = &DFM_au8Core1Block[0],  /* Flash Write Buf */
      .bIsEmpty         = DFM_bQueueIsEmpty,      /* Queue Empty Interface */
      .bIsFull          = DFM_bQueueIsFull,       /* Queue Full Interface */
      .bAdd             = DFM_bQueueAdd,          /* Queue Add Interface */
      .bPop             = DFM_bQueuePop           /* Queue Pop Interface */
   },
#endif
#if ((defined DFM_CORE2_Q_ENABLE) && (DFM_CORE2_Q_ENABLE == TRUE))
   {
      /* Variable objs set */
      .kpxVarObjSet     = &g_xCmdQueueVarObjSet[DFM_CORE2_QUEUE_INDEX],
      /* Const objs */
      .pu8FlashWriteBuf = &DFM_au8Core2Block[0],  /* Flash Write Buf */
      .bIsEmpty         = DFM_bQueueIsEmpty,      /* Queue Empty Interface */
      .bIsFull          = DFM_bQueueIsFull,       /* Queue Full Interface */
      .bAdd             = DFM_bQueueAdd,          /* Queue Add Interface */
      .bPop             = DFM_bQueuePop           /* Queue Pop Interface */
   },
#endif
#if ((defined DFM_CORE3_Q_ENABLE) && (DFM_CORE3_Q_ENABLE == TRUE))
   {
      /* Variable objs set */
      .kpxVarObjSet     = &g_xCmdQueueVarObjSet[DFM_CORE3_QUEUE_INDEX],
      /* Const objs */
      .pu8FlashWriteBuf = &DFM_au8Core3Block[0],  /* Flash Write Buf */
      .bIsEmpty         = DFM_bQueueIsEmpty,      /* Queue Empty Interface */
      .bIsFull          = DFM_bQueueIsFull,       /* Queue Full Interface */
      .bAdd             = DFM_bQueueAdd,          /* Queue Add Interface */
      .bPop             = DFM_bQueuePop           /* Queue Pop Interface */
   },
#endif
#if ((defined DFM_CORE4_Q_ENABLE) && (DFM_CORE4_Q_ENABLE == TRUE))
   {
      /* Variable objs set */
      .kpxVarObjSet     = &g_xCmdQueueVarObjSet[DFM_CORE4_QUEUE_INDEX],
      /* Const objs */
      .pu8FlashWriteBuf = &DFM_au8Core4Block[0],  /* Flash Write Buf */
      .bIsEmpty         = DFM_bQueueIsEmpty,      /* Queue Empty Interface */
      .bIsFull          = DFM_bQueueIsFull,       /* Queue Full Interface */
      .bAdd             = DFM_bQueueAdd,          /* Queue Add Interface */
      .bPop             = DFM_bQueuePop           /* Queue Pop Interface */
   },
#endif
#if ((defined DFM_CORE5_Q_ENABLE) && (DFM_CORE5_Q_ENABLE == TRUE))
   {
      /* Variable objs set */
      .kpxVarObjSet     = &g_xCmdQueueVarObjSet[DFM_CORE5_QUEUE_INDEX],
      /* Const objs */
      .pu8FlashWriteBuf = &DFM_au8Core5Block[0],  /* Flash Write Buf */
      .bIsEmpty         = DFM_bQueueIsEmpty,      /* Queue Empty Interface */
      .bIsFull          = DFM_bQueueIsFull,       /* Queue Full Interface */
      .bAdd             = DFM_bQueueAdd,          /* Queue Add Interface */
      .bPop             = DFM_bQueuePop           /* Queue Pop Interface */
   }
#endif
};

/**********************************************************************
 * Object name      :  g_ku8CmdQIndexTable
 * Description      :  Command queue index owned by each core
 * Object type      :  uint8[DFM_MAX_CORE_NUM]
 *                     DFM_MAX_CORE_NUM - Maximum number of supported cores  
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/01/05       V1.0        Zyx        Create
 ***********************************************************************/
static const uint8 g_ku8CmdQIndexTable[DFM_MAX_CORE_NUM] = {
#if ((defined DFM_CORE0_Q_ENABLE) && (DFM_CORE0_Q_ENABLE == TRUE))
   DFM_CORE0_QUEUE_INDEX,   /* CORE0_CMD_QUEUE_SET_INDEX */
#else
   DFM_BYTE_INVALID_VALUE,
#endif
#if ((defined DFM_CORE1_Q_ENABLE) && (DFM_CORE1_Q_ENABLE == TRUE))
   DFM_CORE1_QUEUE_INDEX,   /* CORE1_CMD_QUEUE_SET_INDEX */
#else
   DFM_BYTE_INVALID_VALUE,
#endif
#if ((defined DFM_CORE2_Q_ENABLE) && (DFM_CORE2_Q_ENABLE == TRUE))
   DFM_CORE2_QUEUE_INDEX,   /* CORE2_CMD_QUEUE_SET_INDEX */
#else
   DFM_BYTE_INVALID_VALUE,
#endif
#if ((defined DFM_CORE3_Q_ENABLE) && (DFM_CORE3_Q_ENABLE == TRUE))
   DFM_CORE3_QUEUE_INDEX,   /* CORE3_CMD_QUEUE_SET_INDEX */
#else
   DFM_BYTE_INVALID_VALUE,
#endif
#if ((defined DFM_CORE4_Q_ENABLE) && (DFM_CORE4_Q_ENABLE == TRUE))
   DFM_CORE4_QUEUE_INDEX,   /* CORE4_CMD_QUEUE_SET_INDEX */
#else
   DFM_BYTE_INVALID_VALUE,
#endif
#if ((defined DFM_CORE5_Q_ENABLE) && (DFM_CORE5_Q_ENABLE == TRUE))
   DFM_CORE5_QUEUE_INDEX,   /* CORE5_CMD_QUEUE_SET_INDEX */
#else
   DFM_BYTE_INVALID_VALUE
#endif
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/* Description   : Spin lock state interface
 * LockCore type : uint8
 * LockBit type  : DFM_LOCK_INDEX_CAL */
#define DFM_SET_SPINLOCK_STATE(LockCore, LockBit)   do{g_u8LockStateVarSet[LockCore] |=  (1 << LockBit);}while(0)
#define DFM_CLR_SPINLOCK_STATE(LockCore, LockBit)   do{g_u8LockStateVarSet[LockCore] &= ~(1 << LockBit);}while(0)
#define DFM_GET_SPINLOCK_STATE(LockCore, LockBit)   ((g_u8LockStateVarSet[LockCore] & (1 << LockBit)) >> LockBit)

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  DFM_vidModuleInit
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/
void DFM_vidModuleInit(void)
{
   uint8 u8LocCmdQIndex = 0;

   for(u8LocCmdQIndex = 0; u8LocCmdQIndex < DFM_CORE_CONFIG_NUM; u8LocCmdQIndex++)
   {
      g_kxCmdQueueSet[u8LocCmdQIndex].kpxVarObjSet->u8Head   = 0;
      g_kxCmdQueueSet[u8LocCmdQIndex].kpxVarObjSet->u8Tail   = 0;
      g_kxCmdQueueSet[u8LocCmdQIndex].kpxVarObjSet->u8QState = DFM_QUEUE_IDLE;

      DFM_axQObjSet[u8LocCmdQIndex].bPutData = RingQueue_bPutData;
      DFM_axQObjSet[u8LocCmdQIndex].bGetData = RingQueue_bGetData;
   }
   
   DFM_vidHalMemSet((volatile void *)&g_u8LockStateVarSet[0],  0, sizeof(g_u8LockStateVarSet));
   DFM_vidHalMemSet((void *)&g_xCmdQueueVarObjSet[0], 0, sizeof(g_xCmdQueueVarObjSet));

   Mutex_vLockInit();
}

/**********************************************************************
 * Function name    :  DFM_ptGetBlock
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
PKDFM_Block DFM_ptGetBlock(uint32 u32BlockID)
{
   uint32 u32BlocksIndex = 0;
   for(u32BlocksIndex = 0; u32BlocksIndex < DFM_MAX_BLOCK_NO; u32BlocksIndex++)
   {
      if(DFM_Blocks[u32BlocksIndex].u32BlockID == u32BlockID)
      {
         return &DFM_Blocks[u32BlocksIndex];
      }
   }
}

/**********************************************************************
 * Function name    :  DFM_u32ReadBlock
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean DFM_bReadBlock(const uint8 ku8BlockId)
{
   boolean bRetResult = FALSE;
   const struct DFM_Block * ptBlock = &DFM_Blocks[ku8BlockId];
   
   if(0 != ptBlock->u32RamBlockAddress)
   {
      bRetResult = DFM_bGetDataFromDFlash(ptBlock->u32RomBlockAddress,
                                          (uint8*)ptBlock->u32RamBlockAddress,
                                          ptBlock->u32RamBlockLength);
   }
   
   return bRetResult;
}

/**********************************************************************
 * Function name    :  DFM_bReadBlockToUserBuf
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean DFM_bReadBlockToUserBuf(const uint8 ku8BlockId, uint8 *pu8DestBuf, const uint32 u32Size)
{
   boolean bRetResult = FALSE;
   const struct DFM_Block * ptBlock = &DFM_Blocks[ku8BlockId];

   if(NULL_PTR != pu8DestBuf)
   {
      bRetResult = DFM_bGetDataFromDFlash(ptBlock->u32RomBlockAddress,
                                          pu8DestBuf,
                                          u32Size);
   }
   
   return bRetResult;
}

/**********************************************************************
 * Function name    :  DFM_vidReadAll
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
void DFM_vidReadAll(void)
{
   uint8 u8Index;

   for(u8Index = 0; u8Index < DFM_MAX_BLOCK_NO; u8Index++)
   {
      if(0 != DFM_Blocks[u8Index].u32RamBlockAddress)
      {
         (void)DFM_bGetDataFromDFlash(DFM_Blocks[u8Index].u32RomBlockAddress,
                                      (uint8*)DFM_Blocks[u8Index].u32RamBlockAddress,
                                      DFM_Blocks[u8Index].u32RamBlockLength);
      }
   }
}

/**********************************************************************
 * Function name    :  DFM_bEraseBlock
 * Description      :  
 * Input parameter  :  pxCmd - 
 *                     pu8SrcBuf - 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/16	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean DFM_bEraseBlock(const uint8 ku8BlockId)
{
   DFM_Cmd xCmd;
   boolean bRetResult;

   xCmd.u8Cmd     = DFM_ERASE;
   xCmd.u8BlockID = ku8BlockId;

   bRetResult = DFM_bPushCmdToQ(&xCmd, NULL_PTR);

   return bRetResult;
}

/**********************************************************************
 * Function name    :  DFM_bWriteBlock
 * Description      :  
 * Input parameter  :  pxCmd - 
 *                     pu8SrcBuf - 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/16	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean DFM_bWriteBlock(const uint8 ku8BlockId, uint8 * const kpu8ErrCode)
{
   DFM_Cmd xCmd;
   boolean bRetResult  = FALSE;
   uint16  u16WordSize = DFM_BYTE_SIZE_TO_BLOCK_NO(DFM_Blocks[ku8BlockId].u32RamBlockLength);
   uint16  u16Offset;

   xCmd.u8Cmd     = DFM_WRITE;
   xCmd.u8BlockID = ku8BlockId;
   *kpu8ErrCode   = eDFM_NO_ERROR_CODE;

   if(0 == DFM_Blocks[ku8BlockId].u32RamBlockAddress)
   {
      *kpu8ErrCode = eDFM_INVALID_RAM_BLOCK;
      bRetResult   = TRUE;
   }
   else
   {
      do{
         xCmd.u16WriteDataNum = DFM_Blocks[ku8BlockId].ptVarSet->u32WriteIndex;
         u16Offset = xCmd.u16WriteDataNum * DFM_RAM_BUFFER_SIZE;

         bRetResult = DFM_bPushCmdToQ(&xCmd, (uint8 *)(DFM_Blocks[ku8BlockId].u32RamBlockAddress + u16Offset));
         if(TRUE == bRetResult)
         {
            DFM_Blocks[ku8BlockId].ptVarSet->u32WriteIndex++;
         }
         else
         {
            break;
         }
      }while(DFM_Blocks[ku8BlockId].ptVarSet->u32WriteIndex < u16WordSize);

      if(u16WordSize == DFM_Blocks[ku8BlockId].ptVarSet->u32WriteIndex)
      {
         /* Reset write index */
         DFM_Blocks[ku8BlockId].ptVarSet->u32WriteIndex = 0;
      }
   }

   return bRetResult;
}

/**********************************************************************
 * Function name    :  DFM_bPushCmdToQ
 * Description      :  
 * Input parameter  :  pxCmd - 
 *                     pu8SrcBuf - 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/16	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean DFM_bPushCmdToQ(PDFM_Cmd pxCmd, const uint8 * pu8SrcBuf)
{
   static uint8 u8DataPushedFlag[DFM_CORE_CONFIG_NUM] = {0};
   
   boolean bOpResult = TRUE;
   PKDFM_CmdQConstObj pkxQptr = NULL_PTR;
   uint8 u8CoreId = 0;
   uint8 u8LocQIndex = DFM_BYTE_INVALID_VALUE;
   
   /* 1. Get Core Id */
   u8CoreId = DFM_u8HalGetCoreId();
   u8LocQIndex = g_ku8CmdQIndexTable[u8CoreId];

   if(DFM_BYTE_INVALID_VALUE == u8LocQIndex)
   {
      /* Error Handle */
      bOpResult = FALSE;
   }
   else
   {
      if(DFM_WRITE == pxCmd->u8Cmd)
      {
         if(DFM_USER_CMD_NOT_PARSED != u8DataPushedFlag[u8LocQIndex])
         {
            /* 2. Put data */
            bOpResult = DFM_axQObjSet[u8LocQIndex].bPutData(&DFM_axQObjSet[u8LocQIndex], pu8SrcBuf);
         }
      }
      
      if(TRUE == bOpResult)
      {
         if(DFM_WRITE == pxCmd->u8Cmd)
         {
            u8DataPushedFlag[u8LocQIndex] = DFM_USER_CMD_NOT_PARSED;
         }
         bOpResult = FALSE;
         pkxQptr = DFM_pxGetCmdQueue(u8CoreId);
         if(NULL_PTR != pkxQptr)
         {
            /* 3. Put cmd */
            bOpResult = pkxQptr->bAdd(pkxQptr, pxCmd);
         }
      }
      
      if(TRUE == bOpResult)
      {
         if(DFM_WRITE == pxCmd->u8Cmd)
         {
            u8DataPushedFlag[u8LocQIndex] = DFM_USER_CMD_PARSED;
         }
      }
   }

   return bOpResult;
}

/**********************************************************************
 * Function name    :  DFM_vidMainFunction
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 * 2023/12/29	     V2.0	     Zyx	       Refactoring
 ***********************************************************************/ 
void DFM_vidMainFunction(void)
{
   static DFM_Cmd DflashCmd;
   static uint8 u8DflashRetryTimes = 0;
   static uint8 u8CmdParsedFlag = 0;
   
   boolean bTempOpResult = FALSE;
   boolean bPopResult = TRUE;
   boolean bDrvIsIdle;
   uint8 lCoreId = 0;
   uint8 u8LocQIndex = DFM_BYTE_INVALID_VALUE;
   
   PKDFM_CmdQConstObj pxQConstSetptr = NULL_PTR;
   PDFM_CmdQVarObj   pxQVarSetPtr = NULL_PTR;

   /* Get Core Id */
   lCoreId = DFM_u8HalGetCoreId();
   u8LocQIndex   = g_ku8CmdQIndexTable[lCoreId];
   
   pxQConstSetptr = &g_kxCmdQueueSet[u8LocQIndex];
   pxQVarSetPtr = (PDFM_CmdQVarObj)(pxQConstSetptr->kpxVarObjSet);
   
   if(NULL_PTR == pxQConstSetptr)
   {
      /* Error Handle */
   }
   else
   {
      switch(pxQVarSetPtr->u8QState)
      {
         /* 0. Get Lock */
         case DFM_QUEUE_IDLE:
         {
            bTempOpResult = pxQConstSetptr->bIsEmpty(pxQConstSetptr);
            if(FALSE == bTempOpResult)
            {
               pxQVarSetPtr->u8QState = DFM_QUEUE_GET_LOCK;
            }
            break;
         }
         case DFM_QUEUE_GET_LOCK:
         {
            bTempOpResult = DFM_bGetAllLock(lCoreId);
         
            if(TRUE == bTempOpResult)
            {
               /* Get lock success */
               pxQVarSetPtr->u8QState = DFM_PARSE_AND_EXE_CMD;
            }
            break;
         }
         /* 1. Get cmd from queue */
         case DFM_PARSE_AND_EXE_CMD:
         {
            /* Check driver state */
            bDrvIsIdle = DFM_bDriverIsIdle();

            if(FALSE == bDrvIsIdle)
            {
               /* flash driver busy */
               bTempOpResult = FALSE;
            }
            else if(DFM_USER_CMD_NOT_PARSED != u8CmdParsedFlag)
            {
               /* last cmd was not parsed */
               bTempOpResult = pxQConstSetptr->bPop(pxQConstSetptr, &DflashCmd);
               bPopResult = bTempOpResult;
            }
            else
            {
               /* Driver idle, cmd need to exe */
               bTempOpResult = TRUE;
            }
            
            if(TRUE == bTempOpResult)            
            {
               u8CmdParsedFlag = DFM_USER_CMD_NOT_PARSED;

               if(DflashCmd.u8Cmd == DFM_ERASE)
               {
                  bTempOpResult = DFM_bBlockErase(&DFM_Blocks[DflashCmd.u8BlockID]);
               }
               else if(DflashCmd.u8Cmd == DFM_WRITE)
               {
                  DFM_axQObjSet[u8LocQIndex].bGetData(&DFM_axQObjSet[u8LocQIndex], pxQConstSetptr->pu8FlashWriteBuf);
                  bTempOpResult = DFM_bBlockWrite(&DFM_Blocks[DflashCmd.u8BlockID],
                                                  (uint32)(pxQConstSetptr->pu8FlashWriteBuf),
                                                  (DflashCmd.u16WriteDataNum * DFM_RAM_BUFFER_SIZE));
               }
               
               if(TRUE == bTempOpResult)
               {
                  u8CmdParsedFlag = DFM_USER_CMD_PARSED;
               }
            }
            else
            {
               if(FALSE == bPopResult)
               {
                  /* Cmd Q empty */
                  u8DflashRetryTimes = DFM_FLASH_WRITE_RETRY_TIME;
               }
            
               if(u8DflashRetryTimes < DFM_FLASH_WRITE_RETRY_TIME)
               {
                  u8DflashRetryTimes++;
               }
               else
               {
                  /*  */
                  pxQVarSetPtr->u8QState = DFM_QUEUE_RELASE_LOCK;
               }
            }
            break;
         }
         /* 3. Generate new block header */
         case DFM_QUEUE_RELASE_LOCK:
         {
            DFM_vidReleaseLock(lCoreId);
            pxQVarSetPtr->u8QState = DFM_QUEUE_IDLE;
            break;
         }
         default:
         {
            /* State machine error, release core lock */
            pxQVarSetPtr->u8QState = DFM_QUEUE_RELASE_LOCK;
            break;
         }
      }
   }
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static boolean DFM_bGrabNvmLock(void)
{
   boolean bReturnVal = FALSE;
   boolean bTmpOpResult = FALSE;
   
   /* 1. Get Nvm spinlock */
   bTmpOpResult = DFM_bCalLockHandle(DFM_NVM_LOCK_INDEX, DFM_GET_LOCK);
   if(TRUE == bTmpOpResult)
   {
      /* 2. Check Nvm status */
      bReturnVal = DFM_bHalNvmIsIdle();
      if(FALSE == bReturnVal)
      {
         (void)DFM_bCalLockHandle(DFM_NVM_LOCK_INDEX, DFM_RELEASE_LOCK);
      }
   }

   return bReturnVal;
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2023/07/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static boolean DFM_bGetAllLock(uint8 u8CoreId)
{
   boolean bLocRetVal = FALSE;
   boolean bOpResult = FALSE;
   boolean bLockState = FALSE;

   /* 1. Get multi core lock */
   bOpResult  = DFM_bCalLockHandle(DFM_CORE_LOCK_INDEX, DFM_GET_LOCK);
   bLockState = (boolean)DFM_GET_SPINLOCK_STATE(u8CoreId, DFM_CORE_LOCK_INDEX);

   /* No else */
   if((TRUE == bOpResult)
   || (TRUE == bLockState))
   {
      DFM_SET_SPINLOCK_STATE(u8CoreId, DFM_CORE_LOCK_INDEX);
      /* 2. Get esm lock */
      bOpResult  = DFM_bCalLockHandle(DFM_ESM_LOCK_INDEX, DFM_GET_LOCK);
      bLockState = (boolean)DFM_GET_SPINLOCK_STATE(u8CoreId, DFM_ESM_LOCK_INDEX);
   }

   /* No else */
   if((TRUE == bOpResult)
   || (TRUE == bLockState))
   {
      DFM_SET_SPINLOCK_STATE(u8CoreId, DFM_ESM_LOCK_INDEX);
      /* 3. Get nvm lock */
      bOpResult  = DFM_bGrabNvmLock();
      bLockState = (boolean)DFM_GET_SPINLOCK_STATE(u8CoreId, DFM_NVM_LOCK_INDEX);
   }

   /* No else */
   if((TRUE == bOpResult)
   || (TRUE == bLockState))
   {
      DFM_SET_SPINLOCK_STATE(u8CoreId, DFM_NVM_LOCK_INDEX);
      /* 4. Get memif lock */
      bOpResult  = DFM_bCalLockHandle(DFM_MIF_LOCK_INDEX, DFM_GET_LOCK);
      bLockState = (boolean)DFM_GET_SPINLOCK_STATE(u8CoreId, DFM_MIF_LOCK_INDEX);
   }

   /* No else */
   if((TRUE == bOpResult)
   || (TRUE == bLockState))
   {
      DFM_SET_SPINLOCK_STATE(u8CoreId, DFM_MIF_LOCK_INDEX);
      /* 5. Get lock success */
      bLocRetVal = TRUE;
   }

   return bLocRetVal;
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2023/07/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static void DFM_vidReleaseLock(uint8 u8CoreId)
{
   boolean bOtherQisEmpty = TRUE;
   boolean bTempOpResult = FALSE;

   uint8 u8TableIndex = 0;
   uint8 u8QIndex = DFM_BYTE_INVALID_VALUE;
   uint8 u8NextCoreId = DFM_BYTE_INVALID_VALUE;
   
   PKDFM_CmdQConstObj pxTempCmdQptr = NULL_PTR;

   /* Check other cmd Q */
   for(u8TableIndex = 0; u8TableIndex < DFM_MAX_CORE_NUM; u8TableIndex++)
   {
      u8QIndex = g_ku8CmdQIndexTable[u8TableIndex];
      
      if((u8CoreId == u8QIndex)
      || (DFM_BYTE_INVALID_VALUE == u8QIndex))
      {
         continue;
      }
      else
      {
         pxTempCmdQptr = &g_kxCmdQueueSet[u8QIndex];
         bTempOpResult = pxTempCmdQptr->bIsEmpty(pxTempCmdQptr);
         if(FALSE == bTempOpResult)
         {
            bOtherQisEmpty = FALSE;
            u8NextCoreId = u8TableIndex;
            break;
         }
      }
   }
   
   /* Clear lock state */
   DFM_CLR_SPINLOCK_STATE(u8CoreId, DFM_MIF_LOCK_INDEX);
   DFM_CLR_SPINLOCK_STATE(u8CoreId, DFM_NVM_LOCK_INDEX);
   DFM_CLR_SPINLOCK_STATE(u8CoreId, DFM_ESM_LOCK_INDEX);
   DFM_CLR_SPINLOCK_STATE(u8CoreId, DFM_CORE_LOCK_INDEX);

   if(FALSE == bOtherQisEmpty)
   {
      /* Set next Q lock state */
      DFM_SET_SPINLOCK_STATE(u8NextCoreId, DFM_MIF_LOCK_INDEX);
      DFM_SET_SPINLOCK_STATE(u8NextCoreId, DFM_NVM_LOCK_INDEX);
      DFM_SET_SPINLOCK_STATE(u8NextCoreId, DFM_ESM_LOCK_INDEX);
   }
   else
   {
      /* Release all lock */
      (void)DFM_bCalLockHandle(DFM_MIF_LOCK_INDEX, DFM_RELEASE_LOCK);
      (void)DFM_bCalLockHandle(DFM_NVM_LOCK_INDEX, DFM_RELEASE_LOCK);
      (void)DFM_bCalLockHandle(DFM_ESM_LOCK_INDEX, DFM_RELEASE_LOCK);
   }
   
   /* Release core lock */
   (void)DFM_bCalLockHandle(DFM_CORE_LOCK_INDEX, DFM_RELEASE_LOCK);
}

/**********************************************************************
 * Function name    :  DFM_pxGetCmdQueue
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 * 2023/12/29	     V1.1	     Zyx	       Add CoreID detect to avoid multi-core access conflicts
 ***********************************************************************/ 
static PKDFM_CmdQConstObj DFM_pxGetCmdQueue(uint8 u8QIndex)
{
   PKDFM_CmdQConstObj pkxRetQueue = NULL_PTR;
      
   if(DFM_BYTE_INVALID_VALUE == u8QIndex)
   {
      pkxRetQueue = NULL_PTR;
   }
   else
   {
      pkxRetQueue = &g_kxCmdQueueSet[u8QIndex];
   }

   return pkxRetQueue;
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean DFM_bGetDataFromDFlash(uint32 u32DflashAddr, uint8 *pu8DestBuf, uint32 u32Size)
{ 
   boolean bOpIsDone = FALSE;
   uint32 u32DataIndex = 0;
   uint8 * pu8PhysPtr = (uint8 *)(u32DflashAddr);

   if(NULL_PTR != pu8DestBuf)
   {
      if(((uint32)pu8PhysPtr < 0xAF000000)
      || ((uint32)pu8PhysPtr > 0xAF07FFFF))
      {
         DFlash_u32ErrorAddr = (uint32)pu8PhysPtr;
      }
      else
      {
         /* Copy */
         for(u32DataIndex = 0; u32DataIndex < u32Size; u32DataIndex++)
         {
            *pu8DestBuf++ = *pu8PhysPtr++;
         }
         bOpIsDone = TRUE;
      }
   }

   return bOpIsDone;
}
                                             
/**********************************************************************
 * Function name    :  DFM_bQueueIsEmpty
 * Description      :  
 * Input parameter  :  pxQueue - Cmd queue obj
 * Output parameter :  
 * return           :  TRUE  - empty
 *                  :  FALSE - not empty
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean DFM_bQueueIsEmpty(PKDFM_CmdQConstObj pxQueue)
{
   PDFM_CmdQVarObj pxQVarSetPtr = pxQueue->kpxVarObjSet;
   
   return (pxQVarSetPtr->u8Head == pxQVarSetPtr->u8Tail);
}
 
/**********************************************************************
 * Function name    :  DFM_bQueueIsFull
 * Description      :  
 * Input parameter  :  pxQueue - Cmd queue obj
 * Output parameter :  
 * return           :  TRUE  - full
 *                  :  FALSE - not full
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean DFM_bQueueIsFull(PKDFM_CmdQConstObj pxQueue)
{
   boolean bReturnVal = FALSE;
   PDFM_CmdQVarObj pxQVarSetPtr = pxQueue->kpxVarObjSet;
   
   if(((pxQVarSetPtr->u8Tail + 1) % DFM_CMD_QUEUE_SIZE) == pxQVarSetPtr->u8Head)
   {
      bReturnVal = TRUE;
   }

   return bReturnVal;
}
 
/**********************************************************************
 * Function name    :  DFM_bQueueAdd
 * Description      :  Add cmd from the specified queue
 * Input parameter  :  pxQueue - Cmd queue obj
 *                  :  pxCmd   - Add cmd buf addr
 * Output parameter :  
 * return           :  TRUE  - Add success, buf has been used
 *                  :  FALSE - Add failed
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean DFM_bQueueAdd(PKDFM_CmdQConstObj pxQueue, PDFM_Cmd pxCmd)
{
   boolean bReturnVal = FALSE;
   boolean bSpinLockVal;
   PDFM_CmdQVarObj pxQVarSetPtr = pxQueue->kpxVarObjSet;
   
   bSpinLockVal = Mutex_bGetLock(&(pxQueue->kpxVarObjSet->u32Lock));
   if(TRUE == bSpinLockVal)
   {
      if(pxQueue->bIsFull(pxQueue))
      {
         bReturnVal = FALSE;
      }
      else
      {
         pxQVarSetPtr->CmdBuffer[pxQVarSetPtr->u8Tail] = *pxCmd;
         pxQVarSetPtr->u8Tail++;
         
         if(pxQVarSetPtr->u8Tail == DFM_CMD_QUEUE_SIZE)
         {
           pxQVarSetPtr->u8Tail = 0;
         }

         bReturnVal = TRUE;
      }
      Mutex_vReleaseLock(&(pxQueue->kpxVarObjSet->u32Lock));
   }

   return bReturnVal;
}
 
/**********************************************************************
 * Function name    :  DFM_bQueuePop
 * Description      :  Pop cmd from the specified queue
 * Input parameter  :  pxQueue - Cmd queue obj
 * Output parameter :  pxCmd   - pop cmd buf addr
 * return           :  TRUE  - pop success, buf has been filled
 *                  :  FALSE - pop failed, buf data invalid
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean DFM_bQueuePop(PKDFM_CmdQConstObj pxQueue, PDFM_Cmd pxCmd)
{
   boolean bReturnVal = FALSE;
   PDFM_CmdQVarObj pxQVarSetPtr = pxQueue->kpxVarObjSet;

   if(pxQueue->bIsEmpty(pxQueue))
   {
      /* queue is empty, pop failed */
      bReturnVal = FALSE;
   }
   else
   {
      bReturnVal = TRUE;
      *pxCmd = pxQVarSetPtr->CmdBuffer[pxQVarSetPtr->u8Head];
      pxQVarSetPtr->u8Head++;
      
      if(pxQVarSetPtr->u8Head == DFM_CMD_QUEUE_SIZE)
      {
        pxQVarSetPtr->u8Head = 0;
      }
   }
   return bReturnVal;
}

/**********************************************************************
 * Function name    :  DFM_u32BlockErase
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean DFM_bBlockErase(const struct DFM_Block * ptBlock)
{
   boolean bDrvIsIdle = DFM_bDriverIsIdle();
   
   if(TRUE == bDrvIsIdle)
   {
      DFM_vidHalFlashErase(ptBlock->u32RomBlockAddress, ptBlock->u32RomBlockLength);
   }

   return bDrvIsIdle;
}

/**********************************************************************
 * Function name    :  DFM_bBlockWriteWithOffset
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean DFM_bBlockWrite(const struct DFM_Block * ptBlock,
                                          uint32 u32SrcAddress,
                                          uint32 u32DestOffset)
{
   boolean bDrvIsIdle = DFM_bDriverIsIdle();

   if(TRUE == bDrvIsIdle)
   {
      DFM_vidHalFlashWrite(u32SrcAddress, (ptBlock->u32RomBlockAddress + u32DestOffset));
   }
   return bDrvIsIdle;
}

static inline boolean DFM_bDriverIsIdle(void)
{
   boolean bHwIsIdle;
   boolean bNvmIsIdle;
   boolean bDrvIsIdle = FALSE;

   /* Driver Idle */
   bHwIsIdle  = DFM_bHalHwIsIdle();
   bNvmIsIdle = DFM_bHalNvmIsIdle();

   if((TRUE == bHwIsIdle)
   && (TRUE == bNvmIsIdle))
   {
      bDrvIsIdle = TRUE;
   }

   return bDrvIsIdle;
}
