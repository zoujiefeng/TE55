#include "CanTrcv.h"

#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"
/**
 ***************************************************************************************************
 * \moduledescription
 * function to read out configured Dio pin for Cdd type of transceiver
 * If the Pin level is Low then it is treated as valid wakeup other wise no wakeup is detected
 *
 * \arg     - Transceiver   identifies Transceiver to which the API has to be applied
 * \arg     - CddNo    Cdd transcer number to acess the Dio
 * \return  -Std_ReturnType:  E_OK = Wakeup available,    E_NOT_OK = No wakekup detected
 * \see
 * \note   This function is available only when Dio is configured for CY327 type of transceiver
 BSW-15603
 ***************************************************************************************************
 */
 /* [$DD_BSWCODE 37509] */
#if CANTRCV_CY327_DIO_CONFIGURED == STD_ON
Std_ReturnType CanTrcv_CheckWakeupInternal_CDD(uint8 Transceiver, uint8 CddNo)
{
    Dio_LevelType  Value;
    Std_ReturnType RetVal = E_NOT_OK;

    CanTrcv_TrcvModeType CddTrcv_Mode = CANTRCV_TRCVMODE_NORMAL;    // Set default value

    RetVal = CanTrcv_GetOpMode_Cdd(Transceiver, &CddTrcv_Mode);
    if(RetVal == E_OK)
    {   // If mode is read correctly
        if((CddTrcv_Mode == CANTRCV_TRCVMODE_STANDBY) || (CddTrcv_Mode == CANTRCV_TRCVMODE_SLEEP))
        {   // If HW-Trcv is in correct mode to read out Pin-Level
            Value = Dio_ReadChannel(CANTRCV_CDDDIO_AST[CddNo].Pin) ^ ((Dio_LevelType)CANTRCV_CDDDIO_AST[CddNo].Invert);
            if(Value == STD_LOW)
            {
                // no need to set RetVal to E_OK as already set.
                CanTrcv_WakeupStateCdd_au8[CddNo] = TRUE; /* FALSE: no wakeup; TRUE=wakeup detected */
            }
            else
            {
                // Change RetVal meaning to No wakeup
                RetVal = E_NOT_OK;
            }
        }
    }
    return RetVal;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * function to monitor unexpected Mode Propogation for CDD type of Transceiver.
 *
 * \arg     - Transceiver   identifies Transceiver to which the API has to be applied
 * \return  -
 * \see
 * \note   This function is available only when Mode Propogation monitoring for CDD type of Transceiver is enabled
 BSW-15603
 ***************************************************************************************************
 */
 /* [$DD_BSWCODE 37517] */
#if (CANTRCV_MODE_PROPOGATION_REPORTING_CDD_BASED == STD_ON) && (CANTRCV_CFG_CDD_USED == STD_ON)
void CanTrcv_CheckModePropagation_Cdd(uint8 Transceiver)
{
    /*Variable to get Cdd ID*/
    uint8          CddNo;
    /*Get the current mode of transceiver*/
    CanTrcv_TrcvModeType OpModeCheck_en = CANTRCV_TRCVMODE_NORMAL;

#if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
#endif

    /*Copy the cdd ID*/
    CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
    /*Check if mode is valid to read*/
    /*If delay is loaded then decrement */
    if(CanTrcv_CddModeProp_ast[CddNo].CanTrcv_CddDelaycount != 0u)
    {
        CanTrcv_CddModeProp_ast[CddNo].CanTrcv_CddDelaycount--;
    }
    /*Monitor the mode trasation only after delay is elapsed and Mode trasaction is requested*/
    if((CanTrcv_CddModeProp_ast[CddNo].CanTrcv_CddDelaycount == 0u) && (CanTrcv_CddModeProp_ast[CddNo].CanTrcv_CddModeReady == 1u))
    {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
        CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
        (void)CANTRCV_CDD_FCTP_ST[CddNo].GetOpModeCdd(CddChnlId, &OpModeCheck_en);
#else
        (void)CANTRCV_CDD_FCTP_ST[CddNo].GetOpModeCdd(&OpModeCheck_en);
#endif

        if(CanTrcv_CddModeProp_ast[CddNo].CanTrcv_CddReqMode != CANTRCV_TRCVMODE_SLEEP)
        {
            // If read of state is ok and requested state equal to read out state, then returnval is E_OK.
            if(CanTrcv_CddModeProp_ast[CddNo].CanTrcv_CddReqMode != OpModeCheck_en)
            {
                /*Report Dem error*/
                CAN_TRCV_DEM_REPORTERRORSTATUS(CANTRCV_CDD_FCTP_ST[CddNo].CddPropModeDemEvent,DEM_EVENT_STATUS_PREFAILED);
            }
            else
            {
                /*Report Dem error with Pre Pass*/
                CAN_TRCV_DEM_REPORTERRORSTATUS(CANTRCV_CDD_FCTP_ST[CddNo].CddPropModeDemEvent,DEM_EVENT_STATUS_PREPASSED);
            }
        }
        else
        {
            if(OpModeCheck_en == CANTRCV_TRCVMODE_NORMAL)
            {
                /*Report Dem error*/
                CAN_TRCV_DEM_REPORTERRORSTATUS(CANTRCV_CDD_FCTP_ST[CddNo].CddPropModeDemEvent,DEM_EVENT_STATUS_PREFAILED);
            }
            else
            {
                /*Report Dem error with Pre Pass*/
                CAN_TRCV_DEM_REPORTERRORSTATUS(CANTRCV_CDD_FCTP_ST[CddNo].CddPropModeDemEvent,DEM_EVENT_STATUS_PREPASSED);
            }
        }
    }
}
#endif

#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"
