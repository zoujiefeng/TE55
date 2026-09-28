

#ifndef RBA_DEMOBDASIC_PRV_H
#define RBA_DEMOBDASIC_PRV_H

#include "Dem.h"
#include "Rte_Dem.h"

#include "rba_DemObdBasic.h"
#include "rba_DemObdBasic_Dem.h"
#include "rba_DemObdBasic_Dcm.h"

#include "rba_DemObdBasic_Event.h"
#include "rba_DemObdBasic_EvMem.h"
#include "rba_DemObdBasic_FreezeFrame.h"
#include "rba_DemObdBasic_Iumpr.h"
#include "rba_DemObdBasic_Mil.h"
#include "rba_DemObdBasic_NvmCallbacks.h"
#include "rba_DemObdBasic_PdtcMem.h"
#include "rba_DemObdBasic_Pid.h"
#include "rba_DemObdBasic_Ratio.h"
#include "rba_DemObdBasic_DenCondition.h"
#include "rba_DemObdBasic_Readiness.h"
#include "rba_DemObdBasic_OperationCycle.h"
/* BSW-8793 */
#include "rba_DemObdBasic_Dtr_Prv.h"
/* END BSW-8793 */
/* BSW-13093 */
#include "rba_DemObdBasic_DistanceTimePid_Prv.h"
/* END BSW-13093 */

#include "Dem_DTCs.h"
#include "Dem_EventStatus.h"

#include "rba_DiagLib.h"

#if DEM_CFG_OBD_IUMPR

#if DEM_CFG_IUMPR_FIM
#include "FiM.h"
#endif

#if DEM_CFG_IUMPR_GRAPH
#include "Dem_Dependencies.h"
#endif

#endif

#include "Mfx.h"


#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

#define DEM_OBD_DTC_INVALID   (0x00000000u)
#define DEM_OBD_DTC_MASK      (0x00FFFF00u)

DEM_INLINE boolean rba_DemObdBasic_Dtc_IsEmissionRelated(Dem_DtcIdType DtcId)
{
    return ((Dem_isDtcIdValid(DtcId)) && (Dem_Cfg_Dtc_GetKind(DtcId) == DEM_DTC_KIND_EMISSION_REL_DTCS));
}

DEM_INLINE boolean rba_DemObdBasic_Event_IsEmissionRelated(Dem_EventIdType EventId)
{
    return (rba_DemObdBasic_Dtc_IsEmissionRelated(Dem_DtcIdFromEventId(EventId)));
}


/* PDTCMEM ITERATOR */
DEM_INLINE void rba_DemObdBasic_PdtcMem_LocIteratorNew(rba_DemObdBasic_PdtcMemIterator *It)
{
    *It = 0;
}

DEM_INLINE boolean rba_DemObdBasic_PdtcMem_LocIteratorIsValid(const rba_DemObdBasic_PdtcMemIterator *It)
{
    return (*It < DEM_CFG_PERMANENT_MEMORY_SIZE);
}

DEM_INLINE void rba_DemObdBasic_PdtcMem_LocIteratorNext(rba_DemObdBasic_PdtcMemIterator *It)
{
    (*It)++;
}

DEM_INLINE void rba_DemObdBasic_PdtcMem_LocIteratorInvalidate(rba_DemObdBasic_PdtcMemIterator *It)
{
    *It = DEM_CFG_PERMANENT_MEMORY_SIZE;
}

DEM_INLINE uint16_least rba_DemObdBasic_PdtcMem_LocIteratorCurrent(const rba_DemObdBasic_PdtcMemIterator *It)
{
    return (*It);
}

/* OBD SUPPORT */
DEM_INLINE boolean rba_DemObdBasic_IsObdMasterEcu(void)
{
    return (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU);
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif
