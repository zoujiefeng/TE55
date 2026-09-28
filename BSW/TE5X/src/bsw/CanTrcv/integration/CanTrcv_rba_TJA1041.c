/*Please change the macro definition to enable integration code below*/

/*Please remove the conditional compilation and its corresponding #endif to enable integration code below*/
#if 0u
/* BSW-15603 */
#include "CanTrcv_rba_TJA1041.h"

#if (CANTRCV_DEV_ERROR_DETECT == STD_ON)
#define CANTRCV_DET_REPORTERROR(CanId, ApiId, ErrId )            (void)Det_ReportError(CANTRCV_MODULE_ID, (CanId), (ApiId), (ErrId));
#else
#define CANTRCV_DET_REPORTERROR(CanId, ApiId, ErrId )
#endif

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"
CanTrcv_TrcvWakeupReasonType rba_TJA1041_WakeupReason_au8;
CanTrcv_TrcvModeType rba_TJA1041_Dio_Mode_au8;
#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"


#define TJA1041_CHANNEL_ID          0

// Index of the TJA1041 's Dio Channels in CANTRCV_CDDDIO_AST/CanTrcv_CddDio_ast array
#define DIOCHNL_STB      0
#define DIOCHNL_EN       1

#define CANTRCV_START_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
#include "CanTrcv_MemMap.h"

const uint8 rba_TJA1041_SetModeStructChainPos_au8[]=
{
      0    // 0 rba_TJA1041  NormalMode
    , 2    // 1 rba_TJA1041  SleepMode
    , 4    // 2 rba_TJA1041  StandbyMode
    , 6    // 3 rba_TJA1041  ReceiveOnlyMode
    , 8    // 4 End
};

const CanTrcv_ModeStructChain_tst rba_TJA1041_SetModeStructChain_ast[]=
{   /* {IoNr, Value, WaitTime} !Ordering according bustype mode because of direct access!*/
    {DIOCHNL_STB, STD_HIGH, 0},  {DIOCHNL_EN, STD_HIGH, 8},     /* 0 TJA1041 0  NormalMode */
    {DIOCHNL_STB, STD_LOW, 0}, {DIOCHNL_EN, STD_HIGH, 50},     /* 5 TJA1041 0  SleepMode */
    {DIOCHNL_EN, STD_LOW, 0},  {DIOCHNL_STB, STD_LOW, 0},     /* 7 TJA1041 0  StandbyMode */
    {DIOCHNL_EN, STD_LOW, 0},  {DIOCHNL_STB, STD_HIGH, 0}     /* 9 TJA1041 0  ReceiveOnlyMode */
};

const CanTrcv_TrcvModeType rba_TJA1041_GetModeArray_st[]= /* ListNr (see), Table From PinState to Mode */
{

    /*  TJA1041, Bit0=EN, Bit1=STBN. See table CanTrcv_Dio_GetModePinChain_au8  */
    CANTRCV_TRCVMODE_STANDBY, CANTRCV_TRCVMODE_STANDBY, CANTRCV_TRCVMODE_SLEEP, CANTRCV_TRCVMODE_NORMAL
};
#define CANTRCV_STOP_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
#include "CanTrcv_MemMap.h"



#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"

static boolean Cantrcv_CheckTimeElapsed(CanTrcv_Cfg_Tick_to CurrentTime_o,
                                        CanTrcv_Cfg_Tick_to StartTime_o, CanTrcv_Cfg_Tick_to TimePeriod_o);
static void CanTrcv_WaitUs(CanTrcv_Cfg_Tick_to StartTime_o, CanTrcv_Cfg_Tick_to TimePeriod_o);

/**
 ***************************************************************************************************
 * \moduledescription
 * Init Function for CDD type Can Transceiver function.
 *
 * \param   void
 * \arg
 * \return    void
 * \see
 * \note
 ***************************************************************************************************
 */
void CanTrcv_rba_TJA1041_CanTrcvInit()
{
    rba_TJA1041_WakeupReason_au8 = CANTRCV_WU_NOT_SUPPORTED;
    CanTrcv_rba_TJA1041_CanTrcvSetOpMode(CANTRCV_CDD_FCTP_ST[TJA1041_CHANNEL_ID].InitState);

    /* Read and check if the state is set correctly */
    CanTrcv_rba_TJA1041_CanTrcvGetOpMode(&rba_TJA1041_Dio_Mode_au8);
    if (rba_TJA1041_Dio_Mode_au8 != CANTRCV_CDD_FCTP_ST[TJA1041_CHANNEL_ID].InitState)
    {
        CanTrcv_Prv_InitState_b = FALSE;
    }
}

/**
 ***************************************************************************************************
 * \moduledescription
 * This function sets the transceiver mode
 *
 * \param   CanTrcv_TrcvModeType        CanTrcv_TrcvModeType
 * \arg     OpMode                      Selects the state the transceiver will transit to
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvSetOpMode(CanTrcv_TrcvModeType OpMode)
{
    uint8 TrcvId = CANTRCV_CDD_FCTP_ST[TJA1041_CHANNEL_ID].TransceiverId;
    CanTrcv_ModeStructChain_tst  const* ModeStructChain_pst;
    CanTrcv_Cfg_Tick_to CanTrcv_StateChangeTime_o;
    uint8 idx;  /* pos in CanTrcv_Dio_SetModeStructChainPos_au8 */
    uint8 end;

    CanTrcv_rba_TJA1041_CanTrcvGetOpMode(&rba_TJA1041_Dio_Mode_au8);
    if (rba_TJA1041_Dio_Mode_au8 != OpMode)
    {
        if((rba_TJA1041_Dio_Mode_au8 == CANTRCV_TRCVMODE_SLEEP) &&
           (rba_TJA1041_WakeupReason_au8 == CANTRCV_WU_NOT_SUPPORTED) &&
           (OpMode == CANTRCV_TRCVMODE_NORMAL))
        {
            rba_TJA1041_WakeupReason_au8 = CANTRCV_WU_INTERNALLY;
        }

        if(OpMode == CANTRCV_TRCVMODE_SLEEP)    /* clear WakeupReason_au8 if requested mode CANTRCV_TRCVMODE_SLEEP */
        {
            /* clear WU Reason when goto sleep to be prepared for next wakeup */
            rba_TJA1041_WakeupReason_au8 = CANTRCV_WU_NOT_SUPPORTED;
        }

        idx = rba_TJA1041_SetModeStructChainPos_au8[OpMode];
        end = rba_TJA1041_SetModeStructChainPos_au8[OpMode+1];

        do{
            ModeStructChain_pst = &rba_TJA1041_SetModeStructChain_ast[idx];    /* ModeStructChain_pst points to conf data */

            Dio_WriteChannel(CANTRCV_CDDDIO_AST[ModeStructChain_pst->IoNr].Pin, ModeStructChain_pst->Value ^ (CANTRCV_CDDDIO_AST[ModeStructChain_pst->IoNr].Invert));
            if(ModeStructChain_pst->WaitTime > 0)
            {
                CANTRCV_GETTIME(&CanTrcv_StateChangeTime_o);  /* Get Time after DioPin changed */
                CanTrcv_WaitUs(CanTrcv_StateChangeTime_o, ModeStructChain_pst->WaitTime );
            }
            idx++;
        }while(idx != end);
    }
    rba_TJA1041_Dio_Mode_au8 = OpMode;

#if (CANTRCV_MODE_PROPOGATION_REPORTING_CDD_BASED == STD_ON)
            /*Copy the requested mode to global variable to monitor the unexpected mode propogation*/
            CanTrcv_CddModeProp_ast[TJA1041_CHANNEL_ID].CanTrcv_CddReqMode = OpMode;
            /*Set the flag to indicate the mode transition is requested*/
            CanTrcv_CddModeProp_ast[TJA1041_CHANNEL_ID].CanTrcv_CddModeReady = 1u;
            /*Copy the configued delay time ti global variable which will be used in main funtion*/
            CanTrcv_CddModeProp_ast[TJA1041_CHANNEL_ID].CanTrcv_CddDelaycount = CANTRCV_CDD_FCTP_ST[TJA1041_CHANNEL_ID].CddModeChangeDelay;
