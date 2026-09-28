
#include "Dcm_Cfg_Prot.h"
#include "DcmDspUds_CC_Inf.h"
#include "Rte_Dcm.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/

#if (DCM_CFG_DSP_COMMUNICATIONCONTROL_ENABLED != DCM_CFG_OFF)

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
 /**
 * @ingroup DCM_TPL
 * DcmAppl_UserCommCtrlReEnableModeRuleService :-\n
 * This API is invoked to check if communication control state needs to be re-enabled back to the default state DCM_ENABLE_RX_TX_NORM_NM
 *
 * @param[in]     None
 * @param[out]    None
 * @retval                E_OK   : Check to decide if the communication control state needs to be reenabled passed successfully \n
 * @retval                E_NOT_OK  : Check to decide if the communication control state needs to be reenabled  failed \n
 *
 */
Std_ReturnType DcmAppl_UserCommCtrlReEnableModeRuleService(void)
{
	Std_ReturnType retVal_u8 = E_OK;
	/*TESTCODE-START
	retVal_u8=DcmTest_DcmAppl_UserCommCtrlReEnableModeRuleService();
	TESTCODE-END*/
	return (retVal_u8);
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif

