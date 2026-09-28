

/*
 ***************************************************************************************************
 * \moduledescription
 *                      Public source file for CANTRCV
 *
 * \scope               API
 ***************************************************************************************************
 */


/*
 ***************************************************************************************************
 * Includes
 ***************************************************************************************************
 */




#include "CanTrcv_Prv.h"
#ifdef CANTRCV_CFG_CONFIGURED

#include "CanTrcv_Cfg_SchM.h"
#include "CanIf.h"
#include "CanIf_Cbk.h"
#include "Qspi_dma.h"

#if (CANTRCV_DEV_ERROR_DETECT  == STD_ON)
# include "Det.h"
#endif
/* BSW-9419 */
#if (CANTRCV_CFG_TJA1145_DEM_ENABLE  == STD_ON) || (CANTRCV_CFG_TLE9255_DEM_ENABLE  == STD_ON) || (CANTRCV_CFG_CDD_DEM_ENABLE == STD_ON) || (CANTRCV_CFG_DIO_DEM_ENABLE == STD_ON)
# include "Dem.h"
#endif
#if (CANTRCV_CFG_CS9XX_USED  == STD_ON)
# include "RBWAU_ClientInterface.h"
#endif

/**
***************************************************************************************************
*
*
*               Version Check
*
*
****************************************************************************************************
*/
#if(CANTRCV_PRV_EXPECTED_GEN_MAJOR_VERSION != CANTRCV_PRV_GEN_MAJOR_VERSION)
# error "Generator version does not fit to software version"
#endif
#if(CANTRCV_PRV_EXPECTED_GEN_MINOR_VERSION != CANTRCV_PRV_GEN_MINOR_VERSION)
# error "Generator version does not fit to software version"
#endif
#if (!defined(CANIF_AR_RELEASE_MAJOR_VERSION) || (CANIF_AR_RELEASE_MAJOR_VERSION < 3))
# error "CANIF AUTOSAR major version undefined or mismatched."
#endif
#if (!defined(CANIF_AR_RELEASE_MAJOR_VERSION) || (CANIF_AR_RELEASE_MAJOR_VERSION > 4))
# error "CANIF AUTOSAR major version undefined or mismatched."
#endif
#if (CANTRCV_DEV_ERROR_DETECT == STD_ON)
# if (!defined(DET_AR_RELEASE_MAJOR_VERSION) || (DET_AR_RELEASE_MAJOR_VERSION < 3))
#  error "DET AUTOSAR major version undefined or mismatched."
# endif
# if (!defined(DET_AR_RELEASE_MAJOR_VERSION) || (DET_AR_RELEASE_MAJOR_VERSION > 4))
#  error "DET AUTOSAR major version undefined or mismatched."
# endif
#endif
/* BSW-9419 */
#if (CANTRCV_CFG_TJA1145_DEM_ENABLE == STD_ON) || (CANTRCV_CFG_TLE9255_DEM_ENABLE  == STD_ON) || (CANTRCV_CFG_CDD_DEM_ENABLE == STD_ON) || (CANTRCV_CFG_DIO_DEM_ENABLE == STD_ON)
# if (!defined(DEM_AR_RELEASE_MAJOR_VERSION) || (DEM_AR_RELEASE_MAJOR_VERSION < 3))
#  error "DEM AUTOSAR major version undefined or mismatched."
# endif
# if (!defined(DEM_AR_RELEASE_MAJOR_VERSION) || (DEM_AR_RELEASE_MAJOR_VERSION > 4))
#  error "DEM AUTOSAR major version undefined or mismatched."
# endif
#endif

/* BSW-15603 Relocate to CanTrcv_Prv.h*/
#if (CANTRCV_VARIANT != CANTRCV_VARIANT_PRECOMPILE)

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

const CanTrcv_ConfigType * CanTrcv_ConfigData_st;

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#endif

/**
 ***************************************************************************************************
*
*
*               Global variables
*
*
****************************************************************************************************
*/

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
boolean CanTrcv_WakeupModeState_ab[CANTRCV_CFG_NUMBER_OF_CANTRCV];
#endif

#if CANTRCV_CDD_DIO_CONFIGURED == STD_ON
boolean CanTrcv_WakeupStateCdd_au8[CANTRCV_CFG_NUMBER_OF_CDD_CANTRCV]; /* 0: no wakeup; 1=wakeup detected */
#endif

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_INIT_UNSPECIFIED
#include "CanTrcv_MemMap.h"

boolean CanTrcv_Prv_InitState_b = FALSE;    /* 0:=FALSE not init, TRUE: init */

#define CANTRCV_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "CanTrcv_MemMap.h"



#if (CANTRCV_MODE_PROPOGATION_REPORTING_CDD_BASED == STD_ON) && (CANTRCV_CFG_CDD_USED == STD_ON)

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

CanTrcv_CddModeProp_tst CanTrcv_CddModeProp_ast[CANTRCV_CFG_NUMBER_OF_CDD_CANTRCV];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#endif

#if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )

#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"
LOCAL_INLINE Std_ReturnType CanTrcv_GetModeFor_TJA1145(uint16 CanTrcv_RegVal, CanTrcv_TrcvModeType * OpMode);
/* BSW-9419 */

# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
static void CanTrcv_Rb_ReInit_TJA1145( uint8 Transceiver);
# endif

#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"

/* Bitmask to store activities and states and requests. */
uint16 CanTrcv_Prv_TJA1145_SpiState[CANTRCV_CFG_TJA1145_MAX];
// Buffer for SPI to receive init data from trcv. Possibility to check initialization
//uint16 CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_INIT_MAX];
// Buffer for SPI to receive data from trcv
//uint16 CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_CTRL_MAX];
// Buffer for SPI to transmit changed data to trcv
//uint16 CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_CTRL_MAX];
#if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
/* Buffer for SPI to transmit ReInit data */
uint16 CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_INIT_MAX];
#endif

#define CANTRCV_STOP_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

uint8 CanTrcv_Prv_TJA1145_Wakeup_au8[CANTRCV_CFG_TJA1145_MAX];   /* 0=no wakeup; 1=wakeup detected */

#define CANTRCV_STOP_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

#define CANTRCV_TJA1145_SPI_STATE_INIT_MASK             0x0001u   // Bit-Mask in CanTrcv_Prv_TJA1145_SpiState
#define CANTRCV_TJA1145_SPI_STATE_INITDATA_MASK         0x0002u   // Bit-Maks in CanTrcv_Prv_TJA1145_SpiState shown possibly init data
#define CANTRCV_TJA1145_SPI_STATE_CLEAR_WUP_MASK        0x0004u   // Bit-Mask in CanTrcv_Prv_TJA1145_SpiState to clear wakeup reasons
#define CANTRCV_TJA1145_SPI_STATE_CLEAR_TIMEOUT_MASK    0x0008u   // Bit-Mask in CanTrcv_Prv_TJA1145_SpiState to clear timeout flag
#define CANTRCV_TJA1145_SPI_STATE_CLEAR_PNACTIVATE_MASK 0x0010u  // Bit-Mask in CanTrcv_Prv_TJA1145_SpiState to clear ActivationState
#define CANTRCV_TJA1145_SPI_STATE_SET_PNACTIVATE_MASK   0x0020u  // Bit-Mask in CanTrcv_Prv_TJA1145_SpiState to set  ActivationState
#define CANTRCV_TJA1145_SPI_STATE_MODE_INDICATION_MASK  0x0040u  // Bit-Mask in CanTrcv_Prv_TJA1145_SpiState to set  CanTrcvSetOpMode called
#define CANTRCV_TJA1145_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK  0x0080u // Bit-Mask in CanTrcv_Prv_TJA1145_SpiState to set  CanIf_ClearTrcvWufFlagIndication called
#define CANTRCV_TJA1145_SPI_STATE_SETOPMODE             0x0100u  // function SetOpMode was called
#define CANTRCV_TJA1145_SPI_STATE_CHECK_WAKEUP_READ     0x0200u  // CheckWakeup was called
#define CANTRCV_TJA1145_SPI_STATE_CHECK_WAKEUP_CHECK    0x0400u  // CheckWakeup was called and read data should be analyzed
#if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
#define CANTRCV_TJA1145_SPI_STATE_SET_REINIT_MASK       0x0800u  /* Bit-Mask in CanTrcv_Prv_TJA1145_SpiState to Re-Init after Trcv-Reset */
#endif

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

CanTrcv_TrcvModeType CanTrcv_Prv_TJA1145_State[CANTRCV_CFG_TJA1145_MAX];
CanTrcv_TrcvModeType CanTrcv_Prv_TJA1145_ReqState[CANTRCV_CFG_TJA1145_MAX];
// Buffer for SPI to receive init data from trcv. Possibility to check initialization
uint32 CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_INIT_MAX];
// Buffer for SPI to receive data from trcv
uint32 CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_CTRL_MAX];
// Buffer for SPI to transmit changed data to trcv
uint32 CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_CTRL_MAX];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#endif

#if CANTRCV_CFG_DIO_DEFAULT == STD_ON

#define CANTRCV_START_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

# if CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON
uint8 CanTrcv_Dio_Wakeup_au8[CANTRCV_CFG_DIO_MAX];   /* 0=no wakeup; 1=wakeup detected */
# endif

#define CANTRCV_STOP_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

CanTrcv_TrcvModeType CanTrcv_Dio_Mode_au8[CANTRCV_CFG_DIO_MAX];
CanTrcv_TrcvWakeupReasonType CanTrcv_Dio_WakeupReason_au8[CANTRCV_CFG_DIO_MAX];
CanTrcv_Cfg_Tick_to CanTrcv_StateChangeTime_ao[CANTRCV_CFG_DIO_MAX];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"

static boolean Cantrcv_CheckTimeElapsed(CanTrcv_Cfg_Tick_to CurrentTime_o,
                                        CanTrcv_Cfg_Tick_to StartTime_o, CanTrcv_Cfg_Tick_to TimePeriod_o);
static void CanTrcv_WaitUs(CanTrcv_Cfg_Tick_to StartTime_o, CanTrcv_Cfg_Tick_to TimePeriod_o);

#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"

#endif

/* BSW-9419 */
#if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )

#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"
/* [$DD_BSWCODE 12783] */
LOCAL_INLINE Std_ReturnType CanTrcv_GetModeFor_TLE9255(uint16 CanTrcv_RegVal, CanTrcv_TrcvModeType * OpMode);
/* [$DD_BSWCODE 28771] */
# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
static void CanTrcv_Rb_ReInit_TLE9255( uint8 Transceiver);
# endif

#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"

/* Bitmask to store activities and states and requests. */
uint16  CanTrcv_Prv_TLE9255_SpiState[CANTRCV_CFG_TLE9255_MAX];
// Buffer for SPI to receive init data from trcv. Possibility to check initialization
uint16  CanTrcv_Prv_TLE9255_SpiInitRxBuf_ao[CANTRCV_CFG_TLE9255_MAX][CANTRCV_CFG_TLE9255_SPI_INIT_MAX];
// Buffer for SPI to receive data from trcv
uint16  CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[CANTRCV_CFG_TLE9255_MAX][CANTRCV_CFG_TLE9255_SPI_CTRL_MAX];
// Buffer for SPI to transmit changed data to trcv
uint16  CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[CANTRCV_CFG_TLE9255_MAX][CANTRCV_CFG_TLE9255_SPI_CTRL_MAX];
#if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
/* Buffer for SPI to transmit ReInit data */
uint16 CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[CANTRCV_CFG_TLE9255_MAX][CANTRCV_CFG_TLE9255_SPI_INIT_MAX];
#endif

#define CANTRCV_STOP_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

uint8   CanTrcv_Prv_TLE9255_Wakeup_au8[CANTRCV_CFG_TLE9255_MAX];   /* 0=no wakeup; 1=wakeup detected */

#define CANTRCV_STOP_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

#define CANTRCV_TLE9255_SPI_STATE_INIT_MASK             0x0001u   // Bit-Mask in CanTrcv_Prv_TLE9255_SpiState
#define CANTRCV_TLE9255_SPI_STATE_INITDATA_MASK         0x0002u   // Bit-Maks in CanTrcv_Prv_TLE9255_SpiState shown possibly init data
#define CANTRCV_TLE9255_SPI_STATE_CLEAR_WUP_MASK        0x0004u   // Bit-Mask in CanTrcv_Prv_TLE9255_SpiState to clear wakeup reasons
#define CANTRCV_TLE9255_SPI_STATE_CLEAR_TIMEOUT_MASK    0x0008u   // Bit-Mask in CanTrcv_Prv_TLE9255_SpiState to clear timeout flag
#define CANTRCV_TLE9255_SPI_STATE_CLEAR_PNACTIVATE_MASK 0x0010u  // Bit-Mask in CanTrcv_Prv_TLE9255_SpiState to clear ActivationState
#define CANTRCV_TLE9255_SPI_STATE_SET_PNACTIVATE_MASK   0x0020u  // Bit-Mask in CanTrcv_Prv_TLE9255_SpiState to set  ActivationState
#define CANTRCV_TLE9255_SPI_STATE_MODE_INDICATION_MASK  0x0040u  // Bit-Mask in CanTrcv_Prv_TLE9255_SpiState to set  CanTrcvSetOpMode called
#define CANTRCV_TLE9255_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK  0x0080u // Bit-Mask in CanTrcv_Prv_TLE9255_SpiState to set  CanIf_ClearTrcvWufFlagIndication called
#define CANTRCV_TLE9255_SPI_STATE_SETOPMODE             0x0100u  // function SetOpMode was called
#define CANTRCV_TLE9255_SPI_STATE_CHECK_WAKEUP_READ     0x0200u  // CheckWakeup was called
#define CANTRCV_TLE9255_SPI_STATE_CHECK_WAKEUP_CHECK    0x0400u  // CheckWakeup was called and read data should be analyzed
#if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
#define CANTRCV_TLE9255_SPI_STATE_SET_REINIT_MASK       0x0800u  /* Bit-Mask in CanTrcv_Prv_TLE9255_SpiState to Re-Init after Trcv-Reset */
#endif

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

CanTrcv_TrcvModeType   CanTrcv_Prv_TLE9255_State[CANTRCV_CFG_TLE9255_MAX];
CanTrcv_TrcvModeType   CanTrcv_Prv_TLE9255_ReqState[CANTRCV_CFG_TLE9255_MAX];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#endif

#if (( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON ) || ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON ))

#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"
LOCAL_INLINE CanTrcv_TrcvWakeupReasonType CanTrcv_GetReasonFromMask(uint16 MaskVal_u16);

#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"

#endif

#if (( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON ) || ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON ))
#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

const CanTrcv_FctP_tst * CanTrcv_FctP_pst ;
# if CANTRCV_CFG_SPI_USED == STD_ON
const CanTrcv_Spi_tst  * CanTrcv_SpiArray_past ;
# endif

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#endif
/* END BSW-9419 */

/**
****************************************************************************************************
*
*
*              AUTOSAR CAN TRANSCEIVER DRIVER SPECIFIC FUNCTIONS
*              Function declarations
*
*
****************************************************************************************************
*/
#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"

/**
 ***************************************************************************************************
 * \moduledescription
 * Init Function for Can Transceiver function. One function for all transceivers.
 *
 * \param   -ConfigPtr - Config Pointer
 * \arg     -
 * \return  void
 * \see
 * \note    Initialization of global variables
 ***************************************************************************************************
 */
void CanTrcv_Init( const CanTrcv_ConfigType* ConfigPtr)
{
    uint8_least TrcvIdx_qu8;
    Qspi_CddInit(QSPI_DMA_CFG_1);

#if(CANTRCV_VARIANT != CANTRCV_VARIANT_PRECOMPILE)
   if(ConfigPtr != NULL_PTR)
   {
       CanTrcv_ConfigData_st = ConfigPtr;
#else
       (void)ConfigPtr;
#endif

       CanTrcv_Prv_InitState_b = TRUE;    /* TRUE: init */

        // Loop over all CanTrcv
       for(TrcvIdx_qu8 = 0; TrcvIdx_qu8 < CANTRCV_CFG_NUMBER_OF_CANTRCV; TrcvIdx_qu8++ )
       {
           if(CANTRCV_FCTP_ST[TrcvIdx_qu8].Init != NULL_PTR)
           {
               CANTRCV_FCTP_ST[TrcvIdx_qu8].Init((uint8)TrcvIdx_qu8 );
           }
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
            CanTrcv_WakeupModeState_ab[TrcvIdx_qu8] = TRUE;
#endif
        }
#if (CANTRCV_VARIANT != CANTRCV_VARIANT_PRECOMPILE)
    }
    else
    {
        CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_INIT, CANTRCV_E_PARAM_POINTER)
    }
# endif
}

/**
 ***************************************************************************************************
 * \moduledescription
 * Init Function for Dio Can Transceiver.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return  void
 * \see
 * \note    Initialization of global variables and bring trcv to configured init mode
 ***************************************************************************************************
 */
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
void CanTrcv_Init_Dio( uint8 Transceiver)
{
    uint8  TrcvDioId_u8;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_DEFAULT)
    {
        TrcvDioId_u8 = CANTRCV_DIO_GETCHANNELID_AU8[Transceiver];   /* Get relevant Dio Transceiver Id */
        CanTrcv_Dio_WakeupReason_au8[TrcvDioId_u8] = CANTRCV_WU_NOT_SUPPORTED;      /* Clear wakeup reason */

        /* Current state is readout in SetTransceiverMode */
        CanTrcv_SetTransceiverMode_Dio(TrcvDioId_u8, CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].InitState);

        /* Read state and writes internal static variable. */
        CanTrcv_GetTransceiverMode_Dio(TrcvDioId_u8, &CanTrcv_Dio_Mode_au8[TrcvDioId_u8]);
        if(CanTrcv_Dio_Mode_au8[TrcvDioId_u8] != CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].InitState)
        {
            CanTrcv_Prv_InitState_b = FALSE;
# if (CANTRCV_CFG_DIO_DEM_ENABLE == STD_ON)
            /* points to first DEM for Trcv. This is always NO_TRCV_CONTROL */
            CAN_TRCV_DEM_REPORTERRORSTATUS((CANTRCV_DIO_DEMSTRUCT_ST[TrcvDioId_u8].EventId), DEM_EVENT_STATUS_PREFAILED);
# endif
        }
# if (CANTRCV_CFG_DIO_DEM_ENABLE == STD_ON)
        else
        {
            CAN_TRCV_DEM_REPORTERRORSTATUS((CANTRCV_DIO_DEMSTRUCT_ST[TrcvDioId_u8].EventId), DEM_EVENT_STATUS_PREPASSED);
        }
# endif
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_INVALID_TRANSCEIVER)
    }

}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Init Function for TJA1145 type Can Transceiver function.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return  void
 * \see
 * \note    Initialization of global variables
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
uint32 CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_INIT_MAX];
void CanTrcv_Init_TJA1145( uint8 Transceiver)
{

    Std_ReturnType Ret_Spi = E_OK;
    uint8  TrcvNo_u8;
    uint16 SpiPos_u16;
    uint16 start_u16;
    uint16 size_u16;
    uint16 n;
    Spi_SequenceType sequence;
    const uint16     *src_o;

    // Check configured trcv type
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8    = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

        CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] = CANTRCV_TJA1145_SPI_STATE_INIT_MASK + CANTRCV_TJA1145_SPI_STATE_INITDATA_MASK;
        start_u16   = CANTRCV_SPIARRAY_AST[SpiPos_u16].InitStartPos;
        size_u16    = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos - start_u16;
        sequence    = CANTRCV_SPIARRAY_AST[SpiPos_u16].Sequence;

# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
		/* Prepare ReInit Table */
		/* Copy Rom-Table into Ram */
		src_o	= &(CANTRCV_CFGSPICHANNEL_AO[start_u16]);
		for(n = 0; n < size_u16; n++)
		{
			CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[TrcvNo_u8][n] = src_o[n];
		}
# endif

        // Write Initdata in SPI-Buffer
    #if CANTRCV_SPI_EXTERNBUFFER == STD_ON
        /* MR12 RULE 11.3 VIOLATION: The buffer-parametertypes are given by Autosar as uint8. But HW works with uint16. */
        for(n = 0; n < size_u16; n++)
        {
           CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][n] = CANTRCV_CFGSPICHANNEL_AO[start_u16 + n];
        }
        Qspi_CddTxRx(QSPI_DMA_CFG_1,
                    (uint32*)&CanTrcv_Cdd_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][0],         // points to Trcv generated data in ROM for initdata
                    (uint32*)&CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao[TrcvNo_u8][0], // points to Trcv reserved array to read result of initdata. Not used in curr impl
                    size_u16 );
    #else
        if(E_OK != Spi_WriteIB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,
                    &CANTRCV_CFGSPICHANNEL_AO[start_u16]))     // points to Trcv generated data in ROM for initdata
        {
            Ret_Spi = E_NOT_OK;
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_SPI)
        }
    #endif
        if (Ret_Spi == E_OK)
        {
            // Prepare Control Table
            // Copy Rom-Table into Ram (values are modified and read out in main trcv-function)
            // Initmode is set by generated Register values. No extra setmode is required.
            start_u16   = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos;
            size_u16    = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlEndPos - start_u16;
            src_o       = &(CANTRCV_CFGSPICHANNEL_AO[start_u16]);
            for(n = 0; n < size_u16; n++)
            {
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][n] = src_o[n];
            }
        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_INVALID_TRANSCEIVER)
    }


}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * postInit Function for TJA1145 partial network,because if we configurate the teansceiver, we must configurate NM to partial netwoke mode
 * ,but according to the OEM standard, there is no requirement about this part, so we create this function.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return  void
 * \see
 * \note    Initialization of partial variables
 ***************************************************************************************************
 */
#if 0
void CanTrcv_Post_Init_TJA1145( uint8 Transceiver)
{
    

    Std_ReturnType Ret_Spi = E_OK;
    uint8  TrcvNo_u8;
    uint16 SpiPos_u16;
    uint16 start_u16;
    uint16 size_u16;
    uint16 n;
    Spi_SequenceType sequence;
    const uint16     *src_o;

    // Check configured trcv type
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];   //0
        TrcvNo_u8    = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;  //0

        CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] = CANTRCV_TJA1145_SPI_STATE_INIT_MASK + CANTRCV_TJA1145_SPI_STATE_INITDATA_MASK;
        start_u16   = CANTRCV_SPIARRAY_AST[SpiPos_u16].InitStartPos;  //0
        size_u16    = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos - start_u16; //29
        sequence    = CANTRCV_SPIARRAY_AST[SpiPos_u16].Sequence;

        // Write Initdata in SPI-Buffer

        /* MR12 RULE 11.3 VIOLATION: The buffer-parametertypes are given by Autosar as uint8. But HW works with uint16. */
        if(E_OK != Spi_RbSetupEB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,// Channel: get out of SPI config
                    (const uint8*)&CANTRCV_CFGSPICHANNEL_AO[start_u16],         // points to Trcv generated data in ROM for initdata
                    (uint8*)&CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao[TrcvNo_u8][0], // points to Trcv reserved array to read result of initdata. Not used in curr impl
                    size_u16 ))
        {
            Ret_Spi = E_NOT_OK;
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_SPI)
        }

        if (Ret_Spi == E_OK)
        {
            if(CANTRCV_SPI_TRANSMIT(sequence ) == E_OK)
            {
                // Prepare Control Table
                // Copy Rom-Table into Ram (values are modified and read out in main trcv-function)
                // Initmode is set by generated Register values. No extra setmode is required.
                start_u16   = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos;
                size_u16    = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlEndPos - start_u16;  //48
                src_o       = &(CANTRCV_CFGSPICHANNEL_AO[start_u16]);
                for(n = 0; n < size_u16; n++)
                {
                    CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][n] = src_o[n];
                }
            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_PARAM_TRCV_WRONG_CONF)
            }

        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_INVALID_TRANSCEIVER)
    }


}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Init Function for Can Transceiver function. One function for all transceivers
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return  void
 * \see
 * \note    Initialization of global variables
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 28766] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
void CanTrcv_Init_TLE9255( uint8 Transceiver)
{

    Std_ReturnType Ret_Spi = E_OK;
    uint8  TrcvNo_u8;
    uint16 SpiPos_u16;
    uint16 start_u16;
    uint16 size_u16;
    uint16 n;
    Spi_SequenceType sequence;
    const uint16     *src_o;

    // Check configured trcv type
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8    = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] = CANTRCV_TLE9255_SPI_STATE_INIT_MASK + CANTRCV_TLE9255_SPI_STATE_INITDATA_MASK;
        start_u16   = CANTRCV_SPIARRAY_AST[SpiPos_u16].InitStartPos;
        size_u16    = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos - start_u16;
        sequence    = CANTRCV_SPIARRAY_AST[SpiPos_u16].Sequence;

# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
		/* Prepare ReInit Table */
		/* Copy Rom-Table into Ram */
		src_o	= &(CANTRCV_CFGSPICHANNEL_AO[start_u16]);
		for(n = 0; n < size_u16; n++)
		{
			CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[TrcvNo_u8][n] = src_o[n];
		}
# endif

        // Write Initdata in SPI-Buffer
    #if CANTRCV_SPI_EXTERNBUFFER == STD_ON
        /* MR12 RULE 11.3 VIOLATION: The buffer-parametertypes are given by Autosar as uint8. But HW works with uint16. */
        if(E_OK != Spi_RbSetupEB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,// Channel: get out of SPI config
                    (const uint8*)&CANTRCV_CFGSPICHANNEL_AO[start_u16],         // points to Trcv generated data in ROM for initdata
                    (uint8*)&CanTrcv_Prv_TLE9255_SpiInitRxBuf_ao[TrcvNo_u8][0], // points to Trcv reserved array to read result of initdata. Not used in curr impl
                    size_u16 ))
        {
            Ret_Spi = E_NOT_OK;
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_SPI)
        }

    #else
        if(E_OK != Spi_WriteIB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,
                    &CANTRCV_CFGSPICHANNEL_AO[start_u16]))     // points to Trcv generated data in ROM for initdata
        {
            Ret_Spi = E_NOT_OK;
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_SPI)
        }
    #endif
        if (Ret_Spi == E_OK)
        {
            if(CANTRCV_SPI_TRANSMIT(sequence ) == E_OK)
            {
                // Prepare Control Table
                // Copy Rom-Table into Ram (values are modified and read out in main trcv-function)
                // Initmode is set by generated Register values. No extra setmode is required.
                start_u16   = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos;
                size_u16    = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlEndPos - start_u16;
                src_o       = &(CANTRCV_CFGSPICHANNEL_AO[start_u16]);
                for(n = 0; n < size_u16; n++)
                {
                    CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][n] = src_o[n];
                }
            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_PARAM_TRCV_WRONG_CONF)
            }

        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_INVALID_TRANSCEIVER)
    }


}
#endif


/**
 ***************************************************************************************************
 * \moduledescription
 * Init Function for CDD type Can Transceiver function.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return    void
 * \see
 * \note
 BSW-15603
 ***************************************************************************************************
 */
 /* [$DD_BSWCODE 37504] */
#if CANTRCV_CFG_CDD_USED == STD_ON
void CanTrcv_Init_Cdd(uint8 Transceiver)
{
    uint8          CddNo;
#if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
#endif
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
    {
        /* Call trcv-specific component */
        CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
        if(CANTRCV_CDD_FCTP_ST[CddNo].InitCdd != NULL_PTR)
        {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
            CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
            CANTRCV_CDD_FCTP_ST[CddNo].InitCdd(CddChnlId);
#else
            CANTRCV_CDD_FCTP_ST[CddNo].InitCdd();
#endif
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_INVALID_TRANSCEIVER)
    }
}
#endif


/**
 ***************************************************************************************************
 * \moduledescription
 * This function sets the transceiver mode
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType        CanTrcv_TrcvModeType
 * \arg     OpMode                      Selects the state the transceiver will transit to
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_SetOpMode(uint8 Transceiver,
                                                            CanTrcv_TrcvModeType OpMode)
{
    Std_ReturnType RetVal_o = E_NOT_OK;

    /*Validate the module state*/
    if(CanTrcv_Prv_InitState_b == TRUE)
    {
        /*Validate the channel ID*/
        if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
        {
            /*Validate the pointer*/
            if((OpMode == CANTRCV_TRCVMODE_NORMAL) || (OpMode == CANTRCV_TRCVMODE_STANDBY) || (OpMode == CANTRCV_TRCVMODE_SLEEP))
            {
                /* Call trcv-specific SetOp fuction according config */
                if(CANTRCV_FCTP_ST[Transceiver].SetOpMode != NULL_PTR)
                {
                    RetVal_o = CANTRCV_FCTP_ST[Transceiver].SetOpMode(Transceiver, OpMode );
                }

            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETOPMODE, CANTRCV_E_PARAM_TRCV_OPMODE)

            }

        }
        else
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)

        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETOPMODE, CANTRCV_E_UNINIT)

    }

    return RetVal_o;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * This function sets the transceiver mode
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType        CanTrcv_TrcvModeType
 * \arg     OpMode                      Selects the state the transceiver will transit to
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
Std_ReturnType CanTrcv_SetOpMode_Dio(uint8 Transceiver,CanTrcv_TrcvModeType OpMode)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint8 TrcvDioId_u8;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_DEFAULT)
    {
        RetVal_o = E_OK;

        TrcvDioId_u8 = CANTRCV_DIO_GETCHANNELID_AU8[Transceiver];   /* Get relevant Dio Transceiver Id */

        CanTrcv_SetTransceiverMode_Dio(TrcvDioId_u8, OpMode);

# if (CANTRCV_CFG_USE_ASR31_API == STD_OFF)
        /* for Dio CanTrcv mode is always reached immediately */
        CanIf_TrcvModeIndication(Transceiver, OpMode);
# endif
    }
    else
    {
        CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_INIT, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function sets the transceiver mode
 *
 *
 *
 * \param   uint8                       TrcvDioId_u8
 * \arg     TrcvDioId_u8                identifies Dio Transceiver to which the API has to be applied
 * \param   uint8                       OpMode
 * \arg     OpMode                      Selects the state the transceiver will transit to
 *                                      Value points to table CanTrcv_SetModeStructChain
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
void CanTrcv_SetTransceiverMode_Dio(uint8 TrcvDioId_u8,CanTrcv_TrcvModeType OpMode)
{
    CanTrcv_ModeStructChain_tst  const* ModeStructChain_pst;
    CanTrcv_Dio_ConfigData_tst       const* ConfigData_st;
    CanTrcv_Cfg_Tick_to CanTrcv_StateChangeTime_o;

    uint8 idx;  /* pos in CanTrcv_Dio_SetModeStructChainPos_au8 */
    uint8 end;

    CanTrcv_GetTransceiverMode_Dio(TrcvDioId_u8, &CanTrcv_Dio_Mode_au8[TrcvDioId_u8]);

    if(CanTrcv_Dio_Mode_au8[TrcvDioId_u8] != OpMode)
    {
        ConfigData_st = &(CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8]);

        if((CanTrcv_Dio_Mode_au8[TrcvDioId_u8] == CANTRCV_TRCVMODE_SLEEP) &&  /* check for CANTRCV_WU_INTERNALLY */
           (CanTrcv_Dio_WakeupReason_au8[TrcvDioId_u8] == CANTRCV_WU_NOT_SUPPORTED) &&   /* if current mode is CANTRCV_TRCVMODE_SLEEP */
           (OpMode == CANTRCV_TRCVMODE_NORMAL))
        {   /* CANTRCV_WU_INTERNALLY is set if Sw brings Trcv in an active state and no other reason available*/
            CanTrcv_Dio_WakeupReason_au8[TrcvDioId_u8] = CANTRCV_WU_INTERNALLY;
        }

        if(OpMode == CANTRCV_TRCVMODE_SLEEP)    /* clear WakeupReason_au8 if requested mode CANTRCV_TRCVMODE_SLEEP */
        {
            /* clear WU Reason when goto sleep to be prepared for next wakeup */
            CanTrcv_Dio_WakeupReason_au8[TrcvDioId_u8] = CANTRCV_WU_NOT_SUPPORTED;
        }

        /* get relevant configuration parameter */
        idx = ConfigData_st->SetMode.StartPos + (uint8)OpMode; /* pos in CanTrcv_Dio_SetModeStructChainPos_au8 */
        end = CANTRCV_DIO_SETMODESTRUCTCHAINPOS_AU8[idx+1];

        idx = CANTRCV_DIO_SETMODESTRUCTCHAINPOS_AU8[idx];

        /* wait init time to be sure hardware is prepared to get new state */
        CanTrcv_WaitUs(CanTrcv_StateChangeTime_ao[TrcvDioId_u8], ConfigData_st->WaitInit );
        /* Loop through all configured states of trcv to go into requested state.
         different states are needed because it can not be guaranteed that multiple pins can be set at same time. */
        do{
            ModeStructChain_pst = &CANTRCV_DIO_SETMODESTRUCTCHAIN_AST[idx];    /* ModeStructChain_pst points to conf data */
            if(ModeStructChain_pst->ChangeModeFunction != NULL_PTR)     /* Function pointer to special function */
            {
                ModeStructChain_pst->ChangeModeFunction(TrcvDioId_u8);  /* e.g. read out wakeup reason */
            }

            Dio_WriteChannel(CANTRCV_DIO_DIOARRAY_AST[ModeStructChain_pst->IoNr].Pin, ModeStructChain_pst->Value ^ (CANTRCV_DIO_DIOARRAY_AST[ModeStructChain_pst->IoNr].Invert));
            if(ModeStructChain_pst->WaitTime > 0)
            {
                /* MR12 RULE 11.3 VIOLATION: Convertion of OS-Time to CanTrcv_Time. As this is integrator code, different time-values-types has to be mapped to a general CanTrcv-time type */
                CANTRCV_GETTIME(&CanTrcv_StateChangeTime_o);  /* Get Time after DioPin changed */
                CanTrcv_WaitUs(CanTrcv_StateChangeTime_o, ModeStructChain_pst->WaitTime );
            }
            idx++;
        }while(idx != end);
        /* MR12 RULE 11.3 VIOLATION: Convertion of OS-Time to CanTrcv_Time. As this is integrator code, different time-values-types has to be mapped to a general CanTrcv-time type */
        CANTRCV_GETTIME(&CanTrcv_StateChangeTime_ao[TrcvDioId_u8]);   /* store time when mode changed */
        CanTrcv_Dio_Mode_au8[TrcvDioId_u8] = OpMode;
    }
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * This function sets the transceiver mode
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType        CanTrcv_TrcvModeType
 * \arg     OpMode                      Selects the state the transceiver will transit to
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_CDD_USED == STD_ON
Std_ReturnType CanTrcv_SetOpMode_Cdd(uint8 Transceiver,CanTrcv_TrcvModeType OpMode)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint8          CddNo;
#if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
#endif
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
    {
        /* Call trcv-specific component */
        CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
        /* BSW-15603 */ /* [$DD_BSWCODE 37505] */
        if(CANTRCV_CDD_FCTP_ST[CddNo].SetOpModeCdd != NULL_PTR)
        {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
            CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
            RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].SetOpModeCdd(CddChnlId, OpMode);
#else
            RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].SetOpModeCdd(OpMode );
#endif
        }
        /* END BSW-15603 */
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }
    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * This function sets the transceiver mode
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType        CanTrcv_TrcvModeType
 * \arg     OpMode                      Selects the state the transceiver will transit to
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note    For CX9xx it is not possible to change the mode by SW
 ***************************************************************************************************
 */
#if CANTRCV_CFG_CS9XX_USED == STD_ON
Std_ReturnType CanTrcv_SetOpMode_CS9xx(uint8 Transceiver,CanTrcv_TrcvModeType OpMode)
{
    Std_ReturnType RetVal_o = E_NOT_OK;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CS9XX)
    {
        (void) (Transceiver); // CANTRCV_PRV_PARAM_UNUSED
        (void) (OpMode);      // CANTRCV_PRV_PARAM_UNUSED

# if (CANTRCV_CFG_USE_ASR31_API == STD_OFF)
        // always work immediatelly as there is no info from WAU component when state is reached.
        CanIf_TrcvModeIndication(Transceiver, OpMode);
# endif
        RetVal_o = E_OK;
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * This function sets the transceiver mode
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType        CanTrcv_TrcvModeType
 * \arg     OpMode                      Selects the state the transceiver will transit to
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
Std_ReturnType CanTrcv_SetOpMode_TJA1145(uint8 Transceiver,CanTrcv_TrcvModeType OpMode)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
        CanTrcv_Prv_TJA1145_ReqState[TrcvNo_u8] = OpMode;

        // Set global flag to write mode in main function
        CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_SETOPMODE;

#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
        if(OpMode == CANTRCV_TRCVMODE_NORMAL)
        {
#if (0 == CANNM_ENABLE)
            CanIf_ConfirmPnAvailability(Transceiver);
#endif
        }
#endif
#if (CANTRCV_CFG_USE_ASR31_API == STD_OFF)
#if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR == CANTRCV_INDICATION_IMMEDIATELY)
        CanIf_TrcvModeIndication(Transceiver, OpMode);
#else
        // Set global flag. Processed in main function
        CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_MODE_INDICATION_MASK;
#endif
#endif
        RetVal_o = E_OK;
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * This function sets the transceiver mode
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType        CanTrcv_TrcvModeType
 * \arg     OpMode                      Selects the state the transceiver will transit to
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12780] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
Std_ReturnType CanTrcv_SetOpMode_TLE9255(uint8 Transceiver,CanTrcv_TrcvModeType OpMode)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
        CanTrcv_Prv_TLE9255_ReqState[TrcvNo_u8] = OpMode;

        // Set global flag to write mode in main function
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_SETOPMODE;

#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
        if(OpMode == CANTRCV_TRCVMODE_NORMAL)
        {
            (void) CanIf_ConfirmPnAvailability(Transceiver);
        }
#endif
#if (CANTRCV_CFG_USE_ASR31_API == STD_OFF)
#if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR == CANTRCV_INDICATION_IMMEDIATELY)
        CanIf_TrcvModeIndication(Transceiver, OpMode);
#else
        // Set global flag. Processed in main function
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_MODE_INDICATION_MASK;
#endif
#endif
        RetVal_o = E_OK;
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function sets the transceiver mode. Only for relevant for SPI-TJA1145 transceivers
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType        CanTrcv_TrcvModeType
 * \arg     OpMode                      Selects the state the transceiver will transit to
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note   This function is not an Autosar API. It does not fulfill AR requirements. It should, in generally, not be used.
 *         No indiciation, etc, is done. This function should only be called during for very special HW conditions
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
Std_ReturnType CanTrcv_SetOpMode_Immediate(uint8 Transceiver,CanTrcv_TrcvModeType OpMode)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint16 SpiPos_u16;
    uint16 SpiTimeoutCount;
    uint8  TrcvNo_u8;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

        // Check if initdata are already written
        if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_INIT_MASK) != 0u)
        {
            // If no, then extra call of Main function is required
            SpiTimeoutCount = 0;
            do
            {
                SpiTimeoutCount++;
                RetVal_o = CanTrcv_MainFunctionTja1145(Transceiver);
            }while((RetVal_o == E_NOT_OK) && (SpiTimeoutCount < CANTRCV_CFG_SPI_RETRIES));
        }
        else
        {
                RetVal_o = E_OK;
        }

        // Change the requested state
        if(RetVal_o == E_OK)
        {
            // Set global flag to write mode in main function
            CanTrcv_Prv_TJA1145_ReqState[TrcvNo_u8] = OpMode;
            CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_SETOPMODE;

            SpiTimeoutCount = 0;
            do
            {
                SpiTimeoutCount++;
                RetVal_o = CanTrcv_MainFunctionTja1145(Transceiver);
            }while((RetVal_o == E_NOT_OK) && (SpiTimeoutCount < CANTRCV_CFG_SPI_RETRIES));
        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }
    // No inidication, callback should be done as this function should only be called out of Non-Autosar-context
    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the actual state of the transceiver.
 *
 * \param   uint8                   Transceiver
 * \arg     Transceiver             identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType*   CanTrcv_TrcvModeType
 * \arg     OpMode                  Current state of the transceiver
 * \return     E_OK:        The state can be evaluated
 *             E_NOT_OK:    The state could not be evaluated, either because of transceiver error
 *                          or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_GetOpMode(uint8 Transceiver,CanTrcv_TrcvModeType * OpMode )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    /*Validate the module state*/
    if(CanTrcv_Prv_InitState_b == TRUE)
    {
        /*Validate the channel ID*/
        if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
        {
            /*Validate the pointer*/
            if(OpMode != NULL_PTR )
            {
                // Check if configparameter configured
                if(CANTRCV_FCTP_ST[Transceiver].GetOpMode != NULL_PTR)
                {
                    // Call trcv-specific GetOpMode fuction according config
                    RetVal_o = CANTRCV_FCTP_ST[Transceiver].GetOpMode(Transceiver, OpMode );
                }

            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_PARAM_POINTER)

            }

        }
        else
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)

        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_UNINIT)

    }

    return RetVal_o;
}
/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the actual state of the transceiver.
 *
 * \param   uint8                   Transceiver
 * \arg     Transceiver             identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType*   CanTrcv_TrcvModeType
 * \arg     OpMode                  Current state of the transceiver
 * \return     E_OK:        The state can be evaluated
 *             E_NOT_OK:    The state could not be evaluated, either because of transceiver error
 *                          or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
Std_ReturnType CanTrcv_GetOpMode_Dio(uint8 Transceiver,CanTrcv_TrcvModeType * OpMode )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint8 TrcvDioId_u8;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_DEFAULT)
    {
        RetVal_o = E_OK;

        TrcvDioId_u8 = CANTRCV_DIO_GETCHANNELID_AU8[Transceiver];   /* Get relevant Dio Transceiver Id */

        CanTrcv_GetTransceiverMode_Dio(TrcvDioId_u8, OpMode);

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }
    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the actual state of the transceiver.
 *
 *
 *
 * \param   uint8                       TrcvDioId_u8
 * \arg     TrcvDioId_u8                identifies Transceiver to which the API has to be applied
 * \param   uint8*        OpMode
 * \arg     OpMode             Current state of the transceiver
 * \return     E_OK:        The state can be evaluated
 *             E_NOT_OK:    The state could not be evaluated, either because of transceiver error
 *                          or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
void CanTrcv_GetTransceiverMode_Dio(uint8 TrcvDioId_u8,CanTrcv_TrcvModeType * OpMode )
{
    uint8 Value = 0;
    const uint8 *GetModePinChainPos_pu8;
    CanTrcv_Dio_ConfigData_tst   const* ConfigData_st;
    uint8 GetModeArrayPos_u8;

    *OpMode = CANTRCV_TRCVMODE_NORMAL;   /* Default value on error */
    /* Get relevant configuration parameter */
    ConfigData_st          = &(CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8]);
    GetModePinChainPos_pu8 = &CANTRCV_DIO_GETMODEPINCHAIN_AU8[
                                        ConfigData_st->GetMode.StartPos]; /* position of start of Mode-Pins */
    GetModeArrayPos_u8     = ConfigData_st->GetModeArray;

    /* get value of two Pins defined in CanTrcv_Dio_GetModePinChain_au8 */
    SchM_Enter_CanTrcv_RESOURCE;
    Value  = (uint8)((Dio_ReadChannel(CANTRCV_DIO_DIOARRAY_AST[*GetModePinChainPos_pu8].Pin) ^ (CANTRCV_DIO_DIOARRAY_AST[*GetModePinChainPos_pu8].Invert)) & 0x01u);
    GetModePinChainPos_pu8 = &GetModePinChainPos_pu8[1];
    Value |= (uint8)(((Dio_ReadChannel(CANTRCV_DIO_DIOARRAY_AST[*GetModePinChainPos_pu8].Pin) ^ (CANTRCV_DIO_DIOARRAY_AST[*GetModePinChainPos_pu8].Invert)) & 0x01u) << 1u);
    SchM_Exit_CanTrcv_RESOURCE;
    /* caluclate Mode according CanTrcv_Dio_GetModeArray and read out pins */
    *OpMode = CANTRCV_DIO_GETMODEARRAY_ST[Value + GetModeArrayPos_u8];
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the actual state of the transceiver.
 *
 * \param   uint8                   Transceiver
 * \arg     Transceiver             identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType*   CanTrcv_TrcvModeType
 * \arg     OpMode                  Current state of the transceiver
 * \return     E_OK:        The state can be evaluated
 *             E_NOT_OK:    The state could not be evaluated, either because of transceiver error
 *                          or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_CDD_USED == STD_ON
Std_ReturnType CanTrcv_GetOpMode_Cdd(uint8 Transceiver,CanTrcv_TrcvModeType * OpMode )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint8          CddNo;
#if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
#endif

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
    {
        // get OpMode from external function
        CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
        /* BSW-15603 */ /* [$DD_BSWCODE 37506] */
        if(CANTRCV_CDD_FCTP_ST[CddNo].GetOpModeCdd != NULL_PTR)
        {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
            CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
            RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].GetOpModeCdd(CddChnlId, OpMode );
#else
            RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].GetOpModeCdd(OpMode );
