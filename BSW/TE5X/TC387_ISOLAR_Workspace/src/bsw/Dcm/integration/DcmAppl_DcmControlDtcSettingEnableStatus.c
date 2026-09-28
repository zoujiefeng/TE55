
#include "Dcm_Cfg_Prot.h"
#include "DcmDspUds_Cdtcs_Inf.h"
#include "Rte_Dcm.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/
#if ( (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_CONTROLDTCSETTING_ENABLED != DCM_CFG_OFF) )


#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/**
 * @ingroup DCM_TPL
 * DcmAppl_DcmControlDtcSettingEnableStatus :-\n
 * This API is called when the control dtc setting status is changed.
 * ControlDtcSettingEnableStatus is true, if Dtc setting is enabled
 * ControlDtcSettingEnableStatus is false if dtc setting is disabled.
 * Integrator can perform  further actions basecd on the  ControlDtcSettingEnableStatus\n
 *
 * @param[in]  ControlDtcSettingEnableStatus: Value to indicate whether DTC is enabled or not\n
 * @param[out] None
 * @retval None
 */
void DcmAppl_DcmControlDtcSettingEnableStatus(boolean ControlDtcSettingEnableStatus)
{
	(void)(ControlDtcSettingEnableStatus);
	/*TESTCODE-START
	DcmTest_DcmAppl_DcmControlDtcSettingEnableStatus(ControlDtcSettingEnableStatus);
	TESTCODE-END*/
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif /* (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_CONTROLDTCSETTING_ENABLED != DCM_CFG_OFF) */
