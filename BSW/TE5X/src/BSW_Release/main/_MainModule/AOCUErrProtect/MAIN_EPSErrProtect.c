/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "MAIN_EPSErrProtect.h"
#include "IfxGtm_reg.h"
#include "GtmM.h"
#include "Icu_17_TimerIp_Cfg.h"
#include "Icu_17_TimerIp.h"
#include "CDD_TPPC.h"
/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

#define EPS_ASC_RECOVER_TIME        (5000)

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint16  AMAIN_u16EPSASCStartupChkFaultLowCnt = 0;
static uint16  AMAIN_u16EPSASCStartupChkFaultHighCnt = 0;
static uint8   AMAIN_u8EPSASCRecoverTimes = 0;
static uint16  AMAIN_u16EPSASCRecoverCnt = 0;
static uint8   TPPC_u8EPSASCStep = EPS_ASC_TYPE_STARTUP_CHECK;
static boolean TPPC_bEPSASCEnableState = 0;

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/


/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/******************************************************************************
*  
* !FuncName    : MAIN_REC_vidClrErrCode  
* !Description : Clear error code.
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void TPPC_vidEPSASCStateMng(void)
{
   static boolean bLocEPSASCState = TRUE; 

   switch (TPPC_u8EPSASCStep)
   {
      case EPS_ASC_TYPE_STARTUP_CHECK:  // 判断上电自检状态，进行状态机跳转。若故障，状态机跳转到故障状态，通过标志位报故障，关管，禁止中断请求
      {
         bLocEPSASCState = IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N();

         if (bLocEPSASCState == 0) 
         {
            AMAIN_u16EPSASCStartupChkFaultHighCnt = 0;
            AMAIN_u16EPSASCStartupChkFaultLowCnt++;
            if (AMAIN_u16EPSASCStartupChkFaultLowCnt >= 200)
            {
               TPPC_u8EPSASCStep = EPS_ASC_TYPE_FAULT;
               TPPC_bEPSASCEnableState = 1;            // 故障标志
               CDD_TPPC_vidEPSSoftTrapTrigger();
               /*禁止中断请求*/
               GtmM_vid_Disable_GTMTIM3SR6_ISR();
               Icu_17_TimerIp_EnableNotification(IcuConf_IcuChannel_M_FAULT_EPS_HS_N);               
            }
         }
         else
         {
            AMAIN_u16EPSASCStartupChkFaultLowCnt = 0;
            AMAIN_u16EPSASCStartupChkFaultHighCnt++;
            if (AMAIN_u16EPSASCStartupChkFaultHighCnt >= 200)
            {
               Icu_17_TimerIp_EnableNotification(IcuConf_IcuChannel_M_FAULT_EPS_HS_N);
               TPPC_bEPSASCEnableState = 0;
               TPPC_u8EPSASCStep = EPS_ASC_TYPE_NORMAL;
            }
         }

         break;
      }
      case EPS_ASC_TYPE_NORMAL:
         break;
      case EPS_ASC_TYPE_FAULT: // 恢复计数5s，恢复5次后不允许恢复；
      {
         bLocEPSASCState = IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N();

         if (bLocEPSASCState)
         {
            AMAIN_u16EPSASCRecoverCnt++;
            if (AMAIN_u16EPSASCRecoverCnt >= EPS_ASC_RECOVER_TIME)
            {
               if (AMAIN_u8EPSASCRecoverTimes >= 5)
               {
                  TPPC_u8EPSASCStep = EPS_ASC_TYPE_LOCK;
               }
               else
               {
                  TPPC_u8EPSASCStep = EPS_ASC_TYPE_RECOVER;
                  TPPC_bEPSASCEnableState = 0;
                  AMAIN_u8EPSASCRecoverTimes++;
                  AMAIN_u16EPSASCRecoverCnt = 0;
               }
            }
         }
         else
         {
            AMAIN_u16EPSASCRecoverCnt = 0;
         }

         break;
      } 
      case EPS_ASC_TYPE_RECOVER: // clr req 条件由故障标志位来判断，若TPPC_bACMASCEnableState = 0，可恢复；清除TIM中断请求标志，启动CPU中断响应
      {
         bLocEPSASCState = IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N();
         /*清除TIM中断请求标志、启动中断响应*/
         if ((bLocEPSASCState) && (TRUE == TPPCDev_bGetAscisClose(eTPPC_DEV_GTM_EPS_INDEX)))
         {
            GtmM_vidClearPendingInterrupts(&GTM_TIM3_CH6_IRQ_NOTIFY);
            GtmM_vid_Enable_GTMTIM3SR6_ISR();
            TPPC_u8EPSASCStep = EPS_ASC_TYPE_NORMAL;
         }
         else
         {
            ;
         }

         break; 
      }      
      case  EPS_ASC_TYPE_LOCK:
      {
         break;
      }
      default:
         break;
   }
}

boolean MAIN_bGetEPSASCEnableState(void)
{
   return TPPC_bEPSASCEnableState;
}

void MAIN_bSetEPSASCEnableState(boolean bState)
{
    TPPC_bEPSASCEnableState = bState;
}

uint8 MAIN_u8GetEPSASCStep(void)
{
   return TPPC_u8EPSASCStep;
}

void EPS_CallBack(void)
{
   GtmM_vid_Disable_GTMTIM3SR6_ISR();
   TPPC_bEPSASCEnableState = 1;     
   TPPC_u8EPSASCStep = EPS_ASC_TYPE_FAULT;
}

