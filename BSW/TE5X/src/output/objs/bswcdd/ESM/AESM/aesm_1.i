# 1 "bswcdd\\ESM\\AESM\\aesm_1.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\ESM\\AESM\\aesm_1.c"
# 54 "bswcdd\\ESM\\AESM\\aesm_1.c"
# 1 "bswcdd\\ESM\\AESM\\AESM.h" 1
# 37 "bswcdd\\ESM\\AESM\\AESM.h"
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
# 38 "bswcdd\\ESM\\AESM\\AESM.h" 2
# 58 "bswcdd\\ESM\\AESM\\AESM.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 59 "bswcdd\\ESM\\AESM\\AESM.h" 2
extern uint8 AESM_EcuState;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 62 "bswcdd\\ESM\\AESM\\AESM.h" 2
# 55 "bswcdd\\ESM\\AESM\\aesm_1.c" 2
# 1 "bswcdd\\ESM\\AESM\\AESM_L.h" 1
# 37 "bswcdd\\ESM\\AESM\\AESM_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\ESM\\AESM\\AESM_L.h" 2
# 53 "bswcdd\\ESM\\AESM\\AESM_L.h"
# 1 "bswcdd\\ESM\\AESM\\AESM_MemMap.h" 1
# 54 "bswcdd\\ESM\\AESM\\AESM_L.h" 2
extern const uint16 AESM_u16PowerLatchTempoC;
extern const uint8 AESM_u8RestartDelayCntC;

# 1 "bswcdd\\ESM\\AESM\\AESM_MemMap.h" 1
# 58 "bswcdd\\ESM\\AESM\\AESM_L.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 65 "bswcdd\\ESM\\AESM\\AESM_L.h" 2
extern uint16 AESM_u16PowerLatchTempo;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 68 "bswcdd\\ESM\\AESM\\AESM_L.h" 2
# 56 "bswcdd\\ESM\\AESM\\aesm_1.c" 2
# 1 "bswcdd\\ESM\\AESM\\aesmsrv.h" 1
# 36 "bswcdd\\ESM\\AESM\\aesmsrv.h"
# 1 ".\\output\\inc/ASTFSRV.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_e.h" 1
# 26 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_e.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 27 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_e.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_i.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_i.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 31 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_i.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 2

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_L.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_L.h" 2
# 53 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_L.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_L.h" 2
extern const uint16 AESM_ku16AfterrunToutCntC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h" 2
# 57 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_L.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 64 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_L.h" 2
extern uint8 AESM_u8AllowPwrDnDelay;
extern uint8 AESM_u8PwrLNfStep;
extern uint8 AESM_u8PwrOffTim;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_L.h" 2
# 38 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 2

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_e.h" 1
# 40 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 2


# 1 ".\\output\\inc/iohal.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 2
# 45 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h" 1
# 69 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h"
#pragma section ".text" ax
# 46 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 2




