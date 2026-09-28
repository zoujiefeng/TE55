


#ifndef CANTRCV_PRV_H_
# define CANTRCV_PRV_H_
/*
***************************************************************************************************
* Includes
***************************************************************************************************
*/
#include "CanTrcv.h"

#ifdef CANTRCV_CFG_CONFIGURED
#include "CanTrcv_Cfg_IntCode.h"

/*
***************************************************************************************************
* defines
***************************************************************************************************
*/


# define CANTRCV_TRCVTYPE_DEFAULT   0
# define CANTRCV_TRCVTYPE_TJA1145   1
# define CANTRCV_TRCVTYPE_CDD       2
# define CANTRCV_TRCVTYPE_CS9XX     3
/* BSW-9419 */
# define CANTRCV_TRCVTYPE_TLE9255   4
/* END BSW-9419 */


#define CANTRCV_VARIANT_PRECOMPILE   1
#define CANTRCV_VARIANT_LINKTIME     2
#define CANTRCV_VARIANT_POSTBUILD    3
/* BSW-15603 */
#define CANTRCV_WAKEUPSOURCE_PER_TRCV   3u   /* Three wakeupsources per Trcv CanTrcvWakeupSourceRef,CanTrcvPorWakeupSourceRef,CanTrcvSyserrWakeupSourceRef */
#define CANTRCV_WAKEUPSOURCEREF_OFFSET          0u
#define CANTRCV_PORWAKEUPSOURCEREF_OFFSET       1u
#define CANTRCV_SYSERRWAKEUPSOURCEREF_OFFSET    2u

#if (CANTRCV_DEV_ERROR_DETECT == STD_ON)
#define CANTRCV_DET_REPORTERROR(CanId, ApiId, ErrId )            (void)Det_ReportError(CANTRCV_MODULE_ID, (CanId), (ApiId), (ErrId));
#else
#define CANTRCV_DET_REPORTERROR(CanId, ApiId, ErrId )
#endif
/* END BSW-15603 */

/*  Function Definations */
/***************************************************************************************************
*
*               CAN TRANSCEIVER DRIVER SPECIFIC FUNCTIONS
*
****************************************************************************************************
*/

#if CANTRCV_CFG_DIO_DEFAULT == STD_ON
void CanTrcv_Init_Dio( uint8 Transceiver);
Std_ReturnType CanTrcv_SetOpMode_Dio( uint8 Transceiver,
                                        CanTrcv_TrcvModeType OpMode);
void CanTrcv_SetTransceiverMode_Dio(uint8 TrcvDioId_u8,
                                        CanTrcv_TrcvModeType OpMode);
Std_ReturnType CanTrcv_GetOpMode_Dio( uint8 Transceiver,
                                        CanTrcv_TrcvModeType * OpMode );
void CanTrcv_GetTransceiverMode_Dio(uint8 TrcvDioId_u8,
                                        CanTrcv_TrcvModeType * OpMode );
Std_ReturnType CanTrcv_GetBusWuReason_Dio( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupReasonType * reason);
Std_ReturnType CanTrcv_SetWakeupMode_Dio( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
Std_ReturnType CanTrcv_CheckWakeup_Dio( uint8 Transceiver, Std_ReturnType *WakeInfo);
# if (CANTRCV_CHANGE_MODE_FUNCTION1_USED == STD_ON)
void CanTrcv_ChangeModeFunction1(uint8 TrcvDioId_u8);
# endif
# if (CANTRCV_CHANGE_MODE_FUNCTION2_USED == STD_ON)
void CanTrcv_ChangeModeFunction2(uint8 TrcvDioId_u8);
# endif
# if (CANTRCV_CHANGE_MODE_FUNCTION4_USED == STD_ON)
void CanTrcv_ChangeModeFunction4(uint8 TrcvDioId_u8);
# endif
# if (CANTRCV_MODE_PROPOGATION_REPORTING_DIO_BASED == STD_ON)
void CanTrcv_CheckModePropagation_Dio(uint8 Transceiver);
# endif
#endif

#if CANTRCV_CFG_CS9XX_USED == STD_ON
Std_ReturnType CanTrcv_SetOpMode_CS9xx( uint8 Transceiver,
                                        CanTrcv_TrcvModeType OpMode);
Std_ReturnType CanTrcv_GetOpMode_CS9xx( uint8 Transceiver,
                                        CanTrcv_TrcvModeType * OpMode );
Std_ReturnType CanTrcv_GetBusWuReason_CS9xx( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupReasonType * reason);
Std_ReturnType CanTrcv_SetWakeupMode_CS9xx( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
Std_ReturnType CanTrcv_CheckWakeup_CS9xx( uint8 Transceiver, Std_ReturnType *WakeInfo);
#endif
#if CANTRCV_CFG_CDD_USED == STD_ON
/* BSW-15603 */ /* [$DD_BSWCODE 37504] */
void 			CanTrcv_Init_Cdd( uint8 Transceiver);
/* END BSW-15603 */
Std_ReturnType CanTrcv_SetOpMode_Cdd( uint8 Transceiver,
                                        CanTrcv_TrcvModeType OpMode);
Std_ReturnType CanTrcv_GetOpMode_Cdd( uint8 Transceiver,
                                        CanTrcv_TrcvModeType * OpMode );
Std_ReturnType CanTrcv_GetBusWuReason_Cdd( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupReasonType * reason);
Std_ReturnType CanTrcv_SetWakeupMode_Cdd( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
Std_ReturnType CanTrcv_CheckWakeup_Cdd( uint8 Transceiver, Std_ReturnType *WakeInfo);
#endif
#if CANTRCV_CFG_SPI_TJA1145_USED == STD_ON
void CanTrcv_Init_TJA1145( uint8 Transceiver);
Std_ReturnType CanTrcv_SetOpMode_TJA1145( uint8 Transceiver,
                                        CanTrcv_TrcvModeType OpMode);
Std_ReturnType CanTrcv_GetOpMode_TJA1145( uint8 Transceiver,
                                        CanTrcv_TrcvModeType * OpMode );
Std_ReturnType CanTrcv_GetBusWuReason_TJA1145( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupReasonType * reason);
Std_ReturnType CanTrcv_SetWakeupMode_TJA1145( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
Std_ReturnType CanTrcv_CheckWakeup_TJA1145( uint8 Transceiver, Std_ReturnType *WakeInfo);

void CanTrcv_MainFunctionPreparation(uint8 TrcvNo_u8, uint8 Transceiver);
void CanTrcv_MainFunctionCheckState( uint8 TrcvNo_u8, CanTrcv_TrcvModeType *StateReadBack );
# if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_ASYNC)
#  if(CANTRCV_ECUM_USED == STD_ON)
void CanTrcv_MainFunctionCheckWakeup(uint8 TrcvNo_u8, uint8 Transceiver);
#  endif
# endif
# if (CANTRCV_CFG_TJA1145_DEM_ENABLE == STD_ON)
void CanTrcv_MainFunctionDemHandling(uint8 TrcvNo_u8);
# endif
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
void CanTrcv_MainFunctionHwPnSupport(uint8 TrcvNo_u8);
# endif
# if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR != CANTRCV_INDICATION_IMMEDIATELY)
void CanTrcv_MainFunctionRbIndicationBehaviour(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver);
# endif
void CanTrcv_MainFunctionCheckForState(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver);
void CanTrcv_MainFunctioCheckWake(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8);
void CanTrcv_MainFunctionModeChange(uint8 TrcvNo_u8, uint8 Transceiver, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8);

#endif  //  CANTRCV_CFG_SPI_TJA1145_USED == STD_ON

/* BSW-9419 */
#if CANTRCV_CFG_SPI_TLE9255_USED == STD_ON
/* [$DD_BSWCODE 28766] */
void CanTrcv_Init_TLE9255( uint8 Transceiver);
/* [$DD_BSWCODE 12780] */
Std_ReturnType CanTrcv_SetOpMode_TLE9255( uint8 Transceiver,
                                        CanTrcv_TrcvModeType OpMode);
/* [$DD_BSWCODE 12781] */
Std_ReturnType CanTrcv_GetOpMode_TLE9255( uint8 Transceiver,
                                        CanTrcv_TrcvModeType * OpMode );
/* [$DD_BSWCODE 28767] */
Std_ReturnType CanTrcv_GetBusWuReason_TLE9255( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupReasonType * reason);
/* [$DD_BSWCODE 12784] */
Std_ReturnType CanTrcv_SetWakeupMode_TLE9255( uint8 Transceiver,
                                        CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
/* [$DD_BSWCODE 12778] */
Std_ReturnType CanTrcv_CheckWakeup_TLE9255( uint8 Transceiver, Std_ReturnType *WakeInfo);
/* [$DD_BSWCODE 12800] */
void CanTrcv_MainFunctionPreparation_Tle9255(uint8 TrcvNo_u8, uint8 Transceiver);
/* [$DD_BSWCODE 12794] */
void CanTrcv_MainFunctionCheckState_Tle9255( uint8 TrcvNo_u8, CanTrcv_TrcvModeType *StateReadBack );
# if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_ASYNC)
#  if(CANTRCV_ECUM_USED == STD_ON)
/* [$DD_BSWCODE 12796] */
void CanTrcv_MainFunctionCheckWakeup_Tle9255(uint8 TrcvNo_u8, uint8 Transceiver);
#  endif
# endif
# if (CANTRCV_CFG_TLE9255_DEM_ENABLE == STD_ON)
/* [$DD_BSWCODE 12797] */
void CanTrcv_MainFunctionDemHandling_Tle9255(uint8 TrcvNo_u8);
# endif
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
/* [$DD_BSWCODE 12798] */
void CanTrcv_MainFunctionHwPnSupport_Tle9255(uint8 TrcvNo_u8);
# endif
# if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR != CANTRCV_INDICATION_IMMEDIATELY)
/* [$DD_BSWCODE 12801] */
void CanTrcv_MainFunctionRbIndicationBehaviour_Tle9255(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver);
# endif
/* [$DD_BSWCODE 28770] */
void CanTrcv_MainFunctionCheckForState_Tle9255(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver);
/* [$DD_BSWCODE 12795] */
void CanTrcv_MainFunctionCheckWake_Tle9255(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8);
/* [$DD_BSWCODE 12799] */
void CanTrcv_MainFunctionModeChange_Tle9255(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8);
#endif
/* END BSW-9419 */
#endif  // CANTRCV_CFG_CONFIGURED
#endif  /* CAN_TRCV_H_ */
