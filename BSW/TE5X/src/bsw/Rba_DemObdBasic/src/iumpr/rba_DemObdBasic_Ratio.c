

#include "rba_DemObdBasic_Prv.h"

/* BSW-8482 */
#if (DEM_CFG_EVT_PROJECT_EXTENSION)
#include "Dem_PrjEvtProjectExtension.h"
#endif
/* END BSW-8482 */

#if DEM_CFG_OBD_IUMPR

#define DEM_START_SEC_VAR_CLEARED
#include "Dem_MemMap.h"

static Dem_RatioIdType rba_DemObdBasic_IumprScannedRatioIdx;
static Dem_RatioIdType rba_DemObdBasic_IumprGroupMinRatioIdx[DEM_CFG_NUM_ALL_IUMPR_GROUPS];
static uint16 rba_DemObdBasic_IumprGroupMinRatio[DEM_CFG_NUM_ALL_IUMPR_GROUPS];

#define DEM_STOP_SEC_VAR_CLEARED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

void rba_DemObdBasic_Ratio_Init(void)
{
    uint16 idxLoop;

    /* Initialise the minimum ratio per group to invalid so that it can be computed newly */
    for (idxLoop = 0u; idxLoop < DEM_CFG_NUM_ALL_IUMPR_GROUPS; idxLoop++)
    {
        rba_DemObdBasic_IumprGroupMinRatioIdx[idxLoop] = DEM_CFG_RATIOID_INVALID;
    }
}

void rba_DemObdBasic_Ratio_StartDrivingCycle(void)
{
    uint16 idxRatio; /* Ratio iterator */

    /* Enter atomic section because the ratio status is also written by API */
    DEM_ENTERLOCK_MON();

    for (idxRatio = 0u; idxRatio < DEM_CFG_NUM_ALL_IUMPR_RATIOS; idxRatio++)
    {
        /* Reset ratio status but retain the "Affected by Srv$07 visible faults". This can be reset only when the
         FiM confirms that the faults exist no longer (which may need some more when the FiM is configued to poll
         the event status in a slow periodic task */
        rba_DemObdBasic_Iumpr_RatioSt(idxRatio) &= ( DEM_RATIO_STSMASK_FAULT_INH | DEM_RATIO_STSMASK_NUMER_LOCKED
                | DEM_RATIO_STSMASK_DENOM_LOCKED);
    }

    /* Exit the atomic section */
    DEM_EXITLOCK_MON();
}

static boolean rba_DemObdBasic_Ratio_IsCalcBlockedBySer07(Dem_RatioIdType idxRatio)
{
    boolean isRatioBlocked = FALSE;

#if DEM_CFG_IUMPR_FIM
    boolean stFIDSrv07Vis;

    /* Every ratio is mapped to only one FID */
    /* MR12 RULE 13.5 VIOLATION: the function "FiM_GetService07Visibility" does not have any persistent side effects */
    if ((rba_DemObdBasic_Ratio_GetFID(idxRatio) != FIM_CFG_INVALIDFID)
            && (FiM_GetService07Visibility(rba_DemObdBasic_Ratio_GetFID(idxRatio), &stFIDSrv07Vis) == E_OK))
    {
        /* return the new Srv$07 visibility status for the ratio */
        isRatioBlocked = stFIDSrv07Vis;
    }
    else
    {
        /* Retain the current status for the ratio as it is */
        isRatioBlocked = ((rba_DemObdBasic_Iumpr_RatioSt(idxRatio) & DEM_RATIO_STSMASK_FAULT_INH) > 0u);
    }
#endif

    /*Only required when Obd with Iumpr and graph enabled*/
#if DEM_CFG_IUMPR_GRAPH
    if (isRatioBlocked == FALSE)
    {
        Dem_EventIdType ratioEvtId = rba_DemObdBasic_Ratio_GetEvent(idxRatio);

        DEM_ENTERLOCK_MON();

        /*Node or its parent node has a stored OBD pending fault - mode07 visible*/
        if (!Dem_Dependencies_CheckEventIsCausalPending(ratioEvtId, Dem_NodeIdFromEventId(ratioEvtId)))
        {
            isRatioBlocked = TRUE; /* a high prio OBD event(s) to this event is stored pending */
        }

        DEM_EXITLOCK_MON();
    }
#endif

    return (isRatioBlocked);
}

static void rba_DemObdBasic_Ratio_EvalRatioLock(Dem_RatioIdType idxRatio)
{
    uint8 ratio; /* Local copy of the ratio status */
    uint8 denGroup; /* Denominator group configured for the ratio */
    boolean anyLock = FALSE;

    /* Take copy of the status of the ratio */
    ratio = rba_DemObdBasic_Iumpr_RatioSt(idxRatio);

    /* If atleast one of numerator and denominator is not yet incremented in this DCY */
    if ((ratio & (DEM_RATIO_STSMASK_NUMER_INCD | DEM_RATIO_STSMASK_DENOM_INCD))
            != (DEM_RATIO_STSMASK_NUMER_INCD | DEM_RATIO_STSMASK_DENOM_INCD))
    {
        denGroup = rba_DemObdBasic_Ratio_GetRatioDenGroup(idxRatio); /* Get the configured denominator condition */

        /* Check if the ratio is now affected by any of the Srv$07 faults */
        if (rba_DemObdBasic_Ratio_IsCalcBlockedBySer07(idxRatio))
        {
            /* Mark the ratio as locked by Srv$07 visible fault and also, lock from further incrementing */
            ratio |= DEM_RATIO_STSMASK_FAULT_INH;
        }
        else
        {
            /* No fault that should prevent the ratio update is present */
            ratio &= (uint8) (~DEM_RATIO_STSMASK_FAULT_INH);
        }

        /* Check all possible reasons to lock denominator/numerator from incrementing */
        anyLock = rba_DemObdBasic_DenCond_IsLocked(rba_DemObdBasic_Iumpr_GenDenomStatus); /* GenDenom locked        */
        anyLock = anyLock || ((ratio & DEM_RATIO_STSMASK_FAULT_INH) > 0u); /* ratio locked           */

        if (denGroup == DEM_OBDIUMPR_DENCOND_COLDSTART)
        {
            anyLock = anyLock || rba_DemObdBasic_DenCond_IsLocked(rba_DemObdBasic_Iumpr_ColdStartDenomStatus); /* CldStrt Denom locked   */
        }

        if (denGroup == DEM_OBDIUMPR_DENCOND_EVAP)
        {
            anyLock = anyLock || rba_DemObdBasic_DenCond_IsLocked(rba_DemObdBasic_Iumpr_ColdStartDenomStatus); /* Evap Denom locked      */
        }

        if (anyLock)
        {
            /* Mark the ratio to prevent increment of numerator/Denominator (Currently, same condition for both the
             * numerator and denominator. But different bits allocated for flexiblity in future, if required */
            ratio |= (DEM_RATIO_STSMASK_NUMER_LOCKED | DEM_RATIO_STSMASK_DENOM_LOCKED);
        }
        else
        {
            /* Clear the status which indicates that Num/Denom is locked by fault. Once locked, it should remain so for
             the rest of the DCY because Srv$07 faults cannot vanish during drive. But this "hysterysis" behaviour is
             not handled here and should be handled by FiM. Otherwise, timing problems during DCY transition could
             result in using the Srv$07 visibility status from the old DCY also in the new DCY, thus locking the ratio
             for unreasonably long periods. */
            ratio &= (uint8) (~(DEM_RATIO_STSMASK_NUMER_LOCKED | DEM_RATIO_STSMASK_DENOM_LOCKED));
        }

        /* If any change in the ratio status was detected */
        if (ratio != rba_DemObdBasic_Iumpr_RatioSt(idxRatio))
        {
            /* Enter atomic section */
            DEM_ENTERLOCK_MON();

            /* Clear the old values of the bits which are computed newly in this function */
            rba_DemObdBasic_Iumpr_RatioSt(idxRatio) &= (uint8) (~( DEM_RATIO_STSMASK_FAULT_INH | DEM_RATIO_STSMASK_NUMER_LOCKED
                    | DEM_RATIO_STSMASK_DENOM_LOCKED));

            /* Write back the updated status under lock because it is also updated via APIs [For example, the "physical
             activation" bit can be cleared via API. So, we should avoid putting back the old status of the flag due
             to bitwise-OR in case it was meanwhile cleared via API. It is achieved by masking out other bits here */
            rba_DemObdBasic_Iumpr_RatioSt(idxRatio) |= (ratio
                    & ( DEM_RATIO_STSMASK_FAULT_INH | DEM_RATIO_STSMASK_NUMER_LOCKED | DEM_RATIO_STSMASK_DENOM_LOCKED));

            /* Exit atomic section */
            DEM_EXITLOCK_MON();
        }
    }
}

static void rba_DemObdBasic_Ratio_HandleOverflow(Dem_RatioIdType idxRatio)
{
    /* Enter atomic section, because each IUMPR ratio is one logical unit (Eg: To avoid inconsistent output to the
     tester if it queried data while only numerator is halved but the denominator not yet or vice-versa) */
    DEM_ENTERLOCK_DCM();

    rba_DemObdBasic_Iumpr_RatioNum(idxRatio) >>= 1u; /* Divide Numerator by 2 */

    rba_DemObdBasic_Iumpr_RatioDenom(idxRatio) >>= 1u; /* Divide Denominator by 2 */

    /* Exit atomic section */
    DEM_EXITLOCK_DCM();
}

static void rba_DemObdBasic_Ratio_EvalRatioDenominator(Dem_RatioIdType idxRatio)
{
    uint8 ratio; /* Local copy of the ratio status */
    uint8 denGroup; /* Denominator group configured for the ratio */
    boolean conditionsMet = FALSE;

    /* Take copy of the status of the ratio */
    ratio = rba_DemObdBasic_Iumpr_RatioSt(idxRatio);

    /* If not prevented from incrementing in this cycle because already it has been incremented or is locked by fault */
    if ((ratio & (DEM_RATIO_STSMASK_DENOM_INCD | DEM_RATIO_STSMASK_DENOM_LOCKED)) == 0u)
    {
        denGroup = rba_DemObdBasic_Ratio_GetRatioDenGroup(idxRatio); /* Get the configured denominator condition */

        /* Check if the necessary conditions for the increment of denominator are satisfied */
        conditionsMet = rba_DemObdBasic_DenCond_IsReached(rba_DemObdBasic_Iumpr_GenDenomStatus);

        if (denGroup == DEM_OBDIUMPR_DENCOND_EVAP)
        {
            conditionsMet = conditionsMet && rba_DemObdBasic_DenCond_IsReached(rba_DemObdBasic_Iumpr_EvapDenomStatus);
        }
        else if (denGroup == DEM_OBDIUMPR_DENCOND_COLDSTART)
        {
            conditionsMet = conditionsMet && rba_DemObdBasic_DenCond_IsReached(rba_DemObdBasic_Iumpr_ColdStartDenomStatus);
        }
        else if (denGroup == DEM_OBDIUMPR_DENCOND_PHYS_API)
        {
            conditionsMet = conditionsMet && ((ratio & DEM_RATIO_STSMASK_PHYACT_COND) > 0u);
        }
        else
        {
            /* (denGroup == DEM_OBDIUMPR_DENCOND_NONE) - For this case conditionsMet is already set above */
        }

        if (conditionsMet)
        {
            /* If the denominator reached the maximum value */
            if (rba_DemObdBasic_Iumpr_RatioDenom(idxRatio) >= DEM_OBDIUMPR_MAXUINT16)
            {
                /* Halve both numerator and denominator to avoid overflow */
                rba_DemObdBasic_Ratio_HandleOverflow(idxRatio);
            }

            /* Now, increment the denominator */
            rba_DemObdBasic_Iumpr_RatioDenom(idxRatio)++;

            /* Enter atomic section */
            DEM_ENTERLOCK_MON();

            /* Mark the ratio to indicate Den. increment in this cycle to prevent further increments */
            rba_DemObdBasic_Iumpr_RatioSt(idxRatio) |= DEM_RATIO_STSMASK_DENOM_INCD;

            /* Exit atomic section */
            DEM_EXITLOCK_MON();
        }
    }
}

static void rba_DemObdBasic_Ratio_EvalRatioNumerator(Dem_RatioIdType idxRatio)
{
    uint8 ratio; /* local copy of the ratio status */

    /* Take copy of the status of the ratio */
    ratio = rba_DemObdBasic_Iumpr_RatioSt(idxRatio);

    /* If the ratio is of "Observer" kind, and the mapped event is tested in this cycle */
    if (rba_DemObdBasic_Ratio_GetRatioKind(idxRatio) == DEM_OBDIUMPR_RATIOTYPE_OBSERVER)
    {
        if (Dem_EvtGetTestCompleteTFCSincePreinit(rba_DemObdBasic_Ratio_GetEvent(idxRatio)) && ((ratio & DEM_RATIO_STSMASK_NUM_RLS) == 0u))
        {
            /* Mark that the numerator release condition has been met for the ratio */
            ratio |= DEM_RATIO_STSMASK_NUM_RLS;
        }
    }

    /* If not prevented from further increment in this cycle, due to already it has incremented or is locked by fault */
    if ((ratio & (DEM_RATIO_STSMASK_NUMER_INCD | DEM_RATIO_STSMASK_NUMER_LOCKED)) == 0u)
    {
        /* If the diagnostic has run AND engine start detected  */
        if ((ratio & DEM_RATIO_STSMASK_NUM_RLS) > 0u)
        {
            /* If the numerator reached the maximum value */
            if (rba_DemObdBasic_Iumpr_RatioNum(idxRatio) >= DEM_OBDIUMPR_MAXUINT16)
            {
                /* Halve both numerator and denominator to avoid overflow */
                rba_DemObdBasic_Ratio_HandleOverflow(idxRatio);
            }

            /* Now, increment the numerator */
            rba_DemObdBasic_Iumpr_RatioNum(idxRatio)++;

            /* Mark that the numerator is incremented in this cycle and hence, should not increment again */
            ratio |= DEM_RATIO_STSMASK_NUMER_INCD;
        }
    }

    /* If anything has changed */
    if (ratio != rba_DemObdBasic_Iumpr_RatioSt(idxRatio))
    {
        /* Enter atomic section */
        DEM_ENTERLOCK_MON();

        /* Write back the updated status under lock because it is also updated via APIs [For example, the "physical
         activation" bit can be cleared via API. So, we should avoid putting back the old status of the flag due
         to bitwise-OR in case it was meanwhile cleared via API. This is achieved by masking out the bits
         which are not computed in this function newly */
        rba_DemObdBasic_Iumpr_RatioSt(idxRatio) |= (ratio & (DEM_RATIO_STSMASK_NUM_RLS | DEM_RATIO_STSMASK_NUMER_INCD));

        /* Exit atomic section */
        DEM_EXITLOCK_MON();
    }
}

static void rba_DemObdBasic_Ratio_UpdateMinRatio(Dem_RatioIdType idxRatio)
{
    uint16 cntrNum; /* Local copy for the numerator of the currently considered ratio record */
    uint16 cntrDenom; /* Local copy for the denominator of the currently considered ratio record */
    uint16 ratio; /* Ratio of the currently considered ratio record */
    uint8 group; /* IUMPR group of the currently considered ratio record */
    boolean isNewMin; /* Flag to indicate of the currently considered ratio record is the new group minimum */

    /* Initialisation */
    isNewMin = FALSE;

    /* Take copies of the numerator and denominator and the group of the currently considered record */
    cntrNum = rba_DemObdBasic_Iumpr_RatioNum(idxRatio);
    cntrDenom = rba_DemObdBasic_Iumpr_RatioDenom(idxRatio);
    group = rba_DemObdBasic_Ratio_GetRatioGroup(idxRatio);

    /* Now, compute the ratio. The library function takes care of saturation to max value in case of division by 0 */
    ratio = Mfx_MulDiv_u16u16u16_u16(cntrNum, DEM_OBDIUMPR_FACT_RES_REV, cntrDenom);

    /* If currently processed ratio is the same as the minimum ratio found so far OR no minimum ratio found so far OR
     * the current record corresponds to a newer Minimum ratio */
    if ((rba_DemObdBasic_IumprGroupMinRatioIdx[group] == idxRatio)
            || (rba_DemObdBasic_IumprGroupMinRatioIdx[group] >= DEM_CFG_NUM_ALL_IUMPR_RATIOS)
            || (rba_DemObdBasic_IumprGroupMinRatio[group] > ratio))
    {
        isNewMin = TRUE;
    }
    else
    {
        if (ratio == rba_DemObdBasic_IumprGroupMinRatio[group]) /* Current record has the same ratio as the Min ratio */
        {
            /* When ratios are equal, the one with the highest denominator is selected */
            if (cntrDenom > rba_DemObdBasic_Iumpr_RatioDenom(rba_DemObdBasic_IumprGroupMinRatioIdx[group]))
            {
                isNewMin = TRUE;
            }
            else if ((cntrDenom == 0u) && (rba_DemObdBasic_Iumpr_RatioDenom(rba_DemObdBasic_IumprGroupMinRatioIdx[group]) == 0u))
            {
                /* Both the denominators are zero's in which case we select the record with the least
                 numerator */
                if (cntrNum < rba_DemObdBasic_Iumpr_RatioNum(rba_DemObdBasic_IumprGroupMinRatioIdx[group]))
                {
                    isNewMin = TRUE;
                }
            }
            else /* equal ratios, non-zero denominators => Identical Numerator/Denominator */
            {
                /* Never forget to greet MISRA */
            }
        }
    }

    /* If the current record is the new Minimum ratio in the group */
    if (isNewMin)
    {
        /* Update the group specific minimum ratio information */
        rba_DemObdBasic_IumprGroupMinRatio[group] = ratio;
        rba_DemObdBasic_IumprGroupMinRatioIdx[group] = idxRatio;
    }
}

