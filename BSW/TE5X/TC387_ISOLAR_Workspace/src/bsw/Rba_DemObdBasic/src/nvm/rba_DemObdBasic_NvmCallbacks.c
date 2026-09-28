

#include "rba_DemObdBasic_Prv.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

/*  OBD: Nvm Explicit Synchronization: */
/* MR12 RULE 8.13 VIOLATION: the parameter won't be set to const because MISRA does not recognise the manipulation of the pointer through the DEM_MEMCPY macro */
Std_ReturnType rba_DemObdBasic_PdtcMemWriteRamBlockToNvCallback(void* NvMBuffer)
{
    /* MR12 RULE 11.5 VIOLATION: cast to void necessary for memcopy operation */
    DEM_MEMCPY(NvMBuffer, &rba_DemObdBasic_PdtcMem[0], DEM_SIZEOF_VAR(rba_DemObdBasic_PdtcMem));
    return E_OK;
}

/* MR12 RULE 8.13 VIOLATION: the parameter won't be set to const because MISRA does not recognise the manipulation of the pointer through the DEM_MEMCPY macro */
Std_ReturnType rba_DemObdBasic_PdtcMemReadRamBlockFromNvCallback(void* NvMBuffer)
{
    /* MR12 RULE 11.5 VIOLATION: cast to void necessary for memcopy operation */
    DEM_MEMCPY(&rba_DemObdBasic_PdtcMem[0], NvMBuffer, DEM_SIZEOF_VAR(rba_DemObdBasic_PdtcMem));
    return E_OK;
}

#if DEM_CFG_OBD_IUMPR
/* MR12 RULE 8.13 VIOLATION: the parameter won't be set to const because MISRA does not recognise the manipulation of the pointer through the DEM_MEMCPY macro */
Std_ReturnType rba_DemObdBasic_IumprWriteRamBlockToNvCallback(void* NvMBuffer)
{
    /* MR12 RULE 11.5 VIOLATION: cast to void necessary for memcopy operation */
    DEM_MEMCPY(NvMBuffer, &rba_DemObdBasic_IumprNvData, DEM_SIZEOF_VAR(rba_DemObdBasic_IumprNvData));
    return E_OK;
}

/* MR12 RULE 8.13 VIOLATION: the parameter won't be set to const because MISRA does not recognise the manipulation of the pointer through the DEM_MEMCPY macro */
Std_ReturnType rba_DemObdBasic_IumprReadRamBlockFromNvCallback(void* NvMBuffer)
{
    /* MR12 RULE 11.5 VIOLATION: cast to void necessary for memcopy operation */
    DEM_MEMCPY(&rba_DemObdBasic_IumprNvData, NvMBuffer, DEM_SIZEOF_VAR(rba_DemObdBasic_IumprNvData));
    return E_OK;
}
#endif

/* BSW-8793 */
#if DEM_CFG_OBD_DTR
/* [$DD_BSWCODE 17262] */
Std_ReturnType rba_DemObdBasic_DtrWriteRamBlockToNvCallback(void* NvMBuffer)
{
    DEM_MEMCPY(NvMBuffer, &rba_DemObdBasic_DtrData, DEM_SIZEOF_TYPE(rba_DemObdBasic_DtrDataType));
    return E_OK;
}
/* [$DD_BSWCODE 17261] */
Std_ReturnType rba_DemObdBasic_DtrReadRamBlockFromNvCallback(void* NvMBuffer)
{
    DEM_MEMCPY(&rba_DemObdBasic_DtrData, NvMBuffer, DEM_SIZEOF_TYPE(rba_DemObdBasic_DtrDataType));
    return E_OK;
}
#endif
/* END BSW-8793 */

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"
