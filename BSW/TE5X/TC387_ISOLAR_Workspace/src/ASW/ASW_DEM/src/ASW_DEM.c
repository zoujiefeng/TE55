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
/* #include "Dem.h" */
#include "Dsm.h"
#include "ASW_DCM.h"
#include "ASW_DEM.h"
#include "MAIN_tsk.h"

extern Std_ReturnType Dem_SetDataOfPID21_User(const uint32 PID21value, boolean PID21CntSet);
extern Std_ReturnType Dem_DcmReadCntSetDataOfPID21_User(uint8* pid21CntSet_b);
static void ScanLogged(void);
static void ScanGCULogged(void);
Std_ReturnType Dem_GetTcuIndicatorStatus(uint8 IndicatorId);
extern void Dem_OBDClearPDTC(void);
extern void rba_DemObdBasic_Clear(uint16 DTCOrigin);
Std_ReturnType Dcm_DsmClearDiagnosticInformation(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8);
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */
const Dem_EventIdType Dem_OBD_EventId_TCUSet[Dem_OBD_EventId_TCUSetSize] = {
   DemConf_DemEventParameter_DemEventParameter_P1D0300
};
const Dem_EventIdType Dem_UDS_EventId_TCUSet[Dem_UDS_EventId_TCUSetSize] = {
   DemConf_DemEventParameter_DemEventParameter_P1D0000,
   DemConf_DemEventParameter_DemEventParameter_P1D0100,
   DemConf_DemEventParameter_DemEventParameter_P1D0200,
   DemConf_DemEventParameter_DemEventParameter_P1D0A01,
   DemConf_DemEventParameter_DemEventParameter_P1D0B01,
   DemConf_DemEventParameter_DemEventParameter_P1D0E00,
   DemConf_DemEventParameter_DemEventParameter_P1D1000,
   DemConf_DemEventParameter_DemEventParameter_P1D1700,
   DemConf_DemEventParameter_DemEventParameter_P1D1A00,
   DemConf_DemEventParameter_DemEventParameter_P1D1B00,
   DemConf_DemEventParameter_DemEventParameter_P1D1C00,
   DemConf_DemEventParameter_DemEventParameter_P1D1D00,
   DemConf_DemEventParameter_DemEventParameter_P1D1E00,
   DemConf_DemEventParameter_DemEventParameter_P1D3200,
   DemConf_DemEventParameter_DemEventParameter_P1D3300,
   DemConf_DemEventParameter_DemEventParameter_P1D3500,
   DemConf_DemEventParameter_DemEventParameter_P1D3800,
   DemConf_DemEventParameter_DemEventParameter_P1D3B00,
   DemConf_DemEventParameter_DemEventParameter_P1D3C00,
   DemConf_DemEventParameter_DemEventParameter_P1D3D00,
   DemConf_DemEventParameter_DemEventParameter_P1D3E00
};
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
   static boolean Dem_ClrPDTCReq = 0;
   static boolean Dem_ClrFaultReq = 0;
   static uint8 pid21CntSet_b = 0;

   if(ASW_DEM_OBD_PDTC_CLR_CMD != Dem_ClrPDTCReq)
   {
      Dem_ClrPDTCReq = ASW_DEM_OBD_PDTC_CLR_CMD;
      if(ASW_DEM_OBD_PDTC_CLR_CMD != FALSE)
      {
         Dem_OBDClearPDTC();
      }
   }

   if(ASW_DEM_OBD_FAULT_INFO_CLR_CMD != Dem_ClrFaultReq)
   {
      Dem_ClrFaultReq = ASW_DEM_OBD_FAULT_INFO_CLR_CMD;
      if(ASW_DEM_OBD_FAULT_INFO_CLR_CMD != FALSE)
      {
         rba_DemObdBasic_Clear(1);
      }
   }
      
   Dem_GetIndicatorStatus(ASW_DEM_OBD_MIL_INDICATOR, &Dem_OBD_IndicatorStatus);
   switch(Dem_OBD_IndicatorStatus)
   {
      case DEM_INDICATOR_OFF:
      {
         ASW_DEM_SET_TCU_OBD_MIL(MilLamp_Off);
         ASW_DEM_SET_MAIN_MOTOR_OBD_MIL(MilLamp_Off);
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
         ASW_DEM_SET_MAIN_MOTOR_OBD_MIL(MilLamp_On);
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
               Dem_SetDataOfPID21_User((uint32)Dem_OBD_TotalMileage, TRUE);
            }
         }
         break;
      }
      default:
      {
         ASW_DEM_SET_TCU_OBD_MIL(MilLamp_Off);
         ASW_DEM_SET_MAIN_MOTOR_OBD_MIL(MilLamp_Off);
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
   
   if(LastDrivingCycleStatus != Dem_DrivingCycle_Bool)
   {
      Rte_Call_OpCycle_DemOperationCycle_Ignition_SetOperationCycleState(!Dem_DrivingCycle_Bool);
      LastDrivingCycleStatus = Dem_DrivingCycle_Bool;
   }
   else
   {
      ScanLogged();
      ScanGCULogged();
   }
   
   if(LastWarmUpCycleStatus != Dem_OBD_WarmCycle_Bool)
   {
      Dem_SetOperationCycleState(2, !Dem_OBD_WarmCycle_Bool);
      Dem_SetOperationCycleState(0, !Dem_OBD_WarmCycle_Bool);
      if(!Dem_OBD_WarmCycle_Bool)
      {
         Dem_SetCycleQualified(0);
      }
      LastWarmUpCycleStatus = Dem_OBD_WarmCycle_Bool;
   }
#if 0   
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	syncCall1 = Rte_Call_Event_DemEventParameter_B111717_SetEventStatus(EventStatus1);

	syncCall2 = Rte_Call_Event_DemEventParameter_B111717_SetEventStatusWithEnvdata(EventStatus2,debug03,debug14);

	syncCall3 = Rte_Call_Event_DemEventParameter_B111717_ResetEventStatus();

	syncCall4 = Rte_Call_Event_DemEventParameter_B111717_PrestoreFreezeFrame();

	syncCall5 = Rte_Call_Event_DemEventParameter_B111717_ClearPrestoredFreezeFrame();

	syncCall6 = Rte_Call_Event_DemEventParameter_B111717_ResetEventDebounceStatus(DebounceResetStatus5);

	syncCall7 = Rte_Call_RPort_OpCycle_DemOperationCycle_Power_SetOperationCycleState(CycleState6);

	syncCall8 = Rte_Call_RPort_OpCycle_DemOperationCycle_Power_GetOperationCycleState(&CycleState7);

	syncCall9 = Rte_Call_RPort_OpCycle_DemOperationCycle_Power_GetCycleQualified(&CycleState8);

	syncCall10 = Rte_Call_RPort_OpCycle_DemOperationCycle_Power_SetCycleQualified();

	syncCall11 = Rte_Call_Event_DemEventParameter_P150003_SetEventStatus(EventStatus9);

	syncCall12 = Rte_Call_Event_DemEventParameter_P150003_SetEventStatusWithEnvdata(EventStatus10,debug011,debug112);

	syncCall13 = Rte_Call_Event_DemEventParameter_P150003_ResetEventStatus();

	syncCall14 = Rte_Call_Event_DemEventParameter_P150003_PrestoreFreezeFrame();

	syncCall15 = Rte_Call_Event_DemEventParameter_P150003_ClearPrestoredFreezeFrame();

	syncCall16 = Rte_Call_Event_DemEventParameter_P150003_ResetEventDebounceStatus(DebounceResetStatus13);

	syncCall17 = Rte_Call_Event_DemEventParameter_B111816_SetEventStatus(EventStatus14);

	syncCall18 = Rte_Call_Event_DemEventParameter_B111816_SetEventStatusWithEnvdata(EventStatus15,debug016,debug117);

	syncCall19 = Rte_Call_Event_DemEventParameter_B111816_ResetEventStatus();

	syncCall20 = Rte_Call_Event_DemEventParameter_B111816_PrestoreFreezeFrame();

	syncCall21 = Rte_Call_Event_DemEventParameter_B111816_ClearPrestoredFreezeFrame();

	syncCall22 = Rte_Call_Event_DemEventParameter_B111816_ResetEventDebounceStatus(DebounceResetStatus18);

	syncCall23 = Rte_Call_Event_DemEventParameter_P150104_SetEventStatus(EventStatus19);

	syncCall24 = Rte_Call_Event_DemEventParameter_P150104_SetEventStatusWithEnvdata(EventStatus20,debug021,debug122);

	syncCall25 = Rte_Call_Event_DemEventParameter_P150104_ResetEventStatus();

	syncCall26 = Rte_Call_Event_DemEventParameter_P150104_PrestoreFreezeFrame();

	syncCall27 = Rte_Call_Event_DemEventParameter_P150104_ClearPrestoredFreezeFrame();

	syncCall28 = Rte_Call_Event_DemEventParameter_P150104_ResetEventDebounceStatus(DebounceResetStatus23);

	syncCall29 = Rte_Call_OpCycle_DemOperationCycle_Ignition_SetOperationCycleState(CycleState24);

	syncCall30 = Rte_Call_OpCycle_DemOperationCycle_Ignition_GetOperationCycleState(&CycleState25);

	syncCall31 = Rte_Call_IndStatus_MIL_GetIndicatorStatus(&IndicatorStatus26);

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :ASW_DEM_PeriodicRunnable_10ms_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
#endif   
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

}
#define ASW_DEM_STOP_SEC_CODE  
#include "ASW_DEM_MemMap.h" 

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :ASW_DEM) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
void ASWDEM_EndOperationCycle(void)
{
   Rte_Call_OpCycle_DemOperationCycle_Ignition_SetOperationCycleState(DEM_CYCLE_STATE_END);
}

