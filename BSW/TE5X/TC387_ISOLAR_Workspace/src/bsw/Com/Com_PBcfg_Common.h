


 
/*<VersionHead>
 * This Configuration File is generated using versions (automatically filled in) as listed below.
 *
 * $Generator__: Com / AR42.10.0.0                Module Package Version
 * $Editor_____: ISOLAR-A/B 9.2.1_9.2.1                Tool Version
 * $Model______: 2.3.0.4                ECU Parameter Definition Version
 *
 
 </VersionHead>*/

#ifndef COM_PBCFG_COMMON_H
#define COM_PBCFG_COMMON_H

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/

/*
 **********************************************************************************************************************
 * Defines/Macros
 **********************************************************************************************************************
*/

#define COM_UPDATE_MAX      COM_MAX_U8_VALUE    /* max ipdu size */



/* In all the variants */
# define COM_NUM_OF_TXIPDU_IN_ALL_VARIANTS              140u
# define COM_NUM_OF_RXIPDU_IN_ALL_VARIANTS              120u

# define COM_NUM_OF_TXSIG_IN_ALL_VARIANTS               140u
# define COM_NUM_OF_RXSIG_IN_ALL_VARIANTS               120u

# define COM_NUM_OF_TXSIGGRP_IN_ALL_VARIANTS            0u
# define COM_NUM_OF_RXSIGGRP_IN_ALL_VARIANTS            0u

# define COM_NUM_OF_TXGRPSIG_IN_ALL_VARIANTS            0u
# define COM_NUM_OF_RXGRPSIG_IN_ALL_VARIANTS            0u

# define COM_NUM_OF_IPDUGRP_IN_ALL_VARIANTS             6u

# define COM_NUM_OF_TX_SIG_GRPSIG_IN_ALL_VARIANTS       (COM_NUM_OF_TXSIG_IN_ALL_VARIANTS + COM_NUM_OF_TXGRPSIG_IN_ALL_VARIANTS)
# define COM_NUM_OF_RX_SIG_GRPSIG_IN_ALL_VARIANTS       (COM_NUM_OF_RXSIG_IN_ALL_VARIANTS + COM_NUM_OF_RXGRPSIG_IN_ALL_VARIANTS)

/* max in any of the variant */
# define COM_MAX_NUM_OF_TXIPDU_IN_ANY_VARIANT           140u
# define COM_MAX_NUM_OF_RXIPDU_IN_ANY_VARIANT           120u

# define COM_MAX_NUM_OF_TXSIG_IN_ANY_VARIANT            140u
# define COM_MAX_NUM_OF_RXSIG_IN_ANY_VARIANT            120u

# define COM_MAX_NUM_OF_TXSIGGRP_IN_ANY_VARIANT         1u
# define COM_MAX_NUM_OF_RXSIGGRP_IN_ANY_VARIANT         1u

# define COM_MAX_NUM_OF_TXGRPSIG_IN_ANY_VARIANT         1u
# define COM_MAX_NUM_OF_RXGRPSIG_IN_ANY_VARIANT         1u




/*
 **********************************************************************************************************************
 * Type definitions
 **********************************************************************************************************************
*/

/*
 **********************************************************************************************************************
 * Extern declarations
 **********************************************************************************************************************
*/


/* Begin section for RAM variables of struct/enum/pointer type */
#define COM_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "Com_MemMap.h"

#ifdef COM_TP_IPDUTYPE
/* Used to store PduLength of the Tx-Ipdu just befor PduR_ComTransmit() is called. */
extern PduLengthType                                        Com_TpTxIpduLength_auo[];
#endif /* #ifdef COM_TP_IPDUTYPE */