#endif
    /* Mode indication to upper layer */
    CanIf_TrcvModeIndication(TrcvId, OpMode);
    return E_OK;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the actual state of the transceiver.
 *
 * \param   CanTrcv_TrcvModeType*   CanTrcv_TrcvModeType
 * \arg     OpMode                  Current state of the transceiver
 * \return     E_OK:        The state can be evaluated
 *             E_NOT_OK:    The state could not be evaluated, either because of transceiver error
 *                          or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvGetOpMode(CanTrcv_TrcvModeType * OpMode)
{
    uint8 Value = 0;

    *OpMode = CANTRCV_TRCVMODE_NORMAL;   /* Default value on error */
    /* Get relevant configuration parameter */

    /* get value of two Pins defined in CanTrcv_Dio_GetModePinChain_au8 */
    Value  = (uint8)((Dio_ReadChannel(CANTRCV_CDDDIO_AST[DIOCHNL_STB].Pin) ^ (CANTRCV_CDDDIO_AST[DIOCHNL_STB].Invert)) & 0x01u);
    Value |= (uint8)(((Dio_ReadChannel(CANTRCV_CDDDIO_AST[DIOCHNL_EN].Pin) ^ (CANTRCV_CDDDIO_AST[DIOCHNL_EN].Invert)) & 0x01u) << 1u);
    /* caluclate Mode according CanTrcv_Dio_GetModeArray and read out pins */
    *OpMode = rba_TJA1041_GetModeArray_st[Value];
    return E_OK;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the wakeup reason.
 *
 * \param   CanTrcv_TrcvWakeupReasonType*  reason
 * \arg     reason                      Evaluated wakeup reason
 * \return     E_OK:                    The wakeup reason can be evaluated
 *             E_NOT_OK:                The wakeup reason could not be evaluated, either because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvGetBusWuReason (CanTrcv_TrcvWakeupReasonType * reason)
{
    *reason = rba_TJA1041_WakeupReason_au8;
    return E_OK;
}


/**
 ***************************************************************************************************
 * \moduledescription
 * Enables, disables or clears wake-up events of the Transceiver according to TrcvWakeupMode..
 *
 * \param   CanTrcv_TrcvWakeupModeType  WakeupMode
 * \arg     TrcvWakeupMode            requested wakeup mode
 * \return  E_OK:           The wakeup reason can be changed
 *          E_NOT_OK:       Error occurred
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvSetWakeupMode (CanTrcv_TrcvWakeupModeType TrcvWakeupMode)
{
    return E_OK;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * Checks HW for current or previous wakeup and returns value
 * This function notifies the calling function if a wakeup is detected in the Transceiver by returning E_OK else returns E_NOT_OK
 *
 * \param      void
 * \arg        void
 * \return     E_OK:                    The wakeup occured
 *             E_NOT_OK:                The wakeup not occured
 * \see
 * \note       Service is called by underlying CANIF in case a wake up interrupt is detected.
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TJA1041_CanTrcvCheckWakeup (void)
{
    return E_OK;
}

static void CanTrcv_WaitUs(CanTrcv_Cfg_Tick_to StartTime_o, CanTrcv_Cfg_Tick_to TimePeriod_o)
{
    CanTrcv_Cfg_Tick_to    CurrentTimerValue_o;
    CanTrcv_Cfg_Tick_to    OldTimerValue = 0;
    uint32 TimeoutCounter_u32;

    TimeoutCounter_u32 = 0;
    do
    {
        TimeoutCounter_u32++;
        /* MR12 RULE 11.3 VIOLATION: Convertion of OS-Time to CanTrcv_Time. As this is integrator code, different time-values-types has to be mapped to a general CanTrcv-time type */
        CANTRCV_GETTIME(&CurrentTimerValue_o);
        if(CurrentTimerValue_o == OldTimerValue)
        {
            TimeoutCounter_u32++;
        }
        else
        {
            TimeoutCounter_u32 = 0;
            OldTimerValue = CurrentTimerValue_o;
        }
    }while((Cantrcv_CheckTimeElapsed(CurrentTimerValue_o,StartTime_o,TimePeriod_o) == FALSE )  &&
           (TimeoutCounter_u32 < CANTRCV_TIMEMEASUREMENT_TIMEOUT));

}

static boolean Cantrcv_CheckTimeElapsed(CanTrcv_Cfg_Tick_to CurrentTime_o, CanTrcv_Cfg_Tick_to StartTime_o,
                                                                            CanTrcv_Cfg_Tick_to TimePeriod_o)
{
    CanTrcv_Cfg_Tick_to   DiffTime_o;
    boolean RetVal = TRUE;

    /* Check if StartTime_o + TimePeriod_o is after or same as CurrentTime_o */
    DiffTime_o = (CurrentTime_o - StartTime_o) ;
    if (DiffTime_o >= (TimePeriod_o * ((uint32)CANTRCV_CFG_TIME_FACTOR)))
    {
        RetVal = TRUE;    /* Time has expired ! (1)*/
    }
    else
    {
        RetVal = FALSE;   /* Time has not yet expired ! (0)*/
    }
    return RetVal;
}

#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"
/* END BSW-15603 */
#endif /*End of #if 0*/