/*
 **********************************************************************************************************************
 *
 * COPYRIGHT RESERVED, INVT, 2021. All rights reserved.
 * The reproduction, distribution and utilization of this document as well as the communication of its contents to
 * others without explicit authorization is prohibited. Offenders will be held liable for the payment of damages.
 * All rights reserved in the event of the grant of a patent, utility model or design.
 *
 **********************************************************************************************************************
 ************************************************************************************************
 * Component : rba_FeeFs1_SyncRead.c
 * Date      : Dec 05 2019
 * Version   : 1.0
 * Description  : This module implement Fee integration functions during platform integration.
 *                Note: This file contains sample implementation only. It is not part of the
 *                      production deliverables.
 ***********************************************************************************************
*/

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
 */
#include "rba_FeeFs1_SyncRead.h"
#include "rba_BswSrv.h"


/*
 **********************************************************************************************************************
 * Define/Macros
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Variables
 **********************************************************************************************************************
*/

/*
 **********************************************************************************************************************
 * Functions
 **********************************************************************************************************************
*/


/**
 *********************************************************************
 * Fee_Fls_SyncRead(): Service for synchronous data read
 *
 * This function performed synchronous read data from Data Flash.
 * Below is a template implementation. Integrators shall
 * implement this function in order to match with the target MCAL.
 *
 * \param    SourceAddress:     Relative address of the data to be read in flash memory.
 * 								This address offset will be added to the flash memory base address.
 * \param    TargetAddressPtr:  Pointer to target data buffer.
 * \param    Length:            Length in bytes to be read from Data Flash memory.
 * \return   Function success
 * \retval   E_OK:              Read command has been accepted.
 * \retval   E_NOT_OK:          Read command has not been accepted.
 * \seealso
 * \usedresources
 *********************************************************************
 */
Std_ReturnType Fee_Fls_SyncRead( Fls_AddressType SourceAddress,
                                uint8 *TargetAddressPtr,
                                Fls_LengthType Length
                               )
{
	Std_ReturnType RetVal = E_OK;
	MemIf_JobResultType Fls_JobResult;
	if(TargetAddressPtr == NULL_PTR)
	{
		RetVal = E_NOT_OK;
	}else{
		(void)rba_BswSrv_MemCopy((void*)TargetAddressPtr, (const void*)(FLS_17_DMU_BASE_ADDRESS + SourceAddress), Length);
#if 0
		RetVal = Fls_Read((Fls_AddressType) SourceAddress, (uint8*)TargetAddressPtr, Length);
		do{
			Fls_MainFunction();
			Fls_JobResult = Fls_GetJobResult();
		} while(Fls_JobResult == MEMIF_JOB_PENDING);

		if (Fls_JobResult != MEMIF_JOB_OK){
			RetVal = E_NOT_OK;
		}
#endif
	}
	return RetVal;
}


/*
 **********************************************************************************************************************
 * End of the file
 **********************************************************************************************************************
 */
