
/*
 **************************************************************************************************
 * Includes
 **************************************************************************************************
 */

#include "EcuM.h" /*BSW_HeaderInc_002*/

#include "EcuM_Callout.h"
#include "EcuM_RunTime.h" /*For run time measurement*/

/*Extern module Headers*/
#if(ECUM_CFG_MULTICORE_ENABLED == STD_ON)
#include "Os.h" /* required for Core Id Check */
// #if (!defined(OS_AR_RELEASE_MAJOR_VERSION) || (OS_AR_RELEASE_MAJOR_VERSION != 4))
// #error "AUTOSAR major version undefined or mismatched"
// #endif
// #if (!defined(OS_AR_RELEASE_MINOR_VERSION) || (OS_AR_RELEASE_MINOR_VERSION != 2))
// #error "AUTOSAR minor version undefined or mismatched"
// #endif
#endif/*ECUM_CFG_MULTICORE_ENABLED */

#include "VectorTable_Core0.h"

#include "VectorTable_Core1.h"

#include "Adc.h"

#include "McuFunc.h"

#include "VectorTable_Core2.h"

#include "VectorTable_Core3.h"

#if (ECUM_INCLUDE_DET == STD_ON)
#include "Det.h"
#endif

#include "Dem.h"

#include "Mcu.h"

#include "Gpt.h"

#include "Port.h"

#include "Pwm_17_GtmCcu6.h"

#include "Icu_17_TimerIp.h"

#include "Fls.h"

#include "Spi.h"

#include "I2c.h"

#include "EcuM_User.h"

#include "EcuM_Cfg_Startup.h"

/*EcuM Private headers*/
#include "EcuM_Prv.h"

#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/

#define ECUM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "EcuM_MemMap.h"

/*To store the start and End time EcuM_AL_DriverInitZero, EcuM_AL_DriverInitOne and EcuM_DeterminePbConfiguration
 * respectively*/

static EcuM_TimeTicks_tu64 EcuM_DriverInitZero_begin_ticks_u64;
static EcuM_TimeTicks_tu64 EcuM_DriverInitZero_end_ticks_u64;

static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_begin_ticks_SlaveCore0_u64;
static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_end_ticks_SlaveCore0_u64;

static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_begin_ticks_SlaveCore1_u64;
static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_end_ticks_SlaveCore1_u64;

static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_begin_ticks_SlaveCore2_u64;
static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_end_ticks_SlaveCore2_u64;

static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_begin_ticks_SlaveCore3_u64;
static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_end_ticks_SlaveCore3_u64;

static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_begin_ticks_u64;
static EcuM_TimeTicks_tu64 EcuM_DriverInitOne_end_ticks_u64;
EcuM_TimeTicks_tu64 EcuM_DeterminePbConfiguration_begin_ticks_u64;
EcuM_TimeTicks_tu64 EcuM_DeterminePbConfiguration_end_ticks_u64;

#define ECUM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "EcuM_MemMap.h"

#define ECUM_START_SEC_VAR_CLEARED_32
#include "EcuM_MemMap.h"
/*To store the Duration of EcuM_AL_DriverInitZero, EcuM_AL_DriverInitOne and EcuM_DeterminePbConfiguration
 * respectively*/

static uint32 EcuM_DriverInitZero_delta_us_u32;

static uint32 EcuM_DriverInitOne_delta_us_SlaveCore0_u32;

static uint32 EcuM_DriverInitOne_delta_us_SlaveCore1_u32;

static uint32 EcuM_DriverInitOne_delta_us_SlaveCore2_u32;

static uint32 EcuM_DriverInitOne_delta_us_SlaveCore3_u32;

static uint32 EcuM_DriverInitOne_delta_us_u32;
static uint32 EcuM_DriverInitOne_LastReset_begin_us_u32;
static uint32 EcuM_DeterminePbConfiguration_delta_us_u32;

static uint32 EcuM_DriverInitZero_LastReset_begin_us_u32;

static uint32 EcuM_DeterminePbConfiguration_LastReset_begin_us_u32;

#define ECUM_STOP_SEC_VAR_CLEARED_32
#include "EcuM_MemMap.h"

#endif /*ECUM_STARTUP_DURATION*/

/*************************************************************************************************
 CALLOUTS
 *************************************************************************************************/
#define ECUM_START_SEC_CALLOUT_CODE
#include "EcuM_MemMap.h"
/************************************************************************************************
 Function name     :   EcuM_AL_DriverInitZero
 Description       :   This callout shall provide driver initialization and other hardware-related
 startup activities for loading the post-build configuration data. Beware:
 Here only pre-compile and link-time configurable modules may be used.
 Parameter (in)    :   None
 Parameter (inout) :   None
 Parameter (out)   :   None
 Return value      :   None
 Remarks           :
 ************************************************************************************************/

void EcuM_AL_DriverInitZero(void) {
#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/
	EcuM_DriverInitZero_begin_ticks_u64 = EcuM_GetTicks();
#endif /*ECUM_STARTUP_DURATION*/

#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/
	EcuM_DriverInitZero_end_ticks_u64 = EcuM_GetTicks();
#endif /*ECUM_STARTUP_DURATION*/
}

/**********************************************************************************
 Function name     :   EcuM_AL_DriverInitOne
 Description       :   This callout shall provide driver initialization and other
 hardware-related startup activities in case of a power on reset.
 Parameter (in)    :   ConfigPtr
 Parameter (inout) :   None
 ***********************************************************************************/

void EcuM_AL_DriverInitOne(const EcuM_ConfigType *ConfigPtr) {

	/* MR12 RULE 8.4 VIOLATION: The declaration of GetCoreID is expected from Os */
	if (GetCoreID() == 0)/*Driver Init for OsCoreId 0*/
	{
#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/
		EcuM_DriverInitOne_begin_ticks_SlaveCore0_u64 = EcuM_GetTicks();
#endif /*ECUM_STARTUP_DURATION*/

		(void) VectorTable_Core0_Init();

#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/

		EcuM_DriverInitOne_end_ticks_SlaveCore0_u64 = EcuM_GetTicks();
		EcuM_DriverInitOne_delta_us_SlaveCore0_u32 = EcuM_GetDuration(
				EcuM_DriverInitOne_end_ticks_SlaveCore0_u64,
				EcuM_DriverInitOne_begin_ticks_SlaveCore0_u64);

#endif /*ECUM_STARTUP_DURATION*/

	}

	/* MR12 RULE 8.4 VIOLATION: The declaration of GetCoreID is expected from Os */
	if (GetCoreID() == 1)/*Driver Init for OsCoreId 1*/
	{
#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/
		EcuM_DriverInitOne_begin_ticks_SlaveCore1_u64 = EcuM_GetTicks();
#endif /*ECUM_STARTUP_DURATION*/

		(void) VectorTable_Core1_Init();
		(void) Adc_Init(ConfigPtr->ModuleInitPtrPB.AdcInitConfigPtr_cpst);
		(void) McuFunc_vidCddModuleInitCore1();

#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/

		EcuM_DriverInitOne_end_ticks_SlaveCore1_u64 = EcuM_GetTicks();
		EcuM_DriverInitOne_delta_us_SlaveCore1_u32 = EcuM_GetDuration(
				EcuM_DriverInitOne_end_ticks_SlaveCore1_u64,
				EcuM_DriverInitOne_begin_ticks_SlaveCore1_u64);

#endif /*ECUM_STARTUP_DURATION*/

	}

	/* MR12 RULE 8.4 VIOLATION: The declaration of GetCoreID is expected from Os */
	if (GetCoreID() == 2)/*Driver Init for OsCoreId 2*/
	{
#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/
		EcuM_DriverInitOne_begin_ticks_SlaveCore2_u64 = EcuM_GetTicks();
#endif /*ECUM_STARTUP_DURATION*/

		(void) VectorTable_Core2_Init();
		(void) Adc_Init(ConfigPtr->ModuleInitPtrPB.AdcInitConfigPtr_cpst);
		(void) McuFunc_vidCddModuleInitCore2();

#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/

		EcuM_DriverInitOne_end_ticks_SlaveCore2_u64 = EcuM_GetTicks();
		EcuM_DriverInitOne_delta_us_SlaveCore2_u32 = EcuM_GetDuration(
				EcuM_DriverInitOne_end_ticks_SlaveCore2_u64,
				EcuM_DriverInitOne_begin_ticks_SlaveCore2_u64);

#endif /*ECUM_STARTUP_DURATION*/

	}

	/* MR12 RULE 8.4 VIOLATION: The declaration of GetCoreID is expected from Os */
	if (GetCoreID() == 3)/*Driver Init for OsCoreId 3*/
	{
#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/
		EcuM_DriverInitOne_begin_ticks_SlaveCore3_u64 = EcuM_GetTicks();
#endif /*ECUM_STARTUP_DURATION*/

		(void) VectorTable_Core3_Init();
		(void) Adc_Init(ConfigPtr->ModuleInitPtrPB.AdcInitConfigPtr_cpst);
		(void) McuFunc_vidCddModuleInitCore3();

#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/

		EcuM_DriverInitOne_end_ticks_SlaveCore3_u64 = EcuM_GetTicks();
		EcuM_DriverInitOne_delta_us_SlaveCore3_u32 = EcuM_GetDuration(
				EcuM_DriverInitOne_end_ticks_SlaveCore3_u64,
				EcuM_DriverInitOne_begin_ticks_SlaveCore3_u64);

#endif /*ECUM_STARTUP_DURATION*/

	}

	/* MR12 RULE 8.4 VIOLATION: The declaration of GetCoreID is expected from Os */
	if (GetCoreID() == ECUM_CFG_STARTUP_CORE)/*Driver Init for OsCoreId ECUM_CFG_STARTUP_CORE*/
	{
#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/
		EcuM_DriverInitOne_begin_ticks_u64 = EcuM_GetTicks();
#endif /*ECUM_STARTUP_DURATION*/

#if (ECUM_INCLUDE_DET == STD_ON)
		(void) Det_Init(ConfigPtr->ModuleInitPtrPB.DetInitConfigPtr_cpst);
#endif
		(void) Dem_PreInit(ConfigPtr->ModuleInitPtrPB.DemInitConfigPtr_cpst);
		(void) Mcu_Init(ConfigPtr->ModuleInitPtrPB.McuInitConfigPtr_cpst);
		(void) McuFunc_InitializeClock();
		(void) Gpt_Init(ConfigPtr->ModuleInitPtrPB.GptInitConfigPtr_cpst);
		(void) Port_Init(ConfigPtr->ModuleInitPtrPB.PortInitConfigPtr_cpst);
		(void) Adc_Init(ConfigPtr->ModuleInitPtrPB.AdcInitConfigPtr_cpst);
		(void) Pwm_17_GtmCcu6_Init(
				ConfigPtr->ModuleInitPtrPB.Pwm_17_GtmCcu6InitConfigPtr_cpst);
		(void) Icu_17_TimerIp_Init(
				ConfigPtr->ModuleInitPtrPB.Icu_17_TimerIpInitConfigPtr_cpst);
		(void) Fls_Init(ConfigPtr->ModuleInitPtrPB.FlsInitConfigPtr_cpst);
		(void) Spi_Init(ConfigPtr->ModuleInitPtrPB.SpiInitConfigPtr_cpst);
		(void) I2c_Init(ConfigPtr->ModuleInitPtrPB.I2cInitConfigPtr_cpst);
		(void) EcuM_User_CheckWKSourceAll();
		(void) McuFunc_vidCddModuleInitCore0();

#if ECUM_STARTUP_DURATION == TRUE /*will activate the Run time measurement*/

		EcuM_DriverInitOne_end_ticks_u64 = EcuM_GetTicks();

		EcuM_DriverInitZero_delta_us_u32 = EcuM_GetDuration(
				EcuM_DriverInitZero_end_ticks_u64,
				EcuM_DriverInitZero_begin_ticks_u64);
		EcuM_DriverInitZero_LastReset_begin_us_u32 =
				EcuM_GetTicksSinceLastReset(
						EcuM_DriverInitZero_begin_ticks_u64);
		EcuM_DriverInitOne_delta_us_u32 = EcuM_GetDuration(
				EcuM_DriverInitOne_end_ticks_u64,
				EcuM_DriverInitOne_begin_ticks_u64);
		EcuM_DriverInitOne_LastReset_begin_us_u32 = EcuM_GetTicksSinceLastReset(
				EcuM_DriverInitOne_begin_ticks_u64);
		EcuM_DeterminePbConfiguration_delta_us_u32 = EcuM_GetDuration(
				EcuM_DeterminePbConfiguration_end_ticks_u64,
				EcuM_DeterminePbConfiguration_begin_ticks_u64);
		EcuM_DeterminePbConfiguration_LastReset_begin_us_u32 =
				EcuM_GetTicksSinceLastReset(
						EcuM_DeterminePbConfiguration_begin_ticks_u64);

#endif /*ECUM_STARTUP_DURATION*/

	}

}

#if  (ECUM_SLEEP_SUPPORT_ENABLE == TRUE)
/**********************************************************************************
 Function name     :   EcuM_AL_DriverRestart
 Description       :   This callout shall provide driver re initialization and other
 hardware-related startup activities in Wakeup Case.
 Parameter (in)    :   ConfigPtr
 Parameter (inout) :   None
 ***********************************************************************************/

void EcuM_AL_DriverRestart(const EcuM_ConfigType *ConfigPtr) {
	(void) ConfigPtr;
}
#endif//ECUM_SLEEP_SUPPORT_ENABLE
#define ECUM_STOP_SEC_CALLOUT_CODE
#include "EcuM_MemMap.h"

