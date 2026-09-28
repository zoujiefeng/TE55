#ifndef CANIF_CDD_CBK_H
#define CANIF_CDD_CBK_H
#include "Can_Stub.h"
#include "Ccp_Cbk.h"

void CDD_CanSM_ControllerBusOff(uint8 ControllerId);

void OsekNmCanif_RxIndication(VAR(PduIdType, AUTOMATIC) id,
                              P2CONST(PduInfoType, TYPEDEF, PDUR_APPL_DATA) ptr);
void UDS_FunReq_RxInditation(VAR(PduIdType, AUTOMATIC) id,
                             P2CONST(PduInfoType, TYPEDEF, PDUR_APPL_DATA) ptr);
void UDS_PhyReq_RxInditation(VAR(PduIdType, AUTOMATIC) id,
                             P2CONST(PduInfoType, TYPEDEF, PDUR_APPL_DATA) ptr);
void CanIfCdd_RxIndication(VAR(PduIdType, AUTOMATIC) id,
                           P2CONST(PduInfoType, TYPEDEF, PDUR_APPL_DATA) ptr);
void Cdd_CanIfRxIndication(VAR(PduIdType, AUTOMATIC) id,
                           P2CONST(PduInfoType, TYPEDEF, PDUR_APPL_DATA) ptr);
extern void CANM_TxConfirmation(PduIdType pduId);
extern void CanIfCdd_TxConfirmation(PduIdType TxPduTargetPduId);
extern void Cdd_CanIfTxConfirmation(PduIdType TxPduTargetPduId);

void CanIf_Triger_TxCGW_BCAN(void);
void CanIf_Triger_TxCGW_501_BCAN(void);

#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_DiagResp        200

#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_Diag_FunReq     201
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_Diag_PhyReq     202

#define SET_CDD_CONF_RX_PDU_TARGET_ID(_node_, _id_, _network_)                  CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_##_node_##_##_id_##_##_network_
#define SET_CDD_CONF_TX_PDU_TARGET_ID(_id_, _network_)                          CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_##_id_##_##_network_
#define GEN_CANIF_CDD_RX_TX_CONFIG(_rxNode_, _rxId_, _rxNetwork_, _txId_, _txNetwork_, _vehCfgIdx_) \
    {                                                                                               \
        .rxPduId = SET_CDD_CONF_RX_PDU_TARGET_ID(_rxNode_, _rxId_, _rxNetwork_),                    \
        .txPduId = SET_CDD_CONF_TX_PDU_TARGET_ID(_txId_, _txNetwork_),                              \
        .VehCfgInfo = _vehCfgIdx_,                                                                 \
        .VehCfgInfoCnt = sizeof(_vehCfgIdx_) / sizeof(_vehCfgIdx_[0]),                              \
    }

typedef struct
{
    PduIdType rxPduId;
    PduIdType txPduId;
    uint8 *VehCfgInfo; // vehicle config info
    uint8 VehCfgInfoCnt;
} CanIf_Cdd_Rx_Tx_Group_Def;

/*Rx Pdu Config, used in canif_pbcfg.c, ID come from canif_cfg.h*/
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_85_ECAN     49  //equal to CanIfConf_CanIfRxPduCfg_EMS_85_ECAN_Can_Network_ECAN
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_251_ECAN    51
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_306_ECAN    52
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_88_ECAN     53
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_105_ECAN    54
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_17E_ECAN    55
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_14A_ECAN    56
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_VECU_305_ECAN   67
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_415_ECAN    68
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_85_PCAN     72
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_251_PCAN    75
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_305_PCAN    77
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_306_PCAN    78
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_88_PCAN     79
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_105_PCAN    80
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_17E_PCAN    81
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_14A_PCAN    82
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_EMS_415_PCAN    87


#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_CCP_RX_CRO    88
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_M2G1_179_Rx   89
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_M2G2_17A_Rx   90
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_G2M3_18B      91
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_G2M2_18A      92
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_CCP_TX_DAQ0_MCU  93
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_CCP_TX_DAQ1_MCU   94
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_CCP_TX_DAQ2_MCU   95
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_CCP_TX_DTO_MCU    96
#define CddConf_CddComIfUpperLayerRxPdu_CddComIfUpperLayerRxPdu_G2M1_189 97

/*Tx Pdu Config , used in canif_pbcfg.c*/
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_305_CCAN        131  //equal to CanIfConf_CanIfTxPduCfg_VIUL_305_CCAN_Can_Network_CCAN
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_88_CCAN         260
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_17E_CCAN        110
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_14A_CCAN        105
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_306_CCAN        132
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_85_ICAN         258
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_251_ICAN        117
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_306_ICAN        133
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_415_ICAN        221
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_88_ICAN         261
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_105_ICAN        97
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_CCP_TX_DAQ0     98 //need to modify later
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_CCP_TX_DAQ1     99 //same to pre
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_CCP_TX_DAQ2     100
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_CCP_TX_DTO      101
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_M2G1_179        102
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_M2G2_17A        103
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_G2M1_189_Rx     104
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_G2M2_18A_Rx     105
#define CddConf_CddComIfUpperLayerTxPdu_CddComIfUpperLayerTxPdu_G2M3_18B_Rx     106

#endif
