/*
 * This is a template file. It defines integration functions necessary to complete RTA-BSW.
 * The integrator must complete the templates before deploying software containing functions defined in this file.
 * Once templates have been completed, the integrator should delete the #error line.
 * Note: The integrator is responsible for updates made to this file.
 *
 * To remove the following error define the macro NOT_READY_FOR_TESTING_OR_DEPLOYMENT with a compiler option (e.g. -D NOT_READY_FOR_TESTING_OR_DEPLOYMENT)
 * The removal of the error only allows the user to proceed with the building phase
 */





#ifndef DCM_CFG_TIMER_H
#define DCM_CFG_TIMER_H

/* This file shall be used only when the OS Timer is configured as AutosarSpecific/ProjectSpecific
 * This template shows the implementation for using Autosar OS, Project Specific OS and also Mcu counter ,
 * The user shall take full responsibility of using this template
 * If the project wants to use, Autosar OS, please include the file Os.h
 * If the project wants to use, mcu counter, then include file mcu.h
 * If the project wants to use project specific os, then include file os_bsw.h
 */

#include "Os_Port.h"
#if( DCM_CFG_OSTIMER_USE != FALSE )
/*TESTCODE-START
#ifndef TEST_OS_COUNTER
TESTCODE-END*/
//#error "configure the Os timer macros according to your project requirements and remove this error code"
/*TESTCODE-START
#endif
TESTCODE-END*/

#include "ComStack_Types.h"



/* Sample implementation for Autosar OS*/
#include "Os.h"

typedef uint32 CounterType;
typedef uint32 TickType;

#define OS_GET_SYSTEM_COUNTER_US(value) Convert2US((sint32)value)

LOCAL_INLINE Std_ReturnType Dcm_GetCounterValue(CounterType CounterId, uint32 * Value);
LOCAL_INLINE uint32 Convert2US(sint32 value);
/**
 * @ingroup DCM_TPL
 * Dcm_GetCounterValue :-\n
 * This API is used to get the OS ticks for the autosar specific/Mcu OS counter \n
 *
 * @param[in]     CounterId : OS timer counter Id
 * @param[out]    Value    : OS tick count
 *
 * @retval     E_OK :    OS ticks are proper
 * @retval     E_NOT_OK :    OS ticks are not proper
 *
 */
LOCAL_INLINE Std_ReturnType Dcm_GetCounterValue(CounterType CounterId, uint32 * Value)
{
    VAR(Std_ReturnType,AUTOMATIC) retval_u8 = E_OK;
    VAR(TickType,AUTOMATIC) timer;
    timer = GET_SYSTEM_TIMER();
    *Value=(uint32)timer;
    return (retval_u8);
}

LOCAL_INLINE uint32 Convert2US(sint32 value)
{
    uint32 half     = (SYSTEM_TIMER_MAX_VALUE >> 1) + 1;
    uint32 dAbs     = (sint32)value >= 0 ? (uint32)value : (uint32)((-1)*(sint32)value);
    uint32 retValue = (dAbs < half) ? dAbs : (SYSTEM_TIMER_MAX_VALUE - dAbs) + 1;
    /*Convert to US */
    retValue /= STM_TH_1US;
    return retValue;
}
/* Sample implementation for Mcu Counter usage */

/* #include "Mcu_Rb_SystemTimer.h"

#include "Mcu.h"


LOCAL_INLINE (Std_ReturnType,DCM_APPL_CODE) Dcm_GetCounterValue(const void * CounterId,uint32 * Value);
LOCAL_INLINE (Std_ReturnType,DCM_APPL_CODE) Dcm_GetCounterValue(const void * CounterId,uint32 * Value)
{
	Std_ReturnType retval_u8;
	(void) CounterId;
    *Value = Mcu_Rb_GetTIM0;

	if(*Value != 0)
	{
   	   retval_u8 = E_OK;
	}
	else
	{
   	   retval_u8 = E_NOT_OK;
	}
	return (retval_u8);

}
*/

/*Sample implementation for project specific os*/
/*
#include "os_bsw.h"
*/
#endif
#endif /* _DCM_CFG_TIMER_H*/
