
/*<VersionHead>
 * This Configuration File is generated using versions (automatically filled in) as listed below.
 *
 * $Generator__: PduR  / AR42.10.0.0                Module Package Version
 * $Editor_____: ISOLAR-A/B 9.2.1_9.2.1                Tool Version
 * $Model______: 2.3.0.4                ECU Parameter Definition Version
 *
 
 </VersionHead>*/

#include "PduR_PBcfg.h"
#include "PduR_UpIf.h"

#include "PduR_LoIfTT.h"

#include "PduR_LoIf.h"
#include "PduR_LoTp.h"

#include "PduR_UpTp.h"

#include "PduR_Mc.h"
#include "PduR_Gw.h"

#include "PduR_Gw_Cfg.h"
/* Generating PbCfg_c::PduR_UpIfToLo_PBcfg_c::upIf_To_Lo */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
#if defined(PDUR_CONFIG_SINGLE_IFTX_LO)
#define PduR_comToLo   NULL_PTR
#else
static const PduR_RT_UpToLo PduR_comToLo[] = { {
		CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_01,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_01*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_02,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_02*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_03,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_03*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_04,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_04*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_05,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_05*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_06,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_06*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_07,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_07*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_08,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_08*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_09,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_09*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_10,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_10*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_11,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_11*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_12,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_12*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_13,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_13*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_14,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_14*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_15,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_15*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_16,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_16*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_17,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_17*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_18,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_18*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_19,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_19*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_20,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_TxBasic_20*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_01,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_01*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_02,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_02*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_03,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_03*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_04,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_04*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_05,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_05*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_06,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_06*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_07,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_07*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_08,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_08*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_09,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_09*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_10,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_10*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_11,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_11*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_12,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_12*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_13,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_13*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_14,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_14*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_15,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_15*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_16,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_16*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_17,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_17*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_18,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_18*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_19,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_19*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_20,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_20*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_21,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_21*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_22,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_22*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_23,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_23*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_24,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_24*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_25,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_25*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_25_00,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_25_00*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_25_01,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_25_01*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_26,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_01_Tx_26*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_01,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_01*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_02,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_02*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_03,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_03*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_04,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_04*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_05,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_05*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_06,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_06*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_07,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_07*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_08,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_08*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_09,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_09*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_10,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_10*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_11,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_11*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_12,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_12*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_13,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_13*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_14,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_14*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_15,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_15*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_16,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_16*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_17,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_17*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_18,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_18*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_19,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_19*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_TxBasic_20,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_TxBasic_20*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_01,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_01*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_02,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_02*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_03,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_03*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_04,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_04*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_05,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_05*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_06,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_06*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_07,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_07*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_08,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_08*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_09,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_09*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_10,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_10*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_11,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_11*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_12,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_12*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_13,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_13*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_14,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_14*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_15,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_15*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_16,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_16*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_17,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_17*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_18,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_18*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_19,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_19*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_20,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_20*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_21,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_21*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_22,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_22*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_23,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_23*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_24,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_24*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_25,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_25*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_02_Tx_26,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_02_Tx_26*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_01,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_01*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_02,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_02*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_03,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_03*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_04,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_04*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_05,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_05*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_06,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_06*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_07,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_07*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_08,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_08*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_09,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_09*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_10,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_10*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_11,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_11*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_12,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_12*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_13,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_13*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_14,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_14*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_15,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_15*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_16,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_16*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_17,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_17*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_18,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_18*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_19,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_19*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_TxBasic_20,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_TxBasic_20*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_01,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_01*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_02,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_02*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_03,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_03*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_04,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_04*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_05,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_05*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_06,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_06*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_07,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_07*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_08,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_08*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_09,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_09*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_10,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_10*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_11,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_11*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_12,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_12*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_13,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_13*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_14,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_14*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_15,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_15*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_16,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_16*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_17,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_17*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_18,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_18*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_19,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_19*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_20,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_20*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_21,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_21*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_22,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_22*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_23,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_23*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_24,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_24*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_25,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit }, /*CanPdu_Com2PduR_CanNodeNum_03_Tx_25*/
{ CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_03_Tx_26,
		(PduR_loTransmitFP) PduR_RF_CanIf_Transmit,
		(PduR_loCancelTransmitFP) PduR_IH_CancelTransmit } /*CanPdu_Com2PduR_CanNodeNum_03_Tx_26*/

};
#endif /* PDUR_CONFIG_SINGLE_IFTX_LO */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduIdType PduR_ComToLoMapTable[] = {

