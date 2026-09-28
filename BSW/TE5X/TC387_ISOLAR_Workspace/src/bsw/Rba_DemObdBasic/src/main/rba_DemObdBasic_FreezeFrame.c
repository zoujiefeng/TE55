

#include "rba_DemObdBasic_Prv.h"

#include "Dem_Main.h"
#include "Dem_EnvMain.h"
#include "Dem_Cfg_Events_DataStructures.h"

#define RBA_DEMOBDBASIC_FF_MAXOBDFFTIMEID    (0xFFFFFFFFuL)

typedef struct
{
    uint8 dataElementIndex;
    uint8 identifier;
} rba_DemObdBasic_PidType;

#define DEM_START_SEC_CONST
#include "Dem_MemMap.h"

static const uint8 rba_DemObdBasic_Pid2DataElement[] = RBA_DEMOBDBASIC_CFG_PID2DATAELEMENT;
/* MR12 RULE 20.7 VIOLATION: Initialization MACRO need not be parenthesized  */
static DEM_ARRAY_DEFINE_CONST(rba_DemObdBasic_PidType, rba_DemObdBasic_Pid, DEM_CFG_OBD_PID_ARRAY_LENGTH, RBA_DEMOBDBASIC_CFG_PID);

#define DEM_STOP_SEC_CONST
#include "Dem_MemMap.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"


static uint16 rba_DemObdBasic_FF_GetRawByteSize (void)
{
    return DEM_CFG_OBD_FREEZEFRAME_LENGTH;
}

static uint8* rba_DemObdBasic_FF_GetPIDDataPtr(Dem_EvMemEventMemoryType* EventMemory)
{
    return (Dem_EvMemGetEventMemDataByPtr(EventMemory)
            + Dem_EnvEDGetRawByteSize(Dem_Cfg_EnvEventId2EnvData[Dem_EvMemGetEventMemEventIdByPtr(EventMemory)].extDataId)
            + (Dem_EvtParam_GetMaxNumberFreezeFrameRecords(Dem_EvMemGetEventMemEventIdByPtr(EventMemory))
                    * Dem_EnvFFGetRawByteSize(Dem_Cfg_EnvEventId2EnvData[Dem_EvMemGetEventMemEventIdByPtr(EventMemory)].freezeFrameId)));
}

static uint16_least rba_DemObdBasic_FF_GetFFOrReaderCopyLocId(boolean SearchInReaderCopy)
{
    uint16_least LocId;
    uint16_least LocIdIt;
    uint16_least FFLocId = DEM_EVMEM_INVALID_LOCID;
    uint16_least MemId = DEM_CFG_EVMEM_MEMID_PRIMARY;
    uint16_least Status;
    uint16 Prio = 0;
    uint16 MaxPrio = 0xFFFF;
    uint32 TimeId = RBA_DEMOBDBASIC_FF_MAXOBDFFTIMEID;
    uint32 MinTimeId = RBA_DEMOBDBASIC_FF_MAXOBDFFTIMEID;
/* BSW-12998 */
#if (DEM_CFG_OBD_CONSIDER_MILCNT == DEM_CFG_OBD_CONSIDER_MILCNT_ON)
    uint8 obdMilCounter = 0;
    /* [$DD_BSWCODE 34699] */
    uint16 MaxPrio_Pending = 0xFFFF;
    uint32 MinTimeId_Pending = RBA_DEMOBDBASIC_FF_MAXOBDFFTIMEID;
    uint16_least FFLocId_Pending = DEM_EVMEM_INVALID_LOCID;
	/* [$DD_BSWCODE 40520] */
    uint16 MaxPrio_Confirmed = 0xFFFF;
    uint32 MinTimeId_Confirmed = RBA_DEMOBDBASIC_FF_MAXOBDFFTIMEID;
    uint16_least FFLocId_Confirmed = DEM_EVMEM_INVALID_LOCID;
	/* [$DD_BSWCODE 40519] */
    uint16 currentHealedId_u16 = 0u;
    uint16 MaxHealedId_u16 = 0u;
    uint16_least FFLocId_LatestHealed = DEM_EVMEM_INVALID_LOCID;
#endif
/* END BSW-12998 */

    for    (Dem_EvMemEventMemoryLocIteratorNew    (&LocIdIt, MemId);
            Dem_EvMemEventMemoryLocIteratorIsValid(&LocIdIt, MemId);
            Dem_EvMemEventMemoryLocIteratorNext   (&LocIdIt, MemId))
    {
        if (SearchInReaderCopy)
        {
            if (Dem_LibGetParamBool(DEM_CFG_EVMEM_READ_FROM_DIFFERENT_TASK))
            {
                DEM_ASSERT_ISLOCKED();
            }
            LocId = Dem_EvMemLocId2ReaderCopyLocId(LocIdIt);
        }
        else
        {
            LocId = LocIdIt;
        }

        Status = Dem_EvMemGetEventMemStatus(LocId);
        /* MR12 RULE 13.5 VIOLATION: the function "rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd" does not have any persistent side effects */
        if (       (Dem_EvMemIsStored(Status))
                && (rba_DemObdBasic_Dtc_IsEmissionRelated(Dem_DtcIdFromEventId(Dem_EvMemGetEventMemEventId(LocId))))
                && ((rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd(Status))
#if (DEM_CFG_OBD_FREEZEFRAME_VISIBILITY == DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_PENDING_AND_CONFIRMED)
                        || ((Status & DEM_EVMEM_STSMASK_PENDING) == DEM_EVMEM_STSMASK_PENDING)
#endif
                ) && (rba_DemObdBasic_FF_IsObdFFAvailable(&Dem_EvMemEventMemory[LocId]))
        )
        {
            Prio = ((uint16)(Dem_EvtParam_GetEventPriority(Dem_EvMemGetEventMemEventId(LocId))) << 8);


            TimeId = rba_DemObdBasic_EvMem_GetFFTimeId(LocId);
/* BSW-12998 */
#if(DEM_CFG_OBD_CONSIDER_MILCNT == DEM_CFG_OBD_CONSIDER_MILCNT_OFF)
            if (Prio < MaxPrio)
            {
                /* choose location with high prio freeze frame */
                MaxPrio = Prio;
                MinTimeId = TimeId;
                FFLocId = LocId;
            }
            else if (Prio == MaxPrio)
            {
                if (TimeId <= MinTimeId)
                {
                    /* same priority: chose older confirmed entry */
                    MaxPrio = Prio;
                    MinTimeId = TimeId;
                    FFLocId = LocId;
                }
            }
            else
            {
                /* ignore entry if prio is lower */
            }
/* BSW-12998 */
#endif

/* BSW-12998 */
#if(DEM_CFG_OBD_CONSIDER_MILCNT == DEM_CFG_OBD_CONSIDER_MILCNT_ON)
            obdMilCounter = rba_DemObdBasic_EvMem_GetMilCounter(LocId);
            /* Seeking for max priority of PENDING (but not healed) LocId */
            if (obdMilCounter == 0)
            {
#if (DEM_CFG_OBD_FREEZEFRAME_VISIBILITY == DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_PENDING_AND_CONFIRMED)
				/* [$DD_BSWCODE 34699] */
                if ((Status & DEM_EVMEM_STSMASK_PENDING) == DEM_EVMEM_STSMASK_PENDING)
                {
                    if (Prio < MaxPrio_Pending)
                    {
                        MaxPrio_Pending = Prio;
                        MinTimeId_Pending = TimeId;
                        FFLocId_Pending = LocId;
                    }
                    else if (Prio == MaxPrio_Pending)
                    {
                        if (TimeId <= MinTimeId_Pending)
                        {
                            MaxPrio_Pending = Prio;
                            MinTimeId_Pending = TimeId;
                            FFLocId_Pending = LocId;
                        }
                    }
                    else
                    {
                        /* ignore entry if prio is lower */
                    }
                }
                else
                {
#endif
					/* [$DD_BSWCODE 40519] */
                    if ((Status & DEM_EVMEM_STSMASK_TESTFAILED_TFC) != DEM_EVMEM_STSMASK_TESTFAILED_TFC) /* Seeking for max priorrity of HEALED LocId */
                    {
                        currentHealedId_u16 = rba_DemObdBasic_EvMem_GetFFHealedId(LocId);
                        if (MaxHealedId_u16 < currentHealedId_u16)
                        {
                            MaxHealedId_u16 = currentHealedId_u16;
                            FFLocId_LatestHealed = LocId;
                        }
                    }
                    else {}
#if (DEM_CFG_OBD_FREEZEFRAME_VISIBILITY == DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_PENDING_AND_CONFIRMED)
                }
#endif
            }
            else /* [$DD_BSWCODE 40520] *//* Seeking for max priority of CONFIRMED LocId */
            {
                if (Prio < MaxPrio_Confirmed)
                {
                    MaxPrio_Confirmed = Prio;
                    MinTimeId_Confirmed = TimeId;
                    FFLocId_Confirmed = LocId;
                }
                else if (Prio == MaxPrio_Confirmed)
                {
                    if (TimeId <= MinTimeId_Confirmed)
                    {
                        MaxPrio_Confirmed = Prio;
                        MinTimeId_Confirmed = TimeId;
                        FFLocId_Confirmed = LocId;
                    }
                }
                else
                {
                    /* ignore entry if prio is lower */
                }
            }
#endif
/* END BSW-12998 */
        }
    }
/* BSW-12998 */
#if (DEM_CFG_OBD_CONSIDER_MILCNT == DEM_CFG_OBD_CONSIDER_MILCNT_ON)
	/* [$DD_BSWCODE 40522] */
    if ((FFLocId_Pending != DEM_EVMEM_INVALID_LOCID) || (FFLocId_Confirmed != DEM_EVMEM_INVALID_LOCID)) 
    /* This check includes: both FFLocId_Pending and FFLocId_Confirmed are found or
                            FFLocId_Pending is found but not FFLocId_Confirmed or 
                            FFLocId_Confirmed is found but not FFLocId_Pending */
    {
        /* Higher priority between confirmed and pending LocId - lower value is higher priority */
        if (MaxPrio_Confirmed <= MaxPrio_Pending)
        {
            MaxPrio = MaxPrio_Confirmed;
            MinTimeId = MinTimeId_Confirmed;
            FFLocId = FFLocId_Confirmed;
        }
        else
        {
            MaxPrio = MaxPrio_Pending;
            MinTimeId = MinTimeId_Pending;
            FFLocId = FFLocId_Pending;
        }
    }
    else /* [$DD_BSWCODE 40521] *//* both FFLocId_Pending and FFLocId_Confirmed are not found, so this case is for latest healed*/
    {
        FFLocId = FFLocId_LatestHealed;
    }
#endif
/* END BSW-12998 */
    return FFLocId;
}

