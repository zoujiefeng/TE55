/***************************************************************************************************
 * Component : Os_Cbk_Idle.c
 * Date      : Sep 23, 2019
 * Version   : 1.0
 * Description: This module implements the Os_Cbk_Idle
 * Author	: AGT1HC
 *
 **************************************************************************************************/
/**************************************************************/
/* Idle Task  								                  */
/**************************************************************/
/*Test for return of maximum stack usage for each task/ISR */
#include "Std_Types.h"
#include "Os.h"
#include "Gpt.h"
#include "Rte_Const.h"

Os_StackSizeType MaxStack_CAN0SR0_ISR;
Os_StackSizeType MaxStack_CAN0SR1_ISR;
Os_StackSizeType MaxStack_CAN0SR2_ISR;
Os_StackSizeType MaxStack_CAN0SR3_ISR;
Os_StackSizeType MaxStack_CAN1SR0_ISR;
Os_StackSizeType MaxStack_CAN1SR1_ISR;
Os_StackSizeType MaxStack_CAN1SR2_ISR;
Os_StackSizeType MaxStack_CAN1SR3_ISR;

Os_StackSizeType MaxStack_BSW_OsTask_SwcRequest;
Os_StackSizeType MaxStack_ECU_StartupTask;
Os_StackSizeType MaxStack_Core1_OsTask_ASW_1ms;
Os_StackSizeType MaxStack_Core1_OsTask_ASW_10ms;
Os_StackSizeType MaxStack_Core1_OsTask_ASW_100ms;
Os_StackSizeType MaxStack_Core1_OsTask_BSW_10ms;
Os_StackSizeType MaxStack_Core2_OsTask_ASW_1ms;
Os_StackSizeType MaxStack_Core2_OsTask_ASW_5ms;
Os_StackSizeType MaxStack_Core2_OsTask_ASW_10ms;
Os_StackSizeType MaxStack_Core2_OsTask_ASW_100ms;
Os_StackSizeType MaxStack_Core2_OsTask_BSW_10ms;
Os_StackSizeType MaxStack_Core3_OsTask_ASW_1ms;
Os_StackSizeType MaxStack_Core3_OsTask_ASW_5ms;
Os_StackSizeType MaxStack_Core3_OsTask_BSW_10ms;


Os_StackSizeType MaxStack_OsTask_ASW_100ms;
Os_StackSizeType MaxStack_OsTask_ASW_10ms;
Os_StackSizeType MaxStack_OsTask_ASW_1ms;
Os_StackSizeType MaxStack_OsTask_BSW_10ms;
Os_StackSizeType MaxStack_OsTask_BSW_1ms;
Os_StackSizeType MaxStack_OsTask_BSW_50ms;
Os_StackSizeType MaxStack_OsTask_BSW_100ms;
Os_StackSizeType MaxStack_OsTask_Background_1ms;

#define OS_START_SEC_VAR_INIT_32
#include "Os_MemMap.h" 
/*End of test code */
volatile uint32 Os_Task_Idle_Counter = 0;
static uint32 Os_Core0_IdelElapsedTime = 0;
static uint32 Os_Core1_IdelElapsedTime = 0;
static uint32 Os_Core2_IdelElapsedTime = 0;
static uint32 Os_Core3_IdelElapsedTime = 0;
#define OS_STOP_SEC_VAR_INIT_32
#include "Os_MemMap.h" 

#define OS_START_SEC_CALLOUT_CODE
#include "Os_MemMap.h" 
FUNC(boolean, OS_CALLOUT_CODE) Os_Cbk_Idle(void)
{
    uint16 u16CoreID;

    u16CoreID = GetCoreID();
    Os_Task_Idle_Counter++;

    if(u16CoreID == OS_CORE_ID_0)
    {
        Os_ResetIdleElapsedTime(OS_CORE_ID_0);

        MaxStack_CAN0SR0_ISR = Os_GetISRMaxStackUsage(CAN0SR0_ISR);
        MaxStack_CAN0SR1_ISR = Os_GetISRMaxStackUsage(CAN0SR1_ISR);
        MaxStack_CAN0SR2_ISR = Os_GetISRMaxStackUsage(CAN0SR2_ISR);
        MaxStack_CAN0SR3_ISR = Os_GetISRMaxStackUsage(CAN0SR3_ISR);
        MaxStack_CAN1SR0_ISR = Os_GetISRMaxStackUsage(CAN0SR4_ISR);
        MaxStack_CAN1SR1_ISR = Os_GetISRMaxStackUsage(CAN0SR5_ISR);
        MaxStack_CAN1SR2_ISR = Os_GetISRMaxStackUsage(CAN0SR6_ISR);
        MaxStack_CAN1SR3_ISR = Os_GetISRMaxStackUsage(CAN0SR7_ISR);

        MaxStack_BSW_OsTask_SwcRequest  = Os_GetTaskMaxStackUsage(Core0_BSW_OsTask_SwcRequest);
        MaxStack_ECU_StartupTask        = Os_GetTaskMaxStackUsage(Core0_ECU_StartupTask);
        MaxStack_OsTask_ASW_1ms         = Os_GetTaskMaxStackUsage(Core0_OsTask_ASW_1ms); 
        MaxStack_OsTask_ASW_10ms        = Os_GetTaskMaxStackUsage(Core0_OsTask_ASW_10ms); 
        MaxStack_OsTask_BSW_10ms        = Os_GetTaskMaxStackUsage(Core0_OsTask_BSW_10ms);
        MaxStack_OsTask_BSW_1ms         = Os_GetTaskMaxStackUsage(Core0_OsTask_BSW_1ms);
        MaxStack_OsTask_BSW_50ms        = Os_GetTaskMaxStackUsage(Core0_OsTask_BSW_50ms);
        MaxStack_OsTask_BSW_100ms       = Os_GetTaskMaxStackUsage(Core0_OsTask_BSW_100ms);
        MaxStack_OsTask_Background_1ms  = Os_GetTaskMaxStackUsage(Core0_OsTask_Background_1ms);

        Os_Core0_IdelElapsedTime += Os_GetIdleElapsedTime(OS_CORE_ID_0);
        return TRUE;
    }
    else if(u16CoreID == OS_CORE_ID_1) 
    {
        Os_ResetIdleElapsedTime(OS_CORE_ID_1);

        MaxStack_Core1_OsTask_ASW_1ms   = Os_GetTaskMaxStackUsage(Core1_OsTask_ASW_1ms);
        MaxStack_Core1_OsTask_ASW_10ms  = Os_GetTaskMaxStackUsage(Core1_OsTask_ASW_10ms);
        MaxStack_Core1_OsTask_ASW_100ms = Os_GetTaskMaxStackUsage(Core1_OsTask_ASW_100ms);
        MaxStack_Core1_OsTask_BSW_10ms  = Os_GetTaskMaxStackUsage(Core1_OsTask_BSW_10ms);

        Os_Core1_IdelElapsedTime += Os_GetIdleElapsedTime(OS_CORE_ID_1);
        return TRUE;
    }
    else if(u16CoreID == OS_CORE_ID_2)
    {
        Os_ResetIdleElapsedTime(OS_CORE_ID_2);

        MaxStack_Core2_OsTask_ASW_1ms   = Os_GetTaskMaxStackUsage(Core2_OsTask_ASW_1ms);
        MaxStack_Core2_OsTask_ASW_5ms   = Os_GetTaskMaxStackUsage(Core2_OsTask_ASW_5ms);
        MaxStack_Core2_OsTask_ASW_10ms  = Os_GetTaskMaxStackUsage(Core2_OsTask_ASW_10ms);
        MaxStack_Core2_OsTask_ASW_1ms   = Os_GetTaskMaxStackUsage(Core2_OsTask_ASW_100ms);
        MaxStack_Core2_OsTask_BSW_10ms  = Os_GetTaskMaxStackUsage(Core2_OsTask_BSW_10ms);

        Os_Core2_IdelElapsedTime += Os_GetIdleElapsedTime(OS_CORE_ID_2);
        return TRUE;
    }
    else if(u16CoreID == OS_CORE_ID_3)
    {
        Os_ResetIdleElapsedTime(OS_CORE_ID_3);

        MaxStack_Core3_OsTask_ASW_1ms   = Os_GetTaskMaxStackUsage(Core3_OsTask_ASW_1ms);
        MaxStack_Core3_OsTask_ASW_5ms   = Os_GetTaskMaxStackUsage(Core3_OsTask_ASW_5ms);
        MaxStack_Core3_OsTask_BSW_10ms  = Os_GetTaskMaxStackUsage(Core3_OsTask_BSW_10ms);

        Os_Core3_IdelElapsedTime += Os_GetIdleElapsedTime(OS_CORE_ID_3);
        return TRUE;
    }
    else
    {
        /* Unsupport Core ID */
        return FALSE;
    }
}

uint32 Get_Core0Idle_SumTime(void)
{
    return Os_Core0_IdelElapsedTime;
}

uint32 Get_Core1Idle_SumTime(void)
{
    return Os_Core1_IdelElapsedTime;
}

uint32 Get_Core2Idle_SumTime(void)
{
    return Os_Core2_IdelElapsedTime;
}

uint32 Get_Core3Idle_SumTime(void)
{
    return Os_Core3_IdelElapsedTime;
}

#define OS_STOP_SEC_CALLOUT_CODE
#include "Os_MemMap.h" 

