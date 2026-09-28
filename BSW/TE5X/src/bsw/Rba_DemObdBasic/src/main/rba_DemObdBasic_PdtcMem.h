

#ifndef RBA_DEMOBDBASIC_PDTCMEM_H
#define RBA_DEMOBDBASIC_PDTCMEM_H

#include "rba_DemObdBasic_Types.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

boolean rba_DemObdBasic_PdtcMem_IsPdtc(Dem_DtcIdType DtcId);
boolean rba_DemObdBasic_PdtcMem_IsEvtPdtc(Dem_EventIdType EventId);
boolean rba_DemObdBasic_PdtcMem_IsPdtcServ0A(Dem_DtcIdType DtcId);
boolean rba_DemObdBasic_PdtcMem_GetNextFilteredDtcId(rba_DemObdBasic_PdtcMemIterator* pdtcLocIt, Dem_DtcIdType* dtcId);

void rba_DemObdBasic_PdtcMem_Init(void);
void rba_DemObdBasic_PdtcMem_ClearAllPDTC(void);
void rba_DemObdBasic_PdtcMem_InitCheckNvM(void);
void rba_DemObdBasic_PdtcMem_Clear(void);
void rba_DemObdBasic_PdtcMem_HandleIgnitionCycle(void);
void rba_DemObdBasic_PdtcMem_StartDrivingCycle(void);
void rba_DemObdBasic_PdtcMem_StartPFCCycle(void);
void rba_DemObdBasic_PdtcMem_MainFunction(void);
void rba_DemObdBasic_PdtcMem_StoreNewEventId(Dem_EventIdType EventId);
void rba_DemObdBasic_PdtcMem_DeleteEvent (Dem_EventIdType EventId);


#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif

