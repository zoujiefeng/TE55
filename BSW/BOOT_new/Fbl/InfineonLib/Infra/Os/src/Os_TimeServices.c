/*********************************************************************************************************************
*
* Description:     Os_TimeServices module implementation
* FileName:        Os_TimeServices.c
* Company:         INVT (www.invt.com.cn)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright INVT 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
* FIF5MI        22/02/2018      First Version.
**********************************************************************************************************************/

/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "Os.h"
#include "Os_TimeServices.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
#define	SYS_TMR_DET	STD_OFF
#define TraceError() while (1);

/* Converts ticks in ms */
#define MS_TO_TICK_CONV(x)   														((x)*(STM_FREQ_HZ / 1000u))

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/


/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/


/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/


/*********************************************************************************************************************
* Exported Variables
*********************************************************************************************************************/


/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/


/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/


/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Function Name:     OS_Timer32_Start
* Return Value:      None
* Parameters List:   uint32 *const pu32Timer
* Description:       Start 32-bit virtual timer.
*********************************************************************************************************************/
void OS_Timer32_Start (uint32 *const pu32Timer)
{
    uint32 SystemTimer = GET_SYSTEM_TIMER();

    if (NULL_PTR == pu32Timer)
    {
#if (SYS_TMR_DET == STD_ON)
        TraceError();
#endif
    }
    else
    {
        *pu32Timer = SystemTimer;
        /* Value 0 is reserved for timer stopped or elapsed */
        if( 0U == *pu32Timer )
        {
            *pu32Timer = ~(uint32)(0);
        }
    }
}

/*********************************************************************************************************************
* Function Name:     OS_Timer32_Stop
* Return Value:      None
* Parameters List:   uint32 *const pu32Timer
* Description:       Stop 32-bit virtual timer.
*********************************************************************************************************************/
void OS_Timer32_Stop (uint32 *const pu32Timer)
{
    if (NULL_PTR == pu32Timer)
    {
#if (SYS_TMR_DET == STD_ON)
        TraceError();
#endif
    }
    else
    {
        *pu32Timer = 0;
    }
}

/*********************************************************************************************************************
* Function Name:     OS_Timer32_IsStarted
* Return Value:      boolean --> FALSE: not started or elapsed.
*                            --> TRUE: started.
* Parameters List:   None
* Description:       Check if 32-bit virtual timer is started.
*********************************************************************************************************************/
boolean OS_Timer32_IsStarted (const uint32 u32Timer)
{
    boolean bTimerIsStarted;

    if (0U == u32Timer)
    {
        /* Timer is elapsed or not started */
        bTimerIsStarted = FALSE;
    }
    else
    {
        /* Not elapsed */
        bTimerIsStarted = TRUE;
    }

    return bTimerIsStarted;
}

/*********************************************************************************************************************
* Function Name:     OS_Timer32_IsElapsed
* Return Value:      boolean --> FALSE: not elapsed.
*                            --> TRUE: elapsed.
* Parameters List:   const uint32 u32Timer
*                    const uint32 u32Timeout
* Description:       Check if 32-bit virtual timer is elapsed,
*********************************************************************************************************************/
boolean OS_Timer32_IsElapsed (const uint32 u32Timer, const uint32 u32Timeout)
{
    boolean bTimerIsElapsed;
    uint32 u32Delay;
    uint32 SystemTimer = GET_SYSTEM_TIMER();


    u32Delay = (uint32)SystemTimer - u32Timer;

    if (0U == u32Timer)
    {
        bTimerIsElapsed = TRUE;
    }
    else
    {
        u32Delay = (uint32)SystemTimer - u32Timer;

        if ( SystemTimer < u32Timer)
        {
            /* The 0 value has been passed, decrement the delay */
            u32Delay--;
        }

        if (u32Delay >= (uint32)MS_TO_TICK_CONV(u32Timeout))    /* PRQA S 1840 */
        {
            /* Timer has elapsed */
            bTimerIsElapsed = TRUE;
        }
        else
        {
            /* Timer has not elapsed */
            bTimerIsElapsed = FALSE;
        }
    }

    return bTimerIsElapsed;
}

