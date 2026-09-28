
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
 *@ingroup DCM_TPL
 * DcmAppl_DisableDTCSetting:-\n
 * This api is called to get permission to disable DTC Setting.
 *
 * @param[inout]   ErrorCode: Pointer to Negative Response Code.
 * @retval      None
 *
 *
 */
void DcmAppl_DisableDTCSetting (
                                    Dcm_NegativeResponseCodeType * ErrorCode
                                                   )
{
    *ErrorCode = 0x00;
	/*TESTCODE-START
	DcmTest_DcmAppl_DisableDTCSetting(ErrorCode);
	TESTCODE-END*/
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#endif /* (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_CONTROLDTCSETTING_ENABLED != DCM_CFG_OFF) */

