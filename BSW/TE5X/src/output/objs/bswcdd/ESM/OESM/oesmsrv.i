# 1 "bswcdd\\ESM\\OESM\\oesmsrv.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\ESM\\OESM\\oesmsrv.c"
# 43 "bswcdd\\ESM\\OESM\\oesmsrv.c"
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
# 44 "bswcdd\\ESM\\OESM\\oesmsrv.c" 2

# 1 "bswcdd\\ESM\\OESM\\OESM.h" 1
# 37 "bswcdd\\ESM\\OESM\\OESM.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\ESM\\OESM\\OESM.h" 2
# 58 "bswcdd\\ESM\\OESM\\OESM.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 59 "bswcdd\\ESM\\OESM\\OESM.h" 2
extern uint8 OESM_EcuState;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 62 "bswcdd\\ESM\\OESM\\OESM.h" 2
# 46 "bswcdd\\ESM\\OESM\\oesmsrv.c" 2
# 1 "bswcdd\\ESM\\OESM\\OESM_L.h" 1
# 37 "bswcdd\\ESM\\OESM\\OESM_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\ESM\\OESM\\OESM_L.h" 2
# 53 "bswcdd\\ESM\\OESM\\OESM_L.h"
# 1 "bswcdd\\ESM\\OESM\\OESM_MemMap.h" 1
# 54 "bswcdd\\ESM\\OESM\\OESM_L.h" 2
extern const uint16 OESM_u16PowerLatchTempoC;
extern const uint8 OESM_u8RestartDelayCntC;

# 1 "bswcdd\\ESM\\OESM\\OESM_MemMap.h" 1
# 58 "bswcdd\\ESM\\OESM\\OESM_L.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 65 "bswcdd\\ESM\\OESM\\OESM_L.h" 2
extern uint16 OESM_u16PowerLatchTempo;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 68 "bswcdd\\ESM\\OESM\\OESM_L.h" 2
# 47 "bswcdd\\ESM\\OESM\\oesmsrv.c" 2

# 1 "bswcdd\\ESM\\OESM\\oesmsrv.h" 1
# 36 "bswcdd\\ESM\\OESM\\oesmsrv.h"
# 1 ".\\output\\inc/OSTFSRV.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h" 1
# 26 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 27 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_i.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_i.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 31 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_i.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2
# 53 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2
extern const uint16 OESM_ku16AfterrunToutCntC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 2
# 57 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 64 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2
extern uint8 OESM_u8AllowPwrDnDelay;
extern uint8 OESM_u8PwrLNfStep;
extern uint8 OESM_u8PwrOffTim;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_L.h" 2
# 38 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h" 1
# 40 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2


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
# 43 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2


# 1 ".\\output\\inc/OESM.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM.h" 1
# 2 ".\\output\\inc/OESM.h" 2
# 46 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2
# 1 ".\\output\\inc/OESM_DAT.H" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 1
# 29 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 1 ".\\output\\inc/ostfsrv_Includes.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 1
# 2 ".\\output\\inc/ostfsrv_Includes.h" 2
# 31 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 1 ".\\output\\inc/ostfsrv_types.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_types.h" 1
# 26 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 27 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_types.h" 2





typedef void (*OSTFSRV_tpfFunctionPointerType) (void);
# 2 ".\\output\\inc/ostfsrv_types.h" 2
# 32 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_l.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 192 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 193 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2

void OESM_vidOnOESM_EV0(void);
void OESM_vidOnOESM_EV1(void);

void OESM_vidExecOutEvent(uint16 bfCarrier);

void OESM_vidNoAction(void);

void OESM_vidEntryOESM_ST0(void);
void OESM_vidEntryOESM_ST1(void);
void OESM_vidEntryOESM_ST2(void);
void OESM_vidEntryOESM_ST3(void);
void OESM_vidEntryOESM_ST4(void);


void OESM_vidDuringOESM_ST0OnOESM_EV0(void);
void OESM_vidDuringOESM_ST0OnOESM_EV1(void);

void OESM_vidDuringOESM_ST1OnOESM_EV0(void);
void OESM_vidDuringOESM_ST1OnOESM_EV1(void);

void OESM_vidDuringOESM_ST2OnOESM_EV0(void);
void OESM_vidDuringOESM_ST2OnOESM_EV1(void);

void OESM_vidDuringOESM_ST3OnOESM_EV0(void);
void OESM_vidDuringOESM_ST3OnOESM_EV1(void);

void OESM_vidDuringOESM_ST4OnOESM_EV0(void);
void OESM_vidDuringOESM_ST4OnOESM_EV1(void);



void OESM_vidFromOESM_ST0OnOESM_EV0(void);
void OESM_vidFromOESM_ST1OnOESM_EV0(void);
void OESM_vidFromOESM_ST2OnOESM_EV0(void);
void OESM_vidFromOESM_ST3OnOESM_EV0(void);

