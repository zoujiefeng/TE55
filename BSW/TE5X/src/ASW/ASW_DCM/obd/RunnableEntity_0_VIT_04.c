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
 * Runnable : RunnableEntity_VIT_04
 *****************************************************************************
 * Tool Version: ISOLAR-A/B 9.2.1
 * Author: dell
 * Date : �ܶ� 3�� 28 10:55:50 2023
 ****************************************************************************/

#include "Rte_ASW_DCM.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :RunnableEntity_0_VIT_04) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
#include "MAIN_L.h"
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :RunnableEntity_0_VIT_04) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */
/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :RunnableEntity_0_VIT_04) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define ASW_DCM_START_SEC_CODE
#include "ASW_DCM_MemMap.h"
extern uint8 UDS_u8DidCalibDataPartNum[10];
extern uint8 UDS_u8DidDF_SoftwareVer[2];
FUNC (Std_ReturnType, ASW_DCM_CODE) RunnableEntity_0_VIT_04/* return value & FctID */
(
		VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) DataValueBuffer,
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) DataValueBufferSize
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :RunnableEntity_0_VIT_04) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */

   /* CMD: 09 04 Function: Get OBD Cal ID */
   
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
    uint8 u8Index = 0;
	uint8 data[16] = {0};
    for(u8Index = 0; u8Index < 16; u8Index++)
    {
       data[u8Index] = UDS_au8CalibSoftId[u8Index];
    }

	*DataValueBufferSize = 16;
	Rte_memcpy(DataValueBuffer,data,16);
   
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :RunnableEntity_0_VIT_04) ENABLED START */
	/* Start of user code - Do not remove this comment */
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}

#define ASW_DCM_STOP_SEC_CODE
#include "ASW_DCM_MemMap.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :RunnableEntity_VIT_04) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */
