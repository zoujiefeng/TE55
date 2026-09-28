#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/
#if(DCM_CFG_STORING_ENABLED != DCM_CFG_OFF)

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

 /**
 * @ingroup DCM_TPL
 * DcmAppl_Switch_DcmSysSupplierReset :-\n
 * This API is used to notify the application regarding jump to Sys SupplierBootLoader.Application can take further actions.
 *
 * @param[in]     None
 * @param[out]    None
 * @retval        None
 *
 */
void DcmAppl_Switch_DcmSysSupplierReset(void)
{
	/*TESTCODE-START
	DcmTest_DcmAppl_Switch_DcmSysSupplierReset();
	TESTCODE-END*/
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif
