

#ifndef RBA_DEMOBDBASIC_DEMNVDATA_H
#define RBA_DEMOBDBASIC_DEMNVDATA_H

#include "Dem_Array.h"
#include "rba_DemObdBasic_PdtcMemTypes.h"
#include "rba_DemObdBasic_Cfg_Main.h"
#include "rba_DemObdBasic_IumprTypes.h"
#include "rba_DemObdBasic_Cfg_Iumpr.h"
/* BSW-8793 */
#include "rba_DemObdBasic_DtrTypes.h"
/* END BSW-8793 */

#define DEM_START_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"

DEM_ARRAY_DECLARE(rba_DemObdBasic_PdtcMemType, rba_DemObdBasic_PdtcMem, DEM_CFG_PERMANENT_MEMORY_SIZE);

#if DEM_CFG_OBD_IUMPR

extern rba_DemObdBasic_IumprNvDataType rba_DemObdBasic_IumprNvData;
#endif

#define DEM_STOP_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"

#endif /* RBA_DEMOBDBASIC_DEMNVDATA_H */