/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_01 0 */
0,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_02 1 */
1,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_03 2 */
2,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_04 3 */
3,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_05 4 */
4,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_06 5 */
5,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_07 6 */
6,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_08 7 */
7,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_09 8 */
8,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_10 9 */
9,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_11 10 */
10,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_12 11 */
11,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_13 12 */
12,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_14 13 */
13,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_15 14 */
14,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_16 15 */
15,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_17 16 */
16,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_18 17 */
17,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_19 18 */
18,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_TxBasic_20 19 */
19,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_01 20 */
20,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_02 21 */
21,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_03 22 */
22,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_04 23 */
23,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_05 24 */
24,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_06 25 */
25,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_07 26 */
26,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_08 27 */
27,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_09 28 */
28,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_10 29 */
29,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_11 30 */
30,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_12 31 */
31,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_13 32 */
32,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_14 33 */
33,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_15 34 */
34,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_16 35 */
35,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_17 36 */
36,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_18 37 */
37,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_19 38 */
38,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_20 39 */
39,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_21 40 */
40,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_22 41 */
41,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_23 42 */
42,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_24 43 */
43,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_25 44 */
44,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_25_00 45 */
45,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_25_01 46 */
46,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_01_Tx_26 47 */
47,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_01 48 */
48,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_02 49 */
49,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_03 50 */
50,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_04 51 */
51,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_05 52 */
52,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_06 53 */
53,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_07 54 */
54,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_08 55 */
55,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_09 56 */
56,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_10 57 */
57,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_11 58 */
58,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_12 59 */
59,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_13 60 */
60,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_14 61 */
61,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_15 62 */
62,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_16 63 */
63,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_17 64 */
64,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_18 65 */
65,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_19 66 */
66,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_TxBasic_20 67 */
67,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_01 68 */
68,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_02 69 */
69,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_03 70 */
70,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_04 71 */
71,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_05 72 */
72,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_06 73 */
73,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_07 74 */
74,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_08 75 */
75,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_09 76 */
76,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_10 77 */
77,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_11 78 */
78,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_12 79 */
79,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_13 80 */
80,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_14 81 */
81,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_15 82 */
82,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_16 83 */
83,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_17 84 */
84,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_18 85 */
85,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_19 86 */
86,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_20 87 */
87,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_21 88 */
88,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_22 89 */
89,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_23 90 */
90,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_24 91 */
91,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_25 92 */
92,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_02_Tx_26 93 */
93,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_01 94 */
94,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_02 95 */
95,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_03 96 */
96,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_04 97 */
97,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_05 98 */
98,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_06 99 */
99,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_07 100 */
100,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_08 101 */
101,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_09 102 */
102,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_10 103 */
103,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_11 104 */
104,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_12 105 */
105,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_13 106 */
106,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_14 107 */
107,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_15 108 */
108,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_16 109 */
109,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_17 110 */
110,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_18 111 */
111,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_19 112 */
112,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_TxBasic_20 113 */
113,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_01 114 */
114,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_02 115 */
115,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_03 116 */
116,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_04 117 */
117,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_05 118 */
118,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_06 119 */
119,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_07 120 */
120,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_08 121 */
121,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_09 122 */
122,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_10 123 */
123,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_11 124 */
124,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_12 125 */
125,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_13 126 */
126,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_14 127 */
127,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_15 128 */
128,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_16 129 */
129,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_17 130 */
130,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_18 131 */
131,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_19 132 */
132,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_20 133 */
133,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_21 134 */
134,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_22 135 */
135,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_23 136 */
136,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_24 137 */
137,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_25 138 */
138,
/*PduR_CanMsg_Com2CanIf_CanNodeNum_03_Tx_26 139 */
139 };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
/* Generating PbCfg_c::PduR_UpTpToLo_PBcfg_c::upTp_To_Lo */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
#if defined(PDUR_CONFIG_SINGLE_TPTX_LO)
#define PduR_DcmToLo NULL_PTR
#else
static const PduR_RT_UpToLo PduR_DcmToLo[] =
		{
				{
						CanTpConf_CanTpTxNSdu_Diag_Physical_response_Can_Network_CANNODE_0_Phys_PduR2CanTp,
						(PduR_loTransmitFP) PduR_RF_CanTp_Transmit,
						(PduR_loCancelTransmitFP) PduR_RF_CanTp_CancelTransmit } /*DcmPdu_Dcm2PduR_CanNodeNum_01_PhyResponse*/

		};
#endif /* PDUR_CONFIG_SINGLE_IFTX_LO */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduIdType PduR_DcmToLoMapTable[] = {

/*PduR_DcmMsg_Dcm2CanTp_CanNodeNum_01_PhyResponse 0 */
0 };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
/* Generating PbCfg_c::PduR_LoIfRxToUp_PBcfg_c::loIfRx_To_Up */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
#if defined(PDUR_CONFIG_SINGLE_IFRX)
#define PduR_CanIfRxToUp   NULL_PTR
#else
static const PduR_RT_LoIfRxToUp PduR_CanIfRxToUp[] = {

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_01,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_01*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_02,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_02*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_03,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_03*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_04,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_04*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_05,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_05*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_06,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_06*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_07,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_07*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_08,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_08*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_09,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_09*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_10,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_10*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_11,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_11*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_12,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_12*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_13,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_13*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_14,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_14*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_15,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_15*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_16,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_16*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_17,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_17*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_18,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_18*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_19,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_19*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_20,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_20*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_21,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_21*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_22,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_22*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_23,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_23*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_24,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_24*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_25,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_25*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_26,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_26*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_27,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_27*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_28,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_28*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_29,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_29*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_30,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_30*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_31,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_31*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_32,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_32*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_33,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_33*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_34,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_34*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_35,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_35*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_36,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_36*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_37,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_37*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_38,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_38*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_39,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_39*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Rx_40,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_01_Rx_40*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_01,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_01*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_02,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_02*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_03,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_03*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_04,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_04*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_05,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_05*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_06,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_06*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_07,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_07*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_08,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_08*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_09,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_09*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_10,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_10*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_11,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_11*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_12,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_12*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_13,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_13*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_14,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_14*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_15,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_15*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_16,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_16*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_17,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_17*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_18,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_18*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_19,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_19*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_20,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_20*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_21,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_21*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_22,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_22*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_23,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_23*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_24,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_24*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_25,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_25*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_26,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_26*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_27,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_27*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_28,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_28*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_29,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_29*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_30,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_30*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_31,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_31*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_32,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_32*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_33,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_33*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_34,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_34*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_35,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_35*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_36,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_36*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_37,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_37*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_38,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_38*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_39,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_39*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Rx_40,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_02_Rx_40*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_01,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_01*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_02,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_02*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_03,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_03*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_04,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_04*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_05,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_05*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_06,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_06*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_07,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_07*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_08,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_08*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_09,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_09*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_10,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_10*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_11,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_11*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_12,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_12*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_13,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_13*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_14,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_14*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_15,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_15*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_16,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_16*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_17,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_17*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_18,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_18*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_19,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_19*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_20,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_20*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_21,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_21*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_22,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_22*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_23,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_23*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_24,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_24*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_25,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_25*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_26,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_26*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_27,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_27*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_28,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_28*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_29,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_29*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_30,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_30*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_31,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_31*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_32,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_32*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_33,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_33*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_34,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_34*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_35,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_35*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_36,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_36*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_37,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_37*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_38,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_38*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_39,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication }, /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_39*/

{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Rx_40,
		(PduR_upIfRxIndicationFP) PduR_RF_Com_RxIndication } /*CanPdu_CanIf2PduR_CanNodeNum_03_Rx_40*/
};
#endif  /* PDUR_CONFIG_SINGLE_IFRX */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduIdType PduR_CanIfRxToUpMapTable[] = {

/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_01 0 */
0,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_02 1 */
1,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_03 2 */
2,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_04 3 */
3,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_05 4 */
4,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_06 5 */
5,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_07 6 */
6,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_08 7 */
7,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_09 8 */
8,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_10 9 */
9,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_11 10 */
10,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_12 11 */
11,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_13 12 */
12,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_14 13 */
13,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_15 14 */
14,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_16 15 */
15,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_17 16 */
16,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_18 17 */
17,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_19 18 */
18,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_20 19 */
19,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_21 20 */
20,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_22 21 */
21,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_23 22 */
22,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_24 23 */
23,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_25 24 */
24,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_26 25 */
25,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_27 26 */
26,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_28 27 */
27,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_29 28 */
28,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_30 29 */
29,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_31 30 */
30,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_32 31 */
31,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_33 32 */
32,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_34 33 */
33,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_35 34 */
34,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_36 35 */
35,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_37 36 */
36,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_38 37 */
37,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_39 38 */
38,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_01_Rx_40 39 */
39,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_01 40 */
40,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_02 41 */
41,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_03 42 */
42,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_04 43 */
43,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_05 44 */
44,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_06 45 */
45,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_07 46 */
46,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_08 47 */
47,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_09 48 */
48,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_10 49 */
49,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_11 50 */
50,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_12 51 */
51,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_13 52 */
52,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_14 53 */
53,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_15 54 */
54,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_16 55 */
55,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_17 56 */
56,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_18 57 */
57,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_19 58 */
58,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_20 59 */
59,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_21 60 */
60,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_22 61 */
61,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_23 62 */
62,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_24 63 */
63,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_25 64 */
64,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_26 65 */
65,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_27 66 */
66,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_28 67 */
67,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_29 68 */
68,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_30 69 */
69,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_31 70 */
70,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_32 71 */
71,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_33 72 */
72,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_34 73 */
73,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_35 74 */
74,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_36 75 */
75,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_37 76 */
76,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_38 77 */
77,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_39 78 */
78,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_02_Rx_40 79 */
79,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_01 80 */
80,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_02 81 */
81,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_03 82 */
82,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_04 83 */
83,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_05 84 */
84,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_06 85 */
85,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_07 86 */
86,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_08 87 */
87,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_09 88 */
88,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_10 89 */
89,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_11 90 */
90,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_12 91 */
91,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_13 92 */
92,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_14 93 */
93,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_15 94 */
94,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_16 95 */
95,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_17 96 */
96,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_18 97 */
97,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_19 98 */
98,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_20 99 */
99,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_21 100 */
100,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_22 101 */
101,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_23 102 */
102,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_24 103 */
103,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_25 104 */
104,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_26 105 */
105,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_27 106 */
106,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_28 107 */
107,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_29 108 */
108,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_30 109 */
109,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_31 110 */
110,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_32 111 */
111,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_33 112 */
112,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_34 113 */
113,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_35 114 */
114,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_36 115 */
115,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_37 116 */
116,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_38 117 */
117,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_39 118 */
118,
/*PduR_CanMsg_CanIf2Com_CanNodeNum_03_Rx_40 119 */
119 };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* Generating PbCfg_c::PduR_LoIfDTxToUp_PBcfg_c::loIf_DTxToUp */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
#if defined(PDUR_CONFIG_SINGLE_IFTX_UP )
#define PduR_CanIfTxToUp NULL_PTR
#else

static const PduR_RT_LoIfTxToUp PduR_CanIfTxToUp[] = { {
		ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_01,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 0  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_01  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_01*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_02,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 1  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_02  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_02*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_03,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 2  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_03  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_03*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_04,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 3  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_04  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_04*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_05,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 4  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_05  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_05*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_06,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 5  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_06  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_06*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_07,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 6  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_07  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_07*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_08,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 7  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_08  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_08*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_09,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 8  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_09  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_09*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_10,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 9  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_10  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_10*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_11,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 10  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_11  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_11*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_12,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 11  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_12  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_12*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_13,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 12  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_13  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_13*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_14,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 13  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_14  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_14*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_15,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 14  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_15  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_15*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_16,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 15  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_16  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_16*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_17,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 16  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_17  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_17*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_18,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 17  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_18  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_18*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_19,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 18  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_19  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_19*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_TxBasic_20,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 19  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_TxBasic_20  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_TxBasic_20*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_01,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 20  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_01  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_01*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_02,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 21  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_02  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_02*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_03,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 22  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_03  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_03*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_04,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 23  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_04  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_04*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_05,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 24  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_05  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_05*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_06,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 25  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_06  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_06*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_07,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 26  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_07  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_07*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_08,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 27  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_08  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_08*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_09,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 28  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_09  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_09*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_10,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 29  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_10  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_10*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_11,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 30  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_11  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_11*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_12,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 31  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_12  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_12*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_13,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 32  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_13  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_13*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_14,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 33  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_14  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_14*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_15,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 34  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_15  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_15*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_16,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 35  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_16  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_16*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_17,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 36  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_17  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_17*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_18,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 37  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_18  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_18*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_19,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 38  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_19  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_19*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_20,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 39  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_20  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_20*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_21,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 40  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_21  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_21*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_22,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 41  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_22  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_22*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_23,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 42  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_23  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_23*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_24,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 43  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_24  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_24*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_25,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 44  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_25  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_25*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_25_00,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 45  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_25_00  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_25_00*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_25_01,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 46  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_25_01  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_25_01*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_01_Tx_26,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 47  SrcPdu: CanPdu_Com2PduR_CanNodeNum_01_Tx_26  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_01_Tx_26*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_01,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 48  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_01  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_01*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_02,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 49  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_02  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_02*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_03,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 50  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_03  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_03*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_04,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 51  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_04  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_04*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_05,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 52  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_05  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_05*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_06,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 53  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_06  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_06*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_07,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 54  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_07  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_07*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_08,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 55  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_08  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_08*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_09,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 56  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_09  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_09*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_10,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 57  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_10  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_10*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_11,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 58  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_11  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_11*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_12,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 59  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_12  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_12*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_13,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 60  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_13  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_13*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_14,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 61  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_14  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_14*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_15,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 62  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_15  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_15*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_16,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 63  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_16  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_16*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_17,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 64  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_17  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_17*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_18,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 65  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_18  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_18*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_19,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 66  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_19  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_19*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_TxBasic_20,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 67  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_TxBasic_20  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_TxBasic_20*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_01,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 68  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_01  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_01*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_02,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 69  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_02  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_02*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_03,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 70  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_03  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_03*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_04,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 71  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_04  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_04*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_05,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 72  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_05  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_05*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_06,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 73  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_06  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_06*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_07,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 74  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_07  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_07*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_08,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 75  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_08  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_08*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_09,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 76  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_09  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_09*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_10,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 77  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_10  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_10*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_11,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 78  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_11  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_11*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_12,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 79  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_12  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_12*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_13,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 80  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_13  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_13*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_14,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 81  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_14  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_14*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_15,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 82  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_15  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_15*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_16,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 83  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_16  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_16*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_17,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 84  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_17  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_17*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_18,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 85  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_18  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_18*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_19,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 86  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_19  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_19*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_20,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 87  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_20  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_20*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_21,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 88  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_21  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_21*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_22,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 89  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_22  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_22*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_23,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 90  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_23  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_23*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_24,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 91  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_24  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_24*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_25,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 92  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_25  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_25*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_02_Tx_26,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 93  SrcPdu: CanPdu_Com2PduR_CanNodeNum_02_Tx_26  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_02_Tx_26*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_01,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 94  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_01  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_01*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_02,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 95  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_02  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_02*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_03,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 96  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_03  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_03*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_04,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 97  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_04  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_04*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_05,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 98  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_05  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_05*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_06,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 99  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_06  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_06*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_07,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 100  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_07  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_07*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_08,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 101  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_08  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_08*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_09,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 102  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_09  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_09*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_10,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 103  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_10  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_10*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_11,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 104  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_11  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_11*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_12,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 105  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_12  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_12*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_13,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 106  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_13  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_13*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_14,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 107  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_14  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_14*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_15,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 108  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_15  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_15*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_16,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 109  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_16  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_16*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_17,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 110  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_17  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_17*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_18,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 111  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_18  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_18*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_19,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 112  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_19  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_19*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_TxBasic_20,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 113  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_TxBasic_20  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_TxBasic_20*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_01,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 114  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_01  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_01*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_02,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 115  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_02  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_02*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_03,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 116  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_03  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_03*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_04,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 117  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_04  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_04*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_05,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 118  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_05  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_05*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_06,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 119  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_06  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_06*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_07,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 120  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_07  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_07*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_08,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 121  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_08  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_08*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_09,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 122  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_09  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_09*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_10,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 123  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_10  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_10*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_11,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 124  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_11  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_11*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_12,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 125  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_12  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_12*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_13,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 126  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_13  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_13*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_14,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 127  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_14  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_14*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_15,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 128  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_15  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_15*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_16,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 129  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_16  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_16*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_17,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 130  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_17  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_17*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_18,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 131  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_18  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_18*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_19,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 132  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_19  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_19*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_20,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 133  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_20  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_20*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_21,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 134  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_21  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_21*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_22,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 135  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_22  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_22*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_23,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 136  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_23  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_23*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_24,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 137  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_24  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_24*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_25,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation }, /* Index: 138  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_25  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_25*/
{ ComConf_ComIPdu_Com_IPdu_CanNodeNum_03_Tx_26,
		(PduR_upIfTxConfirmationFP) PduR_RF_Com_TxConfirmation } /* Index: 139  SrcPdu: CanPdu_Com2PduR_CanNodeNum_03_Tx_26  DestPdu: CanPdu_PduR2CanIf_CanNodeNum_03_Tx_26*/
};
#endif  /* PDUR_CONFIG_SINGLE_IFTX_UP */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduIdType PduR_CanIfTxToUpMapTable[] = {