extern uint16 IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SER_2 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2 (void);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SER_3 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1 (void);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_DO2 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_KEY_ON (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SER (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DO1 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_CHG_ON (void);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3 (uint16 u16State);




extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE(void);





extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V(void);


# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h" 1
# 95 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h"
#pragma section
# 223 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 2
# 33 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h" 2
# 2 ".\\output\\inc/iohal.h" 2
# 43 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 2


# 1 ".\\output\\inc/AESM.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM.h" 1
# 2 ".\\output\\inc/AESM.h" 2
# 46 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 2
# 1 ".\\output\\inc/AESM_DAT.H" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 1
# 29 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2
# 1 ".\\output\\inc/astfsrv_Includes.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 1
# 2 ".\\output\\inc/astfsrv_Includes.h" 2
# 31 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2
# 1 ".\\output\\inc/astfsrv_types.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_types.h" 1
# 26 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 27 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_types.h" 2





typedef void (*ASTFSRV_tpfFunctionPointerType) (void);
# 2 ".\\output\\inc/astfsrv_types.h" 2
# 32 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\aesm.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\aesm_l.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2
# 192 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 193 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2

void AESM_vidOnAESM_EV0(void);
void AESM_vidOnAESM_EV1(void);

void AESM_vidExecOutEvent(uint16 bfCarrier);

void AESM_vidNoAction(void);

void AESM_vidEntryAESM_ST0(void);
void AESM_vidEntryAESM_ST1(void);
void AESM_vidEntryAESM_ST2(void);
void AESM_vidEntryAESM_ST3(void);
void AESM_vidEntryAESM_ST4(void);


void AESM_vidDuringAESM_ST0OnAESM_EV0(void);
void AESM_vidDuringAESM_ST0OnAESM_EV1(void);

void AESM_vidDuringAESM_ST1OnAESM_EV0(void);
void AESM_vidDuringAESM_ST1OnAESM_EV1(void);

void AESM_vidDuringAESM_ST2OnAESM_EV0(void);
void AESM_vidDuringAESM_ST2OnAESM_EV1(void);

void AESM_vidDuringAESM_ST3OnAESM_EV0(void);
void AESM_vidDuringAESM_ST3OnAESM_EV1(void);

void AESM_vidDuringAESM_ST4OnAESM_EV0(void);
void AESM_vidDuringAESM_ST4OnAESM_EV1(void);



void AESM_vidFromAESM_ST0OnAESM_EV0(void);
void AESM_vidFromAESM_ST1OnAESM_EV0(void);
void AESM_vidFromAESM_ST2OnAESM_EV0(void);
void AESM_vidFromAESM_ST3OnAESM_EV0(void);

void AESM_vidFromAESM_ST1OnAESM_EV1(void);
void AESM_vidFromAESM_ST2OnAESM_EV1(void);
void AESM_vidFromAESM_ST3OnAESM_EV1(void);
void AESM_vidFromAESM_ST4OnAESM_EV1(void);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 238 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 242 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2

extern uint16 AESM_bfOutEventCarrier;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 247 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 251 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2

extern ASTFSRV_tpfFunctionPointerType AESM_pfTransAESM_STF0OnAESM_EV0Ptr;

extern ASTFSRV_tpfFunctionPointerType AESM_pfTransAESM_STF0OnAESM_EV1Ptr;

extern ASTFSRV_tpfFunctionPointerType AESM_pfDuringAESM_STF0OnAESM_EV0Ptr;

extern ASTFSRV_tpfFunctionPointerType AESM_pfDuringAESM_STF0OnAESM_EV1Ptr;




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 264 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h" 2
# 2 ".\\output\\inc/AESM_DAT.H" 2
# 47 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 2
# 1 ".\\output\\inc/AESM_TRA.H" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_TRA.h" 1
# 29 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_TRA.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_TRA.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\aesm_dat.h" 1
# 31 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_TRA.h" 2
# 1 ".\\output\\inc/astfsrv_Includes.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_TRA.h" 2
# 2 ".\\output\\inc/AESM_TRA.H" 2
# 48 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_Includes.h" 2
# 32 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_i.h" 2
# 28 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\astfsrv_e.h" 2
# 39 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h" 2
# 76 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h" 1
# 138 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h"
#pragma section ".text" ax
# 77 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h" 2
extern const boolean AESM_bPowerOffModeInhC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h" 1
# 176 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_MemMap.h"
#pragma section
# 80 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 87 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h" 2
extern uint16 AESM_EsmMode;
extern boolean AESM_bAfterrunFin;
extern boolean AESM_bAfterrunReq;
extern boolean AESM_bCallAppliOn;
extern boolean AESM_bMcuEnaReq;
extern boolean AESM_bPwrDnReadyFlg;
extern boolean AESM_bPwrLNfClrFltFinsh;
extern uint16 AESM_OpFtState;
extern uint16 AESM_OpNfState;
extern uint16 AESM_PwrLFtState;
extern uint16 AESM_PwrLNfState;
extern uint16 AESM_u16OpDelayTime;
extern uint16 AESM_u16OpTimeout;
extern uint16 AESM_StpIIFtState;
extern uint16 AESM_StpIINfState;
extern uint16 AESM_StpIState;
extern uint16 AESM_u16AfterrunCnt;
extern uint16 AESM_u16CmdReq;
extern uint16 AESM_u16CmdReqNm1;
extern uint16 AESM_u16CmdRes;
extern uint8 AESM_u8RestartDelayCnt;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h" 2





void AESM_vidInit(void);
void AESM_vidInitFt(void);
void AESM_vidInitNf(void);
void AESM_vidStfOp(void);
void AESM_vidStfOpFt(void);
void AESM_vidStfOpNf(void);
void AESM_vidStfPwrL(void);
void AESM_vidStfPwrLFt(void);
void AESM_vidStfPwrLNf(void);
void AESM_vidStfStpI(void);
void AESM_vidStfStpII(void);
void AESM_vidStfStpIIFt(void);
void AESM_vidStfStpIINf(void);
# 2 ".\\output\\inc/ASTFSRV.h" 2
# 37 "bswcdd\\ESM\\AESM\\aesmsrv.h" 2
# 78 "bswcdd\\ESM\\AESM\\aesmsrv.h"
void AESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq);
void AESMSRV_vidSetCmdRes(uint16 CmdMask);
void AESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq);
void AESMSRV_vidSetAfterrunReq(boolean bAfterrunReq);
void AESMSRV_vidSetAfterrunFin(boolean bAfterrunFin);




boolean AESMSRV_bGetCmdReq(uint16 CmdMask);
boolean AESMSRV_bGetCmdReqNm1(uint16 CmdMask);
boolean AESMSRV_bGetCmdRes(uint16 CmdMask);
boolean AESMSRV_bGetPoDnReadyFlg(void);
boolean AESMSRV_bGetPwrLNfClrFltFinsh(void);




uint8 AESMSRV_u8GetCallAppli(void);
uint8 AESMSRV_u8GetAEsmMode(void);
uint8 AESMSRV_u8GetAEsmEcuState(void);




void AESMSRV_vidVSIInit(void);
# 57 "bswcdd\\ESM\\AESM\\aesm_1.c" 2
# 1 ".\\output\\inc/ASTFSRV.h" 1
# 58 "bswcdd\\ESM\\AESM\\aesm_1.c" 2
# 1 ".\\output\\inc/ASTFSRV_L.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV_L.h" 1
# 2 ".\\output\\inc/ASTFSRV_L.h" 2
# 59 "bswcdd\\ESM\\AESM\\aesm_1.c" 2
# 1 ".\\output\\inc/resbsl.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h" 1
# 44 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_L.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_L.h" 2
# 45 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h" 2
# 53 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 1
# 119 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 120 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h" 2
extern const boolean RES_bGenerateSyncPosC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 1
# 124 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 125 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 2
# 57 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h" 2


# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 1
# 108 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 109 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 2
# 60 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h" 2
extern const uint8 RES_u8ExcitDutyPercentC;
extern const uint8 RES_u8SyncDutyPercentC;
extern const uint8 RES_u8SyncDutyPercent2C;

# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 1
# 113 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 114 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h" 2


# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 1
# 97 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 98 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 2
# 68 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h" 2
extern const uint16 RES_u16ExcitDelayC;
extern const uint16 RES_u16SyncDelayC;
extern const uint16 RES_u16SyncDelay2C;
extern const uint16 RES_u16VSICkreqPeriodDefC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 1
# 102 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 103 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 2
# 74 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES.h" 2
# 46 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_Cfg.h" 1
# 27 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_Cfg.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 28 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_Cfg.h" 2
# 47 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h" 2






# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 1
# 54 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h" 2

extern uint16 RES_u16VSICkreqPeriodCalib;
extern uint16 RES_u16SyncDelayCalib;
extern uint16 RES_u16SyncDelayCalib2;
extern uint16 RES_u16ExcitDelayCalib;
extern uint8 RES_u8ExcitDutyPercentCalib;
extern uint8 RES_u8SyncDutyPercentCalib;
extern uint8 RES_u8SyncDutyPercentCalib2;
extern uint8 RES_bGenerateSyncPosCalib;


# 1 ".\\output\\inc/..\\..\\bswcdd\\RES\\RES_MemMap.h" 1
# 66 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h" 2
# 296 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h"
void RESBSL_vidInit(void);
void RESBSL_vidStopExcitation(void);
void RESBSL_vidConfig(uint16 CkreqPeriod);
void RESBSL_vidCheckCalibChange(void);
void GRESBSL_vidConfig(uint16 CkreqPeriod);
# 2 ".\\output\\inc/resbsl.h" 2
# 60 "bswcdd\\ESM\\AESM\\aesm_1.c" 2

