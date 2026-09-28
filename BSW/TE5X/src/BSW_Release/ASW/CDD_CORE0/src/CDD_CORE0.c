/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)         
 *-----------------------------------------------------------------------------
 * Project :    ETAS Entry Platfrom
 * Component:  CDD_CORE0
 * Description: Testcode for CDD_CORE0
 * Version         Author        Date               Update information
 * 1.0             AGT1HC        19-Nov-2021        Create software
 * 1.1             HAD1HC        15-Mar-2021        Update function of calculating
 * 													stack utilization and CPU Load
 * 1.2             HAD1HC        13-Apr-2021        Update Memmap
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************/

#include "Rte_CDD_CORE0.h"
#include "CDD_CORE0.h"
#include "Os.h"

#define CDD_CORE0_START_SEC_VAR_INIT_UNSPECIFIED
#include "CDD_CORE0_MemMap.h"
static enum StateCaculation_type StateCaculationCore0 = PREPARE;
#define CDD_CORE0_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "CDD_CORE0_MemMap.h"

#define CDD_CORE0_START_SEC_VAR_INIT_8
#include "CDD_CORE0_MemMap.h"
static uint8 Status_global = 0;
#define CDD_CORE0_STOP_SEC_VAR_INIT_8
#include "CDD_CORE0_MemMap.h"

#define CDD_CORE0_START_SEC_VAR_INIT_16
#include "CDD_CORE0_MemMap.h"
static uint16 DataReceiverCore0_ClientServer = 0;
#define CDD_CORE0_STOP_SEC_VAR_INIT_16
#include "CDD_CORE0_MemMap.h"

#define CDD_CORE0_START_SEC_VAR_INIT_32
#include "CDD_CORE0_MemMap.h"
static uint32 Duration_global = 0;  
#define CDD_CORE0_STOP_SEC_VAR_INIT_32
#include "CDD_CORE0_MemMap.h"

#define CDD_CORE0_START_SEC_VAR_INIT_64
#include "CDD_CORE0_MemMap.h"
static float64 CPU_PercentUtilization_global = 0.0;
static float64 MaxUserStackUtilization_f64 = 0.0;
#define CDD_CORE0_STOP_SEC_VAR_INIT_64
#include "CDD_CORE0_MemMap.h"
extern uint32 Get_Core0Idle_SumTime(void);
#define CDD_CORE0_START_SEC_CODE
#include "CDD_CORE0_MemMap.h"
/**********************************************************************************
  Function name		:	CPUUtilizationCore0_func
  Description		:	Fucntion called from client to get the core 0 utilization.
  Parameter	(in)	:	Duration_u32: duration in which CPU load is measured 
  Parameter	(inout)	:	None
  Parameter	(out)	:	CPU_PercentUtilization: percent of CPU load over measured time
						Status: status of the process of calculating CPU load
  Return value		:	None
  Remarks: 
***********************************************************************************/
FUNC (void, CDD_CORE0_CODE) CPUUtilizationCore0_func/* return value & FctID */
(
		VAR(uint32, AUTOMATIC) Duration_u32,
		P2VAR(float64, AUTOMATIC, RTE_APPL_DATA) CPU_PercentUtilization,
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Status
)
{

    Duration_global = Duration_u32;
	*CPU_PercentUtilization = CPU_PercentUtilization_global;
	*Status = Status_global;
}
#define CDD_CORE0_STOP_SEC_CODE
#include "CDD_CORE0_MemMap.h"

#define CDD_CORE0_START_SEC_CODE
#include "CDD_CORE0_MemMap.h"
/**********************************************************************************
  Function name		:	GetMaxUserStackUtilization_Core0_func
  Description		:	Fucntion called from client to get the maximum stack utilization of core 0
  Parameter	(in)	:	None
  Parameter	(inout)	:	None
  Parameter	(out)	:	MaxUserStackUtilization: maximum percent of used stack over 
  						configured stack
  Return value		:	Std_ReturnType - E_OK: Request accepted, E_NOT_OK: Request not accepted
  Remarks: 
***********************************************************************************/
FUNC (Std_ReturnType, AUTOMATIC) GetMaxUserStackUtilization_Core0_func/* return value & FctID */
(
		P2VAR(float64, AUTOMATIC, RTE_APPL_DATA) MaxUserStackUtilization
)
{

	Std_ReturnType retValue = E_OK;

	if ((MaxUserStackUtilization_f64 >= 0) && (MaxUserStackUtilization_f64 <= 100))
	{
		*MaxUserStackUtilization = MaxUserStackUtilization_f64;
	}
	else
	{
		retValue = E_NOT_OK;
	}

	return retValue;
}
#define CDD_CORE0_STOP_SEC_CODE
#include "CDD_CORE0_MemMap.h"


