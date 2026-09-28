
#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"

#if(DCM_CALLAPPLICATIONONREQRX_ENABLED!=DCM_CFG_OFF)

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/**
 * @ingroup DCM_TPL
 *  DcmAppl_CopyRxData :-\n
 *  This API is called to inform the application regarding the data received in each call.
 *  The application can use the data for processing  The application should monitor and copy the valid contents from the buffer passed to the API during DcmAppl_StartOfReception call(ehere the request bytes are copied)
 *  from the RxBufferSize passed to it in each call which provided the buffer size copied in each call into the buffer.
 *
 *  @param[in]           RxBufferSize :   Size of the data copied in this call
 *  @param[in]           DcmRxPduId   :   RxPduId on which the Dcm_CopyRxData is called from the lower layer
 *  @retval              None
 */
void DcmAppl_CopyRxData(PduIdType DcmRxPduId,
                                            PduLengthType RxBufferSize)
{
    (void)DcmRxPduId;
    (void)RxBufferSize;

}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif /* #if(DCM_CALLAPPLICATIONONREQRX_ENABLED!=DCM_CFG_OFF) */

