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
 * Runnable : RunnableEntity_VIT_06
 *****************************************************************************
 * Tool Version: ISOLAR-A/B 9.2.1
 * Author: dell
 * Date : 2024-05-09
 ****************************************************************************/

#include "Rte_ASW_DCM.h"
#include "OverlayManager.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :RunnableEntity_0_func_vit_06) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :RunnableEntity_0_func_vit_06) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */
/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :RunnableEntity_0_func_vit_06) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
uint32 ASW_OBDCVN = 0;
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define ASW_DCM_START_SEC_CODE
#include "ASW_DCM_MemMap.h"

void ASW_OBDCalcCVN(void)
{
   ASW_OBDCVN = Crc_CalculateCRC32((const uint8*)TCU_CALRAM_START_ADDR, TCU_CAL_MEM_SIZE, 0xFFFFFFFF, TRUE);
   ASW_OBDCVN = Crc_CalculateCRC32((const uint8*)CALRAM_START_ADDR, CAL_MEM_SIZE, ASW_OBDCVN, FALSE);
}

FUNC (Std_ReturnType, ASW_DCM_CODE) RunnableEntity_0_func_vit_06/* return value & FctID */
(
		VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) DataValueBuffer,
		P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) DataValueBufferSize
)
{

	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :RunnableEntity_0_func_vit_06) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */

   /* CMD: 09 06 Function: Get OBD CVN */
   
   uint8 Data[4] = {0};
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

	/*PROTECTED REGION ID(User Logic :RunnableEntity_0_func_vit_06) ENABLED START */
	/* Start of user code - Do not remove this comment */
   Data[0] = (uint8)((ASW_OBDCVN & 0xFF000000) >> 24);
   Data[1] = (uint8)((ASW_OBDCVN & 0x00FF0000) >> 16);
   Data[2] = (uint8)((ASW_OBDCVN & 0x0000FF00) >> 8);
   Data[3] = (uint8)(ASW_OBDCVN & 0x000000FF);
   
   *DataValueBufferSize = (sizeof(Data)/sizeof(Data[0]));
   Rte_memcpy(DataValueBuffer, Data, (sizeof(Data)/sizeof(Data[0])));
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

	return retValue;

}

#define ASW_DCM_STOP_SEC_CODE
#include "ASW_DCM_MemMap.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :RunnableEntity_VIT_06) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */
