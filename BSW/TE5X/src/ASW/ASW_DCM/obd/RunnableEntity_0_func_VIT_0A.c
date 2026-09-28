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

 * Project : S73_VIUL
 * Component: /ASW_DCM/ASW_DCM
 * Runnable : RunnableEntity_VIT_0A
 *****************************************************************************
 * Tool Version: ISOLAR-A/B 9.2.1
 * Author: dell
 * Date : ÖÜ¶þ 3ÔÂ 28 10:55:49 2023
 ****************************************************************************/

#include "Rte_ASW_DCM.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :RunnableEntity_0_func_VIT_0A) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :RunnableEntity_0_func_VIT_0A) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */
/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :RunnableEntity_0_func_VIT_0A) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define ASW_DCM_START_SEC_CODE
#include "ASW_DCM_MemMap.h"

FUNC (Std_ReturnType, ASW_DCM_CODE) RunnableEntity_0_func_VIT_0A/* return value & FctID */
(
		VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) DataValueBuffer,
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) DataValueBufferSize
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :RunnableEntity_0_func_VIT_0A) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */

   /* CMD: 09 0A Function: Get OBD ECU Name */
   
   uint8 data[20] = {"DMC1-DriveMotorCtrl1"};
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

	/*PROTECTED REGION ID(User Logic :RunnableEntity_0_func_VIT_0A) ENABLED START */
	/* Start of user code - Do not remove this comment */
   *DataValueBufferSize = 20;
   Rte_memcpy(DataValueBuffer, data, 20);
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}

#define ASW_DCM_STOP_SEC_CODE
#include "ASW_DCM_MemMap.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :RunnableEntity_VIT_0A) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */
