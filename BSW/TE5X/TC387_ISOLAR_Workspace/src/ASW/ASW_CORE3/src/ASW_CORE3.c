/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)         
 *-----------------------------------------------------------------------------
 * Project :    ETAS Entry Platfrom
 * Component:  ASW_CORE3
 * Description: Testcode for ASW_CORE3
 * Version         Author:       Date               Update information
 * 1.0             GYT           08-Apri-2019       Create software
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************/
#include "Rte_ASW_CORE3.h"
#include "ASW_CORE3.h"
#include "Dio.h"

#define CPULOAD_MEASURE_TIME 1000u /* 1000u = 1 second */

#define ASW_CORE3_START_SEC_VAR_INIT_8
#include "ASW_CORE3_MemMap.h"
uint8 CPU3_StatusUtiliazation=0;
#define ASW_CORE3_STOP_SEC_VAR_INIT_8
#include "ASW_CORE3_MemMap.h"

#define ASW_CORE3_START_SEC_VAR_INIT_64
#include "ASW_CORE3_MemMap.h"
float64  CPU3_PercentUtilization = 0.0;
float64  CPU3_MaximumUtilization = 0.0;
float64  CORE3_MaxUserStackUtilization = 0.0;
#define ASW_CORE3_STOP_SEC_VAR_INIT_64
#include "ASW_CORE3_MemMap.h"

#define ASW_CORE3_START_SEC_CODE
#include "ASW_CORE3_MemMap.h"
FUNC(void, ASW_CORE3_CODE) RE_CORE3_SWC_func/* return value & FctID */
(
		void
)
{
	Std_ReturnType retValue = RTE_E_OK;
	(void)Rte_Call_RPort_CPUUtilizationCore3_CPU_Utilization(CPULOAD_MEASURE_TIME,&CPU3_PercentUtilization,&CPU3_StatusUtiliazation);
	if (CPU3_PercentUtilization > CPU3_MaximumUtilization)
	{
		CPU3_MaximumUtilization = CPU3_PercentUtilization;
	}

	Rte_Call_RPort_GetMaxUserStackUtilization_GetMaxUserStackUtilization(&CORE3_MaxUserStackUtilization);
}

uint16 u8LedTwinkle = 1u;
Dio_LevelType u8LedState = STD_LOW;
FUNC(void, ASW_CORE3_CODE) RE_CORE3_SWC_1ms_func(void)
{
    if( (u8LedTwinkle % 1000) == 0 )
	{
		/*Dio_WriteChannel(DioConf_DioChannel_AN_TEMP_MEAS_MOD3_MCU, u8LedState);*/
		u8LedState = u8LedState ^ 0x01;
	    u8LedTwinkle = 1u;
	}
	else
	{
		u8LedTwinkle++;
	}
}

FUNC(void, ASW_CORE3_CODE) RE_CORE3FaultReaction(VAR(StatusType, AUTOMATIC) Error)
{

}
#define ASW_CORE3_STOP_SEC_CODE
#include "ASW_CORE3_MemMap.h"
