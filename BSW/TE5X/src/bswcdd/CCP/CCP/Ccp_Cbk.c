/******************************************************************************/
/* !Layer           : COM                                                     */
/* !Component       : Ccp                                                     */
/* !Description     : Ccp                                                     */
/*                                                                            */
/* !File            : Ccp_Cbk.c                                               */
/* !Description     : Callbacks of CCP                                        */
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

#include "Ccp_Cbk.h"
#include "CCPUSR_Cfg.h"
#include "CCPUSR_Canif.h"

#define CCP_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/* !FuncName    : Ccp_RxIndication                                            */
/*                                                                            */
/* !LastAuthor  :                                              */
/******************************************************************************/
void Ccp_RxIndication_CRO(PduIdType     RxPduId,
                          const PduInfoType * PduInfoPtr)
{
   CCPUSR_vidRxIndication_CRO(RxPduId, PduInfoPtr);
}

/******************************************************************************/
/* !FuncName    : Ccp_TxConfirmation                                          */
/*                                                                            */
/* !LastAuthor  :                                              */
/******************************************************************************/
/******************************************************************************/
void Ccp_TxConfirmation_100us (PduIdType TxPduId)
{
   CCPUSR_vidTxConfirmation_DAQ_SPY(TxPduId); 
}

void Ccp_TxConfirmation_1ms (PduIdType TxPduId)
{
   CCPUSR_vidTxConfirmation_DAQ_BASE_FAST(TxPduId);
}

void Ccp_TxConfirmation_10ms (PduIdType TxPduId)
{
   CCPUSR_vidTxConfirmation_DAQ_SLOW(TxPduId);
}

void Ccp_TxConfirmation_DTO (PduIdType TxPduId)
{
   CCPUSR_vidTxConfirmation_DTO(TxPduId);
}

#define CCP_STOP_SEC_CODE
#include "MemMap.h"
/*------------------------------- end of file --------------------------------*/
