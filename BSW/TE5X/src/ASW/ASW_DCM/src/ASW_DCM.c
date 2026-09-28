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
#include "BswM.h"
#include "BswM_Prv.h"
/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :ASW_DCM_IOControl_EngineTemperature_ReadData_func) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
#include "MAIN_L.h"
#include "MAIN_tsk.h"
#include "FAULT_FF.h"
#include "Dcm_ExternalServiceProcessing.h"
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :ASW_DCM_IOControl_EngineTemperature_ReadData_func) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */
/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */
Std_ReturnType DCM_SetComControlState(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8, uint8 Subfunc_u8);
/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :ASW_DCM_IOControl_EngineTemperature_ReadData_func) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define ASW_DCM_START_SEC_CODE
#include "ASW_DCM_MemMap.h"
FUNC (void, ASW_DCM_CODE) ASW_DCM_PeriodicRunnable_10ms_func/* return value & FctID */
(
		void
)
{

/*please don't remove it*/
	Dcm_ExternalServiceProccessing_MainFunction();
     Dcm_ResetServiceProccessing();
	/* Local Data Declaration */
	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DCM_PeriodicRunnable_10ms_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
#if 0   
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

	/*PROTECTED REGION ID(User Logic :ASW_DCM_PeriodicRunnable_10ms_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
#endif   
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

}
#define ASW_DCM_STOP_SEC_CODE
#include "ASW_DCM_MemMap.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :ASW_DCM) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
boolean DCM_GetComControlState(void)
{
   uint8 DCM_u8LocComState;

   DCM_u8LocComState = BswM_Cfg_DcmComModeRequestModeInfo_ast[0].dataMode_u8;
   /* Communication control to FullCom */
   if(DCM_u8LocComState == 8)
   {
      MAIN_bComDisableFlg = FALSE;
   }
   /* Communication control to NoCom */
   else if(DCM_u8LocComState == 11)
   {
      MAIN_bComDisableFlg = TRUE;
   }
   else
   {
      ;//Other mode not be supportted, do nothing
   }
    
	return MAIN_bComDisableFlg;
}
/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */

