

#include "rba_DemObdBasic_Prv.h"

boolean rba_DemObdBasic_IsDrivingCycleQualified(void)
{
    boolean retVal = FALSE;
    /* MR12 RULE 10.3 VIOLATION: It is ensured that these values are always small enough, the L is necessary because of other MISRA warnings in the DEM */
    DEM_UNUSED_PARAM(Dem_GetCycleQualified(DEM_OPCYC_OBD_DrivingCycle, &retVal));
    return retVal;
}

void rba_DemObdBasic_SetCycleQualified(Dem_OperationCycleIdType OperationCycleId)
{
    if(OperationCycleId == DEM_OPCYC_OBD_WarmUpCycle)
    {
        rba_DemObdBasic_Pid_QualifyWarmupCycle();
    }
}

void rba_DemObdBasic_OperationCycle_Clear(void)
{
    (void)Dem_ResetCycleQualified(DEM_OPCYC_OBD_PFCCycle);
    (void)Dem_ResetCycleQualified(DEM_OPCYC_OBD_WarmUpCycle);
}

void rba_DemObdBasic_StartOperationCycle (Dem_OperationCycleList currentTriggers, Dem_OperationCycleList currentQualified)
{
    if(!Dem_GetEvMemLock())
    {
        /* MR12 RULE 10.3 VIOLATION: It is ensured that these values are always small enough, the L is necessary because of other MISRA warnings in the DEM */
        if (DEM_OPERATIONCYCLE_ISBITSET(currentTriggers, DEM_OPCYC_OBD_DrivingCycle))
        {
            /* Make sure all delayed flags are cleared just in case the previous cycle was not qualified explicitly */
            rba_DemObdBasic_EvMem_HandleDrivingCycleQualified();

            rba_DemObdBasic_Mil_StartDrivingCycle();
            rba_DemObdBasic_PdtcMem_StartDrivingCycle();
            rba_DemObdBasic_Iumpr_StartDrivingCycle();
            /* BSW-12320 */ /* [$DD_BSWCODE 29787] */
            rba_DemObdBasic_Rdy_StartDrivingCycle();
            /* END BSW-12320 */
        }

        /* MR12 RULE 10.3 VIOLATION: It is ensured that these values are always small enough, the L is necessary because of other MISRA warnings in the DEM */
        if(DEM_OPERATIONCYCLE_ISBITSET(currentTriggers, DEM_OPCYC_OBD_PFCCycle))
        {
            rba_DemObdBasic_PdtcMem_StartPFCCycle();
        }

#ifdef DEM_OPCYC_OBD_IgnitionCycle
        /* MR12 RULE 10.3 VIOLATION: It is ensured that these values are always small enough, the L is necessary because of other MISRA warnings in the DEM */
        if(DEM_OPERATIONCYCLE_ISBITSET(currentTriggers, DEM_OPCYC_OBD_IgnitionCycle))
        {
            rba_DemObdBasic_PdtcMem_HandleIgnitionCycle();
            rba_DemObdBasic_Iumpr_StartObdIgnitionCycle();
        }
#endif

        // Take triggers instead of qualified status
        /* MR12 RULE 10.3 VIOLATION: It is ensured that these values are always small enough, the L is necessary because of other MISRA warnings in the DEM */
        if(DEM_OPERATIONCYCLE_ISBITSET(currentQualified, DEM_OPCYC_OBD_DrivingCycle))
        {
            rba_DemObdBasic_EvMem_HandleDrivingCycleQualified();
        }
    }
}
