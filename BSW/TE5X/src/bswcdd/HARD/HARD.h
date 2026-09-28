/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : HARD                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : HARD.H                                                  */
/*                                                                            */
/* !Scope           : Public                                                  */
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

#ifndef HARD_H
#define HARD_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define HARD_U8NMUSERDATARX_COLS               ( 6 )
#define HARD_U8NMUSERDATATX_COLS               ( 6 )


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/
/* enum st101 */
#define HARD_ESM_FT_STATE_PWM_DIRECT      1
#define HARD_ESM_FT_STATE_PWM_HARD        2
#define HARD_ESM_FT_STATE_PWM_OFF         4
#define HARD_ESM_FT_STATE_FT_SHUTDOWN     8
#define HARD_ESM_FT_STATE_IDLE            64
/*extern uint16 HARD_EsmFtState;*/

/* enum st100 */
#define HARD_ESM_NF_STATE_FT_START        1
#define HARD_ESM_NF_STATE_SW_SHUTDOWN     4
#define HARD_ESM_NF_STATE_PWM_HARD        8
#define HARD_ESM_NF_STATE_PWM_OFF         16
#define HARD_ESM_NF_STATE_IDLE            64
/*extern uint16 HARD_EsmNfState;*/

/* enum st110 */
#define HARD_PTG_PULSE_MODE               1
#define HARD_PTG_SINUS_MODE               2
#define HARD_PTG_TRIANGLE_MODE            4
#define HARD_PTG_SQUARE_MODE              8
#define HARD_PTG_CONTINUOUS_MODE          16
#define HARD_PTG_PROFIL_MODE              32
#define HARD_PTG_DISJUNCTION_MODE         64
#define HARD_PTG_LOOP_NB_MODE             128
/*extern uint16 HARD_PtgModeTest;*/



/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define HARD_CALIB_START_SEC_CONST_BOOL
#include "HARD_MemMap.h"
extern CONST(boolean, HARD_CALIB) HARD_bPtgEnablePhaseShiftingC;
extern CONST(boolean, HARD_CALIB) HARD_bBenchOnC;
#define HARD_CALIB_STOP_SEC_CONST_BOOL
#include "HARD_MemMap.h"

#define HARD_CALIB_START_SEC_CONST_32
#include "HARD_MemMap.h"
extern CONST(uint32, HARD_CALIB) HARDPTG_u32FrequenceC;
#define HARD_CALIB_STOP_SEC_CONST_32
#include "HARD_MemMap.h"

#define HARD_CALIB_START_SEC_CONST_16
#include "HARD_MemMap.h"
extern CONST(sint16, HARD_CALIB) HARDPTG_s16AmplitudeC;
extern CONST(sint16, HARD_CALIB) HARDPTG_s16ContinuousRequestC;
extern CONST(sint16, HARD_CALIB) HARDPTG_s16OffsetC;
extern CONST(sint16, HARD_CALIB) HARDPTG_s16SlewRateC;
extern CONST(uint16, HARD_CALIB) HARDPTG_u16PulseDutyCycleC;
#define HARD_CALIB_STOP_SEC_CONST_16
#include "HARD_MemMap.h"


/***************************************************************/
/* DATA DECLARATION                                                           */
/**************************************************************/
#define HARD_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(uint16, HARD_VAR) HARD_EsmFtState;
extern VAR(uint16, HARD_VAR) HARD_EsmNfState;
extern VAR(uint16, HARD_VAR) HARD_PtgModeTest;