/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_01 0 */
0,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_02 1 */
1,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_03 2 */
2,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_04 3 */
3,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_05 4 */
4,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_06 5 */
5,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_07 6 */
6,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_08 7 */
7,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_09 8 */
8,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_10 9 */
9,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_11 10 */
10,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_12 11 */
11,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_13 12 */
12,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_14 13 */
13,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_15 14 */
14,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_16 15 */
15,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_17 16 */
16,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_18 17 */
17,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_19 18 */
18,
/*Can_PduR2CanIf_CanNodeNum_01_TxBasic_20 19 */
19,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_01 20 */
20,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_02 21 */
21,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_03 22 */
22,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_04 23 */
23,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_05 24 */
24,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_06 25 */
25,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_07 26 */
26,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_08 27 */
27,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_09 28 */
28,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_10 29 */
29,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_11 30 */
30,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_12 31 */
31,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_13 32 */
32,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_14 33 */
33,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_15 34 */
34,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_16 35 */
35,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_17 36 */
36,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_18 37 */
37,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_19 38 */
38,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_20 39 */
39,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_21 40 */
40,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_22 41 */
41,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_23 42 */
42,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_24 43 */
43,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_25 44 */
44,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_25_00 45 */
45,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_25_01 46 */
46,
/*Can_PduR2CanIf_CanNodeNum_01_Tx_26 47 */
47,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_01 48 */
48,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_02 49 */
49,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_03 50 */
50,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_04 51 */
51,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_05 52 */
52,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_06 53 */
53,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_07 54 */
54,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_08 55 */
55,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_09 56 */
56,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_10 57 */
57,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_11 58 */
58,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_12 59 */
59,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_13 60 */
60,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_14 61 */
61,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_15 62 */
62,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_16 63 */
63,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_17 64 */
64,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_18 65 */
65,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_19 66 */
66,
/*Can_PduR2CanIf_CanNodeNum_02_TxBasic_20 67 */
67,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_01 68 */
68,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_02 69 */
69,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_03 70 */
70,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_04 71 */
71,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_05 72 */
72,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_06 73 */
73,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_07 74 */
74,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_08 75 */
75,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_09 76 */
76,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_10 77 */
77,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_11 78 */
78,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_12 79 */
79,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_13 80 */
80,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_14 81 */
81,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_15 82 */
82,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_16 83 */
83,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_17 84 */
84,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_18 85 */
85,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_19 86 */
86,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_20 87 */
87,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_21 88 */
88,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_22 89 */
89,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_23 90 */
90,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_24 91 */
91,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_25 92 */
92,
/*Can_PduR2CanIf_CanNodeNum_02_Tx_26 93 */
93,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_01 94 */
94,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_02 95 */
95,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_03 96 */
96,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_04 97 */
97,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_05 98 */
98,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_06 99 */
99,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_07 100 */
100,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_08 101 */
101,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_09 102 */
102,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_10 103 */
103,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_11 104 */
104,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_12 105 */
105,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_13 106 */
106,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_14 107 */
107,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_15 108 */
108,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_16 109 */
109,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_17 110 */
110,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_18 111 */
111,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_19 112 */
112,
/*Can_PduR2CanIf_CanNodeNum_03_TxBasic_20 113 */
113,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_01 114 */
114,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_02 115 */
115,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_03 116 */
116,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_04 117 */
117,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_05 118 */
118,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_06 119 */
119,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_07 120 */
120,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_08 121 */
121,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_09 122 */
122,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_10 123 */
123,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_11 124 */
124,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_12 125 */
125,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_13 126 */
126,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_14 127 */
127,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_15 128 */
128,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_16 129 */
129,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_17 130 */
130,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_18 131 */
131,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_19 132 */
132,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_20 133 */
133,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_21 134 */
134,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_22 135 */
135,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_23 136 */
136,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_24 137 */
137,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_25 138 */
138,
/*Can_PduR2CanIf_CanNodeNum_03_Tx_26 139 */
139 };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* Generating PbCfg_c::PduR_LoIfTTxToUp_PBcfg_c::loIf_TTxToUp */

