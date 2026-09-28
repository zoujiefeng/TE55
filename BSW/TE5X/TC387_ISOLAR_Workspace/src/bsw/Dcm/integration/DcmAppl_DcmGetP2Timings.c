
#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"

#if((DCM_CFG_STORING_ENABLED != DCM_CFG_OFF)||(DCM_CFG_RESTORING_ENABLED != DCM_CFG_OFF))
#if(DCM_CFG_DSP_DIAGNOSTICSESSIONCONTROL_ENABLED == DCM_CFG_OFF)
#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/**
 * @ingroup DCM_TPL
 * DcmAppl_DcmGetP2Timings :-\n
 * This API is used to get the values of P2ServerMax and P2StarServer Max
 * when the vendor specific DiagnosticSessionControl service is configured.
 *
 * @param[in]  dataSessionId_u8  : active session level
 * @param[out] adrP2Timing_pu32  : Pointer to P2ServerMax value
 * @param[out] adrP2StarTiming_pu32 : Pointer to P2StarServerMax value
 *
 * @retval     None
 *
 */
void DcmAppl_DcmGetP2Timings(
                                        uint32 * adrP2Timing_pu32,
                                        uint32 * adrP2StarTiming_pu32,
                                        Dcm_SesCtrlType dataSessionId_u8
                                     )
{
	/*TESTCODE-START
		if(dataSessionId_u8 == 0x01)
	{
		*adrP2Timing_pu32 = 50000;
		*adrP2StarTiming_pu32= 5000000;
	}
	else
	{
		*adrP2Timing_pu32= 40000;
		*adrP2StarTiming_pu32= 4000000;
	}

	TESTCODE-END*/
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif
#endif