/**
 ***********************************************************************************************************************
 * This function handles the update of numerator and denominator of individual IUMPR ratios. In addition, it also does
 * the update of Minimum ratio in a group, if requested via input parameter.
 *
 * \param        numRatiosToScan : Number of consecutive ratio records to be processed for this invocation
 * \param        updtMinRatio    : Update of group minimum ratio necessary?
 *
 * \return       void
 * \seealso
 * \usedresources
 ***********************************************************************************************************************
 */

void rba_DemObdBasic_Ratio_UpdateRatios(uint16 numRatiosToScan, boolean updtMinRatio)
{
    uint16 idxLoop; /* Loop iterator */

    for (idxLoop = 0U; idxLoop < numRatiosToScan; idxLoop++)
    {
        /* If the last available ratio was already processed */
        if (rba_DemObdBasic_IumprScannedRatioIdx >= DEM_CFG_NUM_ALL_IUMPR_RATIOS)
        {
            /* All ratios processed, start from the first ratio again */
            rba_DemObdBasic_IumprScannedRatioIdx = 0U;
        }

        /* If ratio is mapped to a suppressed diagnostics - Don't evaluate it */
        if (!Dem_EvtIsSuppressed(rba_DemObdBasic_Ratio_GetEvent(rba_DemObdBasic_IumprScannedRatioIdx)))
        {
            /* Evaluate the condition which could prevent increment of numerator/denominator */
            rba_DemObdBasic_Ratio_EvalRatioLock(rba_DemObdBasic_IumprScannedRatioIdx);

            /* Evaluate the ratio specific denominator */
            rba_DemObdBasic_Ratio_EvalRatioDenominator(rba_DemObdBasic_IumprScannedRatioIdx);

            /* Evaluate the ratio specific numerator */
            rba_DemObdBasic_Ratio_EvalRatioNumerator(rba_DemObdBasic_IumprScannedRatioIdx);

            /* If requested, refresh the MinimumRatioPerGroup information */
            if (updtMinRatio)
            {
                rba_DemObdBasic_Ratio_UpdateMinRatio(rba_DemObdBasic_IumprScannedRatioIdx);
            }
        }

        /* Increment index to process the next ratio */
        rba_DemObdBasic_IumprScannedRatioIdx++;
    }
}

Dem_RatioIdType rba_DemObdBasic_Ratio_GetMinRatioIdxForGroup(uint8 group)
{
    return rba_DemObdBasic_IumprGroupMinRatioIdx[group];
}

Std_ReturnType Dem_GetIUMPRRatioData(Dem_RatioIdType RatioID, uint16* Numerator, uint16* Denominator,
        Dem_EventIdType* EventID, uint8* Group)
{
    Std_ReturnType retValue = E_NOT_OK;

    if (RatioID < DEM_CFG_NUM_ALL_IUMPR_RATIOS)
    {
        if (!Dem_EvtIsSuppressed(rba_DemObdBasic_Ratio_GetEvent(RatioID)))
        {
            /* Enter atomic section */
            DEM_ENTERLOCK_DCM();

            *Numerator = rba_DemObdBasic_Iumpr_RatioNum(RatioID); /* Retrieve the numerator value     */
            *Denominator = rba_DemObdBasic_Iumpr_RatioDenom(RatioID); /* Retrieve the denominator value   */

            /* Exit atomic section */
            DEM_EXITLOCK_DCM();

            *EventID = rba_DemObdBasic_Ratio_GetEvent(RatioID); /* Retrieve the mapped Event        */
            *Group = rba_DemObdBasic_Ratio_GetRatioGroup(RatioID); /* Retrieve the mapped group        */

            retValue = E_OK;
        }
    }

    return retValue;
}

