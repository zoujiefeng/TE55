# 1 "bswcdd\\HARD\\HARD_Ptg.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\HARD\\HARD_Ptg.c"
# 40 "bswcdd\\HARD\\HARD_Ptg.c"
# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 41 "bswcdd\\HARD\\HARD_Ptg.c" 2
# 1 "bswcdd\\HARD\\HARD.h" 1
# 37 "bswcdd\\HARD\\HARD.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\HARD\\HARD.h" 2
# 82 "bswcdd\\HARD\\HARD.h"
# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 105 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 106 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 83 "bswcdd\\HARD\\HARD.h" 2
extern const boolean HARD_bPtgEnablePhaseShiftingC;
extern const boolean HARD_bBenchOnC;

# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 110 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 111 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 87 "bswcdd\\HARD\\HARD.h" 2


# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 72 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 182 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_32" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 73 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 90 "bswcdd\\HARD\\HARD.h" 2
extern const uint32 HARDPTG_u32FrequenceC;

# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 77 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 78 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 93 "bswcdd\\HARD\\HARD.h" 2


# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 83 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 96 "bswcdd\\HARD\\HARD.h" 2
extern const sint16 HARDPTG_s16AmplitudeC;
extern const sint16 HARDPTG_s16ContinuousRequestC;
extern const sint16 HARDPTG_s16OffsetC;
extern const sint16 HARDPTG_s16SlewRateC;
extern const uint16 HARDPTG_u16PulseDutyCycleC;

# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 88 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 103 "bswcdd\\HARD\\HARD.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 110 "bswcdd\\HARD\\HARD.h" 2
extern uint16 HARD_EsmFtState;
extern uint16 HARD_EsmNfState;
extern uint16 HARD_PtgModeTest;



extern boolean HARD_bDio_M_BACKUP_EN;
extern boolean HARD_bDio_M_KM7_KC1Z;
extern boolean HARD_bDio_M_Q6_PTC2;
extern boolean HARD_bDio_M_AN_ENABLE_ASC2;
extern boolean HARD_bDio_M_DI3_KM_EN;
extern boolean HARD_bDio_M_AN_ENABLE_ASC1;

extern boolean HARD_bDio_M_K1_KCF_XJCQ1;
extern boolean HARD_bDio_M_DX3_A;
extern boolean HARD_bDio_M_DX3_B;
extern boolean HARD_bDio_M_DX3_C;
extern boolean HARD_bDio_M_KM18_SZ2;

extern boolean HARD_bDio_M_KM5_KC1Z;
extern boolean HARD_bDio_M_KM6_KC1F;
extern boolean HARD_bDio_M_PW_DOWN;
extern boolean HARD_bDio_M_KM1_ZQ1;
extern boolean HARD_bDio_M_KM2_ZQ2;
extern boolean HARD_bDio_M_KM3_ZQ3;
extern boolean HARD_bDio_M_KM4_ZQ4;
extern boolean HARD_bDio_Port_2_Pin_6;

extern boolean HARD_bDio_M_KM13_KC3Z;
extern boolean HARD_bDio_M_HWCFG4;
extern boolean HARD_bDio_M_HWCFG5;

extern boolean HARD_bDio_M_KM9_KC2Z;
extern boolean HARD_bDio_M_KM8_KC2F;
extern boolean HARD_bDio_M_KM10_KC3F;
extern boolean HARD_bDio_M_YC2_KC3Z_YC;
extern boolean HARD_bDio_M_ISO_EN1;
extern boolean HARD_bDio_M_ISO_EN2;
extern boolean HARD_bDio_M_ISO_EN3;
extern boolean HARD_bDio_M_FLT_EXCITATION_2;
extern boolean HARD_bDio_M_FLT_EXCITATION_1;
extern boolean HARD_bDio_PORT_11_PIN_2;

extern boolean HARD_bDio_M_K2_KCF_XJCQ2;
extern boolean HARD_bDio_M_KM20_DCJY1;

extern boolean HARD_bDio_M_KM21_DCJY2;
extern boolean HARD_bDio_M_KM22_DCJY3;
extern boolean HARD_bDio_M_KM23_DCJY4;
extern boolean HARD_bDio_M_YC5_SZ2_YC;

