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

 * Project : INVT_TC387_HighTec_AR422_b
 * Component: /ASW_DEM/ASW_DEM
 * Runnable : All Runnables in SwComponent
 *****************************************************************************
 * Tool Version: ISOLAR-A/B 9.2.1
 * Author: Administrator
 * Date : Fri Apr 21 15:55:04 2023
 ****************************************************************************/

#include "Rte_ASW_DEM.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
#include "FAULT_FF.h"
#include "FAULT.h"
#include "Dem_Cfg_EventId.h"
#include "MAIN_L.h"
#include "Dsm.h"
#include "ASW_DCM.h"
#include "ASW_DEM.h"
#include "MAIN_tsk.h"
#include "IOHAL.h"
#include "Rte_Dem_Type.h"
#include "FR_System.h"

extern Std_ReturnType Dem_SetDataOfPID21_User(const uint32 PID21value, boolean PID21CntSet);
extern Std_ReturnType Dem_DcmReadCntSetDataOfPID21_User(uint8* pid21CntSet_b);
Std_ReturnType Dem_GetTcuIndicatorStatus(uint8 IndicatorId);
extern void Dem_OBDClearPDTC(void);
extern void rba_DemObdBasic_Clear(uint16 DTCOrigin);
Std_ReturnType Dcm_DsmClearDiagnosticInformation(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8);
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */

/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define ASW_DEM_START_SEC_CODE                   
#include "ASW_DEM_MemMap.h"
FUNC (Std_ReturnType, ASW_DEM_CODE) ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
	*Data = 0x2;
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DEM_STOP_SEC_CODE  
#include "ASW_DEM_MemMap.h" 
#define ASW_DEM_START_SEC_CODE                   
#include "ASW_DEM_MemMap.h"
FUNC (Std_ReturnType, ASW_DEM_CODE) ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func/* return value & FctID */
(
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func) ENABLED START */
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

	/*PROTECTED REGION ID(User Logic :ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
	*Data = 0x15;
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}
#define ASW_DEM_STOP_SEC_CODE  
#include "ASW_DEM_MemMap.h" 

uint8 AswDem_Indicator = 0;
uint8 AswDem_ShutdownTest = 0;

#define ASW_DEM_START_SEC_CODE                   
#include "ASW_DEM_MemMap.h"
boolean ASW_DEM_bGetOBDFaultInfoClrCmd(void)
{
   return FALSE;
}

boolean ASW_DEM_bGetOBDPDTCClrInhiCmd(void)
{
   return FALSE;
}

boolean ASW_DEM_bGetOBDPDTCClrCmd(void)
{
   return FALSE;
}

FUNC (void, ASW_DEM_CODE) ASW_DEM_PeriodicRunnable_10ms_func/* return value & FctID */
(
		void
)
{
	/*PROTECTED REGION ID(UserVariables :ASW_DEM_PeriodicRunnable_10ms_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
   uint8 u8TempCntSet = 0;
   static uint16 OperationSettedFlag = 0;
   static uint16 LastDrivingCycleStatus = 0;
   static uint16 LastWarmUpCycleStatus = 0;
	static uint16 Dem_PID21SetFlag = 0;
	static Dem_IndicatorStatusType Dem_OBD_IndicatorStatus = 0;
   static boolean Dem_ClrPDTCReq = FALSE;
   static boolean Dem_ClrFaultReq = FALSE;
   static uint8 pid21CntSet_b = 0;

   if(FALSE == ASW_DEM_bGetOBDPDTCClrInhiCmd())
   {
      if(ASW_DEM_bGetOBDPDTCClrCmd() != Dem_ClrPDTCReq)
      {
         Dem_ClrPDTCReq = ASW_DEM_bGetOBDPDTCClrCmd();
         if(Dem_ClrPDTCReq != FALSE)
         {
            Dem_OBDClearPDTC();
         }
      }
      
      if(ASW_DEM_bGetOBDFaultInfoClrCmd() != Dem_ClrFaultReq)
      {
         Dem_ClrFaultReq = ASW_DEM_bGetOBDFaultInfoClrCmd();
         if(Dem_ClrFaultReq != FALSE)
         {
            rba_DemObdBasic_Clear(1);
         }
      }
   }
      
   Dem_GetIndicatorStatus(ASW_DEM_OBD_MIL_INDICATOR, &Dem_OBD_IndicatorStatus);
   switch(Dem_OBD_IndicatorStatus)
   {
      case DEM_INDICATOR_OFF:
      {
         ASW_DEM_SET_TCU_OBD_MIL(MilLamp_Off);
         // ASW_DEM_SET_MAIN_MOTOR_OBD_MIL(MilLamp_Off);
         Dem_DcmReadCntSetDataOfPID21_User(&u8TempCntSet);
         if(1 == u8TempCntSet)
         {
            Dem_SetDataOfPID21_User(0, FALSE);
            Dem_PID21SetFlag = 0;
         }
         break;
      }
      case DEM_INDICATOR_CONTINUOUS:
      {
         // ASW_DEM_SET_MAIN_MOTOR_OBD_MIL(MilLamp_On);
         if(Dem_GetTcuIndicatorStatus(ASW_DEM_OBD_MIL_INDICATOR))
         {
            ASW_DEM_SET_TCU_OBD_MIL(MilLamp_On);
         }
         
         if(0 == Dem_PID21SetFlag)
         {
            Dem_PID21SetFlag = 1;
            Dem_DcmReadCntSetDataOfPID21_User(&pid21CntSet_b);
            if(FALSE == pid21CntSet_b)
            {
               // Dem_SetDataOfPID21_User((uint32)Dem_OBD_TotalMileage, TRUE);
            }
         }
         break;
      }
      default:
      {
         ASW_DEM_SET_TCU_OBD_MIL(MilLamp_Off);
         // ASW_DEM_SET_MAIN_MOTOR_OBD_MIL(MilLamp_Off);
         Dem_DcmReadCntSetDataOfPID21_User(&u8TempCntSet);
         if(1 == u8TempCntSet)
         {
            Dem_SetDataOfPID21_User(0, FALSE);
            Dem_PID21SetFlag = 0;
         }
         break;
      }
   }

   /********************************************************************/
   /*                     OperationCycleDefinition                     */
   /********************************************************************/
   /* #define DemConf_DemOperationCycle_DEM_OPCYC_WARMUP            0u */
   /* #define DemConf_DemOperationCycle_DEM_OPCYC_PFC               1u */
   /* #define DemConf_DemOperationCycle_WARM_UP                     2u */
   /* #define DemConf_DemOperationCycle_DemOperationCycle_Ignition  3u */ 
   /* #define DemConf_DemOperationCycle_DemOperationCycle_Power     4u */
   /********************************************************************/

	if( 0 == OperationSettedFlag )
   { 
      Rte_Call_RPort_OpCycle_DemOperationCycle_Power_SetOperationCycleState(DEM_CYCLE_STATE_START);
      OperationSettedFlag = 0xA55A;
   }

   uint16 u16KeyOnState = IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();

   boolean bKeyOnState = (u16KeyOnState != 0);

   if(LastDrivingCycleStatus != bKeyOnState)
   {
      LastDrivingCycleStatus = bKeyOnState;

      if(TRUE == bKeyOnState)
      {
         Rte_Call_OpCycle_DemOperationCycle_Ignition_SetOperationCycleState(DEM_CYCLE_STATE_START);
      }
      else
      {
         Rte_Call_OpCycle_DemOperationCycle_Ignition_SetOperationCycleState(DEM_CYCLE_STATE_END);
      }
   }
   else
   {
      /*Do nothing now*/
   }

   // if(LastWarmUpCycleStatus != Dem_OBD_WarmCycle_Bool)
   // {
   //    Dem_SetOperationCycleState(2, !Dem_OBD_WarmCycle_Bool);
   //    Dem_SetOperationCycleState(0, !Dem_OBD_WarmCycle_Bool);
   //    if(!Dem_OBD_WarmCycle_Bool)
   //    {
   //       Dem_SetCycleQualified(0);
   //    }
   //    LastWarmUpCycleStatus = Dem_OBD_WarmCycle_Bool;
   // }
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

}
#define ASW_DEM_STOP_SEC_CODE  
#include "ASW_DEM_MemMap.h" 

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :ASW_DEM) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
Std_ReturnType Dcm_DsmClearDiagnosticInformation(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8)
{
	Std_ReturnType retVal_u8 = E_OK;
	*Nrc_u8= 0x00;

   FaultEraseRequest = FAULT_ERASE_AUTHORIZED;

   if(TRUE == CCP_vidGetFaultRecordReadFlag())
   {
      FR_vidTrigClearNvm();
   }

	return (retVal_u8);
}

/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */

