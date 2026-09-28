
#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"


#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/**
 *  @ingroup DCM_TPL
 *  DcmAppl_ConfirmationRespPend :-\n
 *  This API confirms the successful transmission of waitpend response.
 *
 *  @param[in]       status :  A Status indication about confirmation\n
 *  @param[out]      None
 *  @retval          None
 *
 */
void DcmAppl_ConfirmationRespPend(
                                                    Dcm_ConfirmationStatusType status
                                                )
{
#if (DCM_CFG_RBA_DIAGADAPT_SUPPORT_ENABLED != DCM_CFG_OFF)
    rba_DiagAdapt_ConfirmationRespPend(status);
#else
(void)status;
#endif
}

#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
