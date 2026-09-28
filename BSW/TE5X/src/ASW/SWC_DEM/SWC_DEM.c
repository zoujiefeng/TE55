/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)         
 *-----------------------------------------------------------------------------
 * Name: 
 * Description:
 * Version: 1.0
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************

 * Project : LT_TC38X_V0.6
 * Component: /SWC_DEM/SWC_DEM
 * Runnable : All Runnables in SwComponent
 *****************************************************************************
 * Tool Version: ISOLAR-A/B 9.2.1
 * Author: dell
 * Date : 2024 03 05 19:00:30 
 ****************************************************************************/

#include "Rte_SWC_DEM.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :ASW_DEM_DataServices_DemDataElementClass_0B00_ReadData_func) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
#include "FAULT_FF.h"
#include "FAULT.h"
#include "MAIN_L.h"
#include "ASW_DCM.h"
#include "IOHAL.h"
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :ASW_DEM_DataServices_DemDataElementClass_0B00_ReadData_func) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */
/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :ASW_DEM_DataServices_DemDataElementClass_0B00_ReadData_func) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
#define SWC_DEM_STOP_SEC_CODE
#include "SWC_DEM_MemMap.h"
#define SWC_DEM_START_SEC_CODE
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemPID_02_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemPID_02_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemPID_02_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemPID_04_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemPID_04_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemPID_04_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    *Data = (uint8)(Dem_OBD_EMSCalLoadVal / 0.394f);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemPID_05_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemPID_05_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemPID_05_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    *Data = (uint8)(Dem_OBD_EMSCoolantTemp + 40.0f);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemPID_0C_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemPID_0C_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
//    uint16 TempVal = (uint16)(Dem_OBD_EMSEngSpeed / 0.25f);
//    uint8* TempPtr = (uint8 *)&TempVal;
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemPID_0C_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    *Data++ = TempPtr[1];
//    *Data = TempPtr[0];
// 	/* End of user code - Do not remove this comment */
// 	/*PROTECTED REGION END */

// 	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemPID_0D_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemPID_0D_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemPID_0D_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    if(Dem_OBD_VehicleSpeed <= 255.0f)
//    {
//       *Data = (uint8)Dem_OBD_VehicleSpeed;
//    }
//    else
//    {
//       *Data = 0xFF;
//    }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemPID_42_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemPID_42_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   uint16 u16LocAdcRaw = 0;
   float32 f32LocBatValAd = 0.0f;
   uint16 TempVal = 0;
   uint8* TempPtr = (uint8 *)&TempVal;
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemPID_42_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    u16LocAdcRaw = IOHAL_u16Read_CH_ADC_IN_AN_P12V_BATT_1();
   f32LocBatValAd = (float32)u16LocAdcRaw;
   f32LocBatValAd = (f32LocBatValAd * 0.0124) + 0.1336;
   f32LocBatValAd = f32LocBatValAd * 1000.0f;
   TempVal = (uint16)f32LocBatValAd;
   *Data++ = TempPtr[1];
   *Data = TempPtr[0];
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemPID_49_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemPID_49_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemPID_49_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    *Data = (uint8)Dem_OBD_AccPedal;
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (void, SWC_DEM_CODE) RunnableEntity_swc_dem/* return value & FctID */
(
		void
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :RunnableEntity_swc_dem) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :RunnableEntity_swc_dem) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :SWC_DEM) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */
