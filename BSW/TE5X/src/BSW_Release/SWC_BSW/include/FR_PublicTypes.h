#ifndef __FR_PUBLIC_TYPES_H_
#define __FR_PUBLIC_TYPES_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct FR_tTimestamp{
   uint16 u16Year;
   uint8  u8Month;
   uint8  u8Day;
   uint8  u8Hour;
   uint8  u8Minute;
   uint8  u8Second;
}FR_tTimestamp;

typedef struct FR_tExtDataOfFixHead{
   FR_tTimestamp tTime;
   uint32 u32Start2ErrTime_ms;
   uint32 u32FactoryRunTime_s;
}FR_tExtDataOfFixHead;

typedef struct FR_BufIndex{
   volatile uint32 u32BufAddr;
   volatile uint32 u32W;
   volatile uint32 u32R;
   uint32 u32BufCtr;
}FR_BufIndex;

typedef struct FR_BufCfg{
   uint8   u8BufId;
   uint16  u16FPS;
   uint16  u16EventNum;
   uint16  u16EventSize;
   uint16  u16Period_us;

   void    (*vidGetEvent)(const uint32 ku32IndexInBuf);
}FR_BufCfg;

typedef struct FR_UserHeadCfg{
   void * pvUserBlockHandle;
   uint16 u16UserBlockSizeByByte;
   uint16 u16HeadSize;
}FR_UserHeadCfg;

typedef struct FR_BankUserIf{
   void    (*vidGetUserHeadInfo)(const FR_UserHeadCfg * const kpktCfg);
   void    (*vidGetExtDataOfFixHead)(FR_tExtDataOfFixHead * const kptData);
   boolean (*bFaultIsOccurred)(void);
   boolean (*bExtStoreCondIsMet)(boolean * const kpbResetCmd);
   boolean (*bUpdateReqIsAllowed)(void);
}FR_BankUserIf;

typedef struct FR_BankUserCfg{
   uint8   u8BufNum;
   uint16  u16BufTotalSize;
   float32 f32RunTimeBeforeFault_S;
   
   void                 *pvInputBuf;
   FR_BufIndex          *patIndexSet;

   const FR_BufCfg      *pktBufCfgSet;
   const FR_BankUserIf  *pktBankUserIf;
   const FR_UserHeadCfg *pktUserHeadCfg;
}FR_BankUserCfg;

#endif /* __FR_PUBLIC_TYPES_H_ */

