

#ifndef RBA_DEMOBDBASIC_NVMCALLBACKS_H
#define RBA_DEMOBDBASIC_NVMCALLBACKS_H

#include "rba_DemObdBasic_Types.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

Std_ReturnType rba_DemObdBasic_PdtcMemWriteRamBlockToNvCallback(void* NvMBuffer);
Std_ReturnType rba_DemObdBasic_PdtcMemReadRamBlockFromNvCallback(void* NvMBuffer);

#if DEM_CFG_OBD_IUMPR
Std_ReturnType rba_DemObdBasic_IumprWriteRamBlockToNvCallback(void* NvMBuffer);
Std_ReturnType rba_DemObdBasic_IumprReadRamBlockFromNvCallback(void* NvMBuffer);
#endif

/* BSW-8793 */
#if DEM_CFG_OBD_DTR
Std_ReturnType rba_DemObdBasic_DtrWriteRamBlockToNvCallback(void* NvMBuffer);
Std_ReturnType rba_DemObdBasic_DtrReadRamBlockFromNvCallback(void* NvMBuffer);
#endif
/* END BSW-8793 */

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif

