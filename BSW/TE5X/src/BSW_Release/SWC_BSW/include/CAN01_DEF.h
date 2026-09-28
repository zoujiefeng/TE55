#ifndef __CAN01_DEF_H_
#define __CAN01_DEF_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

#define BSW_CALIB_START_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"
extern CONST(boolean, BSW_CALIB) CAN01_bE2ERxValidC;
#define BSW_CALIB_STOP_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"

#define BSW_CALIB_START_SEC_CONST_8
#include "BSWSRV_MemMap.h"
extern CONST(uint8, BSW_CALIB) CAN01_u8ChecksumErrThdC;
extern CONST(uint8, BSW_CALIB) CAN01_u8RCUnchgErrThdC;
extern CONST(uint8, BSW_CALIB) CAN01_u8RcJumpErrThdC;
extern CONST(uint8, BSW_CALIB) CAN01_u8Rx6RcErrThdC;
extern CONST(uint8, BSW_CALIB) CAN01_u8RcErrRecThdC;
#define BSW_CALIB_STOP_SEC_CONST_8
#include "BSWSRV_MemMap.h"

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/
#define BSW_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern boolean BSW_bRxTOutFlag_Can01_Rx01;
extern boolean BSW_bRxTOutFlag_Can01_Rx02;
extern boolean BSW_bRxTOutFlag_Can01_Rx03;
extern boolean BSW_bRxTOutFlag_Can01_Rx04;
extern boolean BSW_bRxTOutFlag_Can01_Rx05;
extern boolean BSW_bRxTOutFlag_Can01_Rx06;
extern boolean BSW_bRxTOutFlag_Can01_Rx07;
extern boolean BSW_bRxTOutFlag_Can01_Rx08;
extern boolean BSW_bRxTOutFlag_Can01_Rx09;
extern boolean BSW_bRxTOutFlag_Can01_Rx10;
extern boolean BSW_bRxTOutFlag_Can01_Rx11;
extern boolean BSW_bRxTOutFlag_Can01_Rx12;
extern boolean BSW_bRxTOutFlag_Can01_Rx13;
extern boolean BSW_bRxTOutFlag_Can01_Rx14;
extern boolean BSW_bRxTOutFlag_Can01_Rx15;
extern boolean BSW_bRxTOutFlag_Can01_Rx16;
extern boolean BSW_bRxTOutFlag_Can01_Rx17;
extern boolean BSW_bRxTOutFlag_Can01_Rx18;
extern boolean BSW_bRxTOutFlag_Can01_Rx19;
extern boolean BSW_bRxTOutFlag_Can01_Rx20;
extern boolean BSW_bRxTOutFlag_Can01_Rx21;
extern boolean BSW_bRxTOutFlag_Can01_Rx22;
extern boolean BSW_bRxTOutFlag_Can01_Rx23;
extern boolean BSW_bRxTOutFlag_Can01_Rx24;
extern boolean BSW_bRxTOutFlag_Can01_Rx25;
extern boolean BSW_bRxTOutFlag_Can01_Rx26;
extern boolean BSW_bRxTOutFlag_Can01_Rx27;
extern boolean BSW_bRxTOutFlag_Can01_Rx28;
extern boolean BSW_bRxTOutFlag_Can01_Rx29;
extern boolean BSW_bRxTOutFlag_Can01_Rx30;
extern boolean BSW_bRxTOutFlag_Can01_Rx31;
extern boolean BSW_bRxTOutFlag_Can01_Rx32;
extern boolean BSW_bRxTOutFlag_Can01_Rx33;
extern boolean BSW_bRxTOutFlag_Can01_Rx34;
extern boolean BSW_bRxTOutFlag_Can01_Rx35;
extern boolean BSW_bRxTOutFlag_Can01_Rx36;
extern boolean BSW_bRxTOutFlag_Can01_Rx37;
extern boolean BSW_bRxTOutFlag_Can01_Rx38;
extern boolean BSW_bRxTOutFlag_Can01_Rx39;
extern boolean BSW_bRxTOutFlag_Can01_Rx40;

