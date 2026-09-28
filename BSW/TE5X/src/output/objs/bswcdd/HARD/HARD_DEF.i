# 1 "bswcdd\\HARD\\HARD_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\HARD\\HARD_DEF.c"
# 31 "bswcdd\\HARD\\HARD_DEF.c"
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
# 32 "bswcdd\\HARD\\HARD_DEF.c" 2
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
# 33 "bswcdd\\HARD\\HARD_DEF.c" 2
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
# 34 "bswcdd\\HARD\\HARD_DEF.c" 2






# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 41 "bswcdd\\HARD\\HARD_DEF.c" 2
const boolean HARD_bPtgEnablePhaseShiftingC = 1;
const boolean HARD_bBenchOnC = 1;

# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 45 "bswcdd\\HARD\\HARD_DEF.c" 2


# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 72 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 182 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_32" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 73 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 48 "bswcdd\\HARD\\HARD_DEF.c" 2
const uint32 HARDPTG_u32FrequenceC = 100;

# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 77 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 78 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 51 "bswcdd\\HARD\\HARD_DEF.c" 2


# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 83 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 54 "bswcdd\\HARD\\HARD_DEF.c" 2
const sint16 HARDPTG_s16AmplitudeC = 3277;
const sint16 HARDPTG_s16ContinuousRequestC = 0;
const sint16 HARDPTG_s16OffsetC = 0;
const sint16 HARDPTG_s16SlewRateC = 32767;
const uint16 HARD_u16PtgUSignalShiftC = 0;
const uint16 HARD_u16PtgVSignalShiftC = 21845;
const uint16 HARD_u16PtgWSignalShiftC = 21845;
const uint16 HARDPTG_u16PulseDutyCycleC = 10;

# 1 "bswcdd\\HARD\\HARD_MemMap.h" 1
# 88 "bswcdd\\HARD\\HARD_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 "bswcdd\\HARD\\HARD_MemMap.h" 2
# 64 "bswcdd\\HARD\\HARD_DEF.c" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 71 "bswcdd\\HARD\\HARD_DEF.c" 2
uint16 HARD_EsmFtState;
uint16 HARD_EsmNfState;
uint16 HARD_PtgModeTest;



boolean HARD_bDio_M_BACKUP_EN;
boolean HARD_bDio_M_KM7_KC1Z;
boolean HARD_bDio_M_Q6_PTC2;
boolean HARD_bDio_M_AN_ENABLE_ASC2;
boolean HARD_bDio_M_DI3_KM_EN;
boolean HARD_bDio_M_AN_ENABLE_ASC1;

boolean HARD_bDio_M_K1_KCF_XJCQ1;
boolean HARD_bDio_M_DX3_A;
boolean HARD_bDio_M_DX3_B;
boolean HARD_bDio_M_DX3_C;
boolean HARD_bDio_M_KM18_SZ2;

boolean HARD_bDio_M_KM5_KC1Z;
boolean HARD_bDio_M_KM6_KC1F;
boolean HARD_bDio_M_PW_DOWN;
boolean HARD_bDio_M_KM1_ZQ1;
boolean HARD_bDio_M_KM2_ZQ2;
boolean HARD_bDio_M_KM3_ZQ3;
boolean HARD_bDio_M_KM4_ZQ4;
boolean HARD_bDio_Port_2_Pin_6;

boolean HARD_bDio_M_KM13_KC3Z;
boolean HARD_bDio_M_HWCFG4;
boolean HARD_bDio_M_HWCFG5;

boolean HARD_bDio_M_KM9_KC2Z;
boolean HARD_bDio_M_KM8_KC2F;
boolean HARD_bDio_M_KM10_KC3F;
boolean HARD_bDio_M_YC2_KC3Z_YC;
boolean HARD_bDio_M_ISO_EN1;
boolean HARD_bDio_M_ISO_EN2;
boolean HARD_bDio_M_ISO_EN3;
boolean HARD_bDio_M_FLT_EXCITATION_2;
boolean HARD_bDio_M_FLT_EXCITATION_1;
boolean HARD_bDio_PORT_11_PIN_2;

boolean HARD_bDio_M_K2_KCF_XJCQ2;
boolean HARD_bDio_M_KM20_DCJY1;

boolean HARD_bDio_M_KM21_DCJY2;
boolean HARD_bDio_M_KM22_DCJY3;
boolean HARD_bDio_M_KM23_DCJY4;
boolean HARD_bDio_M_YC5_SZ2_YC;

boolean HARD_bDio_M_KM24_ZXFZ;
boolean HARD_bDio_M_K3_KCF_XJCQ3;
boolean HARD_bDio_M_HWCFG2;
boolean HARD_bDio_M_HWCFG3;
boolean HARD_bDio_M_HWCFG6;
boolean HARD_bDio_M_HWCFG1;
boolean HARD_bDio_M_SUPPLY_WDI;
boolean HARD_bDio_PORT_14_PIN_8;

boolean HARD_bDio_M_KM15_KC4Z;
boolean HARD_bDio_M_KM12_KC4F;
boolean HARD_bDio_MCU_ASC_STATE;
boolean HARD_bDio_M_YC3_KC4Z_YC;
boolean HARD_bDio_M_FAULT_ACM_HS_N;
boolean HARD_bDio_M_FAULT_EPS_HS_N;

boolean HARD_bDio_M_YC7_ZXFZ_YC;
boolean HARD_bDio_M_YC1_ZQ_YC;
boolean HARD_bDio_M_Q1_DCJR1;
boolean HARD_bDio_M_Q2_DCJR2;
boolean HARD_bDio_M_Q3_DCJR3;
boolean HARD_bDio_M_Q4_DCJR4;
boolean HARD_bDio_M_ENA_KM;
boolean HARD_bDio_M_FAULT_DRV_HS_N_1;

boolean HARD_bDio_M_Q5_PTC1;
boolean HARD_bDio_M_ACM_ENA_PWM;
boolean HARD_bDio_M_FAULT_DRV_LS_N_1;
boolean HARD_bDio_M_FAULT_DRV_LS_N_2;
boolean HARD_bDio_M_FAULT_DRV_HS_N_2;

boolean HARD_bDio_M_KM19_XGLFZ;
boolean HARD_bDio_M_YC6_XGLFZ_YC;
boolean HARD_bDio_M_DX1_A;
boolean HARD_bDio_M_DX1_B;
boolean HARD_bDio_M_EPS_ENA_PWM;
boolean HARD_bDio_M_DI2;

boolean HARD_bDio_M_DX2_A;
boolean HARD_bDio_M_DX2_B;
boolean HARD_bDio_M_DX2_C;
boolean HARD_bDio_M_KM17_SZ1;
boolean HARD_bDio_M_YC4_SZ1_YC;
boolean HARD_bDio_M_KEY_ON;

boolean HARD_bDio_MCU_STATE_LED;
boolean HARD_bDio_M_DX1_C;
boolean HARD_bDio_M_SER;
boolean HARD_bDio_M_DO1;

boolean HARD_bDio_M_KM11_KC2Z;
boolean HARD_bDio_M_K4_KCF_XJCQ4;
boolean HARD_bDio_M_CHG_ON ;
boolean HARD_bDio_M_IO_MUX1;

uint16 HARD_CH_DIO_IN_M_HW_OCP_W_2;
uint16 HARD_CH_DIO_IN_M_HW_OCP_V_2;
uint16 HARD_CH_DIO_IN_M_HW_OCP_U_2;

uint16 HARD_u16Adc_M_TEMP_MEAS_MOD_W_2;

uint16 HARD_u16Adc_AN_VOL_DCLINK_DRV;


uint16 HARD_u16Adc_M_AN_MUX7;

uint16 HARD_u16Adc_M_AN_MUX6;

uint16 HARD_u16Adc_M_EPS_AN_CURRENT_W;

uint16 HARD_u16Adc_M_ACM_AN_CURRENT_W;

uint16 HARD_u16Adc_M_EPS_AN_CURRENT_V;

uint16 HARD_u16Adc_M_EPS_AN_CURRENT_U;

uint16 HARD_u16Adc_M_ACM_AN_CURRENT_V;

uint16 HARD_u16Adc_M_ACM_AN_CURRENT_U;

uint16 HARD_u16Adc_AN_15V_RDC;

uint16 HARD_u16Adc_M_AN_DIAG_SIN_L_1;

uint16 HARD_u16Adc_M_AN_DIAG_SIN_L_2;

uint16 HARD_u16Adc_M_AN_DIAG_SIN_H_2;

uint16 HARD_u16Adc_M_AN_DIAG_SIN_H_1;

uint16 HARD_u16Adc_AN_P5V_AD2S;

uint16 HARD_u16Adc_M_AN_DIAG_COS_L_1;

uint16 HARD_u16Adc_M_AN_DIAG_COS_H_1;

uint16 HARD_u16Adc_M_AN_MUX3;

uint16 HARD_u16Adc_M_AN_MUX4;

uint16 HARD_u16Adc_M_AN_MUX2;