#ifdef COM_RX_SIGNALGROUP
/* Array of Rx Signal group flags */
extern Com_RxSignalGrpFlagType_tst                          Com_RxSignalGrpFlag_ast[];
#endif /* #ifdef COM_RX_SIGNALGROUP */

#ifdef COM_TX_SIGNALGROUP
#if defined(COM_EffectiveSigGrpTOC) || defined(COM_SIGNALGROUPGATEWAY)

/* Array of Tx Signal group flags */
extern Com_TxSignalGrpFlagType_tst                          Com_TxSignalGrpFlag_ast[];
#endif /* #if defined(COM_EffectiveSigGrpTOC) || defined(COM_SIGNALGROUPGATEWAY) */

/* Array of Tx  group Signal flags */
extern Com_TxGrpSignalFlagType_tst                          Com_TxGrpSignalFlag_ast[];
#endif /* #ifdef COM_TX_SIGNALGROUP */

/* Array of Rx Ipdu Ram flags */
extern Com_RxIpduRamData_tst                                Com_RxIpduRam_ast[];

/* Array of Tx Ipdu Ram flags */
extern Com_TxIpduRamData_tst                                Com_TxIpduRam_ast[];

/* Array of Tx signal flags */
extern Com_TxSignalFlagType_tst                             Com_TxSignalFlag_ast[];

/* Array of Rx signal flags */
extern Com_RxSignalFlagType_tst                             Com_RxSignalFlag_ast[];

/* Gw Rx Ipdu queue */
extern PduIdType                                            Com_RxGwQueue_auo[];

/* Structure for Gw Rx queue */
extern Com_RxGwQueueRAMType_tst                             Com_RxGwQueue_st;


#ifdef COM_F_ONEEVERYN
extern Com_OneEveryN_tst                                    Com_OneEveryN_ast[];
#endif

#if defined(COM_EffectiveSigTOC) || defined(COM_EffectiveSigGrpTOC)
extern Com_OldValTrigOnChng_tauo                            Com_OldValTrigOnChng_auo[];
#endif


/* End section for RAM variables of struct/enum/pointer type */
#define COM_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "Com_MemMap.h"


#ifdef COM_F_MASKEDNEWDIFFERSOLD

/* Begin section for RAM variables of uint32 type */
#define COM_START_SEC_VAR_CLEARED_32
#include "Com_MemMap.h"
extern uint32 Com_F_OldVal_au32[];

/* End section for RAM variables of uint32 type */
#define COM_STOP_SEC_VAR_CLEARED_32
#include "Com_MemMap.h"
#endif


/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Counter for every Ipdu which gives number of Started Ipdu groups, this Ipdu is part of. */
extern uint8 Com_IpduCounter_au8[];

#if defined (COM_RxIPduTimeout) || defined (COM_RxSigUpdateTimeout) || defined (COM_RxSigGrpUpdateTimeout)
/* Counter for every Ipdu which gives number of Deadline monitoring enbaled Rx Ipdu groups, this Ipdu is part of. */
extern uint8 Com_IpduCounter_DM_au8[];
#endif /* #if defined (COM_RxIPduTimeout) || defined (COM_RxSigUpdateTimeout) || defined (COM_RxSigGrpUpdateTimeout) */

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"


