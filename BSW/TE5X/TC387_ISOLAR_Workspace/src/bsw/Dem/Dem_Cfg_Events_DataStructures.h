
/********************************************************************************************************************/
/*                                                                                                                  */
/* TOOL-GENERATED SOURCECODE, DO NOT CHANGE                                                                         */
/*                                                                                                                  */
/********************************************************************************************************************/

#ifndef DEM_CFG_EVENTS_DATASTRUCTURES_H
#define DEM_CFG_EVENTS_DATASTRUCTURES_H

#include "Dem_Internal.h"
#include "Dem_Lib.h"
#include "rba_DiagLib.h"
#include "Dem_Lock.h"
#include "Dem_Cfg_StorageCondition.h"
#include "Dem_Cfg_EnableCondition.h"
#include "Dem_Cfg_EventsCallback.h"
#include "Dem_Cfg_ExtPrototypes.h"
#include "Rte_Dem.h"

typedef Std_ReturnType (*Dem_EvtClearAllowedFncType)(boolean *Allowed);

#define DEM_RECOV    (1u)
#define DEM_NOTREC   (0u)

#define DEM_DEBOUNCE_RESET    (1u)
#define DEM_DEBOUNCE_FREEZE   (0u)

#define DEM_NO_TF_RESET   (1u)
#define DEM_TF_RESET      (0u)

#define DEM_ONLY_THIS_CYCLE_AND_READINESS   (1u)
#define DEM_NO_STATUS_BYTE_CHANGE           (0u)

typedef struct {
	uint8 data2;  // AgingThreshold
	uint8 data3; // DebounceBehavior, IsRecoverable, RequestsWarningIndicator, IsEventDestPrimary, IsEventDestSecondary, IsEventDestMirror
} Dem_EvtParam_8Type;

typedef struct {
	uint32 data1; // AgingAllowed, Significance, OperationCycleID, AgingCycleID, FailureCycleID, InitialSuppressionStatus, DebounceMethodIndex, DebounceParamSettingIndex, AgingThresholdForTFSLC, FailureConfirmationThreshold, EventPriority, MaxNumberFreezeFrameRecords, IsFFPrestorageSupported, IsEventOBDRelevant
} Dem_EvtParam_32Type;

#define DEM_START_SEC_CONST
#include "Dem_MemMap.h"
extern const Dem_EvtParam_8Type Dem_EvtParam_8[501];
extern const Dem_EvtParam_32Type Dem_EvtParam_32[501];

LOCAL_INLINE uint8 Dem_EvtParam_GetDebounceBehavior(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETSINGLEBIT8(Dem_EvtParam_8[indx].data3, 0));
}

LOCAL_INLINE boolean Dem_EvtParam_GetIsRecoverable(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return RBA_DIAGLIB_ISBITSET8(Dem_EvtParam_8[indx].data3, 1);
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE boolean Dem_EvtParam_GetStoreTestFailedToNextOC(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return TRUE; /* feature deactivated */
}

LOCAL_INLINE boolean Dem_EvtParam_GetRequestsWarningIndicator(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return RBA_DIAGLIB_ISBITSET8(Dem_EvtParam_8[indx].data3, 2);
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE Dem_EventCategoryType Dem_EvtParam_GetCategory(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return 0; /* feature deactivated */
}

LOCAL_INLINE boolean Dem_EvtParam_GetIsEventDestPrimary(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return RBA_DIAGLIB_ISBITSET8(Dem_EvtParam_8[indx].data3, 3);
}

LOCAL_INLINE boolean Dem_EvtParam_GetIsEventDestSecondary(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return RBA_DIAGLIB_ISBITSET8(Dem_EvtParam_8[indx].data3, 4);
}

LOCAL_INLINE boolean Dem_EvtParam_GetIsEventDestMirror(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return RBA_DIAGLIB_ISBITSET8(Dem_EvtParam_8[indx].data3, 5);
}

LOCAL_INLINE boolean Dem_EvtParam_GetAgingAllowed(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return RBA_DIAGLIB_ISBITSET32(Dem_EvtParam_32[indx].data1, 0);
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE boolean Dem_EvtParam_GetIsGlobalFDCCallbackConfigured(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return FALSE; /* feature deactivated */
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE boolean Dem_EvtParam_GetTriggersDataChangedCallback(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return FALSE; /* feature deactivated */
}

LOCAL_INLINE uint8 Dem_EvtParam_GetSignificance(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETSINGLEBIT32(Dem_EvtParam_32[indx].data1, 1));
}

LOCAL_INLINE uint8 Dem_EvtParam_GetOperationCycleID(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETBITS32(Dem_EvtParam_32[indx].data1, 2, 3));
}

LOCAL_INLINE uint8 Dem_EvtParam_GetAgingCycleID(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETBITS32(Dem_EvtParam_32[indx].data1, 5, 3));
}

LOCAL_INLINE uint8 Dem_EvtParam_GetFailureCycleID(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETBITS32(Dem_EvtParam_32[indx].data1, 8, 3));
}

