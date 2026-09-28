/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : HARD_DEF.C                                              */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2008 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/**************************** </AUTO_FILE_HEADER> *****************************/
/* PVCS Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::                                                               $*/
/* $Author::                                          $$Date::               $*/
/******************************************************************************/
/* !VnrOff  : Names imposed by the customer                                   */
/* !CompReq :                                                                 */
/******************************************************************************/

#include "Std_Types.h"
#include "HARD.h"
#include "HARD_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define HARD_CALIB_START_SEC_CONST_BOOL
#include "HARD_MemMap.h"
CONST(boolean, HARD_CALIB) HARD_bPtgEnablePhaseShiftingC = 1;
CONST(boolean, HARD_CALIB) HARD_bBenchOnC = 1;
#define HARD_CALIB_STOP_SEC_CONST_BOOL
#include "HARD_MemMap.h"

#define HARD_CALIB_START_SEC_CONST_32
#include "HARD_MemMap.h"
CONST(uint32, HARD_CALIB) HARDPTG_u32FrequenceC = 100;
#define HARD_CALIB_STOP_SEC_CONST_32
#include "HARD_MemMap.h"

#define HARD_CALIB_START_SEC_CONST_16
#include "HARD_MemMap.h"
CONST(sint16, HARD_CALIB) HARDPTG_s16AmplitudeC = 3277;
CONST(sint16, HARD_CALIB) HARDPTG_s16ContinuousRequestC = 0;
CONST(sint16, HARD_CALIB) HARDPTG_s16OffsetC = 0;
CONST(sint16, HARD_CALIB) HARDPTG_s16SlewRateC = 32767;
CONST(uint16, HARD_CALIB) HARD_u16PtgUSignalShiftC = 0;
CONST(uint16, HARD_CALIB) HARD_u16PtgVSignalShiftC = 21845;
CONST(uint16, HARD_CALIB) HARD_u16PtgWSignalShiftC = 21845;
CONST(uint16, HARD_CALIB) HARDPTG_u16PulseDutyCycleC = 10;
#define HARD_CALIB_STOP_SEC_CONST_16
#include "HARD_MemMap.h"


/***************************************************************/
/* DATA DEFINITION                                                            */
/**************************************************************/
#define HARD_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
VAR(uint16, HARD_VAR) HARD_EsmFtState;
VAR(uint16, HARD_VAR) HARD_EsmNfState;
VAR(uint16, HARD_VAR) HARD_PtgModeTest;


