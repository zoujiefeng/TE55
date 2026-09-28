
#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"



#if(DCM_PAGEDBUFFER_ENABLED != DCM_CFG_OFF)
#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
/**
 * @ingroup DCM_TPL
 *  DcmAppl_DcmCancelPagedBufferProcessing :-\n
 *  This API indicates the service to stop paged buffer transmission.This API has to call ini function of the service.
 *  @param[in]       idContext : SID of the service which is running.\n
 *  @param[out]      None
 *  @retval          None
 */
void DcmAppl_DcmCancelPagedBufferProcessing(Dcm_IdContextType idContext)
{

#if (DCM_CFG_DSPUDSSUPPORT_ENABLED != DCM_CFG_OFF)
#if ((DCM_CFG_DSP_READDATABYIDENTIFIER_ENABLED != DCM_CFG_OFF) && (DCM_CFG_RDBIPAGEDBUFFERSUPPORT != DCM_CFG_OFF))
    /* If RDBI service is active */
    if(idContext == DCM_DSP_SID_READDATABYIDENTIFIER)
    {
        /* Call the RDBI Ini function */
        Dcm_Dsp_RdbiIni();
    }

#endif
#if ((DCM_CFG_DSP_READDTCINFORMATION_ENABLED != DCM_CFG_OFF) && (DCM_CFG_RDTCPAGEDBUFFERSUPPORT != DCM_CFG_OFF))
    /* If RDTC service is active */
    if(idContext == DCM_DSP_SID_READDTCINFORMATION)
    {
        /* Call the RDTC Ini function */
        Dcm_Dsp_ReadDTCInfo_Ini();
    }
#else
    (void)(idContext);
#endif
#else
    (void)(idContext);
#endif
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#endif

