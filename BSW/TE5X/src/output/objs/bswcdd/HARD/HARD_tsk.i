# 1 "bswcdd\\HARD\\HARD_tsk.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\HARD\\HARD_tsk.c"
# 42 "bswcdd\\HARD\\HARD_tsk.c"
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
# 43 "bswcdd\\HARD\\HARD_tsk.c" 2

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
# 45 "bswcdd\\HARD\\HARD_tsk.c" 2
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
# 46 "bswcdd\\HARD\\HARD_tsk.c" 2

# 1 "bswcdd\\HARD\\HARD_Io.h" 1
# 67 "bswcdd\\HARD\\HARD_Io.h"
# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 138 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section ".text" ax
# 68 "bswcdd\\HARD\\HARD_Io.h" 2

void HARD_vidIoInit(void);
void HARD_vidIoWriteDioOutput(void);
void HARD_vidIoReadDioOutput(void);
void HARD_vidIoReadDioInput(void);
void HARD_vidIoReadAnaInput(void);
void HARD_vidIoReadPwmInput(void);


# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 179 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section
# 78 "bswcdd\\HARD\\HARD_Io.h" 2
# 48 "bswcdd\\HARD\\HARD_tsk.c" 2
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
# 49 "bswcdd\\HARD\\HARD_tsk.c" 2
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
# 50 "bswcdd\\HARD\\HARD_tsk.c" 2
# 1 "bswcdd\\HARD\\HARD_Esm.h" 1
# 52 "bswcdd\\HARD\\HARD_Esm.h"
# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 138 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section ".text" ax
# 53 "bswcdd\\HARD\\HARD_Esm.h" 2

void HARD_vidEsmInit(void);
void HARD_vidEsmStfManagerNf(uint8 fState);
void HARD_vidEsmStfManagerFt(uint8 fState);


# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 179 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section
# 60 "bswcdd\\HARD\\HARD_Esm.h" 2
# 51 "bswcdd\\HARD\\HARD_tsk.c" 2

# 1 "bswcdd\\HARD\\hard_mod.h" 1
# 54 "bswcdd\\HARD\\hard_mod.h"
extern uint8 HARD_ModSeq1InitState;
extern uint8 HARD_ModSeq1FuncState;

extern uint8 HARD_ModSeq2InitState;
extern uint8 HARD_ModSeq2FuncState;
# 67 "bswcdd\\HARD\\hard_mod.h"
void HARD_vidModInit(void);

void HARD_vidModSeq1Init(boolean *flagOn);
void HARD_vidModSeq1Func(boolean *flagOn);

