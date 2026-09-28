

#include "rba_DemObdBasic_Prv.h"

#if DEM_CFG_OBD_IUMPR

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

static void rba_DemObdBasic_DenCond_Lock(rba_DemObdBasic_DenCondType* cond)
{
    DEM_ENTERLOCK_MON();
    rba_DiagLib_Bit8SetBit(cond, RBA_DEMOBDBASIC_BITPOS_LOCK);
    DEM_EXITLOCK_MON();
}

static void rba_DemObdBasic_DenCond_Unlock(rba_DemObdBasic_DenCondType* cond)
{
    DEM_ENTERLOCK_MON();
    rba_DiagLib_Bit8ClearBit(cond, RBA_DEMOBDBASIC_BITPOS_LOCK);
    DEM_EXITLOCK_MON();
}

static void rba_DemObdBasic_DenCond_SetReached(rba_DemObdBasic_DenCondType* cond)
{
    DEM_ENTERLOCK_MON();
    rba_DiagLib_Bit8SetBit(cond, RBA_DEMOBDBASIC_BITPOS_REACHED);
    DEM_EXITLOCK_MON();
}

static void rba_DemObdBasic_DenCond_ClearReached(rba_DemObdBasic_DenCondType* cond)
{
    DEM_ENTERLOCK_MON();
    rba_DiagLib_Bit8ClearBit(cond, RBA_DEMOBDBASIC_BITPOS_REACHED);
    DEM_EXITLOCK_MON();
}

static Std_ReturnType rba_DemObdBasic_Iumpr_SetGeneralDenominatorCondition(Dem_IumprDenomCondStatusType ConditionStatus)
{
    Std_ReturnType retVal = E_NOT_OK;

    if (ConditionStatus == DEM_IUMPR_DEN_STATUS_REACHED)
    {
        if (!rba_DemObdBasic_DenCond_IsLocked(rba_DemObdBasic_Iumpr_GenDenomStatus))
        {
            if (!rba_DemObdBasic_DenCond_IsReached(rba_DemObdBasic_Iumpr_GenDenomStatus))
            {
                if (rba_DemObdBasic_Iumpr_GenDenom >= DEM_OBDIUMPR_MAXUINT16)
                {
                    rba_DemObdBasic_Iumpr_GenDenom = DEM_OBDIUMPR_MINUINT16;
                }
                else
                {
                    rba_DemObdBasic_Iumpr_GenDenom++;
                }

                rba_DemObdBasic_DenCond_SetReached(&rba_DemObdBasic_Iumpr_GenDenomStatus);
            }

            retVal = E_OK;
        }
    }
    else if (ConditionStatus == DEM_IUMPR_DEN_STATUS_INHIBITED)
    {
        rba_DemObdBasic_DenCond_Lock(&rba_DemObdBasic_Iumpr_GenDenomStatus);
        retVal = E_OK;
    }
    else if (ConditionStatus == DEM_IUMPR_DEN_STATUS_NOT_REACHED)
    {
        rba_DemObdBasic_DenCond_Unlock(&rba_DemObdBasic_Iumpr_GenDenomStatus);
        retVal = E_OK;
    }
    else
    {
        /* Nothing to do */
    }

    return retVal;
}

static Std_ReturnType rba_DemObdBasic_Iumpr_SetEvapDenominatorCondition(Dem_IumprDenomCondStatusType ConditionStatus)
{
    Std_ReturnType retVal = E_NOT_OK;

    if (ConditionStatus == DEM_IUMPR_DEN_STATUS_REACHED)
    {
        if (!rba_DemObdBasic_DenCond_IsLocked(rba_DemObdBasic_Iumpr_EvapDenomStatus))
        {
            rba_DemObdBasic_DenCond_SetReached(&rba_DemObdBasic_Iumpr_EvapDenomStatus);
            retVal = E_OK;
        }
    }
    else if (ConditionStatus == DEM_IUMPR_DEN_STATUS_INHIBITED)
    {
        rba_DemObdBasic_DenCond_Lock(&rba_DemObdBasic_Iumpr_EvapDenomStatus);
        retVal = E_OK;
    }
    else if (ConditionStatus == DEM_IUMPR_DEN_STATUS_NOT_REACHED)
    {
        /* Release for further increment */
        rba_DemObdBasic_DenCond_Unlock(&rba_DemObdBasic_Iumpr_EvapDenomStatus);
        retVal = E_OK;
    }
    else
    {
        /* Nothing to do */
    }

    return retVal;
}

static Std_ReturnType rba_DemObdBasic_Iumpr_SetColdStartDenominatorCondition(Dem_IumprDenomCondStatusType ConditionStatus)
{
    Std_ReturnType retVal = E_NOT_OK;

    if (ConditionStatus == DEM_IUMPR_DEN_STATUS_REACHED)
    {
        if (!rba_DemObdBasic_DenCond_IsLocked(rba_DemObdBasic_Iumpr_ColdStartDenomStatus))
        {
            rba_DemObdBasic_DenCond_SetReached(&rba_DemObdBasic_Iumpr_ColdStartDenomStatus);
            retVal = E_OK;
        }
    }
    else if (ConditionStatus == DEM_IUMPR_DEN_STATUS_INHIBITED)
    {
        rba_DemObdBasic_DenCond_Lock(&rba_DemObdBasic_Iumpr_ColdStartDenomStatus);
        retVal = E_OK;
    }
    else if (ConditionStatus == DEM_IUMPR_DEN_STATUS_NOT_REACHED)
    {
        /* Release for further increment */
        rba_DemObdBasic_DenCond_Unlock(&rba_DemObdBasic_Iumpr_ColdStartDenomStatus);
        retVal = E_OK;
    }
    else
    {
        /* Nothing to do */
    }

    return retVal;
}

Std_ReturnType Dem_SetIUMPRDenCondition(Dem_IumprDenomCondIdType ConditionId,
        Dem_IumprDenomCondStatusType ConditionStatus)
{
    Std_ReturnType retVal = E_NOT_OK;
    /* BSW-16041 */ /* [$DD_BSWCODE 40501] */
    if (!Dem_ClearIsInProgress())
    {
        if (ConditionId == DEM_IUMPR_GENERAL_DENOMINATOR)
        {
            retVal = rba_DemObdBasic_Iumpr_SetGeneralDenominatorCondition(ConditionStatus);
        }
        else if (ConditionId == DEM_IUMPR_DEN_COND_EVAP)
        {
            retVal = rba_DemObdBasic_Iumpr_SetEvapDenominatorCondition(ConditionStatus);
        }
        else if (ConditionId == DEM_IUMPR_DEN_COND_COLDSTART)
        {
            retVal = rba_DemObdBasic_Iumpr_SetColdStartDenominatorCondition(ConditionStatus);
        }
        else if (ConditionId == DEM_IUMPR_DEN_COND_500MI)
        {
            /* Not supported */
        }
        else
        {
            /* Do Nothing */
        }
	}

    return (retVal);
}

void rba_DemObdBasic_DenCond_StartDrivingCycle(void)
{
    /* Reset the status word for general denominator/Ignition cycle counter, except for the "locked by fault" status */
    rba_DemObdBasic_DenCond_ClearReached(&rba_DemObdBasic_Iumpr_GenDenomStatus);

    /* Reset status of Evap denominator, except for the "locked by fault" status */
    rba_DemObdBasic_DenCond_ClearReached(&rba_DemObdBasic_Iumpr_EvapDenomStatus);

    /* Reset variables related to Cold start denominator, except for the "locked by fault" status */
    rba_DemObdBasic_DenCond_ClearReached(&rba_DemObdBasic_Iumpr_ColdStartDenomStatus);
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif

