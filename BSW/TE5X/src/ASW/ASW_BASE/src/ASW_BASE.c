/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)         
 *-----------------------------------------------------------------------------
 * Project :    ETAS Entry Platfrom
 * Component:  ASW_BASE
 * Description: Testcode for BASE module
 * Version         Author:       Date               Update information
 * 1.0             AGT1HC        12-Mar-2019        Standardized the Banner
 * 1.1             AGT1HC        19-Jan-2021        Update software for new requirement OS_2_1
 * 1.2			   HAD1HC		 15-Mar-2021        Update test code for overstack case
 * 1.3			   HAD1HC	     13-Apr-2021        Update Memmap
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************/
#include "Rte_ASW_BASE.h"
#include "Dio.h"
#include "CanTrcv.h"
#include "Dem.h"
#include "ASW_DEM.h"

FUNC (void, ASW_BASE_CODE) CallTestStack_func(void);
FUNC (void, ASW_BASE_CODE) CallTestStack_func1(void);
/*Define time to caculation CPU load*/
#define  CACUALTION_TIME  200
#define  _ENABLE_STACK_TEST_ 0

#define ASW_BASE_START_SEC_VAR_INIT_8
#include "ASW_BASE_MemMap.h"
uint8 shutdown_b =0;
#if (_ENABLE_STACK_TEST_ == 1)
uint8 TestOverStack=0;
#endif
#define ASW_BASE_STOP_SEC_VAR_INIT_8
#include "ASW_BASE_MemMap.h"

#define ASW_BASE_START_SEC_VAR_INIT_UNSPECIFIED
#include "ASW_BASE_MemMap.h"
Os_StackSizeType Stack_OsTask_ASW_100ms = {0,0};
uint32 LedConter = 0;
Dio_LevelType LedStatus = STD_LOW;
#define ASW_BASE_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "ASW_BASE_MemMap.h"



#define ASW_BASE_START_SEC_CODE
#include "ASW_BASE_MemMap.h"
FUNC (void, Base_SWC_CODE) RE_BASE_SWC_func/* return value & FctID */
(
		void
)
{
#if (_ENABLE_STACK_TEST_ == 1)
	/*------------------------------------Uncomment code for test over stack  --------------------------------------  */
	if(TestOverStack)  
	{
		TestOverStack = 0;
		CallTestStack_func();
	}
#endif
	if((LedConter % 10) == 0)
	{
		Dio_WriteChannel(DioConf_DioChannel_MCU_STATE_LED, LedStatus);
		LedStatus = LedStatus ^ 0x01;
	}
	LedConter++;
}
#define ASW_BASE_STOP_SEC_CODE
#include "ASW_BASE_MemMap.h"
#define ASW_BASE_START_SEC_CODE
#include "ASW_BASE_MemMap.h"

#define ASW_BASE_STOP_SEC_CODE
#include "ASW_BASE_MemMap.h"
#define ASW_BASE_START_SEC_CODE
#include "ASW_BASE_MemMap.h"
FUNC (void, ASW_BASE_CODE) CallTestStack_func(void)
{
#if (_ENABLE_STACK_TEST_ == 1)
	uint16 i;
	uint16 test_stack[2048];
	for(i=0;i<2048;i++)
	{
		test_stack[i]=i;
	}
	CallTestStack_func1();
#endif
}
#define ASW_BASE_STOP_SEC_CODE
#include "ASW_BASE_MemMap.h"
#define ASW_BASE_START_SEC_CODE
#include "ASW_BASE_MemMap.h"
FUNC (void, ASW_BASE_CODE) CallTestStack_func1(void)
{
	Stack_OsTask_ASW_100ms = Os_GetStackUsage();
}

#define ASW_BASE_STOP_SEC_CODE
#include "ASW_BASE_MemMap.h"
