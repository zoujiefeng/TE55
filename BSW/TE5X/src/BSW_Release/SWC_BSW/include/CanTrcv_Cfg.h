
 
/*<VersionHead>
 * This Configuration File is generated using versions (automatically filled in) as listed below.
 *
 * $Generator__: CanTrcv / AR42.10.0.0                Module Package Version
 * $Editor_____: ISOLAR-A/B 9.2.1_9.2.1                Tool Version
 * $Model______: 2.3.0.4                 ECU Parameter Definition Version
 *

 </VersionHead>*/


/**
 ***************************************************************************************************
 * \moduledescription
 *                      CanTrcv Auto generated configuration header file
 *
 * \scope               CONF
 ***************************************************************************************************
 */

#ifndef CANTRCV_CFG_H_
#define CANTRCV_CFG_H_

 



# include "Spi.h"
# include "EcuM.h"


/*
 ***************************************************************************************************
 * Defines
 ***************************************************************************************************
 */

#define CANTRCV_PRV_GEN_MAJOR_VERSION    10
#define CANTRCV_PRV_GEN_MINOR_VERSION    0
#define CANTRCV_PRV_GEN_PATCH_VERSION    0

#define CANTRCV_CFG_CONFIGURED

#define CANTRCV_VARIANT_PRECOMPILE   1
#define CANTRCV_VARIANT_LINKTIME     2
#define CANTRCV_VARIANT_POSTBUILD    3



#define CANTRCV_VARIANT               CANTRCV_VARIANT_PRECOMPILE 

#define CANTRCV_CFG_NUMBER_OF_CANTRCV  1u

#define CANTRCV_CANTRCVCHANNEL_0    0      /*  Index for CanTrcvChannel_0  */
#define CANTRCV_IDX_LIST CANTRCV_CANTRCVCHANNEL_0
 
#define CANTRCV_INDEX_OFFSET  0

/* Symbolic Names for CanTrcvChannelId */
#define  CanTrcvConf_CanTrcvChannel_CanTrcvChannel_0   0  // CanTrcv : CanTrcvChannel_0

/* Wakeup Enabled if one CanTrcv is configured with CANTRCV_WAKEUP_BY_POLLING = ON */
#define CANTRCV_CFG_WAKEUP_BY_NODE_USED STD_ON

#ifndef CANTRCV_ECUM_USED   // Value could be overwritten in integrator code
# define CANTRCV_ECUM_USED   STD_ON
#endif
/* Wakeup Reason functionality in SetWakeupMode */
#if (1 == CANNM_ENABLE)
#define CANTRCV_CFG_CLEAR_WUPREASON_IN_SETWAKEUPMODE STD_OFF
#else
#define CANTRCV_CFG_CLEAR_WUPREASON_IN_SETWAKEUPMODE STD_ON
#endif

/* Config parameter to change the return value of FrTrcv_CheckWakeupByTransceiver between STD_ON: AR4.0 = wakeup-info and STD_OFF: AR4.2=Function behavior.*/ 
#define CANTRCV_RB_CHECKWAKEUP_RETURNVAL  STD_OFF

/* Config parameter to change the EcuM notification for asynchron Trcv*/
#define CANTRCV_CFG_CHECKWAKEUP_SYNC  0u
#define CANTRCV_CFG_CHECKWAKEUP_ASYNC 1u
#define CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE  CANTRCV_CFG_CHECKWAKEUP_ASYNC

/* Enables partial network API */
#define CANTRCV_HW_PN_SUPPORT STD_OFF

/* As defined in AR SWS parameter configures the availability of CanTrcv_GetVersionInfo */
#define CANTRCV_GET_VERSION_INFO STD_OFF

/* Under voltage fail safe recovery Enabled/Disabled */ 
#define CANTRCV_RB_UNDERVOLTAGE_RECOVERY  STD_OFF

/* enables/disables DET (at least for one trcv)*/
#define CANTRCV_DEV_ERROR_DETECT   STD_ON

/* enables/disables DEM (at least for one trcv)*/
#define CANTRCV_CFG_TJA1145_DEM_ENABLE   STD_OFF


/* enables/disables DEM (at least for one trcv)*/
#define CANTRCV_CFG_TLE9255_DEM_ENABLE   STD_OFF