# 1 ".\\output\\inc/TPPC.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 1
# 41 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 42 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 2
# 1 ".\\output\\inc/TPPC_DeviceCfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h" 1
# 36 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
enum {
   eTPPC_DEV_GTM_START_INDEX = 0,
   eTPPC_DEV_GTM_ACM_INDEX = eTPPC_DEV_GTM_START_INDEX,
   eTPPC_DEV_GTM_EPS_INDEX,
   eTPPC_DEV_GTM_END_INDEX,

   eTPPC_DEV_MAX_NUM = eTPPC_DEV_GTM_END_INDEX
};
# 2 ".\\output\\inc/TPPC_DeviceCfg.h" 2
# 43 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 2
# 60 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 90 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 591 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section ".cpu3_psram" axwc3
# 2 ".\\output\\inc/CddMemMap.h" 2
# 91 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 2
extern void TPPCDev_vidInit(const uint8 ku8DevID);
extern void TPPCDev_vidAscEntry(const uint8 ku8DevID);
extern void TPPCDev_vidStartTimer(const uint8 ku8DevID);
extern void TPPCDev_vidStopPwmOutput(const uint8 ku8DevID);
extern void TPPCDev_vidMotorStateMng(const uint8 ku8DevID);
extern void TPPCDev_vidSetPwmFreq(const uint8 ku8DevID, float32 f32Freq);
extern void TPPCDev_vidSetPwmBcDuty(const uint8 ku8DevID, float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);
extern void TPPCDev_vidSetPwmModReq(const uint8 ku8DevID, const uint16 u16PwmMod);
extern void TPPCDev_vidSetClrFaultReq(const uint8 ku8DevID, const boolean bClrFaultReq);
extern void TPPCDev_vidSetMotorSpdRdyFlg(const uint8 ku8DevID, const boolean bMotorSpdRdy);
extern uint8 TPPCDev_u8GetPwmState(const uint8 ku8DevID);
extern boolean TPPCDev_bGetPwmRunFlag(const uint8 ku8DevID);
extern boolean TPPCDev_bGetHwFaultIgbt(const uint8 ku8DevID);
extern boolean TPPCDev_bGetHwFaultIgbtL(const uint8 ku8DevID);
extern boolean TPPCDev_bGetHwFaultIgbtH(const uint8 ku8DevID);
extern boolean TPPCDev_bGetAscisClose(const uint8 ku8DevID);