LOCAL_INLINE boolean Dem_EvtParam_GetInitialSuppressionStatus(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return RBA_DIAGLIB_ISBITSET32(Dem_EvtParam_32[indx].data1, 11);
}

LOCAL_INLINE uint8 Dem_EvtParam_GetDebounceMethodIndex(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETSINGLEBIT32(Dem_EvtParam_32[indx].data1, 12));
}

LOCAL_INLINE uint16 Dem_EvtParam_GetDebounceParamSettingIndex(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint16)(RBA_DIAGLIB_GETBITS32(Dem_EvtParam_32[indx].data1, 13, 9));
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE uint8 Dem_EvtParam_GetBufferTimeSFB(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return 0; /* feature deactivated */
}

LOCAL_INLINE uint8 Dem_EvtParam_GetAgingThreshold(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return Dem_EvtParam_8[indx].data2;
}

LOCAL_INLINE uint8 Dem_EvtParam_GetAgingThresholdForTFSLC(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETSINGLEBIT32(Dem_EvtParam_32[indx].data1, 22));
}

LOCAL_INLINE uint8 Dem_EvtParam_GetFailureConfirmationThreshold(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETBITS32(Dem_EvtParam_32[indx].data1, 23, 2));
}

LOCAL_INLINE uint8 Dem_EvtParam_GetEventPriority(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETBITS32(Dem_EvtParam_32[indx].data1, 25, 3));
}

LOCAL_INLINE uint8 Dem_EvtParam_GetMaxNumberFreezeFrameRecords(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return (uint8)(RBA_DIAGLIB_GETBITS32(Dem_EvtParam_32[indx].data1, 28, 2));
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE Dem_StoCoList Dem_EvtParam_GetStorageConditions(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return 0; /* feature deactivated */
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE Dem_EnCoList Dem_EvtParam_GetEnableConditions(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return 0; /* feature deactivated */
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE uint8 Dem_EvtParam_GetCallbackEventStatusChangedIndex(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return 0u; /* feature deactivated */
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE Dem_EvtClearAllowedFncType Dem_EvtParam_GetCallbackClearAllowed(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return NULL_PTR; /* feature deactivated */
}

/* MR12 RULE 2.7 VIOLATION: the parameter 'indx' is not used because the retrun value is the same for all indices due to the config, it is kept because the code calling the function is not config base but static */
LOCAL_INLINE uint8 Dem_EvtParam_GetClearAllowedBehavior(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return DEM_NO_STATUS_BYTE_CHANGE; /* feature deactivated */
}

LOCAL_INLINE boolean Dem_EvtParam_GetIsFFPrestorageSupported(
		Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return RBA_DIAGLIB_ISBITSET32(Dem_EvtParam_32[indx].data1, 30);
}

LOCAL_INLINE boolean Dem_EvtParam_GetIsEventOBDRelevant(Dem_EventIdType indx) {
	DEM_ASSERT_RANGECHECK((0 < indx) && (indx < 501));
	return RBA_DIAGLIB_ISBITSET32(Dem_EvtParam_32[indx].data1, 31);
}

#define DEM_STOP_SEC_CONST
#include "Dem_MemMap.h"

#endif

