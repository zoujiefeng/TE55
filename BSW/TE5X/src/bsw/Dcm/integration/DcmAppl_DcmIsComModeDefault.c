
#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/
#if ((DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && ( DCM_CFG_DSP_COMMUNICATIONCONTROL_ENABLED != DCM_CFG_OFF) )

#if((DCM_CFG_RTESUPPORT_ENABLED==DCM_CFG_OFF))
#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

/**
 * @ingroup DCM_TPL
 * DcmAppl_DcmIsComModeDefault :-\n
 * This api is called to check whether the ComM channel identified by the passed Network ID is in default ComMode(DCM_ENABLE_RX_TX_NORM_NM).
 *
 * @param[in]   NetworkHandleType : NetworkID
 * @param[out]  None
 * @retval      TRUE : ComMode is default.
 * @retval      FALSE : ComMode is not default.
 *
 */
boolean DcmAppl_DcmIsComModeDefault( uint8 NetworkID )
{

	boolean retVal = TRUE;
	(void)(NetworkID);

	/*TESTCODE-START
	retVal = DcmTest_DcmAppl_DcmIsComModeDefault(NetworkID);
	TESTCODE-END*/

	return (retVal);
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif

#endif /* (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_COMMUNICATIONCONTROL_ENABLED != DCM_CFG_OFF) */
