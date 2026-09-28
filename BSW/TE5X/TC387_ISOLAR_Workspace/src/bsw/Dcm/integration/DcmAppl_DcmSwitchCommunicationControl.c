
#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/
#if ((DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && ( DCM_CFG_DSP_COMMUNICATIONCONTROL_ENABLED != DCM_CFG_OFF) )

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/**
 * @ingroup DCM_TPL
 * DcmAppl_DcmSwitchCommunicationControl :-\n
 * This api will be called after sending the confirmation for the UDS service Communication control(0x28).\n
 * Dcm will pass the network ID of the channel and the new requested Communication mode to this api.Application can perform required actions if any.
 * @param[in]  NetworkID        : Channel Id for which the communication mode is requested.
 * @param[in]  RequestedMode    : Requested CommunicationMode
 * @retval     None
 */
void DcmAppl_DcmSwitchCommunicationControl( uint8 NetworkID ,Dcm_CommunicationModeType RequestedMode)
{
	(void)(NetworkID);
	(void)(RequestedMode);
	/*TESTCODE-START
	DcmTest_DcmAppl_DcmSwitchCommunicationControl(NetworkID,RequestedMode);
	TESTCODE-END*/
}

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif /* (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_CONTROLDTCSETTING_ENABLED != DCM_CFG_OFF) */
