
#ifndef ECUM_CFG_STARTUP_H
#define ECUM_CFG_STARTUP_H

/**************************************************************************************************/
/* Preprocessor includes                                                                          */
/**************************************************************************************************/
#include "Os.h" /* this is specified by Coding guideline as <ExtModule>.h. required for AppModeType */
// #if (!defined(OS_AR_RELEASE_MAJOR_VERSION) || (OS_AR_RELEASE_MAJOR_VERSION != 4))
// #error "AUTOSAR major version undefined or mismatched"
// #endif
// #if (!defined(OS_AR_RELEASE_MINOR_VERSION) || (OS_AR_RELEASE_MINOR_VERSION != 2))
// #error "AUTOSAR minor version undefined or mismatched"
// #endif

#include "Adc.h"
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
#include "BswM.h" /*Required for BswM init pointer used inside EcuM_Cfg_adrModuleInitRef_t*/
/***************************************************************************************************
 * Generated type declarations
 ***************************************************************************************************/

typedef struct {
	const Adc_ConfigType *AdcInitConfigPtr_cpst;
	const Det_ConfigType *DetInitConfigPtr_cpst;
	const Dem_ConfigType *DemInitConfigPtr_cpst;
	const Mcu_ConfigType *McuInitConfigPtr_cpst;
	const Gpt_ConfigType *GptInitConfigPtr_cpst;
	const Port_ConfigType *PortInitConfigPtr_cpst;
	const Pwm_17_GtmCcu6_ConfigType *Pwm_17_GtmCcu6InitConfigPtr_cpst;
	const Icu_17_TimerIp_ConfigType *Icu_17_TimerIpInitConfigPtr_cpst;
	const Fls_ConfigType *FlsInitConfigPtr_cpst;
	const Spi_ConfigType *SpiInitConfigPtr_cpst;
	const I2c_ConfigType *I2cInitConfigPtr_cpst;

	const BswM_ConfigType *BswM_InitConfigPtr_cpst; /* BswM_Init pointer*/
} EcuM_Cfg_adrModuleInitRef_t;

/* Structure holds the pointers passed to the Module Init Function */
typedef struct {
	AppModeType DefaultAppMode;
	EcuM_ShutdownTargetInfoType DefaultShutdownTarget; /*Structure to hold the Default Shutdown Target*/
	EcuM_Cfg_adrModuleInitRef_t ModuleInitPtrPB; /*Structure to hold the post build configuration pointer of the modules*/
	const EcuM_Cfg_dataWkupPNCRefStruct_tst *adrWkupPNCRefs; /* Pointer to the PNC references associated with Wakeups */
	uint8 PostBuildHash[ECUM_CFG_LENGTH_OF_HASH];
} EcuM_ConfigType;

#define ECUM_START_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
#include "EcuM_MemMap.h"

extern const EcuM_ConfigType EcuM_Config;

#define ECUM_NO_OF_ECUMCONFIGSETS 1

extern const EcuM_ConfigType *const EcuM_EcuMConfigurations_cpcast[ECUM_NO_OF_ECUMCONFIGSETS];

#define ECUM_STOP_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
#include "EcuM_MemMap.h"

#endif /*ECUM_CFG_STARTUP_H*/

