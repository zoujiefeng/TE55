#include "MAIN_MSG_Auto_Can01.h"
#include "Rte_ASW_COM.h"
#include "BSW.h"
#include "BSW_L.h"

/*Set it FALSE if you dont want messages autorun*/
#define MAIN_MSG_Can01_Below100_Auto_Rx   TRUE
#define MAIN_MSG_Can01_Below100_Auto_Tx   TRUE
#define MAIN_MSG_Can01_Above100_Auto_Rx   TRUE
#define MAIN_MSG_Can01_Above100_Auto_Tx   TRUE
#define MAIN_MSG_Can01_Special_Auto_Rx    TRUE
#define MAIN_MSG_Can01_Special_Auto_Tx    TRUE

#define MAIN_MSG_BELOW100_FUNC_PERIOD   10
#define MAIN_MSG_ABOVE100_FUNC_PERIOD   100

uint32 Runtime_Can01_Below100 = 0;
uint32 Runtime_Can01_Above100 = 0;
uint32 Runtime_Can01_Special  = 0;

static void MainMsg_SpecialPeriod_Can01_Rx(void)
{
#if (TRUE == MAIN_MSG_Can01_Special_Auto_Rx)
{
   if(0 == MAIN_MSGRxBenchOnC)
   {
   #ifdef MAIN_MSG_PERIOD_Can01_Rx01
      #if (MAIN_MSG_PERIOD_Can01_Rx01 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx01))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx01)
            {
               MAIN_MSGvidFunc_Can01_Rx01();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx02
      #if (MAIN_MSG_PERIOD_Can01_Rx02 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx02))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx02)
            {
               MAIN_MSGvidFunc_Can01_Rx02();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx03
      #if (MAIN_MSG_PERIOD_Can01_Rx03 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx03))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx03)
            {
               MAIN_MSGvidFunc_Can01_Rx03();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx04
      #if (MAIN_MSG_PERIOD_Can01_Rx04 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx04))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx04)
            {
               MAIN_MSGvidFunc_Can01_Rx04();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx05
      #if (MAIN_MSG_PERIOD_Can01_Rx05 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx05))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx05)
            {
               MAIN_MSGvidFunc_Can01_Rx05();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx06
      #if (MAIN_MSG_PERIOD_Can01_Rx06 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx06))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx06)
            {
               MAIN_MSGvidFunc_Can01_Rx06();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx07
      #if (MAIN_MSG_PERIOD_Can01_Rx07 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx07))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx07)
            {
               MAIN_MSGvidFunc_Can01_Rx07();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx08
      #if (MAIN_MSG_PERIOD_Can01_Rx08 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx08))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx08)
            {
               MAIN_MSGvidFunc_Can01_Rx08();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx09
      #if (MAIN_MSG_PERIOD_Can01_Rx09 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx09))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx09)
            {
               MAIN_MSGvidFunc_Can01_Rx09();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx10
      #if (MAIN_MSG_PERIOD_Can01_Rx10 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx10))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx10)
            {
               MAIN_MSGvidFunc_Can01_Rx10();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx11
      #if (MAIN_MSG_PERIOD_Can01_Rx11 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx11))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx11)
            {
               MAIN_MSGvidFunc_Can01_Rx11();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx12
      #if (MAIN_MSG_PERIOD_Can01_Rx12 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx12))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx12)
            {
               MAIN_MSGvidFunc_Can01_Rx12();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx13
      #if (MAIN_MSG_PERIOD_Can01_Rx13 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx13))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx13)
            {
               MAIN_MSGvidFunc_Can01_Rx13();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx14
      #if (MAIN_MSG_PERIOD_Can01_Rx14 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx14))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx14)
            {
               MAIN_MSGvidFunc_Can01_Rx14();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx15
      #if (MAIN_MSG_PERIOD_Can01_Rx15 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx15))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx15)
            {
               MAIN_MSGvidFunc_Can01_Rx15();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx16
      #if (MAIN_MSG_PERIOD_Can01_Rx16 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx16))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx16)
            {
               MAIN_MSGvidFunc_Can01_Rx16();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx17
      #if (MAIN_MSG_PERIOD_Can01_Rx17 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx17))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx17)
            {
               MAIN_MSGvidFunc_Can01_Rx17();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx18
      #if (MAIN_MSG_PERIOD_Can01_Rx18 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx18))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx18)
            {
               MAIN_MSGvidFunc_Can01_Rx18();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx19
      #if (MAIN_MSG_PERIOD_Can01_Rx19 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx19))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx19)
            {
               MAIN_MSGvidFunc_Can01_Rx19();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx20
      #if (MAIN_MSG_PERIOD_Can01_Rx20 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx20))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx20)
            {
               MAIN_MSGvidFunc_Can01_Rx20();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx21
      #if (MAIN_MSG_PERIOD_Can01_Rx21 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx21))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx21)
            {
               MAIN_MSGvidFunc_Can01_Rx21();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx22
      #if (MAIN_MSG_PERIOD_Can01_Rx22 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx22))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx22)
            {
               MAIN_MSGvidFunc_Can01_Rx22();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx23
      #if (MAIN_MSG_PERIOD_Can01_Rx23 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx23))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx23)
            {
               MAIN_MSGvidFunc_Can01_Rx23();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx24
      #if (MAIN_MSG_PERIOD_Can01_Rx24 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx24))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx24)
            {
               MAIN_MSGvidFunc_Can01_Rx24();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx25
      #if (MAIN_MSG_PERIOD_Can01_Rx25 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx25))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx25)
            {
               MAIN_MSGvidFunc_Can01_Rx25();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx26
      #if (MAIN_MSG_PERIOD_Can01_Rx26 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx26))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx26)
            {
               MAIN_MSGvidFunc_Can01_Rx26();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx27
      #if (MAIN_MSG_PERIOD_Can01_Rx27 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx27))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx27)
            {
               MAIN_MSGvidFunc_Can01_Rx27();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx28
      #if (MAIN_MSG_PERIOD_Can01_Rx28 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx28))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx28)
            {
               MAIN_MSGvidFunc_Can01_Rx28();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx29
      #if (MAIN_MSG_PERIOD_Can01_Rx29 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx29))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx29)
            {
               MAIN_MSGvidFunc_Can01_Rx29();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx30
      #if (MAIN_MSG_PERIOD_Can01_Rx30 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx30))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx30)
            {
               MAIN_MSGvidFunc_Can01_Rx30();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx31
      #if (MAIN_MSG_PERIOD_Can01_Rx31 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx31))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx31)
            {
               MAIN_MSGvidFunc_Can01_Rx31();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx32
      #if (MAIN_MSG_PERIOD_Can01_Rx32 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx32))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx32)
            {
               MAIN_MSGvidFunc_Can01_Rx32();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx33
      #if (MAIN_MSG_PERIOD_Can01_Rx33 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx33))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx33)
            {
               MAIN_MSGvidFunc_Can01_Rx33();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx34
      #if (MAIN_MSG_PERIOD_Can01_Rx34 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx34))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx34)
            {
               MAIN_MSGvidFunc_Can01_Rx34();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx35
      #if (MAIN_MSG_PERIOD_Can01_Rx35 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx35))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx35)
            {
               MAIN_MSGvidFunc_Can01_Rx35();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx36
      #if (MAIN_MSG_PERIOD_Can01_Rx36 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx36))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx36)
            {
               MAIN_MSGvidFunc_Can01_Rx36();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx37
      #if (MAIN_MSG_PERIOD_Can01_Rx37 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx37))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx37)
            {
               MAIN_MSGvidFunc_Can01_Rx37();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx38
      #if (MAIN_MSG_PERIOD_Can01_Rx38 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx38))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx38)
            {
               MAIN_MSGvidFunc_Can01_Rx38();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx39
      #if (MAIN_MSG_PERIOD_Can01_Rx39 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx39))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx39)
            {
               MAIN_MSGvidFunc_Can01_Rx39();
            }
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Rx40
      #if (MAIN_MSG_PERIOD_Can01_Rx40 != 0)
         if (0 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Rx40))
         {
            if(TRUE == BSW_bMsgValidState_Can01_Rx40)
            {
               MAIN_MSGvidFunc_Can01_Rx40();
            }
         }
      #endif
   #endif
   }
}
#endif
}

static void MainMsg_SpecialPeriod_Can01_Tx(void)
{
#if (TRUE == MAIN_MSG_Can01_Special_Auto_Tx)
   #ifdef MAIN_MSG_PERIOD_Can01_Tx01
      #if (MAIN_MSG_PERIOD_Can01_Tx01 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx01 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx01))
         {
            MAIN_MSGvidFunc_Can01_Tx01();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx02
      #if (MAIN_MSG_PERIOD_Can01_Tx02 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx02 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx02))
         {
            MAIN_MSGvidFunc_Can01_Tx02();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx03
      #if (MAIN_MSG_PERIOD_Can01_Tx03 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx03 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx03))
         {
            MAIN_MSGvidFunc_Can01_Tx03();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx04
      #if (MAIN_MSG_PERIOD_Can01_Tx04 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx04 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx04))
         {
            MAIN_MSGvidFunc_Can01_Tx04();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx05
      #if (MAIN_MSG_PERIOD_Can01_Tx05 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx05 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx05))
         {
            MAIN_MSGvidFunc_Can01_Tx05();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx06
      #if (MAIN_MSG_PERIOD_Can01_Tx06 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx06 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx06))
         {
            MAIN_MSGvidFunc_Can01_Tx06();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx07
      #if (MAIN_MSG_PERIOD_Can01_Tx07 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx07 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx07))
         {
            MAIN_MSGvidFunc_Can01_Tx07();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx08
      #if (MAIN_MSG_PERIOD_Can01_Tx08 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx08 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx08))
         {
            MAIN_MSGvidFunc_Can01_Tx08();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx09
      #if (MAIN_MSG_PERIOD_Can01_Tx09 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx09 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx09))
         {
            MAIN_MSGvidFunc_Can01_Tx09();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx10
      #if (MAIN_MSG_PERIOD_Can01_Tx10 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx10 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx10))
         {
            MAIN_MSGvidFunc_Can01_Tx10();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx11
      #if (MAIN_MSG_PERIOD_Can01_Tx11 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx11 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx11))
         {
            MAIN_MSGvidFunc_Can01_Tx11();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx12
      #if (MAIN_MSG_PERIOD_Can01_Tx12 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx12 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx12))
         {
            MAIN_MSGvidFunc_Can01_Tx12();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx13
      #if (MAIN_MSG_PERIOD_Can01_Tx13 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx13 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx13))
         {
            MAIN_MSGvidFunc_Can01_Tx13();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx14
      #if (MAIN_MSG_PERIOD_Can01_Tx14 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx14 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx14))
         {
            MAIN_MSGvidFunc_Can01_Tx14();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx15
      #if (MAIN_MSG_PERIOD_Can01_Tx15 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx15 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx15))
         {
            MAIN_MSGvidFunc_Can01_Tx15();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx16
      #if (MAIN_MSG_PERIOD_Can01_Tx16 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx16 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx16))
         {
            MAIN_MSGvidFunc_Can01_Tx16();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx17
      #if (MAIN_MSG_PERIOD_Can01_Tx17 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx17 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx17))
         {
            MAIN_MSGvidFunc_Can01_Tx17();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx18
      #if (MAIN_MSG_PERIOD_Can01_Tx18 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx18 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx18))
         {
            MAIN_MSGvidFunc_Can01_Tx18();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx19
      #if (MAIN_MSG_PERIOD_Can01_Tx19 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx19 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx19))
         {
            MAIN_MSGvidFunc_Can01_Tx19();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx20
      #if (MAIN_MSG_PERIOD_Can01_Tx20 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx20 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx20))
         {
            MAIN_MSGvidFunc_Can01_Tx20();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx21
      #if (MAIN_MSG_PERIOD_Can01_Tx21 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx21 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx21))
         {
            MAIN_MSGvidFunc_Can01_Tx21();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx22
      #if (MAIN_MSG_PERIOD_Can01_Tx22 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx22 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx22))
         {
            MAIN_MSGvidFunc_Can01_Tx22();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx23
      #if (MAIN_MSG_PERIOD_Can01_Tx23 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx23 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx23))
         {
            MAIN_MSGvidFunc_Can01_Tx23();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx24
      #if (MAIN_MSG_PERIOD_Can01_Tx24 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx24 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx24))
         {
            MAIN_MSGvidFunc_Can01_Tx24();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx25
      #if (MAIN_MSG_PERIOD_Can01_Tx25 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx25 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx25))
         {
            MAIN_MSGvidFunc_Can01_Tx25();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx26
      #if (MAIN_MSG_PERIOD_Can01_Tx26 != 0)
         if((TRUE == MAIN_MSGbIsulationTxOnC)
         && (MAIN_MSG_OFFSET_Can01_Tx26 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx26)))
         {
            MAIN_MSGvidFunc_Can01_Tx26();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx27
      #if (MAIN_MSG_PERIOD_Can01_Tx27 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx27 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx27))
         {
            MAIN_MSGvidFunc_Can01_Tx27();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx28
      #if (MAIN_MSG_PERIOD_Can01_Tx28 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx28 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx28))
         {
            MAIN_MSGvidFunc_Can01_Tx28();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx29
      #if (MAIN_MSG_PERIOD_Can01_Tx29 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx29 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx29))
         {
            MAIN_MSGvidFunc_Can01_Tx29();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx30
      #if (MAIN_MSG_PERIOD_Can01_Tx30 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx30 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx30))
         {
            MAIN_MSGvidFunc_Can01_Tx30();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx31
      #if (MAIN_MSG_PERIOD_Can01_Tx31 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx31 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx31))
         {
            MAIN_MSGvidFunc_Can01_Tx31();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx32
      #if (MAIN_MSG_PERIOD_Can01_Tx32 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx32 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx32))
         {
            MAIN_MSGvidFunc_Can01_Tx32();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx33
      #if (MAIN_MSG_PERIOD_Can01_Tx33 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx33 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx33))
         {
            MAIN_MSGvidFunc_Can01_Tx33();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx34
      #if (MAIN_MSG_PERIOD_Can01_Tx34 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx34 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx34))
         {
            MAIN_MSGvidFunc_Can01_Tx34();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx35
      #if (MAIN_MSG_PERIOD_Can01_Tx35 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx35 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx35))
         {
            MAIN_MSGvidFunc_Can01_Tx35();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx36
      #if (MAIN_MSG_PERIOD_Can01_Tx36 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx36 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx36))
         {
            MAIN_MSGvidFunc_Can01_Tx36();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx37
      #if (MAIN_MSG_PERIOD_Can01_Tx37 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx37 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx37))
         {
            MAIN_MSGvidFunc_Can01_Tx37();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx38
      #if (MAIN_MSG_PERIOD_Can01_Tx38 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx38 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx38))
         {
            MAIN_MSGvidFunc_Can01_Tx38();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx39
      #if (MAIN_MSG_PERIOD_Can01_Tx39 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx39 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx39))
         {
            MAIN_MSGvidFunc_Can01_Tx39();
         }
      #endif
   #endif

   #ifdef MAIN_MSG_PERIOD_Can01_Tx40
      #if (MAIN_MSG_PERIOD_Can01_Tx40 != 0)
         if (MAIN_MSG_OFFSET_Can01_Tx40 == (Runtime_Can01_Special % MAIN_MSG_PERIOD_Can01_Tx40))
         {
            MAIN_MSGvidFunc_Can01_Tx40();
         }
      #endif
   #endif
#endif
}



/*********************************************************************
*
* !FuncName   : MainMsg_Can01_Below100ms_Func
* !Description : Process common message(s) which have 10<=period<100 and can be divided by 10 evenly
* !Examples   : 10ms 20ms  30ms  50ms  70ms  90ms
*
**********************************************************************
* !LastAuthor  : LZJ/ZYX
**********************************************************************/
void MainMsg_Can01_Below100ms_Func(void)
{
   //MainMsg_Below100ms_Can01_Tx();
   //MainMsg_Below100ms_Can01_Rx();

   Runtime_Can01_Below100++;
}

/*********************************************************************
*
* !FuncName   : MainMsg_Can01_Above100ms_Func
* !Description : Process common message(s) which have period>=100 and can be divided by 100 evenly
* !Examples   : 100ms||200ms||500ms||700ms||900ms||1000ms||2000ms||5000ms
*
**********************************************************************
* !LastAuthor  : LZJ/ZYX
**********************************************************************/
void MainMsg_Can01_Above100ms_Func(void)
{
   //MainMsg_Above100ms_Can01_Tx();
   //MainMsg_Above100ms_Can01_Rx();

   Runtime_Can01_Above100++;
}

/*********************************************************************
*
* !FuncName   : MainMsg_Can01_SpecialPeriod_Func
* !Description : Process all the message(s) which have special period
* !Examples   : 1ms ||5ms||6ms||15ms||42ms||110ms||155ms||161ms||195ms||210ms||225ms||308ms||1450ms
*
**********************************************************************
* !LastAuthor  : LZJ/ZYX
**********************************************************************/
void MainMsg_Can01_SpecialPeriod_Func(void)
{
   if(CANSM_GetBusoffCnt(BSW_CANNODE1_e)>=1)
   {
      Runtime_Can01_Special = 0;
   }
   MainMsg_SpecialPeriod_Can01_Tx();
   MainMsg_SpecialPeriod_Can01_Rx();

   Runtime_Can01_Special++;
}

