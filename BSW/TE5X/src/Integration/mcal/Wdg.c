/*
 **********************************************************************************************************************
 *
 * COPYRIGHT RESERVED, ETAS GmbH, 2017. All rights reserved.
 * The reproduction, distribution and utilization of this document as well as the communication of its contents to
 * others without explicit authorization is prohibited. Offenders will be held liable for the payment of damages.
 * All rights reserved in the event of the grant of a patent, utility model or design.
 *
 **********************************************************************************************************************
 ************************************************************************************************
 * Component : Wdg.c
 * Date      : Jan 28 2021
 * Version   : 1.0
 * Description  : This module implements stub functions supplied for Wdg wrapper.
 *                Note: This file contains sample implementation only. It is not part of the
 *                      production deliverables.
 ***********************************************************************************************
*/



/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/
#include "Wdg.h"
#include "IfxScuWdt.h"



/*
 **********************************************************************************************************************
 * Define/Macros
 **********************************************************************************************************************
 */
#define WDG_RESET_TIME_MS(Val)    (uint32)(0xFFFFU - ((Val) * 100000U) / 16384U)
/*
 **********************************************************************************************************************
 * Type definitions
 **********************************************************************************************************************
 */


/*
 **********************************************************************************************************************
 * Extern declarations
 **********************************************************************************************************************
 */

/*==================================================================================================
*                                       GLOBAL FUNCTIONS
==================================================================================================*/

FUNC(Std_ReturnType, WDG_CODE_FAST) Wdg_SetMode(VAR(WdgIf_ModeType, AUTOMATIC) l_WdgMode)
{
	return E_OK;
}

/*******************************************************************************************
* Name              :   Wdg_SetTriggerCondition
* Description       :   Watchdog triggering routine in case it is called from a BSW task.
* Parameters[in]    :   uint16 timeout - Timeout value (milliseconds) for setting the trigger counter.
* Parameters[out]   :   None
* Limitations       :   Care has to be taken while calling this function as it is not reentrant.
* ReturnType        :   Void
*******************************************************************************************/
FUNC(void, WDG_CODE)Wdg_SetTriggerCondition(uint16 timeout)
{
   IfxScuWdt_enableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
   IfxScuWdt_changeCpuWatchdogReload(IfxScuWdt_getCpuWatchdogPassword(), WDG_RESET_TIME_MS(timeout));
   IfxScuWdt_serviceCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
}


/*
 **********************************************************************************************************************
 * End of the file
 **********************************************************************************************************************
 */

