


#ifndef CANTRCV_H_
# define CANTRCV_H_
/*
***************************************************************************************************
* Includes
***************************************************************************************************
*/
#include "ComStack_Types.h"
#include "Can_GeneralTypes.h"
#include "CanTrcv_Cfg_Time.h"
#include "CanTrcv_Cfg.h"

#ifdef CANTRCV_CFG_CONFIGURED

#if (CANTRCV_CFG_RB_RTE_IN_USE == STD_ON)
# include "SchM_CanTrcv.h"
#endif

/*
***************************************************************************************************
* defines
***************************************************************************************************
*/
# define CANTRCV_AR_RELEASE_MAJOR_VERSION    4
# define CANTRCV_AR_RELEASE_MINOR_VERSION    2
# define CANTRCV_AR_RELEASE_PATCH_VERSION    2

# define CANTRCV_SW_MAJOR_VERSION    10
# define CANTRCV_SW_MINOR_VERSION    0
# define CANTRCV_SW_PATCH_VERSION    0

/* Expeted version of CanTrcv generated files */
# define CANTRCV_PRV_EXPECTED_GEN_MAJOR_VERSION    10
# define CANTRCV_PRV_EXPECTED_GEN_MINOR_VERSION    0

# define CANTRCV_VENDOR_ID           6
# define CANTRCV_MODULE_ID           70

# define CANTRCV_TRUE_B             (1==1)
# define CANTRCV_FALSE_B            (1==2)


#if (CANTRCV_VARIANT != CANTRCV_VARIANT_POSTBUILD)
# define CANTRCV_TRCVTYPE           CanTrcv_TrcvType
# if CANTRCV_CFG_CS9XX_USED == STD_ON
#  define CANTRCV_CDDIDMAPPING_AU8   CanTrcv_CddIdMapping_au8
# endif
# if CANTRCV_CFG_CDD_USED == STD_ON
#  define CANTRCV_CDD_FCTP_ST       CanTrcv_CddFctP_st
# if CANTRCV_CDD_DIO_CONFIGURED == STD_ON
#  define CANTRCV_CDDDIO_AST        CanTrcv_CddDio_ast
# endif
/* BSW-15603 */ /* [$DD_BSWCODE 37519] */
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
#  define CANTRCV_PNTRCVCDD_ST      CanTrcv_PnTrcvCdd_ast
# endif
# endif
/* [$DD_BSWCODE 37518] */
# if CANTRCV_CDD_SPI_CONFIGURED == STD_ON
# define CANTRCV_SPICDD_ST      CanTrcv_SpiCDD_ast
/* END BSW-15603 */
# endif
# define CANTRCV_FCTP_ST            CanTrcv_FctP_st

# if CANTRCV_CFG_SPI_USED == STD_ON
#  define CANTRCV_CFG_SPIPOS_AU8     CanTrcv_Cfg_SpiPos_au8
#  define CANTRCV_SPIARRAY_AST       CanTrcv_SpiArray_ast
#  define CANTRCV_CFGSPICHANNEL_AO   CanTrcv_CfgSpiChannel_ao
#  define CANTRCV_PNTRCV_ST          CanTrcv_PnTrcv_st
#  define CANTRCV_DEM_ST             CanTrcv_Dem_st
#  define CANTRCV_PROPDEM_ST         CanTrcv_PropDem_st
# endif

# if CANTRCV_CFG_DIO_DEFAULT == STD_ON
#  define CANTRCV_DIO_GETCHANNELID_AU8              CanTrcv_Dio_GetChannelID_au8
#  define CANTRCV_DIO_DIOARRAY_AST                  CanTrcv_Dio_DioArray_ast
#  define CANTRCV_DIO_SETMODESTRUCTCHAIN_AST        CanTrcv_Dio_SetModeStructChain_ast
#  define CANTRCV_DIO_SETMODESTRUCTCHAINPOS_AU8     CanTrcv_Dio_SetModeStructChainPos_au8
#  define CANTRCV_DIO_GETMODEPINCHAIN_AU8           CanTrcv_Dio_GetModePinChain_au8
#  define CANTRCV_DIO_GETMODEARRAY_ST               CanTrcv_Dio_GetModeArray_st
#  define CANTRCV_DIO_CONFIGDATA_AST                CanTrcv_Dio_ConfigData_ast
#  if (CANTRCV_CFG_DIO_DEM_ENABLE == STD_ON)
#  define CANTRCV_DIO_DEMSTRUCT_ST                  CanTrcv_Dio_DemStruct_st
#   if (CANTRCV_MODE_PROPOGATION_REPORTING_DIO_BASED == STD_ON)
#  define CANTRCV_DIO_PROPDEM_ST                    CanTrcv_Dio_PropDem_st
#   endif
#  endif
# endif

