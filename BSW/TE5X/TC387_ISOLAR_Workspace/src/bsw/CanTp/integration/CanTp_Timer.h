#ifndef CANTP_TIMER_H
#define CANTP_TIMER_H

#include "Os.h"
#include "CanTp.h"

/* CanTp_GetElapsedValue CallOut Implementation:  */

#if (CANTP_CYCLE_COUNTER != CANTP_ON)

#define CANTP_MCU_TIMER

#if (defined(CANTP_MCU_TIMER))
#include "Mcu.h"
#endif

/*****************************************************************************************************************************************************
 Function name    : CanTp_GetElapsedValue
 Syntax           : CanTp_GetElapsedValue(Value, ElapsedValue)
 Description      : Function to fetch the ticks elapsed and current tick of the External Timer.
 Parameter        : TickType*, TickType*
 Return value     : None
*****************************************************************************************************************************************************/
LOCAL_INLINE void CanTp_GetElapsedValue(TickType *Value, TickType *ElapsedValue)
{
#if (!defined(CANTP_MCU_TIMER)) /* Possible Os Api based implementation */

    (void)GetElapsedValue(SystemTimer, Value, ElapsedValue); /* Project has to debug for any error hook calls and GetElapsedValue Api returning E_NOT_OK. */


#else /* Possible Mcu based implementation */
    volatile TickType ValueIn = *Value;

    *Value = (TickType)Mcu_Rb_GetSysTicks();

    *ElapsedValue = *Value - ValueIn;  /* As both are positive, the wrap-around case will be taken care automatically.  */

#endif
}
#endif

#endif
