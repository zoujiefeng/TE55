#ifndef _J1939_TP_H_
#define _J1939_TP_H_

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define J1939_STATE_VAR_BIT_SIZE      (sizeof(uint32) * 8)

#define J1939_BAM_FAULT_MAX_NO   10
#define J1939_FAULT_CODE_SIZE    4
#define J1939_LAMP_STATUS_SIZE   2

#define J1939_INVALID_SPN_NUM    (0xFFFFu)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct J1939_FaultCfg{
   uint16 u16FMI;
   uint16 u16SPNIdx;
   uint32 u32SPN;
}J1939_FaultCfg;

typedef struct J1939_EcuVarSet{
   uint8  u8TxFrameCnt;
   uint8  u8PackFrameNum;
   uint8  u8TgtMainState;
   uint8  u8CurMainState;
   uint8  u8CurFaultNum;
   uint16 u16TaskCnt;
}J1939_EcuVarSet;

typedef struct J1939_EcuCfg
{
   uint16 u16SPNNum;
   uint8  u8FillByte;

   uint8  *pau8SPNBuf;
   uint32 *pau32StateBuf;

   uint8  *pau8DM1TxBuf;
   uint8  *pau8BAMTxBuf;
   uint8  *pau8TPDTTxBuf;

   J1939_EcuVarSet *ptVarSet;

   void  (*vidSPNBufInit)(void);
   void  (*vidSendDM1)(void);
   void  (*vidSendBAM)(void);
   void  (*vidSendTPDT)(void);
}J1939_EcuCfg;

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void J1939_vidSPNHandler(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg);
extern void J1939_vidMainFunction(const J1939_EcuCfg * const kpktEcuCfg);
void J1939_vidDM1_Periodic_Send_Ctr_Func( boolean Sta ) ;

#endif /* _J1939_TP_H_ */