void HARD_vidModSeq2Init(boolean *flagOn);
void HARD_vidModSeq2Func(boolean *flagOn);
# 53 "bswcdd\\HARD\\HARD_tsk.c" 2
# 65 "bswcdd\\HARD\\HARD_tsk.c"
# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 138 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section ".text" ax
# 66 "bswcdd\\HARD\\HARD_tsk.c" 2
# 77 "bswcdd\\HARD\\HARD_tsk.c"
void HARD_vidInit(void)
{
   HARD_vidIoInit();
   HARD_vidPtgInit();
   HARD_vidEsmInit();
   HARD_vidModInit();

}
# 100 "bswcdd\\HARD\\HARD_tsk.c"
void HARD_vidIoTestIO(void)
{
   HARD_vidIoReadAnaInput();
   HARD_vidIoReadDioInput();
   HARD_vidIoReadPwmInput();
   if(HARD_bDioWriteTestEna != (0 != 0))
   {
      HARD_vidIoWriteDioOutput();
   }
   else
   {

   }
}
# 129 "bswcdd\\HARD\\HARD_tsk.c"
void HARD_vidPtgManager(
                        sint16 *p_s16PwmUl,
                        sint16 *p_s16PwmVl,
                        sint16 *p_s16PwmWl,
                        uint8 *p_u8PwmUOn,
                        uint8 *p_u8PwmVOn,
                        uint8 *p_u8PwmWOn
                       )
{
   uint16 u16LocalPtgUSignalShift;
   uint16 u16LocalPtgVSignalShift;
   uint16 u16LocalPtgWSignalShift;
# 152 "bswcdd\\HARD\\HARD_tsk.c"
   if (HARD_bPtgEnable != 0)
   {
      HARD_vidPtgCallTrigFunc(
                              &HARD_u16PtgRefSignalNbPeriode,
                              &HARD_u16PtgRefSignalTime,
                              &HARD_s16PtgRefSignalValue
                             );

      u16LocalPtgUSignalShift = 0;
      HARD_vidPtgCalculate(
                           &HARD_u16PtgUSignalNbPeriode,
                           &HARD_u16PtgUSignalTime,
                           &HARD_u16PtgRefSignalTime,
                           &HARD_s16PtgUSignalValue,
                           &HARD_bPtgUSignalEnable,
                           &u16LocalPtgUSignalShift,
                           &HARD_bPtgSignalsShiftControl
                          );
      *p_s16PwmUl = (sint16)((sint32)(HARD_s16PtgUSignalValue / 4) + 8192);
      *p_u8PwmUOn = HARD_bPtgUSignalEnable;

      u16LocalPtgVSignalShift = HARD_u16PtgVSignalShiftC;
      HARD_vidPtgCalculate(
                           &HARD_u16PtgVSignalNbPeriode,
                           &HARD_u16PtgVSignalTime,
                           &HARD_u16PtgRefSignalTime,
                           &HARD_s16PtgVSignalValue,
                           &HARD_bPtgVSignalEnable,
                           &u16LocalPtgVSignalShift,
                           &HARD_bPtgSignalsShiftControl
                          );
      *p_s16PwmVl = (sint16)((sint32)(HARD_s16PtgVSignalValue / 4) + 8192);
      *p_u8PwmVOn = HARD_bPtgVSignalEnable;

      u16LocalPtgWSignalShift = (uint16)(HARD_u16PtgWSignalShiftC
                                       + HARD_u16PtgVSignalShiftC);
      HARD_vidPtgCalculate(
                           &HARD_u16PtgWSignalNbPeriode,
                           &HARD_u16PtgWSignalTime,
                           &HARD_u16PtgRefSignalTime,
                           &HARD_s16PtgWSignalValue,
                           &HARD_bPtgWSignalEnable,
                           &u16LocalPtgWSignalShift,
                           &HARD_bPtgSignalsShiftControl
                          );
      *p_s16PwmWl = (sint16)((sint32)(HARD_s16PtgWSignalValue / 4) + 8192);
      *p_u8PwmWOn = HARD_bPtgWSignalEnable;

      HARD_bPtgSignalsShiftControl = 0;
   }
   else
   {
      *p_u8PwmUOn = 0;
      *p_u8PwmVOn = 0;
      *p_u8PwmWOn = 0;
   }
}
# 224 "bswcdd\\HARD\\HARD_tsk.c"
void HARD_vidEsmReInit(void)
{
   HARD_vidEsmInit();
}
# 239 "bswcdd\\HARD\\HARD_tsk.c"
void HARD_vidEsmNf(void)
{
   if (HARD_EsmNfStateAut != 0)
   {
      HARD_vidEsmStfManagerNf(HARD_EsmNfState);
   }
}
# 257 "bswcdd\\HARD\\HARD_tsk.c"
void HARD_vidEsmFt(void)
{
   if (HARD_EsmFtStateAut != 0)
   {
      HARD_vidEsmStfManagerFt(HARD_EsmFtState);
   }
}
# 280 "bswcdd\\HARD\\HARD_tsk.c"
void HARD_vidModManager(void)
{



   HARD_vidModSeq1Init(&HARD_bModSeq1InitOn);
   if (HARD_bModSeq1InitOn == 0)
   {
      HARD_vidModSeq1Func(&HARD_bModSeq1FuncOn);
   }



   HARD_vidModSeq2Init(&HARD_bModSeq2InitOn);
   if (HARD_bModSeq2InitOn == 0)
   {
      HARD_vidModSeq2Func(&HARD_bModSeq2FuncOn);
   }
}
# 398 "bswcdd\\HARD\\HARD_tsk.c"
# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 179 "bswcdd\\HARD\\HARD_MemMap.h"
#pragma section
# 399 "bswcdd\\HARD\\HARD_tsk.c" 2