/* enables/disables DEM for Cdd Type of transciver (at least for one trcv)*/
#define CANTRCV_CFG_CDD_DEM_ENABLE   STD_OFF

/* enables/disables DEM for Dio Type of transciver (at least for one trcv)*/
#define CANTRCV_CFG_DIO_DEM_ENABLE   STD_OFF

/* enables/disables Mode Propogation dem for Dio based*/
#define CANTRCV_MODE_PROPOGATION_REPORTING_DIO_BASED   STD_OFF

/* enables/disables Mode Propogation dem for SPI based*/
#define CANTRCV_MODE_PROPOGATION_REPORTING_SPI_BASED   STD_OFF

/* enables/disables Mode Propogation dem for Cdd based*/
#define CANTRCV_MODE_PROPOGATION_REPORTING_CDD_BASED   STD_OFF

/* Cd AI with ID need to be called */ 
#define CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED   STD_OFF

/* Config parameter to decide if global functions should be declared in this component or in RTE */ 
#define CANTRCV_CFG_RB_RTE_IN_USE  STD_ON

#define CANTRCV_CFG_CDD_USED               STD_OFF
 
#define CANTRCV_CDD_DIO_CONFIGURED          STD_OFF  
 
#define CANTRCV_CY327_DIO_CONFIGURED        STD_OFF

#define CANTRCV_CDD_SPI_CONFIGURED          STD_OFF  

#define CANTRCV_CFG_NUMBER_OF_CDD_CANTRCV         0 

#define CANTRCV_CFG_DIO_DEFAULT             STD_OFF
#define CANTRCV_CFG_DIO_MAX                 0
 
#define CANTRCV_CFG_NUMBER_OF_SPI_CDD_CANTRCV             0
#define CANTRCV_CFG_SPI_USED                STD_ON
#define CANTRCV_CFG_DIO_USED                STD_OFF
#define CANTRCV_CFG_SPI_SEQ_MAX             1
#define CANTRCV_CFG_SPI_DATA_MAX            48
#define CANTRCV_INDICATION_ASYNC            0
#define CANTRCV_INDICATION_IMMEDIATELY      1
#define CANTRCV_CFG_RB_INDICATION_BEHAVIOUR CANTRCV_INDICATION_ASYNC

/* SPI: STD_ON: external buffers are used; STD_OFF: internal buffers are used */
/* value is set according SPI_CHANNEL_BUFFERS_ALLOWED */
#define CANTRCV_SPI_EXTERNBUFFER            STD_ON
#define CANTRCV_CFG_SPI_TJA1145_USED        STD_ON

#define CANTRCV_CFG_SPI_TLE9255_USED        STD_OFF

#define CANTRCV_CFG_CS9XX_USED              STD_OFF
#define CANTRCV_CFG_BUS_ERR_FLAG_GENERAL    STD_OFF
#define CANTRCV_CFG_TJA1145_MAX             1
#define CANTRCV_CFG_TJA1145_SPI_INIT_MAX    29
#define CANTRCV_CFG_TJA1145_SPI_CTRL_MAX    19
#define CANTRCV_CFG_TJA1145_SPI_CTRL_RW_MAX 12