#else

# define CANTRCV_TRCVTYPE           CanTrcv_ConfigData_st->CanTrcv_TrcvTp
# if CANTRCV_CFG_CDD_USED == STD_ON
#  define CANTRCV_CDD_FCTP_ST       CanTrcv_ConfigData_st->CanTrcv_CddFctP_st
# if CANTRCV_CDD_DIO_CONFIGURED == STD_ON
#  define CANTRCV_CDDDIO_AST        CanTrcv_ConfigData_st->CanTrcv_CddDio_ast
# endif
/* BSW-15603 */ /* [$DD_BSWCODE 37519] */
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
#  define CANTRCV_PNTRCVCDD_ST      CanTrcv_PnTrcvCdd_ast
# endif
# endif
# if CANTRCV_CDD_SPI_CONFIGURED == STD_ON
# define CANTRCV_SPICDD_ST      CanTrcv_SpiCDD_ast
/* END BSW-15603 */
# endif
# if CANTRCV_CFG_CS9XX_USED == STD_ON
#  define CANTRCV_CDDIDMAPPING_AU8   CanTrcv_ConfigData_st->CanTrcv_CddIdMapping_au8
# endif
# define CANTRCV_FCTP_ST            CanTrcv_ConfigData_st->CanTrcv_FctP_Ast
#if CANTRCV_CFG_SPI_USED == STD_ON
# define CANTRCV_CFG_SPIPOS_AU8     CanTrcv_ConfigData_st->CanTrcv_Cfg_SpiPos_u8
# define CANTRCV_SPIARRAY_AST       CanTrcv_ConfigData_st->CanTrcv_SpiArray_st
# define CANTRCV_CFGSPICHANNEL_AO   CanTrcv_ConfigData_st->CanTrcv_CfgSpiChannel_o
# define CANTRCV_PNTRCV_ST          CanTrcv_ConfigData_st->CanTrcv_PnTrcv_Ast
# if (CANTRCV_CFG_TJA1145_DEM_ENABLE == STD_ON)
#   define CANTRCV_DEM_ST           CanTrcv_Dem_st
# if (CANTRCV_MODE_PROPOGATION_REPORTING_SPI_BASED == STD_ON)
#     define CANTRCV_PROPDEM_ST     CanTrcv_PropDem_st
#endif
#endif
#endif
# if CANTRCV_CFG_DIO_DEFAULT == STD_ON
#  define CANTRCV_DIO_GETCHANNELID_AU8              CanTrcv_ConfigData_st->CanTrcv_Dio_GetChannelID_au8
#  define CANTRCV_DIO_DIOARRAY_AST                  CanTrcv_ConfigData_st->CanTrcv_Dio_DioArray_ast
#  define CANTRCV_DIO_SETMODESTRUCTCHAIN_AST        CanTrcv_ConfigData_st->CanTrcv_Dio_SetModeStructChain_ast
#  define CANTRCV_DIO_SETMODESTRUCTCHAINPOS_AU8     CanTrcv_ConfigData_st->CanTrcv_Dio_SetModeStructChainPos_au8
#  define CANTRCV_DIO_GETMODEPINCHAIN_AU8           CanTrcv_ConfigData_st->CanTrcv_Dio_GetModePinChain_au8
#  define CANTRCV_DIO_GETMODEARRAY_ST               CanTrcv_ConfigData_st->CanTrcv_Dio_GetModeArray_st
#  define CANTRCV_DIO_CONFIGDATA_AST                CanTrcv_ConfigData_st->CanTrcv_Dio_ConfigData_ast
#  if (CANTRCV_CFG_DIO_DEM_ENABLE == STD_ON)
#  define CANTRCV_DIO_DEMSTRUCT_ST                  CanTrcv_Dio_DemStruct_st
#   if (CANTRCV_MODE_PROPOGATION_REPORTING_DIO_BASED == STD_ON)
#  define CANTRCV_DIO_PROPDEM_ST                    CanTrcv_Dio_PropDem_st
#   endif
#  endif
# endif
#endif //CANTRCV_VARIANT != CANTRCV_VARIANT_POSTBUILD

/* The following identifiers should not be use by the user of this component, it is listed here for information only and for reference on error*/
enum
{
    CANTRCV_E_INVALID_TRANSCEIVER        =0x01,
    CANTRCV_E_PARAM_POINTER              =0x02,
    CANTRCV_E_UNINIT                     =0x11,
    CANTRCV_E_TRCV_NOT_STANDBY           =0x21,
    CANTRCV_E_TRCV_NOT_NORMAL            =0x22,
    CANTRCV_E_PARAM_TRCV_WAKEUP_MODE     =0x23,
    CANTRCV_E_PARAM_TRCV_OPMODE          =0x24,
    CANTRCV_E_PARAM_TRCV_WRONG_CONF      =0x30,
    CANTRCV_E_SPI                        =0x31
};

/* The following identifiers should not be use by the user of this component, it is listed here for information only and for reference on error*/
enum
{
    CANTRCV_SID_INIT                     = 0x00,
    CANTRCV_SID_SETOPMODE                = 0x01,
    CANTRCV_SID_GETOPMODE                = 0x02,
    CANTRCV_SID_GETBUSWUREASON           = 0x03,
    CANTRCV_SID_GETVERSIONINFO           = 0x04,
    CANTRCV_SID_SETWAKEUPMODE            = 0x05,
    CANTRCV_SID_MAINFUNCTION             = 0x06,
    CANTRCV_SID_CHECKWAKEUP              = 0x07,
    CANTRCV_SID_MAINFUNCTIONDIAGNOSTICS  = 0x08,
    CANTRCV_SID_GETTRCVSYSTEMDATA        = 0x09,
    CANTRCV_SID_CLEARTRCVWUFFLAG         = 0x0a,
    CANTRCV_SID_READTRCVTIMEOUTFLAG      = 0x0b,
    CANTRCV_SID_CLEARTRCVTIMEOUTFLAG     = 0x0c,
    CANTRCV_SID_READTRCVSILENCEFLAG      = 0x0d,
    CANTRCV_SID_CHECKWAKEFLAG            = 0x0e,
    CANTRCV_SID_SETPNACTIVATIONSTATE     = 0x0f,
    CANTRCV_SID_RB_GETERROR              = 0x20
};


#if CANTRCV_CDD_DIO_CONFIGURED == STD_ON

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

extern boolean CanTrcv_WakeupStateCdd_au8[CANTRCV_CFG_NUMBER_OF_CDD_CANTRCV]; /* 0: no wakeup; 1=wakeup detected */

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#endif



#if (CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON) || ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

extern boolean CanTrcv_WakeupModeState_ab[];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"
#endif

#if (CANTRCV_MODE_PROPOGATION_REPORTING_CDD_BASED == STD_ON) && (CANTRCV_CFG_CDD_USED == STD_ON)

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

extern CanTrcv_CddModeProp_tst CanTrcv_CddModeProp_ast[CANTRCV_CFG_NUMBER_OF_CDD_CANTRCV];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#endif

/* BSW-9419 */
#if (( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON ) || ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON ))

extern const CanTrcv_FctP_tst * CanTrcv_FctP_pst;
#if (CANTRCV_CFG_SPI_USED == STD_ON)
extern const CanTrcv_Spi_tst * CanTrcv_SpiArray_past;
#endif
#endif
/* END BSW-9419 */

#if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

