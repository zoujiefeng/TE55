/*
 * This is a template file. It defines integration functions necessary to complete RTA-BSW.
 * The integrator must complete the templates before deploying software containing functions defined in this file.
 * Once templates have been completed, the integrator should delete the #error line.
 * Note: The integrator is responsible for updates made to this file.
 *
 * To remove the following error define the macro NOT_READY_FOR_TESTING_OR_DEPLOYMENT with a compiler option (e.g. -D NOT_READY_FOR_TESTING_OR_DEPLOYMENT)
 * The removal of the error only allows the user to proceed with the building phase
 */


 #include "DcmCore_DslDsd_Inf.h"
 /*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/

#define NUM_OF_DCM_SERVICES		(sizeof(DcmFuncRxPer)/sizeof(DcmFuncRxPermission_Type))

typedef struct
{
	uint8 id;/* data */
	boolean (*checkValid)(uint8*);
}DcmFuncRxPermission_Type;		/* PRQA S 3448 */


static boolean DcmCheckRxPermission_DiagnosticSessionControl(uint8* data)		/*PRQA S 3673 */
{
	return TRUE;
}

static boolean DcmCheckRxPermission_ECUReset(uint8* data)						/*PRQA S 3206 */
{
	return TRUE;
}

static boolean DcmCheckRxPermission_ReadDataByIdentifier(uint8* data)			/*PRQA S 3206 */
{
	return FALSE;
}

static boolean DcmCheckRxPermission_SecurityAccess(uint8* data)					/*PRQA S 3206 */
{
	return FALSE;
}

static boolean DcmCheckRxPermission_CommunicationControl(uint8* data)			/*PRQA S 3206 */
{
	return TRUE;
}

static boolean DcmCheckRxPermission_WriteDataByIdentifier(uint8* data)			/*PRQA S 3206 */
{
	return FALSE;
}

static boolean DcmCheckRxPermission_RoutineControl(uint8* data)					/*PRQA S 3673 */
{
	boolean ret = FALSE;
	if ((data[2] == 0x02u) && (data[3] == 0x03u))
	{
		ret = TRUE;
	}
	return ret;
}

static boolean DcmCheckRxPermission_RequestDownload(uint8* data)				/*PRQA S 3206 */
{
	return FALSE;
}

static boolean DcmCheckRxPermission_TransferData(uint8* data)					/*PRQA S 3206 */
{
	return FALSE;
}

static boolean DcmCheckRxPermission_RequestTransferExit(uint8* data)			/*PRQA S 3206 */
{
	return FALSE;
}

static boolean DcmCheckRxPermission_TesterPresent(uint8* data)					/*PRQA S 3206 */
{
	return TRUE;
}

static boolean DcmCheckRxPermission_ControlDTCSetting(uint8* data)				/*PRQA S 3206 */
{
	return TRUE;
}

DcmFuncRxPermission_Type DcmFuncRxPer[] = {			/* PRQA S 3408 */
	{
		0x10,
		DcmCheckRxPermission_DiagnosticSessionControl
	},
	{
		0x11,
		DcmCheckRxPermission_ECUReset
	},
	{
		0x22,
		DcmCheckRxPermission_ReadDataByIdentifier
	},
	{
		0x27,
		DcmCheckRxPermission_SecurityAccess
	},
	{
		0x28,
		DcmCheckRxPermission_CommunicationControl
	},
	{
		0x2E,
		DcmCheckRxPermission_WriteDataByIdentifier
	},
	{
		0x31,
		DcmCheckRxPermission_RoutineControl
	},
	{
		0x34,
		DcmCheckRxPermission_RequestDownload
	},
	{
		0x36,
		DcmCheckRxPermission_TransferData
	},
	{
		0x37,
		DcmCheckRxPermission_RequestTransferExit
	},
	{
		0x3E,
		DcmCheckRxPermission_TesterPresent
	},
	{
		0x85,
		DcmCheckRxPermission_ControlDTCSetting
	}
};

 #define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_Cfg_MemMap.h"
 /**
 *  @ingroup DCM_TPL
 *  DcmAppl_DcmGetRxPermission:-\n
 *  This API is called by Dcm_StartOfReception before processing the new request. The use case for such an API is rejection/accepting Rx Requests arriving from particular protocols,
 *  for different variants of the same software.Integrator has to add code to check the receiving protocol based on the passed ProtocolId.\n
 *  The user may return E_NOT_OK if the request is to be rejected. Else, E_OK must be returned.It must be noted that all return values other than E_OK (Including DCM_E_PENDING) are treated alike,
 *  and the request will be rejected for all return values other than E_OK.If no info data is given, that the user might get here a NULL pointer.
 *
 * @param[in]     ProtocolId : The protocol id
 * @param[in]     DcmRxPduId : Pdu Id corresponding to the received Pdu
 * @param[in]     TpSduLength : Total message length of the request to be received
 * @param[in]     info : Contains the information about received message
 * @param[out]    None
 * @retval            E_OK      : The Rx Request can be accepted and processed
 * @retval            E_NOT_OK  : The Rx Request is rejected
 *
 */
FUNC(Std_ReturnType,DCM_APPL_CODE) DcmAppl_DcmGetRxPermission (
		VAR(Dcm_ProtocolType, AUTOMATIC) ProtocolId,	/* PRQA S 3206 */ /* MISRA DEVIATION: The parameter is auto-generated and used in others. */
		VAR(PduIdType, AUTOMATIC) DcmRxPduId,
		P2CONST(PduInfoType, AUTOMATIC, DCM_APPL_DATA) info,
		VAR(PduLengthType, AUTOMATIC) TpSduLength)		/* PRQA S 3206 */ /* MISRA DEVIATION: The parameter is auto-generated and used in others. */
{
	VAR(Std_ReturnType,AUTOMATIC) retVal = E_OK;
	uint8 service = info->SduDataPtr[0];
	uint32 idx = 0;


	if(DcmRxPduId == DCM_INDEX_FUNC_RX_PDUID)
	{
		for(idx = 0; idx < NUM_OF_DCM_SERVICES; ++idx)
		{
			if(DcmFuncRxPer[idx].id == service)
			{
				retVal = (DcmFuncRxPer[idx].checkValid(&(info->SduDataPtr[0])) == TRUE) ? E_OK:E_NOT_OK;
				break;
			}
		}

	}

	return retVal;
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_Cfg_MemMap.h"
