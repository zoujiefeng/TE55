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
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0B00_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0B00_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.IgnitionSwSig;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.IgnitionSwSig);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0B00_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0B01_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0B01_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.BatteryVoltage;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.BatteryVoltage);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0B01_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0B02_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0B02_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.TotalMiles_H;
   uint8 u8TempArray[3] = {0};
	uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = 3;
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0B02_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
	u8TempArray[u8LocIndex++] = *pu8LocTempPtr;
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.TotalMiles_L;
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex] = pu8LocTempPtr[0];

   for(u8LocIndex = 0; u8LocIndex < u8LocDataLen; u8LocIndex++)
   {
      *Data++ = u8TempArray[u8LocIndex];
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0B03_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0B03_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.VehicleSpd;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.VehicleSpd);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0B03_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0B04_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0B04_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GlbRealTimeSec;
   uint8 u8TempArray[6] = {0};
	uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = 6;
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0B04_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
	u8TempArray[u8LocIndex++] = *pu8LocTempPtr;
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GlbRealTimeMinute;
	u8TempArray[u8LocIndex++] = *pu8LocTempPtr;
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GlbRealTimeHour;
	u8TempArray[u8LocIndex++] = *pu8LocTempPtr;
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GlbRealTimeDay;
	u8TempArray[u8LocIndex++] = *pu8LocTempPtr;
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GlbRealTimeMonth;
	u8TempArray[u8LocIndex++] = *pu8LocTempPtr;
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GlbRealTimeYear;
	u8TempArray[u8LocIndex] = *pu8LocTempPtr;

   for(u8LocIndex = 0; u8LocIndex < u8LocDataLen; u8LocIndex++)
   {
      *Data++ = u8TempArray[u8LocIndex];
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0B05_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0B05_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.EngineSpeed;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.EngineSpeed);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0B05_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0B06_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0B06_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.DrivingPermission;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.DrivingPermission);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0B06_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0B07_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0B07_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.SOC;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.SOC);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0B07_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D03_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D03_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.TempCoolingFild;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.TempCoolingFild);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D03_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D05_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D05_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.Iu;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.Iu);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D05_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D06_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D06_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.Iv;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.Iv);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D06_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D07_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D07_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.Iw;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.Iw);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D07_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D08_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D08_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.IGBTStatus;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.IGBTStatus);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D08_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D0A_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D0A_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.HV_VoltageFild;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.HV_VoltageFild);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D0A_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D0B_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D0B_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.MotTemp;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.MotTemp);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D0B_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D0C_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D0C_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.MecaSpeedRpm;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.MecaSpeedRpm);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D0C_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D0E_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D0E_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.IPUMode;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.IPUMode);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D0E_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D0F_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D0F_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.VCU_DCU_ModeReq;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.VCU_DCU_ModeReq);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D0F_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D10_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D10_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.TempCmdBoard;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.TempCmdBoard);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D10_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D11_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D11_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.RMS_Cur_U;
   uint8 u8TempArray[6] = {0};
	uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = 6;
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D11_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[0];
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.RMS_Cur_V;
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[0];
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.RMS_Cur_W;
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex] = pu8LocTempPtr[0];

   for(u8LocIndex = 0; u8LocIndex < u8LocDataLen; u8LocIndex++)
   {
      *Data++ = u8TempArray[u8LocIndex];
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D12_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D12_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.VCU_DCU_TorqSet;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.VCU_DCU_TorqSet);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D12_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D13_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D13_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.DC_Current;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.DC_Current);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D13_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D15_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D15_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.ISGCurrentTorq;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.ISGCurrentTorq);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D15_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D1A_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D1A_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.BMS_HVBusVolt;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.BMS_HVBusVolt);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D1A_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D1F_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D1F_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.FTModeReq;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.FTModeReq);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D1F_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D20_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D20_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.FT_AclState;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.FT_AclState);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D20_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D21_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D21_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.MaxMinTorqueDrtVect;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.MaxMinTorqueDrtVect);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D21_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D22_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D22_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.MecaTorqueMaxMin;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.MecaTorqueMaxMin);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D22_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D23_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D23_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.SinScaled;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.SinScaled);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D23_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D24_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D24_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.CosScaled;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.CosScaled);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D24_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D25_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D25_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.ExcVoltageFild;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.ExcVoltageFild);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D25_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D26_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D26_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.ExcitationDiag;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.ExcitationDiag);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D26_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D27_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D27_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.ResolNext2ThetaRdByPi;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.ResolNext2ThetaRdByPi);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D27_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D28_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D28_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.UM1dTgt;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.UM1dTgt);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D28_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D29_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D29_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.UM1qTgt;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.UM1qTgt);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D29_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D2A_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D2A_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.ParkVoltageTgt;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.ParkVoltageTgt);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D2A_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D2B_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D2B_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.iqLutTgt;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.iqLutTgt);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D2B_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D2C_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D2C_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.idLutTgt;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.idLutTgt);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D2C_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D2D_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D2D_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.idCorTgt;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.idCorTgt);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D2D_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D2E_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D2E_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.i0dqTgt3_1;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.i0dqTgt3_1);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D2E_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D2F_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D2F_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.i0dqTgt3_2;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.i0dqTgt3_2);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D2F_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D30_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D30_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.I0dq3_1;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.I0dq3_1);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D30_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D31_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D31_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.I0dq3_2;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.I0dq3_2);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D31_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D32_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D32_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.TempDrvBoard;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.TempDrvBoard);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D32_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D33_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D33_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.TempIgbt;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.TempIgbt);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D33_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D34_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D34_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.EstimTempSecFild;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.EstimTempSecFild);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D34_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D40_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D40_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.ClutchDutyCycle;
   uint8 u8TempArray[6] = {0};
	uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = 6;
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D40_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[0];
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.ClutchSpeed;
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[0];
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.ClutchDCCurrent;
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex] = pu8LocTempPtr[0];
   
   for(u8LocIndex = 0; u8LocIndex < u8LocDataLen; u8LocIndex++)
   {
      *Data++ = u8TempArray[u8LocIndex];
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D41_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D41_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.ClutchPressure;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.ClutchPressure);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D41_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D42_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D42_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.OilTemp;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.OilTemp);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D42_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D43_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D43_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.OilDutyCycle;
   uint8 u8TempArray[6] = {0};
	uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = 6;
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D43_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[0];
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.OilSpeed;
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[0];
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.OilDCCurrent;
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex] = pu8LocTempPtr[0];
   
   for(u8LocIndex = 0; u8LocIndex < u8LocDataLen; u8LocIndex++)
   {
      *Data++ = u8TempArray[u8LocIndex];
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define SWC_DEM_STOP_SEC_CODE  
#include "SWC_DEM_MemMap.h" 
#define SWC_DEM_START_SEC_CODE                   
#include "SWC_DEM_MemMap.h"
FUNC (Std_ReturnType, SWC_DEM_CODE) ASW_DEM_DataServices_DemDataElementClass_0D44_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_DemDataElementClass_0D44_ReadData_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.OilFlow;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.OilFlow);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemDataElementClass_0D44_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
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
   *Data = (uint8)(Dem_OBD_EMSCalLoadVal / 0.394f);
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
   *Data = (uint8)(Dem_OBD_EMSCoolantTemp + 40.0f);
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
   uint16 TempVal = (uint16)(Dem_OBD_EMSEngSpeed / 0.25f);
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_DemPID_0C_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
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
   if(Dem_OBD_VehicleSpeed <= 255.0f)
   {
      *Data = (uint8)Dem_OBD_VehicleSpeed;
   }
   else
   {
      *Data = 0xFF;
   }
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
   u16LocAdcRaw = IOHAL_u16Read_CH_ADC_IN_AN_P12V_BATT_1();
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
   *Data = (uint8)Dem_OBD_AccPedal;
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