# 1 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 1
# 95 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h"
# 1 ".\\output\\inc/CddMemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h" 1
# 594 ".\\output\\inc/..\\..\\bswcdd\\CddMemMap.h"
#pragma section
# 2 ".\\output\\inc/CddMemMap.h" 2
# 96 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC_MemMap.h" 2
# 79 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h" 2
# 2 ".\\output\\inc/TPPC.h" 2
# 62 "bswcdd\\ESM\\AESM\\aesm_1.c" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 68 "bswcdd\\ESM\\AESM\\aesm_1.c" 2
# 78 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidInit(void)
{
   AESM_StpIState = 1;

   AESM_StpIINfState = 1;
   AESM_StpIIFtState = 1;

   AESM_OpNfState = 1;
   AESM_OpFtState = 1;

   AESM_PwrLNfState = 1;
   AESM_PwrLFtState = 1;

   AESM_u16CmdReq = 0;
   AESM_u16CmdReqNm1 = 0;
   AESM_u16CmdRes = 0;

   AESM_EsmMode = 1;
   AESM_bCallAppliOn = (0 != 0);
   AESM_bPwrLNfClrFltFinsh = (0 != 0);
   AESM_bPwrDnReadyFlg = (0 != 0);
   AESM_u8PwrLNfStep = 0;
   AESM_u8PwrOffTim = 0;
   AESM_u8AllowPwrDnDelay = 0;
   AESM_bMcuEnaReq = (0 != 0);
   AESM_bAfterrunReq = (0 != 0);
   AESM_bAfterrunFin = (0 != 0);
   AESM_u16AfterrunCnt = 0;
   AESM_u8RestartDelayCnt = 0;
   AESM_u16OpDelayTime = 0;
   AESM_u16OpTimeout = 0;

   AESMSRV_vidVSIInit();
}
# 122 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidInitNf(void)
{
}
# 135 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidInitFt(void)
{

}
# 149 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfStpI(void)
{
   switch (AESM_StpIState)
   {
      case 1:






         if (AESMSRV_bGetCmdReq((uint16)(1 << 1)) != 0)
         {



            AESMSRV_vidSetCmdRes((uint16)(1 << 1));
            AESM_StpIState = 16384;
         }
         break;

      case 16384:





         break;

      default:
         AESM_StpIState = 1;
         break;
   }
}
# 193 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfStpII(void)
{
   switch (AESM_EsmMode)
   {
      case 1:
         AESM_vidStfStpIINf();
         break;

      case 4:
         AESM_vidStfStpIIFt();
         break;

      default:
         break;
   }
}
# 219 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfStpIINf(void)
{
   switch (AESM_StpIINfState)
   {
      case 1:
# 232 "bswcdd\\ESM\\AESM\\aesm_1.c"
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x05);

         AESM_vidInitNf();
         AESM_StpIINfState = 2;
         break;

      case 2:




         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x00);
         AESM_StpIINfState = 4;
         break;

      case 4:



         AESM_bCallAppliOn = 1;
         AESM_StpIINfState = 16384;
         break;

      case 16384:





         break;

      default:
         AESM_StpIINfState = 1;
         break;
   }
}
# 278 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfStpIIFt(void)
{


   switch (AESM_StpIIFtState)
   {
      case 1:







         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x06);

         AESM_vidInitFt();
         AESM_StpIIFtState = 2;
         break;

      case 2:



         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x00);
         AESM_StpIIFtState = 4;
         break;

      case 4:





         AESM_bCallAppliOn = 1;
         AESM_StpIIFtState = 16384;
         break;

      case 16384:





         break;

      default:
         AESM_StpIIFtState = 1;
         break;
   }
}
# 339 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfOp(void)
{
   switch (AESM_EsmMode)
   {
      case 1:
         AESM_vidStfOpNf();
         break;

      case 4:
         AESM_vidStfOpFt();
         break;

      default:
         break;
   }
}
# 365 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfOpNf(void)
{
   switch (AESM_OpNfState)
   {
      case 1:






         if (AESMSRV_bGetCmdReq((uint16)(1 << 10)) != 0)
         {
            AESM_OpNfState = 4;
         }
         else
         {
            if (AESMSRV_bGetCmdReq((uint16)(1 << 9)) != 0)
            {
               AESM_OpNfState = 8;
            }
            else
            {
               if (AESMSRV_bGetCmdReq((uint16)(1 << 3)) != 0)
               {



                  AESM_EsmMode = 4;
                  AESM_OpNfState = 8192;
                  (void)AESMSRV_bGetCmdReq((uint16)(1 << 4));
               }
               else
               {
                  if (AESMSRV_bGetCmdReq((uint16)(1 << 2)) != 0)
                  {
                     AESM_bPwrLNfClrFltFinsh = (0 != 0);
                     AESM_OpNfState = 16384;
                  }
               }
            }
         }



         if (AESMSRV_bGetCmdReqNm1((uint16)(1 << 10)) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == (uint8)0x00)
            {
               AESMSRV_vidSetCmdRes((uint16)(1 << 10));
            }
         }
         if (AESMSRV_bGetCmdReqNm1((uint16)(1 << 9)) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == (uint8)0x03)
            {
               AESMSRV_vidSetCmdRes((uint16)(1 << 9));
            }
         }
         if (AESMSRV_bGetCmdReqNm1((uint16)(1 << 3)) != 0)
         {
            AESMSRV_vidSetCmdRes((uint16)(1 << 3));
         }
         if (AESMSRV_bGetCmdReqNm1((uint16)(1 << 2)) != 0)
         {
            AESMSRV_vidSetCmdRes((uint16)(1 << 2));
         }
         break;

      case 4:



         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x00);
         AESM_OpNfState = 1;
         break;

      case 8:



         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x03);
         AESM_OpNfState = 1;
         break;

      case 8192:





         break;

      case 16384:





         break;

      default:
         AESM_OpNfState = 1;
         break;
   }
}
# 481 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfOpFt(void)
{
   switch (AESM_OpFtState)
   {
      case 1:






         if (AESMSRV_bGetCmdReq((uint16)(1 << 8)) != 0)
         {
            AESM_OpFtState = 2;
         }
         else
         {
            if (AESMSRV_bGetCmdReq((uint16)(1 << 10)) != 0)
            {
               AESM_OpFtState = 4;
            }
            else
            {
               if (AESMSRV_bGetCmdReq((uint16)(1 << 9)) != 0)
               {
                  AESM_OpFtState = 8;
               }
               else
               {
                  if (AESMSRV_bGetCmdReq((uint16)(1 << 4)) != 0)
                  {
                     AESM_OpFtState = 4096;
                  }
               }
            }
         }



         if (AESMSRV_bGetCmdReqNm1((uint16)(1 << 8)) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == (uint8)0x01)
            {
               AESMSRV_vidSetCmdRes((uint16)(1 << 8));
            }
         }
         if (AESMSRV_bGetCmdReqNm1((uint16)(1 << 10)) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == (uint8)0x00)
            {
               AESMSRV_vidSetCmdRes((uint16)(1 << 10));
            }
         }
         if (AESMSRV_bGetCmdReqNm1((uint16)(1 << 9)) != 0)
         {
            if (TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX) == (uint8)0x03)
            {
               AESMSRV_vidSetCmdRes((uint16)(1 << 9));
            }
         }
         if (AESMSRV_bGetCmdReqNm1((uint16)(1 << 4)) != 0)
         {
            AESMSRV_vidSetCmdRes((uint16)(1 << 4));
         }
         break;

      case 2:



         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x01);
         AESM_OpFtState = 1;
         break;

      case 4:



         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x00);
         AESM_OpFtState = 1;
         break;

      case 8:



         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x03);
         AESM_OpFtState = 1;
         break;

      case 4096:



         AESM_vidStfPwrLFt();
         break;

      default:
         AESM_OpFtState = 1;
         break;
   }
}
# 593 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfPwrL(void)
{
   switch (AESM_EsmMode)
   {
      case 1:
         AESM_vidStfPwrLNf();
         break;

      default:
         break;
   }
}
# 615 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfPwrLNf(void)
{
   boolean bLocBswEndOp = (0 != 0);
   boolean bLocKL15Sts = (0 != 0);

   if((0 != 0) != AESM_bAfterrunReq)
   {
      AESM_u16AfterrunCnt++;
   }
   else
   {

   }

   switch (AESM_PwrLNfState)
   {
      case 1:





         AESM_bCallAppliOn = 0;
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x00);


         AESM_PwrLNfState = 2;
         AESM_u8PwrLNfStep = 0;
         AESM_u8AllowPwrDnDelay = 0;

         break;

      case 2:



         if (0 == AESM_u8PwrLNfStep)
         {
            bLocBswEndOp = (1 != 0);
            if ( ((0 != 0) != bLocBswEndOp) ||
                  ( (AESM_u16PowerLatchTempo < 10) && (AESM_u16PowerLatchTempo > 0) )
                )
            {
               AESM_u8PwrLNfStep = 1;
            }
         }
         else if (1 == AESM_u8PwrLNfStep)
         {
             AESM_bPwrDnReadyFlg = (1 != 0);

             if (AESM_u8AllowPwrDnDelay < 10)
             {
                AESM_u8AllowPwrDnDelay++;
             }
             else
             {
                AESM_u16AfterrunCnt = 0;
                AESM_u8PwrLNfStep = 2;
             }
         }
         else
         {
            if (AESM_u8AllowPwrDnDelay < 20)
            {
               AESM_u8AllowPwrDnDelay++;
            }
            else
            {
               if(AESM_u16OpDelayTime < 5)
               {
                  AESM_u16OpDelayTime++;
               }
               else
               {
                  AESM_u16OpDelayTime = 0;
                  AESM_PwrLNfState = 16384;
               }
            }
         }
         break;

      case 8192:





         break;

      case 16384:




         break;

      default:
         AESM_PwrLNfState = 1;
         break;
   }
}
# 726 "bswcdd\\ESM\\AESM\\aesm_1.c"
void AESM_vidStfPwrLFt(void)
{
   switch (AESM_PwrLFtState)
   {
      case 1:




         AESM_bCallAppliOn = 0;
         TPPCDev_vidSetPwmModReq(eTPPC_DEV_GTM_ACM_INDEX, (uint8)0x00);
         AESM_PwrLFtState = 2;
         break;

      case 2:



         AESM_EsmMode = 1;
         AESM_PwrLFtState = 16384;
         break;

      case 16384:





         break;

      default:
         AESM_PwrLFtState = 1;
         break;
   }
}


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 764 "bswcdd\\ESM\\AESM\\aesm_1.c" 2
