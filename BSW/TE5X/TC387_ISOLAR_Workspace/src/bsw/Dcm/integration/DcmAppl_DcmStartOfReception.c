
#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"

#if(DCM_CALLAPPLICATIONONREQRX_ENABLED!=DCM_CFG_OFF)


#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/**
 * @ingroup DCM_TPL
 *  DcmAppl_StartOfReception :-\n
 *  This API is invoked to inform the application regarding the the reception of a new request.\n
 *  The SID and RXPduId is passed to the application which can be used for checking the request received and the
 *  PduId on which the request was received.
 *  @param[in]           idContext     : SID of the service which is running.\n
 *  @param[in]           DcmRxPduId    : RxPduId on which the Dcm_CopyRxData is called from the lower layer.\n
 *  @param[in]           RequestLength : Total Length of the request(inclusing the SID)\n
 *  @param[in]           RxBufferPtr   : Rx buffer where the request data is copied. The buffer will point to SID value\n
 *  @param[out]          None
 *  @retval              None
 */
void DcmAppl_StartOfReception(Dcm_IdContextType idContext ,
                                                     PduIdType DcmRxPduId,
                                                     PduLengthType RequestLength,
                                                     Dcm_MsgType RxBufferPtr)
{
    (void)idContext;
    (void)DcmRxPduId;
    (void)RequestLength;
    (void)RxBufferPtr;

}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif /* #if(DCM_CALLAPPLICATIONONREQRX_ENABLED!=DCM_CFG_OFF) */

