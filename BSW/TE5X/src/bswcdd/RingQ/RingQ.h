#ifndef __RING_Q_H_
#define __RING_Q_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "rba_BswSrv.h"
#include "IfxCpu.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define RQ_MemCopy(xSrc_pcv, xDest_pv, numBytes_u32)  (void)rba_BswSrv_MemCopy((void*)(xDest_pv), (const void*)(xSrc_pcv), (numBytes_u32))

/* Size     = 2 ^ n (n >= 1), 
 * SizeMask = 2 ^ n - 1 */
#define RING_Q_SIZE(n)              (((0x01u) << (n)))
#define RING_Q_SIZE_MASK(n)         (RING_Q_SIZE(n) - 1u)
#define RING_Q_IDX(x, Mask)         ((x) & (Mask))

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct RingQ_ElementType RingQ_ElementType;
typedef struct RingQ_ObjType     RingQ_ObjType;
typedef struct RingQ_RamBlock    RingQ_RamBlock;

typedef enum RingQ_Enum{
   RINGQUEUE_STATUS_IDLE = 0,
   RINGQUEUE_STATUS_PENDING ,
}RingQ_Enum;

struct RingQ_RamBlock{
   uint8 u8HeadIdx;
   uint8 u8TailIdx;
   IfxCpu_mutexLock u32Lock;
};

struct RingQ_ObjType{
   uint8 u8QueueMask;
   uint8 u8ElementLength;

   RingQ_RamBlock    * pxRamBlock;
   RingQ_ElementType * pxElementSetPtr;

   uint8 *    (*pu8GetElementAddr)(const uint8 ku8ElementIdx);
   RingQ_Enum (*eGetElementStatus)(const uint8 ku8ElementIdx);
   void       (*vidSetElementStatus)(const uint8 ku8ElementIdx, RingQ_Enum eStatus);
};

/*******************************************************************************
 ****  Global Type Definitions
 ******************************************************************************/
enum RingQ_QIdx{
   eRingQ_COMHAL_Q_INDEX = 0,

   eRingQ_Q_SET_MAX_NO
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
extern boolean RingQ_bIsFull(const uint8 ku8QID);
extern boolean RingQ_bIsEmpty(const uint8 ku8QID);
extern boolean RingQ_bPutData(const uint8 ku8QID, const uint8 *pu8SrcBuf);
extern boolean RingQ_bGetData(const uint8 ku8QID, uint8 *pu8DestBuf);

#endif /* __RING_Q_H_ */