void OESM_vidFromOESM_ST1OnOESM_EV1(void);
void OESM_vidFromOESM_ST2OnOESM_EV1(void);
void OESM_vidFromOESM_ST3OnOESM_EV1(void);
void OESM_vidFromOESM_ST4OnOESM_EV1(void);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 238 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 242 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2

extern uint16 OESM_bfOutEventCarrier;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 247 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 251 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2

extern OSTFSRV_tpfFunctionPointerType OESM_pfTransOESM_STF0OnOESM_EV0Ptr;

extern OSTFSRV_tpfFunctionPointerType OESM_pfTransOESM_STF0OnOESM_EV1Ptr;

extern OSTFSRV_tpfFunctionPointerType OESM_pfDuringOESM_STF0OnOESM_EV0Ptr;

extern OSTFSRV_tpfFunctionPointerType OESM_pfDuringOESM_STF0OnOESM_EV1Ptr;




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 264 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h" 2
# 2 ".\\output\\inc/OESM_DAT.H" 2
# 47 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2
# 1 ".\\output\\inc/OESM_TRA.H" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h" 1
# 29 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\oesm_dat.h" 1
# 31 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h" 2
# 1 ".\\output\\inc/ostfsrv_Includes.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_TRA.h" 2
# 2 ".\\output\\inc/OESM_TRA.H" 2
# 48 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_Includes.h" 2
# 32 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_i.h" 2
# 28 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\ostfsrv_e.h" 2
# 39 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2
# 76 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 1
# 138 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h"
#pragma section ".text" ax
# 77 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2
extern const boolean OESM_bPowerOffModeInhC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h" 1
# 176 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV_MemMap.h"
#pragma section
# 80 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 87 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2
extern uint16 OESM_EsmMode;
extern boolean OESM_bAfterrunFin;
extern boolean OESM_bAfterrunReq;
extern boolean OESM_bCallAppliOn;
extern boolean OESM_bMcuEnaReq;
extern boolean OESM_bPwrDnReadyFlg;
extern boolean OESM_bPwrLNfClrFltFinsh;
extern uint16 OESM_OpFtState;
extern uint16 OESM_OpNfState;
extern uint16 OESM_PwrLFtState;
extern uint16 OESM_PwrLNfState;
extern uint16 OESM_u16OpDelayTime;
extern uint16 OESM_u16OpTimeout;
extern uint16 OESM_StpIIFtState;
extern uint16 OESM_StpIINfState;
extern uint16 OESM_StpIState;
extern uint16 OESM_u16AfterrunCnt;
extern uint16 OESM_u16CmdReq;
extern uint16 OESM_u16CmdReqNm1;
extern uint16 OESM_u16CmdRes;
extern uint8 OESM_u8RestartDelayCnt;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h" 2





void OESM_vidInit(void);
void OESM_vidInitFt(void);
void OESM_vidInitNf(void);
void OESM_vidStfOp(void);
void OESM_vidStfOpFt(void);
void OESM_vidStfOpNf(void);
void OESM_vidStfPwrL(void);
void OESM_vidStfPwrLFt(void);
void OESM_vidStfPwrLNf(void);
void OESM_vidStfStpI(void);
void OESM_vidStfStpII(void);
void OESM_vidStfStpIIFt(void);
void OESM_vidStfStpIINf(void);
# 2 ".\\output\\inc/OSTFSRV.h" 2
# 37 "bswcdd\\ESM\\OESM\\oesmsrv.h" 2
# 78 "bswcdd\\ESM\\OESM\\oesmsrv.h"
void OESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq);
void OESMSRV_vidSetCmdRes(uint16 CmdMask);
void OESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq);
void OESMSRV_vidSetAfterrunReq(boolean bAfterrunReq);
void OESMSRV_vidSetAfterrunFin(boolean bAfterrunFin);




boolean OESMSRV_bGetCmdReq(uint16 CmdMask);
boolean OESMSRV_bGetCmdReqNm1(uint16 CmdMask);
boolean OESMSRV_bGetCmdRes(uint16 CmdMask);
boolean OESMSRV_bGetPoDnReadyFlg(void);
boolean OESMSRV_bGetPwrLNfClrFltFinsh(void);




uint8 OESMSRV_u8GetCallAppli(void);
uint8 OESMSRV_u8GetOEsmMode(void);
uint8 OESMSRV_u8GetOEsmEcuState(void);