extern CanTrcv_TrcvModeType CanTrcv_Prv_TJA1145_State[];
extern CanTrcv_TrcvModeType CanTrcv_Prv_TJA1145_ReqState[];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

extern uint8 CanTrcv_Prv_TJA1145_Wakeup_au8[];   /* 0=no wakeup; 1=wakeup detected */

#define CANTRCV_STOP_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"

extern uint16 CanTrcv_Prv_TJA1145_SpiInitRxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_INIT_MAX];
extern uint16 CanTrcv_Prv_TJA1145_SpiCtrlRxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_CTRL_MAX];
extern uint16 CanTrcv_Prv_TJA1145_SpiCtrlTxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_CTRL_MAX];
#if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
extern uint16 CanTrcv_Prv_TJA1145_SpiReInitTxBuf_ao[CANTRCV_CFG_TJA1145_MAX][CANTRCV_CFG_TJA1145_SPI_INIT_MAX];
#endif
extern uint16 CanTrcv_Prv_TJA1145_SpiState[];

#define CANTRCV_STOP_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"




#endif

#if CANTRCV_CFG_DIO_DEFAULT == STD_ON

#define CANTRCV_START_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

extern uint8 CanTrcv_Dio_Wakeup_au8[CANTRCV_CFG_DIO_MAX];   /* 0=no wakeup; 1=wakeup detected */

#define CANTRCV_STOP_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

extern CanTrcv_TrcvModeType CanTrcv_Dio_Mode_au8[CANTRCV_CFG_DIO_MAX];
extern CanTrcv_TrcvWakeupReasonType CanTrcv_Dio_WakeupReason_au8[CANTRCV_CFG_DIO_MAX];
extern CanTrcv_Cfg_Tick_to CanTrcv_StateChangeTime_ao[CANTRCV_CFG_DIO_MAX];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#endif

/* BSW-9419 */
#if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

extern CanTrcv_TrcvModeType   CanTrcv_Prv_TLE9255_State[];
extern CanTrcv_TrcvModeType   CanTrcv_Prv_TLE9255_ReqState[];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

extern uint8 CanTrcv_Prv_TLE9255_Wakeup_au8[];   /* 0=no wakeup; 1=wakeup detected */

#define CANTRCV_STOP_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"

extern uint16 CanTrcv_Prv_TLE9255_SpiInitRxBuf_ao[CANTRCV_CFG_TLE9255_MAX][CANTRCV_CFG_TLE9255_SPI_INIT_MAX];
extern uint16 CanTrcv_Prv_TLE9255_SpiCtrlRxBuf_ao[CANTRCV_CFG_TLE9255_MAX][CANTRCV_CFG_TLE9255_SPI_CTRL_MAX];
extern uint16 CanTrcv_Prv_TLE9255_SpiCtrlTxBuf_ao[CANTRCV_CFG_TLE9255_MAX][CANTRCV_CFG_TLE9255_SPI_CTRL_MAX];
#if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
extern uint16 CanTrcv_Prv_TLE9255_SpiReInitTxBuf_ao[CANTRCV_CFG_TLE9255_MAX][CANTRCV_CFG_TLE9255_SPI_INIT_MAX];
#endif
extern uint16 CanTrcv_Prv_TLE9255_SpiState[];

#define CANTRCV_STOP_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"
#endif
/* END BSW-9419 */
// local variables made public for debugging (CanTrcv151 - CanTrcv155)


#if (CANTRCV_VARIANT != CANTRCV_VARIANT_PRECOMPILE)

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

extern const CanTrcv_ConfigType * CanTrcv_ConfigData_st;

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"
#endif

#define CANTRCV_START_SEC_VAR_INIT_UNSPECIFIED
#include "CanTrcv_MemMap.h"

extern boolean CanTrcv_Prv_InitState_b;    /* 0:=FALSE not init, TRUE: init */

#define CANTRCV_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "CanTrcv_MemMap.h"



/*  Extern Function Definations */
/***************************************************************************************************
*
*               CAN TRANSCEIVER DRIVER SPECIFIC FUNCTIONS
*
****************************************************************************************************
*/
#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"

void CanTrcv_Init(const CanTrcv_ConfigType* ConfigPtr);
Std_ReturnType CanTrcv_SetOpMode( uint8 Transceiver,
                                        CanTrcv_TrcvModeType OpMode);
Std_ReturnType CanTrcv_GetOpMode( uint8 Transceiver,
                                        CanTrcv_TrcvModeType * OpMode );
Std_ReturnType CanTrcv_GetBusWuReason( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupReasonType * reason);
#if (CANTRCV_GET_VERSION_INFO == STD_ON)
void CanTrcv_GetVersionInfo(
                                        Std_VersionInfoType * versioninfo);
#endif
Std_ReturnType CanTrcv_SetWakeupMode( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
Std_ReturnType CanTrcv_CheckWakeup( uint8 Transceiver);
Std_ReturnType CanTrcv_CheckWakeFlag(uint8 Transceiver);

#if(CANTRCV_HW_PN_SUPPORT == STD_ON)
Std_ReturnType CanTrcv_SetPNActivationState(CanTrcv_PNActivationType ActivationState);
#endif

#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
Std_ReturnType CanTrcv_SetOpMode_Immediate( uint8 Transceiver,
                                        CanTrcv_TrcvModeType OpMode);
Std_ReturnType CanTrcv_GetOpMode_Immediate( uint8 Transceiver,
                                CanTrcv_TrcvModeType * OpMode );
#endif

# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
Std_ReturnType CanTrcv_ClearTrcvWufFlag(uint8 Transceiver);
Std_ReturnType CanTrcv_ReadTrcvTimeoutFlag( uint8 Transceiver, CanTrcv_TrcvFlagStateType* FlagState );
Std_ReturnType CanTrcv_ClearTrcvTimeoutFlag( uint8 Transceiver );
Std_ReturnType CanTrcv_ReadTrcvSilenceFlag( uint8 Transceiver, CanTrcv_TrcvFlagStateType* FlagState );
Std_ReturnType CanTrcv_GetTrcvSystemData(uint8 Transceiver, const uint32* TrcvSysData );
void CanTrcv_MainFunctionDiagnostics( void );
# endif

# if (CANTRCV_CFG_RB_RTE_IN_USE == STD_OFF)
/* BSW-9419 */
#  if ((CANTRCV_CFG_WAKEUP_BY_NODE_USED == STD_ON) || ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON ) || ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON ))
void CanTrcv_MainFunction( void );
#  endif
# endif
# if ( CANTRCV_CFG_SPI_TJA1145_USED == STD_ON )
Std_ReturnType CanTrcv_MainFunctionTja1145(uint8 Transceiver);
# endif
#if (CANTRCV_CFG_DIO_DEFAULT == STD_ON)
Std_ReturnType CanTrcv_Rb_GetError(uint8 Transceiver, uint32 * Error_pu32);
#endif

/* BSW-9419 */ /* [$DD_BSWCODE 28768] */
# if ( CANTRCV_CFG_SPI_TLE9255_USED == STD_ON )
Std_ReturnType CanTrcv_MainFunctionTle9255(uint8 Transceiver);
# endif
/* END BSW-9419 */

/* BSW-15603 */ /* [$DD_BSWCODE 37509] */
#if CANTRCV_CY327_DIO_CONFIGURED == STD_ON
Std_ReturnType CanTrcv_CheckWakeupInternal_CDD(uint8 Transceiver, uint8 CddNo);
#endif

#if ((CANTRCV_CFG_CDD_USED == STD_ON)||(CANTRCV_CDD_SPI_CONFIGURED == STD_ON))
void CanTrcvMainFunction_CDD(uint8 Transceiver);
void CanTrcvMainFunction_CDD_Integration(uint8 Transceiver);

#if (CANTRCV_MODE_PROPOGATION_REPORTING_CDD_BASED == STD_ON)
void CanTrcv_CheckModePropagation_Cdd(uint8 Transceiver);
#endif

#endif
/* END BSW-15603 */
#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"

#endif  // CANTRCV_CFG_CONFIGURED
#endif  /* CAN_TRCV_H_ */
