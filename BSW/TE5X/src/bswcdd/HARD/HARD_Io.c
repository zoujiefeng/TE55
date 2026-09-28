/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Test analogic and digital IO                            */
/*                                                                            */
/* !File            : HARD_Io.c                                               */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2012 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* HARD_IO.1  / HARD_vidIoInit                                                */
/* HARD_IO.2  / HARD_vidIoWriteDioOutput                                      */
/* HARD_IO.3  / HARD_vidIoReadDioOutput                                       */
/* HARD_IO.4  / HARD_vidIoReadDioInput                                        */
/* HARD_IO.5  / HARD_vidIoReadAnaInput                                        */
/* HARD_IO.11 / HARD_vidIoWriteDioOutputAsync                                 */
/******************************************************************************/
/* SVN Information                                                            */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::                     $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "Std_Types.h"
#include "HARD.h"
//#include "HARD_L.h"
#include "HARD_Io.h"
#include "IOHAL.h"
#include "Icu_17_TimerIp_Cfg.h"
#include "Icu_17_TimerIp.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define HARD_START_SEC_CODE
#include "HARD_MemMap.h"


#define HARD_STOP_SEC_CODE
#include "HARD_MemMap.h"

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define HARD_START_SEC_CODE
#include "HARD_MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : Initialises the HARD Test analogic and digital IO           */
/* !Trigger     : hard_tsk                                                    */
/* !Number      :                                                             */
/* !Reference   :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void HARD_vidIoInit(void)
{
   HARD_vidIoReadAnaInput();
   HARD_vidIoReadDioInput();
   /*Start Pwm Input Measurement*/
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_U_2);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_V_2);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_W_2);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_AN_VOL_DCLINK_EPS);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_AN_VOL_DCLINK_ACM);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_W_1);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_V_1);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_U_1);

   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_EPS_TEMP_MEAS_MOD_W);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_EPS_TEMP_MEAS_MOD_V);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_ACM_TEMP_MEAS_MOD_W);
   Icu_17_TimerIp_StartSignalMeasurement(IcuConf_IcuChannel_M_ACM_TEMP_MEAS_MOD_V);

   Icu_vidGetDutyCycle();
   HARD_vidIoReadPwmInput();
}

/********************************************************/
/*                                                      */
/* !Description : Write digital IO Inputs               */
/* !Trigger    : hard_tsk                               */
/* !Number     :                                        */
/* !Reference  :                                        */
/*                                                      */
/********************************************************/
/* !LastAuthor  :                                       */
/********************************************************/
void HARD_vidIoWriteDioOutput(void)
{
   /*DIO_PORT_0*/
   IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN(HARD_bDio_M_BACKUP_EN);
   //IOHAL_vidWrite_CH_DIO_OUT_M_KM7_KC1Z(HARD_bDio_M_KM7_KC1Z);
   IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2(HARD_bDio_M_Q6_PTC2);
   /*DIO_PORT_1*/
   //IOHAL_vidWrite_CH_DIO_OUT_M_K1_KCF_XJCQ1(HARD_bDio_M_K1_KCF_XJCQ1);
   IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A(HARD_bDio_M_DX3_A);
   IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B(HARD_bDio_M_DX3_B);
   IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C(HARD_bDio_M_DX3_C);
   //IOHAL_vidWrite_CH_DIO_OUT_M_KM18_SZ2(HARD_bDio_M_KM18_SZ2);
   /*DIO_PORT_2*/
   //IOHAL_vidWrite_CH_DIO_OUT_M_KM5_KC1Z(HARD_bDio_M_KM5_KC1Z);
   //IOHAL_vidWrite_CH_DIO_OUT_M_KM6_KC1F(HARD_bDio_M_KM6_KC1F);
   IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN(HARD_bDio_M_PW_DOWN);
   IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1(HARD_bDio_M_KM1_ZQ1);
   IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2(HARD_bDio_M_KM2_ZQ2);
   IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3(HARD_bDio_M_KM3_ZQ3);
   IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4(HARD_bDio_M_KM4_ZQ4);
   /*DIO_PORT_10*/
   //IOHAL_vidWrite_CH_DIO_OUT_M_KM13_KC3Z(HARD_bDio_M_KM13_KC3Z);
   /*DIO_PORT_11*/
   //IOHAL_vidWrite_CH_DIO_OUT_M_KM9_KC2Z(HARD_bDio_M_KM9_KC2Z);
   //IOHAL_vidWrite_CH_DIO_OUT_M_KM8_KC2F(HARD_bDio_M_KM8_KC2F);
//   IOHAL_vidWrite_CH_DIO_OUT_M_KM10_KC3F(HARD_bDio_M_KM10_KC3F);
   IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC(HARD_bDio_M_YC2_KC3Z_YC);
   IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1(HARD_bDio_M_ISO_EN1);
   IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2(HARD_bDio_M_ISO_EN2);
   IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3(HARD_bDio_M_ISO_EN3);
   /*DIO_PORT_12*/
//   IOHAL_vidWrite_CH_DIO_OUT_M_K2_KCF_XJCQ2(HARD_bDio_M_K2_KCF_XJCQ2);
   IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1(HARD_bDio_M_KM20_DCJY1);
   /*DIO_PORT_13*/
   IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2(HARD_bDio_M_KM21_DCJY2);
   IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3(HARD_bDio_M_KM22_DCJY3);
   IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4(HARD_bDio_M_KM23_DCJY4);
   IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC(HARD_bDio_M_YC5_SZ2_YC);
   /*DIO_PORT_14*/
//   IOHAL_vidWrite_CH_DIO_OUT_M_KM24_ZXFZ(HARD_bDio_M_KM24_ZXFZ);
//   IOHAL_vidWrite_CH_DIO_OUT_M_K3_KCF_XJCQ3(HARD_bDio_M_K3_KCF_XJCQ3);
   /*DIO_PORT_15*/
//   IOHAL_vidWrite_CH_DIO_OUT_M_KM15_KC4Z(HARD_bDio_M_KM15_KC4Z);
//   IOHAL_vidWrite_CH_DIO_OUT_M_KM12_KC4F(HARD_bDio_M_KM12_KC4F);
   IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE(HARD_bDio_MCU_ASC_STATE);
   IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC(HARD_bDio_M_YC3_KC4Z_YC);
   /*DIO_PORT_20*/
   IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC(HARD_bDio_M_YC7_ZXFZ_YC);
   IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC(HARD_bDio_M_YC1_ZQ_YC);
   IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1(HARD_bDio_M_Q1_DCJR1);
   IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2(HARD_bDio_M_Q2_DCJR2);
   IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3(HARD_bDio_M_Q3_DCJR3);
   IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4(HARD_bDio_M_Q4_DCJR4);
   IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM(HARD_bDio_M_ENA_KM);
   /*DIO_PORT_22*/
   IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1(HARD_bDio_M_Q5_PTC1);
   IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM(HARD_bDio_M_ACM_ENA_PWM);
   /*DIO_PORT_23*/
//   IOHAL_vidWrite_CH_DIO_OUT_M_KM19_XGLFZ(HARD_bDio_M_KM19_XGLFZ);
   IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC(HARD_bDio_M_YC6_XGLFZ_YC);
   IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A(HARD_bDio_M_DX1_A);
   IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B(HARD_bDio_M_DX1_B);
   IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM(HARD_bDio_M_EPS_ENA_PWM);
   /*DIO_PORT_32*/
   IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A(HARD_bDio_M_DX2_A);
   IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B(HARD_bDio_M_DX2_B);
   IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C(HARD_bDio_M_DX2_C);
//   IOHAL_vidWrite_CH_DIO_OUT_M_KM17_SZ1(HARD_bDio_M_KM17_SZ1);
   IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC(HARD_bDio_M_YC4_SZ1_YC);
   /*DIO_PORT_33*/  
   IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED(HARD_bDio_MCU_STATE_LED);
   IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C(HARD_bDio_M_DX1_C);
   IOHAL_vidWrite_CH_DIO_OUT_M_SER(HARD_bDio_M_SER);
   IOHAL_vidWrite_CH_DIO_OUT_M_DO1(HARD_bDio_M_DO1);
   /*DIO_PORT_34*/ 
//   IOHAL_vidWrite_CH_DIO_OUT_M_KM11_KC2Z(HARD_bDio_M_KM11_KC2Z);
//   IOHAL_vidWrite_CH_DIO_OUT_M_K4_KCF_XJCQ4(HARD_bDio_M_K4_KCF_XJCQ4);
}

/********************************************************/
/*                                                      */
/* !Description : Read digital IO Inputs                */
/* !Trigger    : hard_tsk                               */
/* !Number     :                                        */
/* !Reference  :                                        */
/*                                                      */
/********************************************************/
/* !LastAuthor  :                                       */
/********************************************************/
void HARD_vidIoReadDioInput(void)
{
   /*DIO_PORT_0*/
   HARD_bDio_M_AN_ENABLE_ASC2                = (boolean)IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2();
//   HARD_bDio_M_DI3_KM_EN                     = (boolean)IOHAL_u16Read_CH_DIO_IN_M_DI3_KM_EN();
  HARD_bDio_M_AN_ENABLE_ASC1                = (boolean)IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1();
   /*DIO_PORT_2*/
//   HARD_bDio_Port_2_Pin_6                    = (boolean)IOHAL_u16Read_CH_DIO_IN_Port_2_Pin_6();
   /*DIO_PORT_10*/
//   HARD_bDio_M_HWCFG4                        = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HWCFG4();
//   HARD_bDio_M_HWCFG5                        = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HWCFG5();
   /*DIO_PORT_11*/
   HARD_bDio_M_FLT_EXCITATION_2              = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2();
   HARD_bDio_M_FLT_EXCITATION_1              = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1();
   //HARD_bDio_PORT_11_PIN_2                   = (boolean)IOHAL_u16Read_CH_DIO_IN_PORT_11_PIN_2();
   /*DIO_PORT_14*/
//   HARD_bDio_M_HWCFG2                        = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HWCFG2();
//   HARD_bDio_M_HWCFG3                        = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HWCFG3();
//   HARD_bDio_M_HWCFG6                        = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HWCFG6();
//   HARD_bDio_M_HWCFG1                        = (boolean)IOHAL_u16Read_CH_DIO_IN_M_HWCFG1();
   HARD_bDio_M_SUPPLY_WDI                    = (boolean)IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI();
//   HARD_bDio_PORT_14_PIN_8                   = (boolean)IOHAL_u16Read_CH_DIO_IN_PORT_14_PIN_8();
   /*DIO_PORT_15*/
   HARD_bDio_M_FAULT_ACM_HS_N                = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N();
   HARD_bDio_M_FAULT_EPS_HS_N                = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N();
   /*DIO_PORT_20*/
   HARD_bDio_M_FAULT_DRV_HS_N_1              = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1();
   /*DIO_PORT_22*/
   HARD_bDio_M_FAULT_DRV_LS_N_1              = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1();
   HARD_bDio_M_FAULT_DRV_LS_N_2              = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2();
   HARD_bDio_M_FAULT_DRV_HS_N_2              = (boolean)IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2();
   /*DIO_PORT_23*/
//   HARD_bDio_M_DI2                           = (boolean)IOHAL_u16Read_CH_DIO_IN_M_DI2();
   /*DIO_PORT_32*/
   HARD_bDio_M_KEY_ON                        = (boolean)IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
   /*DIO_PORT_34*/
   HARD_bDio_M_CHG_ON                        = (boolean)IOHAL_u16Read_CH_DIO_IN_M_CHG_ON();
//   HARD_bDio_M_IO_MUX1                       = (boolean)IOHAL_u16Read_CH_DIO_IN_M_IO_MUX1();
}

