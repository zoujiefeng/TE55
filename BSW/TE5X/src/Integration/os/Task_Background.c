/*
 **********************************************************************************************************************
 *
 * COPYRIGHT RESERVED, ETAS GmbH, 2017. All rights reserved.
 * The reproduction, distribution and utilization of this document as well as the communication of its contents to
 * others without explicit authorization is prohibited. Offenders will be held liable for the payment of damages.
 * All rights reserved in the event of the grant of a patent, utility model or design.
 *
 **********************************************************************************************************************
 * Component 	: Task_Background.c
 * Created on	: Jan 7, 2020
 * Version   	: 1.0
 * Description  : This module implement Tasks bodies that are not implemented in RTE context.
 * Author		: HAD1HC
 **********************************************************************************************************************
    This file contains sample code only. It is not part of the production code deliverables.

*/

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/
#include "Os.h"
#include "MemIf.h"
#include "MutexDef.h"

/*
 **********************************************************************************************************************
 * Variables
 **********************************************************************************************************************
*/

/*
 **********************************************************************************************************************
 * Functions
 **********************************************************************************************************************
*/
volatile uint32 Os_Task_BackGround_Counter = 0;

#define OS_START_SEC_CODE
#include "Os_MemMap.h" 
/**
 *********************************************************************
 * TASK(OsTask_Background_1ms): Task to call Mainfunction that run in the background.
 *
 * This task to call MemIf_Rb_MainFunction.
 *
 *********************************************************************
 */
TASK(Core0_OsTask_Background_1ms)
{
   Os_Task_BackGround_Counter++;
   
   if(Mutex_bGrabSpecifiedLock(MUTEX_MEMIF_AND_DFLASH_INDEX, MUTEX_GET_LOCK) == TRUE)
   {
	   MemIf_Rb_MainFunction();
      Mutex_bGrabSpecifiedLock(MUTEX_MEMIF_AND_DFLASH_INDEX, MUTEX_RELEASE_LOCK);
   }
	TerminateTask();
}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h" 
/*
 **********************************************************************************************************************
 * End of the file
 **********************************************************************************************************************
 */