#endif
        }
        /* END BSW-15603 */
        (void) (Transceiver);   // CANTRCV_PRV_PARAM_UNUSED unused parameter if no DET is used
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }
    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the actual state of the transceiver.
 *
 * \param   uint8                   Transceiver
 * \arg     Transceiver             identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType*   CanTrcv_TrcvModeType
 * \arg     OpMode                  Current state of the transceiver
 * \return     E_OK:        The state can be evaluated
 *             E_NOT_OK:    The state could not be evaluated, either because of transceiver error
 *                          or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_CS9XX_USED == STD_ON
Std_ReturnType CanTrcv_GetOpMode_CS9xx(uint8 Transceiver,CanTrcv_TrcvModeType * OpMode )
{
    Std_ReturnType RetVal_o = E_NOT_OK;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CS9XX)
    {
        *OpMode = CANTRCV_TRCVMODE_NORMAL;  // In current hardware always hardwired. There is no API to change Mode
        RetVal_o = E_OK;
        (void) (Transceiver);   // CANTRCV_PRV_PARAM_UNUSED unused parameter if no other Trcv is used

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the actual state of the transceiver.
 *
 * \param   uint8                   Transceiver
 * \arg     Transceiver             identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType*   CanTrcv_TrcvModeType
 * \arg     OpMode                  Current state of the transceiver
 * \return     E_OK:        The state can be evaluated
 *             E_NOT_OK:    The state could not be evaluated, either because of transceiver error
 *                          or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
Std_ReturnType CanTrcv_GetOpMode_TJA1145(uint8 Transceiver,CanTrcv_TrcvModeType * OpMode )
{
    Std_ReturnType RetVal_o = E_OK;

    uint8  TrcvNo_u8;
    uint16 SpiPos_u16;
    uint16 RegVal01_o;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

        // Check if data are valid
        if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_INITDATA_MASK) == 0u)
        {
            // Calculated state out of register values
            RegVal01_o  = CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG01] & CANTRCV_CFG_TJA1145_SPI_MC_AND_MASK;

            RetVal_o = CanTrcv_GetModeFor_TJA1145(RegVal01_o, OpMode);

            if(RetVal_o != E_OK)
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_PARAM_TRCV_WRONG_CONF)
            }

        }
        else
        {
            RetVal_o = E_NOT_OK;
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
        RetVal_o = E_NOT_OK;
    }
    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the actual state of the transceiver.
 *
 * \param   uint8                   Transceiver
 * \arg     Transceiver             identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType*   CanTrcv_TrcvModeType
 * \arg     OpMode                  Current state of the transceiver
 * \return     E_OK:        The state can be evaluated
 *             E_NOT_OK:    The state could not be evaluated, either because of transceiver error
 *                          or wrong parameters
 * \see
 * \note
 * BSW-9419
 ***************************************************************************************************
 */
 /* [$DD_BSWCODE 12781] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
Std_ReturnType CanTrcv_GetOpMode_TLE9255(uint8 Transceiver,CanTrcv_TrcvModeType * OpMode )
{
    Std_ReturnType RetVal_o = E_OK;

    uint8  TrcvNo_u8;
    uint16 SpiPos_u16;
    uint16 RegVal01_o;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

        // Check if data are valid
        if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_INITDATA_MASK) == 0u)
        {
            // Calculated state out of register values
            RegVal01_o  = CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] & CANTRCV_CFG_TLE9255_SPI_MC_AND_MASK;

            RetVal_o = CanTrcv_GetModeFor_TLE9255(RegVal01_o, OpMode);

            if(RetVal_o != E_OK)
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_PARAM_TRCV_WRONG_CONF)
            }

        }
        else
        {
            RetVal_o = E_NOT_OK;
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
        RetVal_o = E_NOT_OK;
    }
    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function gets the transceiver mode. Only for relevant for SPI-TJA1145 transceivers
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvModeType        CanTrcv_TrcvModeType
 * \arg     OpMode                      Selects the state the transceiver will transit to
 * \return     E_OK:                    The state request was successful
 *             E_NOT_OK:                The state request could not be executed, because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note   This function is not an Autosar API. It does not fulfill AR requirements. It should, in generally, not be used.
 *         No indiciation, etc, is done. This function should only be called during for very special HW conditions
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
Std_ReturnType CanTrcv_GetOpMode_Immediate(uint8 Transceiver,CanTrcv_TrcvModeType * OpMode )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint16 SpiPos_u16;
    uint16 SpiTimeoutCount;
    uint8  TrcvNo_u8;
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

        // Check if initdata are already written
        if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_INIT_MASK) != 0u)
        {
            // If no, then extra call of Main function is required
            SpiTimeoutCount = 0;
            do
            {
                SpiTimeoutCount++;
                RetVal_o = CanTrcv_MainFunctionTja1145(Transceiver);
            }while((RetVal_o == E_NOT_OK) && (SpiTimeoutCount < CANTRCV_CFG_SPI_RETRIES));
        }
        else
        {
            RetVal_o = E_OK;
        }

        // Read Out current state
        if(RetVal_o == E_OK)
        {
            SpiTimeoutCount = 0;
            do
            {
                SpiTimeoutCount++;
                RetVal_o = CanTrcv_MainFunctionTja1145(Transceiver);
            }while((RetVal_o == E_NOT_OK) && (SpiTimeoutCount < CANTRCV_CFG_SPI_RETRIES));

            if(RetVal_o == E_OK)
            {
                RetVal_o = CanTrcv_GetOpMode_TJA1145(Transceiver, OpMode);
            }
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    // No inidication, callback should be done as this function should only be called out of Non-Autosar-context
    return RetVal_o;

}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the wakeup reason.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupReasonType*  reason
 * \arg     reason                      Evaluated wakeup reason
 * \return     E_OK:                    The wakeup reason can be evaluated
 *             E_NOT_OK:                The wakeup reason could not be evaluated, either because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_GetBusWuReason(uint8 Transceiver,CanTrcv_TrcvWakeupReasonType * reason )
{
    Std_ReturnType RetVal_o = E_NOT_OK;

    /*Validate the module state*/
    if(CanTrcv_Prv_InitState_b == TRUE)
    {
        /*Validate the channel ID*/
        if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
        {
            /*Validate the pointer*/
            if(reason != NULL_PTR )
            {
                // Check if configparameter configured
                if(CANTRCV_FCTP_ST[Transceiver].GetBusWuReason != NULL_PTR)
                {
                    //Call trcv-specific GetOpMode fuction according config
                    RetVal_o = CANTRCV_FCTP_ST[Transceiver].GetBusWuReason(Transceiver, reason);
                }

            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETBUSWUREASON, CANTRCV_E_PARAM_POINTER)

            }

        }
        else
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETBUSWUREASON, CANTRCV_E_INVALID_TRANSCEIVER)

        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETBUSWUREASON, CANTRCV_E_UNINIT)

    }

    return RetVal_o;
}
/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the wakeup reason.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupReasonType*  reason
 * \arg     reason                      Evaluated wakeup reason
 * \return     E_OK:                    The wakeup reason can be evaluated
 *             E_NOT_OK:                The wakeup reason could not be evaluated, either because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
Std_ReturnType CanTrcv_GetBusWuReason_Dio(uint8 Transceiver,CanTrcv_TrcvWakeupReasonType * reason )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint8 TrcvDioId_u8;

    *reason = CANTRCV_WU_NOT_SUPPORTED;     /* Default value on DET failure */

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_DEFAULT)
    {
        TrcvDioId_u8 = CANTRCV_DIO_GETCHANNELID_AU8[Transceiver];   /* Get relevant Dio Transceiver Id */

        *reason = CanTrcv_Dio_WakeupReason_au8[TrcvDioId_u8];

        RetVal_o = E_OK;
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETBUSWUREASON, CANTRCV_E_INVALID_TRANSCEIVER)
    }
    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the wakeup reason.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupReasonType*  reason
 * \arg     reason                      Evaluated wakeup reason
 * \return     E_OK:                    The wakeup reason can be evaluated
 *             E_NOT_OK:                The wakeup reason could not be evaluated, either because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_CDD_USED == STD_ON
Std_ReturnType CanTrcv_GetBusWuReason_Cdd(uint8 Transceiver,CanTrcv_TrcvWakeupReasonType * reason )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint8          CddNo;
#if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
#endif
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
    {
        // get OpMode from external function  rba_IoExtCdd_CanTrcvGetBusWuReason and return result
        CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
        /* BSW-15603 */ /* [$DD_BSWCODE 37507] */
        if(CANTRCV_CDD_FCTP_ST[CddNo].GetBusWuReasonCdd != NULL_PTR)
        {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
            CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
            RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].GetBusWuReasonCdd(CddChnlId,reason);
#else
            RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].GetBusWuReasonCdd(reason);
#endif
        }
        /* END BSW-15603 */
        (void) (Transceiver);     // CANTRCV_PRV_PARAM_UNUSED   Not used as only one Cdd is possible

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETBUSWUREASON, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the wakeup reason.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupReasonType*  reason
 * \arg     reason                      Evaluated wakeup reason
 * \return     E_OK:                    The wakeup reason can be evaluated
 *             E_NOT_OK:                The wakeup reason could not be evaluated, either because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_CS9XX_USED == STD_ON
Std_ReturnType CanTrcv_GetBusWuReason_CS9xx(uint8 Transceiver,CanTrcv_TrcvWakeupReasonType * reason )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint8   LocTrcvNo;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CS9XX)
    {
        /// @return  0 = FALSE = if no wakeup signal by this clients source detected
         ///               !0 = if a wakeup signal is detected
         ///
         ///  @note If source is not initially enabled
         ///        (as part of RBMIC-ASIC-Init-Config)
         ///        RBWAU_EnableWakeupSource_Async need to be called before
         ///        and this might take up to 20ms until it will reflect here.
         //LocTrcvNo =
         // RBWAU_Client client

         // Get Configured CDD-Trcv-Index-Parameter
         LocTrcvNo = CANTRCV_CDDIDMAPPING_AU8[Transceiver];

         // Get WakeupReason from external function RBWAU_WasWakeupInitiallyActive
         *reason = CANTRCV_WU_NOT_SUPPORTED;
         /* MR12 RULE 10.5 VIOLATION: CanTrcv should handle different CDD-Transceivers (like this CS9xx). A general type (uint8) is used in CanTrcv to adress different CDD. */
         if( RBWAU_WasWakeupInitiallyActive((RBWAU_Client)LocTrcvNo) != FALSE)
         {
             *reason = CANTRCV_WU_BY_BUS;
         }
         RetVal_o = E_OK;
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETBUSWUREASON, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the wakeup reason.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupReasonType*  reason
 * \arg     reason                      Evaluated wakeup reason
 * \return     E_OK:                    The wakeup reason can be evaluated
 *             E_NOT_OK:                The wakeup reason could not be evaluated, either because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
Std_ReturnType CanTrcv_GetBusWuReason_TJA1145(uint8 Transceiver,CanTrcv_TrcvWakeupReasonType * reason )
{
    Std_ReturnType RetVal_o = E_NOT_OK;

    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
    uint8  Trcv_WakePinReg = 1;
    uint16 mask_u16 = 0;
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
    {
        // Get relevant configuration data
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
        Trcv_WakePinReg = CANTRCV_SPIARRAY_AST[SpiPos_u16].WakePinRegCheck;

        if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_INITDATA_MASK) == 0u)
        {
            // Calculate Wakeupreason out of register values (RAM mirror)
            *reason = CANTRCV_WU_NOT_SUPPORTED;
            if ((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] & CANTRCV_CFG_TJA1145_SPI_CW_MASK) != 0u)  // Reg 0x63: CW in Transceiver event status
            {
                mask_u16 |= 1u;
            }
            /*Check the local Wake Pin register only if register is avialbe. In TJA1145 and ATA6570 this register is aviable*/
            /*In ATA6572 Wake Pin Register is not avaible. Instead this is in the Rest Pin for watchdog */
            /* Hence this should not be processed for ATA6572 */
            if ((Trcv_WakePinReg == 1u) && ((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG4B] & CANTRCV_CFG_TJA1145_SPI_WPVS_MASK) != 0u))  // Reg 0x4B: WAKE pin status
            {
                mask_u16 |= 2u;
            }
            if ((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG61] & CANTRCV_CFG_TJA1145_SPI_PO_MASK) != 0u)  // Reg 0x61: Power on status
            {
#if ((CANTRCV_HW_PN_SUPPORT == STD_ON) && (0 == CANNM_ENABLE))
                if((CANTRCV_PNTRCV_ST[TrcvNo_u8].PnEnabled == FALSE) || (CANTRCV_PNTRCV_ST[TrcvNo_u8].PowerOnFlag == TRUE))
                {
                    mask_u16 |= 4u;
                }
#endif
            }
            *reason = CanTrcv_GetReasonFromMask(mask_u16);

            RetVal_o = E_OK;
        }
        else
        {
           /*Do nothing*/
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETBUSWUREASON, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the wakeup reason.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupReasonType*  reason
 * \arg     reason                      Evaluated wakeup reason
 * \return     E_OK:                    The wakeup reason can be evaluated
 *             E_NOT_OK:                The wakeup reason could not be evaluated, either because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 * BSW-9419
 ***************************************************************************************************
 */
 /* [$DD_BSWCODE 28767] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
Std_ReturnType CanTrcv_GetBusWuReason_TLE9255(uint8 Transceiver,CanTrcv_TrcvWakeupReasonType * reason )
{
    Std_ReturnType RetVal_o = E_NOT_OK;

    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
    uint8  Trcv_WakePinReg = 1;
    uint16 mask_u16 = 0;
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
    {
        // Get relevant configuration data
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
        Trcv_WakePinReg = CANTRCV_SPIARRAY_AST[SpiPos_u16].WakePinRegCheck;

        if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_INITDATA_MASK) == 0u)
        {
            // Calculate Wakeupreason out of register values (RAM mirror)
            *reason = CANTRCV_WU_NOT_SUPPORTED;
            if ((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1B] & CANTRCV_CFG_TLE9255_SPI_WUX_MASK) != 0u)  // Reg 0x1B: WUF,WUP in Wakeup status
            {
                mask_u16 |= 1u;
            }
            /*Check the local Wake Pin register only if register is avialbe. In TLE9255 this register is aviable*/
            if ((Trcv_WakePinReg == 1u) && ((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1B] & CANTRCV_CFG_TLE9255_SPI_LWU_MASK) != 0u))  // Reg 0x1B: WAKE pin status
            {
                mask_u16 |= 2u;
            }
            if ((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG18] & CANTRCV_CFG_TLE9255_SPI_POR_MASK) != 0u)  // Reg 0x18: Power on status
            {
#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
                if((CANTRCV_PNTRCV_ST[TrcvNo_u8].PnEnabled == FALSE) || (CANTRCV_PNTRCV_ST[TrcvNo_u8].PowerOnFlag == TRUE))
                {
                    mask_u16 |= 4u;
                }
#endif
            }
            *reason = CanTrcv_GetReasonFromMask(mask_u16);

            RetVal_o = E_OK;
        }
        else
        {
           /*Do nothing*/
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETBUSWUREASON, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This service returns the version information of this module.
 *
 * \param   Std_VersionInfoType*         versioninfo
 * \arg     versioninfo                  maps to Buffer of version information
 * \return  void
 * \see
 * \note
 ***************************************************************************************************
 */
#if (CANTRCV_GET_VERSION_INFO == STD_ON)
void CanTrcv_GetVersionInfo(Std_VersionInfoType * versioninfo)
{
    if(versioninfo != NULL_PTR)
    {
        // set return values
        versioninfo->vendorID         = CANTRCV_VENDOR_ID;
        versioninfo->moduleID         = CANTRCV_MODULE_ID;
        versioninfo->sw_major_version = CANTRCV_SW_MAJOR_VERSION;
        versioninfo->sw_minor_version = CANTRCV_SW_MINOR_VERSION;
        versioninfo->sw_patch_version = CANTRCV_SW_PATCH_VERSION;
    }
    else
    {
        CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_GETVERSIONINFO, CANTRCV_E_PARAM_POINTER)
    }

}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Enables, disables or clears wake-up events of the Transceiver according to TrcvWakeupMode..
 *
 * \param   uint8           Transceiver
 * \arg     Transceiver     identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupModeType  WakeupMode
 * \arg     TrcvWakeupMode            requested wakeup mode
 * \return  E_OK:           The wakeup reason can be changed
 *          E_NOT_OK:       Error orrcured
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_SetWakeupMode( uint8 Transceiver,CanTrcv_TrcvWakeupModeType TrcvWakeupMode)
{
    Std_ReturnType RetVal_o = E_NOT_OK;

        /*Validate the module state*/
        if(CanTrcv_Prv_InitState_b == TRUE)
        {
            /*Validate the channel ID*/
            if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
            {
                /*Validate the pointer*/
                if((TrcvWakeupMode == CANTRCV_WUMODE_CLEAR) || (TrcvWakeupMode == CANTRCV_WUMODE_ENABLE) || (TrcvWakeupMode == CANTRCV_WUMODE_DISABLE))
                {
                    // Check if configparameter configured
#if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
                    if(CANTRCV_FCTP_ST[Transceiver].SetWakeupMode != NULL_PTR)
                    {
                        // Call trcv-specific SetWakeupMode fuction according config
                        RetVal_o = CANTRCV_FCTP_ST[Transceiver].SetWakeupMode(Transceiver, TrcvWakeupMode);
                    }
#else
                    (void)Transceiver;      // CANTRCV_PRV_PARAM_UNUSED
                    (void)TrcvWakeupMode;   // CANTRCV_PRV_PARAM_UNUSED
                    RetVal_o = E_OK;
#endif

                }
                else
                {
                    CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETWAKEUPMODE, CANTRCV_E_PARAM_TRCV_WAKEUP_MODE)

                }

            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETWAKEUPMODE, CANTRCV_E_INVALID_TRANSCEIVER)

            }

        }
        else
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETWAKEUPMODE, CANTRCV_E_UNINIT)

        }

    return RetVal_o;
}

/**
 ***************************************************************************************************
 * \moduledescriptionSetWakeupMode
 * Enables, disables or clears wake-up events of the Transceiver according to TrcvWakeupMode..
 *
 * \param   uint8           Transceiver
 * \arg     Transceiver     identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupModeType  WakeupMode
 * \arg     TrcvWakeupMode            requested wakeup mode
 * \return  E_OK:           The wakeup reason can be changed
 *          E_NOT_OK:       Error orrcured
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_SetWakeupMode_Dio( uint8 Transceiver,CanTrcv_TrcvWakeupModeType TrcvWakeupMode)
{
    Std_ReturnType RetVal = E_OK;
    uint8 TrcvDioId_u8;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_DEFAULT)
    {
        TrcvDioId_u8 = CANTRCV_DIO_GETCHANNELID_AU8[Transceiver];   /* Get relevant Dio Transceiver Id */

        switch(TrcvWakeupMode)
        {
            case CANTRCV_WUMODE_CLEAR:
            {
                /* in case of clear wakeup the mode is not changed */
                CanTrcv_Dio_Wakeup_au8[TrcvDioId_u8] = 0;
#if (CANTRCV_CFG_CLEAR_WUPREASON_IN_SETWAKEUPMODE == STD_ON)
                CanTrcv_Dio_WakeupReason_au8[TrcvDioId_u8] = CANTRCV_WU_NOT_SUPPORTED;
#endif
            }
            break;
            case CANTRCV_WUMODE_DISABLE:
            {
                CanTrcv_WakeupModeState_ab[Transceiver] = FALSE;
            }
            break;
            default:   // CANTRCV_WUMODE_ENABLE:
            {   /* Mode is change as requested (TRCV_WU_ENABLE/TRCV_WU_DISABLE)  */
                CanTrcv_WakeupModeState_ab[Transceiver] = TRUE;
            }
            break;
        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETWAKEUPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
        RetVal = E_NOT_OK;
    }

    return RetVal;
}
# endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Enables, disables or clears wake-up events of the Transceiver according to TrcvWakeupMode..
 *
 * \param   uint8           Transceiver
 * \arg     Transceiver     identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupModeType  WakeupMode
 * \arg     TrcvWakeupMode            requested wakeup mode
 * \return  E_OK:           The wakeup reason can be changed
 *          E_NOT_OK:       Error orrcured
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_CDD_USED == STD_ON
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_SetWakeupMode_Cdd( uint8 Transceiver,CanTrcv_TrcvWakeupModeType TrcvWakeupMode)
{
    Std_ReturnType RetVal = E_OK;
    uint8          CddNo;
#if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
#endif

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
    {
        switch(TrcvWakeupMode)
        {
            case CANTRCV_WUMODE_CLEAR:
                CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
                if(CANTRCV_CDD_FCTP_ST[CddNo].SetWakeupModeCdd != NULL_PTR)
                {
        #if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
                    CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
                    RetVal = CANTRCV_CDD_FCTP_ST[CddNo].SetWakeupModeCdd(CddChnlId,CANTRCV_WUMODE_CLEAR);
        #else
                    RetVal = CANTRCV_CDD_FCTP_ST[CddNo].SetWakeupModeCdd(CANTRCV_WUMODE_CLEAR);
        #endif
                }
/* BSW-15603 */ /* [$DD_BSWCODE 37508] */
#if CANTRCV_CY327_DIO_CONFIGURED == STD_ON
                else
                {

                    CanTrcv_WakeupStateCdd_au8[CddNo] = FALSE; /* FALSE: no wakeup; TRUE=wakeup detected */
                }
#endif
/* END BSW-15603 */
            break;
            case CANTRCV_WUMODE_DISABLE:
            {
                CanTrcv_WakeupModeState_ab[Transceiver] = FALSE;
                CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
                if(CANTRCV_CDD_FCTP_ST[CddNo].SetWakeupModeCdd != NULL_PTR)
                {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
                    CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
                    RetVal = CANTRCV_CDD_FCTP_ST[CddNo].SetWakeupModeCdd(CddChnlId,CANTRCV_WUMODE_DISABLE);
#else
                    RetVal = CANTRCV_CDD_FCTP_ST[CddNo].SetWakeupModeCdd(CANTRCV_WUMODE_DISABLE);
#endif
                }
            }
            break;
            default:    // CANTRCV_WUMODE_ENABLE
            {   /* Mode is change as requested (TRCV_WU_ENABLE/TRCV_WU_DISABLE)  */
                CanTrcv_WakeupModeState_ab[Transceiver] = TRUE;
                CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
                if(CANTRCV_CDD_FCTP_ST[CddNo].SetWakeupModeCdd != NULL_PTR)
                {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
                    CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
                    RetVal = CANTRCV_CDD_FCTP_ST[CddNo].SetWakeupModeCdd(CddChnlId,CANTRCV_WUMODE_ENABLE);
#else
                    RetVal = CANTRCV_CDD_FCTP_ST[CddNo].SetWakeupModeCdd(CANTRCV_WUMODE_ENABLE);
#endif

                }
            }
            break;
        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETWAKEUPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
        RetVal = E_NOT_OK;
    }


    return RetVal;
}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Enables, disables or clears wake-up events of the Transceiver according to TrcvWakeupMode..
 *
 *
 *
 * \param   uint8           Transceiver
 * \arg     Transceiver     identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupModeType  WakeupMode
 * \arg     TrcvWakeupMode            requested wakeup mode
 * \return  E_OK:           The wakeup reason can be changed
 *          E_NOT_OK:       Error orrcured
 * \see
 * \note    Not supported by rbWAU  component
 ***************************************************************************************************
 */
#if CANTRCV_CFG_CS9XX_USED == STD_ON
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_SetWakeupMode_CS9xx( uint8 Transceiver,CanTrcv_TrcvWakeupModeType TrcvWakeupMode)
{
    Std_ReturnType RetVal = E_NOT_OK;
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CS9XX)
    {
        (void) (Transceiver);     // CANTRCV_PRV_PARAM_UNUSED If no DET is used. With DET this line has no effect
        (void) (TrcvWakeupMode);  // CANTRCV_PRV_PARAM_UNUSED
        RetVal = E_OK;
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETWAKEUPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal;
}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Enables, disables or clears wake-up events of the Transceiver according to TrcvWakeupMode..
 *
 * \param   uint8           Transceiver
 * \arg     Transceiver     identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupModeType  WakeupMode
 * \arg     TrcvWakeupMode            requested wakeup mode
 * \return  E_OK:           The wakeup reason can be changed
 *          E_NOT_OK:       Error orrcured
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
#if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_SetWakeupMode_TJA1145( uint8 Transceiver,CanTrcv_TrcvWakeupModeType TrcvWakeupMode)
{
    Std_ReturnType RetVal = E_NOT_OK;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
    {
        switch(TrcvWakeupMode)
        {
            case CANTRCV_WUMODE_CLEAR:
            {   /* in case of clear wakeup the mode is not changed */
                // get relevant config data
                uint16 SpiPos_u16;
                uint8  TrcvNo_u8;

                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // Set relevant global variables
                CanTrcv_Prv_TJA1145_Wakeup_au8[TrcvNo_u8] = 0; /* 0: no wakeup; 1=wakeup detected */
                // CANTRCV_CFG_CLEAR_WUPREASON_IN_SETWAKEUPMODE is not used for TJA1145 as the reason is always
                // directly read out of registers
                CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_CLEAR_WUP_MASK;
            }
            break;
            case CANTRCV_WUMODE_DISABLE:
            {
                // Set relevant global variables
                CanTrcv_WakeupModeState_ab[Transceiver] = FALSE;
            }
            break;
            default:   // CANTRCV_WUMODE_ENABLE:
            {
                // Set relevant global variables
                /* Mode is change as requested (TRCV_WU_ENABLE)  */
                CanTrcv_WakeupModeState_ab[Transceiver] = TRUE;
            }
            break;
        }
        RetVal = E_OK;
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETWAKEUPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal;
}
#endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Enables, disables or clears wake-up events of the Transceiver according to TrcvWakeupMode..
 *
 * \param   uint8           Transceiver
 * \arg     Transceiver     identifies Transceiver to which the API has to be applied
 * \param   CanTrcv_TrcvWakeupModeType  WakeupMode
 * \arg     TrcvWakeupMode            requested wakeup mode
 * \return  E_OK:           The wakeup reason can be changed
 *          E_NOT_OK:       Error orrcured
 * \see
 * \note
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12784] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
#if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_SetWakeupMode_TLE9255( uint8 Transceiver,CanTrcv_TrcvWakeupModeType TrcvWakeupMode)
{
    Std_ReturnType RetVal = E_NOT_OK;

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
    {
        switch(TrcvWakeupMode)
        {
            case CANTRCV_WUMODE_CLEAR:
            {   /* in case of clear wakeup the mode is not changed */
                // get relevant config data
                uint16 SpiPos_u16;
                uint8  TrcvNo_u8;

                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // Set relevant global variables
                CanTrcv_Prv_TLE9255_Wakeup_au8[TrcvNo_u8] = 0; /* 0: no wakeup; 1=wakeup detected */
                // CANTRCV_CFG_CLEAR_WUPREASON_IN_SETWAKEUPMODE is not used for TLE9255 as the reason is always
                // directly read out of registers
                CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_CLEAR_WUP_MASK;
            }
            break;
            case CANTRCV_WUMODE_DISABLE:
            {
                // Set relevant global variables
                CanTrcv_WakeupModeState_ab[Transceiver] = FALSE;
            }
            break;
            default:   // CANTRCV_WUMODE_ENABLE:
            {
                // Set relevant global variables
                /* Mode is change as requested (TRCV_WU_ENABLE)  */
                CanTrcv_WakeupModeState_ab[Transceiver] = TRUE;
            }
            break;
        }
        RetVal = E_OK;
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_SETWAKEUPMODE, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal;
}
#endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Checks HW for current or previous wakeup and returns value
 * This function notifies the calling function if a wakeup is detected in the Transceiver by returning E_OK else returns E_NOT_OK
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    The wakeup occured
 *             E_NOT_OK:                The wakeup not occured
 * \see
 * \note       Service is called by underlying CANIF in case a wake up interrupt is detected.
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_CheckWakeup(uint8 Transceiver)
{
    Std_ReturnType RetVal_Func_o = E_NOT_OK;
    Std_ReturnType RetVal_Wake_o = E_NOT_OK;
#if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)

    /*Validate the module state*/
    if(CanTrcv_Prv_InitState_b == TRUE)
    {
        /*Validate the channel ID*/
        if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
        {
            // Check if configparameter configured
            if(CANTRCV_FCTP_ST[Transceiver].CheckWakeup != NULL_PTR)
            {
                // Call trcv-specific CheckWakeup fuction according config
                RetVal_Func_o = CANTRCV_FCTP_ST[Transceiver].CheckWakeup(Transceiver, &RetVal_Wake_o);
            }
        }
        else
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CHECKWAKEUP, CANTRCV_E_INVALID_TRANSCEIVER)
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CHECKWAKEUP, CANTRCV_E_UNINIT)
    }

#else
    (void) (Transceiver);   // CANTRCV_PRV_PARAM_UNUSED
#endif
#if (CANTRCV_RB_CHECKWAKEUP_RETURNVAL == STD_OFF)
    (void) RetVal_Wake_o;
    return RetVal_Func_o;
#else
    (void) RetVal_Func_o;
    return RetVal_Wake_o;
#endif
}
/**
 ***************************************************************************************************
 * \moduledescription
 * Checks HW for current or previous wakeup and returns value
 * This function notifies the calling function if a wakeup is detected in the Transceiver by returning E_OK else returns E_NOT_OK
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    The wakeup occured
 *             E_NOT_OK:                The wakeup not occured
 * \see
 * \note       Service is called by underlying CANIF in case a wake up interrupt is detected.
 ***************************************************************************************************
 */
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_CheckWakeup_Dio(uint8 Transceiver,Std_ReturnType *WakeInfo)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    Dio_LevelType  Value;
    uint8 TrcvDioId_u8;
    uint8 GetWakeupPinPos_pu8;

    *WakeInfo = E_NOT_OK;   /* Set wakeup to default value == no wakeup */

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_DEFAULT)
    {
        TrcvDioId_u8 = CANTRCV_DIO_GETCHANNELID_AU8[Transceiver];   /* Get relevant Dio Transceiver Id */
        /* Check if mode allowes wakeup-check */
        if(FALSE != CanTrcv_WakeupModeState_ab[Transceiver])
        {
            if((CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].WakeupPossibility == 1) &&
               ((CanTrcv_Dio_Mode_au8[TrcvDioId_u8] == CANTRCV_TRCVMODE_SLEEP) || (CanTrcv_Dio_Mode_au8[TrcvDioId_u8] == CANTRCV_TRCVMODE_STANDBY)))
            {
                GetWakeupPinPos_pu8 = CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].WakePinPos;
                Value = Dio_ReadChannel(CANTRCV_DIO_DIOARRAY_AST[GetWakeupPinPos_pu8].Pin) ^ (CANTRCV_DIO_DIOARRAY_AST[GetWakeupPinPos_pu8].Invert);
                if(Value == STD_LOW)
                {
                    CanTrcv_Dio_Wakeup_au8[TrcvDioId_u8] = 1; /* 0: no wakeup; 1=wakeup detected */
                }
            }
            if(CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].WakeupPossibility != 0)
            {
               if(CanTrcv_Dio_Wakeup_au8[TrcvDioId_u8] == 1)   /* 0: no wakeup; 1=wakeup detected */
               {
                   *WakeInfo = E_OK;
                   RetVal_o  = E_OK;
               }
            }
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CHECKWAKEUP, CANTRCV_E_INVALID_TRANSCEIVER)
    }
#  if(CANTRCV_ECUM_USED == STD_ON)
    /* Check if Wakeupsource is configured */
    if(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] != 0u)
    {
        if(E_OK == *WakeInfo)
        {
            EcuM_SetWakeupEvent(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
        }
        EcuM_EndCheckWakeup(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
    }

#  endif
    return RetVal_o;
}
# endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Checks HW for current or previous wakeup and returns value
 * This function notifies the calling function if a wakeup is detected in the Transceiver by returning E_OK else returns E_NOT_OK
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    The wakeup occured
 *             E_NOT_OK:                The wakeup not occured
 * \see
 * \note       Service is called by underlying CANIF in case a wake up interrupt is detected.
 ***************************************************************************************************
 */
#if CANTRCV_CFG_CDD_USED == STD_ON
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_CheckWakeup_Cdd(uint8 Transceiver, Std_ReturnType *WakeInfo)
{
    Std_ReturnType RetVal_o = E_OK;
    uint8          CddNo;
#if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
#endif
    *WakeInfo = E_NOT_OK;   // Set wakeup to default value == no wakeup

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
    {
        CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
        if(CANTRCV_CDD_FCTP_ST[CddNo].CheckWakeupCdd != NULL_PTR)
        {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
            CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
            *WakeInfo = CANTRCV_CDD_FCTP_ST[CddNo].CheckWakeupCdd(CddChnlId);
#else
            *WakeInfo = CANTRCV_CDD_FCTP_ST[CddNo].CheckWakeupCdd();
#endif
        }
/* BSW-15603 */ /* [$DD_BSWCODE 37509] */
#  if CANTRCV_CY327_DIO_CONFIGURED == STD_ON
        else
        {
            *WakeInfo = CanTrcv_CheckWakeupInternal_CDD(Transceiver, CddNo );
        }
/* END BSW-15603 */
#  endif
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CHECKWAKEUP, CANTRCV_E_INVALID_TRANSCEIVER)
        RetVal_o = E_NOT_OK;
    }
    return RetVal_o;
}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Checks HW for current or previous wakeup and returns value
 * This function notifies the calling function if a wakeup is detected in the Transceiver by returning E_OK else returns E_NOT_OK
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    The wakeup occured
 *             E_NOT_OK:                The wakeup not occured
 * \see
 * \note       Service is called by underlying CANIF in case a wake up interrupt is detected.
 ***************************************************************************************************
 */

#if CANTRCV_CFG_CS9XX_USED == STD_ON
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_CheckWakeup_CS9xx(uint8 Transceiver, Std_ReturnType *WakeInfo)
{
    Std_ReturnType RetVal_o = E_OK;
    uint8          LocTrcvNo;
    *WakeInfo   = E_NOT_OK;   // Set wakeup to default value == no wakeup

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CS9XX)
    {
        /// @return  0 = FALSE = if no wakeup signal by this clients source detected
        ///               !0 = if a wakeup signal is detected
        ///
        ///  @note If source is not initially enabled
        ///        (as part of RBMIC-ASIC-Init-Config)
        ///        RBWAU_EnableWakeupSource_Async need to be called before
        ///        and this might take up to 20ms until it will reflect here.

        // Get related, required config parameter
        LocTrcvNo = CANTRCV_CDDIDMAPPING_AU8[Transceiver];

        // Read out wakeup info from extrnal module and return result
        /* MR12 RULE 10.5 VIOLATION: CanTrcv should handle different CDD-Transceivers (like this CS9xx). A general type (uint8) is used in CanTrcv to adress different CDD. */
        if(RBWAU_IsWakeupActive((RBWAU_Client)LocTrcvNo) != FALSE)
        {
            *WakeInfo = E_OK;   // E_OK == wakeup detected
        }
#  if(CANTRCV_ECUM_USED == STD_ON)
        // Check if Wakeupsource is configured
        if(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] != 0u)
        {
            if(E_OK == *WakeInfo)  // Check if wakeup detected
            {
                EcuM_SetWakeupEvent(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
            }
            EcuM_EndCheckWakeup(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
        }
#  endif
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CHECKWAKEUP, CANTRCV_E_INVALID_TRANSCEIVER)
        RetVal_o = E_NOT_OK;
    }
    return RetVal_o;
}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Checks HW for current or previous wakeup and returns value
 * This function notifies the calling function if a wakeup is detected in the Transceiver by returning E_OK else returns E_NOT_OK
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    The wakeup occured
 *             E_NOT_OK:                The wakeup not occured
 * \see
 * \note       Service is called by underlying CANIF in case a wake up interrupt is detected.
 *              This function reads out SPI-status bits. Rx-Pin is only low as long event is pending
 ***************************************************************************************************
 */

#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_CheckWakeup_TJA1145(uint8 Transceiver, Std_ReturnType *WakeInfo)
{
    Std_ReturnType RetVal_o = E_OK;
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
    *WakeInfo   = E_NOT_OK;   // Set wakeup to default value == no wakeup

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
    {
        // Check if mode allowes wakeup-check
        if ( FALSE != CanTrcv_WakeupModeState_ab[Transceiver])
        {
#  if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_SYNC)
            // Get relevant configuration parameter
            SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
            TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

            // Get wakeupinfo out of global variable
            if( CanTrcv_Prv_TJA1145_Wakeup_au8[TrcvNo_u8] == 1)   /* 0=no wakeup; 1=wakeup detected */
            {
                // set return value out of result
                *WakeInfo = E_OK;
            }
#   if(CANTRCV_ECUM_USED == STD_ON)
            // Check if Wakeupsource is configured
            if(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] != 0u)
            {
                if(E_OK == *WakeInfo)  // Check if wakeup detected
                {
                    EcuM_SetWakeupEvent(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
                }
                EcuM_EndCheckWakeup(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
            }
#   endif
#  else
            // Get relevant configuration parameter
            // Bit CFS in Reg 22h  Transceiver status register
            SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
            TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
            // Set global mask to read out wakeup info
            CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_CHECK_WAKEUP_READ;

#  endif
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CHECKWAKEUP, CANTRCV_E_INVALID_TRANSCEIVER)
        RetVal_o = E_NOT_OK;
    }
    return RetVal_o;
}
# endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Checks HW for current or previous wakeup and returns value
 * This function notifies the calling function if a wakeup is detected in the Transceiver by returning E_OK else returns E_NOT_OK
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    The wakeup occured
 *             E_NOT_OK:                The wakeup not occured
 * \see
 * \note       Service is called by underlying CANIF in case a wake up interrupt is detected.
 *              This function reads out SPI-status bits. Rx-Pin is only low as long event is pending
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12778] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
Std_ReturnType CanTrcv_CheckWakeup_TLE9255(uint8 Transceiver, Std_ReturnType *WakeInfo)
{
    Std_ReturnType RetVal_o = E_OK;
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
    *WakeInfo   = E_NOT_OK;   // Set wakeup to default value == no wakeup

    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
    {
        // Check if mode allowes wakeup-check
        if ( FALSE != CanTrcv_WakeupModeState_ab[Transceiver])
        {
#  if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_SYNC)
            // Get relevant configuration parameter
            SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
            TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

            // Get wakeupinfo out of global variable
            if( CanTrcv_Prv_TLE9255_Wakeup_au8[TrcvNo_u8] == 1)   /* 0=no wakeup; 1=wakeup detected */
            {
                // set return value out of result
                *WakeInfo = E_OK;
            }
#   if(CANTRCV_ECUM_USED == STD_ON)
            // Check if Wakeupsource is configured
            if(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] != 0u)
            {
                if(E_OK == *WakeInfo)  // Check if wakeup detected
                {
                    EcuM_SetWakeupEvent(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
                }
                EcuM_EndCheckWakeup(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
            }
#   endif
#  else
            // Get relevant configuration parameter
            // Bit CFS in Reg 22h  Transceiver status register
            SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
            TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
            // Set global mask to read out wakeup info
            CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_CHECK_WAKEUP_READ;

#  endif
        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CHECKWAKEUP, CANTRCV_E_INVALID_TRANSCEIVER)
        RetVal_o = E_NOT_OK;
    }
    return RetVal_o;
}
# endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Requests to check the status of the wakeup flag from the transceiver hardware.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    Check was allowed
 *             E_NOT_OK:                Error in function
 * \see
 * \note    This function is not used as the wakeupflag is read cyclicly in main function
 ***************************************************************************************************
 */
/* HIS METRIC LEVEL VIOLATION IN CanTrcv_CheckWakeFlag: Nesting of If is 5 due to checkin of configuration value and to take necessary action. */
Std_ReturnType CanTrcv_CheckWakeFlag(uint8 Transceiver)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
#if(CANTRCV_HW_PN_SUPPORT == STD_ON)
/* BSW-15603 */ /* [$DD_BSWCODE 37510] */ 
# if((CANTRCV_ECUM_USED == STD_ON) && ((CANTRCV_CFG_SPI_TJA1145_USED == STD_ON) || (CANTRCV_CFG_SPI_TLE9255_USED == STD_ON)))
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
# endif
#if CANTRCV_CFG_CDD_USED == STD_ON
    uint8          CddNo;
# if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
# endif
#endif
/* END BSW-15603 */

    /*Validate the module state*/
    if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV )
    {
/* BSW-9419 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
        /*Validate the channel ID*/
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
        {
# if(CANTRCV_ECUM_USED == STD_ON)
            // Check if mode allowes wakeup-check
            if (FALSE != CanTrcv_WakeupModeState_ab[Transceiver])
            {
                // Get relevant configuration parameter
                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // Check if wakeup was stored in global variable
                if(0 != CanTrcv_Prv_TJA1145_Wakeup_au8[TrcvNo_u8])
                {
                    // Check if Wakeupsource is configured
                    if(CANTRCV_SPIARRAY_AST[SpiPos_u16].WakeupSourceRef != 0u)
                    {
                        EcuM_SetWakeupEvent(CANTRCV_SPIARRAY_AST[SpiPos_u16].WakeupSourceRef );
                    }
                }
            }
# endif
            // Always give indication as AR4.x Req is wrong. See sequence diagramm in AR4.0 spec
            // As the bits are cyclic read out in main function, this callback can be given sync.
#if (0 == CANNM_ENABLE)
            CanIf_CheckTrcvWakeFlagIndication(Transceiver);
#endif
            // Set return value to E_OK
            RetVal_o = E_OK;
        }
        else
/* BSW-9419 */ /* [$DD_BSWCODE 28666] */
#endif
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
        {
#if(CANTRCV_ECUM_USED == STD_ON)
            // Check if mode allowes wakeup-check
            if (FALSE != CanTrcv_WakeupModeState_ab[Transceiver])
            {
                // Get relevant configuration parameter
                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // Check if wakeup was stored in global variable
                if(0 != CanTrcv_Prv_TLE9255_Wakeup_au8[TrcvNo_u8])
                {
                    // Check if Wakeupsource is configured
                    if(CANTRCV_SPIARRAY_AST[SpiPos_u16].WakeupSourceRef != 0u)
                    {
                        EcuM_SetWakeupEvent(CANTRCV_SPIARRAY_AST[SpiPos_u16].WakeupSourceRef );
                    }
                }
            }
#endif
            // Always give indication as AR4.x Req is wrong. See sequence diagramm in AR4.0 spec
            // As the bits are cyclic read out in main function, this callback can be given sync.
            (void) CanIf_CheckTrcvWakeFlagIndication(Transceiver);
            // Set return value to E_OK
            RetVal_o = E_OK;
        }
        else
#endif
/* END BSW-9419 */
/* BSW-15603 */ /* [$DD_BSWCODE 37510] */ 
#if CANTRCV_CFG_CDD_USED == STD_ON
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
        {
            CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
            if(CANTRCV_CDD_FCTP_ST[CddNo].CheckWakeFlagCdd != NULL_PTR)
            {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
                CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
                RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].CheckWakeFlagCdd(CddChnlId);
#else
                RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].CheckWakeFlagCdd();
#endif
            }
        }
        else
#endif
/* END BSW-15603 */
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CHECKWAKEFLAG, CANTRCV_E_INVALID_TRANSCEIVER)
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CHECKWAKEFLAG, CANTRCV_E_INVALID_TRANSCEIVER)

    }
#else
            (void) (Transceiver);   // CANTRCV_PRV_PARAM_UNUSED
#endif
    //return return value
    return RetVal_o;
}
/**
 ***************************************************************************************************
 * \moduledescription
 * Reads the status of the timeout flag from the transceiver hardware.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return  E_OK: Will be returned, if status of the timeout flag is success-fully read.
 *          E_NOT_OK: Will be returned, if status of the timeout flag could not be read.
 * \see
 * \note  This API shall exist only if CanTrcvHwPnSupport = TRUE..
 ***************************************************************************************************
 */
/* HIS METRIC LEVEL VIOLATION IN CanTrcv_ReadTrcvTimeoutFlag: Nesting of If is 5 due to the validation of SPI register and updat the code. If the function is splited to suppress the HIS then readeabilty od code will be reduced */

#if CANTRCV_HW_PN_SUPPORT == STD_ON
Std_ReturnType CanTrcv_ReadTrcvTimeoutFlag( uint8 Transceiver, CanTrcv_TrcvFlagStateType* FlagState )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
/* BSW-15603 */ /* [$DD_BSWCODE 37511] */
#if((CANTRCV_CFG_SPI_TJA1145_USED == STD_ON) || (CANTRCV_CFG_SPI_TLE9255_USED == STD_ON))
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
#endif
#if CANTRCV_CFG_CDD_USED == STD_ON
    uint8          CddNo;
