/******************************************************************************/
/*                                                                            */
/* !Layer           : BSW                                                  */
/*                                                                            */
/* !Module          : EAS                                                  */
/* !Description     : EAS handler                                          */
/*                                                                            */
/* !File            : EAS.C                                              */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2014 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* 0.1 /                                                                      */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::   Daniel        $$Date::               $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/
#include "Std_Types.h"
#include "IfxStm_reg.h"
#include "EAS_L.h"
#include "EAS.h"
#include "BSW.h"
#include "UDS_Nvm.h"
#include "FAULT_Api.h"
#include "IOHAL_Cfg_I.h"
#include "IOHAL.h"
#include "MAIN_MSG_Auto_Can01.h"
#include "MAIN_MSG_Auto_Can01_L.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define EAS_IMMO_MAX_ECU_CHALLENGE       (6U)
#define EAS_MAX_VERIFY_LIMIT             (EAS_IMMO_MAX_ECU_CHALLENGE)
#define EAS_MAX_VERIFY_FAILED_LIMIT      (1U)
#define EAS_NUM_ROUNDS                   (32U)

#define EAS_IMMO_START_MAX_DELAY         (200U)
#define EAS_IMMO_MAX_RESPONSE_DELAY      (80U)
#define EAS_IMMO_BCM_RESPONSE_DELAY      (20U)
#define EAS_IMMO_ECU_AUTH_RETRY_DELAY    (100U)  
#define EAS_IMMO_RESPONSE_TIMEOUT        (100U)  
#define EAS_IMMO_WAIT_ECU_CHALLENGE      (1000U)  

#define EAS_TIME_PERIOD                  (10U)
#define EAS_TIME_TO_CYCLES(TIME)         ((TIME) / (EAS_TIME_PERIOD))  /* convert time into cycles */

/* EAS authentication state machine. */
enum
{
   EAS_ST_PWRON = 0,
   EAS_ST_CHLG_1,    /* Send Challenge code: 1 */
   EAS_ST_VERIFY,       /* Verify IMMOCODE: 2 */
   EAS_ST_RE_CHLG,   /* Re-Challenge: 3 */
   EAS_ST_RELEASE,    /* Send IPU Release: 4 */
   EAS_ST_FAIL,           /* Authrize failed: 5 */
   EAS_ST_END            /* Finish authrize successfully: 6 */
};

enum
{
   EAS_ST_INIT = 0,
   EAS_ST_START_DELAY,
   EAS_ST_SEND_CHALLENGE,
   EAS_ST_WAIT_RESPONSE,
   EAS_ST_STATE_PROCESS,
   EAS_ST_RETRY_DELAY,
   EAS_ST_VERIFY_KEY,
   EAS_ST_ECU_LOCKED,
   EAS_ST_ECU_RELEASE,
   EAS_ST_AUTH_END
};

enum
{
   EAS_BCM_IGNT_OFF = 0,
   EAS_BCM_IGNT_ACC,
   EAS_BCM_IGNT_ON,
   EAS_BCM_IGNT_START
};

#define EAS_IMMOCODE_STATUS_INDEX   (0x01)
#define EAS_IMMOCODE_KEY_INDEX      (0x02)

/* !Comment: EAS TM Release signal value. */
#define EAS_TM_RELS_UNDEF           (0X00)
#define EAS_TM_RELS_TM_RELS        (0X01)
#define EAS_TM_RELS_LOCKED          (0X02)
#define EAS_TM_RELS_RESV              (0X03)

/* !Comment: EAS Failure reason. */
#define EAS_FAIL_PEPS_PWR_INVALID   (0X00)
#define EAS_FAIL_ESK_RD_ERR               (0X01)
#define EAS_FAIL_ESK_DATA_ERR          (0X02)
#define EAS_FAIL_ESK_ALL_ZERO           (0X03)
#define EAS_FAIL_ESK_ALL_FF               (0X04)
#define EAS_FAIL_BCM_TIMOUT              (0X05)
#define EAS_FAIL_PEPS_TIMOUT            (0X06)
#define EAS_FAIL_CODE_NOTMATCH       (0X07)
#define EAS_FAIL_AES_SUCCESS         (0X08)

