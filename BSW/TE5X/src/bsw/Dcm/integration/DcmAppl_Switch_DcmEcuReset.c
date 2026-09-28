#include "Dcm_Cfg_Prot.h"
#include "DcmDspUds_Er_Inf.h"
#include "Rte_Dcm.h"
#include "Dcm_ExternalServiceProcessing.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/

#if ( (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_ECURESET_ENABLED != DCM_CFG_OFF) )


#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
 /**
 * @ingroup DCM_TPL
 * DcmAppl_Switch_DcmEcuReset :-\n
 * This api is called to notify the application regarding ecu reset type in the tester request.Application  can take any further actions.
 *
 * @param[in]     reset type(e.g DCM_NO_RESET ,DCM_ENABLE_RAPID_POWER_SHUTDOWN_RESET or DCM_DISABLE_RAPID_POWER_SHUTDOWN_RESET)
 * @param[out]    None
 * @retval        None
 *
 */
 void DcmAppl_Switch_DcmEcuReset(uint8 ResetMode)
 {
     (void)ResetMode;
   //  Mcu_PerformReset();
     MCU_vSetResetCmd();
	 /*TESTCODE-START
	 DcmTest_DcmAppl_Switch_DcmEcuReset(ResetMode);
	 TESTCODE-END*/

 }

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


#endif /* (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_ECURESET_ENABLED != DCM_CFG_OFF) */
