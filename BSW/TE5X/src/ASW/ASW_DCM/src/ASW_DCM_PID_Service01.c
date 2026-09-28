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

 * Project : INVT_TC387_HighTec_AR422
 * Component: /ASW_DCM/ASW_DCM
 * Runnable : All Runnables in SwComponent
 *****************************************************************************
 * Tool Version: ISOLAR-A/B 9.2.1
 * Author: Administrator
 * Date : Tue Feb 28 11:03:02 2023
 ****************************************************************************/

#include "Rte_ASW_DCM.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :ASW_DCM_IOControl_EngineTemperature_ReadData_func) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
#include "MAIN_L.h"
#include "MAIN_tsk.h"
#include "FAULT_FF.h"
#include "rba_DemObdBasic_Dcm.h"
#include "ASW_DCM.h"
#include "IOHAL.h"

extern Std_ReturnType Dem_DcmReadDataOfPID21_User(uint8* PID21value);
extern Std_ReturnType Dem_DcmReadDataOfPID31_User(uint8* PID31value);
extern Std_ReturnType Dem_DcmReadCntSetDataOfPID21_User(uint8* pid21CntSet_b);
extern Std_ReturnType Dem_SetDataOfPID21_User(const uint32 PID21value, boolean PID21CntSet);
extern Std_ReturnType Dem_SetDataOfPID31_User(const uint32 PID31value);
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :ASW_DCM_IOControl_EngineTemperature_ReadData_func) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */
#define DEM_OBDDTC_CLEARED_BIT_MASK  0x80000000U
#define DEM_OBD_TOTAL_MIL_MASK  0x7FFFFFFFU
#define DEM_OBD_MAX_ENG_SPEED  0x7FFFU
#define DEM_OBD_MAX_TOTAL_MIL  0xFFFFU
/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :ASW_DCM_IOControl_EngineTemperature_ReadData_func) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
Std_ReturnType Dcm_OBD04_DTCClrInhibit(void)
{
   Std_ReturnType u8LocREsult = 1;

//    if(TRUE == Dem_OBD_FaultClrInhibit_Bool)
//    {
//       /* E_NOT_OK */
//       u8LocREsult = 1;
//    }
//    else
//    {
//       /* E_OK */
//       Dem_SetDataOfPID31_User((uint32)Dem_OBD_TotalMileage | DEM_OBDDTC_CLEARED_BIT_MASK);
//       Dem_SetDataOfPID21_User(0, FALSE);
//       u8LocREsult = 0;
//    }
   
   return u8LocREsult;
}
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_04_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_04_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_04_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    *Data = (uint8)(Dem_OBD_EMSCalLoadVal / 0.394f);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_05_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_05_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_05_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    if(Dem_OBD_EMSCoolantTemp < 215.0f)
//    {
//       *Data = (uint8)(Dem_OBD_EMSCoolantTemp + 40.0f);
//    }
//    else
//    {
//       *Data = 0xFF;
//    }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_0C_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_0C_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_0C_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    if(Dem_OBD_EMSEngSpeed < 8191.25f)
//    {
//       TempVal = (uint16)(Dem_OBD_EMSEngSpeed / 0.25f);
//    }
//    else
//    {
//       TempVal = DEM_OBD_MAX_ENG_SPEED;
//    }
//    *Data++ = TempPtr[1];
//    *Data = TempPtr[0];
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_0D_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_0D_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_0D_ReadData) ENABLED START */
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
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_21_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_21_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   uint32 u32TempPID21 = 0;
   uint8 u8TempCntSet = 0;
   uint16 u16PID21Val = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_21_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   Dem_DcmReadCntSetDataOfPID21_User(&u8TempCntSet);
   if(1 == u8TempCntSet)
   {
      Dem_DcmReadDataOfPID21_User((uint8 *)&u32TempPID21);
    //   if((uint32)Dem_OBD_TotalMileage >= u32TempPID21)
    //   {
    //      u32TempPID21 = ((uint32)Dem_OBD_TotalMileage - u32TempPID21);
    //   }
    //   else
    //   {
    //      u32TempPID21 = 0;
    //   }

      if(u32TempPID21 > DEM_OBD_MAX_TOTAL_MIL)
      {
         u16PID21Val = DEM_OBD_MAX_TOTAL_MIL;
      }
      else
      {
         u16PID21Val = (uint16)u32TempPID21;
      }
   }
   else
   {
      u16PID21Val = 0;
   }

   *Data++ = (uint8)((u16PID21Val & 0xFF00) >> 8);
   *Data = (uint8)(u16PID21Val & 0x00FF);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_30_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_30_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_30_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   retValue = Dem_DcmReadDataOfPID30(Data);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_31_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_31_ReadData) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   uint32 u32TempPID31 = 0;
   uint16 u16PID31Val = 0;
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_31_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   Dem_DcmReadDataOfPID31_User((uint8*)&u32TempPID31);
//    if((DEM_OBDDTC_CLEARED_BIT_MASK == (DEM_OBDDTC_CLEARED_BIT_MASK & u32TempPID31))
//    && ((uint32)Dem_OBD_TotalMileage >= (u32TempPID31 & DEM_OBD_TOTAL_MIL_MASK)))
//    {
//       u32TempPID31 = ((uint32)Dem_OBD_TotalMileage - (u32TempPID31 & DEM_OBD_TOTAL_MIL_MASK));
//    }
//    else
//    {
//       u32TempPID31 = 0;
//    }
   
   if((u32TempPID31 & DEM_OBD_TOTAL_MIL_MASK) > DEM_OBD_MAX_TOTAL_MIL)
   {
      u16PID31Val = DEM_OBD_MAX_TOTAL_MIL;
   }
   else
   {
      u16PID31Val = (uint16)(u32TempPID31 & DEM_OBD_MAX_TOTAL_MIL);
   }
   
   *Data++ = (uint8)((u16PID31Val & 0xFF00) >> 8);
   *Data = (uint8)(u16PID31Val & 0x00FF);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_41_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_41_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_41_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
   Dem_DcmReadDataOfPID41(Data);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DCM_STOP_SEC_CODE  
#include "ASW_DCM_MemMap.h" 
#define ASW_DCM_START_SEC_CODE                   
#include "ASW_DCM_MemMap.h"
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_42_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_42_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_42_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    u16LocAdcRaw = IOHAL_u16Read_CH_ADC_IN_AN_P12V_BATT_1();
   f32LocBatValAd = (float32)u16LocAdcRaw;
   f32LocBatValAd = (f32LocBatValAd * 0.0124) + 0.1336;
   f32LocBatValAd = f32LocBatValAd * 1000.0f;
   if (f32LocBatValAd > 65535.0f)
   {
      f32LocBatValAd = 65535.0f;
   }
   else if (f32LocBatValAd < 0)
   {
      f32LocBatValAd = 0.0f;
   }
   else
   {
      /* !Comment: No process. */
   }
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
FUNC (Std_ReturnType, ASW_DCM_CODE) DataServices_R_PID_49_ReadData/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :DataServices_R_PID_49_ReadData) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :DataServices_R_PID_49_ReadData) ENABLED START */
	/* Start of user code - Do not remove this comment */
//    *Data = (uint8)Dem_OBD_AccPedal;
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

