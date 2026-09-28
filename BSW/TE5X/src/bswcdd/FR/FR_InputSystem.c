
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "FR_InputSystem.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define FR_FAST_PERIOD_CFG_INDEX  0
#define FR_INVALID_CFG_INDEX      0xFF

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void FR_vidEndPtrHandle(const FR_Cfg * const kpktCfg);
static void FR_vidBufLockHandle(const FR_Cfg * const kpktCfg);
static void FR_vidPutInputEvent(const FR_Cfg * const kpktCfg, const uint8 ku8CfgIndex);
static boolean FR_bUpdateReqIsAllowed(const FR_Cfg * const kpktCfg);
static inline void FR_vidInitBufIndex(const FR_Cfg * const kpktCfg);
static inline void FR_vidSetEndPtr(FR_BufIndex * const kptIndex, const uint32 ku32EndPosition);
static inline uint8 FR_u8GetCfgIndex(const FR_Cfg * const kpktCfg, const uint32 ku32Period);

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
void FR_vidInitInputBufState(const FR_Cfg * const kpktCfg)
{
   FR_vidInitBufIndex(kpktCfg);
   FR_vidClearFullState(kpktCfg, 0xFF);
   FR_vidClearBitBufferStatus(kpktCfg, 0xFF);
   FR_vidSetBitBufferStatus(kpktCfg, FR_BUFFER_INIT_STATUS_BITMASK);
}

/**********************************************************************
 * Function name    :  FR_vidOpWrapFunc
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
void FR_vidOpWrapFunc(const FR_Cfg * const kpktCfg, const uint32 ku32Period)
{
   boolean bUpdateIsAllowed;
   uint8   u8CfgIndex;

   u8CfgIndex = FR_u8GetCfgIndex(kpktCfg, ku32Period);

   /* 1. Push fault level to FR-module */
   if(u8CfgIndex == FR_INVALID_CFG_INDEX)
   {
      /* Error handle */
   }
   else
   {
      if(FR_FAST_PERIOD_CFG_INDEX == u8CfgIndex)
      {
         FR_vidBufLockHandle(kpktCfg);
      }
      
      /* 2. Get data update permission */
      bUpdateIsAllowed = FR_bUpdateReqIsAllowed(kpktCfg);
      if(TRUE == bUpdateIsAllowed)
      {
         /* 3. Push data to FR-ring-buffer */
         FR_vidPutInputEvent(kpktCfg, u8CfgIndex);
      }
   }
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  void
 * return           :  void
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static inline uint8 FR_u8GetCfgIndex(const FR_Cfg * const kpktCfg, const uint32 ku32Period)
{
   uint8 u8Index;
   uint8 u8ValidCfgIndex = FR_INVALID_CFG_INDEX;

   for(u8Index = 0; u8Index < kpktCfg->pktBankUserCfg->u8BufNum; u8Index++)
   {
      if(kpktCfg->pktBankUserCfg->pktBufCfgSet[u8Index].u16Period_us == ku32Period)
      {
         u8ValidCfgIndex = u8Index;
         break;
      }
   }

   return u8ValidCfgIndex;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  void
 * return           :  void
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidSetEndPtr(FR_BufIndex * const kptIndex, const uint32 ku32EndPosition)
{
   FR_ASSERT(NULL_PTR == kptIndex);

   kptIndex->u32R   = ku32EndPosition;
}

/**********************************************************************
 * Function name    :  FR_vidEndPtrHandle
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static void FR_vidEndPtrHandle(const FR_Cfg * const kpktCfg)
{
   uint8 u8BitMask;
   uint8 u8BufIndex;
   uint16 u16FPS;
   uint32 u32BeforeLen;
   uint32 u32WritePtr;
   
   FR_BufIndex * ptIndex;
   const FR_BufCfg * pktBufCfg;

   FR_ASSERT(NULL_PTR == kpktCfg);
   FR_ASSERT(NULL_PTR == kpktCfg->pktBankUserCfg);

   for(u8BufIndex = 0; u8BufIndex < kpktCfg->pktBankUserCfg->u8BufNum; u8BufIndex++)
   {
      pktBufCfg  = &(kpktCfg->pktBankUserCfg->pktBufCfgSet[u8BufIndex]);
      ptIndex    = &(kpktCfg->pktBankUserCfg->patIndexSet[u8BufIndex]);

      FR_ASSERT(NULL_PTR == pktBufCfg);
      FR_ASSERT(NULL_PTR == ptIndex);

      u16FPS       = pktBufCfg->u16FPS;
      u32BeforeLen = (uint32)(kpktCfg->pktBankUserCfg->f32RunTimeBeforeFault_S * u16FPS);
      u32WritePtr  = ptIndex->u32W;

      /* 3. The time before fault occurs is greater than total time(buffer) */
      if(u32BeforeLen > pktBufCfg->u16EventNum)
      {
         /* 4. Set full bit */
         u8BitMask = 1 << u8BufIndex;
         FR_vidSetFullState(kpktCfg, u8BitMask);
         FR_vidSetEndPtr(ptIndex, (u32WritePtr + 1) % pktBufCfg->u16EventNum);
      }
      else
      {
         /* 4. Back to end */
         if(u32WritePtr >= u32BeforeLen)
         {
            /* Before write ptr */
            FR_vidSetEndPtr(ptIndex, (u32WritePtr - u32BeforeLen) % pktBufCfg->u16EventNum);
         }
         else
         {
            /* After write ptr */
            FR_vidSetEndPtr(ptIndex, (pktBufCfg->u16EventNum - u32BeforeLen + u32WritePtr) % pktBufCfg->u16EventNum);
         }
      }
   }
}

/**********************************************************************
 * Function name    :  FR_vidInitBufIndex
 * Description      :  Reset input buf index
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidInitBufIndex(const FR_Cfg * const kpktCfg)
{
   uint8 u8BufIndex;

   FR_BufIndex * ptIndex;

   FR_ASSERT(NULL_PTR == kpktCfg);

   for(u8BufIndex = 0; u8BufIndex < kpktCfg->pktBankUserCfg->u8BufNum; u8BufIndex++)
   {
      FR_ASSERT(NULL_PTR == kpktCfg->pktBankUserCfg);
      FR_ASSERT(NULL_PTR == kpktCfg->pktBankUserCfg->patIndexSet);
      
      ptIndex = &(kpktCfg->pktBankUserCfg->patIndexSet[u8BufIndex]);

      FR_ASSERT(NULL_PTR == ptIndex);

      ptIndex->u32W   = 0;
      ptIndex->u32R   = 0;
   }
}

/**********************************************************************
 * Function name    :  FR_bUpdateReqIsAllowed
 * Description      :  
 * Input parameter  :  void
 * Output parameter :  No
 * return           :  TRUE : writable  FALSE : unwritable
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean FR_bUpdateReqIsAllowed(const FR_Cfg * const kpktCfg)
{
   boolean bReturnVal = FALSE;
   uint8 u8Status;
   uint8 u8BitMask;

   FR_ASSERT(NULL_PTR == kpktCfg);

   u8BitMask = FR_BUFFER_INIT_STATUS_BITMASK;
   u8Status = FR_u8GetBitBufferStatus(kpktCfg, u8BitMask);
   
   if(FR_BUFFER_INIT_STATUS_BITMASK == u8Status)
   {
      /* Init succeed and buffer is not full, data can be written */
      bReturnVal = TRUE;
   }

   if(TRUE == bReturnVal)
   {
      FR_ASSERT(NULL_PTR == kpktCfg->pktBankUserCfg);
      FR_ASSERT(NULL_PTR == kpktCfg->pktBankUserCfg->pktBankUserIf);
      
      if(NULL_PTR != kpktCfg->pktBankUserCfg->pktBankUserIf->bUpdateReqIsAllowed)
      {
         bReturnVal = kpktCfg->pktBankUserCfg->pktBankUserIf->bUpdateReqIsAllowed();
      }
   }

	return bReturnVal;
}

