/**********************************************************************************************************************/
/* !Layer           : SRVL                                                                                            */
/* !Component       : CCPUSR                                                                                          */
/* !Description     : Project specific part of the CCP                                                                */
/*                                                                                                                    */
/* !File            : CCPUSR_CanIf_Cfg.c                                                                              */
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

#include "Std_Types.h"
#include "ComStack_Types.h"
#include "CanIf.h"
#include "CCP.h"
#include "CCP_Cfg.h"
#include "CCP_Usr.h"
#include "CCPUSR.h"
#include "CCPUSR_CanIf.h"
#include "CCPUSR_Cfg.h"

/**********************************************************************************************************************/
/* Check that Conditional Compilation options are defined                                                             */
/**********************************************************************************************************************/
#ifndef CCP_coACVD
   #error CCP_coACVD not defined
#endif
#ifndef CCP_coOPT_SRV_DAQ_LIST
   #error CCP_coOPT_SRV_DAQ_LIST not defined
#endif

/**********************************************************************************************************************/
/* DATA DEFINITION                                                                                                    */
/**********************************************************************************************************************/
#define CCP_START_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"

uint8 CCPUSR_au8RxMessageData[8];

#define CCP_STOP_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* FUNCTIONS DEFINITION                                                                                               */
/**********************************************************************************************************************/
#define CCP_START_SEC_CODE
#include "CCP_MemMap.h"

/**********************************************************************************************************************/
/* !Description: Send a frame to CanIf                                                                                */
/**********************************************************************************************************************/
LOCAL_INLINE void CCPUSR_vidSendMessage(PduIdType CanTxPduId, const uint8 * pu8DataToSend)
{
   PduInfoType strLocPduInfo;


   strLocPduInfo.SduDataPtr = (uint8 *)pu8DataToSend;
   strLocPduInfo.SduLength  = 8;
   CanIf_Transmit(CanTxPduId, &strLocPduInfo);
}

/**********************************************************************************************************************/
/* !Description: Send DTO answer Frame                                                                                */
/**********************************************************************************************************************/
void CCP_vidUsrTxCmdResp(const uint8 aku8Data[8])
{
   CCPUSR_vidSendMessage(CCPUSR_kaudtDtoMsgID[CCPUSR_udtGET_PDU_IDS_SET_IDX()], &aku8Data[0]);
}

#if (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD)
/**********************************************************************************************************************/
/* !Description: Send DAQ Frame                                                                                       */
/**********************************************************************************************************************/
void CCPUSR_vidSendDaqMessage(uint8 u8DaqId, const uint8 aku8Data[8])
{
   CCPUSR_vidSendMessage(CCPUSR_kaudtDaqMsgID[CCPUSR_udtGET_PDU_IDS_SET_IDX()][u8DaqId], &aku8Data[0]);
}
#endif /* (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) */

/**********************************************************************************************************************/
/* !Description: Called by Ccp to recover last received data                                                          */
/**********************************************************************************************************************/
void CCP_vidUsrRxCmd(uint8 au8Data[8])
{
   uint8_least u8LocByteIndex;


   for (u8LocByteIndex = 0; u8LocByteIndex < 8; u8LocByteIndex++)
   {
      au8Data[u8LocByteIndex] = CCPUSR_au8RxMessageData[u8LocByteIndex];
   }
}

/**********************************************************************************************************************/
/* !Description: Called by CanIf on CCP frame reception                                                               */
/**********************************************************************************************************************/
void CCPUSR_vidRxIndication_CRO(PduIdType RxPduId, const PduInfoType *PduInfoPtr)
{
   uint8_least u8LocCounter;


   /* No need to check PDU ID because this interface is called only */
   /* on the reception of CRO PDU (CANIF configuration)             */
   COMPILER_UNUSED_PARAMETER(RxPduId);

   /* Store received data */
   for (u8LocCounter = 0; u8LocCounter < 8; u8LocCounter++)
   {
      CCPUSR_au8RxMessageData[u8LocCounter] = PduInfoPtr->SduDataPtr[u8LocCounter];
   }
   /* Do the action by calling Ccp */
   CCP_vidMonr();
}

/**********************************************************************************************************************/
/* !Description: Called by CanIf on CCP frame transmission                                                            */
/**********************************************************************************************************************/
void CCPUSR_vidTxConfirmation_DTO(PduIdType TxPduId)
{
   /* No need to check PDU ID because this interface is called only */
   /* on the TX confirmation of DTO PDU (CANIF configuration)       */
   COMPILER_UNUSED_PARAMETER(TxPduId);

   if (CCPUSR_enuCalStoreStatus == CCPUSR_CAL_STORE_REQUESTED)
   {
      CCPUSR_enuCalStoreStatus = CCPUSR_CAL_STORE_WAIT_CONDITION;
   }
}

#define CCP_STOP_SEC_CODE
#include "CCP_MemMap.h"

/*---------------------------------------------------- end of file ---------------------------------------------------*/
