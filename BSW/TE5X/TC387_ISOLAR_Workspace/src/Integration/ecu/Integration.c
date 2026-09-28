/*
 * Integration.c
 *
 *  Created on: Dec 24, 2020
 *      Author: AGT1HC
 */

#include "Rte_Main.h"

void IC_RteTimerStart(void);

/**************************************************************/
/* OS Tick timer start 		                                  */
/**************************************************************/
#define CPU0_START_SEC_CODE
#include "MemMap.h" /*lint !e537 permit multiple inclusion */
void IC_RteTimerStart ( void )
{
   	(void)Rte_Start();
}
#define CPU0_STOP_SEC_CODE
#include "MemMap.h" /*lint !e537 permit multiple inclusion */