/*DIO_PORT_0*/
VAR(boolean, HARD_VAR) HARD_bDio_M_BACKUP_EN;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM7_KC1Z;
VAR(boolean, HARD_VAR) HARD_bDio_M_Q6_PTC2;
VAR(boolean, HARD_VAR) HARD_bDio_M_AN_ENABLE_ASC2;
VAR(boolean, HARD_VAR) HARD_bDio_M_DI3_KM_EN;
VAR(boolean, HARD_VAR) HARD_bDio_M_AN_ENABLE_ASC1;
/*DIO_PORT_1*/
VAR(boolean, HARD_VAR) HARD_bDio_M_K1_KCF_XJCQ1;
VAR(boolean, HARD_VAR) HARD_bDio_M_DX3_A;
VAR(boolean, HARD_VAR) HARD_bDio_M_DX3_B;
VAR(boolean, HARD_VAR) HARD_bDio_M_DX3_C;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM18_SZ2;
/*DIO_PORT_2*/
VAR(boolean, HARD_VAR) HARD_bDio_M_KM5_KC1Z;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM6_KC1F;
VAR(boolean, HARD_VAR) HARD_bDio_M_PW_DOWN;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM1_ZQ1;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM2_ZQ2;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM3_ZQ3;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM4_ZQ4;
VAR(boolean, HARD_VAR) HARD_bDio_Port_2_Pin_6;
/*DIO_PORT_10*/
VAR(boolean, HARD_VAR) HARD_bDio_M_KM13_KC3Z;
VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG4;
VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG5;
/*DIO_PORT_11*/
VAR(boolean, HARD_VAR) HARD_bDio_M_KM9_KC2Z;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM8_KC2F;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM10_KC3F;
VAR(boolean, HARD_VAR) HARD_bDio_M_YC2_KC3Z_YC;
VAR(boolean, HARD_VAR) HARD_bDio_M_ISO_EN1;
VAR(boolean, HARD_VAR) HARD_bDio_M_ISO_EN2;
VAR(boolean, HARD_VAR) HARD_bDio_M_ISO_EN3;
VAR(boolean, HARD_VAR) HARD_bDio_M_FLT_EXCITATION_2;
VAR(boolean, HARD_VAR) HARD_bDio_M_FLT_EXCITATION_1;
VAR(boolean, HARD_VAR) HARD_bDio_PORT_11_PIN_2;
/*DIO_PORT_12*/
VAR(boolean, HARD_VAR) HARD_bDio_M_K2_KCF_XJCQ2;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM20_DCJY1;
/*DIO_PORT_13*/
VAR(boolean, HARD_VAR) HARD_bDio_M_KM21_DCJY2;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM22_DCJY3;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM23_DCJY4;
VAR(boolean, HARD_VAR) HARD_bDio_M_YC5_SZ2_YC;
/*DIO_PORT_14*/
VAR(boolean, HARD_VAR) HARD_bDio_M_KM24_ZXFZ;
VAR(boolean, HARD_VAR) HARD_bDio_M_K3_KCF_XJCQ3;
VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG2;
VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG3;
VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG6;
VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG1;
VAR(boolean, HARD_VAR) HARD_bDio_M_SUPPLY_WDI;
VAR(boolean, HARD_VAR) HARD_bDio_PORT_14_PIN_8;
/*DIO_PORT_15*/
VAR(boolean, HARD_VAR) HARD_bDio_M_KM15_KC4Z;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM12_KC4F;
VAR(boolean, HARD_VAR) HARD_bDio_MCU_ASC_STATE;
VAR(boolean, HARD_VAR) HARD_bDio_M_YC3_KC4Z_YC;
VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_ACM_HS_N;
VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_EPS_HS_N;
/*DIO_PORT_20*/
VAR(boolean, HARD_VAR) HARD_bDio_M_YC7_ZXFZ_YC;
VAR(boolean, HARD_VAR) HARD_bDio_M_YC1_ZQ_YC;
VAR(boolean, HARD_VAR) HARD_bDio_M_Q1_DCJR1;
VAR(boolean, HARD_VAR) HARD_bDio_M_Q2_DCJR2;
VAR(boolean, HARD_VAR) HARD_bDio_M_Q3_DCJR3;
VAR(boolean, HARD_VAR) HARD_bDio_M_Q4_DCJR4;
VAR(boolean, HARD_VAR) HARD_bDio_M_ENA_KM;
VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_DRV_HS_N_1;
/*DIO_PORT_22*/
VAR(boolean, HARD_VAR) HARD_bDio_M_Q5_PTC1;
VAR(boolean, HARD_VAR) HARD_bDio_M_ACM_ENA_PWM;
VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_DRV_LS_N_1;
VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_DRV_LS_N_2;
VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_DRV_HS_N_2;
/*DIO_PORT_23*/
VAR(boolean, HARD_VAR) HARD_bDio_M_KM19_XGLFZ;
VAR(boolean, HARD_VAR) HARD_bDio_M_YC6_XGLFZ_YC;
VAR(boolean, HARD_VAR) HARD_bDio_M_DX1_A;
VAR(boolean, HARD_VAR) HARD_bDio_M_DX1_B;
VAR(boolean, HARD_VAR) HARD_bDio_M_EPS_ENA_PWM;
VAR(boolean, HARD_VAR) HARD_bDio_M_DI2;
/*DIO_PORT_32*/
VAR(boolean, HARD_VAR) HARD_bDio_M_DX2_A;
VAR(boolean, HARD_VAR) HARD_bDio_M_DX2_B;
VAR(boolean, HARD_VAR) HARD_bDio_M_DX2_C;
VAR(boolean, HARD_VAR) HARD_bDio_M_KM17_SZ1;
VAR(boolean, HARD_VAR) HARD_bDio_M_YC4_SZ1_YC;
VAR(boolean, HARD_VAR) HARD_bDio_M_KEY_ON;
/*DIO_PORT_33*/
VAR(boolean, HARD_VAR) HARD_bDio_MCU_STATE_LED;
VAR(boolean, HARD_VAR) HARD_bDio_M_DX1_C;
VAR(boolean, HARD_VAR) HARD_bDio_M_SER;
VAR(boolean, HARD_VAR) HARD_bDio_M_DO1;
/*DIO_PORT_34*/
VAR(boolean, HARD_VAR) HARD_bDio_M_KM11_KC2Z;
VAR(boolean, HARD_VAR) HARD_bDio_M_K4_KCF_XJCQ4;
VAR(boolean, HARD_VAR) HARD_bDio_M_CHG_ON ;
VAR(boolean, HARD_VAR) HARD_bDio_M_IO_MUX1;

VAR(uint16, HARD_VAR) HARD_CH_DIO_IN_M_HW_OCP_W_2;
VAR(uint16, HARD_VAR) HARD_CH_DIO_IN_M_HW_OCP_V_2;
VAR(uint16, HARD_VAR) HARD_CH_DIO_IN_M_HW_OCP_U_2;
/*PORT0*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_TEMP_MEAS_MOD_W_2;
/*PORT34*/
VAR(uint16, HARD_VAR) HARD_u16Adc_AN_VOL_DCLINK_DRV;

/*AN47*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX7;
/*AN46*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX6;
/*AN45*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_AN_CURRENT_W;
/*AN44*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_AN_CURRENT_W;
/*AN43*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_AN_CURRENT_V;
/*AN42*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_AN_CURRENT_U;
/*AN41*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_AN_CURRENT_V;
/*AN40*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_AN_CURRENT_U;
/*AN39*/
VAR(uint16, HARD_VAR) HARD_u16Adc_AN_15V_RDC;
/*AN38*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_SIN_L_1;
/*AN37*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_SIN_L_2;
/*AN36*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_SIN_H_2;
/*AN35*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_SIN_H_1;
/*AN34*/
VAR(uint16, HARD_VAR) HARD_u16Adc_AN_P5V_AD2S;
/*AN33*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_COS_L_1;
/*AN32*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_COS_H_1;
/*AN31*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX3;
/*AN30*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX4;
/*AN29*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX2;
/*AN28*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX1;
/*AN27*/
VAR(uint16, HARD_VAR) HARD_u16Adc_AN_P5V_REF;
/*AN26*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_W_2;
/*AN25*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_V_2;
/*AN24*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_U_2;
/*AN23*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_COS_H_2;
/*AN22*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_COS_L_2;
/*AN21*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_V;
/*AN20*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_W;
/*AN17*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MOT_SIN_2;
/*AN16*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MOT_COS_2;
/*AN14*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_V;
/*AN13*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_W;
/*AN12*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DC_LINK_PACK4;
/*AN11*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_W_1;
/*AN10*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_V_1;
/*AN9*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DC_LINK_PACK3;
/*AN8*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_U_1;
/*AN7*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DC_LINK_PACK2;
/*AN6*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DC_LINK_PACK1;
/*AN5*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_KM12_FB_KC4F;
/*AN4*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_KM10_FB_KC3F;
/*AN3*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_KM8_FB_KC2F;
/*AN2*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_KM6_FB_KC1F;
/*AN1*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MOT_SIN_1;
/*AN0*/
VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MOT_COS_1;
/*PWM_IN*/
VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2;
VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2;
VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2;
VAR(float32, HARD_VAR) HARD_f32Pwm_AN_VOL_DCLINK_EPS;
VAR(float32, HARD_VAR) HARD_f32Pwm_AN_VOL_DCLINK_ACM;
VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1;
VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1;
VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1;

