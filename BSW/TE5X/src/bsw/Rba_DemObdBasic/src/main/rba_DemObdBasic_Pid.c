

#include "rba_DemObdBasic_Prv.h"

#include "Dem_EvMem.h"
#include "Dem_EnvDataElement.h"
#include "Dem_Nvm.h"

#define PID01_MIL_STATUS_MASK       0x80

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

/***********************************************************************************************************************
 *                                            PID$01 Byte A computation
 **********************************************************************************************************************/
static uint8 rba_DemObdBasic_Pid_ComputePid01ByteA(void)
{
    uint16_least LocId;
    uint16_least LocIdStatus;
    Dem_EventIdType EventId;
    Dem_IndicatorStatusType stMil;
    uint8 tmpPid01ByteA_u8;

    tmpPid01ByteA_u8 = 0;

    /* loop over the whole Primary EvMem */
    for (Dem_EvMemEventMemoryLocIteratorNew(&LocId, DEM_CFG_EVMEM_MEMID_PRIMARY);
            Dem_EvMemEventMemoryLocIteratorIsValid(&LocId, DEM_CFG_EVMEM_MEMID_PRIMARY);
            Dem_EvMemEventMemoryLocIteratorNext(&LocId, DEM_CFG_EVMEM_MEMID_PRIMARY))
    {
        LocIdStatus = Dem_EvMemGetEventMemStatus(LocId);

        /* If the location is occupied */
        if (Dem_EvMemIsStored(LocIdStatus))
        {
            /* get Event ID of current entry */
            EventId = Dem_EvMemGetEventMemEventId(LocId);

            /* If event is mapped to emission relevant DTC and the event memory entry is in confirmed state */
            /* MR12 RULE 13.5 VIOLATION: the function "rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd" does not have any persistent side effects */
            if ((rba_DemObdBasic_Event_IsEmissionRelated(EventId))
                    && rba_DemObdBasic_EvMem_IsConfirmationVisibleInObd(LocIdStatus))
            {
                tmpPid01ByteA_u8++;
            }
        }
    }

    /* Get DEM MIL status (for Pid 01 only local MIL is considered) */
    stMil = rba_DemObdBasic_Mil_GetIndicatorStatusInternal();

    /* Only continuous illumination considered (DEM_INDICATOR_BLINK_CONT includes continuous too) */
    if ((stMil == DEM_INDICATOR_CONTINUOUS) || (stMil == DEM_INDICATOR_BLINK_CONT))
    {
        /* It is not expected that the number of confirmed faults will exceed 127, so direct masking without first
         * limiting to 127 is acceptable */
        tmpPid01ByteA_u8 |= (uint8) PID01_MIL_STATUS_MASK;
    }

    return tmpPid01ByteA_u8;
}

Std_ReturnType Dem_DcmReadDataOfPID01(uint8* PID01value)
{
    /* PID$01 is always supported in all OBD systems */
    uint32 stBuf_u32; /* Temporary buffer for assembling the PID bytes */

    /* Get bytes B, C and D and merge with Byte A */
    stBuf_u32 = (((uint32) rba_DemObdBasic_Pid_ComputePid01ByteA()) << 24u) | (rba_DemObdBasic_Rdy_GetPid01ByteBCD());

    PID01value[0] = (uint8) (stBuf_u32 >> 24);
    PID01value[1] = (uint8) (stBuf_u32 >> 16);
    PID01value[2] = (uint8) (stBuf_u32 >> 8);
    PID01value[3] = (uint8) (stBuf_u32);

    return E_OK;
}

Std_ReturnType Dem_DcmReadDataOfPID1C(uint8* PID1Cvalue)
{
    Std_ReturnType retVal = E_OK;

    *PID1Cvalue = (uint8) DEM_CFG_OBD_COMPLIANCY;

    return retVal;
}

Std_ReturnType Dem_DcmReadDataOfPID30(uint8* PID30value)
{
    Std_ReturnType retVal = E_OK;

    *PID30value = rba_DemObdBasic_PidNv.pid30;

    return retVal;
}

Std_ReturnType Dem_DcmReadDataOfPID41(uint8* PID41value)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint32 stBuf_u32; /* Temporary buffer for assembling the PID bytes */

    stBuf_u32 = rba_DemObdBasic_Rdy_GetPid41ByteBCD(); /* Get bytes B, C and D (Byte A is always 0 for PID$41) */

    PID41value[0] = (uint8) (stBuf_u32 >> 24);
    PID41value[1] = (uint8) (stBuf_u32 >> 16);
    PID41value[2] = (uint8) (stBuf_u32 >> 8);
    PID41value[3] = (uint8) (stBuf_u32);
    retVal = E_OK;

    return retVal;
}

static void rba_DemObdBasic_Pid_UpdateNvmData(void)
{
    Dem_NvMWriteBlockImmediate(DEM_NVM_ID_DEM_GENERIC_NV_DATA);
}

void rba_DemObdBasic_Pid_Clear(void)
{
    DEM_ENTERLOCK_MON();
    rba_DemObdBasic_PidNv.pid30 = 0;
    DEM_EXITLOCK_MON();
    rba_DemObdBasic_Pid_UpdateNvmData();
}

static void rba_DemObdBasic_Pid_IncrementPID30(void)
{
    DEM_ASSERT_ISLOCKED();
    /* PID 30 - count the Warm-up cycle */
    /* HINT: If the MIL gets switched on, the WUC counter gets cleared inside the cyclic PID process */
    if (rba_DemObdBasic_PidNv.pid30 < (0xFFu))
    {
        rba_DemObdBasic_PidNv.pid30++; /* increment warm-up-cycle */
        rba_DemObdBasic_Pid_UpdateNvmData();
    }
}

void rba_DemObdBasic_Pid_QualifyWarmupCycle(void)
{
    rba_DemObdBasic_Pid_IncrementPID30();
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

