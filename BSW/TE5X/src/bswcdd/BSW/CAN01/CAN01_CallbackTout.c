/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Com.h"
#include "Com_Cbk.h"
#include "CAN01_DEF.h"
#include "MAIN_MSG_Auto_Can01.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"

#ifdef MAIN_MSG_PERIOD_Can01_Rx01
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_01(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx01 != 0)
      BSW_bRxTOutFlag_Can01_Rx01    = TRUE;
      BSW_bMsgValidState_Can01_Rx01 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx02
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_02(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx02 != 0)
      BSW_bRxTOutFlag_Can01_Rx02    = TRUE;
      BSW_bMsgValidState_Can01_Rx02 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx03
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_03(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx03 != 0)
      BSW_bRxTOutFlag_Can01_Rx03    = TRUE;
      BSW_bMsgValidState_Can01_Rx03 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx04
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_04(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx04 != 0)
      BSW_bRxTOutFlag_Can01_Rx04    = TRUE;
      BSW_bMsgValidState_Can01_Rx04 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx05
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_05(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx05 != 0)
      BSW_bRxTOutFlag_Can01_Rx05    = TRUE;
      BSW_bMsgValidState_Can01_Rx05 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx06
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_06(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx06 != 0)
      BSW_bRxTOutFlag_Can01_Rx06    = TRUE;
      BSW_bMsgValidState_Can01_Rx06 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx07
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_07(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx07 != 0)
      BSW_bRxTOutFlag_Can01_Rx07    = TRUE;
      BSW_bMsgValidState_Can01_Rx07 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx08
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_08(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx08 != 0)
      BSW_bRxTOutFlag_Can01_Rx08    = TRUE;
      BSW_bMsgValidState_Can01_Rx08 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx09
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_09(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx09 != 0)
      BSW_bRxTOutFlag_Can01_Rx09    = TRUE;
      BSW_bMsgValidState_Can01_Rx09 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx10
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_10(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx10 != 0)
      BSW_bRxTOutFlag_Can01_Rx10    = TRUE;
      BSW_bMsgValidState_Can01_Rx10 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx11
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_11(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx11 != 0)
      BSW_bRxTOutFlag_Can01_Rx11    = TRUE;
      BSW_bMsgValidState_Can01_Rx11 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx12
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_12(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx12 != 0)
      BSW_bRxTOutFlag_Can01_Rx12    = TRUE;
      BSW_bMsgValidState_Can01_Rx12 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx13
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_13(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx13 != 0)
      BSW_bRxTOutFlag_Can01_Rx13    = TRUE;
      BSW_bMsgValidState_Can01_Rx13 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx14
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_14(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx14 != 0)
      BSW_bRxTOutFlag_Can01_Rx14    = TRUE;
      BSW_bMsgValidState_Can01_Rx14 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx15
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_15(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx15 != 0)
      BSW_bRxTOutFlag_Can01_Rx15    = TRUE;
      BSW_bMsgValidState_Can01_Rx15 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx16
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_16(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx16 != 0)
      BSW_bRxTOutFlag_Can01_Rx16    = TRUE;
      BSW_bMsgValidState_Can01_Rx16 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx17
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_17(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx17 != 0)
      BSW_bRxTOutFlag_Can01_Rx17    = TRUE;
      BSW_bMsgValidState_Can01_Rx17 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx18
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_18(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx18 != 0)
      BSW_bRxTOutFlag_Can01_Rx18    = TRUE;
      BSW_bMsgValidState_Can01_Rx18 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx19
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_19(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx19 != 0)
      BSW_bRxTOutFlag_Can01_Rx19    = TRUE;
      BSW_bMsgValidState_Can01_Rx19 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx20
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_20(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx20 != 0)
      BSW_bRxTOutFlag_Can01_Rx20    = TRUE;
      BSW_bMsgValidState_Can01_Rx20 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx21
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_21(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx21 != 0)
      BSW_bRxTOutFlag_Can01_Rx21    = TRUE;
      BSW_bMsgValidState_Can01_Rx21 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx22
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_22(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx22 != 0)
      BSW_bRxTOutFlag_Can01_Rx22    = TRUE;
      BSW_bMsgValidState_Can01_Rx22 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx23
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_23(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx23 != 0)
      BSW_bRxTOutFlag_Can01_Rx23    = TRUE;
      BSW_bMsgValidState_Can01_Rx23 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx24
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_24(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx24 != 0)
      BSW_bRxTOutFlag_Can01_Rx24    = TRUE;
      BSW_bMsgValidState_Can01_Rx24 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx25
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_25(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx25 != 0)
      BSW_bRxTOutFlag_Can01_Rx25    = TRUE;
      BSW_bMsgValidState_Can01_Rx25 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx26
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_26(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx26 != 0)
      BSW_bRxTOutFlag_Can01_Rx26    = TRUE;
      BSW_bMsgValidState_Can01_Rx26 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx27
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_27(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx27 != 0)
      BSW_bRxTOutFlag_Can01_Rx27    = TRUE;
      BSW_bMsgValidState_Can01_Rx27 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx28
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_28(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx28 != 0)
      BSW_bRxTOutFlag_Can01_Rx28    = TRUE;
      BSW_bMsgValidState_Can01_Rx28 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx29
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_29(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx29 != 0)
      BSW_bRxTOutFlag_Can01_Rx29    = TRUE;
      BSW_bMsgValidState_Can01_Rx29 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx30
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_30(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx30 != 0)
      BSW_bRxTOutFlag_Can01_Rx30    = TRUE;
      BSW_bMsgValidState_Can01_Rx30 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx31
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_31(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx31 != 0)
      BSW_bRxTOutFlag_Can01_Rx31    = TRUE;
      BSW_bMsgValidState_Can01_Rx31 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx32
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_32(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx32 != 0)
      BSW_bRxTOutFlag_Can01_Rx32    = TRUE;
      BSW_bMsgValidState_Can01_Rx32 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx33
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_33(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx33 != 0)
      BSW_bRxTOutFlag_Can01_Rx33    = TRUE;
      BSW_bMsgValidState_Can01_Rx33 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx34
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_34(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx34 != 0)
      BSW_bRxTOutFlag_Can01_Rx34    = TRUE;
      BSW_bMsgValidState_Can01_Rx34 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx35
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_35(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx35 != 0)
      BSW_bRxTOutFlag_Can01_Rx35    = TRUE;
      BSW_bMsgValidState_Can01_Rx35 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx36
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_36(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx36 != 0)
      BSW_bRxTOutFlag_Can01_Rx36    = TRUE;
      BSW_bMsgValidState_Can01_Rx36 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx37
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_37(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx37 != 0)
      BSW_bRxTOutFlag_Can01_Rx37    = TRUE;
      BSW_bMsgValidState_Can01_Rx37 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx38
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_38(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx38 != 0)
      BSW_bRxTOutFlag_Can01_Rx38    = TRUE;
      BSW_bMsgValidState_Can01_Rx38 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx39
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_39(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx39 != 0)
      BSW_bRxTOutFlag_Can01_Rx39    = TRUE;
      BSW_bMsgValidState_Can01_Rx39 = TRUE;
   #endif
}
#endif

#ifdef MAIN_MSG_PERIOD_Can01_Rx40
void Bsw_ComSignalTimeout_CanNodeNum_01_Rx_40(void)
{
   #if ( MAIN_MSG_PERIOD_Can01_Rx40 != 0)
      BSW_bRxTOutFlag_Can01_Rx40    = TRUE;
      BSW_bMsgValidState_Can01_Rx40 = TRUE;
   #endif
}
#endif

#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