uint16_least rba_DemObdBasic_FF_GetFFLocation (void)
{
    return rba_DemObdBasic_FF_GetFFOrReaderCopyLocId(FALSE);
}

/* MR12 RULE 8.13 VIOLATION: MISRA does not recognize the manipulation of DestBuffer through the DEM_MEMCPY macro */
Std_ReturnType rba_DemObdBasic_FF_RetrievePidData (uint8 PID, uint8* DestBuffer, uint16* BufSize, Dem_EvMemEventMemoryType* EventMemory)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint8* pidDataPtr;
    uint8 pidIt, pidDataIt;
    uint16 pidDataSize;

    pidDataSize = 0;

    /* find the starting address of OBD freeze frame*/
    pidDataPtr = rba_DemObdBasic_FF_GetPIDDataPtr(EventMemory);

    for (pidIt = 1; pidIt < DEM_CFG_OBD_PID_ARRAY_LENGTH; pidIt++)
    {
        /* Search for the requested PID in configuration list. Abstract the PID number from PID */
        if (rba_DemObdBasic_Pid[pidIt].identifier == PID)
        {
            for (pidDataIt = rba_DemObdBasic_Pid[pidIt - 1].dataElementIndex; pidDataIt < rba_DemObdBasic_Pid[pidIt].dataElementIndex; pidDataIt++)
            {
                pidDataSize += Dem_Cfg_EnvDataElement[rba_DemObdBasic_Pid2DataElement[pidDataIt]].Size;
            }

            if (*BufSize >= pidDataSize)
            {
                *BufSize = pidDataSize;
                DEM_MEMCPY(DestBuffer, pidDataPtr, pidDataSize);
                retVal = E_OK;
            }
            else
            {
                retVal = E_NOT_OK;
            }

            break;
        }
        else
        {
            for (pidDataIt = rba_DemObdBasic_Pid[pidIt - 1].dataElementIndex; pidDataIt < rba_DemObdBasic_Pid[pidIt].dataElementIndex; pidDataIt++)
            {
                pidDataPtr = pidDataPtr + Dem_Cfg_EnvDataElement[rba_DemObdBasic_Pid2DataElement[pidDataIt]].Size;
            }
        }
    }

    return retVal;
}



