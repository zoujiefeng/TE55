
#include "Dcm_Cfg_Prot.h"
#include "DcmDspUds_Dsc_Inf.h"
#include "Rte_Dcm.h"
#include "MAIN_Tsk.h"

#if ( (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && ( DCM_CFG_DSP_DIAGNOSTICSESSIONCONTROL_ENABLED != DCM_CFG_OFF ) )

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
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
Std_ReturnType DcmAppl_DcmGetSesChgPermission(
										Dcm_SesCtrlType SesCtrlTypeActive,
										Dcm_SesCtrlType SesCtrlTypeNew,
										Dcm_NegativeResponseCodeType * ErrorCode
										)
{
   Std_ReturnType retVal = E_OK;
	*ErrorCode = 0x00;
   boolean bLocRes_MCU = FALSE;
   boolean bLocRes_GCU = FALSE;

   if(SesCtrlTypeNew == 2u)
   {
      bLocRes_MCU = MAIN_vidGetProgCondition();
      bLocRes_GCU = GMAIN_vidGetProgCondition();
      if((bLocRes_MCU == FALSE) || (bLocRes_GCU == FALSE))
      {
         *ErrorCode = 0x22;
         retVal = E_NOT_OK;
      }
   }

    return (retVal);
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif /*( (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && ( DCM_CFG_DSP_DIAGNOSTICSESSIONCONTROL_ENABLED != DCM_CFG_OFF ) )*/


