/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Module          : RcMAIN                                                    */
/* !Description     : Gateway BSW - Application                               */
/*                                                                            */
/* !File            : MAIN_PduTsk.c                                           */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/******************************************************************************/
/* 1.1  / MAIN_PduTaskInit                                                    */
/* 2    / MAIN_vidPduTask1ms                                                  */
/* 3    / MAIN_vidPduTask2ms                                                  */
/* 4    / MAIN_vidPduTask5ms                                                  */
/* 5    / MAIN_vidPduTask10ms                                                 */
/* 6    / MAIN_vidPduTask100ms                                                */
/* 7    / MAIN_vidPduTask200ms                                                */
/******************************************************************************/
/******************************************************************************/

/*******************************************************************************
 ****  User config
 ******************************************************************************/
#include "MAIN_Cfg.h"

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_PduTsk.h"
#include "MAIN_PduL.h"
#include "MAIN_ECPCfg_PDU.h"
#include "MAIN_RollErrCode.h"
#include "_MainModule.h"
#include "BSW.h"
#include "IOHAL.h"
#include "MAIN_MSG_Auto_Can01_L.h"
#include "FAULT_Api.h"
#include "MATHSRV_E.h"
#include "PortMux.h"
#include "MAIN_PduCtrl.h"
#include "FR_System.h"

#ifdef _PLATFORM_GEN_CODE_EMB_
   #include "SWC_FT.h"
   #include "SWC_FS.h"
#endif

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
#ifdef _PLATFORM_GEN_CODE_EMB_
static void MAIN_vidCanInterface(void);
#endif
static void MAIN_vidFaultHandler(void);

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

extern uint16 MAIN_u16ADS1115Result;

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint8 RcMAIN_u8DEV_Fault[RcMAIN_FaultCodeNum_COLS] = {0};

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_INIT                                                   */
/* !Trigger     : Init                                                        */
/* !Description : This task is launched at the init of the OS                 */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_PduTaskInit(void)
{
   /*Contactor control buffer enables control*/
   IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM(1);

   IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3(0);
 }

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_1MS                                               */
/* !Trigger     : Time (1ms)                                                  */
/* !Description : This task has a 1ms period                                  */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_vidPduTask1ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   /*IR Detn*/
   FS_IRTesterVolt_U16 = MAIN_u16ADS1115Result;
   
   if(FSEVBHV_IRTesterSwitchK1 == TRUE) 
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1(0);
   } 
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1(1);
   }       
   if(FSEVBHV_IRTesterSwitchK2 == TRUE)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2(0);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2(1);
   }