#define EAS_TXP_AUTH_FAILED          (0X5F)
#define EAS_TXP_AUTH_ONGOING         (0XF0)
#define EAS_ENCRYPTED_ONGOING        (0XF5)
#define EAS_KEY_NEEDED_CHECKED       (0X00)

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define EAS_START_SEC_VAR_UNSPECIFIED
#include "EAS_MemMap.h"

#define EAS_STOP_SEC_VAR_UNSPECIFIED
#include "EAS_MemMap.h"

#define EAS_START_SEC_CONST_UNSPECIFIED
#include "EAS_MemMap.h"

const uint8 EAS_aku8CC64[8] = {0X94, 0X25, 0X45, 0X47, 0X46, 0X4A, 0X5B, 0X7D};
const uint8 EAS_aku8ESK[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
const uint8 EAS_aku8RN32[4] = {0X77, 0X17, 0X44, 0X41};

#define EAS_STOP_SEC_CONST_UNSPECIFIED
#include "EAS_MemMap.h"

/******************************************************************************/
/* Gloable Function DECLARATION                                               */
/******************************************************************************/
extern void BSW_vidTrigChallengeCode(const uint8* au8LocChallengeCode);
extern void BSW_vidTrigAuthResult(const boolean abAuthResult);
/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define EAS_START_SEC_CODE
#include "EAS_MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Function    : BSW_vidTrigChallengeCode                                    */
/* !Description : Trigger Challenge code sending                              */
/* !Number      :                                                             */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                      */
/******************************************************************************/
void BSW_vidTrigChallengeCode(const uint8* au8LocChallengeCode)
{
   MAIN_MSGvidFunc_Can01_Tx01();
}

/******************************************************************************/
/*                                                                            */
/* !Function    : BSW_vidTrigAuthResult                                       */
/* !Description : Trigger Auth Result sending                                 */
/* !Number      :                                                             */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                      */
/******************************************************************************/
void BSW_vidTrigAuthResult(const boolean abAuthResult)
{
   // MAIN_MSGbMCU_EngineAuthResultResp = abAuthResult;
   MAIN_MSGvidFunc_Can01_Tx02();
}

/******************************************************************************
*  
* !FuncName    : EAS_vidInit  
* !Trigger     : Init  
* !Description : 
* !Number      : 1  
* !Reference   : NONE 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void EAS_vidInit(void)
{
   boolean bLocEskAllZero;
   boolean bLocEskAllFF;
   uint8 u8LocEskSts;
   uint8 u8LocIdx;

   bLocEskAllFF = TRUE;
   bLocEskAllZero = TRUE;
   u8LocEskSts = 0x02;
   EAS_bDefaultEskFlg = TRUE;

   EAS_vidGenChallengeCode();        /* By Zhan: One Cycle Only Uses One ChallengeCode */

   for(u8LocIdx= 0; u8LocIdx < 4; u8LocIdx++)
   {
      EAS_au32PinESK32[u8LocIdx] = 0 | (uint32)(((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4)]) << 24) & 0xFF000000)
                                    | (uint32)(((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4) + 1]) << 16) & 0x00FF0000)
                                    | (uint32)(((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4) + 2]) << 8) & 0x0000FF00)
                                    | (uint32)((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4) + 3]) & 0x000000FF);
   }
   
   for(u8LocIdx= 0; u8LocIdx < ( sizeof(EAS_au32PinESK32)/sizeof(EAS_au32PinESK32[0]) ); u8LocIdx++)
   {
      if(0X00000000 != EAS_au32PinESK32[u8LocIdx])
      {
         bLocEskAllZero = FALSE;
      }

      if(0XFFFFFFFF != EAS_au32PinESK32[u8LocIdx])
      {
         bLocEskAllFF = FALSE;
      }     
   }
   
   if (bLocEskAllZero)
   {
      EAS_u8ImmFailReason = EAS_FAIL_CODE_NOTMATCH;   // EAS_FAIL_ESK_ALL_ZERO;
      EAS_bDefaultEskFlg = TRUE;
   }
   else if (bLocEskAllFF)
   {
      EAS_u8ImmFailReason = EAS_FAIL_CODE_NOTMATCH;   //EAS_FAIL_ESK_ALL_FF;
   }
   else
   {
      EAS_u8ImmFailReason = EAS_FAIL_PEPS_PWR_INVALID;
      u8LocEskSts = 0x01;
      EAS_bDefaultEskFlg = FALSE;
   }

   EAS_u8AuthState = EAS_ST_INIT;
   EAS_u8TMReleaseSig = EAS_TM_RELS_UNDEF;
   EAS_u8SttTimerCnt = 0;
   EAS_u8Chg1DelayCnt = 0;
   EAS_bImmoCodRcvFlg   = FALSE;
   EAS_bSendNewChalgFlg = FALSE;

   if(TRUE == EAS_bDefaultEskFlg)
   {
      /* Comment: Default ESK, Challenge Code shall be all 0xFF. */
      for(u8LocIdx= 0; u8LocIdx < ( sizeof(EAS_au8ComChallengeVal)/sizeof(EAS_au8ComChallengeVal[0]) ); u8LocIdx++)
      {
         EAS_au8ComChallengeVal[u8LocIdx] = 0xFF;
      }
   }
