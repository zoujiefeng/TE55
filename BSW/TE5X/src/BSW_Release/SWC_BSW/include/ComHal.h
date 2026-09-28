#ifndef _COM_HAL_H_
#define _COM_HAL_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "RingQ.h"

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
enum{
   eCOMHAL_TX_PDUID_J1939_DM1_MCU1 = 0,
   eCOMHAL_TX_PDUID_J1939_BAM_MCU1,
   eCOMHAL_TX_PDUID_J1939_TPDT_MCU1,
   eCOMHAL_TX_PDUID_J1939_DM1_MCU2,
   eCOMHAL_TX_PDUID_J1939_BAM_MCU2,
   eCOMHAL_TX_PDUID_J1939_TPDT_MCU2,
   eCOMHAL_TX_PDUID_J1939_DM1_ACM,
   eCOMHAL_TX_PDUID_J1939_BAM_ACM,
   eCOMHAL_TX_PDUID_J1939_TPDT_ACM,
   eCOMHAL_TX_PDUID_J1939_DM1_EPS,
   eCOMHAL_TX_PDUID_J1939_BAM_EPS,
   eCOMHAL_TX_PDUID_J1939_TPDT_EPS,
   eCOMHAL_TX_PDUID_J1939_DM1_PDU,
   eCOMHAL_TX_PDUID_J1939_BAM_PDU,
   eCOMHAL_TX_PDUID_J1939_TPDT_PDU,
   
   eCOMHAL_MAX_TX_PDU_NO
};

extern const RingQ_ObjType ComHal_ktRingQObj;

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void ComHal_vidSendMessage(uint16 TxPduId, const uint8 * pu8DataToSend);
extern void ComHal_vidMsgMainfunction(void);

#endif /* _COM_HAL_H_ */

