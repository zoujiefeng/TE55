

#include "rba_DemObdBasic_Prv.h"

#define DEM_START_SEC_VAR_INIT
#include "Dem_MemMap.h"

static boolean rba_DemObdBasic_OBDRelevantNvmBlockNotReadCorrectly = FALSE;

#define DEM_STOP_SEC_VAR_INIT
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST
#include "Dem_MemMap.h"

/* MR12 RULE 20.7 VIOLATION: Initialization MACRO need not be parenthesized  */
static DEM_ARRAY_DEFINE_CONST(Dem_NvmBlockIdType, Dem_NvMObdRelevantBlockIds, DEM_NVM_OBD_RELEVANT_BLOCKS_TOTAL, DEM_NVM_OBD_RELEVANT_BLOCKS);

#define DEM_STOP_SEC_CONST
#include "Dem_MemMap.h"

void rba_DemObdBasic_Init(void)
{
    rba_DemObdBasic_Mil_Init();
    rba_DemObdBasic_Iumpr_Init();
/* BSW-12320 */ /* [$DD_BSWCODE 29786] */
    rba_DemObdBasic_Rdy_Init();
/* END BSW-12320 */
/* BSW-13093 */ /* [$DD_BSWCODE 30792] */
#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)    
    rba_DemObdBasic_DistanceTimePid_Init();
#endif
/* END BSW-13093 */
}

void rba_DemObdBasic_InitCheckPlausability(void)
{
    rba_DemObdBasic_PdtcMem_Init();
}

void rba_DemObdBasic_InitCheckNvm(void)
{
    rba_DemObdBasic_PdtcMem_InitCheckNvM();
    rba_DemObdBasic_Iumpr_InitCheckNvm();
/* BSW-8793 */ /* [$DD_BSWCODE 17259] */
#if (DEM_CFG_OBD_DTR == TRUE)
    rba_DemObdBasic_Dtr_InitCheckNvm();
#endif
/* END BSW-8793 */
}

void rba_DemObdBasic_MainFunction(void)
{
    rba_DemObdBasic_PdtcMem_MainFunction();
    rba_DemObdBasic_Iumpr_MainFunction();
/* BSW-13093 */ /* [$DD_BSWCODE 30793] */
#if (DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU)  
    rba_DemObdBasic_DistanceTimePid_MainFunction();
#endif
/* END BSW-13093 */
}

void rba_DemObdBasic_Shutdown(void)
{
    rba_DemObdBasic_Iumpr_Shutdown();
/* BSW-8793 */ /* [$DD_BSWCODE 17260] */
#if (DEM_CFG_OBD_DTR == TRUE)
    rba_DemObdBasic_Dtr_Shutdown();
#endif
/* END BSW-8793 */
}

Std_ReturnType Dem_IsOBDFullClearPossible(void)
{
    Std_ReturnType ClearAllowed_RetVal = E_NOT_OK;

    if(rba_DemObdBasic_EvMem_IsClearAllowedForEvMemEntries())
    {
    	ClearAllowed_RetVal = E_OK;
    }
    return ClearAllowed_RetVal;
}

void rba_DemObdBasic_Clear(Dem_DTCOriginType DTCOrigin)
{
    /* for now only primary memory supported */
    if (DTCOrigin == DEM_DTC_ORIGIN_PRIMARY_MEMORY)
    {
        /* rename to ClearDiagnosticInformation */
        rba_DemObdBasic_Mil_Clear();
        rba_DemObdBasic_PdtcMem_Clear();
        rba_DemObdBasic_Pid_Clear();
/* BSW-12320 */
		/* [$DD_BSWCODE 29785] */
        rba_DemObdBasic_Rdy_Clear();
/* END BSW-12320 */
/* BSW-13093 */
/* [$DD_BSWCODE 30791] */
#if ((DEM_CFG_OBD_SUPPORT == DEM_OBD_MASTER_ECU) ||\
     ((DEM_CFG_OBD_SUPPORT == DEM_OBD_PRIMARY_ECU) &&\
      ((DEM_CFG_OBD_PID21_CENTRAL != DEM_CFG_OBD_PID21_CENTRAL_OFF) ||\
       (DEM_CFG_OBD_PID31_CENTRAL != DEM_CFG_OBD_PID31_CENTRAL_OFF)||\
       (DEM_CFG_OBD_PID4D_CENTRAL != DEM_CFG_OBD_PID4D_CENTRAL_OFF)||\
       (DEM_CFG_OBD_PID4E_CENTRAL != DEM_CFG_OBD_PID4E_CENTRAL_OFF))))        
        rba_DemObdBasic_DistanceTime_Pid_Clear();
#endif
/* END BSW-13093 */
/* BSW-8793 */
#if (DEM_CFG_OBD_DTR == TRUE)
		/* [$DD_BSWCODE 29785] */
        rba_DemObdBasic_ClearAllDtr();
#endif
/* END BSW-8793 */
        rba_DemObdBasic_OperationCycle_Clear();
    }
}

void rba_DemObdBasic_NvMInit(void)
{
    Dem_NvmBlockIdType NvmIdIndex;
    Dem_NvmResultType blockStatus;

    for (NvmIdIndex = 0; NvmIdIndex < DEM_NVM_OBD_RELEVANT_BLOCKS_TOTAL; NvmIdIndex++)
    {
        blockStatus = Dem_NvmGetStatus(Dem_NvMObdRelevantBlockIds[NvmIdIndex]);
        if ( ( blockStatus != DEM_NVM_SUCCESS ) &&
             ( blockStatus != DEM_NVM_INVALID ) )
        {
            rba_DemObdBasic_OBDRelevantNvmBlockNotReadCorrectly = TRUE;
            break;
        }
    }
}

boolean Dem_IsOBDRelevantNvmBlockNotReadCorrectly(void)
{
    return rba_DemObdBasic_OBDRelevantNvmBlockNotReadCorrectly;
}

void rba_DemObdBasic_NvMShutdown(void)
{
    rba_DemObdBasic_OBDRelevantNvmBlockNotReadCorrectly = FALSE;
}