# if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
# endif
#endif
/* END BSW-15603 */
    /*Validate the module state*/
    if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
    {
/* BSW-9419 */ /* [$DD_BSWCODE 28671] */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
        /*Validate the channel ID*/
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
        {
            /*Validate the pointer*/
            if(FlagState != NULL_PTR )
            {
                // Get relevant configuration parameter
                // Bit CFS in Reg 22h  Transceiver status register
                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // Check for valid register data
                if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_INITDATA_MASK) == 0u)
                {
                    // Calculate  parameter FlagState
                    *FlagState = CANTRCV_FLAG_CLEARED;
                    if((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] & CANTRCV_CFG_TJA1145_SPI_CBS_MASK) != 0u)
                    {
                        *FlagState = CANTRCV_FLAG_SET;
                    }

                    RetVal_o = E_OK;
                }

            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVTIMEOUTFLAG, CANTRCV_E_PARAM_POINTER)

            }
/* BSW-9419 */
        }
        else
#endif
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
        /*Validate the channel ID*/
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
        {
            /*Validate the pointer*/
            if(FlagState != NULL_PTR )
            {
                // Get relevant configuration parameter
                // Bit CFS in Reg 22h  Transceiver status register
                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // Check for valid register data
                if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_INITDATA_MASK) == 0u)
                {
                    // Calculate  parameter FlagState
                    *FlagState = CANTRCV_FLAG_CLEARED;
                    if((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1C] & CANTRCV_CFG_TLE9255_SPI_CANTO_MASK) != 0u)
                    {
                        *FlagState = CANTRCV_FLAG_SET;
                    }

                    RetVal_o = E_OK;
                }

            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVTIMEOUTFLAG, CANTRCV_E_PARAM_POINTER)

            }

        }
        else
#endif
/* END BSW-9419 */
/* BSW-15603 */ /* [$DD_BSWCODE 37511] */
#if CANTRCV_CFG_CDD_USED == STD_ON
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
        {
            CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
            if(CANTRCV_CDD_FCTP_ST[CddNo].ReadTrcvTimeoutFlagCdd != NULL_PTR)
            {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
                CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
                RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].ReadTrcvTimeoutFlagCdd(CddChnlId, FlagState);
#else
                RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].ReadTrcvTimeoutFlagCdd(FlagState);
#endif
            }
        }
        else
#endif
/* END BSW-15603 */
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVTIMEOUTFLAG, CANTRCV_E_INVALID_TRANSCEIVER)

        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVTIMEOUTFLAG, CANTRCV_E_INVALID_TRANSCEIVER)

    }

    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Clears the status of the timeout flag in the transceiver hardware.
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    Check was allowed
 *             E_NOT_OK:                Error in function
 * \see
 * \note  This API shall exist only if CanTrcvHwPnSupport = TRUE..
 *!Reg 63  CBS R/W 0 CAN bus is active
 *                 1 no activity on CAN bus for tto(silence)
 *
 * Reg 22 CBSS R   0 CAN bus active (communication detected on bus)
 *                 1 CAN bus inactive (for longer than tto(silence))
 * Reg 23 CBSE R/W 0 CAN bus silence detection disabled
 * Reg 22  CFS R   0 no TXD dominant timeout event detected
 ***************************************************************************************************
 */
#if CANTRCV_HW_PN_SUPPORT == STD_ON
Std_ReturnType CanTrcv_ClearTrcvTimeoutFlag( uint8 Transceiver )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
/* BSW-15603 */ /* [$DD_BSWCODE 37512] */
#if((CANTRCV_CFG_SPI_TJA1145_USED == STD_ON) || (CANTRCV_CFG_SPI_TLE9255_USED == STD_ON))
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
#endif
#if CANTRCV_CFG_CDD_USED == STD_ON
    uint8          CddNo;
# if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
# endif
#endif
/* END BSW-15603 */
    /*Validate the module state*/
    if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
    {
/* BSW-9419 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
        /*Validate the channel ID*/
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
        {
            // Get relevant configuration parameter
            // Bit CFS in Reg 22h  Transceiver status register
            SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
            TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

            // Set global Flag to start activity in main function
            CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_CLEAR_TIMEOUT_MASK;

            RetVal_o= E_OK;

        }
        else
/* BSW-9419 */ /* [$DD_BSWCODE 28667]*/
#endif
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
        /*Validate the channel ID*/
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
        {
            // Get relevant configuration parameter
            // Bit CFS in Reg 22h  Transceiver status register
            SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
            TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

            // Set global Flag to start activity in main function
            CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_CLEAR_TIMEOUT_MASK;

            RetVal_o= E_OK;

        }
        else
#endif
/* END BSW-9419 */
/* BSW-15603 */ /* [$DD_BSWCODE 37512] */
#if CANTRCV_CFG_CDD_USED == STD_ON
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
        {
            CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
            if(CANTRCV_CDD_FCTP_ST[CddNo].ClearTrcvTimeoutFlagCdd != NULL_PTR)
            {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
                CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
                RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].ClearTrcvTimeoutFlagCdd(CddChnlId);
#else
                RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].ClearTrcvTimeoutFlagCdd();
#endif
            }
        }
        else
#endif
/* END BSW-15603 */
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CLEARTRCVTIMEOUTFLAG, CANTRCV_E_INVALID_TRANSCEIVER)

        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CLEARTRCVTIMEOUTFLAG, CANTRCV_E_INVALID_TRANSCEIVER)

    }

    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Reads the status of the silence flag from the transceiver hardware
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    Check was allowed
 *             E_NOT_OK:                Error in function
 * \see
 * \note  This API shall exist only if CanTrcvHwPnSupport = TRUE..
 ***************************************************************************************************
 */
/* HIS METRIC LEVEL VIOLATION IN CanTrcv_ReadTrcvSilenceFlag: Nesting of If is 5 due to the validation of SPI register and updat the code. If the function is splited to suppress the HIS then readeabilty od code will be reduced */
#if CANTRCV_HW_PN_SUPPORT == STD_ON
Std_ReturnType CanTrcv_ReadTrcvSilenceFlag( uint8 Transceiver, CanTrcv_TrcvFlagStateType* FlagState )
{
    Std_ReturnType RetVal_o = E_NOT_OK;
/* BSW-15603 */ /* [$DD_BSWCODE 37513] */
#if((CANTRCV_CFG_SPI_TJA1145_USED == STD_ON) || (CANTRCV_CFG_SPI_TLE9255_USED == STD_ON))
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
#endif
#if CANTRCV_CFG_CDD_USED == STD_ON
    uint8          CddNo;
# if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
# endif
#endif
/* END BSW-15603 */
    /*Validate the module state*/
    if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
    {
/* BSW-9419 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
        /*Validate the channel ID*/
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
        {
            if(FlagState != NULL_PTR)
            {
                // Get relevant configuration parameter
                // Bit CFS in Reg 22h  Transceiver status register
                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // Check for valid register data
                if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_INITDATA_MASK) == 0u)
                {
                    // Calculate  parameter FlagState
                    *FlagState = CANTRCV_FLAG_SET;  // Value=0
                    if((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG22] & CANTRCV_CFG_TJA1145_SPI_CBSS_MASK) != 0u)
                    {
                        *FlagState = CANTRCV_FLAG_CLEARED;  // Value 1
                    }

                    RetVal_o = E_OK;
                }

            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVSILENCEFLAG, CANTRCV_E_PARAM_POINTER)
            }
        }
        else
/* BSW-9419 */ /* [$DD_BSWCODE 28670] */
#endif
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
        /*Validate the channel ID*/
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
        {
            if(FlagState != NULL_PTR)
            {
                // Get relevant configuration parameter
                // Bit CFS in Reg 22h  Transceiver status register
                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // Check for valid register data
                if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_INITDATA_MASK) == 0u)
                {
                    // Calculate  parameter FlagState
                    *FlagState = CANTRCV_FLAG_SET;  // Value=0
                    if((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1C] & CANTRCV_CFG_TLE9255_SPI_CANSIL_MASK) != 0u)
                    {
                        *FlagState = CANTRCV_FLAG_CLEARED;  // Value 1
                    }

                    RetVal_o = E_OK;
                }

            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVSILENCEFLAG, CANTRCV_E_PARAM_POINTER)
            }
        }
        else
#endif
/* END BSW-9419 */
/* BSW-15603 */ /* [$DD_BSWCODE 37513] */
#if CANTRCV_CFG_CDD_USED == STD_ON
        if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
        {
            CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
            if(CANTRCV_CDD_FCTP_ST[CddNo].ReadTrcvSilenceFlagCdd != NULL_PTR)
            {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
                CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
                RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].ReadTrcvSilenceFlagCdd(CddChnlId, FlagState);
#else
                RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].ReadTrcvSilenceFlagCdd(FlagState);
#endif
            }
        }
        else
#endif
/* END BSW-15603 */
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVSILENCEFLAG, CANTRCV_E_INVALID_TRANSCEIVER)

        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVSILENCEFLAG, CANTRCV_E_INVALID_TRANSCEIVER)

    }
    // return retval
    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * The API configures the wake-up of the transceiver for Standby and Sleep Mode: Either the CAN
 * transceiver is woken up by a remote wake-up pattern (standard CAN wake-up) or by the
 * configured remote wake-up frame.
 *
 * \param   CanTrcv_PNActivationType    CANTRCV_PN_ENABLED  = 0,    CANTRCV_PN_DISABLED = 1
 * \arg     ActivationState             identifies Transceiver to which the API has to be applied
 * \return      E_OK: Will be returned, if the PN has been changed to the requested configuration.
 *              E_NOT_OK: Will be returned, if the PN configuration change has failed. The previous
 *                        configuration has not been changed.
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_HW_PN_SUPPORT == STD_ON
Std_ReturnType CanTrcv_SetPNActivationState(CanTrcv_PNActivationType ActivationState)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint8  TrcvNo_u8;
/* BSW-15603 */ /* [$DD_BSWCODE 37514] */
#if CANTRCV_CFG_CDD_USED == STD_ON
# if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
# endif
#endif
/* END BSW-15603 */
    if(CanTrcv_Prv_InitState_b == TRUE)
    {
/* BSW-9419 */ /* [$DD_BSWCODE 28672] */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
        for(TrcvNo_u8 = 0; TrcvNo_u8 < CANTRCV_CFG_TJA1145_MAX; TrcvNo_u8++)
        {
            if( ActivationState == CANTRCV_PN_ENABLED)
            {
                CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_SET_PNACTIVATE_MASK;
            }
            else    // CANTRCV_PN_DISABLED = 1
            {
                CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_CLEAR_PNACTIVATE_MASK;
            }
        }
/* BSW-9419 */
#endif
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
        for(TrcvNo_u8 = 0; TrcvNo_u8 < CANTRCV_CFG_TLE9255_MAX; TrcvNo_u8++)
        {
            if( ActivationState == CANTRCV_PN_ENABLED)
            {
                CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_SET_PNACTIVATE_MASK;
            }
            else    // CANTRCV_PN_DISABLED = 1
            {
                CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_CLEAR_PNACTIVATE_MASK;
            }
        }
#endif
/* END BSW-9419 */
        RetVal_o = E_OK;
/* BSW-15603 */ /* [$DD_BSWCODE 37514] */
#if CANTRCV_CFG_CDD_USED == STD_ON
        /*Loop through all CanTrcv configured as CDD type*/
        /*Call the corresponding function pointer of that transceiver*/
        for(TrcvNo_u8 = 0; TrcvNo_u8 < CANTRCV_CFG_NUMBER_OF_CDD_CANTRCV; TrcvNo_u8++)
        {
            if(CANTRCV_CDD_FCTP_ST[TrcvNo_u8].SetPNActivationStateCdd != NULL_PTR)
            {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
                CddChnlId =  CANTRCV_CDD_FCTP_ST[TrcvNo_u8].CddChnlId;
                RetVal_o = CANTRCV_CDD_FCTP_ST[TrcvNo_u8].SetPNActivationStateCdd(CddChnlId, ActivationState);
#else
                RetVal_o = CANTRCV_CDD_FCTP_ST[TrcvNo_u8].SetPNActivationStateCdd(ActivationState);
#endif
            }
        }
#endif
/* END BSW-15603 */
    }
    else
    {
        CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_SETPNACTIVATIONSTATE, CANTRCV_E_UNINIT)
    }

    return RetVal_o;
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Gets the configuration/status of the transceiver hardware.
 *
 * \param   CanTrcv_PNActivationType    CANTRCV_PN_ENABLED  = 0,    CANTRCV_PN_DISABLED = 1
 * \arg     ActivationState             identifies Transceiver to which the API has to be applied
 * \return      E_OK: Will be returned, if the PN has been changed to the requested configuration.
 *              E_NOT_OK: Will be returned, if the PN configuration change has failed. The previous
 *                        configuration has not been changed.
 * \see
 * \note
 ***************************************************************************************************
 */

#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
Std_ReturnType CanTrcv_GetTrcvSystemData(uint8 Transceiver, const uint32* TrcvSysData )
{
    Std_ReturnType RetVal_o = E_NOT_OK;

    if(CanTrcv_Prv_InitState_b == TRUE)
    {
        /*Validate the module state*/
        if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
        {
            /*Validate the channel ID*/
            /* BSW-9419 */ /* [$DD_BSWCODE 28669] */
            if((CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145) || (CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255))
            {
                if(TrcvSysData != NULL_PTR)
                {
                    (void) (*TrcvSysData);    // CANTRCV_PRV_PARAM_UNUSED
                }
                else
                {
                    CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETTRCVSYSTEMDATA, CANTRCV_E_PARAM_POINTER)
                }
            }
            else
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETTRCVSYSTEMDATA, CANTRCV_E_INVALID_TRANSCEIVER)

            }
        }
        else
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETTRCVSYSTEMDATA, CANTRCV_E_INVALID_TRANSCEIVER)

        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETTRCVSYSTEMDATA, CANTRCV_E_UNINIT)
    }

    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Clears the WUF flag in the transceiver hardware.
 *
 *
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return     E_OK:                    Check was allowed
 *             E_NOT_OK:                Error in function
 * \see
 * \note
 ***************************************************************************************************
 */
#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
Std_ReturnType CanTrcv_ClearTrcvWufFlag(uint8 Transceiver)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
/* BSW-15603 */ /* [$DD_BSWCODE 37515] */
#if((CANTRCV_CFG_SPI_TJA1145_USED == STD_ON) || (CANTRCV_CFG_SPI_TLE9255_USED == STD_ON))
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;
#endif
#if CANTRCV_CFG_CDD_USED == STD_ON
    uint8          CddNo;
# if(CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8 CddChnlId;
# endif
#endif
/* END BSW-15603 */
    if(CanTrcv_Prv_InitState_b == TRUE)
    {
        /*Validate the module state*/
        if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
        {
/* BSW-9419 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
            /*Validate the channel ID*/
            if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TJA1145)
            {
                // Get relevant configuration parameter
                // Bit CFS in Reg 22h  Transceiver status register
                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // clear global wakeup information
                CanTrcv_Prv_TJA1145_Wakeup_au8[TrcvNo_u8] = 0;

                // Set global Flag to start activity in main function
                CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_CLEAR_WUP_MASK;

#if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR == CANTRCV_INDICATION_IMMEDIATELY)
                CanIf_ClearTrcvWufFlagIndication(Transceiver);
#else
                CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK;
#endif
                RetVal_o = E_OK;
            }
            else
/* BSW-9419 */ /* [$DD_BSWCODE 28668] */
#endif
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
            if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_TLE9255)
            {
                // Get relevant configuration parameter
                // Bit CFS in Reg 22h  Transceiver status register
                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                // clear global wakeup information
                CanTrcv_Prv_TLE9255_Wakeup_au8[TrcvNo_u8] = 0;

                // Set global Flag to start activity in main function
                CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_CLEAR_WUP_MASK;

#if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR == CANTRCV_INDICATION_IMMEDIATELY)
                CanIf_ClearTrcvWufFlagIndication(Transceiver);
#else
                CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK;
#endif
                RetVal_o = E_OK;
            }

            else
#endif
/* END BSW-9419 */
/* BSW-15603 */ /* [$DD_BSWCODE 37515] */
#if CANTRCV_CFG_CDD_USED == STD_ON
            if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
            {
                CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;
                if(CANTRCV_CDD_FCTP_ST[CddNo].ClearTrcvWufFlagCdd != NULL_PTR)
                {
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
                    CddChnlId =  CANTRCV_CDD_FCTP_ST[CddNo].CddChnlId;
                    RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].ClearTrcvWufFlagCdd(CddChnlId);
#else
                    RetVal_o = CANTRCV_CDD_FCTP_ST[CddNo].ClearTrcvWufFlagCdd();
#endif
                }
            }
            else
#endif
/* END BSW-15603 */
            {
                CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CLEARTRCVWUFFLAG, CANTRCV_E_INVALID_TRANSCEIVER)

            }
        }
        else
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CLEARTRCVWUFFLAG, CANTRCV_E_INVALID_TRANSCEIVER)

        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_CLEARTRCVWUFFLAG, CANTRCV_E_UNINIT)
    }

    return RetVal_o;
}
#endif

/**
*******************************************************************************************************
* \moduledescription
* Cantrcv_WaitUs function Waits given time of micro seconds until given time
*
*
*
* \param   CanTrcv_Cfg_Tick_to      StartTime_o
* \arg     StartTime_o              start of time period (in timeticks)
* \param   CanTrcv_Cfg_Tick_to      TimePeriod_o
* \arg     TimePeriod_o             length of time period in us
* \return  void
* \see
* \note   This function is to be used internally only !
*         When using timers to wait for an amount of time, there's the possibility of a timer
*         overflow, which might lead to wrong timing if undetected. The main purpose of this
*         function is to check if a certain time has expired, taking into account
*         the possibility of a timer overflow. The function is based on timer values only, and
*         therefore independent of the timer source. It can be used with any hardware or
*         software timer.
*         See function TIM_IsTimeExpiredFastTimer for more information.
*         If the timer stands and is not changed, a DET is raised.
*******************************************************************************************************
*/
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
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
#endif

/**
***************************************************************************************************
* \moduledescription
* Cantrcv_CheckTimeElapsed function checks if a given time period has expired (internal function)
*
*
*
* \param   CanTrcv_Cfg_Tick_to      CurrentTime_o
* \arg     CurrentTime_o            Current time (in timeticks)
* \param   CanTrcv_Cfg_Tick_to      StartTime_o
* \arg     StartTime_o              Start of time period (in timeticks)
* \param   CanTrcv_Cfg_Tick_to      TimePeriod_o
* \arg     TimePeriod_o             Length of time period in us
* \return  boolean  TRUE:   Time has expired
*                   FALSE:  Time has not yet expired
* \see
* \note   This function is to be used internally only !
*         When using timers to wait for an amount of time, there's the possibility of a timer
*         overflow, which might lead to wrong timing if undetected. The main purpose of this
*         function is to check if a certain time has expired, taking into account
*         the possibility of a timer overflow. The function is based on timer values only, and
*         therefore independent of the timer source. It can be used with any hardware or
*         software timer.
*         See function TIM_IsTimeExpiredFastTimer for more information.
*         If the timer stands and is not changed, a DET is raised.
***************************************************************************************************
*/
#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
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
#endif

/**
 ***************************************************************************************************
 * \CanTrcv_ChangeModeFunction1
 * This function reads Wakeupsignalisation Pin and sets wakeup state (Wakeup detected except PWR on)
 *
 *
 *
 * \param   uint8                       TrcvDioId_u8
 * \arg     TrcvDioId_u8                identifies Dio Transceiver to which the API has to be applied
 *                                      Value points to table CanTrcv_SetModeStructChain
 * \return     -   :                    -
 *
 * \see
 * \note    Function is called before TJA1040/TJA1041/.. is set to normal mode.
 *          It read Wakeup-Pin as it displays  wake-up state.
 *          Wakeup flag is set and can be read out. Wakeup flag is cleared in normal mode
 ***************************************************************************************************
 */
#if (CANTRCV_CHANGE_MODE_FUNCTION1_USED == STD_ON)
void CanTrcv_ChangeModeFunction1(uint8 TrcvDioId_u8)
{
    /* Read WakePin from Transceiver before normal mode and store value as it is cleared in normal mode */
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
    /* The function can be called in a sequence of Pin/Mode-changes. To check if not normal state is reached and  */
    /* Bit has correct state, the current state is read out and the bit is only read in Not normal mode  */
    CanTrcv_GetTransceiverMode_Dio(TrcvDioId_u8, &CanTrcv_Dio_Mode_au8[TrcvDioId_u8]);

    if(CanTrcv_Dio_Mode_au8[TrcvDioId_u8] != CANTRCV_TRCVMODE_NORMAL)
    {
        if(STD_LOW == (Dio_ReadChannel(CANTRCV_DIO_DIOARRAY_AST[CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].WakePinPos].Pin)
                         ^ (CANTRCV_DIO_DIOARRAY_AST[CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].WakePinPos].Invert)))
        {
            CanTrcv_Dio_Wakeup_au8[TrcvDioId_u8] |= 1u; /* 0: no wakeup; 1=wakeup detected */
        }
    }

    return;
# else
    (void) (TrcvDioId_u8);    /* CANTRCV_PRV_PARAM_UNUSED */
# endif
}
#endif

/**
 ***************************************************************************************************
 * \CanTrcv_ChangeModeFunction2
 * This function reads out Wakeup Pin after reaching normal mode and sets wakeup reason
 *
 *
 * \param   uint8                       TrcvDioId_u8
 * \arg     TrcvDioId_u8                identifies Transceiver to which the API has to be applied
 *                                      Value points to table CanTrcv_SetModeStructChain
 * \return     -:                       -
 *                                      or wrong parameters
 * \see
 * \note    Function is called after TJA1040/TJA1041/.. reaches normal mode. It checks the
 *          WakeupPin as it displays  wake-up source
 *          on local wakeup (wakeup pin) the internal  wake-up source flag is set and can be read out
 *          ! There shall be NO communication between mode change to normal and call of this function !
 ***************************************************************************************************
 */
#if (CANTRCV_CHANGE_MODE_FUNCTION2_USED == STD_ON)
void CanTrcv_ChangeModeFunction2(uint8 TrcvDioId_u8)
{
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
    if(CanTrcv_Dio_Wakeup_au8[TrcvDioId_u8] == 1) /* CanTrcv_Dio_Wakeup_au8 is set in CanTrcv_ChangeModeFunction1 */
    {
        if(STD_LOW == (Dio_ReadChannel(CANTRCV_DIO_DIOARRAY_AST[CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].WakePinPos].Pin)
                       ^ (CANTRCV_DIO_DIOARRAY_AST[CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].WakePinPos].Invert)))
        {
            CanTrcv_Dio_WakeupReason_au8[TrcvDioId_u8] = CANTRCV_WU_BY_PIN;
        }
        else
        {
            CanTrcv_Dio_WakeupReason_au8[TrcvDioId_u8] = CANTRCV_WU_BY_BUS;
        }
    }
    return;
#else
    (void) (TrcvDioId_u8);    /* CANTRCV_PRV_PARAM_UNUSED */
# endif
}
#endif

/**
 ***************************************************************************************************
 * \CanTrcv_ChangeModeFunction4
 * This function reads Wakeupsignalisation Pin and sets wakeup state PWR on
 *
 *
 *
 * \param   uint8                       TrcvDioId_u8
 * \arg     TrcvDioId_u8                identifies Transceiver to which the API has to be applied
 *                                      Value points to table CanTrcv_SetModeStructChain
 * \return     -   :                    -
 *
 * \see
 * \note    Function is called after TJA1040/TJA1041/.. is in PWON/ListenOnlyMode and reads out PWR-Flag on WakePin.
 *          It read Wakeup-Pin as it displays  PWR-ON wake-up state.
 *          Wakeup flag is set and can be read out. Wakeup flag is cleared in normal mode
 ***************************************************************************************************
 */
#if (CANTRCV_CHANGE_MODE_FUNCTION4_USED == STD_ON)
void CanTrcv_ChangeModeFunction4(uint8 TrcvDioId_u8)
{
    /* Read WakePin from Transceiver before normal mode and store value as it is cleared in normal mode */
# if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON)
    if(STD_LOW == (Dio_ReadChannel(CANTRCV_DIO_DIOARRAY_AST[CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].WakePinPos].Pin)
                    ^ CANTRCV_DIO_DIOARRAY_AST[CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].WakePinPos].Invert))
    {
        CanTrcv_Dio_WakeupReason_au8[TrcvDioId_u8] = CANTRCV_WU_POWER_ON; /* 0: no wakeup; 1=wakeup detected */
    }
    return;
#else
    (void) (TrcvDioId_u8);    /* CANTRCV_PRV_PARAM_UNUSED */
# endif
}
#endif

/**
 ***************************************************************************************************
 * \CanTrcv_CheckModePropagation_Dio
 * This function checks Latest mode with the curent mmode of Transceiver.
 * If latest requested mode is not matching with the current mode then function will report DEM Error
 *
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                identifies Transceiver to which the API has to be applied
 *
 * \return     -   :                    -
 *
 * \see
 * \note
 *
 ***************************************************************************************************
 */
/* HIS METRIC v(G) VIOLATION IN CanTrcv_CheckModePropagation_Dio: Decision used for the function is 12,
   This is required for various validation checks. The way of reporting Dem as a separate function can reduce His-metrics.*/
#if (CANTRCV_MODE_PROPOGATION_REPORTING_DIO_BASED == STD_ON)
void CanTrcv_CheckModePropagation_Dio(uint8 Transceiver)
{
    /*Get the current mode of Transceiver by reading DIO Pin level*/
    uint8 TrcvDioId_u8;
    CanTrcv_TrcvModeType CanTrcv_CurrentMode_Dio = CANTRCV_TRCVMODE_NORMAL;     /* Default value on error */

    TrcvDioId_u8 = CANTRCV_DIO_GETCHANNELID_AU8[Transceiver];   /* Get relevant Dio Transceiver Id */

    /*If the previous requested state is sleep then Propogation of mode change may be invalid as
     * Transciver may autamatically transit to standby mode on reception of wakeup pusle
     * and this transition is valid */
    CanTrcv_GetTransceiverMode_Dio(TrcvDioId_u8, &CanTrcv_CurrentMode_Dio);     /*Get the current mode of Transceiver by reading DIO Pin level*/
    if(CanTrcv_Dio_Mode_au8[TrcvDioId_u8] != CANTRCV_TRCVMODE_SLEEP)
    {
        if(CanTrcv_Dio_Mode_au8[TrcvDioId_u8] != CanTrcv_CurrentMode_Dio)
        {
            /*Report Dem Fail condition*/
            CAN_TRCV_DEM_REPORTERRORSTATUS(CANTRCV_DIO_PROPDEM_ST[TrcvDioId_u8].EventId, DEM_EVENT_STATUS_PREFAILED);
        }
        else
        {
            /*Report Dem Pass condition*/
            CAN_TRCV_DEM_REPORTERRORSTATUS(CANTRCV_DIO_PROPDEM_ST[TrcvDioId_u8].EventId, DEM_EVENT_STATUS_PREPASSED);
        }
    }
    else
    {
        if(CanTrcv_CurrentMode_Dio == CANTRCV_TRCVMODE_NORMAL)
        {
            /*Report Dem Fail condition*/
            CAN_TRCV_DEM_REPORTERRORSTATUS(CANTRCV_DIO_PROPDEM_ST[TrcvDioId_u8].EventId, DEM_EVENT_STATUS_PREFAILED);
        }
        else
        {
            /*Report Dem Pass condition*/
            CAN_TRCV_DEM_REPORTERRORSTATUS(CANTRCV_DIO_PROPDEM_ST[TrcvDioId_u8].EventId, DEM_EVENT_STATUS_PREPASSED);
        }

    }
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * cyclic function of transceiver driver
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note   This function can also directly called from startup HW-tests where Can-Stack is initialized but Os is not running.
 *         At this time SPI often runs in sync-Mode.  On any changes to this function this usecase shall be condsidered
 ***************************************************************************************************
 */
/* BSW-9419 */
#if ((CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON) || ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON ) || ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON ))
void CanTrcv_MainFunction(void )
{
    uint8 index_u8;

    // Check init-state of Trcv-HW
    if(CanTrcv_Prv_InitState_b == TRUE)
    {
        for(index_u8 = 0; index_u8 < CANTRCV_CFG_NUMBER_OF_CANTRCV; index_u8++)
        {
#if CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON
            // The wakeup is checked but nothing will be done with result
            (void)CanTrcv_CheckWakeup((uint8)index_u8);
#endif
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
            if(CANTRCV_TRCVTYPE[index_u8] == CANTRCV_TRCVTYPE_TJA1145)
            {
                (void)CanTrcv_MainFunctionTja1145(index_u8);
            }
/* BSW-9419 */ /* [$DD_BSWCODE 28673] */
#endif // CANTRCV_CFG_SPI_TJA1145_USED == STD_ON

#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
            if(CANTRCV_TRCVTYPE[index_u8] == CANTRCV_TRCVTYPE_TLE9255)
            {
                (void)CanTrcv_MainFunctionTle9255(index_u8);
            }
/* END BSW-9419 */
#endif // CANTRCV_CFG_SPI_TLE9255_USED == STD_ON

#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
/*Reporting of Dem error in case of unexpected mode transistion*/
#if (CANTRCV_MODE_PROPOGATION_REPORTING_DIO_BASED == STD_ON)
            if(CANTRCV_TRCVTYPE[index_u8] == CANTRCV_TRCVTYPE_DEFAULT)
            {
                CanTrcv_CheckModePropagation_Dio(index_u8);
            }
#endif
#endif // CANTRCV_CFG_DIO_DEFAULT == STD_ON
/* BSW-15603 */ /* [$DD_BSWCODE 37516] */
#if ((CANTRCV_CFG_CDD_USED == STD_ON)||(CANTRCV_CDD_SPI_CONFIGURED == STD_ON))
            if(CANTRCV_TRCVTYPE[index_u8] == CANTRCV_TRCVTYPE_CDD)
            {
                CanTrcvMainFunction_CDD(index_u8);
            }

#endif

        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_UNINIT)
    }

}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * cyclic function of transceiver driver for Cdd
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note   This function can also directly called from startup HW-tests where Can-Stack is initialized but Os is not running.
 *         At this time SPI often runs in sync-Mode.  On any changes to this function this usecase shall be condsidered
 ***************************************************************************************************
 */

/* HIS METRIC LEVEL,v(G) VIOLATION IN CanTrcvMainFunction_CDD: Decision used for the function is 14,
   This is required for various validation checks. The way of reporting Dem as a separate function can reduce His-metrics.*/
/* BSW-15603 */
/* [$DD_BSWCODE 37517] */
#if ((CANTRCV_CFG_CDD_USED == STD_ON)||(CANTRCV_CDD_SPI_CONFIGURED == STD_ON))
void CanTrcvMainFunction_CDD(uint8 Transceiver)
{    
    /*Add entry point for main function*/
    CanTrcvMainFunction_CDD_Integration( Transceiver);
/*Reporting of Dem error in case of unexpected mode transistion*/
#if (CANTRCV_MODE_PROPOGATION_REPORTING_CDD_BASED == STD_ON)
    if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_CDD)
    {
        CanTrcv_CheckModePropagation_Cdd(Transceiver);
    }
#endif
}
#endif
/* END BSW-15603 */

/**
 ***************************************************************************************************
 * \moduledescription
 * cyclic function of transceiver driver for TJA1145
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note   This function can also directly called from startup HW-tests where Can-Stack is initialized but Os is not running.
 *         At this time SPI often runs in sync-Mode.  On any changes to this function this usecase shall be condsidered
 ***************************************************************************************************
 */
/* HIS METRIC LEVEL,v(G) VIOLATION IN CanTrcv_MainFunctionTja1145: Nesting of If is 5 due to the validation of SPI register and update the code. If the function is splitted to suppress the HIS then readeabilty of code will be reduced,
   If the function is splitted to suppress the HIS then readeabilty of code will be reduced */
#if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )
Std_ReturnType CanTrcv_MainFunctionTja1145(uint8 Transceiver)
{
    /*  SPI_SEQ_OK,               !< Sequence transfer complete. */
    /*  SPI_SEQ_PENDING,          !< Sequence transfer pending. */
    /*  SPI_SEQ_FAILED,           !< Sequence transfer has failed.*/
    /*  SPI_SEQ_CANCELED,         !< Sequence was canceled. */
    /*  SPI_SEQ_CANCEL_PENDING    !< Cancel was requested but not yet executed.*/

    Std_ReturnType RetVal_o = E_NOT_OK;
    uint16  start_u16;
    uint16  size_u16;
    uint16  SpiPos_u16;
    uint16  n_u16;
    uint8   TrcvNo_u8;
    boolean ChangeFlag_b = FALSE;
    uint8  Trcv_WakePinReg = 1;
    Spi_SequenceType        sequence;
    Spi_SeqResultType       Spi_SeqResult;

    if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
    {
        // Get relevant configuration parameter
        SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
        sequence    = CANTRCV_SPIARRAY_AST[SpiPos_u16].Sequence;
        TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
        Trcv_WakePinReg = CANTRCV_SPIARRAY_AST[SpiPos_u16].WakePinRegCheck;

        Spi_SeqResult = Qspi_CddRxDone(QSPI_DMA_CFG_1);

        // Check for Correct SPI
        if (Spi_SeqResult == SPI_SEQ_OK)
        {
            /*Set event buffer to init value*/
            CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] = (uint16)CANTRCV_CFG_TJA1145_SPI_REG63_INIT;
           // Check if initdata are written/read in last spi-transfer
           if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_INIT_MASK) != 0u)
           {
               // Set global flag that next SPI data are not initdata any more
               // Only for first call of main function. In that function Spi was directly filled in CanTrcv_Init_TJA1145 with Rom-Config data
               // in CanTrcv_Init_TJA1145 CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao is also filled with control registers
               // Change state and clear INIT-Flag
               CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &=(uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_INIT_MASK);
               // Possible extension here (not requested yet): Check Init Configuration if required.
           }
           else // if read-registers are valid with control registers:
           {    //   Check for wakeup and store in global variables
               CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_INITDATA_MASK); // Rx-Data are valid now

               if(((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] & CANTRCV_CFG_TJA1145_SPI_CW_MASK)   != 0u) || // Reg 0x63: CW in Transceiver event status
                  (((Trcv_WakePinReg == 1u) && ((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG4B] & CANTRCV_CFG_TJA1145_SPI_WPVS_MASK) != 0u))))   // Reg 0x4B: WAKE pin status
               {
                   CanTrcv_Prv_TJA1145_Wakeup_au8[TrcvNo_u8] = 1;   /* 0 = no wakeup; 1 = wakeup detected */
               }
               // Only check PON-Wakeup if configured at PN
#if (1 == CANNM_ENABLE)
#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
                if( ((CANTRCV_PNTRCV_ST[TrcvNo_u8].PnEnabled == FALSE) || (CANTRCV_PNTRCV_ST[TrcvNo_u8].PowerOnFlag == TRUE)) &&
                  ((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG61] & CANTRCV_CFG_TJA1145_SPI_PO_MASK)   != 0u))   // Reg 0x4B: Power on status
                {
                   CanTrcv_Prv_TJA1145_Wakeup_au8[TrcvNo_u8] = 1;   /* 0 = no wakeup; 1 = wakeup detected */
                }
# endif
#endif

               CanTrcv_MainFunctionPreparation(TrcvNo_u8,  Transceiver);
            }
# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
            /* Check if Reinitialisation is not required */
            if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_SET_REINIT_MASK) == 0u)
            {
# endif
                CanTrcv_MainFunctioCheckWake(TrcvNo_u8, &ChangeFlag_b, Trcv_WakePinReg);
                CanTrcv_MainFunctionModeChange(TrcvNo_u8, Transceiver, &ChangeFlag_b, Trcv_WakePinReg);

                // Check if any above line needs an update of registers in trcv
                if (ChangeFlag_b == FALSE)
                {
                   // Nothing changed -> nothing to write
                   // Set all "ReadOnlybits"
                   for(n_u16 = 0; n_u16 < CANTRCV_CFG_TJA1145_SPI_CTRL_RW_MAX; n_u16++)
                   {
                       CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][n_u16] |= (uint16)CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
                   }
                }
                else
                {
                   // open lock bits of trcv
                   CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG0A_A] &= (uint16)~CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
                   CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG0A_E] &= (uint16)~CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
                }

                // Get relevant SPI-configuration data
                SpiPos_u16 = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
                start_u16 =  CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos;
                size_u16  =  CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlEndPos - start_u16;

                // Prepare spi access
# if CANTRCV_SPI_EXTERNBUFFER == STD_ON
                /* MR12 RULE 11.3 VIOLATION: The buffer-parametertypes are given by Autosar as uint8. But HW works with uint16. */
                Qspi_CddTxRx(QSPI_DMA_CFG_1, 
                           (uint32*)&CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[0][0],     // points to RAM-Tx buffer
                           (uint32*)&CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[0][0],     // points to RAM-Rx buffer
                           (uint8)size_u16 );
                RetVal_o = E_OK;
# else
                RetVal_o = Spi_ReadIB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,  &CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][0]);

                if( RetVal_o == E_OK)
                {
                   RetVal_o = Spi_WriteIB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel, &CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][0]);

                   if(RetVal_o != E_OK)
                   {
                       CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
                   }
                }
                else
                {
                   CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
                }

# endif
                if( RetVal_o == E_OK)
                {
                }
                else
                {
                   CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
                }
# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
            }
            else
            {
                /* Change state and clear ReInit-Flag */
                CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_SET_REINIT_MASK);
            }
# endif
        }
        else   // Spi_SeqResult == SPI_SEQ_OK
        {
           // SPI Communication fails
           CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_PARAM_TRCV_WRONG_CONF)
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTJA1145
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note
 ***************************************************************************************************
 */
#if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )
void CanTrcv_MainFunctionPreparation(uint8 TrcvNo_u8, uint8 Transceiver)
{
    CanTrcv_TrcvModeType    StateReadBack;

# if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_ASYNC)
#  if(CANTRCV_ECUM_USED == STD_ON)
    CanTrcv_MainFunctionCheckWakeup(TrcvNo_u8, Transceiver);
#  endif
# endif
# if (CANTRCV_CFG_TJA1145_DEM_ENABLE == STD_ON)
    CanTrcv_MainFunctionDemHandling(TrcvNo_u8);
# endif
    // Check if CanIf_ClearTrcvWufFlagIndication should be called
    //  This is done if the request CANTRCV_TJA1145_SPI_STATE_CLEAR_WUP_MASK is already done and correct sent
    //  (see note1 in AR SWS4.0.3 chapter 9.4)
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
    CanTrcv_MainFunctionHwPnSupport(TrcvNo_u8);
# endif
    CanTrcv_MainFunctionCheckState(TrcvNo_u8, &StateReadBack);

# if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR != CANTRCV_INDICATION_IMMEDIATELY)
    CanTrcv_MainFunctionRbIndicationBehaviour(TrcvNo_u8, StateReadBack, Transceiver);
# endif
    // Check if read state if different than expected state.
    CanTrcv_MainFunctionCheckForState(TrcvNo_u8, StateReadBack, Transceiver);

}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTJA1145
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note
 ***************************************************************************************************
 */
// Check if requested state should be written to trcv
#if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )
void CanTrcv_MainFunctionModeChange(uint8 TrcvNo_u8, uint8 Transceiver, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8)
{

    uint16 SpiPos_u16;
    // Get relevant configuration parameter
    SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];

    // Mode Change requested?
    if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_SETOPMODE) != 0u)
    {
        // Clear request and set registers for requested state
        CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_SETOPMODE);

        switch (CanTrcv_Prv_TJA1145_ReqState[TrcvNo_u8])
        {
            case CANTRCV_TRCVMODE_SLEEP:
            {
                // clear outstanding error and statusbits
                // if no wakeup is configured (CAN or PIN, Reg 23,4C) Trcv goes into Standby Mode (AppHint P20)
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG60] = (uint16)0xC00D;   // write 1 = clear bits for Reg60
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG61] = (uint16)0xC216;   // write 1 = clear bits for Reg61
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] = (uint16)0xC633;   // write 1 = clear bits for Reg63
                if(Trcv_WakeReg_u8 == 1u)
                {
                    CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG64] = (uint16)0xC803;   // write 1 = clear bits for Reg64
                }

                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG01] &= (uint16)CANTRCV_CFG_TJA1145_SPI_MC_SM_AND_MASK;
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG01] |= (uint16)CANTRCV_CFG_TJA1145_SPI_MC_SM_OR_MASK;
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG20] &= (uint16)CANTRCV_CFG_TJA1145_SPI_CMC_SM_AND_MASK;
                /* MR12 RULE 2.2 VIOLATION: This statment is redundant but is kept to have same structure of writing bits (independent of the value mask)*/
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG20] |= (uint16)CANTRCV_CFG_TJA1145_SPI_CMC_SM_OR_MASK;
            }
            break;
            case CANTRCV_TRCVMODE_STANDBY:
            {
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG01] &= (uint16)CANTRCV_CFG_TJA1145_SPI_MC_SBM_AND_MASK;
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG01] |= (uint16)CANTRCV_CFG_TJA1145_SPI_MC_SBM_OR_MASK;
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG20] &= (uint16)CANTRCV_CFG_TJA1145_SPI_CMC_SBM_AND_MASK;
                /* MR12 RULE 2.2 VIOLATION: This statment is redundant but is kept to have same structure of writing bits (independent of the value mask)*/
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG20] |= (uint16)CANTRCV_CFG_TJA1145_SPI_CMC_SBM_OR_MASK;
                /* Clear PNFDE bit to allow wakeup in standby mode  (see Defect 122100)*/
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] |= (uint16)0xC620;   // write 1 = clear bits for Reg63
            }
            break;
            default:    // case CANTRCV_TRCVMODE_NORMAL: By design (enum type) no different state possible
            {
                // Entering CAN Active is possible only while the TXD pin is HIGH (ApplHint P26)
                // During CAN Active, a LOW level on pin TXD that persists longer than tto(dom)TXD will disable the transmitter, releasing the bus lines to recessive state
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG01] &= (uint16)CANTRCV_CFG_TJA1145_SPI_MC_NM_AND_MASK;
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG01] |= (uint16)CANTRCV_CFG_TJA1145_SPI_MC_NM_OR_MASK;
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG20] &= (uint16)CANTRCV_CFG_TJA1145_SPI_CMC_NM_AND_MASK;
                CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG20] |= (uint16)CANTRCV_SPIARRAY_AST[SpiPos_u16].SpecReg1;
            }
            break;
        }
        *ChangeFlag_b = TRUE;
    }
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTJA1145
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 ***************************************************************************************************
 */
#if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )
void CanTrcv_MainFunctioCheckWake(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8)
{
    // CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao is set in init-function. So it can be written even in first function-call
    // Check if wakeup should be cleared
    if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_CLEAR_WUP_MASK) != 0u)  // Check if request is set in CanTrcv_SetWakeupMode_TJA1145
    {
        // Write register values in mirror RAM to clear wakeup
        CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_CLEAR_WUP_MASK);
        // Clear WakePinEvent
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG60] |= CANTRCV_CFG_TJA1145_SPI_WPE_MASK;
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG60] &= (uint16)~CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
        // Clear PowerOn event
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG61] |= CANTRCV_CFG_TJA1145_SPI_PO_MASK;
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG61] &= (uint16)~CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
        // Clear CAN wake-up event detected   CW and   PNFDE to allow wakeups in standby mode
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] |= (CANTRCV_CFG_TJA1145_SPI_CW_MASK + CANTRCV_CFG_TJA1145_SPI_PNFDE_MASK);
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] &= (uint16)~CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
        // Clear WAKE pin event status register WPF + WPR
        if(Trcv_WakeReg_u8 == 1u)
        {
            CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG64] |= CANTRCV_CFG_TJA1145_SPI_WPR_MASK + CANTRCV_CFG_TJA1145_SPI_WPF_MASK;
            CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG64] &= (uint16)~CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
        }
        // Clear stored wakeup
        CanTrcv_Prv_TJA1145_Wakeup_au8[TrcvNo_u8] = 0; /* 0: no wakeup; 1=wakeup detected */
        *ChangeFlag_b = TRUE;
    }

    // Check if timoutflag should be cleard
    if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_CLEAR_TIMEOUT_MASK) != 0u) // Check if request is set in CanTrcv_ClearTrcvTimeoutFlag
    {
        // Write register values in mirror RAM to clear timout flag
        CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_CLEAR_TIMEOUT_MASK);
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] |= CANTRCV_CFG_TJA1145_SPI_CBS_MASK;
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] &= (uint16)~CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
        *ChangeFlag_b = TRUE;
    }

    // check if PNActivationState should be cleared
    if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_CLEAR_PNACTIVATE_MASK) != 0u)   // Check if request is set to clear CanTrcv_SetPNActivationState
    {   // Write register values in mirror RAM to clear PNActivationState
        // CPNC =0 = disable CAN selective wake-up
        CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_CLEAR_PNACTIVATE_MASK);
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG20]   &=  (uint16)~(CANTRCV_CFG_TJA1145_READ_ONLY_MASK + CANTRCV_CFG_TJA1145_SPI_CPNC_MASK);
        *ChangeFlag_b = TRUE;
    }

    // Check if request is set in CanTrcv_SetPNActivationState
    if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_SET_PNACTIVATE_MASK) != 0u)
    {
        // Write register values in mirror RAM to set PNActivationState
        CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_SET_PNACTIVATE_MASK);
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG20]   |=  CANTRCV_CFG_TJA1145_SPI_CPNC_MASK;
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG20]   &=  (uint16)~CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
        *ChangeFlag_b = TRUE;
    }

    if((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] & CANTRCV_CFG_TJA1145_SPI_PNFDE_MASK) != 0u )
    {
        /*  Clear Error bit PNFDE cyclically if any error is set */
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] |= CANTRCV_CFG_TJA1145_SPI_PNFDE_MASK;
        CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG63] &= (uint16)~CANTRCV_CFG_TJA1145_READ_ONLY_MASK;
        *ChangeFlag_b = TRUE;
    }
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTJA1145
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 ***************************************************************************************************
 */
/* HIS METRIC LEVEL,v(G) VIOLATION IN CanTrcv_MainFunctionCheckForState: This function involes the checking of error condition
 * Further spliting into small function destroy the read ability of function  */
#if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )
void CanTrcv_MainFunctionCheckForState(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver)
{
    if(StateReadBack != CanTrcv_Prv_TJA1145_ReqState[TrcvNo_u8])
    {
# if (CANTRCV_MODE_PROPOGATION_REPORTING_SPI_BASED == STD_ON)
        /*If the requested state is sleep then Trcv may trasit to standby on reception of wakeup hence
         * no dem reporting if previous state is sleep */
        if(CanTrcv_Prv_TJA1145_ReqState[TrcvNo_u8] != CANTRCV_TRCVMODE_SLEEP )
        {
            /*If mode propogation is enabled then report dem*/
            CAN_TRCV_DEM_REPORTERRORSTATUS( CanTrcv_PropDem_st[TrcvNo_u8].EventId, DEM_EVENT_STATUS_PREFAILED);
        }
        else
        {
            if(StateReadBack == CANTRCV_TRCVMODE_NORMAL)
            {
                /*If mode propogation is enabled then report dem*/
                CAN_TRCV_DEM_REPORTERRORSTATUS( CanTrcv_PropDem_st[TrcvNo_u8].EventId, DEM_EVENT_STATUS_PREFAILED);
            }
        }
# endif

# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
        /* Check if Trcv is forced to sleep and if undervoltage is detected at Vcc/Vio or Over temperature warning is detected by masking FSMS and OTW bits respectively */
        if((StateReadBack == CANTRCV_TRCVMODE_SLEEP) && (((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG61] & CANTRCV_CFG_TJA1145_SPI_OTW_MASK)  != 0u) ||
                ((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG03] & CANTRCV_CFG_TJA1145_SPI_FSMS_MASK) != 0u)))
        {
            /* Set the ReInit flag, Init mask and Init Data mask  */
            CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] = CANTRCV_TJA1145_SPI_STATE_INIT_MASK + CANTRCV_TJA1145_SPI_STATE_INITDATA_MASK + CANTRCV_TJA1145_SPI_STATE_SET_REINIT_MASK;
            CanTrcv_Rb_ReInit_TJA1145(Transceiver);
        }
# else
        (void) Transceiver; /* To avoid unused parameter-compiler-warning. If CANTRCV_RB_UNDERVOLTAGE_RECOVERY is not configured, the variable is not used */
# endif
    }
    else
    {
# if (CANTRCV_MODE_PROPOGATION_REPORTING_SPI_BASED == STD_ON)
        CAN_TRCV_DEM_REPORTERRORSTATUS( CanTrcv_PropDem_st[TrcvNo_u8].EventId, DEM_EVENT_STATUS_PREPASSED);
# endif
    }
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * This function reinitializes the Can Transceiver and puts it back to its requested state
 * when an undervoltage at Vcc/Vio or Overtemperature is detected
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return  void
 * \see
 * \note
 ***************************************************************************************************
 */
#if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )
# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
static void CanTrcv_Rb_ReInit_TJA1145( uint8 Transceiver)
{
    Std_ReturnType Ret_Spi = E_OK;
    uint8  TrcvNo_u8;
    uint16  SpiPos_u16;
    uint16  start_u16;
    uint16  size_u16;
    Spi_SequenceType  sequence;
    uint8  ReInitMCIndex = CANTRCV_CFG_TJA1145_SPI_REINIT_MC_INDEX;
    uint8  Trcv_WakePinReg = 1u;

    /* Get relevant configuration parameter */
    SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
    TrcvNo_u8    = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
    start_u16   = CANTRCV_SPIARRAY_AST[SpiPos_u16].InitStartPos;
    size_u16    = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos - start_u16;
    sequence    = CANTRCV_SPIARRAY_AST[SpiPos_u16].Sequence;
    Trcv_WakePinReg = CANTRCV_SPIARRAY_AST[SpiPos_u16].WakePinRegCheck;

    /* Check if ATA6572 Trcv is configured and update the ReInit Mode Control Index accordingly */
    if( Trcv_WakePinReg != 1u)
    {
        ReInitMCIndex = CANTRCV_CFG_ATA6572_SPI_REINIT_MC_INDEX;
    }

    /* Setting the mode of the Transceiver to its previous requested state */
    switch (CanTrcv_Prv_TJA1145_ReqState[TrcvNo_u8])
    {
        case CANTRCV_TRCVMODE_SLEEP:
        {
            CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] &= CANTRCV_CFG_TJA1145_SPI_MC_SM_AND_MASK;
            CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] |= CANTRCV_CFG_TJA1145_SPI_MC_SM_OR_MASK;
        }
        break;
        case CANTRCV_TRCVMODE_STANDBY:
        {
            CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] &= CANTRCV_CFG_TJA1145_SPI_MC_SBM_AND_MASK;
            CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] |= CANTRCV_CFG_TJA1145_SPI_MC_SBM_OR_MASK;
        }
        break;
        default:
        {
            CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] &= CANTRCV_CFG_TJA1145_SPI_MC_NM_AND_MASK;
            CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] |= CANTRCV_CFG_TJA1145_SPI_MC_NM_OR_MASK;
        }
        break;
    }

     /* Write ReInitdata in SPI-Buffer */
#if CANTRCV_SPI_EXTERNBUFFER == STD_ON
    /* MR12 RULE 11.3 VIOLATION: The buffer-parametertypes are given by Autosar as uint8. But HW works with uint16. */
    if(E_OK != Spi_RbSetupEB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,      // generated by SPI
                (const uint8*)&CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[TrcvNo_u8][0],         // points to RAM-ReInit Tx buffer
                (uint8*)&CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao[TrcvNo_u8][0],     // points to RAM-Init Rx buffer
                size_u16 ))
    {
        Ret_Spi = E_NOT_OK;
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
    }

#else
    if(E_OK != Spi_WriteIB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,
                &CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[TrcvNo_u8][0]))     // points to RAM-ReInit Tx buffer
    {
        Ret_Spi = E_NOT_OK;
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
    }
#endif
    if (Ret_Spi == E_OK)
    {
        if(CANTRCV_SPI_TRANSMIT(sequence ) != E_OK)
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
        }
    }
}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
* Function to reduce HIS in CanTrcv_MainFunctionTJA1145
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
# if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR != CANTRCV_INDICATION_IMMEDIATELY)
void CanTrcv_MainFunctionRbIndicationBehaviour(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver)
{
    // Check if Mode-indication function should be called
    // Send async mode indication if read back state is same as requested state
    // Com-Stack does not request sleep state, so it is no problem if this indication is never sent
    if(((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_MODE_INDICATION_MASK) != 0u) &&
       (StateReadBack == CanTrcv_Prv_TJA1145_ReqState[TrcvNo_u8]))
    {
       CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_MODE_INDICATION_MASK);
       CanIf_TrcvModeIndication((uint8)Transceiver, StateReadBack);
    }
}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTJA1145
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
void CanTrcv_MainFunctionHwPnSupport(uint8 TrcvNo_u8)
{
    if(((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK) != 0u) &&
      ((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_CLEAR_WUP_MASK) == 0u))
    {
       // Clear global request-flag
       CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TJA1145_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK);
       // call indication function
#if (0 == CANNM_ENABLE)
       CanIf_ClearTrcvWufFlagIndication(TrcvNo_u8);
#endif
    }
}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTJA1145
*
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
# if (CANTRCV_CFG_TJA1145_DEM_ENABLE == STD_ON)
void CanTrcv_MainFunctionDemHandling(uint8 TrcvNo_u8)
{
    // Check for correct communication with Trcv:
    // in normal  : Reg  61 and 01 should not all FF or Command RegAdr should not read back as 0
    if(((CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][2] &
        CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][4] & 0x0Fu) == 0x0Fu) ||
      (CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][0] == 0x00 ) )
    {
       CAN_TRCV_DEM_REPORTERRORSTATUS( CANTRCV_DEM_ST[TrcvNo_u8].EventId, DEM_EVENT_STATUS_PREFAILED);
    }
    else
    {
       CAN_TRCV_DEM_REPORTERRORSTATUS( CANTRCV_DEM_ST[TrcvNo_u8].EventId, DEM_EVENT_STATUS_PREPASSED);
    }
}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Reads the transceiver diagnostic status periodically and sets product/development accordingly
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
# if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_ASYNC)
#  if(CANTRCV_ECUM_USED == STD_ON)
void CanTrcv_MainFunctionCheckWakeup(uint8 TrcvNo_u8, uint8 Transceiver)
{
    if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_CHECK_WAKEUP_CHECK) != 0u)
    {
       // Clear status bit
       CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &= ~CANTRCV_TJA1145_SPI_STATE_CHECK_WAKEUP_CHECK;
       // Check if wakeupsource is configured
       if(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] != 0u)
       {
           if(CanTrcv_Prv_TJA1145_Wakeup_au8[TrcvNo_u8] == 1)  // Check if wakeup detected
           {
               EcuM_SetWakeupEvent(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
           }
           EcuM_EndCheckWakeup(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
       }
    }
    // Check if an asynchron checkwakeup is requested
    if((CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] & CANTRCV_TJA1145_SPI_STATE_CHECK_WAKEUP_READ) != 0u)
    {   // Yes -> in this main cycle the registers are requested to read
       CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] &= ~CANTRCV_TJA1145_SPI_STATE_CHECK_WAKEUP_READ;
       // In next main-cycle the data are received and valid and can be evaluated
       CanTrcv_Prv_TJA1145_SpiState[TrcvNo_u8] |= CANTRCV_TJA1145_SPI_STATE_CHECK_WAKEUP_CHECK;
    }
}
#  endif
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * Reads the transceiver diagnostic status periodically and sets product/development accordingly
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 ***************************************************************************************************
 */
#if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )
void CanTrcv_MainFunctionCheckState( uint8 TrcvNo_u8, CanTrcv_TrcvModeType *StateReadBack )
{
    uint16                  RegVal01_o;
    uint16                  RegVal22_o;

    // Get Register values
    RegVal01_o  = CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG01] & CANTRCV_CFG_TJA1145_SPI_MC_AND_MASK;
    RegVal22_o  = CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TJA1145_SPI_REG22] & CANTRCV_CFG_TJA1145_SPI_CTS_MASK;

    // Change StateReadBack according register values
    if( RegVal01_o ==  CANTRCV_CFG_TJA1145_SPI_MC_NM_OR_MASK)
    {   // If in mode is on, check if there is a failure to disable the CAN-communication by checking bit CTS in Reg22
        if ( RegVal22_o != 0 )  // if transmitter is also on, than TJA1145 is really in normal mode
        {
            *StateReadBack = CANTRCV_TRCVMODE_NORMAL;
        }
        else    // There was a failure somewhere which disables transmitting. It is assumed that TRCV is is standby mode
        {
            *StateReadBack = CANTRCV_TRCVMODE_STANDBY;
        }
    }
    else if ( RegVal01_o ==  CANTRCV_CFG_TJA1145_SPI_MC_SBM_OR_MASK)
    {
        *StateReadBack = CANTRCV_TRCVMODE_STANDBY;
    }
    else if ( RegVal01_o ==  CANTRCV_CFG_TJA1145_SPI_MC_SM_OR_MASK)
    {
        *StateReadBack = CANTRCV_TRCVMODE_SLEEP;
    }
    else
    {
        /* in error case, set StateReadBack to the software requested state */
        *StateReadBack = CanTrcv_Prv_TJA1145_ReqState[TrcvNo_u8];
        CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
    }
}
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * cyclic function of transceiver driver for TLE9255
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note   This function can also directly called from startup HW-tests where Can-Stack is initialized but Os is not running.
 *         At this time SPI often runs in sync-Mode.  On any changes to this function this usecase shall be condsidered
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 28768] */
/* HIS METRIC RETURN VIOLATION IN CanTrcv_MainFunctionTle9255: Det checks are validated even when Det is turned off. Multiple returns are due to Det checks */
#if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )
Std_ReturnType CanTrcv_MainFunctionTle9255(uint8 Transceiver)
{
    /*  SPI_SEQ_OK,               !< Sequence transfer complete. */
    /*  SPI_SEQ_PENDING,          !< Sequence transfer pending. */
    /*  SPI_SEQ_FAILED,           !< Sequence transfer has failed.*/
    /*  SPI_SEQ_CANCELED,         !< Sequence was canceled. */
    /*  SPI_SEQ_CANCEL_PENDING    !< Cancel was requested but not yet executed.*/

    Std_ReturnType RetVal_o = E_NOT_OK;
    uint16  start_u16;
    uint16  size_u16;
    uint16  SpiPos_u16;
    uint16  n_u16;
    uint8   TrcvNo_u8;
    boolean ChangeFlag_b = FALSE;
    uint8  Trcv_WakePinReg = 1;
    Spi_SequenceType        sequence;
    Spi_SeqResultType       Spi_SeqResult;

    if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
    {
        // Get relevant configuration parameter
           SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
           sequence    = CANTRCV_SPIARRAY_AST[SpiPos_u16].Sequence;
           TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
        Trcv_WakePinReg = CANTRCV_SPIARRAY_AST[SpiPos_u16].WakePinRegCheck;

           Spi_SeqResult = Spi_GetSequenceResult(sequence);

           // Check for Correct SPI
           if (Spi_SeqResult == SPI_SEQ_OK)
           {
               // Check if initdata are written/read in last spi-transfer
               if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_INIT_MASK) != 0u)
               {
                   // Set global flag that next SPI data are not initdata any more
                   // Only for first call of main function. In that function Spi was directly filled in CanTrcv_Init_TLE9255 with Rom-Config data
                   // in CanTrcv_Init_TLE9255 CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao is also filled with control registers
                   // Change state and clear INIT-Flag
                   CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &=(uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_INIT_MASK);
                   // Possible extension here (not requested yet): Check Init Configuration if required.
               }
               else // if read-registers are valid with control registers:
               {    //   Check for wakeup and store in global variables
                   CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_INITDATA_MASK); // Rx-Data are valid now

                   if(((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1B] & CANTRCV_CFG_TLE9255_SPI_WUX_MASK)   != 0u) || // Reg 0x1B: WUF WUP in Transceiver event status
                      (((Trcv_WakePinReg == 1u) && ((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1B] & CANTRCV_CFG_TLE9255_SPI_LWU_MASK) != 0u))))   // Reg 0x1B: WAKE pin status
                   {
                       CanTrcv_Prv_TLE9255_Wakeup_au8[TrcvNo_u8] = 1;   /* 0 = no wakeup; 1 = wakeup detected */
                   }
                   // Only check POR-Wakeup if configured at PN
#if (CANTRCV_HW_PN_SUPPORT == STD_ON)                   
                   if( ((CANTRCV_PNTRCV_ST[TrcvNo_u8].PnEnabled == FALSE) || (CANTRCV_PNTRCV_ST[TrcvNo_u8].PowerOnFlag == TRUE)) &&
                      ((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG18] & CANTRCV_CFG_TLE9255_SPI_POR_MASK)   != 0u))   // Reg 0x18: Power on status
                   {
                       CanTrcv_Prv_TLE9255_Wakeup_au8[TrcvNo_u8] = 1;   /* 0 = no wakeup; 1 = wakeup detected */
                   }
# endif
					/* [$DD_BSWCODE 12800] */
					CanTrcv_MainFunctionPreparation_Tle9255(TrcvNo_u8,  Transceiver);
               }
# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
            /* Check if Reinitialisation is not required */
            if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_SET_REINIT_MASK) == 0u)
            {
# endif
				/* [$DD_BSWCODE 12795] */
                CanTrcv_MainFunctionCheckWake_Tle9255(TrcvNo_u8, &ChangeFlag_b, Trcv_WakePinReg);
                /* [$DD_BSWCODE 12799] */
                CanTrcv_MainFunctionModeChange_Tle9255(TrcvNo_u8, &ChangeFlag_b, Trcv_WakePinReg);

               // Check if any above line needs an update of registers in trcv
               if (ChangeFlag_b == FALSE)
               {
                   // Nothing changed -> nothing to write
                   // Set all "ReadOnlybits"
                   for(n_u16 = 0; n_u16 < CANTRCV_CFG_TLE9255_SPI_CTRL_RW_MAX; n_u16++)
                   {
                       CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][n_u16] &= (uint16)(~CANTRCV_CFG_TLE9255_WRITE_MASK);
                   }
               }

               // Get relevant SPI-configuration data
               SpiPos_u16 = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
               start_u16 =  CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos;
               size_u16  =  CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlEndPos - start_u16;

               // Prepare spi access
       #if CANTRCV_SPI_EXTERNBUFFER == STD_ON
               /* MR12 RULE 11.3 VIOLATION: The buffer-parametertypes are given by Autosar as uint8. But HW works with uint16. */
               RetVal_o = Spi_RbSetupEB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,    // generated by SPI
                           (const uint8*)&CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][0],     // points to RAM-Tx buffer
                           (uint8*)&CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][0],     // points to RAM-Rx buffer
                           size_u16 );
       #else
               RetVal_o = Spi_ReadIB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,  &CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][0]);

               if( RetVal_o == E_OK)
               {
                   RetVal_o = Spi_WriteIB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel, &CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][0]);

                   if(RetVal_o != E_OK)
                   {
                       CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
                   }
               }
               else
               {
                   CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
               }

       #endif
               if( RetVal_o == E_OK)
               {
                   RetVal_o = CANTRCV_SPI_TRANSMIT(sequence );

                   if(RetVal_o != E_OK)
                   {
                       CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
                   }
               }
               else
               {
                   CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
               }
# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
           }
           else   // Spi_SeqResult == SPI_SEQ_OK
           {
                /* Change state and clear ReInit-Flag */
                CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_SET_REINIT_MASK);
            }
# endif
           }
           else   // Spi_SeqResult == SPI_SEQ_OK
           {
               // SPI Communication fails
               CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_PARAM_TRCV_WRONG_CONF)
           }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_INVALID_TRANSCEIVER)
    }

    return RetVal_o;
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTLE9255
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note
 * BSW-9419
 ***************************************************************************************************
 */
 /* [$DD_BSWCODE 12800] */