VAR(boolean, HARD_VAR) HARD_bESMCmdFtShutdownReq;
VAR(boolean, HARD_VAR) HARD_bESMCmdFtShutdownRes;
VAR(boolean, HARD_VAR) HARD_bESMCmdFtStartReq;
VAR(boolean, HARD_VAR) HARD_bESMCmdFtStartRes;
VAR(boolean, HARD_VAR) HARD_bESMCmdPwmDirectReq;
VAR(boolean, HARD_VAR) HARD_bESMCmdPwmDirectRes;
VAR(boolean, HARD_VAR) HARD_bESMCmdPwmHardReq;
VAR(boolean, HARD_VAR) HARD_bESMCmdPwmHardRes;
VAR(boolean, HARD_VAR) HARD_bESMCmdPwmOffReq;
VAR(boolean, HARD_VAR) HARD_bESMCmdPwmOffRes;
VAR(boolean, HARD_VAR) HARD_bESMCmdSwShutdownReq;
VAR(boolean, HARD_VAR) HARD_bESMCmdSwShutdownRes;
VAR(boolean, HARD_VAR) HARD_bESMCmdSwStartReq;
VAR(boolean, HARD_VAR) HARD_bESMCmdSwStartRes;
VAR(boolean, HARD_VAR) HARD_bModSeq1FuncOn;
VAR(boolean, HARD_VAR) HARD_bModSeq1InitOn;
VAR(boolean, HARD_VAR) HARD_bModSeq2FuncOn;
VAR(boolean, HARD_VAR) HARD_bModSeq2InitOn;
VAR(boolean, HARD_VAR) HARD_bNmRxRepeatMsgReq;
VAR(boolean, HARD_VAR) HARD_bNMTestOn;
VAR(boolean, HARD_VAR) HARD_bNmTxRepeatMsgReq;
VAR(boolean, HARD_VAR) HARD_bPtgEnable;
VAR(boolean, HARD_VAR) HARD_bPtgSignalsShiftControl;
VAR(boolean, HARD_VAR) HARD_bPtgUSignalEnable;
VAR(boolean, HARD_VAR) HARD_bPtgVSignalEnable;
VAR(boolean, HARD_VAR) HARD_bPtgWSignalEnable;
VAR(boolean, HARD_VAR) HARD_EsmFtStateAut;
VAR(boolean, HARD_VAR) HARD_EsmNfStateAut;
VAR(boolean, HARD_VAR) HARD_bDioWriteTestEna = FALSE;
VAR(uint8, HARD_VAR) HARD_u16Adc0An10_CTN_BOARD2Phys;
VAR(uint8, HARD_VAR) HARD_u8VSIRxaTempCtrlBdPhys;
VAR(uint8, HARD_VAR) HARD_u8VSIRxaTempDrvBdPhys;
VAR(uint8, HARD_VAR) HARD_u8VSIRxaTempIgbtPhys;
VAR(sint16, HARD_VAR) HARD_s16PtgRefSignalValue;
VAR(sint16, HARD_VAR) HARD_s16PtgUSignalValue;
VAR(sint16, HARD_VAR) HARD_s16PtgVSignalValue;
VAR(sint16, HARD_VAR) HARD_s16PtgWSignalValue;
VAR(uint16, HARD_VAR) HARD_u16PtgRefSignalNbPeriode;
VAR(uint16, HARD_VAR) HARD_u16PtgRefSignalTime;
VAR(uint16, HARD_VAR) HARD_u16PtgUSignalNbPeriode;
VAR(uint16, HARD_VAR) HARD_u16PtgUSignalTime;
VAR(uint16, HARD_VAR) HARD_u16PtgVSignalNbPeriode;
VAR(uint16, HARD_VAR) HARD_u16PtgVSignalTime;
VAR(uint16, HARD_VAR) HARD_u16PtgWSignalNbPeriode;
VAR(uint16, HARD_VAR) HARD_u16PtgWSignalTime;
#define HARD_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
