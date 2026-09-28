#ifndef __FR_TYPES_H_
#define __FR_TYPES_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "FR_PublicTypes.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  
/* Buffer state definitions */
#define FR_BUFFER_INIT_STATUS_BITMASK             0x01
#define FR_BUFFER_TRIGGER_STATUS_BITMASK          0x02
#define FR_BUFFER_TRIGGER_ACCEPT_STATUS_BITMASK   0x04
#define FR_BUFFER_FULL_STATUS_BITMASK             0x08
#define FR_BUFFER_STORED_STATUS_BITMASK           0x10
#define FR_BUFFER_PROCESSED_STATUS_BITMASK        0x20
#define FR_BUFFER_ABNORMAL_RESET_STATUS_BITMASK   0x40
#define FR_BUFFER_BUSY_STATUS_BITMASK             0x80

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
/******************************************************************************/
/**************************  Fixed Type Definitions  **************************/
/******************************************************************************/
typedef union FR_uLockState{
   uint8 u8State;
   struct{
      uint8 bInitState : 1;
      uint8 bTriggerState : 1;
      uint8 bTriggerAcceptState : 1;
      uint8 bFullState : 1;
      uint8 bStoredState : 1;
      uint8 bProcessedState : 1;
      uint8 bAbnormalResetState : 1;
      uint8 bIsBusyState : 1;
   }tState;
}FR_uLockState, *PFR_uLockState;

typedef union FR_FixHead{
   uint8 au8Data[32];
   struct{
      uint16 u16Version;
      uint8  u8BlockCtr;
      
      FR_tExtDataOfFixHead tExtData;
   }tHead;
}FR_FixHead, *PFR_FixHead;

typedef struct FR_Cfg{
   uint8 u8NvmBlockNum;
   uint8 u8NvmStartIndex;

   uint8         *pu8State;
   PFR_FixHead    ptFixHead;
   PFR_uLockState puLockState;

   const FR_BankUserCfg *pktBankUserCfg;
}FR_Cfg;

typedef const FR_Cfg KFR_Cfg;
typedef KFR_Cfg * PKFR_Cfg;


#endif /* __FR_TYPES_H_ */

