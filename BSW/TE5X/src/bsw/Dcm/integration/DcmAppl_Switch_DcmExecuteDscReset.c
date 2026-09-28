#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/
#if ( (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_DIAGNOSTICSESSIONCONTROL_ENABLED != DCM_CFG_OFF) && (DCM_CFG_STORING_ENABLED != DCM_CFG_OFF) )

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
 /**
 *  @ingroup DCM_TPL
 *  DcmAppl_Switch_DcmExecuteDscReset :-\n
 *  This API is invoked to inform the application to execute reset where the reset is triggered due to DSC service
 *  when used for jump to boot
 *
 * @param[in]     SessionLevel_u8 : Session level used for jump
 * @param[out]    None
 * @retval        None
 *
 */
 void DcmAppl_Switch_DcmExecuteDscReset(uint8 SessionLevel_u8)
 {
    (void)SessionLevel_u8;
	/*TESTCODE-START
	//DcmTest_DcmAppl_Switch_DcmExecuteDscReset();
	TESTCODE-END*/
 }

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#endif
