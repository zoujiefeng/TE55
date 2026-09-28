



/*<VersionHead>
 * This Configuration File is generated using versions (automatically filled in) as listed below.
 *
 * $Generator__: CanIf / AR42.10.0.0                Module Package Version
 * $Editor_____: ISOLAR-A/B 9.2.1_9.2.1                Tool Version
 * $Model______: 2.0.2.1                ECU Parameter Definition Version
 *

 </VersionHead>*/


#ifndef  CANIF_CFG_H
#define  CANIF_CFG_H
/**************************************************************************/
/*                            Include Section                             */
/**************************************************************************/

/*EcuM_Cbk.h required to use EcuM_WakeupSourceType*/
/*Version check for EcuM and CanIf done in CanIf_Priv.h*/


#include "EcuM_Cbk.h"


 
#include   "Can.h"



/*
 **************************************************************************
 * Defines
 **************************************************************************
 */
/**************************************************************************/
/*  Common Published Information                                          */
/**************************************************************************/
 /**
 * @ingroup CANIF_H
 *
 * Vendor Id
 */
#define CANIF_VENDOR_ID                          6u

/**
 * @ingroup CANIF_H
 *
 * Module Id
 */
#define CANIF_MODULE_ID                          60u

/**
 * @ingroup CANIF_H
 *
 * Autosar Release Major Version
 */
#define CANIF_AR_RELEASE_MAJOR_VERSION           4u
/**
 * @ingroup CANIF_H
 *
 * Autosar Release Minor Version
 */
#define CANIF_AR_RELEASE_MINOR_VERSION           2u
/**
 * @ingroup CANIF_H
 *
 * Autosar Release revised version
 */
#define CANIF_AR_RELEASE_REVISION_VERSION        2u

/**
 * @ingroup CANIF_H
 *
 * Software Release Major Version
 */
#define CANIF_SW_MAJOR_VERSION                   10u
/**
 * @ingroup CANIF_H
 *
 * Software Release Minor Version
 */
#define CANIF_SW_MINOR_VERSION                   0u
/**
 * @ingroup CANIF_H
 *
 * Software Release Patch Version
 */
#define CANIF_SW_PATCH_VERSION                   0u


#if (!defined(CAN_AR_RELEASE_MAJOR_VERSION) || (CAN_AR_RELEASE_MAJOR_VERSION != CANIF_AR_RELEASE_MAJOR_VERSION))
#error "AUTOSAR major version undefined or mismatched"
#endif
#if (!defined(CAN_AR_RELEASE_MINOR_VERSION) || (CAN_AR_RELEASE_MINOR_VERSION != CANIF_AR_RELEASE_MINOR_VERSION))
#error "AUTOSAR minor version undefined or mismatched"
#endif





#define CANIF_CFG_VAR_PC                                1

#define CANIF_CFG_VAR_PBS                               2

#define CANIF_CONFIGURATION_VARIANT         CANIF_CFG_VAR_PC

#define CANIF_TOTAL_TXPDUS      152u 
                              
#define CANIF_TOTAL_TXBUFFERS   91u                
  
#define CANIF_TOTAL_CTRLS       4u                 
  
#define CANIF_TOTAL_DYNAMIC_PDUS 50u  


#define CANIF_RX_DYNAMIC_PDUS 0u




#define CANIF_METADATA_SUPPORT                  STD_OFF
#define CANIF_PUBLIC_TXCONFIRM_POLLING_SUPPORT  STD_OFF
#define CANIF_TRIGGERTRANSMIT_SUPPORT                  STD_OFF
#define CANIF_TXOFFLINEACTIVE_SUPPORT             STD_OFF
#define CANIF_SET_BAUDRATE_API                  STD_OFF
/**************************************************************************/
/* Description :  Enables or disables the API CanIf_CancelTransmit()     */
/*                                                                         */
/* Range       :  STD_ON/STD_OFF                                          */
/**************************************************************************/
#define CANIF_PUBLIC_CANCEL_TRANSMIT_SUPPORT        STD_OFF

/**************************************************************************/
/* Description :  Enables or disables Rx indication for busoff recovery   */
/*                                                                        */
/* Range       :  STD_ON/STD_OFF                                          */
/**************************************************************************/

#define CANIF_PUBLIC_BUSOFF_RECOVERY_FROM_RXINDICATION        STD_OFF

/*******************************************************************************************************/
/* Description :  Enables or disables the API CanIf_DirectHw_Write() &  CanIf_Get_DirectHw_Info() */
/*                                                                        */
/* Range       :  STD_ON/STD_OFF                                          */
/*******************************************************************************************************/
#define CANIF_DIRECT_HW_WRITE               STD_OFF


/******************************************************************************
** Description :  Enables or disables the development error detection and    **
**                notification mechanism                                     **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_PUBLIC_DEV_ERROR_DETECT                        STD_ON
/**************************************************************************/
/* Description :  Enables/disables API for reading the notification status*/
/*                of transmit and receive L-PDU                           */
/* Range       :  STD_ON/STD_OFF                                                  */
/**************************************************************************/
#define CANIF_READTXPDU_NOTIFY_STATUS_API         STD_ON


/**************************************************************************/
/* Description :  Configure Wakeup Validation                                 */
/* Range       :  0....Num of transceivers                                                  */
/**************************************************************************/
#define CANIF_NUM_TRANSCEIVERS                         1



/**************************************************************************/
/* Description :  Enables/disables API for reading the version information*/
/*           .     about the CAN interface                                */
/* Range       :  STD_ON/STD_OFF                                                  */
/**************************************************************************/
#define CANIF_PUBLIC_VERSIONINFO_API                     STD_OFF

/**************************************************************************/
/* Description :  Enables/disables API for reconfiguration of the CAN     */
/*                Identifier for each transmit L-PDU                      */
/* Range       :  STD_ON/STD_OFF                                                  */
/**************************************************************************/
#define CANIF_PUBLIC_SETDYNAMICTXID_API                 STD_ON


/**************************************************************************/
/* Description :  Enables/disables API for reconfiguration of the CAN     */
/*                Identifier for each receive L-PDU                      */
/* Range       :  STD_ON/STD_OFF                                          */
/**************************************************************************/
 #define CANIF_RB_CHANGERXPDUID_API                    STD_OFF


/**************************************************************************/
/* Description :  Enables/disables use of transmit buffers                */
/* Range       :  STD_ON/STD_OFF                                                  */
/**************************************************************************/

#define CANIF_PUBLIC_TXBUFFERING                     STD_ON









/******************************************************************************
** Description :  Enables and disables the API for reading the               **
**                notification status of receive L-PDUs.                     **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_PUBLIC_READRXPDU_NOTIFY_STATUS_API      STD_ON

/******************************************************************************
** Description :  Enables/disables API for reading received L-PDU data       **
** Range       : STD_ON/STD_OFF                                              **
******************************************************************************/
#define CANIF_PUBLIC_READRXPDU_DATA_API               STD_OFF
/******************************************************************************
** Description :  Selects support for wake up validation                     **
** Range       : STD_ON/STD_OFF                                              **
******************************************************************************/
#define CANIF_PUBLIC_WAKEUP_CHECK_VALIDATION_SUPPORT               STD_OFF
/******************************************************************************
** Description :  Configure Wakeup support                                   **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_WAKEUP_SUPPORT                    STD_OFF
/******************************************************************************
** Description :  Enables and disables the support for multiple CAN Drivers. **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_CFG_PUBLIC_MULTIPLE_DRIVER_SUPPORT      STD_OFF




/******************************************************************************
** Description :  Selects support for Rx feature based on configuration      **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_CFG_RX_FEATURE_ENABLED                     STD_ON
/******************************************************************************
** Description :  Total Number of Rx pdus to be handled                      **
** Range       :  0..Max Number of defined CanRxPduIds                       **
******************************************************************************/
#define CANIF_CFG_NUM_CANRXPDUIDS                     126u

/******************************************************************************
** Description :  Total Number of Hoh instances across drivers to be handled **
** Range       :  0..Max Number of defined canIfHrhCfg                       **
******************************************************************************/
#define CANIF_CFG_TOTAL_HOH_NUM                     227u

/******************************************************************************
** Description :  Macro is generated as true if CanIfHrhRangeCfg is          ** 
**                configured atleast for one Hrh                             **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/

#define CANIF_CFG_RX_RANGE_CONFIG                     STD_ON
/******************************************************************************
** Description :  Macro generates the size of an array needed to buffer Rx   ** 
**                Pdu's                                                      **
** Range       :  Buffer size                                                **
******************************************************************************/

#define CANIF_CFG_RX_BUFFER_SIZE                     0u

/******************************************************************************
** Description :  To obtain total number unique of Hoh across all variants   **  
** Range       :  1..Total no of hoh configured                              **
******************************************************************************/
#define CANIF_CFG_READRXPDU_DATA_IN_RXPDUS                    STD_OFF

/******************************************************************************
** Description :  To obtain total number USER Rxpdus across all variants     **  
** Range       :  0..Total no of user pdus configured                        **
******************************************************************************/
#define CANIF_CFG_USER_RX_ENABLED              STD_OFF

/******************************************************************************
** Description :  To obtain total number Rxpdus across all variants having UL**  
** Range       :  0..Total no of pdus with CanIfRxPduUserRxIndicationUL      **
**                configured                                                 **
******************************************************************************/
#define CANIF_CFG_UL_RX              STD_ON


/******************************************************************************
** Description :  Total number of unique top level variants                  **  
** Range       :  1..Total no unique TLV configured                          **
******************************************************************************/
#define CANIF_CFG_NO_OF_TLV                    1



/******************************************************************************
** Description :  Macro is generated as true if atleast one canIfTrcvDrvCfg  **
**                is configured                                              **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_CFG_TRCV_DRV_SUPPORT                    STD_ON
/******************************************************************************
** Description :  Macro generates no of tranceivers configured for all       **
**                tranceiver driver.                                         **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_CFG_NUM_TRCVS                           1
/******************************************************************************
** Description :  Macro is generated as true if atleast one                  **  
**                canIfTrcvWakeupSupport is enabled                          **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_CFG_TRCV_WAKEUP_SUPPORT                    STD_OFF

/******************************************************************************
** Description :  Macro is generated as true if atleast one                  **  
**                canIfTrcvWakeupSupport is enabled                          **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_CFG_NO_TRCV_WAKEUP_SUPPORT                 0u

/******************************************************************************
** Description :  Macro is generated as true if atleast one                  **  
**                canTrcvHwPnSupport is enabled                              **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_CFG_TRCV_PN_SUPPORT                 STD_OFF


/* Total number of Controllers present in one or more drivers */


#define CANIF_NUM_CONTROLLERS       4


/******************************************************************************
** Description :  Selects support for Rx feature based on configuration      **
** Range       :  STD_ON/STD_OFF                       **
******************************************************************************/
#define CANIF_CFG_TX_FEATURE_ENABLED                     STD_ON


/******************************************************************************
** Description :  Macro is generated as true if CanIfHrhListCfg  is          ** 
**                configured atleast for one Hrh                             **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_CFG_HRH_LIST_ENABLED                     STD_OFF

/******************************************************************************
** Description :  Macro is generated as true if CanIfHrhListCfg  is          ** 
**                configured atleast for one Hrh                             **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/




/* Configure support of filtering of CanNm transmit CanIds during reception */
#define CANIF_CANNM_TXID_FILTER                 STD_ON

/******************************************************************************
** Description :  Enables/Disables the APIs CanIf_ReadTxmsgId() and          **
**                CanIf_ReadRxmsgId() for reading configured CanId for       **
**                configured HRH.                                            **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_RB_READMSGID_API               STD_OFF
/******************************************************************************
** Description :  Enables/Disables the APIs CanIf_ControllerErrorPassive()   **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_RB_ERROR_PASSIVE_SUPPORT               STD_OFF
/******************************************************************************
** Description :  Enables/Disables calibration feature                       **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/

#define CANIF_RB_CALIBRATION                STD_OFF


/******************************************************************************
** Description :  Enables/Disables Node calibration feature                  **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_RB_NODE_CALIBRATION                STD_OFF








/******************************************************************************
** Description :  Selects whether the DLC check is supported                 **
** Range       :  STD_ON/STD_STD_OFF                                         **  
******************************************************************************/
#define CANIF_CFG_DLC_CHECK                         STD_OFF






/* Configuration for use of extended CAN identifiers */
#define CANIF_FD_SUPPORT                       STD_OFF


/* Instance ID */
#define CANIF_INSTANCE_ID                         0


/* Configure CanIf Lite */
#define CANIF_LITE_CONFIGURATION                STD_OFF




/* Configure transmission of CANTP/USER Pdus when the Tx Pdu mode is OFFLINE */
#define CANIF_USER_TP_TX_OFFLINE_MODE            STD_OFF



