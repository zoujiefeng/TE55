#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
 /**
 *  @ingroup DCM_TPL
 *  DcmAppl_Switch_DcmExecuteReset :-\n
 *  This API is invoked to notify the application that Dcm shall trigger Ecu Reset soon after this API is called.The application may
 *  do the necessary actions required before reset in this function.The API is called only if RTE is disabled.
 *
 * @param[in]     None
 * @param[out]    None
 * @retval        None
 *
 */
 void DcmAppl_Switch_DcmExecuteReset(void)
 {
	/*TESTCODE-START
	DcmTest_DcmAppl_Switch_DcmExecuteReset();
	TESTCODE-END*/
 }

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"