#endif
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_2MS                                               */
/* !Trigger     : Time (2ms)                                                  */
/* !Description : This task has a 2ms period                                  */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_vidPduTask2ms(void)
{

}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_5MS                                               */
/* !Trigger     : Time (5ms)                                                  */
/* !Description : This task has a 5ms period                                  */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_vidPduTask5ms(void)
{

}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_10MS                                              */
/* !Trigger     : Time (10ms)                                                 */
/* !Description : This task has a 10ms period                                 */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_vidPduTask10ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   /***RC input***/
   
   /*P1 Voltage feedback before precharging resistance */
   RC_AN_Bus_Status = PMux_u16GetInputVal(ePMUX_PreChargePackFb);

   /*P2Main positive contactor feedback */         
   RC_AN_KM1_Status = PMux_u16GetInputVal(ePMUX_MainPositiveFb);

   /*P3Fast charge 1 positive contactor feedback   */        
   RC_AN_KM2_Status  = PMux_u16GetInputVal(ePMUX_FastCharge_1_Fb);

   /*P4 Fast charge 1 negative contactor KM6 adhesion detection*/ 
   RC_AN_KM3_Status  = IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F();        

   /*P5 Fast charge 2 positive contactor feedback*/ 
   RC_AN_KM4_Status  = PMux_u16GetInputVal(ePMUX_FastCharge_2_Fb); 
   /*P6 Fast charge 2 negative contactor KM8 adhesion detection*/ 

   RC_AN_KM5_Status  = IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F(); 
   /*P7 Fast charge 3 positive contactor feedback*/ 

   RC_AN_KM6_Status  = PMux_u16GetInputVal(ePMUX_FastCharge_3_VolFb);          
   /*P9 Fast charge 4 positive contactor feedback*/ 
   RC_AN_KM7_Status  = PMux_u16GetInputVal(ePMUX_FastCharge_4_VolFb); 
   /*P11 */ 
   RC_AN_KM8_Status  = PMux_u16GetInputVal(ePMUX_SuperStructure_1_VolFb); 
   /*P12 */ 
   RC_AN_KM9_Status  = PMux_u16GetInputVal(ePMUX_SuperStructure_2_VolFb); 
   /*P13 */ 
   RC_AN_KM10_Status  = PMux_u16GetInputVal(ePMUX_SmallLoad_VolFb); 
   /*P14 */ 
   RC_AN_KM11_Status  = PMux_u16GetInputVal(ePMUX_SmallLoadReserved_VolFb); 

   RC_AN_PB1_Status = IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK1();

   RC_AN_PB2_Status = IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK2();

   RC_AN_PB3_Status = IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK3();

   RC_AN_PB4_Status = IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4();

   /*Voltage Eequalizing Relay Control*/
   
   if(TRUE == RCSMACS_BswKM20PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1(0);
   }
   
   // if(TRUE == RCSMACS_BswKM21PowerOn)
   // {
   //   IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2(1);
   // }
   // else
   // {
   //   IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2(0);
   // }

   // if(TRUE == RCSMACS_BswKM22PowerOn)
   // {
   //   IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3(1);
   // }
   // else
   // {
   //   IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3(0);
   // }
   
   // if(TRUE == RCSMACS_BswKM23PowerOn)
   // {
   //   IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4(1);
   // }
   // else
   // {
   //   IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4(0);
   // }
   
   if(TRUE == RCSMACS_BswQS1PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC(0);
   }

   /*MAIN Pos Relay*/
   if(TRUE == RCSMACS_BswKM1PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1(0);
   }
   
   if(TRUE == RCSMACS_BswKM2PowerOn) 
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2(0);
   }

   if(TRUE == RCSMACS_BswKM3PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3(0);
   }
   
   if(TRUE == RCSMACS_BswKM4PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4(0);
   }
   
   /*Fast Charge1 Pos*/
   if(TRUE == RCSMACS_BswKM5PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM5_KC1Z(1);           
      IOHAL_vidWrite_CH_DIO_OUT_M_KM7_KC1Z(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM5_KC1Z(0);           
      IOHAL_vidWrite_CH_DIO_OUT_M_KM7_KC1Z(0);
   }
   /*Fast Charge1 Neg Detection enable */        
   // if(TRUE == RCSMACS_BswK1PowerOn)
   // {
   //    IOHAL_vidWrite_CH_DIO_OUT_M_K1_KCF_XJCQ1(1);           
   // }
   // else
   // {
   //    IOHAL_vidWrite_CH_DIO_OUT_M_K1_KCF_XJCQ1(1);           
   // }

   /*Fast Charge1 Neg*/     
   
   if(TRUE == RCSMACS_BswKM6PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM6_KC1F(1);           
      IOHAL_vidWrite_CH_DIO_OUT_M_KM8_KC2F(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM6_KC1F(0);           
      IOHAL_vidWrite_CH_DIO_OUT_M_KM8_KC2F(0);
   }
   /*Fast Charge2  Ctrl*/
   if(TRUE == RCSMACS_BswKM9PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM9_KC2Z(1);           
      IOHAL_vidWrite_CH_DIO_OUT_M_KM11_KC2Z(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM9_KC2Z(0);           
      IOHAL_vidWrite_CH_DIO_OUT_M_KM11_KC2Z(0);
   }

   /*Fast Charge2 Neg Detection enable */        
   // if(TRUE == RCSMACS_BswK2PowerOn)
   // {
   //    IOHAL_vidWrite_CH_DIO_OUT_M_K2_KCF_XJCQ2(1);           
   // }
   // else
   // {
   //    IOHAL_vidWrite_CH_DIO_OUT_M_K2_KCF_XJCQ2(1);           
   // }

   if(TRUE == RCSMACS_BswKM10PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM10_KC3F(1);           
      IOHAL_vidWrite_CH_DIO_OUT_M_KM12_KC4F(1);
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM10_KC3F(0);           
      IOHAL_vidWrite_CH_DIO_OUT_M_KM12_KC4F(0);
   }

      /*Fast Charge3  Ctrl*/
   if(TRUE == RCSMACS_BswKM13PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM13_KC3Z(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM13_KC3Z(0);           
   }
   if(TRUE == RCSMACS_BswQS2PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC(0);           
   }

   /*Fast Charge4  Ctrl*/
   if(TRUE == RCSMACS_BswKM15PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM15_KC4Z(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM15_KC4Z(0);           
   }
   if(TRUE == RCSMACS_BswQS3PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC(0);           
   }
   /*Accessory1*/
   if(TRUE == RCSMACS_BswKM17PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM17_SZ1(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM17_SZ1(0);           
   }
   if(TRUE == RCSMACS_BswQS4PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC(0);           
   }
   
   /*Accessory2*/
   if(TRUE == RCSMACS_BswKM18PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM18_SZ2(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM18_SZ2(0);           
   }
   if(TRUE == RCSMACS_BswQS5PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC(0);           
   }  
   /*AirCondition*/
   if(TRUE == RCSMACS_BswKM24PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM24_ZXFZ(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM24_ZXFZ(0);           
   }
   if(TRUE == RCSMACS_BswQS7PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC(0);           
   }  

   /*Heater*/
   if(TRUE == RCSMACS_BswKM19PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM19_XGLFZ(1);           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_KM19_XGLFZ(0);           
   }

   if((TRUE == RCSMACS_BswQS6PowerOn)&&(FALSE == RCSMACS_PreChargeOhmFaultFlg))
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC(1);        
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC(0);           
   }

   if(TRUE == RCSMACS_BswQ1PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1(1);
      MAIN_MSGu8PDU2_Distri1HV1StsFb = 0X01;           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1(0);
      MAIN_MSGu8PDU2_Distri1HV1StsFb = 0X00;           
   } 

   if(TRUE == RCSMACS_BswQ2PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2(1);
      MAIN_MSGu8PDU2_Distri1HV2StsFb = 0X01;           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2(0);
      MAIN_MSGu8PDU2_Distri1HV2StsFb = 0X00;           
   } 

   if(TRUE == RCSMACS_BswQ3PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3(1);
      MAIN_MSGu8PDU2_Distri1HV3StsFb = 0X01;           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3(0);
      MAIN_MSGu8PDU2_Distri1HV3StsFb = 0X00;           
   } 

   if(TRUE == RCSMACS_BswQ4PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4(1);
      MAIN_MSGu8PDU2_Distri1HV4StsFb = 0X01;           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4(0);
      MAIN_MSGu8PDU2_Distri1HV4StsFb = 0X00;           
   } 
   
   if(TRUE == RCSMACS_BswQ5PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1(1);
      MAIN_MSGu8PDU2_Distri1HV5StsFb = 0X01;           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1(0);
      MAIN_MSGu8PDU2_Distri1HV5StsFb = 0X00;           
   } 
   
   if(TRUE == RCSMACS_BswQ6PowerOn)
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2(1);
      MAIN_MSGu8PDU2_Distri1HV6StsFb = 0X01;           
   }
   else
   {
      IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2(0);
      MAIN_MSGu8PDU2_Distri1HV6StsFb = 0X00;           
   } 

//Current and Temp Sample
//NTC
   RC_AN_AD_NTC1 = PMux_u16GetInputVal(ePMUX_BusCopperBar_4_TempSample);
   RC_AN_AD_NTC2 = PMux_u16GetInputVal(ePMUX_BusCopperBar_2_TempSample);
   RC_AN_AD_NTC3 = PMux_u16GetInputVal(ePMUX_BusCopperBar_1_TempSample);
//IGBT Temp Sample
   RC_AN_AD_NTC4 = PMux_u16GetInputVal(ePMUX_HeatIGBT_1_TempSample);
   RC_AN_AD_NTC5 = PMux_u16GetInputVal(ePMUX_HeatIGBT_2_TempSample);
   RC_AN_AD_NTC6 = PMux_u16GetInputVal(ePMUX_HeatIGBT_3_TempSample);
   RC_AN_AD_NTC7 = PMux_u16GetInputVal(ePMUX_HeatIGBT_4_TempSample);
   RC_AN_AD_NTC8 = PMux_u16GetInputVal(ePMUX_PTC_1_IGBT_TempSample);
   RC_AN_AD_NTC9 = PMux_u16GetInputVal(ePMUX_PTC_2_IGBT_TempSample);
//IGBT Current Sample
   RC_AN_AD_LCS1 = PMux_u16GetInputVal(ePMUX_Heat_1_CurSample);
   RC_AN_AD_LCS2 = PMux_u16GetInputVal(ePMUX_Heat_2_CurSample);
   RC_AN_AD_LCS3 = PMux_u16GetInputVal(ePMUX_Heat_3_CurSample);
   RC_AN_AD_LCS4 = PMux_u16GetInputVal(ePMUX_Heat_4_CurSample);
   RC_AN_AD_LCS5 = PMux_u16GetInputVal(ePMUX_PTC_1_CurSample);
   RC_AN_AD_LCS6 = PMux_u16GetInputVal(ePMUX_PTC_2_CurSample);

   RC_VCU_KM1_Cmd                = MAIN_MSGu8VCU_MainContaPEn;
   RC_VCU_KM19_Cmd               = MAIN_MSGu8VCU_MainContaPEn;
   MAIN_MSGu8PDU2_MainRelayFlt   = RCSMACS_KM1FaultSts;
   if(FALSE == MAIN_MSGu8VCU_MainContaPEn)
   {
      MAIN_MSGu8PDU2_MainConPStsFb = 0;
   }
   else
   {
      MAIN_MSGu8PDU2_MainConPStsFb = RCEVHCM_KM1CloseFlg;
   }

   MAIN_MSGu8PDU2_AvgVolConnStsFb  = RCEVHCM_BusCloseFlg;
   MAIN_MSGu8PDU2_AvgVoRelayFlt    = RCSMACS_KM20FaultSts;
   if (RCSMACS_FLT_WELDED == RCSMACS_KM1FaultSts)
   {
      RC_VCU_KM1_Cmd = 0;
   }

   RC_VCU_KM5_Cmd                       = MAIN_MSGu8VCU_ChrgContaP1Ctl;
   RC_VCU_KM7_Cmd                       = MAIN_MSGu8VCU_ChrgContaN1Ctl;
   RC_VCU_KM9_Cmd                       = MAIN_MSGu8VCU_ChrgContaP2Ctl;
   RC_VCU_KM10_Cmd                      = MAIN_MSGu8VCU_ChrgContaN2Ctl;
   MAIN_MSGu8PDU2_PosCharge1StsFb       = MAIN_MSGu8VCU_ChrgContaP1Ctl;
   MAIN_MSGu8PDU2_PosCharge1Flt         = RCSMACS_KM5FaultSts;
   MAIN_MSGu8PDU2_NegCharge1StsFb       = MAIN_MSGu8VCU_ChrgContaN1Ctl;
   MAIN_MSGu8PDU2_NegCharge1Flt         = RCSMACS_KM6FaultSts;
   MAIN_MSGu8PDU2_PosCharge2StsFb       = MAIN_MSGu8VCU_ChrgContaP2Ctl;
   MAIN_MSGu8PDU2_PosCharge2Flt         = RCSMACS_KM9FaultSts;
   MAIN_MSGu8PDU2_NegCharge2StsFb       = MAIN_MSGu8VCU_ChrgContaN2Ctl;
   MAIN_MSGu8PDU2_NegCharge2Flt         = RCSMACS_KM10FaultSts;

   MAIN_MSGu16PDU2_BatBranch1VoltageRaw = RCEVHCM_PB1VoltageFild;
   MAIN_MSGu16PDU2_BatBranch2VoltageRaw = RCEVHCM_PB2VoltageFild;

   MAIN_MSGf32PDU2_ChBra1Volt           = RCEVHCM_KM2VoltageFild;
   MAIN_MSGf32PDU2_ChBra2Volt           = RCEVHCM_KM4VoltageFild;
//18FFC130          
   MAIN_MSGf32PDU2_MCUPosVolt           = RCEVHCM_KM1VoltageFild;
             
   MAIN_MSGf32PDU2_PrechResFrtVolt      = RCEVHCM_BusVoltageFild;
//18FFC630     
   MAIN_MSGf32PDU2_BatTotalVoltage      = RCEVHCM_KM1VoltageFild;
   MAIN_MSGf32PDU2_BatTotalCurrent      = (MAIN_MSGf32IP_VALUE_0 + MAIN_MSGf32IP_VALUE_1) / 1000;
//10FF9B27
   if(TRUE == RCEVHCM_KM1CloseFlg) 
   {
      RC_VCU_Q1_Cmd                     = MAIN_MSGu8VCU_Distribution1Q1Ctl;
      RC_VCU_Q2_Cmd                     = MAIN_MSGu8VCU_Distribution1Q2Ctl;
      RC_VCU_Q3_Cmd                     = MAIN_MSGu8VCU_Distribution1Q3Ctl;
      RC_VCU_Q4_Cmd                     = MAIN_MSGu8VCU_Distribution1Q4Ctl;
      RC_VCU_Q5_Cmd                     = MAIN_MSGu8VCU_Distribution1Q5Ctl;
      RC_VCU_Q6_Cmd                     = MAIN_MSGu8VCU_Distribution1Q6Ctl;
   }
//18FFC430
   MAIN_MSGu8PDU2_DistriContSts         = RCEVHCM_KM10CloseFlg;
   MAIN_MSGu8PDU2_DistriContFlt         = RCSMACS_KM19FaultSts;
//18FFC130
   MAIN_MSGf32PDU2_DistriContReVolt     = RCEVHCM_KM10VoltageFild;

//18FFC230 NTC Temp
   MAIN_MSGf32PDU2_BatteryBranchTemp    = RCEVETA_NTC1;
   MAIN_MSGf32PDU2_PositiveBusbarTemp   = RCEVETA_NTC2;
   MAIN_MSGf32PDU2_NegativeBusbarTemp   = RCEVETA_NTC3;
//18FFBE30 PDU2_BatteryBranchVoltage
   MAIN_MSGf32PDU2_BatBranch1Voltage    = RCEVHCM_PB1VoltageFild;
   MAIN_MSGf32PDU2_BatBranch2Voltage    = RCEVHCM_PB2VoltageFild;
//18FFC330
   MAIN_MSGf32PDU2_BatBra1ContTemp      = 0;
   MAIN_MSGf32PDU2_BatBra2ContTemp      = 0;
   MAIN_MSGf32PDU2_BatBra3ContTemp      = 0;
   MAIN_MSGf32PDU2_BatBra4ContTemp      = 0;
   MAIN_MSGf32PDU2_ChaBra1ContTemp      = 0;
   MAIN_MSGf32PDU2_ChaBra2ContTemp      = 0;
   MAIN_MSGf32PDU2_ChaBra3ContTemp      = 0;
   MAIN_MSGf32PDU2_ChaBra4ContTemp      = 0;

//18FFC430
   MAIN_MSGu8PDU2_Distri1HV1Flt         = 0X00;    
   MAIN_MSGu8PDU2_Distri1HV2Flt         = 0X00;
   MAIN_MSGu8PDU2_Distri1HV3Flt         = 0X00;
   MAIN_MSGu8PDU2_Distri1HV4Flt         = 0X00;
   MAIN_MSGu8PDU2_Distri1HV5Flt         = 0X00;
   MAIN_MSGu8PDU2_Distri1HV6Flt         = 0X00;
//18FFC430 Q5 Q6 Status and Fault
   MAIN_MSGu8PDU2_Distri1HV5StsFb       = RCSMACS_BswQ5PowerOn;
   if((TRUE == RCEVETA_NTC8TempOverFlg)||(TRUE == RCEVLCS_LCS5CurrentOverFlg))
   {
      MAIN_MSGu8PDU2_Distri1HV5Flt = 1;
   }
   else
   {
      MAIN_MSGu8PDU2_Distri1HV5Flt = 0;
   }
   
   MAIN_MSGu8PDU2_Distri1HV6StsFb = RCSMACS_BswQ6PowerOn;
   if((TRUE == RCEVETA_NTC9TempOverFlg)||(TRUE == RCEVLCS_LCS6CurrentOverFlg))
   {
      MAIN_MSGu8PDU2_Distri1HV6Flt = 1;
   }
   else
   {
      MAIN_MSGu8PDU2_Distri1HV6Flt = 0;
   }

   RC_10ms(); 
#endif
   MAIN_PDUC_vidMainFunction();
   MAIN_vidFaultHandler();
   FR_vidEcuMainHandler(eFR_PDU_INDEX, 10000);
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_100MS                                             */
/* !Trigger     : Time (100ms)                                                */
/* !Description : This task has a 100ms period                                */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_vidPduTask100ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   FS_IRCmdFlg_B                       = MAIN_MSGu8BMS_InsForbidCMD;
#endif
}

/******************************************************************************/
/*                                                                            */
/* !Task        : TASK_TIME_200MS                                             */
/* !Trigger     : Time (200ms)                                                */
/* !Description : This task has a 200ms period                                */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void MAIN_vidPduTask200ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_
   MAIN_MSGu16XPDU_ISO_PosResis     = FSEVBHV_InsulationRp2CAN / 1000;
   MAIN_MSGu16XPDU_ISO_NegResis     = FSEVBHV_InsulationRn2CAN / 1000;
#endif
}

/**********************************************************************
 * Function name    :  MAIN_vidCanInterface
 * Description      :  Can Interface wrapping
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2022/08/27	     V1.0	     LGD	       Create
 ***********************************************************************/ 
static void MAIN_vidCanInterface(void)
{
   
}

/**********************************************************************
 * Function name    :  MAIN_vidFaultHandler
 * Description      :  Fault Handler wrapping
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2022/08/27	     V1.0	     LGD	       Create
 ***********************************************************************/ 
static void MAIN_vidFaultHandler(void)
{
   uint8 u8Index = 0;
   MAIN_ECPParam tLocECPParam;

   MAIN_REC_vidClrErrCode(eMAIN_REC_BUF_IDX_PDU);

   MAIN_ECP_vidPollingFault(eMAIN_REC_BUF_IDX_PDU, &tLocECPParam, sizeof(tLocECPParam));

   for(u8Index = 0; u8Index < RcMAIN_FaultCodeNum_COLS; u8Index++)
   {
      RcMAIN_u8DEV_Fault[u8Index] = tLocECPParam.u8LocFaultCode[u8Index];
   }
}


/*-------------------------------- end of file -------------------------------*/