/* Generating PbCfg_c::PduR_LoTpRxToUp_PBcfg_c::loTpRx_To_Up */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
#if defined ( PDUR_CONFIG_SINGLE_TPRX )
#define PduR_CanTpRxToUp   NULL_PTR
#else
static const PduR_RT_LoTpRxToUp PduR_CanTpRxToUp[] = { {
		DcmConf_DcmDslProtocolRx_DcmPdu_PduR2Dcm_CanNodeNum_01_FunRequest,
		(PduR_upTpStartOfReceptionFP) PduR_RF_Dcm_StartOfReception,
		(PduR_upTpProvideRxBufFP) PduR_RF_Dcm_CopyRxData,
		(PduR_upTpRxIndicationFP) PduR_RF_Dcm_TpRxIndication }, /*DcmPdu_CanTp2PduR_CanNodeNum_01_FunRequest*/
{ DcmConf_DcmDslProtocolRx_DcmPdu_PduR2Dcm_CanNodeNum_01_PhyRequest,
		(PduR_upTpStartOfReceptionFP) PduR_RF_Dcm_StartOfReception,
		(PduR_upTpProvideRxBufFP) PduR_RF_Dcm_CopyRxData,
		(PduR_upTpRxIndicationFP) PduR_RF_Dcm_TpRxIndication } /*DcmPdu_CanTp2PduR_CanNodeNum_01_PhyRequest*/
};
#endif  /* PDUR_CONFIG_SINGLE_TPRX */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduIdType PduR_CanTpRxToUpMapTable[] = {

/*PduR_DcmMsg_CanTp2Dcm_CanNodeNum_01_FunRequest 0 */
0,
/*PduR_DcmMsg_CanTp2Dcm_CanNodeNum_01_PhyRequest 1 */
1 };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* Generating PbCfg_c::PduR_LoTpTxToUp_PBcfg_c::loTpTx_To_Up */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
#if defined(PDUR_CONFIG_SINGLE_TPTX_UP )
#define PduR_CanTpTxToUp NULL_PTR
#else
static const PduR_RT_LoTpTxToUp PduR_CanTpTxToUp[] = { {
		DcmConf_DcmDslProtocolTx_DcmPdu_Dcm2PduR_CanNodeNum_01_PhyResponse,
		(PduR_upTpProvideTxBufFP) PduR_RF_Dcm_CopyTxData,
		(PduR_upTpTxConfirmationFP) PduR_RF_Dcm_TpTxConfirmation } /*Index: 0 src: DcmPdu_Dcm2PduR_CanNodeNum_01_PhyResponse, dest : Dcm_PduR2CanTp_CanNodeNum_01_PhyResponse */
};
#endif  /* PDUR_CONFIG_SINGLE_TPTX_UP */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduIdType PduR_CanTpTxToUpMapTable[] = {

