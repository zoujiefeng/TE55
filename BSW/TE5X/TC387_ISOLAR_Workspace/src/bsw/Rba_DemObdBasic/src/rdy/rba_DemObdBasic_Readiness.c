
/* BSW-12320 */
/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/
/* END BSW-12320 */
#include "rba_DemObdBasic_Prv.h"

/* BSW-12320 - Definition of DEM_OBDRDY_SET_COMPCOMP_RDY_SUPENA_MSK is removed */
/* BSW-12320 */
#if DEM_CFG_OBD_RDY

#include "Dem_Mapping.h"
/*
 **********************************************************************************************************************
 * Local prototypes
 **********************************************************************************************************************
*/

static Dem_DtcIdType rba_DemObdBasic_Rdy_GetNumOfRefDtcs(uint8 ReadinessGroupIndex);
static Dem_DtcIdType rba_DemObdBasic_Rdy_GetDtcIdFromOffset(uint8 ReadinessGroupIndex, Dem_DtcIdType RdyDtcIndex);
static boolean rba_DemObdBasic_Rdy_IsReadinessGroupDisabled(uint8 ReadinessGroupIndex);
static rba_DemObdBasic_RdyStatusType rba_DemObdBasic_Rdy_CalculateReadinessGroupStatus(uint8 Pid, uint8 ReadinessGroupIndex, Dem_DtcIdType DtcId, boolean * MilEvent);
static uint8 rba_DemObdBasic_Rdy_GetReadinessGroupId(uint8 ReadinessGroupIndex);
static void rba_DemObdBasic_Rdy_UpdatePidByteBCD(uint32 *PidByteBCD, uint8 ReadinessGroupIndex, rba_DemObdBasic_RdyStatusType ReadinessGroupStatus);
static void rba_DemObdBasic_Rdy_SetEngineTypeBit(uint32 *PidByteBCD);
static uint32 rba_DemObdBasic_Rdy_GetByteBCD_Processing(uint8 Pid);
static uint8 rba_DemObdBasic_Rdy_GetRdyGroupIndexFromDtcId(Dem_DtcIdType DtcId);
static Std_ReturnType rba_DemObdBasic_Rdy_SetReadinessGroupDisabled(uint8 ReadinessGroupIndex);
static boolean rba_DemObdBasic_CheckRefEventsWithMilStsPID01(Dem_DtcIdType DtcId, boolean * MilEvent);
static boolean rba_DemObdBasic_CheckRefEventsPID41(Dem_DtcIdType dtcId);
/*
 **********************************************************************************************************************
 * Variables
 **********************************************************************************************************************
*/
#define DEM_START_SEC_VAR_INIT
#include "Dem_MemMap.h"

static uint16 ReadinessGroupDisabledStatus = DEM_OBD_RDY_ZERO;

#define DEM_STOP_SEC_VAR_INIT
#include "Dem_MemMap.h"

/*
 **********************************************************************************************************************
 * Implementation
 **********************************************************************************************************************
*/
/* END BSW-12320 */
#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

/* BSW-12320 */
/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_GetNumOfRefDtcs
 * 
 * \brief Internal helper to get the number of reference Dtcs of a readiness group 
 * 
 * \param[in]   uint8      ReadinessGroupIndex    Readiness Group Index in the configuration 
 * 
 * \return      Dem_DtcIdType                     Return number of reference Dtcs of a readiness group
 */
 /* [$DD_BSWCODE 29769] */
static Dem_DtcIdType rba_DemObdBasic_Rdy_GetNumOfRefDtcs(uint8 ReadinessGroupIndex)
{
    Dem_DtcIdType NumberOfDtcs = DEM_OBD_RDY_ZERO;

    if(ReadinessGroupIndex < DEM_CFG_NUM_OF_RDYS)
    {
        NumberOfDtcs = (rba_DemObdBasic_RdyOffset[ReadinessGroupIndex + DEM_OBD_RDY_ONE].Offset_u16 - rba_DemObdBasic_RdyOffset[ReadinessGroupIndex].Offset_u16);
    }

    return NumberOfDtcs;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_GetDtcIdFromOffset
 * 
 * \brief Internal helper to get DtcId from in the configuration from offset 
 * 
 * \param[in]   uint8           ReadinessGroupIndex   Readiness Group Index in the configuration
 * 
 * \param[in]   Dem_DtcIdType   RdyDtcIndex           Readiness Group DtcId Index in the configuration
 * 
 * \return      Dem_DtcIdType                         Dtc index in dem configuration
 */
 /* [$DD_BSWCODE 29770] */
static Dem_DtcIdType rba_DemObdBasic_Rdy_GetDtcIdFromOffset(uint8 ReadinessGroupIndex, Dem_DtcIdType RdyDtcIndex)
{
    Dem_DtcIdType RdyId2DtcIdArr_index = DEM_OBD_RDY_ZERO;
    Dem_DtcIdType DtcId_u16       = DEM_DTCID_INVALID;

    if(ReadinessGroupIndex < DEM_CFG_NUM_OF_RDYS)
    {
        RdyId2DtcIdArr_index = rba_DemObdBasic_RdyOffset[ReadinessGroupIndex].Offset_u16 + RdyDtcIndex;

        if(RdyId2DtcIdArr_index < rba_DemObdBasic_RdyOffset[ReadinessGroupIndex + DEM_OBD_RDY_ONE].Offset_u16)
        {
            DtcId_u16 = rba_DemObdBasic_RdyId2DtcId[RdyId2DtcIdArr_index];
        }
    }
    return DtcId_u16;

}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_IsReadinessGroupDisabled
 * 
 * \brief Internal helper to check Readiness Group is disabled or not.
 * 
 * \param[in]   uint8      ReadinessGroupIndex   Readiness Group Index in the configuration
 * 
 * \return      boolean                          Return is readiness group is disabled or not
 */
 /* [$DD_BSWCODE 29771] */
static boolean rba_DemObdBasic_Rdy_IsReadinessGroupDisabled(uint8 ReadinessGroupIndex)
{
    uint8 ReadinessGroupPos = DEM_OBD_RDY_ZERO;
    boolean IsDisabled = TRUE;    /*PRQA S 4404 EOF */ /* An expression of 'essentially Boolean' type (_Bool) is being converted to unsigned type */

    if(ReadinessGroupIndex < DEM_CFG_NUM_OF_RDYS)
    {
        ReadinessGroupPos = rba_DemObdBasic_RdyOffset[ReadinessGroupIndex].RdyId_u8;

        if(((ReadinessGroupDisabledStatus >> ReadinessGroupPos) & (uint16)DEM_OBD_RDY_ONE) == (uint16)DEM_OBD_RDY_ZERO)
        {
            IsDisabled = FALSE;
        }
    }
    return IsDisabled;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_CheckRefEventsWithMilStsPID01
 * 
 * \brief Internal helper to check all related events are tested since last clear or the event has caused MIL on.
 * 
 * \param[in]    Dem_DtcIdType    DtcId       Dtc index in dem configuration
 * 
 * \param[out]   boolean *        MilEvent    is one related events has caused MIL on.
 * 
 * \return       boolean                      Return TRUE if all related events are tested since last clear.
 */
 /* [$DD_BSWCODE 29788] */
static boolean rba_DemObdBasic_CheckRefEventsWithMilStsPID01(Dem_DtcIdType DtcId , boolean * MilEvent)
{
    Dem_EventIdListIterator eventIt;
    Dem_EventIdType eventId;
    uint8 isobyte = 0, isobyte_OR = 0;

    if(MilEvent != NULL_PTR)
    {
        if (Dem_DtcIsSupported(DtcId))    /*PRQA S 3344 EOF */ /* Controlling expression is not an 'essentially Boolean' expression */
        {
            for (Dem_EventIdListIteratorNewFromDtcId(&eventIt, DtcId);
                    Dem_EventIdListIteratorIsValid(&eventIt);
                    Dem_EventIdListIteratorNext(&eventIt))
            {
                eventId = Dem_EventIdListIteratorCurrent(&eventIt);

                if (!Dem_EvtIsSuppressed(eventId))    /*PRQA S 4116 EOF */ /*PRQA S 4558 EOF */
                {
                    isobyte = Dem_EvtGetIsoByte(eventId);
                    isobyte_OR |= isobyte;
                    if(Dem_ISO14229ByteIsConfirmedDTC(isobyte))
                    {
                        if(rba_DemObdBasic_Event_IsRequestingMil(eventId) == TRUE)    /*PRQA S 1881 EOF */
                        {
                            *MilEvent = TRUE;
                            break;
                        }
                    }
                }
            }
        }

    }

    return Dem_ISO14229ByteIsTestNotCompleteSLC(isobyte_OR);
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_CheckRefEventsPID41
 * 
 * \brief Internal helper to check all events of a DTC are tested in this driving cycle.
 * 
 * \param[in]   Dem_DtcIdType      dtcId    Dtc index in dem configuration
 * 
 * \return      boolean                     Return TRUE if all events of a DTC in this driving cycle
 */
 /* [$DD_BSWCODE 29789] */
static boolean rba_DemObdBasic_CheckRefEventsPID41(Dem_DtcIdType dtcId)
{
    Dem_EventIdListIterator eventIt;
    Dem_EventIdType eventId;
    boolean IsTestNotCompleteTOC = FALSE; 

    if (Dem_DtcIsSupported(dtcId))
    {
        for (Dem_EventIdListIteratorNewFromDtcId(&eventIt, dtcId);
                Dem_EventIdListIteratorIsValid(&eventIt);
                Dem_EventIdListIteratorNext(&eventIt))
        {
            eventId = Dem_EventIdListIteratorCurrent(&eventIt);

           if (!Dem_EvtIsSuppressed(eventId))
           {
                if(Dem_ISO14229ByteIsTestNotCompleteTOC(Dem_EvtGetIsoByte(eventId)))
                {
                    IsTestNotCompleteTOC = TRUE;
                    break;
                }
            }
        }
    }

    return IsTestNotCompleteTOC;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_CalculateReadinessGroupStatus
 * 
 * \brief Internal helper to Calculate readiness group status of a DTC
 * 
 * \param[in]    uint8             Pid                       Value of requested Pid
 * 
 * \param[in]    uint8             ReadinessGroupIndex       Readiness group index in configration
  
 * \param[in]    Dem_DtcIdType     DtcId                     Dtc incex in dem configuration
 * 
 * \param[out]   boolean *         MilEvent                  Is DTC has caused MIL on.
 * 
 * \return      rba_DemObdBasic_RdyStatusType                Return readiness status of an DTC
 */
 /* [$DD_BSWCODE 29772] */
static rba_DemObdBasic_RdyStatusType rba_DemObdBasic_Rdy_CalculateReadinessGroupStatus(uint8 Pid, uint8 ReadinessGroupIndex, Dem_DtcIdType DtcId , boolean * MilEvent)
{
    rba_DemObdBasic_RdyStatusType RdyStatus;

    RdyStatus.EnableStatus = DEM_OBD_RDY_UNSUPPORTED;
    RdyStatus.CompletionStatus = DEM_OBD_RDY_UNSUPPORTED;

    if(MilEvent != NULL_PTR)
    {
        if(Pid == DEM_OBD_RDY_PID41)
        {
            if(rba_DemObdBasic_Rdy_IsReadinessGroupDisabled(ReadinessGroupIndex))
            {
                /* Design Decision: Readiness group status shall be set to disabled and incompleted when event is disabled. */
                RdyStatus.EnableStatus = DEM_OBD_RDY_DISABLED;
                RdyStatus.CompletionStatus = DEM_OBD_RDY_INCOMPLETED;
            }
            else
            {
                RdyStatus.EnableStatus = DEM_OBD_RDY_ENABLED;
                if(rba_DemObdBasic_CheckRefEventsPID41(DtcId) == TRUE)
                {
                    RdyStatus.CompletionStatus = DEM_OBD_RDY_INCOMPLETED;
                }
                else
                {
                    RdyStatus.CompletionStatus = DEM_OBD_RDY_COMPLETED;
                }
            }
        }
        else if(Pid == DEM_OBD_RDY_PID01)
        {
            RdyStatus.EnableStatus = DEM_OBD_RDY_ENABLED;

            if((rba_DemObdBasic_CheckRefEventsWithMilStsPID01(DtcId, MilEvent) == FALSE) || (*MilEvent == TRUE))
            {
                RdyStatus.CompletionStatus = DEM_OBD_RDY_COMPLETED;
            }
            else
            {
                RdyStatus.CompletionStatus = DEM_OBD_RDY_INCOMPLETED;
            }
        }
        else
        {
            /*do nothing*/
        }
    }
    return RdyStatus;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_GetReadinessGroupId
 * 
 * \brief Internal helper to get Readiness Group Id from Readiness Group Index in the configuration.
 * 
 * \param[in]    uint8             ReadinessGroupIndex         Readiness Group Index in the configuration 
 * 
 * 
 * \return      uint8                                          Return Readiness Group Id
 */
 /* [$DD_BSWCODE 29773] */
static uint8 rba_DemObdBasic_Rdy_GetReadinessGroupId(uint8 ReadinessGroupIndex)
{
    uint8 ReadinessGroupId_u8 = DEM_OBD_RDY_NONE;

    if(ReadinessGroupIndex < DEM_CFG_NUM_OF_RDYS)
    {
        ReadinessGroupId_u8 = rba_DemObdBasic_RdyOffset[ReadinessGroupIndex].RdyId_u8;
    }

    return ReadinessGroupId_u8;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_UpdatePidByteBCD
 * 
 * \brief Internal helper to Update byte BCD of PID01 and PID41.
 * 
 * \param[out]   uint32 * PidByteBCD
 * 
 * \param[in]    uint8   ReadinessGroupIndex
 *  
 * \param[in]    rba_DemObdBasic_RdyStatusType  ReadinessGroupStatus
 *
 * \return       void
 */
 /* [$DD_BSWCODE 29774] */
static void rba_DemObdBasic_Rdy_UpdatePidByteBCD(uint32 * PidByteBCD, uint8 ReadinessGroupIndex, rba_DemObdBasic_RdyStatusType ReadinessGroupStatus)
{
    uint8 RdyCompletionStsPosition = DEM_OBD_RDY_ZERO;
    uint8 RdyEnableStsPosition = DEM_OBD_RDY_ZERO;
    uint8 ReadinessGroupId              = rba_DemObdBasic_Rdy_GetReadinessGroupId(ReadinessGroupIndex);

    if((PidByteBCD != NULL_PTR) && (ReadinessGroupId != DEM_OBD_RDY_NONE))
    {
        // DEM_OBD_RDY_FLSYS_NONCONT should be included in this check because it is defined with the same value as DEM_OBD_RDY_FLSYS
        if((ReadinessGroupId == DEM_OBD_RDY_FLSYS) || (ReadinessGroupId == DEM_OBD_RDY_CMPRCMPT) || (ReadinessGroupId == DEM_OBD_RDY_MISF))
        {
            RdyCompletionStsPosition = ReadinessGroupId + DEM_OBD_RDY_COMPLETIONSTATUS_BYTE_B_OFFSET;
            RdyEnableStsPosition = ReadinessGroupId + DEM_OBD_RDY_ENABLESTATUS_BYTE_B_OFFSET;
            if (ReadinessGroupId == DEM_OBD_RDY_FLSYS)
            {
                ReadinessGroupStatus.CompletionStatus |= rba_DiagLib_Bit32GetSingleBit(*PidByteBCD,RdyCompletionStsPosition);
                ReadinessGroupStatus.EnableStatus |= rba_DiagLib_Bit32GetSingleBit(*PidByteBCD,RdyEnableStsPosition);
            }
        }
        else
        {
            RdyEnableStsPosition = ReadinessGroupId + DEM_OBD_RDY_BYTE_C_OFFSET;
            RdyCompletionStsPosition = ReadinessGroupId + DEM_OBD_RDY_BYTE_D_OFFSET;
        }
        rba_DiagLib_Bit32OverwriteBit(PidByteBCD,RdyCompletionStsPosition,ReadinessGroupStatus.CompletionStatus);
        rba_DiagLib_Bit32OverwriteBit(PidByteBCD,RdyEnableStsPosition,ReadinessGroupStatus.EnableStatus);
    }
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_SetEngineTypeBit
 * 
 * \brief Internal helper to Set EngineType Bit base on the configuration
 * 
 * \param[out]   uint32 * PidByteBCD
 * 
 * \return      void
 */
 /* [$DD_BSWCODE 29775] */
static void rba_DemObdBasic_Rdy_SetEngineTypeBit(uint32 *PidByteBCD)
{
    if(PidByteBCD != NULL_PTR)
    {
        rba_DiagLib_Bit32OverwriteBit(PidByteBCD,DEM_OBD_RDY_ENGINE_BIT_OFFSET, (boolean)(DEM_CFG_OBD_ENGINE_TYPE & DEM_OBD_RDY_ONE));
    }
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_GetByteBCD_Processing
 * 
 * \brief Internal helper to calulate Byte BCD for PID 01 and PID 41 
 * 
 * \param[in]    uint8             Pid                       Value of requested Pid
 * 
 * \return       uint32                                      Return BCD value after computation
 */
 /* [$DD_BSWCODE 29776] */
static uint32 rba_DemObdBasic_Rdy_GetByteBCD_Processing(uint8 Pid)
{
    uint8 ReadinessGroupIndex_u8   = DEM_OBD_RDY_ZERO;
    uint32 PidByteBCD_u32          = DEM_OBD_RDY_ZERO;
    Dem_DtcIdType RdyDtcIndex_u16  = DEM_OBD_RDY_ZERO;
    Dem_DtcIdType NumberOfDtcs_u16 = DEM_OBD_RDY_ZERO;
    Dem_DtcIdType DtcId_u16        = DEM_DTCID_INVALID;
    boolean       MilStatus        = FALSE;
    rba_DemObdBasic_RdyStatusType tmpReadinessGroupStatus;
    rba_DemObdBasic_RdyStatusType ReadinessGroupStatus_OR;

    for(ReadinessGroupIndex_u8 = DEM_OBD_RDY_ZERO; ReadinessGroupIndex_u8 < DEM_CFG_NUM_OF_RDYS; ReadinessGroupIndex_u8++)
    {
        ReadinessGroupStatus_OR.EnableStatus = DEM_OBD_RDY_UNSUPPORTED;
        ReadinessGroupStatus_OR.CompletionStatus = DEM_OBD_RDY_UNSUPPORTED;
        tmpReadinessGroupStatus.EnableStatus = DEM_OBD_RDY_UNSUPPORTED;
        tmpReadinessGroupStatus.CompletionStatus = DEM_OBD_RDY_UNSUPPORTED;
        MilStatus        = FALSE;
        NumberOfDtcs_u16 = rba_DemObdBasic_Rdy_GetNumOfRefDtcs(ReadinessGroupIndex_u8);

        for(RdyDtcIndex_u16 = DEM_OBD_RDY_ZERO; RdyDtcIndex_u16 < NumberOfDtcs_u16; RdyDtcIndex_u16++)
        {
            DtcId_u16 = rba_DemObdBasic_Rdy_GetDtcIdFromOffset(ReadinessGroupIndex_u8, RdyDtcIndex_u16);
            if(Dem_DtcIsSupported(DtcId_u16))
            {
                tmpReadinessGroupStatus = rba_DemObdBasic_Rdy_CalculateReadinessGroupStatus(Pid, ReadinessGroupIndex_u8, DtcId_u16, &MilStatus);

                if(tmpReadinessGroupStatus.CompletionStatus == DEM_OBD_RDY_INCOMPLETED)
                {
                    ReadinessGroupStatus_OR.CompletionStatus = DEM_OBD_RDY_INCOMPLETED;
                }

                ReadinessGroupStatus_OR.EnableStatus = tmpReadinessGroupStatus.EnableStatus;

                if(((Pid == DEM_OBD_RDY_PID41) && (ReadinessGroupStatus_OR.CompletionStatus == DEM_OBD_RDY_INCOMPLETED)) ||
                   ((Pid == DEM_OBD_RDY_PID01) && (MilStatus == TRUE)) )
                {
                    break;
                }
            }
        }
        rba_DemObdBasic_Rdy_UpdatePidByteBCD(&PidByteBCD_u32, ReadinessGroupIndex_u8, ReadinessGroupStatus_OR);
    }

    rba_DemObdBasic_Rdy_SetEngineTypeBit(&PidByteBCD_u32);

    return PidByteBCD_u32;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_GetRdyGroupIndexFromDtcId
 * 
 * \brief Internal helper to get readiness group index from a DTC
 * 
 * \param[in]    Dem_DtcIdType        DtcId
 * 
 * \return      uint8          Return Readiness Group Index in the configuration.
 */
 /* [$DD_BSWCODE 29777] */
static uint8 rba_DemObdBasic_Rdy_GetRdyGroupIndexFromDtcId(Dem_DtcIdType DtcId)
{
    uint8 ReadinessGroupIndex_u8 = DEM_OBD_RDY_NONE;
    uint8 Idx_u8                 = DEM_OBD_RDY_ZERO;
    Dem_DtcIdType Idx_u16        = DEM_OBD_RDY_ZERO;
    Dem_DtcIdType RdyDtcIdIndex  = 0xFFFFu;

    if(Dem_DtcIsSupported(DtcId))
    {
        for(Idx_u16 = DEM_OBD_RDY_ZERO; Idx_u16 < DEM_RDY_DTCID_COUNT; Idx_u16++)
        {
            if(rba_DemObdBasic_RdyId2DtcId[Idx_u16] == DtcId)
            {
                RdyDtcIdIndex = Idx_u16;
                break;
            }
        }

        for(Idx_u8 = DEM_OBD_RDY_ZERO; Idx_u8 < (DEM_CFG_NUM_OF_RDYS + 1u); Idx_u8++)
        {
            if(rba_DemObdBasic_RdyOffset[Idx_u8].Offset_u16 > RdyDtcIdIndex)
            {
                ReadinessGroupIndex_u8 = Idx_u8 - 1;
                break;
            }
        }
    }
    return ReadinessGroupIndex_u8;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_SetReadinessGroupDisabled
 * 
 * \brief Internal helper to set an event disabled 
 * 
 * \param[in]    uint8        ReadinessGroupIndex
 * 
 * \return      Std_ReturnType          Return the result of seting disabled.
 */
 /* [$DD_BSWCODE 29778] */
static Std_ReturnType rba_DemObdBasic_Rdy_SetReadinessGroupDisabled(uint8 ReadinessGroupIndex)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint8 ReadinessGroupPos = DEM_OBD_RDY_ZERO;

    if(ReadinessGroupIndex < DEM_CFG_NUM_OF_RDYS)
    {
        ReadinessGroupPos = rba_DemObdBasic_RdyOffset[ReadinessGroupIndex].RdyId_u8;

        ReadinessGroupDisabledStatus |= ((uint16)(DEM_OBD_RDY_ONE) << ReadinessGroupPos);

        retVal = E_OK;
    }
    return retVal;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_Clear
 * 
 * \brief Internal helper to clear all disabled status of all readiness group
 * 
 * 
 * \return      void
 */
 /* [$DD_BSWCODE 29779] */
void rba_DemObdBasic_Rdy_Clear(void)
{
    ReadinessGroupDisabledStatus = (uint16)DEM_OBD_RDY_ZERO;
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_GetPid01ByteBCD
 * 
 * \brief Internal helper to calulate Byte BCD for PID 01 
 * 
 * 
 * \return      Std_ReturnType          Return BCD value for PID 01 .
 */
 /* [$DD_BSWCODE 29780] */
uint32 rba_DemObdBasic_Rdy_GetPid01ByteBCD(void)
{
    return rba_DemObdBasic_Rdy_GetByteBCD_Processing(DEM_OBD_RDY_PID01);
}

/**
 **********************************************************************************************************************
 * rba_DemObdBasic_Rdy_GetPid41ByteBCD
 * 
 * \brief Internal helper to calulate Byte BCD for PID 41 
 * 
 * 
 * \return      Std_ReturnType          Return BCD value for PID 41 .
 */
/* END BSW-12320 */
/* [$DD_BSWCODE 29781] */
uint32 rba_DemObdBasic_Rdy_GetPid41ByteBCD(void)
{
    /* BSW-12320 -- Old return value is removed */
    /* BSW-12320 */
    return rba_DemObdBasic_Rdy_GetByteBCD_Processing(DEM_OBD_RDY_PID41);
    /* END BSW-12320 */
}

/* BSW-12320 */
#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif  /*DEM_CFG_OBD_RDY*/

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

/**
 **********************************************************************************************************************
 * Dem_SetEventDisabled
 * 
 * \brief Interface to set an event disabled 
 * 
 * \param[in]    Dem_EventIdType        EventId
 * 
 * \return      Std_ReturnType          Return the result of seting disabled.
 */
/* BSW-12320 */ /* [$DD_BSWCODE 29782] */
Std_ReturnType Dem_SetEventDisabled(Dem_EventIdType EventId)
{
/* BSW-12320 - Variable retVal is removed*/
/* BSW-12320 */
#if DEM_CFG_OBD_RDY
    uint8 ReadinessGroupIndex_u8 = DEM_OBD_RDY_NONE;
    Dem_DtcIdType DtcId          = DEM_DTCID_INVALID;
    Std_ReturnType retVal        = E_NOT_OK;

    if(Dem_isEventIdValid(EventId))
    {
        if((!Dem_EvtIsSuppressed(EventId)) && (!Dem_ISO14229ByteIsTestCompleteTOC(Dem_EvtGetIsoByte(EventId))))
        {
            DtcId = Dem_DtcIdFromEventId(EventId);
            ReadinessGroupIndex_u8 = rba_DemObdBasic_Rdy_GetRdyGroupIndexFromDtcId(DtcId);
            retVal = rba_DemObdBasic_Rdy_SetReadinessGroupDisabled(ReadinessGroupIndex_u8);
        }
    }
/* END BSW-12320 */
    return retVal;
/* BSW-12320 */
#else
    DEM_UNUSED_PARAM(EventId);
    return E_NOT_OK;
#endif
/* END BSW-12320 */
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