/*PN support*/
#define CANIF_PUBLIC_PN_SUPPORT            STD_OFF






/* Enable/Disable CanNm Support */
#define CANIF_CANNM_ENABLED                     STD_ON




 
 
 
 



/* Enable/Disable CanSm Support */
#define CANIF_CANSM_ENABLED                     STD_ON




/* Enable/Disable J1939Nm Support */
#define CANIF_J1939NM_ENABLED                     STD_OFF


/* Enable/Disable CanTp Support */
#define CANIF_CANTP_ENABLED                     STD_ON



/* Enable/Disable CAN_TSYN Support */
#define CANIF_CANTSYN_ENABLED                    STD_OFF




/* Enable/Disable PduR Support */
#define CANIF_PDUR_ENABLED                     STD_ON


 




/* Enable/Disable XCP Support */
#define CANIF_XCP_ENABLED                       STD_ON







/* Enable/Disable XCP Support */
#define CANIF_J1939TP_ENABLED                       STD_OFF


/******************************************************************************
** Description :  Macro is generated as true if EcuM   is configured         **
**                                                                           **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_ECUM_ENABLED                    STD_ON


/*Wakeup Validation by NM-Pdu*/
#define CANIF_PUBLIC_WAKEUP_CHECK_VALID_BY_NM         STD_OFF

/* Configure support of BASIC CAN Reception */
#define CANIF_BASIC_CAN_SUPPORT                   STD_ON

/* Configure support of CanId List for reception */
#define CANIF_BASIC_CAN_SUPPORT_LIST            STD_OFF

/* Macro generated via scripts when multiple Ranges of CanIds are configured under a HRH */
#define CANIF_RXPDU_CANID_RANGE                    STD_OFF










/* Array Index for CanIf_DynTxPduCanId_au32[] which holds the Dynamic CanIds during runtime */




#define CANIF_DYNAMIC_0            0
#define CANIF_DYNAMIC_1            1
#define CANIF_DYNAMIC_2            2
#define CANIF_DYNAMIC_3            3
#define CANIF_DYNAMIC_4            4
#define CANIF_DYNAMIC_5            5
#define CANIF_DYNAMIC_6            6
#define CANIF_DYNAMIC_7            7
#define CANIF_DYNAMIC_8            8
#define CANIF_DYNAMIC_9            9
#define CANIF_DYNAMIC_10            10
#define CANIF_DYNAMIC_11            11
#define CANIF_DYNAMIC_12            12
#define CANIF_DYNAMIC_13            13
#define CANIF_DYNAMIC_14            14
#define CANIF_DYNAMIC_15            15
#define CANIF_DYNAMIC_16            16
#define CANIF_DYNAMIC_17            17
#define CANIF_DYNAMIC_18            18
#define CANIF_DYNAMIC_19            19
#define CANIF_DYNAMIC_20            20
#define CANIF_DYNAMIC_21            21
#define CANIF_DYNAMIC_22            22
#define CANIF_DYNAMIC_23            23
#define CANIF_DYNAMIC_24            24
#define CANIF_DYNAMIC_25            25
#define CANIF_DYNAMIC_26            26
#define CANIF_DYNAMIC_27            27
#define CANIF_DYNAMIC_28            28
#define CANIF_DYNAMIC_29            29
#define CANIF_DYNAMIC_30            30
#define CANIF_DYNAMIC_31            31
#define CANIF_DYNAMIC_32            32
#define CANIF_DYNAMIC_33            33
#define CANIF_DYNAMIC_34            34
#define CANIF_DYNAMIC_35            35
#define CANIF_DYNAMIC_36            36
#define CANIF_DYNAMIC_37            37
#define CANIF_DYNAMIC_38            38
#define CANIF_DYNAMIC_39            39
#define CANIF_DYNAMIC_40            40
#define CANIF_DYNAMIC_41            41
#define CANIF_DYNAMIC_42            42
#define CANIF_DYNAMIC_43            43
#define CANIF_DYNAMIC_44            44
#define CANIF_DYNAMIC_45            45
#define CANIF_DYNAMIC_46            46
#define CANIF_DYNAMIC_47            47
#define CANIF_DYNAMIC_48            48
#define CANIF_DYNAMIC_49            49















/* Definition of TxPdu handles(CanIfTxPduId)*/
#define CanIfConf_CanIfTxPduCfg_CanIf_CanNmPdu_CanNodeNum_01_Tx_IPC        0
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_01        1
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_02        2
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_03        3
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_04        4
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_05        5
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_06        6
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_07        7
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_08        8
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_09        9
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_10        10
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_11        11
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_12        12
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_13        13
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_14        14
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_15        15
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_16        16
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_17        17
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_18        18
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_19        19
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_20        20
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_21        21
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_22        22
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_01        23
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_02        24
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_03        25
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_04        26
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_05        27
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_06        28
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_07        29
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_08        30
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_09        31
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_10        32
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_11        33
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_12        34
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_13        35
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_14        36
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_15        37
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_16        38
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_17        39
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_18        40
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_19        41
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_20        42
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_21        43
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_22        44
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_23        45
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_24        46
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_25        47
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_25_00        48
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_25_01        49
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_26        50
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_01        51
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_02        52
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_03        53
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_04        54
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_05        55
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_06        56
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_07        57
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_08        58
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_09        59
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_10        60
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_11        61
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_12        62
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_13        63
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_14        64
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_15        65
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_16        66
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_17        67
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_18        68
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_19        69
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_20        70
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_01        71
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_02        72
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_03        73
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_04        74
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_05        75
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_06        76
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_07        77
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_08        78
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_09        79
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_10        80
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_11        81
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_12        82
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_13        83
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_14        84
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_15        85
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_16        86
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_17        87
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_18        88
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_19        89
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_20        90
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_21        91
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_22        92
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_23        93
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_24        94
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_25        95
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_26        96
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_01        97
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_02        98
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_03        99
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_04        100
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_05        101
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_06        102
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_07        103
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_08        104
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_09        105
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_10        106
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_11        107
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_12        108
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_13        109
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_14        110
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_15        111
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_16        112
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_17        113
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_18        114
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_19        115
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_20        116
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_01        117
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_02        118
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_03        119
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_04        120
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_05        121
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_06        122
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_07        123
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_08        124
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_09        125
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_10        126
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_11        127
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_12        128
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_13        129
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_14        130
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_15        131
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_16        132
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_17        133
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_18        134
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_19        135
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_20        136
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_21        137
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_22        138
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_23        139
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_24        140
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_25        141
#define CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_26        142
#define CanIfConf_CanIfTxPduCfg_CanIf_CcpPdu_CanNodeNum_00_Tx_Daq0        143
#define CanIfConf_CanIfTxPduCfg_CanIf_CcpPdu_CanNodeNum_00_Tx_Daq1        144
#define CanIfConf_CanIfTxPduCfg_CanIf_CcpPdu_CanNodeNum_00_Tx_Daq2        145
#define CanIfConf_CanIfTxPduCfg_CanIf_CcpPdu_CanNodeNum_00_Tx_Dto        146
#define CanIfConf_CanIfTxPduCfg_CanIf_DcmPdu_CanNodeNum_01_Tx_PhyResponse        147
#define CanIfConf_CanIfTxPduCfg_CanIf_XcpPdu_CanNodeNum_00_Tx_Daq0        148
#define CanIfConf_CanIfTxPduCfg_CanIf_XcpPdu_CanNodeNum_00_Tx_Daq1        149
#define CanIfConf_CanIfTxPduCfg_CanIf_XcpPdu_CanNodeNum_00_Tx_Daq2        150
#define CanIfConf_CanIfTxPduCfg_CanIf_XcpPdu_CanNodeNum_00_Tx_Res        151


