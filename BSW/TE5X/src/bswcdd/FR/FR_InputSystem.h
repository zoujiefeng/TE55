#ifndef __FR_INPUT_SYSTEM_H_
#define __FR_INPUT_SYSTEM_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "FR_Types.h"
#include "FR_Assert.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/
extern void FR_vidInitInputBufState(const FR_Cfg * const kpktCfg);
extern void FR_vidOpWrapFunc(const FR_Cfg * const kpktCfg, const uint32 ku32Period);

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline void FR_vidSetBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask);
static inline void FR_vidClearBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask);
static inline uint8 FR_u8GetBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask);

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  FR_vSetBitBufferStatus
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidSetBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   FR_ASSERT(NULL_PTR == kpktCfg);
   FR_ASSERT(NULL_PTR == kpktCfg->puLockState);

   kpktCfg->puLockState->u8State |= ku8BitMask;
}

/**********************************************************************
 * Function name    :  FR_vClearBitBufferStatus
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidClearBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   FR_ASSERT(NULL_PTR == kpktCfg);
   FR_ASSERT(NULL_PTR == kpktCfg->puLockState);

   kpktCfg->puLockState->u8State &= ~ku8BitMask;
}

/**********************************************************************
 * Function name    :  FR_u8GetBitBufferStatus
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline uint8 FR_u8GetBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   FR_ASSERT(NULL_PTR == kpktCfg);
   FR_ASSERT(NULL_PTR == kpktCfg->puLockState);

   return (kpktCfg->puLockState->u8State & ku8BitMask);
}

/**********************************************************************
 * Function name    :  FR_vidSetFullState
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidSetFullState(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   FR_ASSERT(NULL_PTR == kpktCfg);
   FR_ASSERT(NULL_PTR == kpktCfg->puLockState);

   *(kpktCfg->pu8State) |= ku8BitMask;
}

/**********************************************************************
 * Function name    :  FR_vidClearFullState
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidClearFullState(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   FR_ASSERT(NULL_PTR == kpktCfg);
   FR_ASSERT(NULL_PTR == kpktCfg->puLockState);

   *(kpktCfg->pu8State) &= ~ku8BitMask;
}

/**********************************************************************
 * Function name    :  FR_u8GetFullState
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/09/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline uint8 FR_u8GetFullState(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   FR_ASSERT(NULL_PTR == kpktCfg);
   FR_ASSERT(NULL_PTR == kpktCfg->pu8State);

   return (*(kpktCfg->pu8State) & ku8BitMask);
}

#endif /* __FR_INPUT_SYSTEM_H_ */



