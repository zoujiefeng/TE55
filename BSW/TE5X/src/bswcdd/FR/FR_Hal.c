
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "FR_Hal.h"
#include "FR_Types.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define FR_LOGIC_BLOCK_SIZE       DFM_RAM_BUFFER_SIZE
#define FR_BLOCK_NUM              (DFM_FRECORD_END_INDEX - DFM_FRECORD_START_INDEX)

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static DFM_Cmd g_xFRCmd;
static uint32 u32WrittenSize_Index = 0;
static uint32 u32WrittenSize_Event = 0;
static uint32 u32WrittenSize_UserHead = 0;

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2021/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
uint8 FR_u8HalReadBlockCtr(const uint8 u8BlockID)
{
   PKDFM_Block pkxDFM_ObjBlock;
   uint8 u8BlockCtr = FR_INVALID_BLOCK_CTR;
   const FR_FixHead * pktDFM_TempHead = NULL_PTR;

   pkxDFM_ObjBlock = DFM_ptGetBlock(u8BlockID);

   if(NULL_PTR != pkxDFM_ObjBlock)
   {
      /* Get header */
      pktDFM_TempHead = (const FR_FixHead *)(pkxDFM_ObjBlock->u32RomBlockAddress);
      u8BlockCtr = pktDFM_TempHead->tHead.u8BlockCtr;
   }
   
   return u8BlockCtr;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  bWrtieDoneFlag :
 *                                TRUE: Head write success
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2021/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean FR_bHalWriteFixHead(const uint8 * const kpku8Data)
{
   boolean bOpResult = FALSE;

   /* 1. Gen cmd */
   g_xFRCmd.u8Cmd = DFM_WRITE;
   g_xFRCmd.u32DataSize = FR_LOGIC_BLOCK_SIZE;
   g_xFRCmd.u16WriteDataNum = 0;

   /* 2. Put data */
   bOpResult = DFM_bPushCmdToQ(&g_xFRCmd, &kpku8Data[0]);
   
   if(TRUE == bOpResult)
   {
      g_xFRCmd.u16WriteDataNum = 1;
   }
   
   return bOpResult;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  bWrtieDoneFlag :
 *                                TRUE: Head write success
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2021/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean FR_bHalWriteBufIndex(const FR_BankUserCfg * const kpktCfg, uint8 * const kpu8OpState)
{
   uint8   u8WriteNum = 0;
   boolean bOpResult  = FALSE;
   boolean bLoopIsEnd = FALSE;
   
   const uint8 * pku8Data = (const uint8 *)kpktCfg->patIndexSet;

   *kpu8OpState = eFR_HAL_WRTIE_CONTINUE;

   do{
      /* 1. Gen cmd */
      g_xFRCmd.u8Cmd = DFM_WRITE;
      g_xFRCmd.u32DataSize = FR_LOGIC_BLOCK_SIZE;

      /* 2. Put data */
      bOpResult = DFM_bPushCmdToQ(&g_xFRCmd, &pku8Data[u32WrittenSize_Index]);
      
      if(TRUE == bOpResult)
      {
         u8WriteNum++;
         g_xFRCmd.u16WriteDataNum++;
         u32WrittenSize_Index = u32WrittenSize_Index + g_xFRCmd.u32DataSize;
         
         if(u32WrittenSize_Index >= 96)
         {
            bLoopIsEnd = TRUE;
            u32WrittenSize_Index = 0;
            *kpu8OpState = eFR_HAL_WRTIE_DONE;
         }
      }
      else
      {
         /* Queue is full, write failed, exit to avoid a dead loop */
         bLoopIsEnd = TRUE;
      }
   }while(FALSE == bLoopIsEnd);

   if(u8WriteNum > 0)
   {
      bOpResult = TRUE;
   }
   
   return bOpResult;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  bWrtieDoneFlag :
 *                                TRUE: Head write success
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2021/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/
boolean FR_bHalWriteUserHead(const FR_BankUserCfg * const kpktCfg, uint8 * const kpu8OpState)
{
   uint8   u8WriteNum = 0;
   boolean bOpResult  = FALSE;
   boolean bLoopIsEnd = FALSE;
   
   const uint8 * pku8Data = (const uint8 *)kpktCfg->pktUserHeadCfg->pvUserBlockHandle;
   
   *kpu8OpState = eFR_HAL_WRTIE_CONTINUE;

   do{
      /* 1. Gen cmd */
      g_xFRCmd.u8Cmd = DFM_WRITE;
      g_xFRCmd.u32DataSize = FR_LOGIC_BLOCK_SIZE;

      /* 2. Put data */
      bOpResult = DFM_bPushCmdToQ(&g_xFRCmd, &pku8Data[u32WrittenSize_UserHead]);
      
      if(TRUE == bOpResult)
      {
         u8WriteNum++;
         g_xFRCmd.u16WriteDataNum++;
         u32WrittenSize_UserHead = u32WrittenSize_UserHead + g_xFRCmd.u32DataSize;
         
         if(u32WrittenSize_UserHead >= kpktCfg->pktUserHeadCfg->u16UserBlockSizeByByte)
         {
            bLoopIsEnd = TRUE;
            u32WrittenSize_UserHead = 0;
            *kpu8OpState = eFR_HAL_WRTIE_DONE;
         }
      }
      else
      {
         /* Queue is full, write failed, exit to avoid a dead loop */
         bLoopIsEnd = TRUE;
      }
   }while(FALSE == bLoopIsEnd);
   
   if(u8WriteNum > 0)
   {
      bOpResult = TRUE;
   }
   
   return bOpResult;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2021/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean FR_bHalWriteEvent(const FR_BankUserCfg * const kpktCfg, uint8 * const kpu8OpState)
{
   uint8   u8WriteNum = 0;
   boolean bOpResult  = FALSE;
   boolean bLoopIsEnd = FALSE;
   const uint8 * pku8Data = (const uint8 *)kpktCfg->pvInputBuf;

   *kpu8OpState = eFR_HAL_WRTIE_CONTINUE;
   
   do{
      /* 1. Gen cmd */
      g_xFRCmd.u8Cmd = DFM_WRITE;
      g_xFRCmd.u32DataSize = FR_LOGIC_BLOCK_SIZE;

      bOpResult = DFM_bPushCmdToQ(&g_xFRCmd, &pku8Data[u32WrittenSize_Event]);
      
      if(TRUE == bOpResult)
      {
         /*  */
         u8WriteNum++;         
         g_xFRCmd.u16WriteDataNum++;
         u32WrittenSize_Event = u32WrittenSize_Event + g_xFRCmd.u32DataSize;
         
         if(u32WrittenSize_Event >= kpktCfg->u16BufTotalSize)
         {
            bLoopIsEnd = TRUE;
            u32WrittenSize_Event = 0;
            *kpu8OpState = eFR_HAL_WRTIE_DONE;
         }
         else
         {
            /* Do nothing */
         }
      }
      else
      {
         /* Queue is full, write failed, exit to avoid a dead loop */
         bLoopIsEnd = TRUE;
      }
   }while(FALSE == bLoopIsEnd);

   if(u8WriteNum > 0)
   {
      bOpResult = TRUE;
   }
   
   return bOpResult;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2021/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean FR_bHalClaerNvmBlock(const FR_BankUserCfg * const kpktCfg, const uint8 ku8BlockIndex)
{
   boolean bOpResult = FALSE;

   g_xFRCmd.u8Cmd = DFM_ERASE;
   g_xFRCmd.u8BlockID = ku8BlockIndex;
   
   bOpResult = DFM_bPushCmdToQ(&g_xFRCmd, NULL_PTR);

   g_xFRCmd.u16WriteDataNum = kpktCfg->pktUserHeadCfg->u16HeadSize / FR_LOGIC_BLOCK_SIZE;
   
   return bOpResult;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2021/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
void FR_vidHalUpdateCmd(const FR_BankUserCfg * const kpktCfg, const uint8 ku8BlockIndex)
{
   g_xFRCmd.u8Cmd = DFM_ERASE;
   g_xFRCmd.u8BlockID = ku8BlockIndex;
   g_xFRCmd.u16WriteDataNum = kpktCfg->pktUserHeadCfg->u16HeadSize / FR_LOGIC_BLOCK_SIZE;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2021/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean FR_bHalClearAllNvmBlock(uint8 * const pu8BlockIndex)
{
   boolean bOpResult;
   boolean bIsClrDone = TRUE;
   uint8   u8BlockIndex = *pu8BlockIndex; //+ DFM_FR_START_INDEX;
   PKDFM_Block pkxDFM_ObjBlock = NULL_PTR;

   while(u8BlockIndex < FR_BLOCK_NUM)
   {
      pkxDFM_ObjBlock = DFM_ptGetBlock(u8BlockIndex + DFM_FRECORD_START_INDEX);
   
      if(NULL_PTR != pkxDFM_ObjBlock)
      {
         g_xFRCmd.u8Cmd = DFM_ERASE;
         g_xFRCmd.u8BlockID = u8BlockIndex + DFM_FRECORD_START_INDEX;
         bOpResult = DFM_bPushCmdToQ(&g_xFRCmd, NULL_PTR);
         
         if(TRUE == bOpResult)
         {
            /* CMD push complete */
            u8BlockIndex++;
         }
         else
         {
            /* Queue is full */
            /* Return current block index */
            *pu8BlockIndex = u8BlockIndex;
            bIsClrDone = FALSE;
            /* Exit to avoid a dead loop */
            break;
         }
      }
      else
      {
         /* Block cfg is invalid, continue */
         u8BlockIndex++;
      }
   }
   
   return bIsClrDone;
}

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/