extern boolean HARD_bDio_M_KM24_ZXFZ;
extern boolean HARD_bDio_M_K3_KCF_XJCQ3;
extern boolean HARD_bDio_M_HWCFG2;
extern boolean HARD_bDio_M_HWCFG3;
extern boolean HARD_bDio_M_HWCFG6;
extern boolean HARD_bDio_M_HWCFG1;
extern boolean HARD_bDio_M_SUPPLY_WDI;
extern boolean HARD_bDio_PORT_14_PIN_8;

extern boolean HARD_bDio_M_KM15_KC4Z;
extern boolean HARD_bDio_M_KM12_KC4F;
extern boolean HARD_bDio_MCU_ASC_STATE;
extern boolean HARD_bDio_M_YC3_KC4Z_YC;
extern boolean HARD_bDio_M_FAULT_ACM_HS_N;
extern boolean HARD_bDio_M_FAULT_EPS_HS_N;

extern boolean HARD_bDio_M_YC7_ZXFZ_YC;
extern boolean HARD_bDio_M_YC1_ZQ_YC;
extern boolean HARD_bDio_M_Q1_DCJR1;
extern boolean HARD_bDio_M_Q2_DCJR2;
extern boolean HARD_bDio_M_Q3_DCJR3;
extern boolean HARD_bDio_M_Q4_DCJR4;
extern boolean HARD_bDio_M_ENA_KM;
extern boolean HARD_bDio_M_FAULT_DRV_HS_N_1;

extern boolean HARD_bDio_M_Q5_PTC1;
extern boolean HARD_bDio_M_ACM_ENA_PWM;
extern boolean HARD_bDio_M_FAULT_DRV_LS_N_1;
extern boolean HARD_bDio_M_FAULT_DRV_LS_N_2;
extern boolean HARD_bDio_M_FAULT_DRV_HS_N_2;

extern boolean HARD_bDio_M_KM19_XGLFZ;
extern boolean HARD_bDio_M_YC6_XGLFZ_YC;
extern boolean HARD_bDio_M_DX1_A;
extern boolean HARD_bDio_M_DX1_B;
extern boolean HARD_bDio_M_EPS_ENA_PWM;
extern boolean HARD_bDio_M_DI2;

extern boolean HARD_bDio_M_DX2_A;
extern boolean HARD_bDio_M_DX2_B;
extern boolean HARD_bDio_M_DX2_C;
extern boolean HARD_bDio_M_KM17_SZ1;
extern boolean HARD_bDio_M_YC4_SZ1_YC;
extern boolean HARD_bDio_M_KEY_ON;

extern boolean HARD_bDio_MCU_STATE_LED;
extern boolean HARD_bDio_M_DX1_C;
extern boolean HARD_bDio_M_SER;
extern boolean HARD_bDio_M_DO1;

extern boolean HARD_bDio_M_KM11_KC2Z;
extern boolean HARD_bDio_M_K4_KCF_XJCQ4;
extern boolean HARD_bDio_M_CHG_ON;
extern boolean HARD_bDio_M_IO_MUX1;

extern uint16 HARD_CH_DIO_IN_M_HW_OCP_W_2;
extern uint16 HARD_CH_DIO_IN_M_HW_OCP_V_2;
extern uint16 HARD_CH_DIO_IN_M_HW_OCP_U_2;

extern uint16 HARD_u16Adc_M_TEMP_MEAS_MOD_W_2;

extern uint16 HARD_u16Adc_AN_VOL_DCLINK_DRV;


extern uint16 HARD_u16Adc_M_AN_MUX7;

extern uint16 HARD_u16Adc_M_AN_MUX6;

extern uint16 HARD_u16Adc_M_EPS_AN_CURRENT_W;

extern uint16 HARD_u16Adc_M_ACM_AN_CURRENT_W;

extern uint16 HARD_u16Adc_M_EPS_AN_CURRENT_V;

extern uint16 HARD_u16Adc_M_EPS_AN_CURRENT_U;

extern uint16 HARD_u16Adc_M_ACM_AN_CURRENT_V;

extern uint16 HARD_u16Adc_M_ACM_AN_CURRENT_U;

extern uint16 HARD_u16Adc_AN_15V_RDC;

extern uint16 HARD_u16Adc_M_AN_DIAG_SIN_L_1;