/*Dcm_PduR2CanTp_CanNodeNum_01_PhyResponse 0 */
0 };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* Generating PbCfg_c::PduR_Mc_UpTpToLo_PBcfg_c::mcUpTp_To_Lo */
/* Generating PbCfg_c::PduR_Mc_UpIfToLo_PBcfg_c::mcUpIf_To_Lo */

/* Generating PbCfg_c::PduR_Cdd_PBcfg_c::Xpand_Cdd_body */
/* Generating PbCfg_c::PduR_Mc_GwToLo_PBcfg_c::DisplayPduR_mcGwToLo */
/* Generating PbCfg_c::PduR_GwIfTx_PBcfg_c::display_GwIfTx */

/* Generating PbCfg_c::PduR_GwIf_PBcfg_c::display_GwIf */
/* Generating PbCfg_c::PduR_Gw_IfBuf_PBcfg_c::PduR_gw_Buf_If_structure */
/*****   __KW_COMMON   ***********/

/* Generating PbCfg_c::PduR_Rpg_PBcfg_c::display_PduR_RPG*/

#if defined(PDUR_MODE_DEPENDENT_ROUTING) && (PDUR_MODE_DEPENDENT_ROUTING != 0)



/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

static const PduR_RPGInfoType PduR_RPGInfo[] = {

    {
     NULL_PTR,
     NULL_PTR,
     PDUR_RPGID_NULL,
     0,
     0
    },   /* PDUR_RPGID_NULL */

    
};

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
/* ------------------------------------------------------------------------ */
/* Begin section for constants */


/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_8

#include "PduR_MemMap.h"

/* Routing enable disbale flag to control routing. */
const boolean PduR_RPG_EnRouting[] =
{
  TRUE, /*PDUR_RPGID_NULL*/
  
};

/* ------------------------------------------------------------------------ */
/* End section for constants */


/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_8

#include "PduR_MemMap.h"

#endif /* #if defined(PDUR_MODE_DEPENDENT_ROUTING) && (PDUR_MODE_DEPENDENT_ROUTING != 0) */

/* Generating PbCfg_c::PduR_Gw_TpBuf_PBcfg_c::PduR_gw_Buf_TP_structure*/

/*****   __KW_COMMON   ***********/
/* Generating PbCfg_c::PduR_GwTp_PBcfg_c::display_GwTp */

/* Generating PbCfg_c::PduR_RpgRxTp_PBcfg_c::display_RpgRxTp */

/* Generating PbCfg_c::PduR_PbConfigType_PBcfg_c::PduR_BswLoCfg */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduR_LoTpConfig PduR_LoTpCfg[] = { { PduR_CanTpRxToUp, /* CanTp */
PduR_CanTpTxToUp, /* CanTp */
PduR_CanTpTxToUpMapTable, PduR_CanTpRxToUpMapTable, 2, /* CanTp RxToUp Number Of Entries*/
1 /* CanTp TxToUp Number Of Entries*/
} };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduR_LoIfDConfig PduR_LoIfDCfg[] = { { PduR_CanIfRxToUp, /* CanIf */
PduR_CanIfTxToUp, /* CanIf */
PduR_CanIfTxToUpMapTable, PduR_CanIfRxToUpMapTable, 120, /* CanIf RxToUp NrEntries*/
140 /* CanIf TxToUp NrEntries*/
} };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduR_LoIfTTConfig PduR_LoIfTTCfg[] = { { NULL_PTR, /* CanNm */
NULL_PTR, /* CanNm */
NULL_PTR, NULL_PTR, 0, /* CanNm */
0 /* CanNm */
} };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* Generating PbCfg_c::PduR_PbConfigType_PBcfg_c::PduR_BswUpCfg */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduR_UpConfig PduR_UpTpCfg[] = { { NULL_PTR, /* mcDcmToLo */
		PduR_DcmToLo, /* Dcm */
		PduR_DcmToLoMapTable, 1 /* Dcm */
} };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
static const PduR_UpConfig PduR_UpIfCfg[] = { { NULL_PTR, /* mcComToLo */
		PduR_comToLo, /* Com */
		PduR_ComToLoMapTable, 140 /* Com */
} };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* Generating PbCfg_c::PduR_Cdd_PBcfg_c::PduR_CddCfg */

/* Generating PbCfg_c::PduR_PbConfigType_PBcfg_c::PduR_BswUpToLoRxCfg */

/*
 These structures are generated by the code generator tool. Respective module's function names are generated
 only if it is present in the PduR_PbCfg.c file in any one of the entries.
 */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

const PduR_loTransmitFuncType PduR_loTransmitTable[] = { {
		&PduR_RF_CanIf_Transmit_Func }, { &PduR_RF_CanTp_Transmit_Func } };

