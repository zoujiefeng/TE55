#ifndef __CDD_TYPES_H_
#define __CDD_TYPES_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef enum{
   eCDD_WRITE_DONE = 0,
   eCDD_WRTIE_CONTINUE
}CDD_eTransState;

typedef enum{
   eCDD_PIN_LOW = 0,
   eCDD_PIN_HIGH
}CDD_ePinLevel;

typedef volatile union{
   uint8         *u8Ptr;
   uint16        *u16Ptr;
   uint32        *u32Ptr;
   uint64        *u64Ptr;
   sint8         *s8Ptr;
   sint16        *s16Ptr;
   sint32        *s32Ptr;
   sint64        *s64Ptr;
   float32       *f32Ptr;
   const float32 *kf32Ptr;
}CDD_uCTablePtr;

typedef struct CDD_tTransParam{
   CDD_eTransState eState;
   uint32          u32TransLen;
   uint32          u32TotalLen;
   CDD_uCTablePtr  uSrcPtr;
   CDD_uCTablePtr  uDestPtr;
}CDD_tTransParam;

#endif /* __CDD_TYPES_H_ */