extern uint16 HARD_u16Adc_M_AN_DIAG_SIN_L_2;

extern uint16 HARD_u16Adc_M_AN_DIAG_SIN_H_2;

extern uint16 HARD_u16Adc_M_AN_DIAG_SIN_H_1;

extern uint16 HARD_u16Adc_AN_P5V_AD2S;

extern uint16 HARD_u16Adc_M_AN_DIAG_COS_L_1;

extern uint16 HARD_u16Adc_M_AN_DIAG_COS_H_1;

extern uint16 HARD_u16Adc_M_AN_MUX3;

extern uint16 HARD_u16Adc_M_AN_MUX4;

extern uint16 HARD_u16Adc_M_AN_MUX2;

extern uint16 HARD_u16Adc_M_AN_MUX1;

extern uint16 HARD_u16Adc_AN_P5V_REF;

extern uint16 HARD_u16Adc_M_AN_CURRENT_W_2;

extern uint16 HARD_u16Adc_M_AN_CURRENT_V_2;

extern uint16 HARD_u16Adc_M_AN_CURRENT_U_2;

extern uint16 HARD_u16Adc_M_AN_DIAG_COS_H_2;

extern uint16 HARD_u16Adc_M_AN_DIAG_COS_L_2;

extern uint16 HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_V;

extern uint16 HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_W;

extern uint16 HARD_u16Adc_M_AN_MOT_SIN_2;

extern uint16 HARD_u16Adc_M_AN_MOT_COS_2;

extern uint16 HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_V;

extern uint16 HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_W;

extern uint16 HARD_u16Adc_M_AN_DC_LINK_PACK4;

extern uint16 HARD_u16Adc_M_AN_CURRENT_W_1;

extern uint16 HARD_u16Adc_M_AN_CURRENT_V_1;

extern uint16 HARD_u16Adc_M_AN_DC_LINK_PACK3;

extern uint16 HARD_u16Adc_M_AN_CURRENT_U_1;

extern uint16 HARD_u16Adc_M_AN_DC_LINK_PACK2;

extern uint16 HARD_u16Adc_M_AN_DC_LINK_PACK1;

extern uint16 HARD_u16Adc_M_AN_KM12_FB_KC4F;

extern uint16 HARD_u16Adc_M_AN_KM10_FB_KC3F;

extern uint16 HARD_u16Adc_M_AN_KM8_FB_KC2F;

extern uint16 HARD_u16Adc_M_AN_KM6_FB_KC1F;

extern uint16 HARD_u16Adc_M_AN_MOT_SIN_1;

extern uint16 HARD_u16Adc_M_AN_MOT_COS_1;


extern float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2;
extern float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2;
extern float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2;
extern float32 HARD_f32Pwm_AN_VOL_DCLINK_EPS;
extern float32 HARD_f32Pwm_AN_VOL_DCLINK_ACM;
extern float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1;
extern float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1;
extern float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1;

extern boolean HARD_bESMCmdFtShutdownReq;
extern boolean HARD_bESMCmdFtShutdownRes;
extern boolean HARD_bESMCmdFtStartReq;
extern boolean HARD_bESMCmdFtStartRes;
extern boolean HARD_bESMCmdPwmDirectReq;
extern boolean HARD_bESMCmdPwmDirectRes;
extern boolean HARD_bESMCmdPwmHardReq;
extern boolean HARD_bESMCmdPwmHardRes;
extern boolean HARD_bESMCmdPwmOffReq;
extern boolean HARD_bESMCmdPwmOffRes;
extern boolean HARD_bESMCmdSwShutdownReq;
extern boolean HARD_bESMCmdSwShutdownRes;
extern boolean HARD_bESMCmdSwStartReq;
extern boolean HARD_bESMCmdSwStartRes;
extern boolean HARD_bModSeq1FuncOn;
extern boolean HARD_bModSeq1InitOn;
extern boolean HARD_bModSeq2FuncOn;
extern boolean HARD_bModSeq2InitOn;
extern boolean HARD_bNmRxRepeatMsgReq;
extern boolean HARD_bNMTestOn;
extern boolean HARD_bNmTxRepeatMsgReq;
extern boolean HARD_bPtgEnable;
extern boolean HARD_bPtgSignalsShiftControl;
extern boolean HARD_bPtgUSignalEnable;
extern boolean HARD_bPtgVSignalEnable;
extern boolean HARD_bPtgWSignalEnable;
extern boolean HARD_EsmFtStateAut;
extern boolean HARD_EsmNfStateAut;
extern boolean HARD_bDioWriteTestEna;
extern uint8 HARD_u16Adc0An10_CTN_BOARD2Phys;
extern uint8 HARD_u8VSIRxaTempCtrlBdPhys;
extern uint8 HARD_u8VSIRxaTempDrvBdPhys;
extern uint8 HARD_u8VSIRxaTempIgbtPhys;
extern sint16 HARD_s16PtgRefSignalValue;
extern sint16 HARD_s16PtgUSignalValue;
extern sint16 HARD_s16PtgVSignalValue;
extern sint16 HARD_s16PtgWSignalValue;
extern uint16 HARD_u16PtgRefSignalTime;
extern uint16 HARD_u16PtgUSignalNbPeriode;
extern uint16 HARD_u16PtgUSignalTime;
extern uint16 HARD_u16PtgVSignalNbPeriode;
extern uint16 HARD_u16PtgVSignalTime;
extern uint16 HARD_u16PtgWSignalNbPeriode;
extern uint16 HARD_u16PtgWSignalTime;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 371 "bswcdd\\HARD\\HARD.h" 2