/**********************************************************************
 * Function name    :  FR_vidBufLockHandle
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static void FR_vidBufLockHandle(const FR_Cfg * const kpktCfg)
{
   uint8 u8BitMask;
   boolean bFaultIsOccurred;

   FR_ASSERT(NULL_PTR == kpktCfg);
   FR_ASSERT(NULL_PTR == kpktCfg->pktBankUserCfg);
   FR_ASSERT(NULL_PTR == kpktCfg->pktBankUserCfg->pktBankUserIf);
   FR_ASSERT(NULL_PTR == kpktCfg->pktBankUserCfg->pktBankUserIf->bFaultIsOccurred);

   bFaultIsOccurred = kpktCfg->pktBankUserCfg->pktBankUserIf->bFaultIsOccurred();

   /* 1. Check whether the fault level is triggered */
   if(TRUE == bFaultIsOccurred)
   {
      /* 2. Check whether the fault has been triggered, and module init */
      u8BitMask = FR_BUFFER_TRIGGER_STATUS_BITMASK | FR_BUFFER_INIT_STATUS_BITMASK;
      if(FR_u8GetBitBufferStatus(kpktCfg, u8BitMask) == FR_BUFFER_INIT_STATUS_BITMASK)
      {
         /* 5. Marked as cache status */
         u8BitMask = FR_BUFFER_TRIGGER_STATUS_BITMASK;
         FR_vidSetBitBufferStatus(kpktCfg, u8BitMask);

         u8BitMask = FR_BUFFER_TRIGGER_ACCEPT_STATUS_BITMASK | FR_BUFFER_BUSY_STATUS_BITMASK;
         if(FR_u8GetBitBufferStatus(kpktCfg, u8BitMask) == 0)
         {
            FR_vidEndPtrHandle(kpktCfg);
            FR_vidSetBitBufferStatus(kpktCfg, u8BitMask);
            kpktCfg->pktBankUserCfg->pktBankUserIf->vidGetExtDataOfFixHead(&(kpktCfg->ptFixHead->tHead.tExtData));
         }
      }
      else
      {
         /* Fault has been triggered. Do nothing */
      }
   }
   else
   {
      /* 5. Marked as cache status */
      u8BitMask = FR_BUFFER_TRIGGER_STATUS_BITMASK;
      FR_vidClearBitBufferStatus(kpktCfg, u8BitMask);
   }
}

/**********************************************************************
 * Function name    :  FR_vidPutInputEvent
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static void FR_vidPutInputEvent(const FR_Cfg * const kpktCfg, const uint8 ku8CfgIndex)
{
   uint8 u8BitMask;
   uint32 u32NextPostion;
   
   FR_BufIndex          *ptIndex;
   const FR_BufCfg      *pktBufCfg;
   const FR_BankUserCfg *pktBankUserCfg;

   /* 2. Get data update permission */
   u8BitMask = 1 << ku8CfgIndex;
   if(FR_u8GetFullState(kpktCfg, u8BitMask) == 0)
   {
      FR_ASSERT(NULL_PTR == kpktCfg);
      pktBankUserCfg = kpktCfg->pktBankUserCfg;
      
      FR_ASSERT(NULL_PTR == pktBankUserCfg);
      FR_ASSERT(NULL_PTR == pktBankUserCfg->patIndexSet);
      FR_ASSERT(NULL_PTR == pktBankUserCfg->pktBufCfgSet);
      ptIndex   = &(pktBankUserCfg->patIndexSet[ku8CfgIndex]);
      pktBufCfg = &(pktBankUserCfg->pktBufCfgSet[ku8CfgIndex]);
      
      FR_ASSERT(NULL_PTR == ptIndex);
      FR_ASSERT(NULL_PTR == pktBufCfg);
      
      /* 3. Save data to buffer */
      pktBufCfg->vidGetEvent(ptIndex->u32W);
      
      /* 4. Update write index */
      u32NextPostion = (ptIndex->u32W + 1) % pktBufCfg->u16EventNum;
      
      /* 5. If fault occurred */
      u8BitMask = FR_BUFFER_TRIGGER_ACCEPT_STATUS_BITMASK;
      if(FR_u8GetBitBufferStatus(kpktCfg, u8BitMask) == u8BitMask)
      {
         /* 6. Triggered and buffer full */
         if(u32NextPostion == ptIndex->u32R)
         {
            /* 7. Set full bit */
            u8BitMask = 1 << ku8CfgIndex;
            FR_vidSetFullState(kpktCfg, u8BitMask);
         }
         else
         {
            /* 7. Not full, cotinue */
            ptIndex->u32W = u32NextPostion;
         }
      }
      else
      {
         /* 6. No fault occurred, update index immediately */
         ptIndex->u32W = u32NextPostion;
      }
   }
}