Std_ReturnType Dem_RepIUMPRFaultDetect(Dem_RatioIdType RatioID)
{
    Std_ReturnType retValue = E_NOT_OK;

    if (RatioID < DEM_CFG_NUM_ALL_IUMPR_RATIOS)
    {
        if (rba_DemObdBasic_Ratio_GetRatioKind(RatioID) == DEM_OBDIUMPR_RATIOTYPE_API)
        {
            if (!Dem_EvtIsSuppressed(rba_DemObdBasic_Ratio_GetEvent(RatioID)))
            {
                /* Enter atomic section */
                DEM_ENTERLOCK_MON();

/* BSW-8482 */ /* [$DD_BSWCODE 14932] */
#if (DEM_CFG_EVT_PROJECT_EXTENSION)
                Dem_ProjectExtensionRepIUMPRFaultDetect(RatioID);
#endif
/* END BSW-8482 */
                /* Mark the ratio to enable increment of numerator (if other necessary conditions are satisfied too) */
                rba_DemObdBasic_Iumpr_RatioSt(RatioID) |= DEM_RATIO_STSMASK_NUM_RLS;

                /* Exit the atomic section */
                DEM_EXITLOCK_MON();

                retValue = E_OK;
            }
        }
    }

    return retValue;
}

Std_ReturnType Dem_RepIUMPRDenLock(Dem_RatioIdType RatioID)
{
    Std_ReturnType retValue = E_NOT_OK;

    if (RatioID < DEM_CFG_NUM_ALL_IUMPR_RATIOS)
    {
        if (rba_DemObdBasic_Ratio_GetRatioDenGroup(RatioID) == DEM_OBDIUMPR_DENCOND_PHYS_API)
        {
            if (!Dem_EvtIsSuppressed(rba_DemObdBasic_Ratio_GetEvent(RatioID)))
            {
                /* Enter atomic section */
                DEM_ENTERLOCK_MON();

                /* Mark the ratio to prevent release of denominator */
                rba_DemObdBasic_Iumpr_RatioSt((uint16)RatioID) &= ((uint8) (~DEM_RATIO_STSMASK_PHYACT_COND));

                /* Exit atomic section */
                DEM_EXITLOCK_MON();

                retValue = E_OK;
            }
        }
    }

    return retValue;
}

Std_ReturnType Dem_RepIUMPRDenRelease(Dem_RatioIdType RatioID)
{
    Std_ReturnType retValue = E_NOT_OK;

    if (RatioID < DEM_CFG_NUM_ALL_IUMPR_RATIOS)
    {
        if (rba_DemObdBasic_Ratio_GetRatioDenGroup(RatioID) == DEM_OBDIUMPR_DENCOND_PHYS_API)
        {
            if (!Dem_EvtIsSuppressed(rba_DemObdBasic_Ratio_GetEvent(RatioID)))
            {
                /* Enter the atomic section */
                DEM_ENTERLOCK_MON();

                /* Mark the ratio to enable denominator increment, if other necessary conditions are satisfied too */
                rba_DemObdBasic_Iumpr_RatioSt((uint16)RatioID) |= DEM_RATIO_STSMASK_PHYACT_COND;

                /* Exist the atomic section */
                DEM_EXITLOCK_MON();

                retValue = E_OK;
            }
        }
    }

    return retValue;
}

/* BSW-12813 */ /* [$DD_BSWCODE 30040] */
Std_ReturnType Dem_Rb_GetIUMPRGroupRatios(uint8 IumprGroupId, Dem_RatioIdType* RatioIDBuffer, uint16* RatioIDBufferSize)
{
    Std_ReturnType retValue = E_NOT_OK;
    Dem_RatioIdType ratioIter = 0u;
    uint16 outBufferIter = 0u;

    if (IumprGroupId < DEM_CFG_NUM_ALL_IUMPR_GROUPS)
    {
        if((NULL_PTR != RatioIDBuffer) && (NULL_PTR != RatioIDBufferSize))
        {
            if((*RatioIDBufferSize) > rba_DemObdBasic_Group_GetRatiosNum(IumprGroupId))
            {
                for(ratioIter = 0u; ratioIter < DEM_CFG_NUM_ALL_IUMPR_RATIOS; ratioIter++)
                {
                    if(rba_DemObdBasic_Ratio_GetRatioGroup(ratioIter) == IumprGroupId)
                    {
                        if (!Dem_EvtIsSuppressed(rba_DemObdBasic_Ratio_GetEvent(ratioIter)))
                        {
                            RatioIDBuffer[outBufferIter] = ratioIter;
                            outBufferIter++;
                        }
                    }
                }
                /*Return E_OK only if at least one ratio belonging to IumprGroupId could be found*/
                if(outBufferIter > 0u)
                {
                    *RatioIDBufferSize = outBufferIter;
                    retValue = E_OK;
                }
            }
        }
    }
    return retValue;
}
/* END BSW-12813 */

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif

