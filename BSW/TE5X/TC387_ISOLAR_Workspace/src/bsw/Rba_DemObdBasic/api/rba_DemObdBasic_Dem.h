

#ifndef RBA_DEMOBDBASIC_DEM_H
#define RBA_DEMOBDBASIC_DEM_H

#include "rba_DemObdBasic_Types.h"
#include "rba_DemObdBasic_DemNvData.h"

/* Needed for DTCFilterState Type */
#include "Dem_DTCFilter.h"


/* Main */
void rba_DemObdBasic_Init(void);
void rba_DemObdBasic_InitCheckPlausability(void);
void rba_DemObdBasic_InitCheckNvm(void);
void rba_DemObdBasic_MainFunction(void);
void rba_DemObdBasic_Shutdown(void);
void rba_DemObdBasic_Clear(Dem_DTCOriginType DTCOrigin);

/* MiL */
Dem_IndicatorStatusType rba_DemObdBasic_Mil_GetIndicatorStatusExternal(void);

/* FF */
void rba_DemObdBasic_FF_CaptureFF(Dem_EventIdType EventId, uint8* dest, uint16 destSize);
Std_ReturnType rba_DemObdBasic_FF_RetrievePidData(uint8 PID, uint8* DestBuffer, uint16* BufSize, Dem_EvMemEventMemoryType* EventMemory);
void rba_DemObdBasic_FF_SetObdFFAvailable(uint16_least LocId, boolean FFAvailable);
boolean rba_DemObdBasic_FF_IsObdFFAvailable(const Dem_EvMemEventMemoryType* EventMemory);

/* OperationCycle */
void rba_DemObdBasic_SetCycleQualified(Dem_OperationCycleIdType OperationCycleId);
void rba_DemObdBasic_StartOperationCycle (Dem_OperationCycleList currentTriggers, Dem_OperationCycleList currentQualified);

/* Event */
boolean rba_DemObdBasic_Event_IsRequestingMil(Dem_EventIdType EventId);

/* EvMem */
uint16_least rba_DemObdBasic_EvMem_GetLocationOfOBDFreezeFrame (void);
boolean rba_DemObdBasic_EvMem_IsTriggerObdFreezeFrame (Dem_EventIdType EventId, uint16_least MemId, uint16_least StatusOld, uint16_least StatusNew);
void rba_DemObdBasic_EvMem_CopyFreezeFrame (Dem_EventIdType EventId, uint8* dest, uint16 destSize, const uint8* src);
void rba_DemObdBasic_EvMem_CommonMilDebModifyFailureCounter (uint16_least LocId, uint16_least MemId, Dem_EventIdType EventId, uint16_least *failureCounter);
boolean rba_DemObdBasic_EvMem_IsAgingOfLocationAllowed (uint16_least LocId);
boolean rba_DemObdBasic_EvMem_IsDisplaceEventMemoryLocAllowed (Dem_EventIdType NewEventId, uint16_least LocId, uint16_least LocIdObdServ02);
void rba_DemObdBasic_EvMem_HandleImmediateAgeing(Dem_EventIdType EventId);
void rba_DemObdBasic_EvMem_StatusNotificationPending (uint16_least LocId, Dem_EventIdType EventId);
void rba_DemObdBasic_EvMem_StatusNotificationThresholdReached (uint16_least LocId, Dem_EventIdType EventId);
void rba_DemObdBasic_EvMem_StatusNotificationConfirmed (uint16_least LocId, Dem_EventIdType EventId);
boolean rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd(uint16_least Status);

/* BSW-12998 */
#if (DEM_CFG_OBD_CONSIDER_MILCNT == DEM_CFG_OBD_CONSIDER_MILCNT_ON)
boolean rba_DemObdBasic_EvMem_IsEmissionRelated(Dem_EventIdType EventId);
uint16 rba_DemObdBasic_EvMem_GetFFHealedId(uint16_least LocId);
#endif
/* END BSW-12998 */

/* NvM */
void rba_DemObdBasic_NvMInit(void);
void rba_DemObdBasic_NvMShutdown(void);

/* Dtc */
Dem_DtcCodeType rba_DemObdBasic_Dtc_GetCode(Dem_DtcIdType dtcId);
Std_ReturnType rba_DemObdBasic_Dtc_GetNextFilteredDTC(Dem_DTCFilterState* dtcFilter_p, uint32* DTC, uint8* DTCStatus);
void rba_DemObdBasic_Dtc_DtcFilterInit(Dem_DTCFilterState* dtcFilter_p);
void rba_DemObdBasic_Dtc_SetDTCFilter(Dem_DTCFilterState* dtcFilter_p, Dem_DTCOriginType DTCOrigin);
boolean rba_DemObdBasic_Dtc_DTCFilterMatches (Dem_DtcIdType dtcId, const Dem_DTCFilterState* DemDTCFilter);

#endif