/* Definition of CanIfCtrlId*/
#define CanIfConf_CanIfCtrlCfg_CanIf_CanNodeNum_00        0
#define CanIfConf_CanIfCtrlCfg_CanIf_CanNodeNum_01        1
#define CanIfConf_CanIfCtrlCfg_CanIf_CanNodeNum_02        2
#define CanIfConf_CanIfCtrlCfg_CanIf_CanNodeNum_03        3

/* Definition of CanIfTrcvId*/
#define CanIfConf_canIfTrcvCfg_CanIfTrcvCfg_0        0





/* Definition of RxPdu handles(CanIfRxPduId)*/
#define CanIfConf_CanIfRxPduCfg_CanIf_XcpPdu_CanNodeNum_00_Rx_Broadcast        0
#define CanIfConf_CanIfRxPduCfg_CanIf_XcpPdu_CanNodeNum_00_Rx_Cmd        1
#define CanIfConf_CanIfRxPduCfg_CanIf_CcpPdu_CanNodeNum_00_Rx_Cro        2
#define CanIfConf_CanIfRxPduCfg_CanIf_CanNmPdu_CanNodeNum_01_Rx_RIPC        3
#define CanIfConf_CanIfRxPduCfg_CanIf_DcmPdu_CanNodeNum_01_Rx_FunRequest        4
#define CanIfConf_CanIfRxPduCfg_CanIf_DcmPdu_CanNodeNum_01_Rx_PhyRequest        5
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_01        6
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_02        7
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_03        8
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_04        9
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_05        10
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_06        11
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_07        12
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_08        13
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_09        14
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_10        15
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_11        16
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_12        17
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_13        18
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_14        19
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_15        20
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_16        21
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_17        22
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_18        23
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_19        24
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_20        25
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_21        26
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_22        27
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_23        28
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_24        29
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_25        30
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_26        31
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_27        32
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_28        33
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_29        34
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_30        35
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_31        36
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_32        37
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_33        38
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_34        39
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_35        40
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_36        41
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_37        42
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_38        43
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_39        44
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_01_Rx_40        45
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_01        46
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_02        47
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_03        48
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_04        49
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_05        50
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_06        51
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_07        52
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_08        53
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_09        54
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_10        55
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_11        56
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_12        57
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_13        58
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_14        59
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_15        60
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_16        61
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_17        62
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_18        63
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_19        64
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_20        65
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_21        66
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_22        67
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_23        68
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_24        69
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_25        70
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_26        71
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_27        72
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_28        73
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_29        74
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_30        75
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_31        76
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_32        77
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_33        78
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_34        79
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_35        80
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_36        81
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_37        82
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_38        83
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_39        84
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_02_Rx_40        85
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_01        86
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_02        87
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_03        88
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_04        89
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_05        90
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_06        91
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_07        92
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_08        93
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_09        94
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_10        95
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_11        96
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_12        97
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_13        98
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_14        99
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_15        100
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_16        101
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_17        102
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_18        103
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_19        104
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_20        105
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_21        106
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_22        107
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_23        108
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_24        109
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_25        110
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_26        111
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_27        112
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_28        113
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_29        114
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_30        115
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_31        116
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_32        117
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_33        118
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_34        119
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_35        120
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_36        121
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_37        122
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_38        123
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_39        124
#define CanIfConf_CanIfRxPduCfg_CanIf_CanPdu_CanNodeNum_03_Rx_40        125






/* FC_VariationPoint_START */
/******************************************************************************
** Description :  Enables or disables CanIf XCore                            **
** Range       :  STD_ON/STD_OFF                                             **
******************************************************************************/
#define CANIF_XCORE_CFG_ENABLED  (STD_OFF)



/* FC_VariationPoint_END */


/*PduType used by USER */
typedef struct
{
    uint8 * SduDataPtr;
    PduLengthType       SduLength;
    Can_IdType     SduCanId;    


}CanIf_PduInfoType;


/** Ram structure for CanId Request buffer */
typedef struct
{
    Can_IdType CanId;
    PduIdType swPduHandle;
    uint8 SduLength;
    uint8 BufferIndex;

}CanIf_Cfg_CanIdBuffer_tst;

typedef enum
{
    STANDARD_CAN    = 0x00,
    STANDARD_FD_CAN = 0x01,
    EXTENDED_CAN    = 0x02,
    EXTENDED_FD_CAN = 0x03
}CanIf_Cfg_TxPduCanIdType_ten;

 
typedef enum 
{
    
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_A_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_B_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_C_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_D_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_E_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_F_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_G_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_H_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_01_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_02_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_03_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_04_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_05_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_06_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_07_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_08_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_09_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_10_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_11_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_12_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_13_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_14_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_15_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_16_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_17_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_18_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_19_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_20_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_21_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_22_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_23_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_24_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_25_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_26_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_A_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_B_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_Basic_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_01_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_02_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_03_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_04_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_05_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_06_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_07_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_08_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_09_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_10_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_11_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_12_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_13_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_14_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_15_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_16_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_17_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_18_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_19_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_20_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_21_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_22_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_23_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_24_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_25_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_26_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_Basic_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_01_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_02_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_03_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_04_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_05_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_06_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_07_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_08_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_09_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_10_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_11_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_12_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_13_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_14_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_15_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_16_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_17_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_18_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_19_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_20_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_21_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_22_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_23_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_24_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_25_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_26_e
    ,
    CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_Basic_e
}CanIf_BufferIdx;



