#ifndef __RINGQUEUE_H_
#define __RINGQUEUE_H_

#include "rba_BswSrv.h"
#include "IfxCpu.h"

#define RQ_MemCopy(xSrc_pcv, xDest_pv, numBytes_u32)  (void)rba_BswSrv_MemCopy((void*)(xDest_pv), (const void*)(xSrc_pcv), (numBytes_u32))

#define RINGQUEUE_IDX(x, Mask)         ((x)&(Mask))
#define RINGQUEUE_ELEMENT_LEN    32
#define RINGQUEUE_ELEMENT_NUM    16

typedef enum RingQueue_Enum
{
   RINGQUEUE_STATUS_IDLE = 0,
   RINGQUEUE_STATUS_PENDING ,
}RingQueue_Enum;

typedef struct RingQueue_ElementType
{
   RingQueue_Enum eElementStatus;
   uint8 u8ElementBuf[RINGQUEUE_ELEMENT_LEN];
}RingQueue_ElementType, *PRingQueue_ElementType;

typedef struct RingQueue_ObjectType
{
   uint8 u8HeadIdx;
   uint8 u8TailIdx;
   uint8 u8QueueMask;
   uint8 u8ElementLength;
   IfxCpu_mutexLock u32Lock;
   PRingQueue_ElementType pxElementSetPtr;
   boolean (*bPutData)(struct RingQueue_ObjectType* pxQObj, const uint8 *pu8SrcBuf);
   boolean (*bGetData)(struct RingQueue_ObjectType* pxQObj, uint8 *pu8DestBuf);
}RingQueue_ObjectType, *PRingQueue_ObjectType;

boolean RingQueue_bPutData(PRingQueue_ObjectType pxQObj, const uint8 *pu8SrcBuf);
boolean RingQueue_bGetData(PRingQueue_ObjectType pxQObj, uint8 *pu8DestBuf);

#endif