#if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )
void CanTrcv_MainFunctionPreparation_Tle9255(uint8 TrcvNo_u8, uint8 Transceiver)
{
    CanTrcv_TrcvModeType    StateReadBack;

# if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_ASYNC)
#  if(CANTRCV_ECUM_USED == STD_ON)
	/* [$DD_BSWCODE 12796] */
    CanTrcv_MainFunctionCheckWakeup_Tle9255(TrcvNo_u8, Transceiver);
#  endif
# endif
# if (CANTRCV_CFG_TLE9255_DEM_ENABLE == STD_ON)
	/* [$DD_BSWCODE 12797] */
    CanTrcv_MainFunctionDemHandling_Tle9255(TrcvNo_u8);
# endif
    // Check if CanIf_ClearTrcvWufFlagIndication should be called
    //  This is done if the request CANTRCV_TLE9255_SPI_STATE_CLEAR_WUP_MASK is already done and correct sent
    //  (see note1 in AR SWS4.0.3 chapter 9.4)
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
	/* [$DD_BSWCODE 12798] */
    CanTrcv_MainFunctionHwPnSupport_Tle9255(TrcvNo_u8);
# endif
	/* [$DD_BSWCODE 12794] */
    CanTrcv_MainFunctionCheckState_Tle9255(TrcvNo_u8, &StateReadBack);

# if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR != CANTRCV_INDICATION_IMMEDIATELY)
	/* [$DD_BSWCODE 12801] */
    CanTrcv_MainFunctionRbIndicationBehaviour_Tle9255(TrcvNo_u8, StateReadBack, Transceiver);
# endif
	/* [$DD_BSWCODE 28770] */
    // Check if read state if different than expected state.
    CanTrcv_MainFunctionCheckForState_Tle9255(TrcvNo_u8, StateReadBack, Transceiver);

}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTLE9255
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12799] */
// Check if requested state should be written to trcv
#if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )
void CanTrcv_MainFunctionModeChange_Tle9255(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8)
{
    // Mode Change requested?
    if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_SETOPMODE) != 0u)
    {
        // Clear request and set registers for requested state
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_SETOPMODE);

        switch (CanTrcv_Prv_TLE9255_ReqState[TrcvNo_u8])
        {
            case CANTRCV_TRCVMODE_SLEEP:
            {
                // clear outstanding error and statusbits
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG18] |= (uint16)(0xFFu+CANTRCV_CFG_TLE9255_WRITE_MASK);   // write 1 = clear bits for Reg18
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG19] |= (uint16)(0xFFu+CANTRCV_CFG_TLE9255_WRITE_MASK);   // write 1 = clear bits for Reg19
                if(Trcv_WakeReg_u8 == 1u)
                {		
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1B] |= (uint16)(0xFFu+CANTRCV_CFG_TLE9255_WRITE_MASK);   // write 1 = clear bits for Reg1B
		        }
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1C] |= (uint16)(0xFFu+CANTRCV_CFG_TLE9255_WRITE_MASK);   // write 1 = clear bits for Reg1C

                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] &= (uint16)CANTRCV_CFG_TLE9255_SPI_MC_SM_AND_MASK;
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] |= (uint16)CANTRCV_CFG_TLE9255_SPI_MC_SM_OR_MASK;
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] |= (uint16)CANTRCV_CFG_TLE9255_WRITE_MASK;
            }
            break;
            case CANTRCV_TRCVMODE_STANDBY:
            {
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] &= (uint16)CANTRCV_CFG_TLE9255_SPI_MC_SBM_AND_MASK;
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] |= (uint16)CANTRCV_CFG_TLE9255_SPI_MC_SBM_OR_MASK;
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] |= (uint16)CANTRCV_CFG_TLE9255_WRITE_MASK;
            }
            break;
            default:    // case CANTRCV_TRCVMODE_NORMAL: By design (enum type) no different state possible
            {
                // Entering CAN Active is possible only while the TXD pin is HIGH (ApplHint P26)
                // During CAN Active, a LOW level on pin TXD that persists longer than tto(dom)TXD will disable the transmitter, releasing the bus lines to recessive state
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] &= (uint16)CANTRCV_CFG_TLE9255_SPI_MC_NM_AND_MASK;
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] |= (uint16)CANTRCV_CFG_TLE9255_SPI_MC_NM_OR_MASK;
                CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] |= (uint16)CANTRCV_CFG_TLE9255_WRITE_MASK;
            }
            break;
        }
        *ChangeFlag_b = TRUE;
    }
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTLE9255
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12795] */
#if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )
void CanTrcv_MainFunctionCheckWake_Tle9255(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8)
{
    // CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao is set in init-function. So it can be written even in first function-call
    // Check if wakeup should be cleared
    if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_CLEAR_WUP_MASK) != 0u)  // Check if request is set in CanTrcv_SetWakeupMode_TLE9255
    {
        // Write register values in mirror RAM to clear wakeup
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_CLEAR_WUP_MASK);
        // Clear WakePinEvent and CAN wake-up event detected   CW
        if(Trcv_WakeReg_u8 == 1u)
        {	
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1B] |= CANTRCV_CFG_TLE9255_SPI_LWU_MASK + CANTRCV_CFG_TLE9255_SPI_WUX_MASK;
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1B] |= (uint16)CANTRCV_CFG_TLE9255_WRITE_MASK;
        }
	// Clear PowerOn event
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG18] |= CANTRCV_CFG_TLE9255_SPI_POR_MASK;
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG18] |= (uint16)CANTRCV_CFG_TLE9255_WRITE_MASK;
        // Clear stored wakeup
        CanTrcv_Prv_TLE9255_Wakeup_au8[TrcvNo_u8] = 0; /* 0: no wakeup; 1=wakeup detected */
        *ChangeFlag_b = TRUE;
    }

    // Check if timeout flag should be cleared
    if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_CLEAR_TIMEOUT_MASK) != 0u) // Check if request is set in CanTrcv_ClearTrcvTimeoutFlag
    {
        // Write register values in mirror RAM to clear timeout flag
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_CLEAR_TIMEOUT_MASK);
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1C] |= (CANTRCV_CFG_TLE9255_SPI_CANSIL_MASK + CANTRCV_CFG_TLE9255_SPI_CANTO_MASK);
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1C] |= (uint16)CANTRCV_CFG_TLE9255_WRITE_MASK;
        *ChangeFlag_b = TRUE;
    }

    // check if PNActivationState should be cleared
    if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_CLEAR_PNACTIVATE_MASK) != 0u)   // Check if request is set to clear CanTrcv_SetPNActivationState
    {   // Write register values in mirror RAM to clear PNActivationState
        // CFG_VAL =0 = disable CAN selective wake-up
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_CLEAR_PNACTIVATE_MASK);
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG05]   &=  (uint16)~((uint16)CANTRCV_CFG_TLE9255_SPI_CFG_VAL_MASK);
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG05]   |= (uint16)CANTRCV_CFG_TLE9255_WRITE_MASK;
        *ChangeFlag_b = TRUE;
    }

    // Check if request is set in CanTrcv_SetPNActivationState
    if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_SET_PNACTIVATE_MASK) != 0u)
    {
        // Write register values in mirror RAM to set PNActivationState
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_SET_PNACTIVATE_MASK);
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG05]   |=  CANTRCV_CFG_TLE9255_SPI_CFG_VAL_MASK;
        CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG05]   |= (uint16)CANTRCV_CFG_TLE9255_WRITE_MASK;
        *ChangeFlag_b = TRUE;
    }
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTLE9255
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 28770] */
#if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )
void CanTrcv_MainFunctionCheckForState_Tle9255(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver)
{
    // Check if read state if different than expected state.
    if(StateReadBack != CanTrcv_Prv_TLE9255_ReqState[TrcvNo_u8])
    {
# if (CANTRCV_MODE_PROPOGATION_REPORTING_SPI_BASED == STD_ON)
        /*If the requested stae is sleep then Trcv may trasit to standby on reception of wakeup hence
            * no dem reporting if previous state is sleep */
        if(CanTrcv_Prv_TLE9255_ReqState[TrcvNo_u8] != CANTRCV_TRCVMODE_SLEEP )
        {
            /*If mode propogation is enabled then report dem*/
            CAN_TRCV_DEM_REPORTERRORSTATUS( CanTrcv_PropDem_st[TrcvNo_u8].EventId, DEM_EVENT_STATUS_PREFAILED);
        }
        else
        {
            if(StateReadBack == CANTRCV_TRCVMODE_NORMAL)
            {
                /*If mode propogation is enabled then report dem*/
                CAN_TRCV_DEM_REPORTERRORSTATUS( CanTrcv_PropDem_st[TrcvNo_u8].EventId, DEM_EVENT_STATUS_PREFAILED);
            }
        }
# endif

# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
        /* Check if Trcv is forced to sleep and if undervoltage is detected at Vcc/Vio or Over temperature warning is detected by masking FSMS and OTW bits respectively */
        if((StateReadBack == CANTRCV_TRCVMODE_SLEEP) && 
          (((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG19] & CANTRCV_CFG_TLE9255_SPI_VIO_LTUV_MASK) != 0u) ||
		  ((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG19] & CANTRCV_CFG_TLE9255_SPI_VCC_LTUV_MASK) != 0u)))
        {
            /* Set the ReInit flag, Init mask and Init Data mask  */
            CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] = CANTRCV_TLE9255_SPI_STATE_INIT_MASK + CANTRCV_TLE9255_SPI_STATE_INITDATA_MASK + CANTRCV_TLE9255_SPI_STATE_SET_REINIT_MASK;
            /* [$DD_BSWCODE 28771] */
            CanTrcv_Rb_ReInit_TLE9255(Transceiver);
        }
# else
        (void) Transceiver; /* To avoid unused parameter-compiler-warning. If CANTRCV_RB_UNDERVOLTAGE_RECOVERY is not configured, the variable is not used */
# endif
    }
    else
    {
# if (CANTRCV_MODE_PROPOGATION_REPORTING_SPI_BASED == STD_ON)
            CAN_TRCV_DEM_REPORTERRORSTATUS( CanTrcv_PropDem_st[TrcvNo_u8].EventId, DEM_EVENT_STATUS_PREPASSED);
# endif
    } 
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * This function reinitializes the Can Transceiver and puts it back to its requested state
 * when an undervoltage at Vcc/Vio or Overtemperature is detected
 *
 * \param   uint8                       Transceiver
 * \arg     Transceiver                 identifies Transceiver to which the API has to be applied
 * \return  void
 * \see
 * \note
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 28771] */
#if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )
# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
static void CanTrcv_Rb_ReInit_TLE9255( uint8 Transceiver)
{
    Std_ReturnType Ret_Spi = E_OK;
    uint8  TrcvNo_u8;
    uint16  SpiPos_u16;
    uint16  start_u16;
    uint16  size_u16;
    Spi_SequenceType  sequence;
    uint8  ReInitMCIndex = CANTRCV_CFG_TLE9255_SPI_REINIT_MC_INDEX;
    uint8  Trcv_WakePinReg = 1u;

    /* Get relevant configuration parameter */
    SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[Transceiver];
    TrcvNo_u8    = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;
    start_u16   = CANTRCV_SPIARRAY_AST[SpiPos_u16].InitStartPos;
    size_u16    = CANTRCV_SPIARRAY_AST[SpiPos_u16].ControlStartPos - start_u16;
    sequence    = CANTRCV_SPIARRAY_AST[SpiPos_u16].Sequence;
    Trcv_WakePinReg = CANTRCV_SPIARRAY_AST[SpiPos_u16].WakePinRegCheck;

    /* Setting the mode of the Transceiver to its previous requested state */
    switch (CanTrcv_Prv_TLE9255_ReqState[TrcvNo_u8])
    {
        case CANTRCV_TRCVMODE_SLEEP:
        {
            CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] &= CANTRCV_CFG_TLE9255_SPI_MC_SM_AND_MASK;
            CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] |= CANTRCV_CFG_TLE9255_SPI_MC_SM_OR_MASK;
        }
        break;
        case CANTRCV_TRCVMODE_STANDBY:
        {
            CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] &= CANTRCV_CFG_TLE9255_SPI_MC_SBM_AND_MASK;
            CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] |= CANTRCV_CFG_TLE9255_SPI_MC_SBM_OR_MASK;
        }
        break;
        default:
        {
            CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] &= CANTRCV_CFG_TLE9255_SPI_MC_NM_AND_MASK;
            CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[TrcvNo_u8][ReInitMCIndex] |= CANTRCV_CFG_TLE9255_SPI_MC_NM_OR_MASK;
        }
        break;
    }

     /* Write ReInitdata in SPI-Buffer */
#if CANTRCV_SPI_EXTERNBUFFER == STD_ON
    /* MR12 RULE 11.3 VIOLATION: The buffer-parametertypes are given by Autosar as uint8. But HW works with uint16. */
    if(E_OK != Spi_RbSetupEB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,      // generated by SPI
                (const uint8*)&CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[TrcvNo_u8][0],         // points to RAM-ReInit Tx buffer
                (uint8*)&CanTrcv_Prv_TLE9255_SpiInitRxBuf_ao[TrcvNo_u8][0],     // points to RAM-Init Rx buffer
                size_u16 ))
    {
        Ret_Spi = E_NOT_OK;
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
    }

#else
    if(E_OK != Spi_WriteIB(CANTRCV_SPIARRAY_AST[SpiPos_u16].Channel,
                &CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[TrcvNo_u8][0]))     // points to RAM-ReInit Tx buffer
    {
        Ret_Spi = E_NOT_OK;
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
    }
#endif
    if (Ret_Spi == E_OK)
    {
        if(CANTRCV_SPI_TRANSMIT(sequence ) != E_OK)
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
        }
    }
}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
* Function to reduce HIS in CanTrcv_MainFunctionTLE9255
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12801] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
# if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR != CANTRCV_INDICATION_IMMEDIATELY)
void CanTrcv_MainFunctionRbIndicationBehaviour_Tle9255(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver)
{
    // Check if Mode-indication function should be called
    // Send async mode indication if read back state is same as requested state
    // Com-Stack does not request sleep state, so it is no problem if this indication is never sent
    if(((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_MODE_INDICATION_MASK) != 0u) &&
        (StateReadBack == CanTrcv_Prv_TLE9255_ReqState[TrcvNo_u8]))
    {
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_MODE_INDICATION_MASK);
        CanIf_TrcvModeIndication((uint8)Transceiver, StateReadBack);
    }
}
# endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTLE9255
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12798] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
void CanTrcv_MainFunctionHwPnSupport_Tle9255(uint8 TrcvNo_u8)
{
    if(((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK) != 0u) &&
        ((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_CLEAR_WUP_MASK) == 0u))
    {
        // Clear global request-flag
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_TLE9255_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK);
        // call indication function
        (void) CanIf_ClearTrcvWufFlagIndication(TrcvNo_u8);
    }
}
# endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Function to reduce HIS in CanTrcv_MainFunctionTLE9255
*
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12797] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
# if (CANTRCV_CFG_TLE9255_DEM_ENABLE == STD_ON)
void CanTrcv_MainFunctionDemHandling_Tle9255(uint8 TrcvNo_u8)
{
    // Check for correct communication with Trcv:
    // in normal  : Reg  01 should not all FF or SPI_ERR and SPI_CMD should be equal to 0
    if(((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG1A] & CANTRCV_CFG_TLE9255_SPI_ERR_MASK) != 0) ||
        ((CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] & 0x0Fu) == 0x0Fu))
    {
        CAN_TRCV_DEM_REPORTERRORSTATUS( CanTrcv_Dem_st[TrcvNo_u8].EventId, DEM_EVENT_STATUS_FAILED);
    }
    else
    {
        CAN_TRCV_DEM_REPORTERRORSTATUS( CanTrcv_Dem_st[TrcvNo_u8].EventId, DEM_EVENT_STATUS_PASSED);
    }
}
# endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Reads the transceiver diagnostic status periodically and sets product/development accordingly
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12796] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
# if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_ASYNC)
#  if(CANTRCV_ECUM_USED == STD_ON)
void CanTrcv_MainFunctionCheckWakeup_Tle9255(uint8 TrcvNo_u8, uint8 Transceiver)
{
    if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_CHECK_WAKEUP_CHECK) != 0u)
    {
        // Clear status bit
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &= ~CANTRCV_TLE9255_SPI_STATE_CHECK_WAKEUP_CHECK;
        // Check if wakeupsource is configured
        if(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] != 0u)
        {
            if(CanTrcv_Prv_TLE9255_Wakeup_au8[TrcvNo_u8] == 1)  // Check if wakeup detected
            {
                EcuM_SetWakeupEvent(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
            }
            EcuM_EndCheckWakeup(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
        }
    }
    // Check if an asynchron checkwakeup is requested
    if((CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] & CANTRCV_TLE9255_SPI_STATE_CHECK_WAKEUP_READ) != 0u)
    {   // Yes -> in this main cycle the registers are requested to read
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] &= ~CANTRCV_TLE9255_SPI_STATE_CHECK_WAKEUP_READ;
        // In next main-cycle the data are received and valid and can be evaluated
        CanTrcv_Prv_TLE9255_SpiState[TrcvNo_u8] |= CANTRCV_TLE9255_SPI_STATE_CHECK_WAKEUP_CHECK;
    }
}
#  endif
# endif
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Reads the transceiver diagnostic status periodically and sets product/development accordingly
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 * BSW-9419
 ***************************************************************************************************
 */
/* [$DD_BSWCODE 12794] */
#if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )
void CanTrcv_MainFunctionCheckState_Tle9255( uint8 TrcvNo_u8, CanTrcv_TrcvModeType *StateReadBack )
{
    uint16                  RegVal01_o;

    // Get Register values
    RegVal01_o  = CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_TLE9255_SPI_REG01] & CANTRCV_CFG_TLE9255_SPI_MC_AND_MASK;
    
    // Change StateReadBack according register values
    if( RegVal01_o ==  CANTRCV_CFG_TLE9255_SPI_MC_NM_OR_MASK)
    {   // If in mode is on, check if there is a failure to disable the CAN-communication by checking bit CTS in Reg22
        *StateReadBack = CANTRCV_TRCVMODE_NORMAL;
    }
    else if ( RegVal01_o ==  CANTRCV_CFG_TLE9255_SPI_MC_SBM_OR_MASK)
    {
        *StateReadBack = CANTRCV_TRCVMODE_STANDBY;
    }
    else if ( RegVal01_o ==  CANTRCV_CFG_TLE9255_SPI_MC_SM_OR_MASK)
    {
        *StateReadBack = CANTRCV_TRCVMODE_SLEEP;
    }
    else
    {   // in error case, set StateReadBack same as CanTrcv_Prv_TLE9255_State
        *StateReadBack = CanTrcv_Prv_TLE9255_ReqState[TrcvNo_u8];
        CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
    }
}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Reads the transceiver diagnostic status periodically and sets product/development accordingly
 *
 *
 *
 * \param   -
 * \arg     -
 * \return  -
 * \see
 * \note     not used in current impl.
 ***************************************************************************************************
 */
#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
# if (CANTRCV_CFG_BUS_ERR_FLAG_GENERAL == STD_ON)
void CanTrcv_MainFunctionDiagnostics( void )
{
    uint8_least index_qu8;
    uint16      SpiPos_u16;

    if(CanTrcv_Prv_InitState_b == TRUE)
    {
        // For all Tja1145
        for(index_qu8 = 0; index_qu8 < CANTRCV_CFG_NUMBER_OF_CANTRCV; index_qu8++)
        {
            if(CANTRCV_TRCVTYPE[index_qu8] == CANTRCV_TRCVTYPE_TJA1145)
            {
                uint8   TrcvNo_u8;

                SpiPos_u16  = CANTRCV_CFG_SPIPOS_AU8[index_qu8];
                TrcvNo_u8   = CANTRCV_SPIARRAY_AST[SpiPos_u16].No;

                if( CANTRCV_PNTRCV_ST[TrcvNo_u8].BusErrFlag == TRUE)
                {
                    // Do something. To be specified!
                }
            }
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTIONDIAGNOSTICS, CANTRCV_E_UNINIT)
    }

}
# endif
#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * function to read out error bits or to read out the actual value of the ErrorPin
 * For Dio-transceivers (e.g. no CY327 nor CS9xx) it gives back current Pin-Value. It does not store any Pin-value
 *
 * \arg     - Transceiver   identifies Transceiver to which the API has to be applied
 * \arg     - Error_pu32    0= No error; Other= bitmask of errors
 * \return  -
 * \see
 * \note   This function is always available to avoid a new config parameter which is currently not agreed by all product lines
 *         This function always returns a value at other CanTrcv (not CY327 nor CS9xx) generated even if no ErrorPin is configured.
 *         If no ErrorPin is configured it will return the value of a undefined Pin.
 ***************************************************************************************************
 */
#if (CANTRCV_CFG_DIO_DEFAULT == STD_ON)

Std_ReturnType CanTrcv_Rb_GetError(uint8 Transceiver, uint32 * Error_pu32)
{
    Std_ReturnType RetVal = E_NOT_OK;
    uint8 TrcvDioId_u8;

    if(CanTrcv_Prv_InitState_b == TRUE)
    {
        if(Error_pu32 != NULL_PTR)
        {

            if(CANTRCV_TRCVTYPE[Transceiver] == CANTRCV_TRCVTYPE_DEFAULT)
            {
                TrcvDioId_u8 = CANTRCV_DIO_GETCHANNELID_AU8[Transceiver];   /* Get relevant Dio Transceiver Id */

                *Error_pu32 = 0;     /* Set default value = No Error */

                if (STD_LOW == (Dio_ReadChannel(CANTRCV_DIO_DIOARRAY_AST[CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].ErrorPinPos].Pin)
                                ^ (CANTRCV_DIO_DIOARRAY_AST[CANTRCV_DIO_CONFIGDATA_AST[TrcvDioId_u8].ErrorPinPos].Invert)))     /* Read ErrorPin from Transceiver. For all transceivers STD_LOW at ErrorPin means error */
                {
                    *Error_pu32 = 1;
                }
                RetVal = E_OK;
            }

        }
        else
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_RB_GETERROR, CANTRCV_E_PARAM_POINTER)
        }
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_RB_GETERROR, CANTRCV_E_UNINIT)
    }
    return(RetVal);
}

#endif
/**
 ***************************************************************************************************
 * \moduledescription
 * function to read out the regiters of TJA1145 and convert to corresponding mode
 *
 * \arg     - CanTrcv_RegVal   identifies Transceiver to which the API has to be applied
 * \arg     - OpMode    Bitmask of Mode
 * \return  -
 * \see
 * \note
 ***************************************************************************************************
 */
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
LOCAL_INLINE Std_ReturnType CanTrcv_GetModeFor_TJA1145(uint16 CanTrcv_RegVal, CanTrcv_TrcvModeType * OpMode)
{
    Std_ReturnType RetVal_o = E_OK;

    switch(CanTrcv_RegVal)
    {
        case CANTRCV_CFG_TJA1145_SPI_MC_NM_OR_MASK:
            *OpMode = CANTRCV_TRCVMODE_NORMAL;
            break;
        case CANTRCV_CFG_TJA1145_SPI_MC_SBM_OR_MASK:
            *OpMode  = CANTRCV_TRCVMODE_STANDBY;
            break;
        case CANTRCV_CFG_TJA1145_SPI_MC_SM_OR_MASK:
            *OpMode  = CANTRCV_TRCVMODE_SLEEP;
            break;
        default:    /* The mode is unpredictable if the above Mask bits are other than Case values */
            RetVal_o = E_NOT_OK;
            break;
    }
    return RetVal_o;
}
#endif

/* BSW-9419 */ /* [$DD_BSWCODE 12783] */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
LOCAL_INLINE Std_ReturnType CanTrcv_GetModeFor_TLE9255(uint16 CanTrcv_RegVal, CanTrcv_TrcvModeType * OpMode)
{
    Std_ReturnType RetVal_o = E_OK;

    switch(CanTrcv_RegVal)
    {
        case CANTRCV_CFG_TLE9255_SPI_MC_NM_OR_MASK:
            *OpMode = CANTRCV_TRCVMODE_NORMAL;
            break;
        case CANTRCV_CFG_TLE9255_SPI_MC_SBM_OR_MASK:
            *OpMode  = CANTRCV_TRCVMODE_STANDBY;
            break;
        case CANTRCV_CFG_TLE9255_SPI_MC_SM_OR_MASK:
            *OpMode  = CANTRCV_TRCVMODE_SLEEP;
            break;
        default:    /* RBA_TRCV_TRCVMODE_STANDBY */
            RetVal_o = E_NOT_OK;
            break;
    }
    return RetVal_o;
}
#endif
/* END BSW-9419 */

/**
 ***************************************************************************************************
 * \moduledescription
 * function to read out the regiters of TJA1145 and convert to corresponding wakeup reason
 *
 * \arg     - MaskVal_u16    Bitmask of wakeup reason
 * \return  - CanTrcv_TrcvWakeupReasonType
 * \see
 * \note
 ***************************************************************************************************
 */
/* BSW-9419 */ 
#if (( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON ) || ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON ))
LOCAL_INLINE CanTrcv_TrcvWakeupReasonType CanTrcv_GetReasonFromMask(uint16 MaskVal_u16)
{
    CanTrcv_TrcvWakeupReasonType ReasonFrmMask;

    switch (MaskVal_u16)
    {
        case 1u:
            ReasonFrmMask = CANTRCV_WU_BY_BUS;
        break;
        case 2u:
            ReasonFrmMask = CANTRCV_WU_BY_PIN;
        break;
        case 3u:
            ReasonFrmMask = CANTRCV_CFG_WU_BY_BUS_AND_PIN;
        break;
        case 4u:
            ReasonFrmMask = CANTRCV_WU_POWER_ON;
        break;
        case 5u:
            ReasonFrmMask = CANTRCV_CFG_WU_BY_BUS_AND_POWER_ON;
        break;
        case 6u:
            ReasonFrmMask = CANTRCV_CFG_WU_BY_PIN_AND_POWER_ON;
        break;
        case 7u:
            ReasonFrmMask = CANTRCV_CFG_WU_BY_BUS_AND_PIN_AND_POWER_ON;
        break;
        default:    // 0 = CANTRCV_WU_NOT_SUPPORTED
            ReasonFrmMask = CANTRCV_WU_NOT_SUPPORTED;
        break;
    }
    return ReasonFrmMask;
}
#endif

/* BSW-15603  Relocate to integration function*/


#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"

#endif  // CANTRCV_CFG_CONFIGURED
