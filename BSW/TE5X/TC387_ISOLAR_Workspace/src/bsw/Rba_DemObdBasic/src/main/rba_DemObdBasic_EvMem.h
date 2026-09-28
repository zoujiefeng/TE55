

#ifndef RBA_DEMOBDBASIC_EVMEM_H
#define RBA_DEMOBDBASIC_EVMEM_H

#include "rba_DemObdBasic_Types.h"

boolean rba_DemObdBasic_EvMem_GetNextFilteredDtcId(Dem_DTCFilterState* dtcFilter_p, Dem_DtcIdType* dtcId);
void rba_DemObdBasic_EvMem_SetMilCounter(uint16_least LocId, uint8 counter);
uint8 rba_DemObdBasic_EvMem_GetMilCounter(uint16_least LocId);
void rba_DemObdBasic_EvMem_SetFFTimeId(uint16_least LocId, uint32 ObdFFTimeId);
uint32 rba_DemObdBasic_EvMem_GetFFTimeId(uint16_least LocId);
void rba_DemObdBasic_EvMem_HandleDrivingCycleQualified(void);
boolean rba_DemObdBasic_EvMem_GetIsMilResetFlag(uint16_least LocId);
void rba_DemObdBasic_EvMem_SetMilResetFlag(uint16_least LocId, boolean state);
boolean rba_DemObdBasic_EvMem_IsClearAllowedForEvMemEntries(void);

#endif

