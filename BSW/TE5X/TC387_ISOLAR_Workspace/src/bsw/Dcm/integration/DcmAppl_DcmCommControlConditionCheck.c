
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
 * DcmAppl_DcmCommControlConditionCheck :-\n
 * This api will be called after the request length check for the UDS service Communication control(0x28) request.Dcm will pass the information from the request to this api.\n
 * Application can perform the condition checks and required actions if any.
 * @param[in]  ControlType_u8  :         control type requested
 * @param[in]  DataCommType_u8 :        communication type requested
 * @param[in]  RequestData     :        gives pointer to the request data at the subfunction position.
 * @param[in]  RequestLength   :        request length excluding Sid.
 * @param[out] dataNegRespCode_u8  :   pointer to update the negative response code
 * @retval     E_OK : If condition check is successfull
 * @retval     E_NOT_OK : If condition check is sunuccessfull
 */
Std_ReturnType DcmAppl_DcmCommControlConditionCheck(uint8 ControlType_u8,
                                                                 uint8 DataCommType_u8,
                                                                 const uint8 * RequestData,
                                                                 uint16 RequestLength,
                                                                 Dcm_NegativeResponseCodeType * dataNegRespCode_u8 )
{
    Std_ReturnType retVal_u8;
    retVal_u8 = E_OK;
    (void)(ControlType_u8);
    (void)(RequestData);
    (void)(RequestLength);

    if(DataCommType_u8 == 0x02)
    {
       *dataNegRespCode_u8 = 0x31;
       retVal_u8 = E_NOT_OK;
    }
    /*TESTCODE-START
    retVal_u8=DcmTest_DcmAppl_DcmCommControlConditionCheck(ControlType_u8,DataCommType_u8,RequestData,RequestLength,dataNegRespCode_u8);
    TESTCODE-END*/
    return (retVal_u8);
}

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif /* (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && ( DCM_CFG_DSP_COMMUNICATIONCONTROL_ENABLED != DCM_CFG_OFF) */
