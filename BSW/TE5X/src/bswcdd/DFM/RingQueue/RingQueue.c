
#include "RingQueue.h"



static boolean RingQueue_bIsFull(PRingQueue_ObjectType pxQObj);
static boolean RingQueue_bIsEmpty(PRingQueue_ObjectType pxQObj);


/**********************************************************************
 * Function name    :  RingQueue_bIsFull
 * Description      :  
 * Input parameter  :  pxQObj - 
 *                     pu8SrcBuf - 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/16	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
__attribute__((unused)) static boolean RingQueue_bIsFull(PRingQueue_ObjectType pxQObj)
{
   boolean bReturnVal = FALSE;
   
   if((RINGQUEUE_IDX(pxQObj->u8HeadIdx, pxQObj->u8QueueMask) == RINGQUEUE_IDX(pxQObj->u8TailIdx, pxQObj->u8QueueMask))
   && (pxQObj->u8HeadIdx != pxQObj->u8TailIdx))
   {
      bReturnVal = TRUE;
   }
   
   return bReturnVal;
}

/**********************************************************************
 * Function name    :  RingQueue_bIsEmpty
 * Description      :  
 * Input parameter  :  pxQObj - 
 *                     pu8SrcBuf - 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/16	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
__attribute__((unused)) static boolean RingQueue_bIsEmpty(PRingQueue_ObjectType pxQObj)
{
   boolean bReturnVal = FALSE;
   
   if((RINGQUEUE_IDX(pxQObj->u8HeadIdx, pxQObj->u8QueueMask) == RINGQUEUE_IDX(pxQObj->u8TailIdx, pxQObj->u8QueueMask))
   && (pxQObj->u8HeadIdx == pxQObj->u8TailIdx))
   {
      bReturnVal = TRUE;
   }
   
   return bReturnVal;
}

/**********************************************************************
 * Function name    :  RingQueue_bIsEmpty
 * Description      :  
 * Input parameter  :  pxQObj - 
 *                     pu8SrcBuf - 
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/16	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
boolean RingQueue_bPutData(PRingQueue_ObjectType pxQObj, const uint8 *pu8SrcBuf)
{
   boolean bReturnVal = FALSE;
   boolean bSpinLockVal;
   
   if((NULL_PTR != pxQObj) 
   && (NULL_PTR != pu8SrcBuf))
   {
      bSpinLockVal = IfxCpu_acquireMutex(&(pxQObj->u32Lock));
      if(TRUE == bSpinLockVal)
      {
         if(RINGQUEUE_STATUS_IDLE == pxQObj->pxElementSetPtr[RINGQUEUE_IDX(pxQObj->u8TailIdx, pxQObj->u8QueueMask)].eElementStatus)
         {
            RQ_MemCopy(pu8SrcBuf, &pxQObj->pxElementSetPtr[RINGQUEUE_IDX(pxQObj->u8TailIdx, pxQObj->u8QueueMask)].u8ElementBuf[0], pxQObj->u8ElementLength);
            pxQObj->pxElementSetPtr[RINGQUEUE_IDX(pxQObj->u8TailIdx, pxQObj->u8QueueMask)].eElementStatus = RINGQUEUE_STATUS_PENDING;
            pxQObj->u8TailIdx++;
            bReturnVal = TRUE;
         }
         IfxCpu_releaseMutex(&(pxQObj->u32Lock));
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
boolean RingQueue_bGetData(PRingQueue_ObjectType pxQObj, uint8 *pu8DestBuf)
{
   boolean bReturnVal = FALSE;
   
   if((NULL_PTR != pxQObj)
   && (NULL_PTR != pu8DestBuf))
   {
      if(RINGQUEUE_STATUS_PENDING == pxQObj->pxElementSetPtr[RINGQUEUE_IDX(pxQObj->u8HeadIdx, pxQObj->u8QueueMask)].eElementStatus)
      {
         RQ_MemCopy(&pxQObj->pxElementSetPtr[RINGQUEUE_IDX(pxQObj->u8HeadIdx, pxQObj->u8QueueMask)].u8ElementBuf[0], pu8DestBuf, pxQObj->u8ElementLength);
         pxQObj->pxElementSetPtr[RINGQUEUE_IDX(pxQObj->u8HeadIdx, pxQObj->u8QueueMask)].eElementStatus = RINGQUEUE_STATUS_IDLE;
         pxQObj->u8HeadIdx++;
         bReturnVal = TRUE;
      }
   }      

	return bReturnVal;
}



