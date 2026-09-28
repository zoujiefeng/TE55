
#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"

#if(DCM_CALLAPPLICATIONONREQRX_ENABLED!=DCM_CFG_OFF)

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/**
 * @ingroup DCM_TPL
 *  DcmAppl_TpRxIndication :-\n
 *  This API is called to inform the application regarding the the completion of copying of the request into the Dcm buffer.
 *  The RXPduId and the status  of reception is passed to the application.
 *  In case the reception is not successful, the  the application can do necessary steps to cancel the processing in the application
 *  @param[in]     idContext : SID of the service which is running.
 *  @param[in]     Result    : Status of reception.
 *  @param[out]    None
 *  @retval        None
 */
void DcmAppl_TpRxIndication( PduIdType DcmRxPduId,
                                                  Std_ReturnType Result)
{
    (void)DcmRxPduId;
    (void)Result;

}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif /* #if(DCM_CALLAPPLICATIONONREQRX_ENABLED!=DCM_CFG_OFF) */