#define CDD_CORE0_START_SEC_CODE
#include "CDD_CORE0_MemMap.h"
/**********************************************************************************
  Function name		:	CDD_CORE0_func
  Description		:	Main function to process the calculation of Cpu load and stack
						utilization 
  Parameter	(in)	:	None
  Parameter	(inout)	:	None
  Parameter	(out)	:	None
  Return value		:	None
  Remarks: 
***********************************************************************************/
FUNC (void, CDD_CORE0_CODE) CDD_CORE0_func/* return value & FctID */
(
		void
)
{	
	static uint32 	TimeSet;
	static uint32	BaseTime;
	static uint32 	CurTime;
	static uint32 	DTime;
    static uint32  IdleElapsed;
	static uint32 	IdleElapsed_Start;
	static uint32 	IdleElapsed_End;

	uint32     *stack_pos;
	uint32     stack_start;
	uint8      empty_accu = 0;
	uint32     UStack_Size = 0;
	float64 UserStackUtilization_f64 = 0.0;

	switch (StateCaculationCore0)
	{
	case PREPARE:
		Status_global = RTE_E_CPU_Utilization_ON_PROGRESS;
		TimeSet = Duration_global*OSSWTICKSPERMILLISECOND;
		StateCaculationCore0 = START_CACULATION;
		break;
	case START_CACULATION:
		IdleElapsed_Start = Get_Core0Idle_SumTime();
		BaseTime = Os_Cbk_GetStopwatch();
		StateCaculationCore0=WAIT_CACULATION;
		break;
	case WAIT_CACULATION:
		/*check the time is match */
		CurTime = Os_Cbk_GetStopwatch();
		if(CurTime > BaseTime) DTime = CurTime - BaseTime;
		else DTime = 0xFFFFFFFF + CurTime - BaseTime;

		if(DTime>TimeSet)
		{
			IdleElapsed_End = Get_Core0Idle_SumTime();
			if(IdleElapsed_End > IdleElapsed_Start)
			{
				IdleElapsed = IdleElapsed_End - IdleElapsed_Start;
			}
			else
			{
				IdleElapsed = 0xFFFFFFFF - IdleElapsed_Start + IdleElapsed_End;
			}
			StateCaculationCore0 = FINISH_START_CACULATION;
		}
		break;
	case FINISH_START_CACULATION:
		CPU_PercentUtilization_global = 100.0*(float)(DTime - IdleElapsed)/DTime;
		StateCaculationCore0 = PREPARE;
		Status_global = RTE_E_CPU_Utilization_E_OK;

        TimeSet = 0;
	    BaseTime = 0;
	    CurTime = 0;
	    DTime  = 0 ;
        IdleElapsed = 0;
	    IdleElapsed_Start = 0;
	    IdleElapsed_End = 0;
		break;
	default:
		break;
	}

	
	UStack_Size = (uint32)&__USTACK0 - (uint32)&__USTACK0_END;
	stack_start = (uint32)&__USTACK0;
	stack_pos = (uint32 *)(stack_start  -  STACK_STARTUP_SIZE);
	do
	{
		if(STACK_EMPTY_VALUE == *stack_pos)
		{
			empty_accu += 1U;
			stack_pos = stack_pos - STACK_EMPTY_STEP;
		}
		else
		{
			empty_accu = 0;
			stack_pos = stack_pos - STACK_EMPTY_GRANULARITY_U32;
		}
	}while(STACK_EMPTY_GRANULARITY_U32 != empty_accu );
	
	UserStackUtilization_f64 = (float64)(stack_start - (uint32)(stack_pos) - STACK_EMPTY_GRANULARITY_U32*4)/UStack_Size;
	if (UserStackUtilization_f64 > MaxUserStackUtilization_f64)
	{
		MaxUserStackUtilization_f64 = UserStackUtilization_f64;
	}

}

#define CDD_CORE0_STOP_SEC_CODE
#include "CDD_CORE0_MemMap.h"

#define CDD_CORE0_START_SEC_CODE
#include "CDD_CORE0_MemMap.h"
/**********************************************************************************
  Function name		:	RE_CORE0_SERVER_func
  Description		:	Example servcer from core 0 which is called by client on core 1 
  Parameter	(in)	:	Data2Core: data sent by client on core 1
  Parameter	(inout)	:	None
  Parameter	(out)	:	CoreStatus: example data sent back to core 1
                        DataOfCore:  example data sent back to core 1
  Return value		:	None
  Remarks: 
***********************************************************************************/
FUNC (void , CDD_CORE0_CODE) RE_CORE0_SERVER_func/* return value & FctID */
(
		P2VAR(uint16, AUTOMATIC, RTE_APPL_DATA) CoreStatus,
		VAR(uint16, AUTOMATIC) Data2Core,
		P2VAR(uint16, AUTOMATIC, RTE_APPL_DATA) DataOfCore
)
{
	static uint16 CounterServerTest=0;
	DataReceiverCore0_ClientServer= Data2Core;
	CounterServerTest++;

	*CoreStatus= CounterServerTest + 1;
	*DataOfCore= CounterServerTest + 1;
}

#define CDD_CORE0_STOP_SEC_CODE
#include "CDD_CORE0_MemMap.h"
#define CDD_CORE0_START_SEC_CODE
#include "CDD_CORE0_MemMap.h"
/**********************************************************************************
  Function name		:	RE_OsShell_TriggerBg_func
  Description		:	This function is used to activate the background task. 
  Parameter	(in)	:	None
  Parameter	(inout)	:	None
  Parameter	(out)	:	None
  Return value		:	None
  Remarks: 
***********************************************************************************/
FUNC (void, CDD_CORE0_CODE) RE_OsShell_TriggerBg_func/* return value & FctID */
(
		void
)
{
	TaskStateType stTaskState = SUSPENDED;

	/* Get Task State of background task.*/
	(void)GetTaskState(Core0_OsTask_Background_1ms, &stTaskState);

	if(stTaskState == SUSPENDED)
	{
		/* If back ground task terminate, just activate the background task. */
		(void)ActivateTask(Core0_OsTask_Background_1ms);
	}

}
#define CDD_CORE0_STOP_SEC_CODE
#include "CDD_CORE0_MemMap.h"