const PduR_loCancelReceiveFuncType PduR_loCancelRxTable[] = { { NULL_PTR } };

const PduR_loCancelTransmitFuncType PduR_loCancelTransmitTable[] = { {
		&PduR_IH_CancelTransmit_Func }, { &PduR_RF_CanTp_CancelTransmit_Func } };

const PduR_upIfRxIndicationFuncType PduR_upIfRxIndicationTable[] = { {
		&PduR_RF_Com_RxIndication_Func } };

const PduR_upIfTxConfirmationFuncType PduR_upIfTxConfirmationTable[] = { {
		&PduR_RF_Com_TxConfirmation_Func } };

const PduR_upIfTriggerTxFuncType PduR_upIfTriggerTxTable[] = { { NULL_PTR } };

const PduR_upTpCopyRxDataFuncType PduR_upTpCopyRxDataTable[] = { {
		&PduR_RF_Dcm_CopyRxData_Func } };

const PduR_upTpStartOfReceptionFuncType PduR_upTpStartOfReceptionTable[] = { {
		&PduR_RF_Dcm_StartOfReception_Func } };

const PduR_upTpRxIndicationFuncType PduR_upTpRxIndicationTable[] = { {
		&PduR_RF_Dcm_TpRxIndication_Func } };

const PduR_upTpCopyTxDataFuncType PduR_upTpCopyTxDataTable[] = { {
		&PduR_RF_Dcm_CopyTxData_Func } };

const PduR_upTpTxConfirmationFuncType PduR_upTpTxConfirmationTable[] = { {
		&PduR_RF_Dcm_TpTxConfirmation_Func } };

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
/* Generating PbCfg_c::PduR_PbConfigType_PBcfg_c::pdur_PBConfigType */

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
const PduR_PBConfigType PduR_GlobalPBConfig = {
		(const PduR_CddConfig*) NULL_PTR, /* PduR_CddCfg */
		(const PduR_LoTpConfig*) PduR_LoTpCfg, /* Pointer to lowerlayer Tp config structure */
		(const PduR_LoIfDConfig*) PduR_LoIfDCfg, /* Pointer to Direct lowerlayer If config structure */
		(const PduR_LoIfTTConfig*) PduR_LoIfTTCfg, /* Pointer to TT lowerlayer If config structure */
		(const PduR_UpConfig*) PduR_UpIfCfg, /* Pointer to Upperlayer If config structure */

		(const PduR_UpConfig*) PduR_UpTpCfg, /* Pointer to Upperlayer Tp config structure */
		(const PduR_MT_UpToLo*) NULL_PTR, /* mcGwToLo */
		(const PduR_GT_IfTx*) NULL_PTR, /* gwIfTx */
		(const PduR_GT_If*) NULL_PTR, /* gwIf        */
		(const PduR_GT_Tp*) NULL_PTR, /* GwTp */
		(const PduR_RPG_LoTpRxToUp*) NULL_PTR, /* rpgTp */
#if defined(PDUR_TPGATEWAY_SUPPORT) && (PDUR_TPGATEWAY_SUPPORT != STD_OFF)
    (const PduR_GwTp_SessionListType * ) NULL_PTR, /*PduR_TpSession_Dynamic*/
#endif
#if defined(PDUR_MULTICAST_TO_IF_SUPPORT) && (PDUR_MULTICAST_TO_IF_SUPPORT != 0)
     (const PduR_UpIfTxConf_Config * ) PduR_UpIfTxConf_ConfigList,
#endif
#if defined(PDUR_MODE_DEPENDENT_ROUTING) && (PDUR_MODE_DEPENDENT_ROUTING != 0)
     (const PduR_RPGInfoType * )        PduR_RPGInfo,        /* RoutingPathGroup ConfigInfo */
     (const boolean * )   PduR_RPG_EnRouting,  /* RoutingControl StatusInfo */
     (boolean * )  PduR_RPG_Status,        /*RAM status for each RPG*/
     (const PduR_RoutingPathGroupIdType *) PduR_RPGIdMappingTab,
     (PduR_RoutingPathGroupIdType)                              0,        /* Number of RPGs.*/
#endif
		(const PduR_UpTpToLoTpRxConfig*) NULL_PTR, /* Pointer to PduR_UpTpToLoTpRxConfig structure for supporting Cancel Receive API */
		0, /* PDUR_CONFIGURATION_ID */
		0, /*Total no of Gw Tp Routing Path*/
		0, /*Total no of Gw If Routing path*/
};

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"
const PduR_ConfigType PduR_Config = { NULL_PTR /* Void pointer initialised with null pointer as PduR_Config will not be used in case of PDUR_VARIANT_PRE_COMPILE */
};

/* ------------------------------------------------------------------------ */
/* Begin section for constants */

#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED

#include "PduR_MemMap.h"