#define CANTRCV_CFG_TJA1145_READ_ONLY_MASK  0x0100uL
#define CANTRCV_CFG_TJA1145_SPI_REG0A_A     0
#define CANTRCV_CFG_TJA1145_SPI_LK2C_MASK        0x04u  // 0x20 to 0x2F -
#define CANTRCV_CFG_TJA1145_SPI_LK1C_MASK        0x02u  // 0x10 to 0x1F -
#define CANTRCV_CFG_TJA1145_SPI_LK0C_MASK        0x01u  // 0x06 to 0x09 -
#define CANTRCV_CFG_TJA1145_SPI_REG01       5
#define CANTRCV_CFG_TJA1145_SPI_MC_AND_MASK      0x0007u // Mask to read out Mode
#define CANTRCV_CFG_TJA1145_SPI_MC_NM_AND_MASK   0xFEF8u // Mask for normal Mode and Cleared ReadOnlyBit
#define CANTRCV_CFG_TJA1145_SPI_MC_NM_OR_MASK    0x0007u // Mask for normal Mode
#define CANTRCV_CFG_TJA1145_SPI_MC_SM_AND_MASK   0xFEF8u // Mask for sleep Mode and Cleared ReadOnlyBit
#define CANTRCV_CFG_TJA1145_SPI_MC_SM_OR_MASK    0x0001u // Mask for sleep Mode
#define CANTRCV_CFG_TJA1145_SPI_MC_SBM_AND_MASK  0xFEF8u // Mask for standby Mode and Cleared ReadOnlyBit
#define CANTRCV_CFG_TJA1145_SPI_MC_SBM_OR_MASK   0x0004u // Mask for standby Mode
#define CANTRCV_CFG_TJA1145_SPI_REG20            4
#define CANTRCV_CFG_TJA1145_SPI_CMC_NM_AND_MASK  (~(CANTRCV_CFG_TJA1145_READ_ONLY_MASK + 3uL))    // Mask for normal Mode
#define CANTRCV_CFG_TJA1145_SPI_CMC_SM_AND_MASK  (~(CANTRCV_CFG_TJA1145_READ_ONLY_MASK + 3uL))    // Mask for sleep Mode
#define CANTRCV_CFG_TJA1145_SPI_CMC_SM_OR_MASK   0x00u    // Mask for sleep Mode. Always 0
#define CANTRCV_CFG_TJA1145_SPI_CMC_SBM_AND_MASK (~(CANTRCV_CFG_TJA1145_READ_ONLY_MASK + 3uL))    // Mask for standby Mode
#define CANTRCV_CFG_TJA1145_SPI_CMC_SBM_OR_MASK  0x00u    // Mask for standby Mode. Always 0
#define CANTRCV_CFG_TJA1145_SPI_CPNC_MASK        0x10u
#define CANTRCV_CFG_TJA1145_SPI_REG4C       6
#define CANTRCV_CFG_TJA1145_SPI_REG03       7
#define CANTRCV_CFG_TJA1145_SPI_REG22       8
#define CANTRCV_CFG_TJA1145_SPI_CFS_MASK    1u
#define CANTRCV_CFG_TJA1145_SPI_CBSS_MASK   8u
#define CANTRCV_CFG_TJA1145_SPI_CTS_MASK    128u
#define CANTRCV_CFG_TJA1145_SPI_REG4B       9
#define CANTRCV_CFG_TJA1145_SPI_WPVS_MASK   0x02u
#define CANTRCV_CFG_TJA1145_SPI_REG60       1
#define CANTRCV_CFG_TJA1145_SPI_WPE_MASK    0x08u
#define CANTRCV_CFG_TJA1145_SPI_REG61       2
#define CANTRCV_CFG_TJA1145_SPI_PO_MASK     0x10u
#define CANTRCV_CFG_TJA1145_SPI_REG63       3
#define CANTRCV_CFG_TJA1145_SPI_CW_MASK     0x01u
#define CANTRCV_CFG_TJA1145_SPI_PO_MASK     0x10u
#define CANTRCV_CFG_TJA1145_SPI_CBS_MASK    0x10u
#define CANTRCV_CFG_TJA1145_SPI_PNFDE_MASK  0x20u
#define CANTRCV_CFG_TJA1145_SPI_REG64       10
#define CANTRCV_CFG_TJA1145_SPI_WPR_MASK    0x02u
#define CANTRCV_CFG_TJA1145_SPI_WPF_MASK    0x01u
#define CANTRCV_CFG_TJA1145_SPI_REG0A_E     11
#define CANTRCV_CFG_TJA1145_SPI_REG63_INIT  0xC700u


/* enables multiple wakeup reasons */
#define CANTRCV_CFG_WU_BY_BUS_AND_PIN                CANTRCV_WU_NOT_SUPPORTED
#define CANTRCV_CFG_WU_BY_BUS_AND_POWER_ON           CANTRCV_WU_NOT_SUPPORTED
#define CANTRCV_CFG_WU_BY_PIN_AND_POWER_ON           CANTRCV_WU_NOT_SUPPORTED
#define CANTRCV_CFG_WU_BY_BUS_AND_PIN_AND_POWER_ON   CANTRCV_WU_NOT_SUPPORTED


/* enables/disables ASR3 Api(for all trcv)*/
#define CANTRCV_CFG_USE_ASR31_API   STD_OFF

#define CANTRCV_CHANGE_MODE_FUNCTION1_USED      STD_OFF
#define CANTRCV_CHANGE_MODE_FUNCTION2_USED      STD_OFF
#define CANTRCV_CHANGE_MODE_FUNCTION4_USED      STD_OFF


typedef enum
{
    CANTRCV_PN_ENABLED  = 0,
    CANTRCV_PN_DISABLED = 1
}CanTrcv_PNActivationType;

typedef enum
{
    CANTRCV_FLAG_SET        = 0,
    CANTRCV_FLAG_CLEARED    = 1
}CanTrcv_TrcvFlagStateType;

#if(CANTRCV_HW_PN_SUPPORT == STD_ON)
/* Data Structure for PN information */
typedef struct
{
    boolean BusErrFlag;         // CANTRCV_CFG_BUS_ERR_FLAG
    boolean PnEnabled;          // CanTrcvPnEnabled
    boolean PowerOnFlag;        // CanTrcvPowerOnFlag
}CanTrcv_PnTrcv_tst;


#if(CANTRCV_CFG_CDD_USED == STD_ON)
/* Data Structure for PnFrameDataMaskSpec information for CDD type*/
typedef struct
{
	uint8	PnFrameDataMask;		// CanTrcvPnFrameDataMask
	uint8	PnFrameDataMaskIndex;	// CanTrcvPnFrameDataMaskIndex
}CanTrcv_PnFrameDataMaskSpecCdd_tst;

 
/* Data Structure for PN information for CDD type*/
typedef struct
{
    boolean BusErrFlag;         								// CANTRCV_CFG_BUS_ERR_FLAG
    boolean PnEnabled;          								// CanTrcvPnEnabled
    boolean PowerOnFlag;        								// CanTrcvPowerOnFlag
    uint16	BaudRate;											// CanTrcvBaudRate
    boolean CanIdIsExtended;    								// CanTrcvPnCanIdIsExtended
    uint32	PnFrameCanId;										// CanTrcvPnFrameCanId
    uint32	FrameCanIdMask;										// CanTrcvPnFrameCanIdMask
    uint8	FrameDlc;											// CanTrcvPnFrameDlc
    const CanTrcv_PnFrameDataMaskSpecCdd_tst*  PnFrameDataMaskSpec;	//CanTrcvPnFrameDataMaskSpec
}CanTrcv_PnTrcvCdd_tst;

#endif

#endif

#if CANTRCV_CFG_SPI_USED == STD_ON

typedef struct
{
    uint8                 No;         // 0-based Number specific for each Spi-Trcv-Type
    uint8                 WakePinRegCheck;         // 0- WakePin reg is not avaible, 1 WakePin Reg is available
    Spi_ChannelType       Channel;
    Spi_SequenceType      Sequence;
    EcuM_WakeupSourceType WakeupSourceRef;
    uint16                InitStartPos;
    uint16                ControlStartPos;
    uint16                ControlEndPos;
    uint8                 SpecReg1;     // Transceiver specific register value. For TJA1145 Bit CMC in normal mode
}CanTrcv_Spi_tst;
#endif
  
#if CANTRCV_CDD_SPI_CONFIGURED == STD_ON
typedef struct
{
    uint8                 No;         // 0-based Number specific for Spi-Trcv of type CDD
    Spi_ChannelType       Channel;
    Spi_SequenceType      Sequence;
    EcuM_WakeupSourceType WakeupSourceRef;
}CanTrcv_SpiCDD_tst;
#endif

/* Data Structure for DEM information Same index as CanTrcv_PnTrcv_tst*/

#if ((CANTRCV_CFG_TJA1145_DEM_ENABLE == STD_ON) || (CANTRCV_CFG_DIO_DEM_ENABLE == STD_ON) || (CANTRCV_CFG_TLE9255_DEM_ENABLE == STD_ON))

typedef struct
{
    Dem_EventIdType     EventId;    // DemEventId
}CanTrcv_Dem_tst;
#endif