uint16 HARD_u16Adc_M_AN_MUX1;

uint16 HARD_u16Adc_AN_P5V_REF;

uint16 HARD_u16Adc_M_AN_CURRENT_W_2;

uint16 HARD_u16Adc_M_AN_CURRENT_V_2;

uint16 HARD_u16Adc_M_AN_CURRENT_U_2;

uint16 HARD_u16Adc_M_AN_DIAG_COS_H_2;

uint16 HARD_u16Adc_M_AN_DIAG_COS_L_2;

uint16 HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_V;

uint16 HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_W;

uint16 HARD_u16Adc_M_AN_MOT_SIN_2;

uint16 HARD_u16Adc_M_AN_MOT_COS_2;

uint16 HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_V;

uint16 HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_W;

uint16 HARD_u16Adc_M_AN_DC_LINK_PACK4;

uint16 HARD_u16Adc_M_AN_CURRENT_W_1;

uint16 HARD_u16Adc_M_AN_CURRENT_V_1;

uint16 HARD_u16Adc_M_AN_DC_LINK_PACK3;

uint16 HARD_u16Adc_M_AN_CURRENT_U_1;

uint16 HARD_u16Adc_M_AN_DC_LINK_PACK2;

uint16 HARD_u16Adc_M_AN_DC_LINK_PACK1;

uint16 HARD_u16Adc_M_AN_KM12_FB_KC4F;

uint16 HARD_u16Adc_M_AN_KM10_FB_KC3F;

uint16 HARD_u16Adc_M_AN_KM8_FB_KC2F;

uint16 HARD_u16Adc_M_AN_KM6_FB_KC1F;

uint16 HARD_u16Adc_M_AN_MOT_SIN_1;

uint16 HARD_u16Adc_M_AN_MOT_COS_1;

float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2;
float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2;
float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2;
float32 HARD_f32Pwm_AN_VOL_DCLINK_EPS;
float32 HARD_f32Pwm_AN_VOL_DCLINK_ACM;
float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1;
float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1;
float32 HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1;

boolean HARD_bESMCmdFtShutdownReq;
boolean HARD_bESMCmdFtShutdownRes;
boolean HARD_bESMCmdFtStartReq;
boolean HARD_bESMCmdFtStartRes;
boolean HARD_bESMCmdPwmDirectReq;
boolean HARD_bESMCmdPwmDirectRes;
boolean HARD_bESMCmdPwmHardReq;
boolean HARD_bESMCmdPwmHardRes;
boolean HARD_bESMCmdPwmOffReq;
boolean HARD_bESMCmdPwmOffRes;
boolean HARD_bESMCmdSwShutdownReq;
boolean HARD_bESMCmdSwShutdownRes;
boolean HARD_bESMCmdSwStartReq;
boolean HARD_bESMCmdSwStartRes;
boolean HARD_bModSeq1FuncOn;
boolean HARD_bModSeq1InitOn;
boolean HARD_bModSeq2FuncOn;
boolean HARD_bModSeq2InitOn;
boolean HARD_bNmRxRepeatMsgReq;
boolean HARD_bNMTestOn;
boolean HARD_bNmTxRepeatMsgReq;
boolean HARD_bPtgEnable;
boolean HARD_bPtgSignalsShiftControl;
boolean HARD_bPtgUSignalEnable;
boolean HARD_bPtgVSignalEnable;
boolean HARD_bPtgWSignalEnable;
boolean HARD_EsmFtStateAut;
boolean HARD_EsmNfStateAut;
boolean HARD_bDioWriteTestEna = (0 != 0);
uint8 HARD_u16Adc0An10_CTN_BOARD2Phys;
uint8 HARD_u8VSIRxaTempCtrlBdPhys;
uint8 HARD_u8VSIRxaTempDrvBdPhys;
uint8 HARD_u8VSIRxaTempIgbtPhys;
sint16 HARD_s16PtgRefSignalValue;
sint16 HARD_s16PtgUSignalValue;
sint16 HARD_s16PtgVSignalValue;
sint16 HARD_s16PtgWSignalValue;
uint16 HARD_u16PtgRefSignalNbPeriode;
uint16 HARD_u16PtgRefSignalTime;
uint16 HARD_u16PtgUSignalNbPeriode;
uint16 HARD_u16PtgUSignalTime;
uint16 HARD_u16PtgVSignalNbPeriode;
uint16 HARD_u16PtgVSignalTime;
uint16 HARD_u16PtgWSignalNbPeriode;
uint16 HARD_u16PtgWSignalTime;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 332 "bswcdd\\HARD\\HARD_DEF.c" 2
