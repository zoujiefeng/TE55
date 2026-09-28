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

 * Project : INVT_TC387_HighTec_AR422_20230605
 * Component: /ASW_DCM/ASW_DCM
 * Runnable : All Runnables in SwComponent
 *****************************************************************************
 * Tool Version: ISOLAR-A/B 9.2.1
 * Author: Administrator
 * Date : Mon Jun 05 13:57:25 2023
 ****************************************************************************/

#include "Rte_ASW_DCM.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :ASW_DCM_PeriodicRunnable_10ms_func) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
#include "FAULT_FF.h"
#include "FAULT.h"
#include "MAIN_L.h"
#include "MAIN_tsk.h"
#include "MAIN_Msg.h"
#include "F32SRV.h"
#include "NvM_Cfg.h"
#include "ASW_DCM.h"
#include "IOHAL.h"

/* #include "FBL_DataMPrvCfg.h" */
extern uint8 Fbl_DataM_RamMirrorNV_FingerprintBlock[];

/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :ASW_DCM_PeriodicRunnable_10ms_func) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */
/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :ASW_DCM_PeriodicRunnable_10ms_func) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0B00_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0B00_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0B00_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0B01_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0B01_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0B01_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0B02_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0B02_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   uint32 u32Mileage = (uint32)(Dem_OBD_TotalMileage * 10) & 0x00FFFFFF;
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&u32Mileage;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0B02_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = 0; u8LocIndex < u8LocDataLen; u8LocIndex++)
   {
      *Data++ = pu8LocTempPtr[u8LocIndex];
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0B03_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0B03_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0B03_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0B04_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0B04_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0B04_ReadData) ENABLED START */
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
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0B05_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0B05_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0B05_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0B06_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0B06_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0B06_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0B07_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0B07_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0B07_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D00_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D00_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D00_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   u16LocAdcRaw = IOHAL_u16Read_CH_ADC_IN_AN_P12V_BATT_1();
   f32LocBatValAd = (float32)u16LocAdcRaw;
   f32LocBatValAd = (f32LocBatValAd * 0.0124) + 0.1336;
   f32LocBatValAd = f32LocBatValAd * 10.0f;
   TempVal = (uint16)f32LocBatValAd;
   *Data++ = TempPtr[1];
   *Data = TempPtr[0];
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D01_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D01_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   uint16 u16TempVal = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D01_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   u16TempVal = (uint16)(Dem_OBD_VehicleSpeed / 0.05625f);
   *Data++ = (uint8)((u16TempVal & 0xFF00) >> 8);
   *Data = (uint8)(u16TempVal & 0x00FF);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D02_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D02_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data = 0x02;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D02_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D03_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D03_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D03_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D04_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D04_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data = 65u; //25 Cdeg
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D04_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D05_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D05_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D05_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D06_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D06_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D06_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D07_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D07_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D07_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D08_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D08_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D08_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D0A_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D0A_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D0A_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D0B_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D0B_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D0B_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D0C_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D0C_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D0C_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D0D_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D0D_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   uint16 TempVal = (uint16)(MAIN_MSGf32PDCM21_MFTorqueReqPhys + 1024.0f);
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&TempVal;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = 2;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D0D_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D0E_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D0E_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D0E_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D0F_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D0F_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D0F_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D10_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D10_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D10_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D11_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D11_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D11_ReadData) ENABLED START */
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
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D12_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D12_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D12_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D13_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D13_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D13_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D14_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D14_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   uint16 u16TempVal = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D14_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   u16TempVal = (uint16)(Dem_OBD_EMSEngSpeed / 0.125f);
   *Data++ = (uint8)((u16TempVal & 0xFF00) >> 8);
   *Data = (uint8)(u16TempVal & 0x00FF);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D15_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D15_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D15_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D16_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D16_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint8 u8LocData = 0;
   if(FAULT_FF_Frame_FF1.Item.FTModeReq == 0x10)
   {
      u8LocData = 0x03;
   }
   else
   {
      u8LocData = 0x00;
   }
   *Data = u8LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D16_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D17_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D17_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint16 u16LocData = 0;
   float  f32LocPhysProcess = 0;
   sint32 s32LocPhys2S32Temp = 0;
   
   f32LocPhysProcess = MAIN_MSG_CLAMP_SIGNAL_PHYS_I(NAME,0,511,MAIN_MSGf32PDCM30MF_MaxPwrDPhys);
   f32LocPhysProcess = MAIN_MSG_SCALE_SIGNAL_PHYS2RAW_I(NAME,1,0,f32LocPhysProcess);
   s32LocPhys2S32Temp = F32SRV_s32F32ToSint32(f32LocPhysProcess, SINT32_MIN, SINT32_MAX, 0);
   u16LocData = (uint16)(s32LocPhys2S32Temp);
   *Data++ = (uint8)(u16LocData>>8);
   *Data = (uint8)u16LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D17_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D18_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D18_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint16 u16LocData = 0;
   float  f32LocPhysProcess = 0;
   sint32 s32LocPhys2S32Temp = 0;
   
   f32LocPhysProcess = MAIN_MSG_CLAMP_SIGNAL_PHYS_I(NAME,-511,0,MAIN_MSGf32PDCM30MF_MaxPwrGPhys);
   f32LocPhysProcess = MAIN_MSG_SCALE_SIGNAL_PHYS2RAW_I(NAME,1,-511,f32LocPhysProcess);
   s32LocPhys2S32Temp = F32SRV_s32F32ToSint32(f32LocPhysProcess, SINT32_MIN, SINT32_MAX, 0);
   u16LocData = (uint16)(s32LocPhys2S32Temp);
   *Data++ = (uint8)(u16LocData>>8);
   *Data = (uint8)u16LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D18_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D19_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D19_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data = 0x08; //Anti thief ok
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D19_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D1A_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D1A_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D1A_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D1F_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D1F_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D1F_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D20_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D20_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D20_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D21_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D21_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D21_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D22_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D22_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D22_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D23_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D23_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D23_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D24_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D24_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D24_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D25_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D25_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D25_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D26_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D26_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D26_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D27_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D27_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D27_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D28_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D28_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D28_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D29_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D29_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D29_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D2A_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D2A_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D2A_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D2B_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D2B_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D2B_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D2C_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D2C_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D2C_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D2D_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D2D_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D2D_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D2E_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D2E_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D2E_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D2F_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D2F_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D2F_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D30_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D30_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D30_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D31_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D31_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D31_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D32_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D32_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D32_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D33_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D33_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D33_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D34_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D34_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D34_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D36_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D36_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D36_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   *Data = MAIN_u8OcState;
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D40_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D40_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D40_ReadData) ENABLED START */
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
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D41_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D41_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D41_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D42_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D42_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D42_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D43_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D43_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D43_ReadData) ENABLED START */
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
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0D44_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0D44_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_0D44_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E02_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E02_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data = MAIN_u8UdsNumOfMotors;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E02_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E03_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E03_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data = MAIN_u8UdsMotorNum;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E03_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E04_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */
   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&MAIN_u8UdsMotorModel;
   uint8 u8LocIndex = 0;
   uint8 u8LocDataLen = sizeof(MAIN_u8UdsMotorModel);
	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E04_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

   for(u8LocIndex = 0; u8LocIndex < u8LocDataLen; u8LocIndex++)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex);
   }
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E04_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E05_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E05_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data = MAIN_u8UdsMotorType;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E05_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E06_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{
	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E06_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data++ = (uint8)(MAIN_u16UdsMotorPosition>>8);
   *Data = (uint8)(MAIN_u16UdsMotorPosition);
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E06_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E07_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E07_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */
   *Data = MAIN_u8UdsMotorCoolingMethod;
	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E07_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E08_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E08_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint16 u16LocData = 0;
   float  f32LocPhysProcess = 0;
   sint32 s32LocPhys2S32Temp = 0;
   
   f32LocPhysProcess = MAIN_MSG_CLAMP_SIGNAL_PHYS_I(NAME,0,1000,MAIN_f32UdsMotorNominalVol);
   f32LocPhysProcess = MAIN_MSG_SCALE_SIGNAL_PHYS2RAW_I(NAME,0.1,0,f32LocPhysProcess);
   s32LocPhys2S32Temp = F32SRV_s32F32ToSint32(f32LocPhysProcess, SINT32_MIN, SINT32_MAX, 0);
   u16LocData = (uint16)(s32LocPhys2S32Temp);
   *Data++ = (uint8)(u16LocData>>8);
   *Data = (uint8)u16LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E08_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E09_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E09_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint16 u16LocData = 0;
   float  f32LocPhysProcess = 0;
   sint32 s32LocPhys2S32Temp = 0;
   
   f32LocPhysProcess = MAIN_MSG_CLAMP_SIGNAL_PHYS_I(NAME,-1000,1000,MAIN_f32UdsMotorMaxCur);
   f32LocPhysProcess = MAIN_MSG_SCALE_SIGNAL_PHYS2RAW_I(NAME,0.1,-1000,f32LocPhysProcess);
   s32LocPhys2S32Temp = F32SRV_s32F32ToSint32(f32LocPhysProcess, SINT32_MIN, SINT32_MAX, 0);
   u16LocData = (uint16)(s32LocPhys2S32Temp);
   *Data++ = (uint8)(u16LocData>>8);
   *Data = (uint8)u16LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E09_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E0A_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E0A_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data++ = (uint8)(MAIN_u16UdsMotorPeakPower>>8);
   *Data = (uint8)MAIN_u16UdsMotorPeakPower;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E0A_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E0B_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E0B_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */
   
	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data++ = (uint8)(MAIN_u16UdsMotorNorminalPower>>8);
   *Data = (uint8)MAIN_u16UdsMotorNorminalPower;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E0B_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E0C_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E0C_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint32 u32LocData = 0;
   float  f32LocPhysProcess = 0;
   
   f32LocPhysProcess = MAIN_MSG_CLAMP_SIGNAL_PHYS_I(NAME,-65534,65534,MAIN_f32UdsMotorMaxSpeed);
   f32LocPhysProcess = MAIN_MSG_SCALE_SIGNAL_PHYS2RAW_I(NAME,1,-65534,f32LocPhysProcess);
   u32LocData = F32SRV_u32F32ToUint32(f32LocPhysProcess, UINT32_MIN, UINT32_MAX, 0);
   *Data++ = (uint8)(u32LocData>>24);
   *Data++ = (uint8)(u32LocData>>16);
   *Data++ = (uint8)(u32LocData>>8);
   *Data = (uint8)u32LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E0C_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E0D_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E0D_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint32 u32LocData = 0;
   float  f32LocPhysProcess = 0;
   
   f32LocPhysProcess = MAIN_MSG_CLAMP_SIGNAL_PHYS_I(NAME,-65534,65534,MAIN_f32UdsMotorNorminalSpeed);
   f32LocPhysProcess = MAIN_MSG_SCALE_SIGNAL_PHYS2RAW_I(NAME,1,-65534,f32LocPhysProcess);
   u32LocData = F32SRV_u32F32ToUint32(f32LocPhysProcess, UINT32_MIN, UINT32_MAX, 0);
   *Data++ = (uint8)(u32LocData>>24);
   *Data++ = (uint8)(u32LocData>>16);
   *Data++ = (uint8)(u32LocData>>8);
   *Data = (uint8)u32LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E0D_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E0E_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E0E_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data++ = (uint8)(MAIN_u32UdsMotorPeakTorque>>24);
   *Data++ = (uint8)(MAIN_u32UdsMotorPeakTorque>>16);
   *Data++ = (uint8)(MAIN_u32UdsMotorPeakTorque>>8);
   *Data = (uint8)MAIN_u32UdsMotorPeakTorque;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E0E_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E0F_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E0F_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data++ = (uint8)(MAIN_u32UdsMotorMaxTorque>>24);
   *Data++ = (uint8)(MAIN_u32UdsMotorMaxTorque>>16);
   *Data++ = (uint8)(MAIN_u32UdsMotorMaxTorque>>8);
   *Data = (uint8)MAIN_u32UdsMotorMaxTorque;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E0F_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E10_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E10_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data++ = (uint8)(MAIN_u32UdsMotorNorminalTorque>>24);
   *Data++ = (uint8)(MAIN_u32UdsMotorNorminalTorque>>16);
   *Data++ = (uint8)(MAIN_u32UdsMotorNorminalTorque>>8);
   *Data = (uint8)MAIN_u32UdsMotorNorminalTorque;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E10_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E11_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E11_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint8 u8LocData = 0;
   
   if(MAIN_MSGu8PDCM10_actualGear == 0)
   {
      u8LocData = 0x0F;
   }
   else if(MAIN_MSGu8PDCM10_actualGear == 1)
   {
      u8LocData = 0x0D;
   }
   else if(MAIN_MSGu8PDCM10_actualGear == 2)
   {
      u8LocData = 0x00;
   }
   else if(MAIN_MSGu8PDCM10_actualGear == 3)
   {
      u8LocData = 0x0E;
   }
   else
   {
      u8LocData = 0x00;
   }
   *Data = u8LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E11_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E12_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E12_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint32 u32LocData = 0;
   float  f32LocPhysProcess = 0;

   f32LocPhysProcess = MAIN_MSG_CLAMP_SIGNAL_PHYS_I(NAME,0,17000000,Dem_OBD_TotalMileage);
   f32LocPhysProcess = MAIN_MSG_SCALE_SIGNAL_PHYS2RAW_I(NAME,1,0,f32LocPhysProcess);
   u32LocData = F32SRV_u32F32ToUint32(f32LocPhysProcess, UINT32_MIN, UINT32_MAX, 0);
   *Data++ = (uint8)(u32LocData>>24);
   *Data++ = (uint8)(u32LocData>>16);
   *Data++ = (uint8)(u32LocData>>8);
   *Data = (uint8)u32LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E12_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E13_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E13_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   *Data = MAIN_u8UdsVehicleType;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E13_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_0E14_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_0E14_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */
   uint8 u8LocData = 0;
   
   if(MAIN_MSGu8MCUF6_MotorSta == 0)
   {
      u8LocData = 0x04; //Ready
   }
   else if(MAIN_MSGu8MCUF6_MotorSta == 1)
   {
      u8LocData = 1; //Drive
   }
   else if(MAIN_MSGu8MCUF6_MotorSta == 2)
   {
      u8LocData = 2; //Gen
   }
   else if(MAIN_MSGu8MCUF6_MotorSta == 3)
   {
      u8LocData = 3; //Off
   }
   else if(MAIN_MSGu8MCUF6_MotorSta == 6)
   {
      u8LocData = 0xFE; //Abnormal
   }
   else
   {
      u8LocData = 0xFF; //Invalid
   }
   *Data = u8LocData;
	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_0E14_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F087_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F087_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F087_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsManufPartNum) / sizeof(MAIN_u8UdsManufPartNum[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsManufPartNum[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F089_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F089_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F089_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsManufHwVersion) / sizeof(MAIN_u8UdsManufHwVersion[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsManufHwVersion[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F180_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F180_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F180_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsBootVersion) / sizeof(MAIN_u8UdsBootVersion[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsBootVersion[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F184_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F184_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */
   uint8 u8Index = 0;
   
   for(u8Index = 0; u8Index < NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock; u8Index++)
	{
		*Data++ = Fbl_DataM_RamMirrorNV_FingerprintBlock[u8Index];
	}
	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :DataServices_R_F184_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F187_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F187_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F187_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsOEMPartNum) / sizeof(MAIN_u8UdsOEMPartNum[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsOEMPartNum[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F189_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F189_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F189_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsSwVerVeh) / sizeof(MAIN_u8UdsSwVerVeh[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsSwVerVeh[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F18A_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F18A_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F18A_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsSupplyerId) / sizeof(MAIN_u8UdsSupplyerId[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsSupplyerId[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F18C_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F18C_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F18C_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsEcuSerialNum) / sizeof(MAIN_u8UdsEcuSerialNum[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsEcuSerialNum[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F193_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F193_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F193_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsSupplHwVersion) / sizeof(MAIN_u8UdsSupplHwVersion[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsSupplHwVersion[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F195_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F195_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F195_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsSwVerSup) / sizeof(MAIN_u8UdsSwVerSup[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsSwVerSup[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_F197_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_F197_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
	uint8 u8Index = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_F197_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsEcuName) / sizeof(MAIN_u8UdsEcuName[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsEcuName[u8Index];
	}
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :ASW_DCM) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */

