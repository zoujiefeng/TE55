

#include "rba_DemObdBasic_Prv.h"

#if DEM_CFG_OBD_IUMPR

#define DEM_START_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"

rba_DemObdBasic_IumprNvDataType rba_DemObdBasic_IumprNvData;

#define DEM_STOP_SEC_VAR_SAVED_ZONE
#include "Dem_MemMap.h"

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

void rba_DemObdBasic_Iumpr_Init(void)
{
    rba_DemObdBasic_Ratio_Init();
}

void rba_DemObdBasic_Iumpr_InitCheckNvm(void)
{
    /* The IUMPR contents in NvM block must be available at this point. So, check for the validity of the data and if
     * it's not ok, then clear the complete data and start afresh.
     * ASW request for clearing the non-volatile data eg: after reprogramming.*/

    if (Dem_NvMIsInvalidateAllNVMBlocksRequested())
    {
        /* Reset all NvM data */
        /* Fill the complete NvM structure with zeroes */
        DEM_MEMSET(&rba_DemObdBasic_IumprNvData, 0u, DEM_SIZEOF_VAR(rba_DemObdBasic_IumprNvData));
        Dem_NvMClearBlockByInvalidate(DEM_NVM_ID_OBD_IUMPR_DATA);
    }
    else
    {
        if (Dem_NvmGetStatus(DEM_NVM_ID_OBD_IUMPR_DATA) != DEM_NVM_SUCCESS)
        {
            /* Reset all NvM data */
            /* Fill the complete NvM structure with zeroes */
            DEM_MEMSET(&rba_DemObdBasic_IumprNvData, 0u, DEM_SIZEOF_VAR(rba_DemObdBasic_IumprNvData));
            Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_OBD_IUMPR_DATA);
        }
        else
        {
            /* Do Nothing */
        }
    }
}

/**
 ***********************************************************************************************************************
 * This function handles the start of a new driving cycle for IUMPR. It processes all the configured ratios for one last
 * time, to ensure that any new reports that arrived just before the driving cycle switch and not yet processed by the
 * slow, periodic scan of the IUMPR main function are not forgotten. Also, it resets the IUMPR variables if necessary.
 *
 * \param        void
 * \return       void
 * \seealso
 * \usedresources
 ***********************************************************************************************************************
 */
void rba_DemObdBasic_Iumpr_StartDrivingCycle(void)
{
    /* Process all ratios one last time */
    rba_DemObdBasic_Ratio_UpdateRatios(DEM_CFG_NUM_ALL_IUMPR_RATIOS, FALSE);
    rba_DemObdBasic_Ratio_StartDrivingCycle();

    rba_DemObdBasic_DenCond_StartDrivingCycle();
}

/* Process the start of ObdIgnitionCycle according CARB criteria
 * "engine start definition for at least two seconds +/- 1s".
 * We expect it after start of ObdDrivingCycle.
 * If the ObdIgnitionCycle criteria cannot be evaluated due to faults,
 * you must not trigger new ObdIgnitionCycles in order to avoid IumprIgnitionCycleCounter++
 */
void rba_DemObdBasic_Iumpr_StartObdIgnitionCycle(void)
{
    rba_DemObdBasic_Iumpr_IgnCycCntr++;
}

void rba_DemObdBasic_Iumpr_MainFunction(void)
{
    if(!Dem_ClearIsInProgress())
    {
        /* Currently all ratios are scanned
         * In future the number of ratios per mainfunction could be limited
         * (it needs to be ensured that each ratio is updated in time to ensure compliance) */
        rba_DemObdBasic_Ratio_UpdateRatios(DEM_CFG_NUM_ALL_IUMPR_RATIOS, TRUE);
    }
}

void rba_DemObdBasic_Iumpr_Shutdown(void)
{
    /* Process all ratios once, but without updating the minimum ratio per group */
    rba_DemObdBasic_Ratio_UpdateRatios(DEM_CFG_NUM_ALL_IUMPR_RATIOS, FALSE);
    /* Indicate to NvM that the data is valid/updated so that it gets written to non-volatile area during shutdown. The
     return value is not used since there is nothing that can be done in case of an error */
    Dem_NvMWriteBlockOnShutdown(DEM_NVM_ID_OBD_IUMPR_DATA);
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#endif

