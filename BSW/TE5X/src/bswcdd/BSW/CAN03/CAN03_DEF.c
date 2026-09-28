/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "CAN03_DEF.h"

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/
#define BSW_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx01 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx02 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx03 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx04 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx05 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx06 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx07 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx08 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx09 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx10 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx11 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx12 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx13 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx14 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx15 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx16 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx17 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx18 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx19 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx20 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx21 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx22 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx23 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx24 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx25 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx26 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx27 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx28 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx29 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx30 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx31 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx32 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx33 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx34 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx35 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx36 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx37 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx38 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx39 = FALSE;
VAR(boolean, BSW_VAR) BSW_bRxTOutFlag_Can03_Rx40 = FALSE;

VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx01 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx02 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx03 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx04 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx05 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx06 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx07 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx08 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx09 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx10 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx11 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx12 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx13 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx14 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx15 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx16 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx17 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx18 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx19 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx20 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx21 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx22 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx23 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx24 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx25 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx26 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx27 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx28 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx29 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx30 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx31 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx32 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx33 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx34 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx35 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx36 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx37 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx38 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx39 = FALSE;
VAR(boolean, BSW_VAR) BSW_bMsgValidState_Can03_Rx40 = FALSE;
#define BSW_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"
void CAN03_vidInit(void)
{
   BSW_bRxTOutFlag_Can03_Rx01 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx02 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx03 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx04 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx05 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx06 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx07 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx08 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx09 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx10 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx11 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx12 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx13 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx14 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx15 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx16 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx17 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx18 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx19 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx20 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx21 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx22 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx23 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx24 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx25 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx26 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx27 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx28 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx29 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx30 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx31 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx32 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx33 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx34 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx35 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx36 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx37 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx38 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx39 = FALSE;
   BSW_bRxTOutFlag_Can03_Rx40 = FALSE;

   BSW_bMsgValidState_Can03_Rx01 = FALSE;
   BSW_bMsgValidState_Can03_Rx02 = FALSE;
   BSW_bMsgValidState_Can03_Rx03 = FALSE;
   BSW_bMsgValidState_Can03_Rx04 = FALSE;
   BSW_bMsgValidState_Can03_Rx05 = FALSE;
   BSW_bMsgValidState_Can03_Rx06 = FALSE;
   BSW_bMsgValidState_Can03_Rx07 = FALSE;
   BSW_bMsgValidState_Can03_Rx08 = FALSE;
   BSW_bMsgValidState_Can03_Rx09 = FALSE;
   BSW_bMsgValidState_Can03_Rx10 = FALSE;
   BSW_bMsgValidState_Can03_Rx11 = FALSE;
   BSW_bMsgValidState_Can03_Rx12 = FALSE;
   BSW_bMsgValidState_Can03_Rx13 = FALSE;
   BSW_bMsgValidState_Can03_Rx14 = FALSE;
   BSW_bMsgValidState_Can03_Rx15 = FALSE;
   BSW_bMsgValidState_Can03_Rx16 = FALSE;
   BSW_bMsgValidState_Can03_Rx17 = FALSE;
   BSW_bMsgValidState_Can03_Rx18 = FALSE;
   BSW_bMsgValidState_Can03_Rx19 = FALSE;
   BSW_bMsgValidState_Can03_Rx20 = FALSE;
   BSW_bMsgValidState_Can03_Rx21 = FALSE;
   BSW_bMsgValidState_Can03_Rx22 = FALSE;
   BSW_bMsgValidState_Can03_Rx23 = FALSE;
   BSW_bMsgValidState_Can03_Rx24 = FALSE;
   BSW_bMsgValidState_Can03_Rx25 = FALSE;
   BSW_bMsgValidState_Can03_Rx26 = FALSE;
   BSW_bMsgValidState_Can03_Rx27 = FALSE;
   BSW_bMsgValidState_Can03_Rx28 = FALSE;
   BSW_bMsgValidState_Can03_Rx29 = FALSE;
   BSW_bMsgValidState_Can03_Rx30 = FALSE;
   BSW_bMsgValidState_Can03_Rx31 = FALSE;
   BSW_bMsgValidState_Can03_Rx32 = FALSE;
   BSW_bMsgValidState_Can03_Rx33 = FALSE;
   BSW_bMsgValidState_Can03_Rx34 = FALSE;
   BSW_bMsgValidState_Can03_Rx35 = FALSE;
   BSW_bMsgValidState_Can03_Rx36 = FALSE;
   BSW_bMsgValidState_Can03_Rx37 = FALSE;
   BSW_bMsgValidState_Can03_Rx38 = FALSE;
   BSW_bMsgValidState_Can03_Rx39 = FALSE;
   BSW_bMsgValidState_Can03_Rx40 = FALSE;
}
#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