typedef enum
{
    CANIF_NO_UL = 0,
    CAN_NM,
    CAN_TP,
    CAN_TSYN,
    J1939NM,
    J1939TP,
    PDUR,
    XCP,
    CDD,
    USER,
    MAX_USER_TYPE

}CanIf_Cfg_UserType_ten;

#if(CANIF_PUBLIC_TXBUFFERING == STD_ON)
typedef enum
{
    CANIF_BASIC,
    CANIF_FULL

}CanIf_Cfg_CanHandleType_ten;
#endif


/* Defines the type of HRH.  */
typedef enum
{
    CANIF_PRV_FULL_E = 0,
    CANIF_PRV_BASIC_RANGE_E,
    /* FC_VariationPoint_START */
    CANIF_PRV_BASIC_LIST_E
    /* FC_VariationPoint_END */
}CanIf_Prv_HrhType_ten;

/* Return value of the DLC error notification. */
typedef enum
{
    CANIF_DLC_OK = 0,
    CANIF_DLC_E_FAILED

}CanIf_DlcErrorReturnType;

/*Structure for Callback functions*/
typedef struct
{
    #if CANIF_CFG_TRCV_DRV_SUPPORT == STD_ON
    /*User_TransceiverModeIndication*/
    void (*User_TransceiverModeIndication) (uint8 TransceiverId ,CanTrcv_TrcvModeType TransceiverMode);

    #if (CANIF_CFG_TRCV_WAKEUP_SUPPORT == STD_ON && CANIF_PUBLIC_WAKEUP_CHECK_VALIDATION_SUPPORT == STD_ON)
    /*User_ValidateWakeupEvent*/
    void (*User_ValidateWakeupEvent) (EcuM_WakeupSourceType WakeupSource);
    #endif
    #endif/*End of #if CANIF_CFG_TRCV_DRV_SUPPORT == STD_ON */

    #if(CANIF_PUBLIC_PN_SUPPORT == STD_ON)
    void (*User_ClearTrcvWufFlagIndication) (uint8 Transceiver);
    void (*User_CheckTrcvWakeFlagIndication) (uint8 Transceiver);
    void (*User_ConfirmPnAvailability) (uint8 TransceiverId);
    #endif

    void (*User_ControllerBusOff) (uint8 ControllerId);

    void (*User_ControllerModeIndication) (uint8 ControllerId,
            CanIf_ControllerModeType ControllerMode);

    /* FC_VariationPoint_START */
    /*User_ControllerErrorPassive*/
    #if (CANIF_RB_ERROR_PASSIVE_SUPPORT != STD_OFF)
    void (*User_ControllerErrorPassive) (uint8 ControllerId);
    #endif
        
    #if (CANIF_CFG_DLC_CHECK != STD_OFF)
    /*Dlc_Error_Notification*/
    CanIf_DlcErrorReturnType (*Dlc_Error_Notification) (PduIdType PduId_qu8 ,uint8 SduLength);
    #endif
    /* FC_VariationPoint_END */    
}CanIf_CallbackFuncType;


/*
 ***************************************************************************************************
 * Type definitions
 ***************************************************************************************************
 */
 
#if(CANIF_CFG_TRCV_WAKEUP_SUPPORT == STD_ON)
typedef struct
{
    uint8 TransceiverId;
    uint8 ControllerId;
    EcuM_WakeupSourceType WakeupSourceId;
}CanIf_Wakeup;
#endif


/* Hrh configuration structure */
typedef struct
{
    /*Hrh Type
     * Full        -- 0
     * Basic Range -- 1
     * Basic list  -- 2 */
    CanIf_Prv_HrhType_ten           HrhInfo_e;

    /*Index to Recieve pdu
    * FULL CAN: generation of stPduIdx_t is same as pduid.
    * Basic Range: Gives the mapping index to the Range structure CanIf_RxPduRangeConfig
    * Basic List: Gives mapping index to the List structure */
    PduIdType               PduIdx_t;

    /*Number of Rx pdu's referring the hrh */
    uint32                  NumRxPdus_u32;

    /*This element is enabled if Mask based filtering is used for the Hrh */
    boolean                  HrhRangeMask_b;

    /*Controller referred by the Hrh*/
    
    
    
    #if (CANIF_RB_NODE_CALIBRATION == STD_ON)
    /*getRxNode*/
    uint8 (*getRxNode) (void);
    #endif
    
    uint8                   ControllerId_u8;
    
    /*CanId accepted by the Hrh */
    #if (CANIF_RB_READMSGID_API == STD_ON)
    Can_IdType              CanId_t;
    #endif
   
   
    #if (CANIF_RB_CHANGERXPDUID_API != STD_OFF)
    /*HW object referred by the Hrh*/
    Can_HwHandleType        CanObjectId;
    #endif
    

}CanIf_Cfg_Hrhtype_tst;


/* Receive L-Pdu configuration structure */
typedef struct
{
    #if(STD_ON == CANIF_PUBLIC_READRXPDU_NOTIFY_STATUS_API) || (CANIF_PUBLIC_READRXPDU_DATA_API != STD_OFF)
    /*The element provides if CanIfRxPduReadData and CanIfRxPduReadNotifyStatus is enabled
     * Configration                                                     Value
     * CanIfRxPduReadData= true, CanIfRxPduReadNotifyStatus= true       CANIF_READ_NOTIFSTATUS_DATA
     * CanIfRxPduReadData= true, CanIfRxPduReadNotifyStatus= false      CANIF_READ_DATA
     * CanIfRxPduReadData= false, CanIfRxPduReadNotifyStatus= true      CANIF_READ_NOTIFSTATUS
     * CanIfRxPduReadData= false, CanIfRxPduReadNotifyStatus= false     CANIF_READ_NONE   */
    uint8 RxPduReadNotifyReadDataStatus_u8;
    #endif
    #if(CANIF_PUBLIC_READRXPDU_DATA_API == STD_ON)
    /* Stores the Offset of the L-PDU buffer in RAM */
    uint16    RxBuffer_u16;

    #endif

    #if((CANIF_PUBLIC_WAKEUP_CHECK_VALIDATION_SUPPORT == STD_ON) && (CANIF_PUBLIC_WAKEUP_CHECK_VALID_BY_NM== STD_ON))
    /*Element is true if the CanIfRxPduUserRxIndicationUL is CANNM */
    boolean ULisCanNm_b;
    #endif

    /* Index to the fetch the recive callback function name
     * For all Pdus for which CanIfRxPduUserRxIndicationUL is configured function name is fetched from
     * CanIf_Prv_ULName_ta_fct array.
     * For USER type of pdu the function name is fetched from CanIf_Prv_RxUSERName_ta_fct array
     * Index        Function Name
     * 0            For the pdu with no CanIfRxPduUserRxIndicationUL and canIfRxPduUserRxIndicationName
     * 1            CanNm_RxIndication
     * 2            CanTp_RxIndication
     * 3            CanTSyn_RxIndication
     * 4            J1939Nm_RxIndication
     * 5            J1939Tp_RxIndication
     * 6            PduR_CanIfRxIndication
     * 7            Xcp_CanIfRxIndication
     * 8            Cdd1 (from 8 CDD function starts)
     * 9            Cdd2
     * 10           USER1(Index for USER starts after CDD indexing is completed)
     * 11           USER2*/
    uint8_least IndexForUL_u8;

    /* CanId type*/
    /* To optimize the checking of CanIdType in source code CanIdType is generated in Following way                   *
     * Type                 Value                                                                                     *
     * STANDARD_CAN         0x20                                                                                      *
     * STANDARD_FD_CAN      0x31                                                                                      *
     * STANDARD_NO_FD_CAN   0x30                                                                                      *
     * EXTENDED_CAN         0x22                                                                                      *
     * EXTENDED_FD_CAN      0x33                                                                                      *
     * EXTENDED_NO_FD_CAN   0x32                                                                                      *
     * Lower nibble provides the CanIdType as forwarded by Can Driver. Eg: STD_CAN:0, EXT_FD:3                        *
     * Higher nibble: is used maily for STD_CAN and EXT_CAN. As STD_CAN can have STD_FD or STD_NO_FD hence FD bit     *
     * should be a dont care bit. Hence 0010 is used. This is same for EXT_CAN.                                       *
     * For other cases e.g STD_FD it is just used as a mask for canidtype provided by can Driver                      */
    uint8 CanIdtype_u8;

    /* Pdu Dlc*/
    uint8 RxPduDlc_u8;    
    
    #if (CANIF_RB_CALIBRATION == STD_ON)
    /*getRxPduDlc*/
    uint8 (*getRxPduDlc) (void);
    #endif
    

    #if CANIF_METADATA_SUPPORT == STD_ON
    /*Pdu CanIdMask  */
    uint32 RxPduCanIdMask_u32;

    /* Pdu Metadata Length*/
    uint8 MetadataLength_u8;
    #endif

    /*Pdu CanId */
    Can_IdType RxPduCanId;
    
    
    #if (CANIF_RB_CALIBRATION == STD_ON)
    /*getCanId*/
    Can_IdType (*getCanId) (void);
    #endif
    

    /*Hrh ref */
    PduIdType Hrhref_t;

    /*Target Id*/
    PduIdType RxPduTargetId_t;
    
    
    #if (CANIF_RB_CHANGERXPDUID_API != STD_OFF)
    /* PduId Type */
    PduIdType RxPduType;
    #endif
    

}CanIf_Cfg_RxPduType_tst;


/* Pointer to the function to invoke reception callback CanIfRxPduUserRxIndicationUser */
typedef struct
{
    void (*CanIfRxPduIndicationName) (PduIdType RxPduTargetId_t, const PduInfoType * CanIf_ULPduinfo_pst );
}CanIf_RxCbk_Prototype;

/* Pointer to the function to invoke reception callback for USER functions */
typedef struct
{
    void (*CanIfRxPduUserRxIndicationUser) (PduIdType RxPduTargetId_t , const CanIf_PduInfoType * ULPduInfoTypUSER_tst);
}CanIf_RxUSERCbk_Prototype;


#if (CANIF_CFG_RX_RANGE_CONFIG == STD_ON)
typedef struct
{
    /* Lower CanId as defined by CanIfRxPduCanIdRangeLowerCanId */
    #if (CANIF_RB_CALIBRATION == STD_ON)
    Can_IdType (*getLowerCanId_t) (void);
    Can_IdType (*getUpperCanId_t) (void);
    #else
    Can_IdType      LowerCanId_t;
    Can_IdType      UpperCanId_t;
    #endif
    PduIdType       PduIdx_t;

}CanIf_RxPduRangeConfigType_tst;
#endif

/*Hrh structure for List type */
#if CANIF_CFG_HRH_LIST_ENABLED == STD_ON
typedef struct
{
    #if (CANIF_RB_CALIBRATION == STD_ON)
    Can_IdType (*getCanIdLst_t) (void);
    #else
    Can_IdType      CanId_t;
    #endif
    PduIdType       PduIdx_t;

}CanIf_RxPduListConfigType_tst;
#endif

#if CANIF_CFG_PUBLIC_MULTIPLE_DRIVER_SUPPORT == STD_ON
typedef struct{
    /*Can Driver offset to obtained hrh Id */
    uint16                      CanDrvOffSet;
    
    /*Function pointer to SetBaudRate API */
    #if (CANIF_SET_BAUDRATE_API == STD_ON)
    boolean                    MultiDrvBln;
    Std_ReturnType (*SetBaudRate) (uint8, uint16);
    #endif
    
    /*Function pointer to SetCrtlMode API */
    Can_ReturnType (*SetCrtlMode) (uint8, Can_StateTransitionType);
    
    #if(CANIF_CFG_TX_FEATURE_ENABLED== STD_ON)
    /*Function pointer to CanWrite API */
    Can_ReturnType (*CanWrite) (Can_HwHandleType, const Can_PduType*);
    #endif

}CanIf_CtrlDrvCfgStruct;
#endif

/**
 * @ingroup CANIF_H
 *
 * Structure type for Tx Callback function  \n
 * typedef struct                           \n
 * {                                        \n
 *   Name of Transmit confirmation services to target upper layers - User specific modules \n
 *   void (*UserTxConfirmation) (PduIdType TxPduTargetPduId);
 * } CanIf_TxCbk_Prototype;                 \n
 */
typedef struct
{
    void (*UserTxConfirmation) (PduIdType TxPduTargetPduId);
} CanIf_TxCbk_Prototype;


