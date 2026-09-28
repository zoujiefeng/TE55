#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"
#if ((DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_ECURESET_ENABLED != DCM_CFG_OFF))
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
 /**
 *  @ingroup DCM_TPL
 *  DcmAppl_Switch_DcmExecuteEcuReset :-\n
 *  Inform the application to execute reset where the reset is triggered due to EcuReset service
 *  when used for jump to boot/drive
 *
 * @param[in]  ResetType_u8 : ResetType used for the EcuReset(e.g. DCM_NO_RESET,DCM_ENABLE_RAPID_POWER_SHUTDOWN_RESET or DCM_DISABLE_RAPID_POWER_SHUTDOWN_RESET)
 * @param[out] None
 * @retval     None
 *
 */
 void DcmAppl_Switch_DcmExecuteEcuReset(uint8 ResetType_u8)
 {
     (void) ResetType_u8;
	/*TESTCODE-START
	//DcmTest_DcmAppl_Switch_DcmExecuteEcuReset();
	TESTCODE-END*/
 }

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#endif
