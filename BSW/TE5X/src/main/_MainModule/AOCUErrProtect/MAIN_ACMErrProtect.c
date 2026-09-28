/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "MAIN_ACMErrProtect.h"
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

#define ACM_ASC_RECOVER_TIME        (5000)

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint16  AMAIN_u16ACMASCStartupChkFaultLowCnt = 0;
static uint16  AMAIN_u16ACMASCStartupChkFaultHighCnt = 0;
static uint8   AMAIN_u8ACMASCRecoverTimes = 0;
static uint16  AMAIN_u16ACMASCRecoverCnt = 0;
static uint8   TPPC_u8ACMASCStep = ACM_ASC_TYPE_STARTUP_CHECK;
static boolean TPPC_bACMASCEnableState = 0;

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
void TPPC_vidACMASCStateMng(void)
{
   static boolean bLocACMASCState = TRUE; 

   switch (TPPC_u8ACMASCStep)
   {
      case ACM_ASC_TYPE_STARTUP_CHECK:
      {
         bLocACMASCState = IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N();

         if (bLocACMASCState == 0) 
         {
            AMAIN_u16ACMASCStartupChkFaultHighCnt = 0;
            AMAIN_u16ACMASCStartupChkFaultLowCnt++;
            if (AMAIN_u16ACMASCStartupChkFaultLowCnt >= 200)
            {
               TPPC_u8ACMASCStep = ACM_ASC_TYPE_FAULT;
               TPPC_bACMASCEnableState = 1;          
               CDD_TPPC_vidACMSoftTrapTrigger();
               GtmM_vid_Disable_GTMTIM2SR4_ISR();
               Icu_17_TimerIp_EnableNotification(IcuConf_IcuChannel_M_FAULT_ACM_HS_N);
            }
         }
         else
         {
            AMAIN_u16ACMASCStartupChkFaultLowCnt = 0;
            AMAIN_u16ACMASCStartupChkFaultHighCnt++;
            if (AMAIN_u16ACMASCStartupChkFaultHighCnt >= 200)
            {
               Icu_17_TimerIp_EnableNotification(IcuConf_IcuChannel_M_FAULT_ACM_HS_N);
               TPPC_bACMASCEnableState = 0;
               TPPC_u8ACMASCStep = ACM_ASC_TYPE_NORMAL;
            }
         }

         break;
      }
      case ACM_ASC_TYPE_NORMAL:
         break;
      case ACM_ASC_TYPE_FAULT: 
      {
         bLocACMASCState = IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N();

         if (bLocACMASCState)
         {
            AMAIN_u16ACMASCRecoverCnt++;
            if (AMAIN_u16ACMASCRecoverCnt >= ACM_ASC_RECOVER_TIME)
            {
               if (AMAIN_u8ACMASCRecoverTimes >= 5)
               {
                  TPPC_u8ACMASCStep = ACM_ASC_TYPE_LOCK;
               }
               else
               {
                  TPPC_u8ACMASCStep = ACM_ASC_TYPE_RECOVER;
                  TPPC_bACMASCEnableState = 0;
                  AMAIN_u8ACMASCRecoverTimes++;
                  AMAIN_u16ACMASCRecoverCnt = 0;
               }
            }
         }
         else
         {
            AMAIN_u16ACMASCRecoverCnt = 0;
         }

         break;
      } 
      case ACM_ASC_TYPE_RECOVER:
      {
         bLocACMASCState = IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N();
         if ((bLocACMASCState) && (TRUE == TPPCDev_bGetAscisClose(eTPPC_DEV_GTM_ACM_INDEX)))
         {
            GtmM_vidClearPendingInterrupts(&GTM_TIM2_CH4_IRQ_NOTIFY);
            GtmM_vid_Enable_GTMTIM2SR4_ISR();
            TPPC_u8ACMASCStep = ACM_ASC_TYPE_NORMAL;
         }
         else
         {
            ;
         }

         break; 
      }      
      case  ACM_ASC_TYPE_LOCK:
      {
         break;
      }
      default:
         break;
   }
}

boolean MAIN_bGetACMASCEnableState(void)
{
   return TPPC_bACMASCEnableState;
}

void MAIN_bSetACMASCEnableState(boolean bState)
{
    TPPC_bACMASCEnableState = bState;
}

uint8 MAIN_u8GetACMASCStep(void)
{
   return TPPC_u8ACMASCStep;
}

void ACM_CallBack(void)
{
   GtmM_vid_Disable_GTMTIM2SR4_ISR();
   TPPC_bACMASCEnableState = 1;
   TPPC_u8ACMASCStep = ACM_ASC_TYPE_FAULT;
}

