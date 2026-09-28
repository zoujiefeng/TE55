/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "CAN01_DEF.h"

#define BSW_CALIB_START_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"
CONST(boolean, BSW_CALIB) CAN01_bE2ERxValidC = TRUE;
#define BSW_CALIB_STOP_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"

#define BSW_CALIB_START_SEC_CONST_8
#include "BSWSRV_MemMap.h"
CONST(uint8, BSW_CALIB) CAN01_u8ChecksumErrThdC = 5;
CONST(uint8, BSW_CALIB) CAN01_u8RCUnchgErrThdC = 5;
CONST(uint8, BSW_CALIB) CAN01_u8RcJumpErrThdC = 3;
CONST(uint8, BSW_CALIB) CAN01_u8Rx6RcErrThdC = 10;
CONST(uint8, BSW_CALIB) CAN01_u8RcErrRecThdC = 5;
#define BSW_CALIB_STOP_SEC_CONST_8
#include "BSWSRV_MemMap.h"

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/
#define BSW_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx01 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx02 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx03 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx04 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx05 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx06 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx07 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx08 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx09 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx10 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx11 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx12 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx13 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx14 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx15 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx16 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx17 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx18 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx19 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx20 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx21 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx22 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx23 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx24 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx25 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx26 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx27 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx28 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx29 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx30 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx31 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx32 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx33 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx34 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx35 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx36 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx37 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx38 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx39 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can01_Rx40 = FALSE;

VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx01 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx02 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx03 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx04 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx05 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx06 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx07 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx08 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx09 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx10 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx11 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx12 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx13 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx14 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx15 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx16 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx17 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx18 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx19 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx20 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx21 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx22 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx23 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx24 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx25 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx26 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx27 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx28 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx29 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx30 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx31 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx32 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx33 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx34 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx35 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx36 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx37 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx38 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx39 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can01_Rx40 = FALSE;

VAR(boolean, BSW_VAR) CAN01_bCsumErrFlag_SGRx5Req;
VAR(boolean, BSW_VAR) CAN01_bRcErrFlag_SGRx5Req;
VAR(boolean, BSW_VAR) CAN01_bCsumErrFlag_SGRx6Req;
VAR(boolean, BSW_VAR) CAN01_bRcErrFlag_SGRx6Req;
VAR(boolean, BSW_VAR) CAN01_bCsumErrFlag_SGRx8Req;
VAR(boolean, BSW_VAR) CAN01_bRcErrFlag_SGRx8Req;
VAR(boolean, BSW_VAR) CAN01_bRcCsErrFlagReq;

VAR(uint8, BSW_VAR) CAN01_u8Rx5CsumErrCnt;
VAR(uint8, BSW_VAR) CAN01_u8Rx5RcLast;
VAR(uint8, BSW_VAR) CAN01_u8Rx5RollingCod;
VAR(uint8, BSW_VAR) CAN01_u8Rx5RcErrCnt;
VAR(uint8, BSW_VAR) CAN01_u8Rx5RcUnchangedErrCnt;
VAR(uint8, BSW_VAR) CAN01_u8Rx6CsumErrCnt;
VAR(uint8, BSW_VAR) CAN01_u8Rx6RcLast;
VAR(uint8, BSW_VAR) CAN01_u8Rx6RollingCod;
VAR(uint8, BSW_VAR) CAN01_u8Rx6RcErrCnt;
VAR(uint8, BSW_VAR) CAN01_u8Rx6RcRecCnt;
VAR(uint8, BSW_VAR) CAN01_u8Rx6RcUnchangedErrCnt;
VAR(uint8, BSW_VAR) CAN01_u8Rx8CsumErrCnt;
VAR(uint8, BSW_VAR) CAN01_u8Rx8RcLast;
VAR(uint8, BSW_VAR) CAN01_u8Rx8RollingCod;
VAR(uint8, BSW_VAR) CAN01_u8Rx8RcErrCnt;
VAR(uint8, BSW_VAR) CAN01_u8Rx8RcUnchangedErrCnt;

#define BSW_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"
void CAN01_vidInit(void)
{
   BSW_bRxTOutFlag_Can01_Rx01 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx02 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx03 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx04 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx05 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx06 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx07 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx08 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx09 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx10 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx11 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx12 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx13 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx14 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx15 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx16 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx17 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx18 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx19 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx20 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx21 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx22 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx23 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx24 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx25 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx26 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx27 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx28 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx29 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx30 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx31 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx32 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx33 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx34 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx35 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx36 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx37 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx38 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx39 = FALSE;
   BSW_bRxTOutFlag_Can01_Rx40 = FALSE;

   BSW_bMsgValidState_Can01_Rx01 = FALSE;
   BSW_bMsgValidState_Can01_Rx02 = FALSE;
   BSW_bMsgValidState_Can01_Rx03 = FALSE;
   BSW_bMsgValidState_Can01_Rx04 = FALSE;
   BSW_bMsgValidState_Can01_Rx05 = FALSE;
   BSW_bMsgValidState_Can01_Rx06 = FALSE;
   BSW_bMsgValidState_Can01_Rx07 = FALSE;
   BSW_bMsgValidState_Can01_Rx08 = FALSE;
   BSW_bMsgValidState_Can01_Rx09 = FALSE;
   BSW_bMsgValidState_Can01_Rx10 = FALSE;
   BSW_bMsgValidState_Can01_Rx11 = FALSE;
   BSW_bMsgValidState_Can01_Rx12 = FALSE;
   BSW_bMsgValidState_Can01_Rx13 = FALSE;
   BSW_bMsgValidState_Can01_Rx14 = FALSE;
   BSW_bMsgValidState_Can01_Rx15 = FALSE;
   BSW_bMsgValidState_Can01_Rx16 = FALSE;
   BSW_bMsgValidState_Can01_Rx17 = FALSE;
   BSW_bMsgValidState_Can01_Rx18 = FALSE;
   BSW_bMsgValidState_Can01_Rx19 = FALSE;
   BSW_bMsgValidState_Can01_Rx20 = FALSE;
   BSW_bMsgValidState_Can01_Rx21 = FALSE;
   BSW_bMsgValidState_Can01_Rx22 = FALSE;
   BSW_bMsgValidState_Can01_Rx23 = FALSE;
   BSW_bMsgValidState_Can01_Rx24 = FALSE;
   BSW_bMsgValidState_Can01_Rx25 = FALSE;
   BSW_bMsgValidState_Can01_Rx26 = FALSE;
   BSW_bMsgValidState_Can01_Rx27 = FALSE;
   BSW_bMsgValidState_Can01_Rx28 = FALSE;
   BSW_bMsgValidState_Can01_Rx29 = FALSE;
   BSW_bMsgValidState_Can01_Rx30 = FALSE;
   BSW_bMsgValidState_Can01_Rx31 = FALSE;
   BSW_bMsgValidState_Can01_Rx32 = FALSE;
   BSW_bMsgValidState_Can01_Rx33 = FALSE;
   BSW_bMsgValidState_Can01_Rx34 = FALSE;
   BSW_bMsgValidState_Can01_Rx35 = FALSE;
   BSW_bMsgValidState_Can01_Rx36 = FALSE;
   BSW_bMsgValidState_Can01_Rx37 = FALSE;
   BSW_bMsgValidState_Can01_Rx38 = FALSE;
   BSW_bMsgValidState_Can01_Rx39 = FALSE;
   BSW_bMsgValidState_Can01_Rx40 = FALSE;
}
#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