/* Structure to pointer of functions */
typedef void (*CanTrcv_Init_t) (uint8 Transceiver);
typedef Std_ReturnType (*CanTrcv_SetOpMode_t) (uint8 Transceiver, CanTrcv_TrcvModeType OpMode);
typedef Std_ReturnType (*CanTrcv_GetOpMode_t) (uint8 Transceiver, CanTrcv_TrcvModeType * OpMode);
typedef Std_ReturnType (*CanTrcv_GetBusWuReason_t) (uint8 Transceiver, CanTrcv_TrcvWakeupReasonType * reason);
typedef Std_ReturnType (*CanTrcv_SetWakeupMode_t) (uint8 Transceiver, CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
typedef Std_ReturnType (*CanTrcv_CheckWakeup_t) (uint8 Transceiver, Std_ReturnType *WakeInfo);

typedef struct
{
    CanTrcv_Init_t              Init;
    CanTrcv_SetOpMode_t         SetOpMode;
    CanTrcv_GetOpMode_t         GetOpMode;
    CanTrcv_GetBusWuReason_t    GetBusWuReason;
    CanTrcv_SetWakeupMode_t     SetWakeupMode;
    CanTrcv_CheckWakeup_t       CheckWakeup;
    uint8                       CddNo;
}CanTrcv_FctP_tst;

#if (CANTRCV_CFG_CDD_USED == STD_ON)
/* Structure to pointer of CDD functions */
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
typedef void (*CanTrcv_InitCdd_t) (uint8 CddChnlId);
typedef Std_ReturnType (*CanTrcv_SetOpModeCdd_t) (uint8 CddChnlId, CanTrcv_TrcvModeType OpMode);
typedef Std_ReturnType (*CanTrcv_GetOpModeCdd_t) (uint8 CddChnlId, CanTrcv_TrcvModeType * OpMode);
typedef Std_ReturnType (*CanTrcv_GetBusWuReasonCdd_t) (uint8 CddChnlId, CanTrcv_TrcvWakeupReasonType * reason);
typedef Std_ReturnType (*CanTrcv_SetWakeupModeCdd_t) (uint8 CddChnlId, CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
typedef Std_ReturnType (*CanTrcv_CheckWakeupCdd_t) (uint8 CddChnlId);
typedef Std_ReturnType (*CanTrcv_CheckWakeFlagCdd_t) (uint8 CddChnlId);
typedef Std_ReturnType (*CanTrcv_SetPNActivationStateCdd_t) (uint8 CddChnlId, CanTrcv_PNActivationType ActivationState);
typedef Std_ReturnType (*CanTrcv_ReadTrcvTimeoutFlagCdd_t) (uint8 CddChnlId, CanTrcv_TrcvFlagStateType* FlagState);
typedef Std_ReturnType (*CanTrcv_ClearTrcvTimeoutFlagCdd_t) (uint8 CddChnlId);
typedef Std_ReturnType (*CanTrcv_ReadTrcvSilenceFlagCdd_t) (uint8 CddChnlId, CanTrcv_TrcvFlagStateType* FlagState);
typedef Std_ReturnType (*CanTrcv_ClearTrcvWufFlagCdd_t) (uint8 CddChnlId);

#else
typedef void (*CanTrcv_InitCdd_t) (void);
typedef Std_ReturnType (*CanTrcv_SetOpModeCdd_t) (CanTrcv_TrcvModeType OpMode);
typedef Std_ReturnType (*CanTrcv_GetOpModeCdd_t) (CanTrcv_TrcvModeType * OpMode);
typedef Std_ReturnType (*CanTrcv_GetBusWuReasonCdd_t) (CanTrcv_TrcvWakeupReasonType * reason);
typedef Std_ReturnType (*CanTrcv_SetWakeupModeCdd_t) (CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
typedef Std_ReturnType (*CanTrcv_CheckWakeupCdd_t) (void);
#if(CANTRCV_HW_PN_SUPPORT == STD_ON)
typedef Std_ReturnType (*CanTrcv_CheckWakeFlagCdd_t) (void);
typedef Std_ReturnType (*CanTrcv_SetPNActivationStateCdd_t) (CanTrcv_PNActivationType ActivationState);
typedef Std_ReturnType (*CanTrcv_ReadTrcvTimeoutFlagCdd_t) (CanTrcv_TrcvFlagStateType* FlagState);
typedef Std_ReturnType (*CanTrcv_ClearTrcvTimeoutFlagCdd_t) (void);
typedef Std_ReturnType (*CanTrcv_ReadTrcvSilenceFlagCdd_t) (CanTrcv_TrcvFlagStateType* FlagState);
typedef Std_ReturnType (*CanTrcv_ClearTrcvWufFlagCdd_t) (void);
#endif

#endif

typedef struct
{
#if (CANTRCV_CDDAPI_WITHCHNL_ID_CONFIGURED == STD_ON)
    uint8                          CddChnlId;
#endif
    CanTrcv_InitCdd_t                 InitCdd;
    CanTrcv_SetOpModeCdd_t            SetOpModeCdd;
    CanTrcv_GetOpModeCdd_t            GetOpModeCdd;
    CanTrcv_GetBusWuReasonCdd_t       GetBusWuReasonCdd;
    CanTrcv_SetWakeupModeCdd_t        SetWakeupModeCdd;
    CanTrcv_CheckWakeupCdd_t          CheckWakeupCdd;
#if(CANTRCV_HW_PN_SUPPORT == STD_ON)
    CanTrcv_CheckWakeFlagCdd_t        CheckWakeFlagCdd;
    CanTrcv_SetPNActivationStateCdd_t SetPNActivationStateCdd;
    CanTrcv_ReadTrcvTimeoutFlagCdd_t  ReadTrcvTimeoutFlagCdd;
    CanTrcv_ClearTrcvTimeoutFlagCdd_t ClearTrcvTimeoutFlagCdd;
    CanTrcv_ReadTrcvSilenceFlagCdd_t  ReadTrcvSilenceFlagCdd;
    CanTrcv_ClearTrcvWufFlagCdd_t     ClearTrcvWufFlagCdd;
#endif
#if (CANTRCV_MODE_PROPOGATION_REPORTING_CDD_BASED == STD_ON) && (CANTRCV_CFG_CDD_USED == STD_ON)
    Dem_EventIdType                   CddPropModeDemEvent;  /*To hold the Dem event configured*/
    uint8                             CddModeChangeDelay;   /*To hold the configured delay time*/
#endif
    Dem_EventIdType                   CddIncorrectComDemEvent;  /*To hold the Dem event configured*/
    Dem_EventIdType                   CddBusErrorDemEvent;  /*To hold the Dem event configured*/
    CanTrcv_TrcvModeType              InitState;
    uint8 TransceiverId;
}CanTrcv_CddFctP_tst;

/*This structure is required to hold the details of CDD transceiver mode change delay time
 * Requested mode and flag where Dem monitoring strats only after setmode is requested*/
#if (CANTRCV_MODE_PROPOGATION_REPORTING_CDD_BASED == STD_ON) && (CANTRCV_CFG_CDD_USED == STD_ON)
typedef struct
{
    CanTrcv_TrcvModeType           CanTrcv_CddReqMode;  /*latest requested mode*/
    uint8                          CanTrcv_CddDelaycount; /*Minimum time required to refect the requested mode in Cdd type if Transceiver*/
    uint8                          CanTrcv_CddModeReady; /*Flag to start the unexpected mode detection only after setmode is requested*/
}CanTrcv_CddModeProp_tst;
#endif
#endif

#if (CANTRCV_CDD_DIO_CONFIGURED == STD_ON || CANTRCV_CFG_DIO_DEFAULT == STD_ON)
typedef struct
{
    Dio_ChannelType Pin;
    uint8 Invert;
}CanTrcv_DioArray_tst;
#endif

#if (CANTRCV_CFG_DIO_DEFAULT == STD_ON)
typedef void (*CanTrcv_ChangeModeFunctionType) (uint8 TrcvDioId_u8);
#endif

#if (CANTRCV_CFG_DIO_DEFAULT == STD_ON)
typedef struct
{
    CanTrcv_ChangeModeFunctionType ChangeModeFunction;
    uint8           IoNr;   /* DioPinNr  */
    Dio_LevelType   Value;  /* DioValue */
    uint16          WaitTime;
}CanTrcv_ModeStructChain_tst;
#endif

#if (CANTRCV_CFG_DIO_DEFAULT == STD_ON)
typedef struct
{
    uint8 StartPos;
    uint8 FuncNumber;
}CanTrcv_ModeStruct_tst;
#endif

#if (CANTRCV_CFG_DIO_DEFAULT == STD_ON)
typedef struct
{ 
    uint8                       WakeupPossibility;        /* 0=No WakeupPossibility; >0:Wakeupfunction */
    CanTrcv_TrcvModeType        InitState;                /* see defines */
    uint8                       GetModeArray;             /* calculation from Pins/values to states */
    uint8                       RetryCountInInit;         /* TrcvRetryCountInInit */
    uint16                      WaitInit;
# if (CANTRCV_CFG_DIO_USED==STD_ON)
    uint8 StartDio;                 /* StartPosition in CanTrcv_DioArray */
    uint8 ErrorPinPos;              /* Position of ErrorPin in CanTrcv_DioArray */
    uint8 WakePinPos;               /* Position of wakekup indication pin in CanTrcv_DioArray */
# endif
    CanTrcv_ModeStruct_tst SetMode;  /* Mode 1=normal, 2=standby, 2=sleep, 3=receiveonly /  */
    CanTrcv_ModeStruct_tst GetMode;
}CanTrcv_Dio_ConfigData_tst;
#endif

typedef struct
{
    const uint8 *CanTrcv_TrcvTp;
#if (CANTRCV_CFG_CDD_USED == STD_ON)
  const CanTrcv_CddFctP_tst *CanTrcv_CddFctP_st;
#if (CANTRCV_CDD_DIO_CONFIGURED == STD_ON)
  const CanTrcv_DioArray_tst *CanTrcv_CddDio_ast;
#endif
#endif 
#if (CANTRCV_CFG_CS9XX_USED == STD_ON)
    const uint8 *CanTrcv_CddIdMapping_au8;
#endif
    const CanTrcv_FctP_tst *CanTrcv_FctP_Ast;
#if CANTRCV_CFG_SPI_USED == STD_ON
    const uint8 *CanTrcv_Cfg_SpiPos_u8;
    const CanTrcv_Spi_tst *CanTrcv_SpiArray_st;
    const uint16 *CanTrcv_CfgSpiChannel_o; 
# if(CANTRCV_HW_PN_SUPPORT == STD_ON)
    const CanTrcv_PnTrcv_tst *CanTrcv_PnTrcv_Ast;
# endif
#endif
}CanTrcv_ConfigType;


#define CANTRCV_START_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
#include "CanTrcv_MemMap.h"


/*Post build CanTrcv_Config */

/* Config Structure for Variant  */
/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical". External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/
extern const uint8 CanTrcv_TrcvType[];

/* Cdd Config Structures */

/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical". External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/
extern const CanTrcv_FctP_tst CanTrcv_FctP_st[];

/* Spi related Structures*/
#if CANTRCV_CFG_SPI_USED == STD_ON
/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical". External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/
extern const uint8 CanTrcv_Cfg_SpiPos_au8[];
/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical". External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/
extern const CanTrcv_Spi_tst CanTrcv_SpiArray_ast[];
/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical". External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/
extern const uint16 CanTrcv_CfgSpiChannel_ao[];
# if(CANTRCV_HW_PN_SUPPORT == STD_ON)
/* MR12 RULE 5.8 VIOLATION: Warning is "Not Critical". External identifier shall be made unique later releases, at the moment external identifiers do not lead to errors*/
extern const CanTrcv_PnTrcv_tst CanTrcv_PnTrcv_st[];
#endif
#endif



#if CANTRCV_CFG_SPI_USED == STD_ON
#if (CANTRCV_CFG_TJA1145_DEM_ENABLE == STD_ON)
extern const CanTrcv_Dem_tst CanTrcv_Dem_st[];
#if (CANTRCV_MODE_PROPOGATION_REPORTING_SPI_BASED == STD_ON)
extern const CanTrcv_Dem_tst CanTrcv_PropDem_st[];
#endif
#endif
#endif

#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
# if CANTRCV_CFG_DIO_DEM_ENABLE == STD_ON
extern const CanTrcv_Dem_tst CanTrcv_Dio_DemStruct_st[];
#  if CANTRCV_MODE_PROPOGATION_REPORTING_DIO_BASED
extern const CanTrcv_Dem_tst CanTrcv_Dio_PropDem_st[];
#  endif
# endif
#endif

#if CANTRCV_ECUM_USED == STD_ON
extern const EcuM_WakeupSourceType CanTrcv_WakeupSource_ao[];
#endif

#define CANTRCV_STOP_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
#include "CanTrcv_MemMap.h"


#endif //end of define CANTRCV_CFG_H