void OESMSRV_vidVSIInit(void);
# 49 "bswcdd\\ESM\\OESM\\oesmsrv.c" 2
# 1 ".\\output\\inc/OSTFSRV.h" 1
# 50 "bswcdd\\ESM\\OESM\\oesmsrv.c" 2
# 61 "bswcdd\\ESM\\OESM\\oesmsrv.c"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 62 "bswcdd\\ESM\\OESM\\oesmsrv.c" 2
# 75 "bswcdd\\ESM\\OESM\\oesmsrv.c"
void OESMSRV_vidSetCmdReq(uint16 CmdMask, boolean CmdReq)
{
   if (CmdReq != 0)
   {
      if ((OESM_u16CmdReqNm1 & CmdMask) == 0)
      {
         OESM_u16CmdReq |= CmdMask;
         OESM_u16CmdRes &= (uint16)~CmdMask;
         OESM_u16CmdReqNm1 |= (uint16)CmdMask;
      }
   }
   else
   {
      OESM_u16CmdReqNm1 &= (uint16)~CmdMask;
   }
}
# 101 "bswcdd\\ESM\\OESM\\oesmsrv.c"
void OESMSRV_vidSetCmdRes(uint16 CmdMask)
{
   OESM_u16CmdRes |= CmdMask;
}
# 118 "bswcdd\\ESM\\OESM\\oesmsrv.c"
boolean OESMSRV_bGetCmdReq(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((OESM_u16CmdReq & CmdMask) == CmdMask)
   {
      bLocalValue = 1;
      OESM_u16CmdReq &= (uint16)~CmdMask;
   }
   else
   {
      bLocalValue = 0;
   }
   return(bLocalValue);
}
# 143 "bswcdd\\ESM\\OESM\\oesmsrv.c"
boolean OESMSRV_bGetCmdReqNm1(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((OESM_u16CmdReqNm1 & CmdMask) == CmdMask)
   {
      bLocalValue = 1;
   }
   else
   {
      bLocalValue = 0;
   }
   return(bLocalValue);
}
# 167 "bswcdd\\ESM\\OESM\\oesmsrv.c"
boolean OESMSRV_bGetCmdRes(uint16 CmdMask)
{
   boolean bLocalValue;

   if ((OESM_u16CmdRes & CmdMask) == CmdMask)
   {
      bLocalValue = 1;
   }
   else
   {
      bLocalValue = 0;
   }
   return(bLocalValue);
}
# 194 "bswcdd\\ESM\\OESM\\oesmsrv.c"
uint8 OESMSRV_u8GetCallAppli(void)
{
   uint8 u8LocalMode;

   if (OESM_bCallAppliOn != 0)
   {
      u8LocalMode = (uint8)OESM_EsmMode;
   }
   else
   {
      u8LocalMode = 0;
   }
   return(u8LocalMode);
}
# 218 "bswcdd\\ESM\\OESM\\oesmsrv.c"
uint8 OESMSRV_u8GetOEsmMode(void)
{
   uint8 u8LocalMode;

   u8LocalMode = (uint8)OESM_EsmMode;
   return(u8LocalMode);
}
# 235 "bswcdd\\ESM\\OESM\\oesmsrv.c"
uint8 OESMSRV_u8GetOEsmEcuState(void)
{
   uint8 u8LocalState;

   u8LocalState = OESM_EcuState;
   return(u8LocalState);
}
# 255 "bswcdd\\ESM\\OESM\\oesmsrv.c"
void OESMSRV_vidVSIInit(void)
{
}
# 268 "bswcdd\\ESM\\OESM\\oesmsrv.c"
boolean OESMSRV_bGetPoDnReadyFlg(void)
{
   return (OESM_bPwrDnReadyFlg);
}
# 282 "bswcdd\\ESM\\OESM\\oesmsrv.c"
boolean OESMSRV_bGetPwrLNfClrFltFinsh(void)
{
   return (OESM_bPwrLNfClrFltFinsh);
}
# 294 "bswcdd\\ESM\\OESM\\oesmsrv.c"
void OESMSRV_vidSetMcuEnaReq(const uint8 u8McuEnaReq)
{
   if (0 != u8McuEnaReq)
   {
      OESM_bMcuEnaReq = (1 != 0);
   }
   else
   {
      OESM_bMcuEnaReq = (0 != 0);
   }
}

void OESMSRV_vidSetAfterrunReq(boolean bAfterrunReq)
{
   if(0 != bAfterrunReq)
   {
      OESM_bAfterrunReq = (1 != 0);
   }
   else
   {
      OESM_bAfterrunReq = (0 != 0);
   }
}

void OESMSRV_vidSetAfterrunFin(boolean bAfterrunFin)
{
   if(0 != bAfterrunFin)
   {
      OESM_bAfterrunFin = (1 != 0);
   }
   else
   {
      OESM_bAfterrunFin = (0 != 0);
   }
}


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 332 "bswcdd\\ESM\\OESM\\oesmsrv.c" 2