#if 0 
   EAS_au8ComChallengeVal[0] = 0x12;
   EAS_au8ComChallengeVal[1] = 0x34;
   EAS_au8ComChallengeVal[2] = 0x56;
   EAS_au8ComChallengeVal[3] = 0x78;
   EAS_au8ComChallengeVal[4] = 0x91;
   EAS_au8ComChallengeVal[5] = 0x23;
   EAS_au8ComChallengeVal[6] = 0x45;
   EAS_au8ComChallengeVal[7] = 0x67;
#endif
}

/******************************************************************************
*  
* !FuncName    : EAS_bReActiveChk  
* !Trigger     : 10ms  
* !Description : 
* !Number      : 1  
* !Reference   : NONE 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean EAS_bReActiveChk(uint8 u8LocIgntSts)
{
   boolean bLocEasActiveFlg = FALSE;
   uint8 u8LocIdx = 0;

   bLocEasActiveFlg = FALSE;
   
   if (u8LocIgntSts <= EAS_BCM_IGNT_ACC)
   {
      for(u8LocIdx= 0; u8LocIdx < 4; u8LocIdx++)
      {
         EAS_au32PinESK32[u8LocIdx] = 0 | (uint32)(((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4)]) << 24) & 0xFF000000)
                                       | (uint32)(((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4) + 1]) << 16) & 0x00FF0000)
                                       | (uint32)(((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4) + 2]) << 8) & 0x0000FF00)
                                       | (uint32)((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4) + 3]) & 0x000000FF);
      }
      
      for(u8LocIdx= 0; u8LocIdx < ( sizeof(EAS_au32PinESK32)/sizeof(EAS_au32PinESK32[0]) ); u8LocIdx++)
      {
         if(0X00000000 != EAS_au32PinESK32[u8LocIdx])
         {
            bLocEasActiveFlg = TRUE;
         }
      }
   }

   if (bLocEasActiveFlg)
   {
      for (u8LocIdx = 0; u8LocIdx < (sizeof(EAS_au8ComChallengeVal)/sizeof(EAS_au8ComChallengeVal[0]) ); u8LocIdx++)
      {
         EAS_au8ComChallengeVal[u8LocIdx] = EAS_au8ComChallengeValBkp[u8LocIdx];
      }
   }

   return bLocEasActiveFlg;
}

/******************************************************************************
*  
* !FuncName   : EAS_vidAuthStateMng
* !Trigger       : 10ms TASK  
* !Description : EAS authentication state machine management.
* !Number      : 2  
* !Reference   : NONE 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void EAS_vidAuthStateMng(void)
{
   boolean bLocEasReActiveFlg = FALSE;
   uint8 u8LocIdx = 0;
   uint8 u8LocIgntSts = 0;

   // MAIN_MSGvidRxIBCM3_0x33C();

   // u8LocIgntSts = MAIN_MSGu8BCM_IgnitionSt;

   if ( (TRUE == EAS_bDefaultEskFlg) && (TRUE == EAS_bDefaultEskPassC))
   {
      EAS_u8TMReleaseSig = EAS_TM_RELS_TM_RELS;
      
      bLocEasReActiveFlg = EAS_bReActiveChk(u8LocIgntSts);
      if (bLocEasReActiveFlg)
      {
         EAS_bDefaultEskFlg = FALSE;
         
         EAS_u8AuthState = EAS_ST_INIT;
         EAS_u8SttTimerCnt = 0;
         EAS_u8Chg1DelayCnt = 0;
         EAS_bImmoCodRcvFlg   = FALSE;
         EAS_bSendNewChalgFlg = FALSE;
      }
   }
   else
   {
      switch(EAS_u8AuthState)
      {
         case EAS_ST_INIT:
            {
               EAS_u8TMReleaseSig = EAS_TM_RELS_UNDEF;

               if(u8LocIgntSts >= EAS_BCM_IGNT_ON)
               {
                  for(u8LocIdx = 0; u8LocIdx < 4; u8LocIdx++)
                  {
                     EAS_au32PinESK32[u8LocIdx] = 0 | (uint32)(((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4)]) << 24) & 0xFF000000)
                                                   | (uint32)(((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4) + 1]) << 16) & 0x00FF0000)
                                                   | (uint32)(((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4) + 2]) << 8) & 0x0000FF00)
                                                   | (uint32)((uint32)(UDS_au8ESKDataNvM_Ram[(u8LocIdx * 4) + 3]) & 0x000000FF);
                  }
                  
                  EAS_u8AuthState = EAS_ST_START_DELAY;
                  EAS_u8AuthVerifyCnt = 0;
                  EAS_u8AuthFailedCnt = 0;
                  /* Time Clear */
                  EAS_u8SttTimerCnt = 0;
                  EAS_u8Chg1DelayCnt = EAS_TIME_TO_CYCLES(EAS_IMMO_START_MAX_DELAY);
               }
            }
         break;
         
         case EAS_ST_START_DELAY:
            {
               if (EAS_u8SttTimerCnt < EAS_u8Chg1DelayCnt)
               {
                  EAS_u8SttTimerCnt++;
               }
               else
               {
                  EAS_u8AuthState = EAS_ST_SEND_CHALLENGE;
               }
            }
         break;

         case EAS_ST_SEND_CHALLENGE:
            {               
               EAS_u8AuthVerifyCnt++;
                                 
               if(EAS_u8AuthVerifyCnt <= EAS_MAX_VERIFY_LIMIT)
               {
                  /* Time Clear */
                  EAS_u8SttTimerCnt = 0;
                  EAS_u8Chg1DelayCnt = EAS_TIME_TO_CYCLES(EAS_IMMO_RESPONSE_TIMEOUT);
                  EAS_u8AuthState = EAS_ST_WAIT_RESPONSE;
                  /* By Zhan: One Cycle Only Uses One ChallengeCode */
                  /* EAS_vidGenChallengeCode(); */
                  /* !Comment: Trigger challenge code sending. */
                  EAS_bImmoCodRcvFlg = FALSE;
                  BSW_vidTrigChallengeCode(EAS_au8ComChallengeVal);
               }
               else
               {
                  EAS_u8AuthState = EAS_ST_ECU_LOCKED;
                  EAS_u8ImmFailReason = EAS_FAIL_BCM_TIMOUT;
               }
            }
         break;

         case EAS_ST_WAIT_RESPONSE:
            {
               if (EAS_u8SttTimerCnt < EAS_u8Chg1DelayCnt)
               {
                  EAS_u8SttTimerCnt++;
                  /* Receive Callback */
                  if(TRUE == EAS_bImmoCodRcvFlg)
                  {
                     EAS_u8AuthState = EAS_ST_STATE_PROCESS;
                     EAS_bImmoCodRcvFlg = FALSE;
                  }
               }
               else
               {
                  EAS_u8AuthState = EAS_ST_SEND_CHALLENGE;
               }
            }
         break;

         case EAS_ST_STATE_PROCESS:
            {
               /* Receive Callback */
               switch(EAS_au8ComImmoCode[EAS_IMMOCODE_STATUS_INDEX])
               {
                  case EAS_KEY_NEEDED_CHECKED:
                     {
                        EAS_u8AuthState = EAS_ST_VERIFY_KEY;
                     }
                     break;
                  
                  case EAS_TXP_AUTH_FAILED:
                     {
                        EAS_u8AuthState = EAS_ST_ECU_LOCKED;
                        EAS_u8ImmFailReason = EAS_FAIL_PEPS_PWR_INVALID;
                     }
                     break;
                  
                  case EAS_TXP_AUTH_ONGOING:
                  case EAS_ENCRYPTED_ONGOING:
                     {
                        EAS_u8AuthState = EAS_ST_RETRY_DELAY;
                        /* Time Clear */
                        EAS_u8SttTimerCnt = 0;
                        EAS_u8Chg1DelayCnt = EAS_TIME_TO_CYCLES(EAS_IMMO_ECU_AUTH_RETRY_DELAY);
                     }
                     break;

                  default:
                     {
                        EAS_u8AuthState = EAS_ST_RETRY_DELAY;
                        /* Time Clear */
                        EAS_u8SttTimerCnt = 0;
                        EAS_u8Chg1DelayCnt = EAS_TIME_TO_CYCLES(EAS_IMMO_ECU_AUTH_RETRY_DELAY);
                     }
                     break;
               }
            }
         break;

         case EAS_ST_RETRY_DELAY:
            {
               if (EAS_u8SttTimerCnt < EAS_u8Chg1DelayCnt)
               {
                  EAS_u8SttTimerCnt++;
               }
               else
               {
                  EAS_u8AuthState = EAS_ST_SEND_CHALLENGE;
               }
            }
         break;

         case EAS_ST_VERIFY_KEY:
            {
               /* Get Refer Key */
               boolean bLocImmoCodeValid = FALSE;
                                    
               bLocImmoCodeValid = EAS_bVerifyImmoCode((uint8 const *)EAS_au8ComImmoCode);
               /* Compare Key */
               if(bLocImmoCodeValid)
               {
                  /* Success */
                  EAS_u8AuthState = EAS_ST_ECU_RELEASE;
               }
               else
               {
                  if(EAS_u8AuthFailedCnt >= (EAS_MAX_VERIFY_FAILED_LIMIT - 1))
                  {
                     EAS_u8AuthState = EAS_ST_ECU_LOCKED;
                     EAS_u8ImmFailReason = EAS_FAIL_CODE_NOTMATCH;
                  }
                  else
                  {
                     EAS_u8AuthFailedCnt++;
                     EAS_u8AuthState = EAS_ST_RETRY_DELAY;
                     /* Time Clear */
                     EAS_u8SttTimerCnt = 0;
                     EAS_u8Chg1DelayCnt = EAS_TIME_TO_CYCLES(EAS_IMMO_ECU_AUTH_RETRY_DELAY);
                  }
               }
            }
         break;

         case EAS_ST_ECU_LOCKED:
            {
               EAS_u8AuthState = EAS_ST_AUTH_END;
               EAS_u8TMReleaseSig = EAS_TM_RELS_LOCKED;
               BSW_vidTrigAuthResult(TRUE);    /* Comment: TRUE = auth fail */
            }
         break;

         case EAS_ST_ECU_RELEASE:
            {
               EAS_u8AuthState = EAS_ST_AUTH_END;
               EAS_u8TMReleaseSig = EAS_TM_RELS_TM_RELS;
               EAS_u8ImmFailReason = EAS_FAIL_AES_SUCCESS; // 0xAA;
               BSW_vidTrigAuthResult(FALSE);    /* Comment: FALSE = auth pass */
            }
         break;

         case EAS_ST_AUTH_END:
            {
               if(u8LocIgntSts <= EAS_BCM_IGNT_ACC)
               {
                  EAS_u8AuthState = EAS_ST_INIT;
               }
            }
         break;

         default:
         break;
      }
   }

   if (EAS_TM_RELS_LOCKED == EAS_u8TMReleaseSig)
   {
      //FaultDetn_BSW_HW_EasAckFail(TRUE);
   }
   else if (EAS_TM_RELS_TM_RELS == EAS_u8TMReleaseSig)
   {
      //FaultDetn_BSW_HW_EasAckFail(FALSE);
   }
   else
   {
      /* !Comment: No process. */
   }
}