void rba_DemObdBasic_FF_SetNewTimeId (uint16_least LocId)
{
    uint16_least MemId = DEM_CFG_EVMEM_MEMID_PRIMARY; /* for now only primary memory supported */
    uint16_least LocIdIt;
    uint32 MaxTimeId = 0;

    for (   Dem_EvMemEventMemoryLocIteratorNew    (&LocIdIt, MemId);
            Dem_EvMemEventMemoryLocIteratorIsValid(&LocIdIt, MemId);
            Dem_EvMemEventMemoryLocIteratorNext   (&LocIdIt, MemId))
    {
        /* MR12 RULE 13.5 VIOLATION: The function rba_DemObdBasic_EvMem_GettFFTime does not create any sideeffects */
        if (   (((Dem_EvMemGetEventMemStatus(LocIdIt) & DEM_EVMEM_STSMASK_CONFIRMED) == DEM_EVMEM_STSMASK_CONFIRMED)
#if (DEM_CFG_OBD_FREEZEFRAME_VISIBILITY == DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_PENDING_AND_CONFIRMED)
               || ((Dem_EvMemGetEventMemStatus(LocIdIt) & DEM_EVMEM_STSMASK_PENDING) == DEM_EVMEM_STSMASK_PENDING)
#endif
               )
               && (rba_DemObdBasic_EvMem_GetFFTimeId(LocIdIt) > MaxTimeId)
        )
        {
            MaxTimeId = rba_DemObdBasic_EvMem_GetFFTimeId(LocIdIt);
        }
    }

    /* overflow */
    if (MaxTimeId >= RBA_DEMOBDBASIC_FF_MAXOBDFFTIMEID)
    {
        for (   Dem_EvMemEventMemoryLocIteratorNew    (&LocIdIt, MemId);
                Dem_EvMemEventMemoryLocIteratorIsValid(&LocIdIt, MemId);
                Dem_EvMemEventMemoryLocIteratorNext   (&LocIdIt, MemId))
        {
            if (((Dem_EvMemGetEventMemStatus(LocIdIt) & DEM_EVMEM_STSMASK_CONFIRMED) == DEM_EVMEM_STSMASK_CONFIRMED)
#if (DEM_CFG_OBD_FREEZEFRAME_VISIBILITY == DEM_CFG_OBD_FREEZEFRAME_VISIBILITY_PENDING_AND_CONFIRMED)
                        || ((Dem_EvMemGetEventMemStatus(LocIdIt) & DEM_EVMEM_STSMASK_PENDING) == DEM_EVMEM_STSMASK_PENDING)
#endif
            )
            {
                rba_DemObdBasic_EvMem_SetFFTimeId(LocIdIt, 0);
            }
        }
        MaxTimeId = 0;
    }

    rba_DemObdBasic_EvMem_SetFFTimeId(LocId, MaxTimeId + 1u);
}


static void rba_DemObdBasic_FF_CapturePids (uint8 pidId, uint8** start, const uint8* end, const Dem_InternalEnvData *internalEnvData)
{
    uint16_least i;

    for (i = rba_DemObdBasic_Pid[pidId - 1].dataElementIndex; i < rba_DemObdBasic_Pid[pidId].dataElementIndex; i++)
    {
        Dem_EnvDACapture(rba_DemObdBasic_Pid2DataElement[i], start, end, internalEnvData);
    }
}