extern boolean BSW_bMsgValidState_Can01_Rx01;
extern boolean BSW_bMsgValidState_Can01_Rx02;
extern boolean BSW_bMsgValidState_Can01_Rx03;
extern boolean BSW_bMsgValidState_Can01_Rx04;
extern boolean BSW_bMsgValidState_Can01_Rx05;
extern boolean BSW_bMsgValidState_Can01_Rx06;
extern boolean BSW_bMsgValidState_Can01_Rx07;
extern boolean BSW_bMsgValidState_Can01_Rx08;
extern boolean BSW_bMsgValidState_Can01_Rx09;
extern boolean BSW_bMsgValidState_Can01_Rx10;
extern boolean BSW_bMsgValidState_Can01_Rx11;
extern boolean BSW_bMsgValidState_Can01_Rx12;
extern boolean BSW_bMsgValidState_Can01_Rx13;
extern boolean BSW_bMsgValidState_Can01_Rx14;
extern boolean BSW_bMsgValidState_Can01_Rx15;
extern boolean BSW_bMsgValidState_Can01_Rx16;
extern boolean BSW_bMsgValidState_Can01_Rx17;
extern boolean BSW_bMsgValidState_Can01_Rx18;
extern boolean BSW_bMsgValidState_Can01_Rx19;
extern boolean BSW_bMsgValidState_Can01_Rx20;
extern boolean BSW_bMsgValidState_Can01_Rx21;
extern boolean BSW_bMsgValidState_Can01_Rx22;
extern boolean BSW_bMsgValidState_Can01_Rx23;
extern boolean BSW_bMsgValidState_Can01_Rx24;
extern boolean BSW_bMsgValidState_Can01_Rx25;
extern boolean BSW_bMsgValidState_Can01_Rx26;
extern boolean BSW_bMsgValidState_Can01_Rx27;
extern boolean BSW_bMsgValidState_Can01_Rx28;
extern boolean BSW_bMsgValidState_Can01_Rx29;
extern boolean BSW_bMsgValidState_Can01_Rx30;
extern boolean BSW_bMsgValidState_Can01_Rx31;
extern boolean BSW_bMsgValidState_Can01_Rx32;
extern boolean BSW_bMsgValidState_Can01_Rx33;
extern boolean BSW_bMsgValidState_Can01_Rx34;
extern boolean BSW_bMsgValidState_Can01_Rx35;
extern boolean BSW_bMsgValidState_Can01_Rx36;
extern boolean BSW_bMsgValidState_Can01_Rx37;
extern boolean BSW_bMsgValidState_Can01_Rx38;
extern boolean BSW_bMsgValidState_Can01_Rx39;
extern boolean BSW_bMsgValidState_Can01_Rx40;

extern VAR(boolean, BSW_VAR) CAN01_bCsumErrFlag_SGRx5Req;
extern VAR(boolean, BSW_VAR) CAN01_bRcErrFlag_SGRx5Req;
extern VAR(boolean, BSW_VAR) CAN01_bCsumErrFlag_SGRx6Req;
extern VAR(boolean, BSW_VAR) CAN01_bRcErrFlag_SGRx6Req;
extern VAR(boolean, BSW_VAR) CAN01_bCsumErrFlag_SGRx8Req;
extern VAR(boolean, BSW_VAR) CAN01_bRcErrFlag_SGRx8Req;
extern VAR(boolean, BSW_VAR) CAN01_bRcCsErrFlagReq;

extern VAR(uint8, BSW_VAR) CAN01_u8Rx5CsumErrCnt;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx5RcLast;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx5RollingCod;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx5RcErrCnt;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx5RcUnchangedErrCnt;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx6CsumErrCnt;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx6RcLast;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx6RollingCod;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx6RcErrCnt;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx6RcRecCnt;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx6RcUnchangedErrCnt;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx8CsumErrCnt;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx8RcLast;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx8RollingCod;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx8RcErrCnt;
extern VAR(uint8, BSW_VAR) CAN01_u8Rx8RcUnchangedErrCnt;

#define BSW_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"
extern void CAN01_vidInit(void);
#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

#endif /* __CAN01_DEF_H_ */