Std_ReturnType Dcm_DsmClearDiagnosticInformation(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8)
{
	Std_ReturnType retVal_u8 = E_OK;
	*Nrc_u8= 0x00;

   FaultEraseRequest = FAULT_ERASE_AUTHORIZED;

   Dcm_vStartFrecordClearDelay();
   
   if(MAIN_bGetDiagAllowCondition() == 0)
   {
      retVal_u8 = E_NOT_OK;
      *Nrc_u8 = 0x22;
   }

	return (retVal_u8);
}

static void ScanLogged(void)
{
   if(FaultDetn_u16Read_BSW_COM_BusOff_CAN1_0xC07300_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U007300), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U007300), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_COM_CheckSumErrVCU_0xC13100_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U013100), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U013100), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_COM_TimoutRxBCM_0xC14087_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U014087), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U014087), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_COM_TimoutRxEMS_0xC10287_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U010287), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U010287), DEM_EVENT_STATUS_PASSED);
   }
      
   if(FaultDetn_u16Read_BSW_COM_TimoutRxIPC_0xC12987_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U012987), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U012987), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_COM_TimoutRxVCU_0xD10087_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U110087), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U110087), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW2_FPGA_OverVoltVBat_0x150B16_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150B16), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150B16), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW_DrvClkFltHS_0x158B00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158B00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158B00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW_DrvClkFltLS_0x158C00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158C00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158C00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW_FPGA_IGBT_H_0x150003_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150003), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150003), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW_FPGA_IGBT_L_0x150104_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150104), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150104), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurUI_0x150300_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150300), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150300), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurVI_0x150400_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150400), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150400), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurWI_0x150519_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150519), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150519), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW_MidPointFault_0x158A00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158A00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158A00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_HW_OCDataNotRational_0x151600_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151600), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151600), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVBHV_OverVoltage_0x150C17_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150C17), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150C17), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVBHV_UnderVoltage_0x150D16_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150D16), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150D16), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVBLV_OverVoltage_0x911717_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_B111717), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_B111717), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVBLV_P5VRefADCFlt_0x151500_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151500), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151500), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVBLV_UnderVoltage_0x911816_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_B111816), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_B111816), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVETA_IgbtTempRational_0x152700_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152700), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152700), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVETA_OverTempDrvLeft_0x15194B_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P15194B), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P15194B), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVETA_OverTempIgbtLeft_0x151F00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151F00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151F00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVETA_TempIgbtLeftGnd_0x152301_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152301), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152301), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSEVETA_TempIgbtLeftVcc_0x152402_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152402), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152402), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSMTMTA_OverTempWdgHead1_0x152813_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152813), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152813), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSMTMTA_TempWindingHead1Gnd_0x152A12_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152A12), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152A12), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSMTMTA_TempWindingHead1Vcc_0x152B13_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152B13), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152B13), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSMTRDG_ExcGeneration_0x153100_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153100), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153100), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSMTRDG_SinCosHLGnd_0x153A02_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153A02), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153A02), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSMTRDG_SinCosHLOpen_0x153B00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153B00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153B00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSMTRDG_SinCosHLVcc_0x153901_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153901), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153901), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FSSMACS_AkdFailFlag_0x151294_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151294), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151294), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTASBDS_BattVoltDeratingAct_0x150E17_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150E17), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150E17), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTASETP_EstPmDeratingAct_0x152101_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152101), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152101), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTASETP_PmDeratingAct_0x152202_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152202), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152202), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTASMTP_Wndg1DeratingAct_0x152900_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152900), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152900), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTASOSP_MotorSpdDeratingAct_0x153000_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153000), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153000), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTCMSCS_SpdOvershoot_0x158D00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158D00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158D00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTCMSCS_ZeroSpeedTimout_0x158E00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158E00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158E00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTCMTCS_VoltageMarginLow_0x151400_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151400), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P151400), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTEVEIT_EstOverTemp_0x152000_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152000), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152000), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTMTLCS_CurrentSumError_0x150A03_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150A03), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150A03), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_GND_0x150801_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150801), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150801), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_VCC_0x150902_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150902), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P150902), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SAASITV_MainSup1VolOvering_0x158F00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158F00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P158F00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SABKPV_BkpVolOvering_0x159000_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159000), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159000), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SADDV_P5VolHSOvering_0x159100_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159100), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159100), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SADDV_P5VolLSOvering_0x159200_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159200), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159200), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SAMTEPD_EstErrAngleOvering_0x159400_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159400), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159400), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SATDETD_TorqueCheckFail_0x159300_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159300), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P159300), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SDMTMEP_CosGnd_0x153602_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153602), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153602), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SDMTMEP_CosVcc_0x153501_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153501), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153501), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SDMTMEP_OverSpeed_0x152E94_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152E94), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152E94), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SDMTMEP_ResSquaSumErrByFT_0x153400_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153400), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P153400), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_SDMTMEP_UnderSpeed_0x152F00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152F00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P152F00), DEM_EVENT_STATUS_PASSED);
   }
}