void rba_DemObdBasic_FF_CaptureFF (Dem_EventIdType EventId, uint8* dest, uint16 destSize)
{
    uint8* writepos;
    uint8 i;
    uint16 size;
    uint8 edId = Dem_Cfg_EnvEventId2EnvData[EventId].extDataId;
    uint8 ffId = Dem_Cfg_EnvEventId2EnvData[EventId].freezeFrameId;
    Dem_InternalEnvData internalEnvData;
    internalEnvData.eventId = EventId;
    internalEnvData.evMemLocation = NULL_PTR;

    DEM_ASSERT(Dem_isEventIdValid(EventId), DEM_DET_APIID_OBDENVCAPTUREFF,0);
    DEM_ASSERT((Dem_EnvEDGetRawByteSize (edId) + Dem_EnvFFGetRawByteSize (ffId) + rba_DemObdBasic_FF_GetRawByteSize()) <= destSize, DEM_DET_APIID_OBDENVCAPTUREFF, 1);

    writepos = dest + Dem_EnvEDGetRawByteSize(edId) + Dem_EnvFFGetRawByteSize(ffId);
    size = rba_DemObdBasic_FF_GetRawByteSize();

    for (i = 1; i < DEM_CFG_OBD_PID_ARRAY_LENGTH; i++)
    {
        rba_DemObdBasic_FF_CapturePids(i, &writepos, writepos + size, &internalEnvData);
    }
}

/* MR12 RULE 8.13 VIOLATION: MISRA does not recognize the manipulation of "dest" pointer through the DEM_MEMCPY macro */
static void rba_DemObdBasic_FF_CopyRaw (uint8* dest, uint16 bufsize, const uint8* src)
{
    const uint16 bytesize = rba_DemObdBasic_FF_GetRawByteSize();
    DEM_ASSERT(bytesize <= bufsize, DEM_DET_APIID_OBDENVFFCOPYRAW, 0);
    DEM_MEMCPY (dest, src, bytesize);
}

void rba_DemObdBasic_FF_CopyFF (Dem_EventIdType EventId, uint8* dest, uint16 destSize, const uint8* src)
{
    uint16 obdFFsize = rba_DemObdBasic_FF_GetRawByteSize();
    uint16 EDsize = Dem_EnvEDGetRawByteSize(Dem_Cfg_EnvEventId2EnvData[EventId].extDataId);
    uint16_least FFsize = Dem_EnvFFGetRawByteSize(Dem_Cfg_EnvEventId2EnvData[EventId].freezeFrameId);
    uint8* writepos = dest + EDsize + (Dem_EvtParam_GetMaxNumberFreezeFrameRecords(EventId) * FFsize);
    const uint8* obdFFpos = src + EDsize + FFsize;

    DEM_ASSERT(Dem_isEventIdValid(EventId), DEM_DET_APIID_ENVCOPYRAWFF,0);
    DEM_ASSERT((writepos + obdFFsize) <= (dest + destSize), DEM_DET_APIID_ENVCOPYRAWFF, 1);

    rba_DemObdBasic_FF_CopyRaw(writepos, obdFFsize, obdFFpos);
}

void rba_DemObdBasic_FF_SetObdFFAvailable(uint16_least LocId, boolean FFAvailable)
{
    Dem_EvMemEventMemory[LocId].ObdFreezeFrameAvailable = FFAvailable;
}

boolean rba_DemObdBasic_FF_IsObdFFAvailable(const Dem_EvMemEventMemoryType* EventMemory)
{
    return EventMemory->ObdFreezeFrameAvailable;
}

static Std_ReturnType rba_DemObdBasic_FF_GetReaderCopy(Dem_EvMemEventMemoryType* ReaderCopy)
{
    uint16_least LocId;
    Std_ReturnType retval;

    if (ReaderCopy == NULL_PTR)
    {
        return E_NOT_OK;
    }

    Dem_EvMemReaderCopiesEnterLock();
    { /* Critical section */
        /* Find location ID of the reader copy location */
        LocId = rba_DemObdBasic_FF_GetFFOrReaderCopyLocId(TRUE);
        if (Dem_EvMemIsReaderCopyLocIdValid(LocId))
        {
            /* Copy the contents of the reader copy location to the reader copy */
            *ReaderCopy = Dem_EvMemEventMemory[LocId];
            retval = E_OK;
        }
        else
        {
            retval = E_NOT_OK;
        }
    }
    Dem_EvMemReaderCopiesExitLock();

    return retval;
}

/* Optimization to avoid copy of whole memory location only to retrieve EventId for ObdFF */
static Std_ReturnType rba_DemObdBasic_FF_GetEventIdOfObdFF(Dem_EventIdType* EventId)
{
    uint16_least LocId;
    Std_ReturnType retval;

    Dem_EvMemReaderCopiesEnterLock();
    { /* Critical section */
        /* Find location ID of the reader copy location */
        LocId = rba_DemObdBasic_FF_GetFFOrReaderCopyLocId(TRUE);
        if (Dem_EvMemIsReaderCopyLocIdValid(LocId))
        {
            *EventId = Dem_EvMemGetEventMemEventId(LocId);
            retval = E_OK;
        }
        else
        {
            retval = E_NOT_OK;
        }
    }
    Dem_EvMemReaderCopiesExitLock();

    return retval;
}

/* MR12 RULE 8.13 VIOLATION: parameter not made const, as it is defined by AUTOSAR */
Std_ReturnType Dem_DcmReadDataOfOBDFreezeFrame (uint8 PID, uint8 DataElementIndexOfPID, uint8* DestBuffer, uint16* BufSize)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint8* pidDataPtr;
    uint8 pidIt, pidDataIt, pidDataIndex, pidDataSize;

    Dem_EvMemEventMemoryType ReaderCopy;

    if (rba_DemObdBasic_FF_GetReaderCopy(&ReaderCopy) != E_OK)
    {
        /* no confirmed DTC found */
        *BufSize = 0;
        retVal = E_OK;
    }
    else
    {
        pidDataPtr = rba_DemObdBasic_FF_GetPIDDataPtr(&ReaderCopy);

        for (pidIt = 1; pidIt < DEM_CFG_OBD_PID_ARRAY_LENGTH; pidIt++)
        {
            if (rba_DemObdBasic_Pid[pidIt].identifier == PID)
            {
                pidDataIndex = rba_DemObdBasic_Pid[pidIt - 1].dataElementIndex;

                for (pidDataIt = rba_DemObdBasic_Pid[pidIt - 1].dataElementIndex; pidDataIt < rba_DemObdBasic_Pid[pidIt].dataElementIndex; pidDataIt++)
                {
                    pidDataSize = Dem_Cfg_EnvDataElement[rba_DemObdBasic_Pid2DataElement[pidDataIt]].Size;

                    if ((pidDataIt - pidDataIndex) == DataElementIndexOfPID)
                    {
                        if (*BufSize >= pidDataSize)
                        {
                            *BufSize = pidDataSize;
                            DEM_MEMCPY(DestBuffer, pidDataPtr, pidDataSize);
                            retVal = E_OK;
                        }
                        break;
                    }
                    else
                    {
                        pidDataPtr = pidDataPtr + pidDataSize;
                    }
                }
                break;
            }
            else
            {
                for (pidDataIt = rba_DemObdBasic_Pid[pidIt - 1].dataElementIndex; pidDataIt < rba_DemObdBasic_Pid[pidIt].dataElementIndex; pidDataIt++)
                {
                    pidDataPtr = pidDataPtr + Dem_Cfg_EnvDataElement[rba_DemObdBasic_Pid2DataElement[pidDataIt]].Size;
                }
            }
        }
    }
    return retVal;
}

/* MR12 RULE 8.13 VIOLATION: parameter not made const, as it is defined by AUTOSAR */
Std_ReturnType Dem_DcmGetDTCOfOBDFreezeFrame(uint8 FrameNumber, uint32* DTC,Dem_DTCFormatType DTCFormat)
{
    Std_ReturnType retVal = E_NOT_OK;
    Dem_EventIdType EventId;

    *DTC = DEM_OBD_DTC_INVALID;

    if (FrameNumber == 0x00)
    {
        if (rba_DemObdBasic_FF_GetEventIdOfObdFF(&EventId) == E_OK)
        {
            if (DTCFormat == DEM_DTC_FORMAT_UDS)
            {
                *DTC = Dem_GetDtcCode(Dem_DtcIdFromEventId(EventId));
                retVal = E_OK;
            }
            else if (DTCFormat == DEM_DTC_FORMAT_OBD)
            {
                *DTC = rba_DemObdBasic_Dtc_GetCode(Dem_DtcIdFromEventId(EventId));
                retVal = E_OK;
            }
            else
            {
                /*  Currently only DEM_DTC_FORMAT_UDS and  DEM_DTC_FORMAT_OBD are supported */
            }
        }
    }
    else
    {
        /* other freeze frames not specified by ISO/SAE for now */
    }
    return retVal;
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"


