
#include "Dcm_Cfg_Prot.h"
#include "DcmDspUds_TransferData_Inf.h"
#include "Rte_Dcm.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/

#if ((DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF) && (DCM_CFG_DSP_TRANSFERDATA_ENABLED!= DCM_CFG_OFF))
#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

/**
 * @ingroup DCM_TPL
 * DcmAppl_DcmMemSizeCheckForTransferData :-\n
 * DCM shall call this callout function to allow application to do checks before calling DcmAppl_Dcm_ReadMemory/DcmAppl_Dcm_WriteMemory to read/write the data in the TransferData service.\n
 * The application can do the below checks and update the ErrorCode parameter accordingly if the checks fail -\n
 * a) The requestSequenceError(NRC 0x24) check for both Uplaod and Download of data in case the data is compressed.\n
 * b) The transferDataSuspended(NRC 0x71)check only for download of data in case the data is compressed.\n
 * c) The transferDataSuspended(NRC 0x71)check only for download of data in case the data is not compressed but the parameter in the configuration DcmDspTransferDataMaxLenChkRequired is set to FALSE.
 *
 * @param[in]            dataCompressionMethod_u8             : Compression Method received in the previous RequestUplaod/RequestDownload request.
 * @param[in]            memoryId                             : The memoryIdentifier of the memory block being read, requested in the RequestUpload service
 * @param[in]            TransferRequestParameterRecordLength : The length of the transferRequestParameterRecord in the request.
 *                                                              Will be passed as 0 in case TransferRequestParameterRecord is not present in the request
 * @param[in]            dataTransferDirection_ten            -: The direction of transfer. Possible values : DCM_UPLOAD, DCM_DOWNLOAD
 *
 * @param[inout]         ErrorCode            : The Errorcode to be updated by the application if there are any error
 *
 * @retval               None
 *
 */
void DcmAppl_DcmMemSizeCheckForTransferData    (
                                                    uint8 dataCompressionMethod_u8,
                                                    uint8 dataMemoryId_u8,
                                                    uint32 dataTransferRequestParameterRecordLength_u32,
                                                    Dcm_TrasferDirection_en dataTransferDirection_ten,
                                                    Dcm_NegativeResponseCodeType * dataErrorCode_u8
                                                    )
{
    (void)dataCompressionMethod_u8;
    (void)dataMemoryId_u8;
    (void)dataTransferRequestParameterRecordLength_u32;
    (void)dataTransferDirection_ten;
    *dataErrorCode_u8 = 0;
    /*TESTCODE-START
    (void)DcmTest_DcmAppl_DcmMemSizeCheckForTransferData(dataCompressionMethod_u8,
                                                                            dataMemoryId_u8,
                                                                            dataTransferRequestParameterRecordLength_u32,
                                                                            dataTransferDirection_ten,
                                                                            dataErrorCode_u8);
    TESTCODE-END*/
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif


