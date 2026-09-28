/**********************************************************************************************************************/
/* !Layer           : SRVL                                                                                            */
/*                                                                                                                    */
/* !Component       : CCPUSR                                                                                          */
/* !Description     : Project specific part of the CCP                                                                */
/*                                                                                                                    */
/* !File            : CCPUSR_CanIf.h                                                                                  */
/* !Description     : CCPUSR CanIf management                                                                         */
/*                                                                                                                    */
/* !Reference       :                                                                                                 */
/*                                                                                                                    */
/* Coding language  : C                                                                                               */
/*                                                                                                                    */
/* COPYRIGHT invt  all rights reserved                                                                                */
/**********************************************************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 **********************************************************************************************************************/

#ifndef CCPUSR_CANIF_H
#define CCPUSR_CANIF_H

#include "ComStack_Types.h"
#include "CCPUSR_Cfg.h"

/**********************************************************************************************************************/
/* FUNCTIONS DECLARATION                                                                                              */
/**********************************************************************************************************************/
#define CCP_START_SEC_CODE
#include "CCP_MemMap.h"

void CCPUSR_vidTxConfirmation_DTO(PduIdType TxPduId);
void CCPUSR_vidRxIndication_CRO(PduIdType RxPduId, const PduInfoType *PduInfoPtr);

#define CCP_STOP_SEC_CODE
#include "CCP_MemMap.h"

#endif /* CCPUSR_CANIF_H */

/*---------------------------------------------------- end of file ---------------------------------------------------*/
