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

#include "VADC.h"
#include "PortMux.h"
#include "I2c.h"
#include "ADS1115.h"
#include "MAIN_MuxFuncCfg.h"
#include "FR_System.h"

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

uint16 MAIN_u16ADS1115Result;
uint16 MAIN_u16ADS1115LastResult;
uint16 MAIN_u16DeadLockCheckCnt;
uint16 MAIN_u16DeadLockCnt;

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

extern uint8 ADS1115_InitConfigSuccess;
void I2C_vidDeadLockCheck(void)
{
	static uint16 u16ADS11115Cnt = 0;
	boolean bI2cIsDeadLock = FALSE;

	if(MAIN_u16ADS1115LastResult == MAIN_u16ADS1115Result)
	{
		/* The sampling value remained unchanged at 100ms */
		if(MAIN_u16DeadLockCheckCnt < 100)
		{
			MAIN_u16DeadLockCheckCnt++;
		}
		else
		{
			bI2cIsDeadLock = TRUE;
			MAIN_u16DeadLockCheckCnt = 0;
		}
	}
	else
	{
		MAIN_u16DeadLockCheckCnt = 0;
	}

	if(TRUE == bI2cIsDeadLock)
	{
		MAIN_u16DeadLockCnt++;

		/* Init MCU I2C */
		I2c_DeInit();
		I2c_Init(&I2c_Config);

		/* Init ADS1115 */
		ADS1115_InitConfigSuccess = 0;
	}

	MAIN_u16ADS1115LastResult = MAIN_u16ADS1115Result;

}

FUNC(void, ASW_CORE3_CODE) RE_CORE3_SWC_1ms_func(void)
{
   I2c_ErrorType I2Cerror;
   boolean I2C_Avaliable = FALSE;
	static uint8 u8Div2Cnt = 0;

	VADC_vidTreatment();

   FR_vidEcuMainHandler(eFR_DCAC_INDEX, 1000);

	CDD_TPPC_vidCORE3_1ms_func();
	
	if((u8Div2Cnt % 2) == 0)
	{
		CDD_TPPC_vidCORE3_2ms_func();
		u8Div2Cnt = 0;
	}
	u8Div2Cnt++;

   MAIN_MFC_vidModuleReinit();

   I2Cerror = ADS1115_ContinuousRead(&MAIN_u16ADS1115Result);
   I2C_vidDeadLockCheck();

   if(I2C_NO_ERR == I2Cerror)
   {
      I2C_Avaliable = TRUE;
   }
   else
   {
      I2C_Avaliable = FALSE;
   }
}

FUNC(void, ASW_CORE3_CODE) RE_CORE3FaultReaction(VAR(StatusType, AUTOMATIC) Error)
{

}
#define ASW_CORE3_STOP_SEC_CODE
#include "ASW_CORE3_MemMap.h"
