
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "RingQ.h"

extern const RingQ_ObjType * const RingQ_kakptObjSet[eRingQ_Q_SET_MAX_NO];

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  RingQueue_bIsFull
 * Description      :  
 * Input parameter  :  kpkxQObj - 
 *                     pu8SrcBuf - 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/16	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean RingQ_bIsFull(const uint8 ku8QID)
{
   uint8   u8TailIndex;
   uint8   u8HeadIndex;
   boolean bReturnVal = FALSE;

   const RingQ_ObjType *kptQObjPtr = RingQ_kakptObjSet[ku8QID];
   RingQ_RamBlock      *ptVar      = kptQObjPtr->pxRamBlock;

   if(NULL_PTR != ptVar)
   {
      u8TailIndex = RING_Q_IDX(ptVar->u8TailIdx, kptQObjPtr->u8QueueMask);
      u8HeadIndex = RING_Q_IDX(ptVar->u8HeadIdx, kptQObjPtr->u8QueueMask);

      if((u8TailIndex == u8HeadIndex)
      && (ptVar->u8HeadIdx != ptVar->u8TailIdx))
      {
         bReturnVal = TRUE;
      }
   }
   
   return bReturnVal;
}

/**********************************************************************
 * Function name    :  RingQueue_bIsEmpty
 * Description      :  
 * Input parameter  :  kpkxQObj - 
 *                     pu8SrcBuf - 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/16	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean RingQ_bIsEmpty(const uint8 ku8QID)
{
   uint8   u8TailIndex;
   uint8   u8HeadIndex;
   boolean bReturnVal = FALSE;

   const RingQ_ObjType *kptQObjPtr = RingQ_kakptObjSet[ku8QID];
   RingQ_RamBlock      *ptVar      = kptQObjPtr->pxRamBlock;

   if(NULL_PTR != ptVar)
   {
      u8TailIndex = RING_Q_IDX(ptVar->u8TailIdx, kptQObjPtr->u8QueueMask);
      u8HeadIndex = RING_Q_IDX(ptVar->u8HeadIdx, kptQObjPtr->u8QueueMask);

      if((u8HeadIndex == u8TailIndex)
      && (ptVar->u8HeadIdx == ptVar->u8TailIdx))
      {
         bReturnVal = TRUE;
      }
   }

   return bReturnVal;
}

/**********************************************************************
 * Function name    :  RingQueue_bIsEmpty
 * Description      :  
 * Input parameter  :  kpkxQObj - 
 *                     pu8SrcBuf - 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/16	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean RingQ_bPutData(const uint8 ku8QID, const uint8 *pu8SrcBuf)
{
   uint8   u8TailIndex;
   uint8  *pu8ElementAddr;
   boolean bSpinLockVal;
   boolean bReturnVal = FALSE;

   RingQ_Enum eStatus;
   const RingQ_ObjType *kptQObjPtr = RingQ_kakptObjSet[ku8QID];
   RingQ_RamBlock      *ptVar      = kptQObjPtr->pxRamBlock;

   if((NULL_PTR != pu8SrcBuf)
   && (NULL_PTR != ptVar))
   {
      bSpinLockVal = IfxCpu_acquireMutex(&(ptVar->u32Lock));
      if(TRUE == bSpinLockVal)
      {
         u8TailIndex = RING_Q_IDX(ptVar->u8TailIdx, kptQObjPtr->u8QueueMask);
         eStatus = kptQObjPtr->eGetElementStatus(u8TailIndex);

         if(RINGQUEUE_STATUS_IDLE == eStatus)
         {
            pu8ElementAddr = kptQObjPtr->pu8GetElementAddr(u8TailIndex);

            RQ_MemCopy(pu8SrcBuf, pu8ElementAddr, kptQObjPtr->u8ElementLength);
            kptQObjPtr->vidSetElementStatus(u8TailIndex, RINGQUEUE_STATUS_PENDING);
            ptVar->u8TailIdx++;

            bReturnVal = TRUE;
         }
         IfxCpu_releaseMutex(&(ptVar->u32Lock));
      }
   }
   
	return bReturnVal;
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2021/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean RingQ_bGetData(const uint8 ku8QID, uint8 *pu8DestBuf)
{
   uint8   u8HeadIndex;
   uint8  *pu8ElementAddr;
   boolean bReturnVal = FALSE;

   RingQ_Enum eStatus;
   const RingQ_ObjType *kptQObjPtr = RingQ_kakptObjSet[ku8QID];
   RingQ_RamBlock      *ptVar      = kptQObjPtr->pxRamBlock;

   if((NULL_PTR != pu8DestBuf)
   && (NULL_PTR != ptVar))
   {
      u8HeadIndex = RING_Q_IDX(ptVar->u8HeadIdx, kptQObjPtr->u8QueueMask);
      eStatus = kptQObjPtr->eGetElementStatus(u8HeadIndex);

      if(RINGQUEUE_STATUS_PENDING == eStatus)
      {
         pu8ElementAddr = kptQObjPtr->pu8GetElementAddr(u8HeadIndex);

         RQ_MemCopy(pu8ElementAddr, pu8DestBuf, kptQObjPtr->u8ElementLength);
         kptQObjPtr->vidSetElementStatus(u8HeadIndex, RINGQUEUE_STATUS_IDLE);
         ptVar->u8HeadIdx++;

         bReturnVal = TRUE;
      }
   }

	return bReturnVal;
}