static void ScanGCULogged(void)
{
   /*GCU has no CAN communication failure*/
   #if 0
   if(FaultDetn_u16Read_BSW_COM_BusOff_CAN1_0xC07300_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U007300), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U007300), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_COM_CheckSumErrVCU_0xC13100_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U013100), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U013100), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_COM_TimoutRxBCM_0xC14087_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U014087), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U014087), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_COM_TimoutRxEMS_0xC10287_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U010287), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U010287), DEM_EVENT_STATUS_PASSED);
   }
      
   if(FaultDetn_u16Read_BSW_COM_TimoutRxIPC_0xC12987_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U012987), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U012987), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_BSW_COM_TimoutRxVCU_0xD10087_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U110087), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_U110087), DEM_EVENT_STATUS_PASSED);
   }
   #endif
   
   if(FaultDetn_u16Read_GBSW_HW2_FPGA_OverVoltVBat_0x258A00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258A00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258A00), DEM_EVENT_STATUS_PASSED);
   }

   if(FaultDetn_u16Read_GBSW_HW_DrvClkFltHS_0x258B00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258B00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258B00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GBSW_HW_DrvClkFltLS_0x258C00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258C00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258C00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_H_0x258D00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258D00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258D00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_L_0x258E00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258E00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258E00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurUI_0x258F00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258F00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P258F00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurVI_0x259000_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259000), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259000), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurWI_0x259100_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259100), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259100), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GBSW_HW_MidPointFault_0x259200_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259200), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259200), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GBSW_HW_OCDataNotRational_0x259300_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259300), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259300), DEM_EVENT_STATUS_PASSED);
   }

   if(FaultDetn_u16Read_GFSEVBHV_OverVoltage_0x259400_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259400), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P259400), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSEVBHV_UnderVoltage_0x2D0D01_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D0D01), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D0D01), DEM_EVENT_STATUS_PASSED);
   }

   if(FaultDetn_u16Read_GFSEVBLV_OverVoltage_0x2D0E00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D0E00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D0E00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSEVBLV_P5VRefADCFlt_0x2D1000_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1000), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1000), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSEVBLV_UnderVoltage_0x2D1300_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1300), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1300), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSEVETA_IgbtTempRational_0x2D1400_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1400), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1400), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSEVETA_OverTempDrvLeft_0x2D1500_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1500), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1500), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSEVETA_OverTempIgbtLeft_0x2D1600_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1600), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1600), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSEVETA_TempIgbtLeftGnd_0x2D1700_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1700), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1700), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSEVETA_TempIgbtLeftVcc_0x2D1A00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1A00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1A00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSMTMTA_OverTempWdgHead1_0x2D1B00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1B00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1B00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSMTMTA_TempWindingHead1Gnd_0x2D1C00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1C00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1C00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSMTMTA_TempWindingHead1Vcc_0x2D1D00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1D00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1D00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSMTRDG_ExcGeneration_0x2D1E00_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1E00), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D1E00), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSMTRDG_SinCosHLGnd_0x2D3000_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D3000), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D3000), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSMTRDG_SinCosHLOpen_0x2D3100_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D3100), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D3100), DEM_EVENT_STATUS_PASSED);
   }
   
   if(FaultDetn_u16Read_GFSMTRDG_SinCosHLVcc_0x2D3200_Logged() != 0)
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D3200), DEM_EVENT_STATUS_FAILED);
   }
   else
   {
      Dem_SetEventStatus(((VAR(Dem_EventIdType, AUTOMATIC))DemConf_DemEventParameter_DemEventParameter_P2D3200), DEM_EVENT_STATUS_PASSED);
   }

}




/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */

