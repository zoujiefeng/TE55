/*
 * This is a template file. It defines integration functions necessary to complete RTA-BSW.
 * The integrator must complete the templates before deploying software containing functions defined in this file.
 * Once templates have been completed, the integrator should delete the #error line.
 * Note: The integrator is responsible for updates made to this file.
 *
 * To remove the following error define the macro NOT_READY_FOR_TESTING_OR_DEPLOYMENT with a compiler option (e.g. -D NOT_READY_FOR_TESTING_OR_DEPLOYMENT)
 * The removal of the error only allows the user to proceed with the building phase
 */

#include "DcmDspUds_Dsc_Inf.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/
#if ( (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && ( DCM_CFG_DSP_DIAGNOSTICSESSIONCONTROL_ENABLED != DCM_CFG_OFF ) )

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_Cfg_MemMap.h"
/**
 * @ingroup DCM_TPL
 * DcmAppl_DcmGetSesChgPermission :-\n
 *  Request to application, to check if the conditions allow to start requested session control.The application needs to provide this function as a callback function.
 *  DCM provides only an example of this function.
 *
 * @param[in]           SesCtrlTypeActive :  Active session control type value
 * @param[in]           SesCtrlTypeNew    :  Requested session control type value
 * @param[out]          ErrorCode
 * @retval              E_OK:                       session can be started
 * @retval              DCM_E_SESSION_NOT_ALLOWED:  session is not allowed to start
 * @retval              DCM_E_PENDING:              Some more time required to change the requested session
 *
 * NOTE: DCM_E_FORCE_RCRRP should not be used as a return from this API\n
 *
 */
extern boolean Fbl_BootM_bSessionReset;
extern boolean reqCheckProPreconditioniFlag;
extern boolean reqCheckProPreconditioniFlag_INVT;
extern Dcm_SesCtrlType Fbl_BootM_PreviousSession;
FUNC(Std_ReturnType,DCM_APPL_CODE) DcmAppl_DcmGetSesChgPermission(
										VAR(Dcm_SesCtrlType,AUTOMATIC) SesCtrlTypeActive,	/* PRQA S 3206 */ /* MISRA DEVIATION: The parameter is auto-generated and used in others. */
										VAR(Dcm_SesCtrlType,AUTOMATIC) SesCtrlTypeNew,		/* PRQA S 3206 */ /* MISRA DEVIATION: The parameter is auto-generated and used in others. */
										P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) ErrorCode
										)
{
    VAR(Std_ReturnType,AUTOMATIC) retVal = E_OK;
	*ErrorCode = 0x00;

	/*TESTCODE-START
	retVal = DcmTest_DcmAppl_DcmGetSesChgPermission(SesCtrlTypeActive,SesCtrlTypeNew,ErrorCode);
	TESTCODE-END*/
	if(SesCtrlTypeNew == DCM_PROGRAMMING_SESSION)
	{
		if(Fbl_BootM_PreviousSession == DCM_PROGRAMMING_SESSION)
		{
			retVal = E_OK;		
		}
		else
		{
			if((reqCheckProPreconditioniFlag)
			|| (reqCheckProPreconditioniFlag_INVT))
			{
				reqCheckProPreconditioniFlag = FALSE;
				reqCheckProPreconditioniFlag_INVT = FALSE;
				retVal = E_OK;
			}
			else
			{
				retVal = E_NOT_OK;
				*ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
			}
		}
	}
	else if(SesCtrlTypeNew == DCM_DEFAULT_SESSION)
	{

		if(Fbl_BootM_PreviousSession == DCM_PROGRAMMING_SESSION)
		{
			*ErrorCode = 0x78;
			Fbl_BootM_bSessionReset = TRUE;
			retVal = DCM_E_FORCE_RCRRP;
		}
		else if(Fbl_BootM_PreviousSession == DCM_DEFAULT_SESSION)
		{
			*ErrorCode = 0x78;
			Fbl_BootM_bSessionReset = TRUE;
			retVal = DCM_E_FORCE_RCRRP;
		}
	}

    return (retVal);
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_Cfg_MemMap.h"
#endif /*( (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && ( DCM_CFG_DSP_DIAGNOSTICSESSIONCONTROL_ENABLED != DCM_CFG_OFF ) )*/