typedef struct{
   
#if(CANIF_PUBLIC_TXBUFFERING ==STD_ON)     
    uint32* BufferIdPtr;
    uint32  TotalBufferCount;
    uint32* TxPduIdPtr;
    uint32  TotalTxPduCount;
#endif
    uint8   CtrlId;
    uint8   CtrlCanCtrlRef;
    boolean CtrlWakeupSupport;
#if (CANIF_PUBLIC_PN_SUPPORT == STD_ON)
    boolean PnCtrlEn;               /*True, if at least one pdu linked to this controller is a pn filter pdu*/
#endif
    
#if CANIF_CFG_PUBLIC_MULTIPLE_DRIVER_SUPPORT == STD_ON
    /* Can Driver Index */
    uint8 CanDrvIndx;
#endif
}CanIf_Cfg_CtrlConfig_tst;

#if (CANIF_CFG_TX_FEATURE_ENABLED== STD_ON)
typedef struct{

    const CanIf_Cfg_CtrlConfig_tst   *CanIf_CtrlConfigPtr;
    Can_HwHandleType              CanObjectId;
    #if(CANIF_PUBLIC_TXBUFFERING == STD_ON)
    CanIf_Cfg_CanHandleType_ten   CanHandleType;
   #endif

}CanIf_Cfg_HthConfig_tst;


typedef struct{
    const CanIf_Cfg_HthConfig_tst   *CanIf_HthConfigPtr;
#if (CANIF_PUBLIC_TXBUFFERING == STD_ON)

    uint8*                      DataBuf;
    CanIf_Cfg_CanIdBuffer_tst*   CanIdBuf;
    CanIf_BufferIdx              CanIfBufferId;
    uint8                        CanIfBufferSize;
    uint8 CanIfBufferMaxDataLength;
#endif

}CanIf_Cfg_TxBufferConfig_tst;

typedef struct{
    const CanIf_Cfg_TxBufferConfig_tst   *CanIf_TxBufferConfigPtr;

#if(CANIF_METADATA_SUPPORT == STD_ON)
    uint32                            TxPduCanIdMask;
    uint8                             MetaDataLength;          /*Max value = 4*/          
#endif

    PduIdType                         TxPduId;
    PduIdType                         TxPduTargetPduId;       
    PduIdType                         TxPduType;                  
    CanIf_Cfg_TxPduCanIdType_ten      TxPduCanIdType;
    CanIf_Cfg_UserType_ten            TxPduTxUserUL;
    void (*UserTxConfirmation) (PduIdType TxPduTargetPduId);
    Can_IdType                        TxPduCanId;
#if (CANIF_PUBLIC_PN_SUPPORT == STD_ON)
    boolean                           TxPduPnFilterPdu;
#endif

#if (CANIF_READTXPDU_NOTIFY_STATUS_API == STD_ON)
    boolean                           TxPduReadNotifyStatus;
#endif

#if(CANIF_TRIGGERTRANSMIT_SUPPORT== STD_ON)

    Std_ReturnType (*UserTriggerTransmit) (PduIdType TxPduId, PduInfoType* PduInfoPtr);
    boolean                           TxPduTriggerTransmit;
#endif
/*provides information if data truncation is supported for this pdu*/
boolean TxTruncEnabled_b;
/*Pdulength of Ecuc Pdu referred by this pdu*/
uint8 TxPduLength_u8;
}CanIf_Cfg_TxPduConfig_tst;
#endif

/* FC_VariationPoint_START */
 #if (CANIF_XCORE_CFG_ENABLED != STD_OFF)
 
 typedef enum {
    CANIF_XCORE_PIPE_RX = 0,
    CANIF_XCORE_PIPE_TX,
    CANIF_XCORE_PIPE_TXCONF
}CanIf_XCore_PipeProcesingType;


/* Holds the configuration information of the Pipe. */
typedef struct {
    uint16 PipeId_u16;
    uint16 SrcCoreId_u16;        /* Pipe Source core ID */
    uint16 DestCoreId_u16;       /* Pipe Destination core ID */
    uint32 FifoRamSizeBytes_u32; /* Size of the associated FIFO in bytes */
    uint32 DestFlags_u32;        /* The properties of the receiver on the destination core: (BIT0, BIT1) = {0x0 = "POLLING"; 0x1 = "Task"; 0x2 = "SWI"} */
    TaskType DestRecvId;       /* TaskID of the receiver on the destination core. */
    void* PipeFifoRam_pv;        /* FIFO for PIPE. It is placed either in shared RAM or in the detstination core local RAM */
    CanIf_XCore_PipeProcesingType PipeType; /*Pipe proccessing type */
} CanIf_XCore_PipeConfigType_st;


typedef struct {
    uint8 CanIf_XCoreCanControllerCoreAffinity[CANIF_XCORE_NUMCANCTRL];                     /* Used to identify the destination core of a specific Can transmit operation based on the Controller id. */
    uint8 CanIf_XCoreUserTypeCoreAffinity[MAX_USER_TYPE];                                              /* Used to identify the destination core of a specific Tx confirmation/Rx indication based on the configured UserType. */
    uint16 CanIf_XCoreTxPipeMatrix[CANIF_XCORE_NUMCORES][CANIF_XCORE_NUMCORES];             /* Used to determine the Tx pipe id based on the src core id and destination core id. */
    uint16 CanIf_XCoreTxConfirmationPipeMatrix[CANIF_XCORE_NUMCORES][CANIF_XCORE_NUMCORES]; /* Used to determine the Tx confirmation pipe id based on the src core id and destination core id. */
    uint16 CanIf_XCoreRxPipeMatrix[CANIF_XCORE_NUMCORES][CANIF_XCORE_NUMCORES];             /* Used to determine the Rx pipe id based on the src core id and destination core id. */
    uint16 NumPipes_u16;                                                                    /* Number of configured pipes */
    CanIf_XCore_PipeConfigType_st PipeConfigs_ast[CANIF_XCORE_MAX_NUM_PIPES];               /* Holds the pipe configurations */
} CanIf_XCore_ConfigType;
#endif
/* FC_VariationPoint_END */

/* Configration type structure */
typedef struct
{
    #if(CANIF_CFG_RX_FEATURE_ENABLED== STD_ON)
    /*these elements should be available if there are any Rx-Pdu's*/
    /* pointer to Hrh global array */
    const CanIf_Cfg_Hrhtype_tst * HrhConfig_pcst;

    /* pointer to Rx pdu global array */
    const CanIf_Cfg_RxPduType_tst * RxPduConfig_pcst;

    /* Number of RxPdu's configured for this variant */
    PduIdType NumCanRxPduId_t;
    #endif
    /* Number of Controller's configured for this variant */
    uint8 NumCanCtrl_u8;

    #if(CANIF_CFG_RX_FEATURE_ENABLED== STD_ON)
    /*Number of CDD pdu's*/
    PduIdType NumCddRxPdus_t;
    
    /*Pointer to the range container */
    #if (CANIF_CFG_RX_RANGE_CONFIG == STD_ON)
    const CanIf_RxPduRangeConfigType_tst * RangeCfg_tpst;
    #endif
        /*Pointer to the List container */
    #if (CANIF_CFG_HRH_LIST_ENABLED == STD_ON)
    const CanIf_RxPduListConfigType_tst * ListCfg_tpst;
    #endif
    const uint16                            *RxPduIdTable_Ptr;
    const uint16                            *HrhPduIdTable_Ptr;
    #endif
    /*Index of the selected variant*/
    uint8 CfgSetIndex_u8;
     #if(CANIF_CFG_TX_FEATURE_ENABLED== STD_ON)
    const CanIf_Cfg_TxPduConfig_tst      *CanIf_TxPduConfigPtr;
    const CanIf_Cfg_TxBufferConfig_tst   *CanIf_TxBufferConfigPtr;
    #endif
    const CanIf_Cfg_CtrlConfig_tst       *CanIf_CtrlConfigPtr;
    uint32                            NumOfTxPdus;
    uint32                            NumOfTxBuffers;
    const uint16                            *TxPduIdTable_Ptr;
    const uint8                             *CtrlIdTable_Ptr;
    #if CANIF_CFG_USER_RX_ENABLED == STD_ON
    const CanIf_RxUSERCbk_Prototype                             *RxUSER_Ptr;
    #endif
    #if CANIF_CFG_RX_FEATURE_ENABLED == STD_ON
   const CanIf_RxCbk_Prototype                             *RxAutosarUL_Ptr;
    #endif
    #if(CANIF_CANNM_TXID_FILTER != STD_OFF)
    const Can_IdType * NmtxIdPtr;
    #endif
    /* FC_VariationPoint_START */
    #if (CANIF_XCORE_CFG_ENABLED != STD_OFF)
    const CanIf_XCore_ConfigType * CanIf_XCoreConfigPtr;
    #endif
    /* FC_VariationPoint_END */
    #if CANIF_CFG_PUBLIC_MULTIPLE_DRIVER_SUPPORT == STD_ON
    const CanIf_CtrlDrvCfgStruct                            *CanCtrlDrvCont_Ptr;
    #endif
}CanIf_ConfigType;

/*************************************************************/


#define CANIF_START_SEC_CONST_UNSPECIFIED
#include "CanIf_MemMap.h"
extern const CanIf_ConfigType CanIf_Config;
#define CANIF_STOP_SEC_CONST_UNSPECIFIED
#include "CanIf_MemMap.h"


/* FC_VariationPoint_START */
/* FC_VariationPoint_END */

/*TxBufferConfig custId*/




#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_00_Tx_A       0u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_00_Tx_B       1u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_00_Tx_C       2u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_00_Tx_D       3u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_00_Tx_E       4u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_00_Tx_F       5u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_00_Tx_G       6u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_00_Tx_H       7u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_01       8u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_02       9u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_03       10u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_04       11u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_05       12u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_06       13u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_07       14u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_08       15u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_09       16u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_10       17u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_11       18u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_12       19u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_13       20u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_14       21u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_15       22u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_16       23u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_17       24u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_18       25u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_19       26u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_20       27u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_21       28u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_22       29u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_23       30u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_24       31u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_25       32u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_26       33u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_A       34u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_B       35u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_01_Tx_Basic       36u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_01       37u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_02       38u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_03       39u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_04       40u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_05       41u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_06       42u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_07       43u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_08       44u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_09       45u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_10       46u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_11       47u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_12       48u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_13       49u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_14       50u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_15       51u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_16       52u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_17       53u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_18       54u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_19       55u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_20       56u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_21       57u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_22       58u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_23       59u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_24       60u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_25       61u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_26       62u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_02_Tx_Basic       63u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_01       64u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_02       65u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_03       66u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_04       67u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_05       68u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_06       69u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_07       70u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_08       71u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_09       72u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_10       73u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_11       74u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_12       75u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_13       76u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_14       77u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_15       78u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_16       79u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_17       80u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_18       81u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_19       82u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_20       83u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_21       84u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_22       85u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_23       86u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_24       87u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_25       88u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_26       89u   


#define CanIf_Buffer_CustId_CanIf_Buffer_CanNodeNum_03_Tx_Basic       90u   
 
 










/*HthConfig custId */





#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_00_Tx_A   0u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_00_Tx_B   1u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_00_Tx_C   2u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_00_Tx_D   3u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_00_Tx_E   4u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_00_Tx_F   5u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_00_Tx_G   6u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_00_Tx_H   7u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_01   8u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_02   9u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_03   10u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_04   11u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_05   12u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_06   13u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_07   14u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_08   15u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_09   16u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_10   17u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_11   18u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_12   19u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_13   20u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_14   21u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_15   22u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_16   23u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_17   24u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_18   25u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_19   26u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_20   27u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_21   28u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_22   29u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_23   30u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_24   31u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_25   32u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_26   33u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_A   34u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_B   35u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_01_Tx_Basic   36u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_01   37u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_02   38u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_03   39u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_04   40u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_05   41u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_06   42u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_07   43u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_08   44u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_09   45u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_10   46u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_11   47u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_12   48u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_13   49u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_14   50u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_15   51u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_16   52u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_17   53u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_18   54u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_19   55u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_20   56u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_21   57u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_22   58u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_23   59u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_24   60u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_25   61u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_26   62u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_02_Tx_Basic   63u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_01   64u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_02   65u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_03   66u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_04   67u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_05   68u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_06   69u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_07   70u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_08   71u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_09   72u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_10   73u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_11   74u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_12   75u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_13   76u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_14   77u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_15   78u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_16   79u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_17   80u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_18   81u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_19   82u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_20   83u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_21   84u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_22   85u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_23   86u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_24   87u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_25   88u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_26   89u  


#define CanIf_Hth_CustId_CanIf_HwTxHandle_CanNodeNum_03_Tx_Basic   90u  
 










/*CtrlConfig custId */





#define CanIf_Ctrl_CustId_CanIf_CanNodeNum_00       0u


#define CanIf_Ctrl_CustId_CanIf_CanNodeNum_01       1u


#define CanIf_Ctrl_CustId_CanIf_CanNodeNum_02       2u


#define CanIf_Ctrl_CustId_CanIf_CanNodeNum_03       3u
 








#endif /* CANIF_CFG_H */