/*********************************************/
/*                                           */
/* !Description : Read analogic Inputs       */
/* !Trigger    : hard_tsk                    */
/* !Number     :                             */
/* !Reference  :                             */
/*                                           */
/*********************************************/
/* !LastAuthor  :                            */
/*********************************************/
void HARD_vidIoReadAnaInput(void)
{
   HARD_CH_DIO_IN_M_HW_OCP_W_2               = IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2();
   HARD_CH_DIO_IN_M_HW_OCP_V_2               = IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2();
   HARD_CH_DIO_IN_M_HW_OCP_U_2               = IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2();
   /*PORT34*/
   HARD_u16Adc_AN_VOL_DCLINK_DRV             = IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV();
   /*AN47*/
   HARD_u16Adc_M_AN_MUX7                     = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7();
   /*AN46*/
   HARD_u16Adc_M_AN_MUX6                     = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6();
   /*AN45*/
   HARD_u16Adc_M_EPS_AN_CURRENT_W            = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W();
   /*AN44*/
   HARD_u16Adc_M_ACM_AN_CURRENT_W            = IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W();
   /*AN43*/
   HARD_u16Adc_M_EPS_AN_CURRENT_V            = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V();
   /*AN42*/
   HARD_u16Adc_M_EPS_AN_CURRENT_U            = IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U();
   /*AN41*/
   HARD_u16Adc_M_ACM_AN_CURRENT_V            = IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V();
   /*AN40*/
   HARD_u16Adc_M_ACM_AN_CURRENT_U            = IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U();
   /*AN39*/
   HARD_u16Adc_AN_15V_RDC                    = IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC();
   /*AN38*/
   HARD_u16Adc_M_AN_DIAG_SIN_L_1             = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1();
   /*AN37*/
   HARD_u16Adc_M_AN_DIAG_SIN_L_2             = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2();
   /*AN36*/
   HARD_u16Adc_M_AN_DIAG_SIN_H_2             = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2();
   /*AN35*/
   HARD_u16Adc_M_AN_DIAG_SIN_H_1             = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1();
   /*AN34*/
   HARD_u16Adc_AN_P5V_AD2S                   = IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S();
   /*AN33*/
   HARD_u16Adc_M_AN_DIAG_COS_L_1             = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1();
   /*AN32*/
   HARD_u16Adc_M_AN_DIAG_COS_H_1             = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1();
   /*AN31*/
   HARD_u16Adc_M_AN_MUX3                     = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3();
   /*AN30*/
   HARD_u16Adc_M_AN_MUX4                     = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4();
   /*AN29*/
   HARD_u16Adc_M_AN_MUX2                     = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2();
   /*AN28*/
   HARD_u16Adc_M_AN_MUX1                     = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1();
   /*AN27*/
   HARD_u16Adc_AN_P5V_REF                    = IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF();
   /*AN26*/
   HARD_u16Adc_M_AN_CURRENT_W_2              = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2();
   /*AN25*/
   HARD_u16Adc_M_AN_CURRENT_V_2              = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2();
   /*AN24*/
   HARD_u16Adc_M_AN_CURRENT_U_2              = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2();
   /*AN23*/
   HARD_u16Adc_M_AN_DIAG_COS_H_2             = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2();
   /*AN22*/
   HARD_u16Adc_M_AN_DIAG_COS_L_2             = IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2();
   /*AN21*/
   HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_V         = IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V();
   /*AN20*/
   HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_W         = IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W();
   /*AN17*/
   HARD_u16Adc_M_AN_MOT_SIN_2                = IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2();
   /*AN16*/
   HARD_u16Adc_M_AN_MOT_COS_2                = IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2();
   /*AN14*/
   HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_V         = IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V();
   /*AN13*/
   HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_W         = IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W();
   /*AN12*/
   HARD_u16Adc_M_AN_DC_LINK_PACK4            = IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4();
   /*AN11*/
   HARD_u16Adc_M_AN_CURRENT_W_1              = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1();
   /*AN10*/
   HARD_u16Adc_M_AN_CURRENT_V_1              = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1();
   /*AN9*/
   //HARD_u16Adc_M_AN_DC_LINK_PACK3            = IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK3();
   /*AN8*/
   HARD_u16Adc_M_AN_CURRENT_U_1              = IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1();
   /*AN7*/
   //HARD_u16Adc_M_AN_DC_LINK_PACK2            = IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK2();
   /*AN6*/
   //HARD_u16Adc_M_AN_DC_LINK_PACK1            = IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK1();
   /*AN5*/
   //HARD_u16Adc_M_AN_KM12_FB_KC4F             = IOHAL_u16Read_CH_ADC_IN_M_AN_KM12_FB_KC4F();
   /*AN4*/
   //HARD_u16Adc_M_AN_KM10_FB_KC3F             = IOHAL_u16Read_CH_ADC_IN_M_AN_KM10_FB_KC3F();
   /*AN3*/
   HARD_u16Adc_M_AN_KM8_FB_KC2F              = IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F();
   /*AN2*/
   HARD_u16Adc_M_AN_KM6_FB_KC1F              = IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F();
   /*AN1*/
   HARD_u16Adc_M_AN_MOT_SIN_1                = IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1();
   /*AN0*/
   HARD_u16Adc_M_AN_MOT_COS_1                = IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1();
}

void HARD_vidIoReadPwmInput(void)
{
   HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2           = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2();
   HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2           = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2();
   HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2           = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2();
   HARD_f32Pwm_AN_VOL_DCLINK_EPS             = IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS();
   HARD_f32Pwm_AN_VOL_DCLINK_ACM             = IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM();
   HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1           = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1();
   HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1           = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1();
   HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1           = IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1();
}

#define HARD_STOP_SEC_CODE
#include "HARD_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
