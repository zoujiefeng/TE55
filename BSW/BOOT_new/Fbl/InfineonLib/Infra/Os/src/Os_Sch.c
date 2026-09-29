/*********************************************************************************************************************
*
* Description:     Os_Sch module implementation
* FileName:        Os_Sch.c
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
#include "Std_Types.h"
#include "Os_Sch.h"
#include "Os_SchTbl.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
/* Forever define for main while loop */
#define FOREVER                                          ((uint8)(1))
/* Scheduler counter treshold (from 1us base) */
#define SCHED_COUNTER_TH                                 ((OS_TIMER_FREQ_HZ*OS_TICK_US)/(1000000u))

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/


/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/


/*********************************************************************************************************************
* Exported Variables
*********************************************************************************************************************/
/* Main system timebase */
Os_TickType Os_OsTickTriggerFlag = WAIT_TRIGGER_PHASE;

/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/


/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/


/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/

 /********************************************************************************************************************
 * Function Name:     Os_Scheduler
 * Return Value:      None
 * Parameters List:   None
 * Description:       Main system scheduler.
 ********************************************************************************************************************/
void Os_Scheduler (void)
{
    /* Index of active task */
    uint8 ActiveTaskIndex = 0u;

    /* If the scheduler timer has expired */
    if (Os_OsTickTriggerFlag == CALL_TASK_PHASE)
    {
        /* Start scheduling cycle */
        for (ActiveTaskIndex = 0u; ActiveTaskIndex < Os_TaskNumber; ActiveTaskIndex++)
        {
            Os_TaskTable[ActiveTaskIndex].Counter++;
            if (Os_TaskTable[ActiveTaskIndex].Counter >= (Os_TaskTable[ActiveTaskIndex].TimeoutUs/OS_TICK_US))
            {
                Os_TaskTable[ActiveTaskIndex].Counter = COUNTER_INIT;
                Os_TaskTable[ActiveTaskIndex].State = TASK_RUNNING;
                Os_TaskTable[ActiveTaskIndex].Task();
                Os_TaskTable[ActiveTaskIndex].State = TASK_IDLE;
            }
            else
            {
                /* Task Idle state... do nothing */
            }
        }

        /* Reset flag */
        Os_OsTickTriggerFlag = WAIT_TRIGGER_PHASE;
    }
}

/********************************************************************************************************************
* Function Name:     Os_SchTickService
* Return Value:      None
* Parameters List:   None
* Description:       Manage the Scheduler tick services.
********************************************************************************************************************/
void Os_SchTickService (void)
{
    /* Local counter */
    static uint16 TickCounter = 0;

    /* Increment local counter */
    TickCounter++;
    /* If the scheduler period is elapsed */
    if (TickCounter >= SCHED_COUNTER_TH)
    {
        /* Reset counter */
        TickCounter = 0;
        /* Main scheduler timebase flag */
        Os_OsTickTriggerFlag = CALL_TASK_PHASE;
    }
}
