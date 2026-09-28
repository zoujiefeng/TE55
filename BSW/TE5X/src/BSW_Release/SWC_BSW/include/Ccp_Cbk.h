/******************************************************************************/
/* !Layer           : COM                                                     */
/* !Component       : Ccp                                                     */
/* !Description     : Ccp                                                     */
/*                                                                            */
/* !File            : Ccp_Cbk.h                                               */
/* !Description     : header for Callbacks of CCP                             */
/*                                                                            */
/* !Reference       :                                                         */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT invt  all rights reserved                                        */
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#ifndef CCP_CBK_H
#define CCP_CBK_H

#include "CanIf.h"

#define CanIf_CCP_SPY   CanIfConf_CanIfTxPduCfg_CanIf_CcpPdu_CanNodeNum_00_Tx_Daq1  /* CAN Id 0x215 */
#define CanIf_CCP_FAST  CanIfConf_CanIfTxPduCfg_CanIf_CcpPdu_CanNodeNum_00_Tx_Daq0  /* CAN Id 0x216 */
#define CanIf_CCP_SLOW  CanIfConf_CanIfTxPduCfg_CanIf_CcpPdu_CanNodeNum_00_Tx_Daq2  /* CAN Id 0x217 */
#define CanIf_CCP_DTO   CanIfConf_CanIfTxPduCfg_CanIf_CcpPdu_CanNodeNum_00_Tx_Dto   /* CAN Id 0x318 */
#define CanIf_CCP_CRO 0 /* CCP_RX_317_791R  CAN Id 0x333 */
#define CanIf_CCP_DEVAID_SPY 0 /* CCP_TX_215_533T  CAN Id 0x1FF */
#define CanIf_CCP_DEVAID_FAST 1 /* CCP_TX_216_534T  CAN Id 0x200 */
#define CanIf_CCP_DEVAID_SLOW 2 /* CCP_TX_217_535T  CAN Id 0x201 */
#define CanIf_CCP_DEVAID_DTO 3 /* CCP_TX_318_792T  CAN Id 0x302 */
#define CanIf_CCP_DEVAID_CRO 0 /* CCP_RX_317_791R  CAN Id 0x301 */

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/
void Ccp_RxIndication_CRO    (PduIdType     RxPduId,
                              const PduInfoType * PduInfoPtr);
void Ccp_TxConfirmation_100us(PduIdType     TxPduId);
void Ccp_TxConfirmation_1ms  (PduIdType     TxPduId);
void Ccp_TxConfirmation_10ms (PduIdType     TxPduId);
void Ccp_TxConfirmation_DTO  (PduIdType     TxPduId);

/*******************************************************************************
**                    Imported  Function Declarations                         **
*******************************************************************************/
extern void CCP_UsrTxConf_DTO       (PduIdType CanTxPduId);
extern void CCP_UsrTxConf_Devaid_DTO(PduIdType CanTxPduId);
extern void CCP_UsrRxInd_CRO        (PduIdType RxPduId, PduInfoType * PduInfoPtr);
extern void CCP_UsrRxInd_Devaid_CRO (PduIdType RxPduId, PduInfoType * PduInfoPtr);
extern void CCP_vidUsrTxConfirmation_DAQ_BASE_FAST(void);
extern void CCP_vidUsrTxConfirmation_DAQ_SPY(void);
extern void CCP_vidUsrTxConfirmation_DAQ_SLOW(void);


#endif  /*END OF CCP_CBK_H */