/*DIO_PORT_0*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_BACKUP_EN;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM7_KC1Z;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_Q6_PTC2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_AN_ENABLE_ASC2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DI3_KM_EN;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_AN_ENABLE_ASC1;
/*DIO_PORT_1*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_K1_KCF_XJCQ1;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DX3_A;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DX3_B;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DX3_C;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM18_SZ2;
/*DIO_PORT_2*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM5_KC1Z;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM6_KC1F;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_PW_DOWN;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM1_ZQ1;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM2_ZQ2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM3_ZQ3;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM4_ZQ4;
extern VAR(boolean, HARD_VAR) HARD_bDio_Port_2_Pin_6;
/*DIO_PORT_10*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM13_KC3Z;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG4;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG5;
/*DIO_PORT_11*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM9_KC2Z;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM8_KC2F;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM10_KC3F;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_YC2_KC3Z_YC;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_ISO_EN1;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_ISO_EN2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_ISO_EN3;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_FLT_EXCITATION_2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_FLT_EXCITATION_1;
extern VAR(boolean, HARD_VAR) HARD_bDio_PORT_11_PIN_2;
/*DIO_PORT_12*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_K2_KCF_XJCQ2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM20_DCJY1;
/*DIO_PORT_13*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM21_DCJY2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM22_DCJY3;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM23_DCJY4;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_YC5_SZ2_YC;
/*DIO_PORT_14*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM24_ZXFZ;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_K3_KCF_XJCQ3;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG3;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG6;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_HWCFG1;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_SUPPLY_WDI;
extern VAR(boolean, HARD_VAR) HARD_bDio_PORT_14_PIN_8;
/*DIO_PORT_15*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM15_KC4Z;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM12_KC4F;
extern VAR(boolean, HARD_VAR) HARD_bDio_MCU_ASC_STATE;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_YC3_KC4Z_YC;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_ACM_HS_N;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_EPS_HS_N;
/*DIO_PORT_20*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_YC7_ZXFZ_YC;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_YC1_ZQ_YC;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_Q1_DCJR1;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_Q2_DCJR2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_Q3_DCJR3;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_Q4_DCJR4;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_ENA_KM;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_DRV_HS_N_1;
/*DIO_PORT_22*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_Q5_PTC1;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_ACM_ENA_PWM;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_DRV_LS_N_1;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_DRV_LS_N_2;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_FAULT_DRV_HS_N_2;
/*DIO_PORT_23*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM19_XGLFZ;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_YC6_XGLFZ_YC;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DX1_A;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DX1_B;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_EPS_ENA_PWM;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DI2;
/*DIO_PORT_32*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DX2_A;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DX2_B;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DX2_C;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM17_SZ1;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_YC4_SZ1_YC;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KEY_ON;
/*DIO_PORT_33*/
extern VAR(boolean, HARD_VAR) HARD_bDio_MCU_STATE_LED;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DX1_C;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_SER;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_DO1;
/*DIO_PORT_34*/
extern VAR(boolean, HARD_VAR) HARD_bDio_M_KM11_KC2Z;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_K4_KCF_XJCQ4;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_CHG_ON;
extern VAR(boolean, HARD_VAR) HARD_bDio_M_IO_MUX1;

extern VAR(uint16, HARD_VAR) HARD_CH_DIO_IN_M_HW_OCP_W_2;
extern VAR(uint16, HARD_VAR) HARD_CH_DIO_IN_M_HW_OCP_V_2;
extern VAR(uint16, HARD_VAR) HARD_CH_DIO_IN_M_HW_OCP_U_2;
/*PORT0*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_TEMP_MEAS_MOD_W_2;
/*PORT34*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_AN_VOL_DCLINK_DRV;

/*AN47*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX7;
/*AN46*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX6;
/*AN45*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_AN_CURRENT_W;
/*AN44*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_AN_CURRENT_W;
/*AN43*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_AN_CURRENT_V;
/*AN42*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_AN_CURRENT_U;
/*AN41*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_AN_CURRENT_V;
/*AN40*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_AN_CURRENT_U;
/*AN39*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_AN_15V_RDC;
/*AN38*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_SIN_L_1;
/*AN37*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_SIN_L_2;
/*AN36*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_SIN_H_2;
/*AN35*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_SIN_H_1;
/*AN34*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_AN_P5V_AD2S;
/*AN33*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_COS_L_1;
/*AN32*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_COS_H_1;
/*AN31*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX3;
/*AN30*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX4;
/*AN29*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX2;
/*AN28*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MUX1;
/*AN27*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_AN_P5V_REF;
/*AN26*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_W_2;
/*AN25*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_V_2;
/*AN24*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_U_2;
/*AN23*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_COS_H_2;
/*AN22*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DIAG_COS_L_2;
/*AN21*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_V;
/*AN20*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_W;
/*AN17*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MOT_SIN_2;
/*AN16*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MOT_COS_2;
/*AN14*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_V;
/*AN13*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_W;
/*AN12*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DC_LINK_PACK4;
/*AN11*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_W_1;
/*AN10*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_V_1;
/*AN9*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DC_LINK_PACK3;
/*AN8*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_CURRENT_U_1;
/*AN7*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DC_LINK_PACK2;
/*AN6*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_DC_LINK_PACK1;
/*AN5*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_KM12_FB_KC4F;
/*AN4*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_KM10_FB_KC3F;
/*AN3*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_KM8_FB_KC2F;
/*AN2*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_KM6_FB_KC1F;
/*AN1*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MOT_SIN_1;
/*AN0*/
extern VAR(uint16, HARD_VAR) HARD_u16Adc_M_AN_MOT_COS_1;

/*PWM*/
extern VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2;
extern VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2;
extern VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2;
extern VAR(float32, HARD_VAR) HARD_f32Pwm_AN_VOL_DCLINK_EPS;
extern VAR(float32, HARD_VAR) HARD_f32Pwm_AN_VOL_DCLINK_ACM;
extern VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1;
extern VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1;
extern VAR(float32, HARD_VAR) HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1;

extern VAR(boolean, HARD_VAR) HARD_bESMCmdFtShutdownReq;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdFtShutdownRes;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdFtStartReq;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdFtStartRes;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdPwmDirectReq;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdPwmDirectRes;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdPwmHardReq;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdPwmHardRes;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdPwmOffReq;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdPwmOffRes;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdSwShutdownReq;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdSwShutdownRes;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdSwStartReq;
extern VAR(boolean, HARD_VAR) HARD_bESMCmdSwStartRes;
extern VAR(boolean, HARD_VAR) HARD_bModSeq1FuncOn;
extern VAR(boolean, HARD_VAR) HARD_bModSeq1InitOn;
extern VAR(boolean, HARD_VAR) HARD_bModSeq2FuncOn;
extern VAR(boolean, HARD_VAR) HARD_bModSeq2InitOn;
extern VAR(boolean, HARD_VAR) HARD_bNmRxRepeatMsgReq;
extern VAR(boolean, HARD_VAR) HARD_bNMTestOn;
extern VAR(boolean, HARD_VAR) HARD_bNmTxRepeatMsgReq;
extern VAR(boolean, HARD_VAR) HARD_bPtgEnable;
extern VAR(boolean, HARD_VAR) HARD_bPtgSignalsShiftControl;
extern VAR(boolean, HARD_VAR) HARD_bPtgUSignalEnable;
extern VAR(boolean, HARD_VAR) HARD_bPtgVSignalEnable;
extern VAR(boolean, HARD_VAR) HARD_bPtgWSignalEnable;
extern VAR(boolean, HARD_VAR) HARD_EsmFtStateAut;
extern VAR(boolean, HARD_VAR) HARD_EsmNfStateAut;
extern VAR(boolean, HARD_VAR) HARD_bDioWriteTestEna;
extern VAR(uint8, HARD_VAR) HARD_u16Adc0An10_CTN_BOARD2Phys;
extern VAR(uint8, HARD_VAR) HARD_u8VSIRxaTempCtrlBdPhys;
extern VAR(uint8, HARD_VAR) HARD_u8VSIRxaTempDrvBdPhys;
extern VAR(uint8, HARD_VAR) HARD_u8VSIRxaTempIgbtPhys;
extern VAR(sint16, HARD_VAR) HARD_s16PtgRefSignalValue;
extern VAR(sint16, HARD_VAR) HARD_s16PtgUSignalValue;
extern VAR(sint16, HARD_VAR) HARD_s16PtgVSignalValue;
extern VAR(sint16, HARD_VAR) HARD_s16PtgWSignalValue;
extern VAR(uint16, HARD_VAR) HARD_u16PtgRefSignalTime;
extern VAR(uint16, HARD_VAR) HARD_u16PtgUSignalNbPeriode;
extern VAR(uint16, HARD_VAR) HARD_u16PtgUSignalTime;
extern VAR(uint16, HARD_VAR) HARD_u16PtgVSignalNbPeriode;
extern VAR(uint16, HARD_VAR) HARD_u16PtgVSignalTime;
extern VAR(uint16, HARD_VAR) HARD_u16PtgWSignalNbPeriode;
extern VAR(uint16, HARD_VAR) HARD_u16PtgWSignalTime;
#define HARD_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(void, HARD_CODE) HARD_vidConvertDecToPhys(void);
FUNC(void, HARD_CODE) HARD_vidEsmFt(void);
FUNC(void, HARD_CODE) HARD_vidEsmNf(void);
FUNC(void, HARD_CODE) HARD_vidEsmReInit(void);
FUNC(void, HARD_CODE) HARD_vidInit(void);
FUNC(void, HARD_CODE) HARD_vidIoTestIO(void);
FUNC(void, HARD_CODE) HARD_vidModManager(void);
FUNC(void, HARD_CODE) HARD_vidNmManager(void);
FUNC(void, HARD_CODE) HARD_vidPtgManager(sint16 *p_s16PwmUl, sint16 *p_s16PwmVl, sint16 *p_s16PwmWl, uint8 *p_u8PwmUOn, uint8 *p_u8PwmVOn, uint8 *p_u8PwmWOn);


#endif /* HARD_H */

/*-------------------------------- end of file -------------------------------*/