void HARD_vidConvertDecToPhys(void);
void HARD_vidEsmFt(void);
void HARD_vidEsmNf(void);
void HARD_vidEsmReInit(void);
void HARD_vidInit(void);
void HARD_vidIoTestIO(void);
void HARD_vidModManager(void);
void HARD_vidNmManager(void);
void HARD_vidPtgManager(sint16 *p_s16PwmUl, sint16 *p_s16PwmVl, sint16 *p_s16PwmWl, uint8 *p_u8PwmUOn, uint8 *p_u8PwmVOn, uint8 *p_u8PwmWOn);
# 42 "bswcdd\\HARD\\HARD_Ptg.c" 2
# 1 "bswcdd\\HARD\\HARD_L.h" 1
# 37 "bswcdd\\HARD\\HARD_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\HARD\\HARD_L.h" 2
# 53 "bswcdd\\HARD\\HARD_L.h"
# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 54 "bswcdd\\HARD\\HARD_L.h" 2
extern const uint16 HARD_u16PtgUSignalShiftC;
extern const uint16 HARD_u16PtgVSignalShiftC;
extern const uint16 HARD_u16PtgWSignalShiftC;

# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 59 "bswcdd\\HARD\\HARD_L.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 65 "bswcdd\\HARD\\HARD_L.h" 2
extern uint16 HARD_u16Adc2An44_CTN_BOARD1Phys;
extern uint16 HARD_u16PtgRefSignalNbPeriode;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 "bswcdd\\HARD\\HARD_L.h" 2
# 43 "bswcdd\\HARD\\HARD_Ptg.c" 2

# 1 "bswcdd\\HARD\\HARD_Tab.h" 1
# 52 "bswcdd\\HARD\\HARD_Tab.h"
# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 53 "bswcdd\\HARD\\HARD_Tab.h" 2



extern const sint16 HARDPTG_s16HardProfilSimu[256];




extern const uint16 HARD_u16VsiTemp5kNTCBkptC[24];
extern const uint8 HARD_u8VsiTemp5kNTCC[24];




extern const uint16 HARD_u16VsiTempCTNBkptC[19];
extern const uint8 HARD_u8VsiTempCTNC[19];




extern const uint16 HARD_u16TempCTPBkptC[22];
extern const uint8 HARD_u8TempCTPC[22];




extern const uint16 HARD_u16VsiTempNTCMotBkptC[26];
extern const uint16 HARD_u16VsiTempNTCMotC[26];


# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 84 "bswcdd\\HARD\\HARD_Tab.h" 2
# 45 "bswcdd\\HARD\\HARD_Ptg.c" 2
# 1 "bswcdd\\HARD\\HARD_Ptg.h" 1
# 33 "bswcdd\\HARD\\HARD_Ptg.h"
void HARD_vidPtgInit(void);
void HARD_vidPtgCalculate(
                          uint16 *p_u16NbPeriode,
                          uint16 *p_u16Time,
                          uint16 *p_u16RefTime,
                          sint16 *p_s16Value,
                          boolean *p_bEnable,
                          uint16 *p_u16Shift,
                          boolean *p_bShiftControl
                         );
void HARD_vidPtgCallTrigFunc(
                             uint16 *p_u16NbPeriode,
                             uint16 *p_u16Time,
                             sint16 *p_s16Value
                            );

void HARD_vidPtgPulse(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgSinus(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgCosinus(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgTriangle(uint16* pu16NbRequest, sint16 *ps16Value);
void HARD_vidPtgSquare(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgContinuous(sint16 *ps16Value);
void HARD_vidPtgSimu(uint16 *pu16Time,sint16 *ps16Value);
void HARD_vidPtgDisjunction(uint16 *pu16Nbrequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgFree(uint16 *pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);
# 46 "bswcdd\\HARD\\HARD_Ptg.c" 2
# 1 "bswcdd\\HARD\\MATH_TRI.H" 1
# 34 "bswcdd\\HARD\\MATH_TRI.H"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 "bswcdd\\HARD\\MATH_TRI.H" 2
# 48 "bswcdd\\HARD\\MATH_TRI.H"
typedef sint8 int8_T;
typedef uint8 uint8_T;
typedef sint16 int16_T;
typedef uint16 uint16_T;
typedef sint32 int32_T;
typedef uint32 uint32_T;
typedef float32 real32_T;
typedef float64 real64_T;



# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 69 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section ".text" ax
# 60 "bswcdd\\HARD\\MATH_TRI.H" 2

extern sint16 MathSinus(uint16 angle);
extern sint16 MathCosinus(uint16 angle);
extern sint16 MathArcsinus(sint16 arc);
extern sint16 MathArccosinus(sint16 arc);
extern sint32 MathTangente(sint16 sinus,sint16 cosinus);
extern sint16 MathArctangente(sint32 tangente);
extern void MathSinusCosinus(uint16 angle, sint16 *sinResult, sint16 *cosResult);

extern void LIBTRIG_Sin_Outputs_wrapper(const int16_T *Theta, int16_T *Sin);
extern void LIBTRIG_Cos_Outputs_wrapper(const int16_T *Theta, int16_T *Cos);
extern void LIBTRIG_SinCos_Outputs_wrapper(const int16_T *Theta, int16_T *Sin, int16_T *Cos);
extern void LIBTRIG_Arctan_Outputs_wrapper(const int32_T *Tangente, int16_T *Theta);


# 1 "bswcdd\\HARD\\MATH_MemMap.h" 1
# 95 "bswcdd\\HARD\\MATH_MemMap.h"
#pragma section
# 76 "bswcdd\\HARD\\MATH_TRI.H" 2




typedef uint16 MathAngleType;
# 115 "bswcdd\\HARD\\MATH_TRI.H"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 116 "bswcdd\\HARD\\MATH_TRI.H" 2

extern const sint16 mathSinusTable[257];
extern const sint16 mathArcsinusTable[257];
extern const uint16 mathArctangenteTable1[257];
extern const uint16 mathArctangenteTable2[257];
extern const uint16 mathArctangenteTable3[257];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 125 "bswcdd\\HARD\\MATH_TRI.H" 2
# 47 "bswcdd\\HARD\\HARD_Ptg.c" 2
# 58 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgInit(void)
{

   HARD_u16PtgRefSignalNbPeriode = 65535;
   HARD_u16PtgRefSignalTime = 0;
   HARD_s16PtgRefSignalValue = 0;
   HARD_bPtgSignalsShiftControl = 1;


   HARD_u16PtgUSignalNbPeriode = 65535;
   HARD_u16PtgUSignalTime = 0;
   HARD_s16PtgUSignalValue = 0;
   HARD_bPtgUSignalEnable = 1;


   HARD_u16PtgVSignalNbPeriode = 65535;
   HARD_u16PtgVSignalTime = 0;
   HARD_s16PtgVSignalValue = 0;
   HARD_bPtgVSignalEnable = 1;


   HARD_u16PtgWSignalNbPeriode = 65535;
   HARD_u16PtgWSignalTime = 0;
   HARD_s16PtgWSignalValue = 0;
   HARD_bPtgWSignalEnable = 1;


   HARD_PtgModeTest = 2;
   HARD_bPtgEnable = 0;
}
# 99 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgCalculate(
                          uint16 *p_u16NbPeriode,
                          uint16 *p_u16Time,
                          uint16 *p_u16RefTime,
                          sint16 *p_s16Value,
                          boolean *p_bEnable,
                          uint16 *p_u16Shift,
                          boolean *p_bShiftControl
                         )
{
   if (*p_u16NbPeriode != 0)
   {
      if (*p_bShiftControl != 0)
      {
         *p_u16Time = (uint16)(*p_u16RefTime - *p_u16Shift);
      }

      HARD_vidPtgCallTrigFunc(
                              p_u16NbPeriode,
                              p_u16Time,
                              p_s16Value
                             );
      *p_bEnable = 1;
   }
   else
   {
      *p_u16Time = 0;
      *p_s16Value = 0;
      *p_bEnable = 0;
      *p_u16Shift = 0;
      *p_bShiftControl = 0;
   }
}
# 143 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgCallTrigFunc(
                             uint16 *p_u16NbPeriode,
                             uint16 *p_u16Time,
                             sint16 *p_s16Value
                            )
{
   switch (HARD_PtgModeTest)
   {
      case 1:
         HARD_vidPtgPulse(
                          p_u16NbPeriode,
                          p_u16Time,
                          p_s16Value
                         );
         break;

      case 2:
         HARD_vidPtgSinus(
                          p_u16NbPeriode,
                          p_u16Time,
                          p_s16Value
                         );
         break;
# 175 "bswcdd\\HARD\\HARD_Ptg.c"
      case 4:
         HARD_vidPtgTriangle(
                             p_u16NbPeriode,
                             p_s16Value
                            );
         break;

      case 8:
         HARD_vidPtgSquare(
                           p_u16NbPeriode,
                           p_u16Time,
                           p_s16Value
                          );
         break;

      case 16:
         HARD_vidPtgContinuous(p_s16Value);
         break;

      case 32:
         HARD_vidPtgSimu(
                         p_u16Time,
                         p_s16Value
                        );
         break;

      case 64:
         HARD_vidPtgDisjunction(
                                p_u16NbPeriode,
                                p_u16Time,
                                p_s16Value
                               );
         break;

      case 128:
         HARD_vidPtgFree(
                         p_u16NbPeriode,
                         p_u16Time,
                         p_s16Value
                        );
         break;
   }
}
# 228 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgPulse(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;
 uint16 u16LocalPulseDutyCycle;
 sint32 s32LocalValue;

   u16LocalNbRequest = *pu16NbRequest;
   u16LocalTime = *pu16Time;
   s32LocalValue = *ps16Value;

   u16LocalPulseDutyCycle = HARDPTG_u16PulseDutyCycleC;
   if (u16LocalPulseDutyCycle == 0)
   {
      u16LocalPulseDutyCycle = 1;
   }

   if (u16LocalNbRequest != 0)
   {
      u16LocalTime++;

      if (u16LocalTime <= (HARDPTG_u32FrequenceC / u16LocalPulseDutyCycle))
      {
         s32LocalValue = ((sint32)(HARDPTG_s16AmplitudeC) << 1 ) - 32768 + (sint32)(HARDPTG_s16OffsetC);
      }
      else
      {
         s32LocalValue = ((sint32)(HARDPTG_s16OffsetC) - (sint32)32768);

         if(u16LocalTime >= HARDPTG_u32FrequenceC )
         {
            u16LocalTime = 0;

            if ( u16LocalNbRequest != 65535 )
            {
               u16LocalNbRequest--;
            }
         }
      }

      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
         else
         {
            s32LocalValue = s32LocalValue;
         }
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
      u16LocalTime = (sint16)0;
   }

   *pu16NbRequest = u16LocalNbRequest;
   *pu16Time = u16LocalTime;
   *ps16Value = (sint16)s32LocalValue;
}
# 304 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgSinus(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;
 sint32 s32LocalValue;

 sint16 s16LocalSinus;
 uint16 u16LocalRatio;

   u16LocalNbRequest = *pu16NbRequest;
   u16LocalTime = *pu16Time;
   s32LocalValue = *ps16Value;

   if (u16LocalNbRequest != 0)
   {
      if (HARDPTG_u32FrequenceC != 0)
      {
         u16LocalRatio = (uint16)((uint32)65535 / HARDPTG_u32FrequenceC);
         if (u16LocalRatio > 16384)
         {
            u16LocalRatio = 16384;
         }
      }
      else
      {
         u16LocalRatio = 16384;
      }

      if ((sint32)((sint32)u16LocalTime + u16LocalRatio) > 65535)
      {
         if (u16LocalNbRequest != 65535)
         {
            u16LocalNbRequest--;
         }
      }
      u16LocalTime = (uint16)(u16LocalTime + u16LocalRatio);
      s16LocalSinus = MathSinus(u16LocalTime);
      s32LocalValue = (((sint32)s16LocalSinus * HARDPTG_s16AmplitudeC) >> 15);
      s32LocalValue = s32LocalValue + HARDPTG_s16OffsetC;

      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
      u16LocalTime = (sint16)0;
   }
   *pu16NbRequest = u16LocalNbRequest;
   *pu16Time = u16LocalTime;
   *ps16Value = (sint16)s32LocalValue;
}
# 375 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgCosinus(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;
 sint32 s32LocalValue;

 sint16 s16LocalSinus;
 uint16 u16LocalRatio;

   u16LocalNbRequest = *pu16NbRequest;
   u16LocalTime = *pu16Time;
   s32LocalValue = *ps16Value;

   if (u16LocalNbRequest != 0)
   {
      if (HARDPTG_u32FrequenceC != 0)
      {
         u16LocalRatio = (uint16)((uint32)65535 / HARDPTG_u32FrequenceC);
         if (u16LocalRatio > 16384)
         {
            u16LocalRatio = 16384;
         }
      }
      else
      {
         u16LocalRatio = 16384;
      }

      if ((sint32)((sint32)u16LocalTime + u16LocalRatio) > 65535)
      {
         if (u16LocalNbRequest != 65535)
         {
            u16LocalNbRequest--;
         }
      }
      u16LocalTime = (uint16)(u16LocalTime + u16LocalRatio);
      s16LocalSinus = MathCosinus(u16LocalTime);
      s32LocalValue = (((sint32)s16LocalSinus * HARDPTG_s16AmplitudeC) >> 15);
      s32LocalValue = s32LocalValue + HARDPTG_s16OffsetC;

      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
      u16LocalTime = (sint16)0;
   }
   *pu16NbRequest = u16LocalNbRequest;
   *pu16Time = u16LocalTime;
   *ps16Value = (sint16)s32LocalValue;
}
# 446 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgTriangle(uint16* pu16NbRequest, sint16 *ps16Value)
{
 uint16 u16LocalNbRequest;
 sint32 s32LocalValue;
 sint32 s32LocalSlewRate;

   u16LocalNbRequest = *pu16NbRequest;
   s32LocalValue = (sint32)(*ps16Value) - HARDPTG_s16OffsetC;

   if (HARDPTG_u32FrequenceC != 0)
   {
      s32LocalSlewRate = HARDPTG_s16SlewRateC / HARDPTG_u32FrequenceC;
   }
   else
   {
      s32LocalSlewRate = HARDPTG_s16SlewRateC;
   }

   if (u16LocalNbRequest != 0)
   {
      if (HARDPTG_s16AmplitudeC < 0)
      {
         s32LocalValue = s32LocalValue - s32LocalSlewRate;
         if (s32LocalValue < HARDPTG_s16AmplitudeC)
         {
            s32LocalValue = 0;
            if (u16LocalNbRequest != 65535)
            {
               u16LocalNbRequest--;
            }
            s32LocalValue = (2 * s32LocalValue) + HARDPTG_s16OffsetC + 32767;
         }
      }
      else
      {
         s32LocalValue = s32LocalValue + s32LocalSlewRate;
         if (s32LocalValue > HARDPTG_s16AmplitudeC)
         {
            s32LocalValue = 0;
            if (u16LocalNbRequest != 65535)
            {
               u16LocalNbRequest--;
            }
            s32LocalValue = (2 * s32LocalValue) + HARDPTG_s16OffsetC - 32767;
         }
      }

      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
   }
   *pu16NbRequest = u16LocalNbRequest;
   *ps16Value = (sint16)s32LocalValue;
}
# 522 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgSquare(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;
 sint32 s32LocalValue;

   u16LocalNbRequest = *pu16NbRequest;
   u16LocalTime = *pu16Time;
   s32LocalValue = *ps16Value;

   if (u16LocalNbRequest != 0)
   {
      u16LocalTime++;

      if (u16LocalTime <= (HARDPTG_u32FrequenceC / 2))
      {
         s32LocalValue = ((sint32)(HARDPTG_s16OffsetC << 1) - (sint32)32768) + HARDPTG_s16AmplitudeC;
      }
      else
      {
         if (u16LocalTime < HARDPTG_u32FrequenceC)
         {
            s32LocalValue = ((sint32)(HARDPTG_s16OffsetC << 1) - (sint32)32768) - HARDPTG_s16AmplitudeC;
         }
         else
         {
            s32LocalValue = ((sint32)(HARDPTG_s16OffsetC << 1) - (sint32)32768) - HARDPTG_s16AmplitudeC;

            u16LocalTime = 0;

            if (u16LocalNbRequest != 65535)
            {
               u16LocalNbRequest--;
            }
         }
      }

      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
         else
         {
            s32LocalValue = s32LocalValue;
         }
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
      u16LocalTime = (sint16)0;
   }
   *pu16NbRequest = u16LocalNbRequest;
   *pu16Time = u16LocalTime;
   *ps16Value = (sint16)s32LocalValue;
}
# 594 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgContinuous(sint16 *ps16Value)
{
 sint16 s16LocalValue;







      if (HARDPTG_s16ContinuousRequestC < -32767)
      {
         s16LocalValue = -32767;
      }
      else
      {
         s16LocalValue = HARDPTG_s16ContinuousRequestC;
      }

   *ps16Value = s16LocalValue;
}
# 625 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgSimu(uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalValue;

   u16LocalValue = *pu16Time;

   *ps16Value = HARDPTG_s16HardProfilSimu[u16LocalValue];
   u16LocalValue++;

   if (u16LocalValue > 255)
   {
      u16LocalValue = 0;
   }
   *pu16Time = u16LocalValue;
}
# 650 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgDisjunction(uint16 *pu16Nbrequest, uint16 *pu16Time, sint16 *ps16Value)
{
 sint32 s32LocalConsigne;
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;

   u16LocalTime = *pu16Time;
   u16LocalNbRequest = *pu16Nbrequest;

   s32LocalConsigne = ((sint32)(HARDPTG_s16AmplitudeC << 1)) - 32768;

   if (u16LocalNbRequest != 0)
   {
      if (u16LocalTime != 0)
      {
         if (s32LocalConsigne > 32767)
         {
            s32LocalConsigne = 32767;
         }
         else
         {
            if (s32LocalConsigne < -32767)
            {
               s32LocalConsigne = -32767;
            }
         }
         u16LocalTime--;
      }
      else
      {
         if (u16LocalNbRequest != 65535)
         {
            u16LocalNbRequest--;
         }
         s32LocalConsigne = 0;
      }
   }
   else
   {
      s32LocalConsigne = 0;
   }
   *pu16Nbrequest = u16LocalNbRequest;
   *pu16Time = u16LocalTime;
   *ps16Value = (sint16)s32LocalConsigne;
}
# 705 "bswcdd\\HARD\\HARD_Ptg.c"
void HARD_vidPtgFree(uint16 *pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 sint32 s32LocalConsigne;
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;

   u16LocalTime = *pu16Time;
   u16LocalNbRequest = *pu16NbRequest;

   s32LocalConsigne = ((sint32)HARDPTG_s16AmplitudeC << 1) - 32767;

   if (u16LocalNbRequest != 0)
   {
      if (s32LocalConsigne > 32767)
      {
         s32LocalConsigne = 32767;
      }
      else
      {
         if (s32LocalConsigne < -32767)
         {
            s32LocalConsigne = -32767;
         }
      }
      u16LocalNbRequest--;
   }
   else
   {
      s32LocalConsigne = 0;
   }
   *pu16NbRequest = u16LocalNbRequest;
   *pu16Time = u16LocalTime;
   *ps16Value = (sint16)s32LocalConsigne;
}