/* START: I-PDU Buffers */

    /* Tx-Ipdu Local Buffers */

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_02Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_03Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_04Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_05Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_06Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_07Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_08Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_09Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_10Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_11Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_12Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_13Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_14Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_15Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_16Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_17Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_18Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_19Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_TxBasic_20Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_02Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_03Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_04Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_05Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_06Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_07Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_08Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_09Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_10Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_11Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_12Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_13Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_14Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_15Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_16Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_17Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_18Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_19Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_20Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_21Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_22Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_23Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_24Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_25Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_25_00Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_25_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Tx_26Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_02Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_03Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_04Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_05Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_06Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_07Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_08Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_09Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_10Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_11Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_12Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_13Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_14Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_15Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_16Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_17Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_18Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_19Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_TxBasic_20Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_02Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_03Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_04Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_05Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_06Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_07Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_08Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_09Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_10Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_11Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_12Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_13Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_14Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_15Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_16Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_17Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_18Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_19Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_20Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_21Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_22Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_23Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_24Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_25Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Tx_26Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_02Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_03Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_04Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_05Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_06Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_07Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_08Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_09Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_10Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_11Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_12Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_13Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_14Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_15Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_16Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_17Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_18Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_19Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_TxBasic_20Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_02Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_03Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_04Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_05Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_06Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_07Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_08Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_09Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_10Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_11Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_12Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_13Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_14Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_15Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_16Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_17Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_18Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_19Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_20Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_21Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_22Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_23Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_24Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_25Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Tx_26Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
    /* Rx-Ipdu Local Buffers */

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_02Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_03Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_04Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_05Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_06Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_07Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_08Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_09Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_10Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_11Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_12Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_13Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_14Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_15Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_16Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_17Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_18Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_19Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_20Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_21Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_22Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_23Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_24Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_25Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_26Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_27Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_28Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_29Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_30Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_31Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_32Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_33Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_34Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_35Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_36Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_37Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_38Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_39Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_01_Rx_40Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_02Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_03Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_04Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_05Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_06Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_07Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_08Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_09Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_10Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_11Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_12Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_13Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_14Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_15Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_16Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_17Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_18Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_19Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_20Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_21Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_22Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_23Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_24Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_25Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_26Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_27Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_28Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_29Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_30Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_31Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_32Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_33Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_34Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_35Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_36Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_37Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_38Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_39Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_02_Rx_40Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_01Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_02Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_03Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_04Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_05Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_06Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_07Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_08Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_09Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_10Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_11Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_12Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_13Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_14Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_15Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_16Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_17Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_18Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_19Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_20Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_21Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_22Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_23Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_24Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_25Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_26Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_27Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_28Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_29Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_30Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_31Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_32Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_33Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_34Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_35Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_36Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_37Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_38Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_39Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_dCom_IPdu_CanNodeNum_03_Rx_40Byte[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"

/* END: I-PDU Buffers */



/*Start: Signal Buffer -----> uint8/sint8/boolean/uint8[n]*/

/* Begin section for RAM variables of uint8 type */
#define COM_START_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
extern uint8 Com_SigType_au8[];

/* End section for RAM variables of uint8 type */
#define COM_STOP_SEC_VAR_CLEARED_8
#include "Com_MemMap.h"
/*End: Signal Buffer -----> uint8/sint8/boolean/uint8[n]*/









/* Begin section for constants */
#define COM_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"


#if defined (COM_TXSIG_FLOAT64SUPP ) || defined(COM_TXGRPSIG_FLOAT64SUPP) || defined(COM_RXGRPSIG_FLOAT64SUPP) || defined(COM_RXSIG_FLOAT64SUPP)
extern const float64 Com_FloatValArray_acf64[];
#endif

/* Set of Rx-buffers generated for each ComMainFunction */
extern const Com_Prv_xRxRamBuf_tst                          Com_Prv_xRxRamBuf_acst[];

#ifdef COM_TX_SIGNALGROUP

/* Set of Tx-GroupSignal shadow buffers generated for each ComMainFunction */
extern const Com_Prv_xTxSigGrpRamBuf_tst                    Com_Prv_xTxSigGrpRamBuf_acst[];
#endif /* #ifdef COM_TX_SIGNALGROUP */


/* End section for constants */
#define COM_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Com_MemMap.h"



#ifdef COM_INITVALOPTIMIZATION

/* Begin section for constants */
#define COM_START_SEC_CONFIG_DATA_32
#include "Com_MemMap.h"

extern const uint32                                         Com_Prv_UniqueInitVal_acu32[];


/* End section for constants */
#define COM_STOP_SEC_CONFIG_DATA_32
#include "Com_MemMap.h"
#endif /* end of #ifdef COM_INITVALOPTIMIZATION */





#endif   /* end of COM_PBCFG_COMMON_H */