/******************************************************************************
*  
* !FuncName   : EAS_vidImmoCodeCallback
* !Trigger       : BSW callout
* !Description : EAS callback function of received IMMO Code.
* !Number      : 3  
* !Reference   : NONE 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void EAS_vidImmoCodeCallback(const uint8* au8LocImmoCode)
{
   uint8 u8LocIdx;

   EAS_bImmoCodRcvFlg = TRUE;
   
   for(u8LocIdx = 0; u8LocIdx < 8; u8LocIdx++)
   {
      EAS_au8ComImmoCode[u8LocIdx] = au8LocImmoCode[u8LocIdx];
   }
}

/******************************************************************************
*  
* !FuncName   : EAS_vidGenChallengeCode
* !Trigger       : EAS
* !Description : Generate new challenge code.
* !Number      : 4  
* !Reference   : NONE 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void EAS_vidGenChallengeCode(void)
{
   uint8 u8LocIdx = 0;
   uint32 u32RandomSeed = 0;
   uint8 u8LocInvalidBytesCounter = 0;
   uint8 u8LocMaxGenTimes = 0;

   do
   {
      u8LocInvalidBytesCounter = 0;
      u8LocMaxGenTimes++;
      
      if (EAS_bRN32EnaOnC)
      {
         /* Byte0~3: Random Val */
         u32RandomSeed         = (uint32)STM1_TIM0.U;
         EAS_au8ParmRN32[0] = (uint8)(u32RandomSeed & 0x000000FF);
         EAS_au8ParmRN32[1] = (uint8)( (u32RandomSeed & 0x0000FF00) >> 8);
         EAS_au8ParmRN32[2] = (uint8)( (u32RandomSeed & 0x00FF0000) >> 16);
         EAS_au8ParmRN32[3] = (uint8)( (u32RandomSeed & 0xFF000000) >> 24);
      }
      else
      {
         /* Byte0~3: Fixed Val */
         for(u8LocIdx = 0; u8LocIdx < (sizeof(EAS_au8ParmRN32) / sizeof(EAS_au8ParmRN32[0])); u8LocIdx++)
         {
            EAS_au8ParmRN32[u8LocIdx] = EAS_aku8RN32[u8LocIdx];
         }
         u32RandomSeed = 0 
                       | (((uint32)EAS_aku8RN32[0]) & 0x000000FF)
                       | (((uint32)EAS_aku8RN32[1] << 8) & 0x0000FF00)
                       | (((uint32)EAS_aku8RN32[2] << 16) & 0x00FF0000)
                       | (((uint32)EAS_aku8RN32[3] << 24) & 0xFF000000);
      }

      /* Bytes 4~7: Gen From Byte0~3 */
      u32RandomSeed ^= 0xB356A523;
      u32RandomSeed = ( u32RandomSeed << 7 ) | ( u32RandomSeed >> 24 );
      EAS_au8ParmEacEncr[0] = (uint8)(u32RandomSeed & 0x000000FF);
      EAS_au8ParmEacEncr[1] = (uint8)( (u32RandomSeed & 0x0000FF00) >> 8);
      EAS_au8ParmEacEncr[2] = (uint8)( (u32RandomSeed & 0x00FF0000) >> 16);
      EAS_au8ParmEacEncr[3] = (uint8)( (u32RandomSeed & 0xFF000000) >> 24);
      
      /* !Comment: Generate challenge value, random number at byte0~3. */
      for(u8LocIdx = 0; u8LocIdx < 4; u8LocIdx++)
      {
         EAS_au8ComChallengeVal[u8LocIdx] = EAS_au8ParmRN32[u8LocIdx];
      }
      for(u8LocIdx = 0; u8LocIdx < 4; u8LocIdx++)
      {
         //EAS_au8ComChallengeVal[u8LocIdx + 4] = EAS_au8ParmEacEncr[u8LocIdx + 12];
         EAS_au8ComChallengeVal[u8LocIdx + 4] = EAS_au8ParmEacEncr[u8LocIdx];
      }
      
      for(u8LocIdx = 0; u8LocIdx < 8; u8LocIdx++)
      {
         /* Comment: all 8 bytes 0x00 or 0xFF are not allowed as a valid challenge code*/
         if(0x00 == EAS_au8ComChallengeVal[u8LocIdx])
         {
            u8LocInvalidBytesCounter++;
         }
         else
         {
            break;
         }
      }
      if(0 == u8LocInvalidBytesCounter)
      {
         for(u8LocIdx = 0; u8LocIdx < 8; u8LocIdx++)
         {
            /* Comment: all 8 bytes 0x00 or 0xFF are not allowed as a valid challenge code*/
            if(0xFF == EAS_au8ComChallengeVal[u8LocIdx])
            {
               u8LocInvalidBytesCounter++;
            }
            else
            {
               break;
            }
         }
      }
   }while((u8LocInvalidBytesCounter >= 8) && (u8LocMaxGenTimes <= 3));

   /* Comment: Re-Gen Failure, Use Default Val */
   if(u8LocMaxGenTimes >= 3)
   {
      for(u8LocIdx = 0; u8LocIdx < 4; u8LocIdx++)
      {
         EAS_au8ComChallengeVal[u8LocIdx] = u8LocIdx;
         EAS_au8ComChallengeVal[u8LocIdx + 4] = u8LocIdx;
      }
   }

   for (u8LocIdx = 0; u8LocIdx < (sizeof(EAS_au8ComChallengeValBkp)/sizeof(EAS_au8ComChallengeValBkp[0]) ); u8LocIdx++)
   {
      EAS_au8ComChallengeValBkp[u8LocIdx] = EAS_au8ComChallengeVal[u8LocIdx];
   }
}

/******************************************************************************
*  
* !FuncName   : EAS_bVerifyImmoCode
* !Trigger       : EAS
* !Description : Check whether IMMO Code is valid or not.
* !Number      : 5  
* !Reference   : NONE 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean EAS_bVerifyImmoCode(uint8 const * pku8ImmoCode)
{
   boolean bLocImmoCodValid = TRUE;
   uint8 u8LocIdx = 0;
   uint32 u32LocTempESK[4] = {0};
   uint32 u32LocTempKey[2] = {0};

   for(u8LocIdx = 0; u8LocIdx < 4; u8LocIdx++)
   {
      u32LocTempESK[u8LocIdx] = (uint32)EAS_au32PinESK32[u8LocIdx];
   }

   for(u8LocIdx = 0; u8LocIdx < 8; u8LocIdx++)
   {
      EAS_au8ParmEarEncr1[u8LocIdx] = EAS_au8ComChallengeVal[u8LocIdx];
   }
   
   u32LocTempKey[0] = 0 | (EAS_au8ParmEarEncr1[0] << 24)
                        | (EAS_au8ParmEarEncr1[1] << 16)
                        | (EAS_au8ParmEarEncr1[2] << 8)
                        | (EAS_au8ParmEarEncr1[3]);
   
   u32LocTempKey[1] = 0 | (EAS_au8ParmEarEncr1[4] << 24)
                        | (EAS_au8ParmEarEncr1[5] << 16)
                        | (EAS_au8ParmEarEncr1[6] << 8)
                        | (EAS_au8ParmEarEncr1[7]);
   
   /* !Comment: Get key. */
   EAS_vidEncrypt((void *)EAS_NUM_ROUNDS, (void *)u32LocTempKey, (void *)u32LocTempESK);

   EAS_au8ParmEarEncr1[0] = (uint8)((u32LocTempKey[0] & 0xFF000000) >> 24);
   EAS_au8ParmEarEncr1[1] = (uint8)((u32LocTempKey[0] & 0x00FF0000) >> 16);
   EAS_au8ParmEarEncr1[2] = (uint8)((u32LocTempKey[0] & 0x0000FF00) >> 8);
   EAS_au8ParmEarEncr1[3] = (uint8)((u32LocTempKey[0] & 0x000000FF));
   EAS_au8ParmEarEncr1[4] = (uint8)((u32LocTempKey[1] & 0xFF000000) >> 24);
   EAS_au8ParmEarEncr1[5] = (uint8)((u32LocTempKey[1] & 0x00FF0000) >> 16);
   EAS_au8ParmEarEncr1[6] = (uint8)((u32LocTempKey[1] & 0x0000FF00) >> 8);
   EAS_au8ParmEarEncr1[7] = (uint8)((u32LocTempKey[1] & 0x000000FF));

   for(u8LocIdx = 0; u8LocIdx < 6; u8LocIdx++)
   {
      if(EAS_au8ParmEarEncr1[u8LocIdx] != pku8ImmoCode[u8LocIdx + 2])
      {
         bLocImmoCodValid = FALSE;
         break;
      }
   }

   return bLocImmoCodValid;
}

/******************************************************************************
*  
* !FuncName   : EAS_u8GetTMRelsSig
* !Trigger       : EAS
* !Description : Get TM Release signal value
* !Number      : 6  
* !Reference   : NONE 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
uint8 EAS_u8GetTMRelsSig(void)
{
   return EAS_u8TMReleaseSig;
}

/******************************************************************************
*  
* !FuncName   : EAS_u8GetImmFailRes
* !Trigger       : EAS
* !Description : Get immocode failure reason
* !Number      : 7
* !Reference   : NONE 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
uint8 EAS_u8GetImmFailRes(void)
{
   return EAS_u8ImmFailReason;
}

#define EAS_STOP_SEC_CODE
#include "EAS_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
