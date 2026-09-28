# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
# 25 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
# 1 ".\\output\\inc/iohal.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
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
# 26 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h" 1
# 37 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h" 2
# 68 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
extern boolean TLE9180_bIsModeReq;
extern boolean TLE9180_bIsInIdleMode;
extern boolean TLE9180_bIsInCfgLockMode;
extern boolean TLE9180_bDrvOverCurrent;
extern boolean TLE9180_bDrvOverTemp;
extern boolean TLE9180_bDrvOverVoltage;
extern boolean TLE9180_bDrvUnderVoltage;
extern boolean TLE9180_bErrorPinLevel;
extern boolean TLE9180_bInitFailFlg;
extern boolean TLE9180_bPhaseShortHigh;
extern boolean TLE9180_bPhaseShortLow;
extern boolean TLE9180_bPhsOverVolt;
extern boolean TLE9180_bReadErrInfoFlg;
extern boolean TLE9180_bTestReadReg;
extern boolean TLE9180_bTestWriteReg;
extern uint32 TLE9180_u32ReinitTotalTime;
extern uint32 TLE9180_u32ReinitEndTime;
extern uint32 TLE9180_u32ReinitStartTime;
extern float32 TLE9180_af32ReadPhsTempPhys[( 6 )];
extern float32 TLE9180_f32MaxPhsTempPhys;
extern float32 TLE9180_f32BatteryVoltage;
extern uint32 TLE9180_au32SpiReadFrame[( 30 )];
extern uint32 TLE9180_au32SpiTstReadFrame[( 30 )];
extern uint32 TLE9180_au32SpiTstWriteFrame[( 30 )];
extern uint32 TLE9180_au32ErrRegsReadFrame[( 30 )];
extern uint32 TLE9180_au32SpiWriteFrame[( 30 )];
extern uint32 TLE9180_au32ICInitSpiFrame[( 30 )];
extern uint32 TLE9180_au32StateRegs[( 30 )];
extern uint8 TLE9180_au8CfgRegister[( 30 )];
extern uint8 TLE9180_au8CfgRegReadBk[( 30 )];
extern uint8 TLE9180_au8ReadPhsTemp[( 6 )];
extern uint8 TLE9180_au8ReadRegs[( 30 )];
extern uint8 TLE9180_u8ReCfgCnt;
extern uint8 TLE9180_u8InitFailedCnt;
extern uint8 TLE9180_u8ErrRecoverCnt;
extern uint8 TLE9180_u8Mode;
extern uint8 TLE9180_u8RdRegTimCnt;
extern uint8 TLE9180_u8ReadRegAddr;
extern uint8 TLE9180_u8SelfTestStep;
extern uint8 TLE9180_u8SpiTxFrameMaxNb;
extern uint8 TLE9180_u8WriteData;
extern uint8 TLE9180_u8WriteRegAddr;
extern uint16 TLE9180_u16EnaResetTime;
extern uint16 TLE9180_u16ErrPinChkCnt;




void TLE9180_vidInit(void);
void TLE9180_vidMainFunction(void);
boolean TLE9180_bIsWorkModeNormal(void);
# 27 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 1
# 40 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h"
# 1 ".\\output\\inc/IfxStm_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
typedef struct _Ifx_STM_ACCEN0_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_STM_ACCEN0_Bits;


typedef struct _Ifx_STM_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_STM_ACCEN1_Bits;


typedef struct _Ifx_STM_CAP_Bits
{
    Ifx_UReg_32Bit STMCAP_63_32:32;
} Ifx_STM_CAP_Bits;


typedef struct _Ifx_STM_CAPSV_Bits
{
    Ifx_UReg_32Bit STMCAP_63_32:32;
} Ifx_STM_CAPSV_Bits;


typedef struct _Ifx_STM_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_STM_CLC_Bits;


typedef struct _Ifx_STM_CMCON_Bits
{
    Ifx_UReg_32Bit MSIZE0:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit MSTART0:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit MSIZE1:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit MSTART1:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_STM_CMCON_Bits;


typedef struct _Ifx_STM_CMP_Bits
{
    Ifx_UReg_32Bit CMPVAL:32;
} Ifx_STM_CMP_Bits;


typedef struct _Ifx_STM_ICR_Bits
{
    Ifx_UReg_32Bit CMP0EN:1;
    Ifx_UReg_32Bit CMP0IR:1;
    Ifx_UReg_32Bit CMP0OS:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit CMP1EN:1;
    Ifx_UReg_32Bit CMP1IR:1;
    Ifx_UReg_32Bit CMP1OS:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_STM_ICR_Bits;


typedef struct _Ifx_STM_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUM:16;
} Ifx_STM_ID_Bits;


typedef struct _Ifx_STM_ISCR_Bits
{
    Ifx_UReg_32Bit CMP0IRR:1;
    Ifx_UReg_32Bit CMP0IRS:1;
    Ifx_UReg_32Bit CMP1IRR:1;
    Ifx_UReg_32Bit CMP1IRS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_STM_ISCR_Bits;


typedef struct _Ifx_STM_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_STM_KRST0_Bits;


typedef struct _Ifx_STM_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_STM_KRST1_Bits;


typedef struct _Ifx_STM_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_STM_KRSTCLR_Bits;


typedef struct _Ifx_STM_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit reserved_3:21;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_STM_OCS_Bits;


typedef struct _Ifx_STM_TIM0_Bits
{
    Ifx_UReg_32Bit STM_31_0:32;
} Ifx_STM_TIM0_Bits;


typedef struct _Ifx_STM_TIM0SV_Bits
{
    Ifx_UReg_32Bit STM_31_0:32;
} Ifx_STM_TIM0SV_Bits;


typedef struct _Ifx_STM_TIM1_Bits
{
    Ifx_UReg_32Bit STM_35_4:32;
} Ifx_STM_TIM1_Bits;


typedef struct _Ifx_STM_TIM2_Bits
{
    Ifx_UReg_32Bit STM_39_8:32;
} Ifx_STM_TIM2_Bits;


typedef struct _Ifx_STM_TIM3_Bits
{
    Ifx_UReg_32Bit STM_43_12:32;
} Ifx_STM_TIM3_Bits;


typedef struct _Ifx_STM_TIM4_Bits
{
    Ifx_UReg_32Bit STM_47_16:32;
} Ifx_STM_TIM4_Bits;


typedef struct _Ifx_STM_TIM5_Bits
{
    Ifx_UReg_32Bit STM_51_20:32;
} Ifx_STM_TIM5_Bits;


typedef struct _Ifx_STM_TIM6_Bits
{
    Ifx_UReg_32Bit STM_63_32:32;
} Ifx_STM_TIM6_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ACCEN0_Bits B;
} Ifx_STM_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ACCEN1_Bits B;
} Ifx_STM_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CAP_Bits B;
} Ifx_STM_CAP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CAPSV_Bits B;
} Ifx_STM_CAPSV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CLC_Bits B;
} Ifx_STM_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CMCON_Bits B;
} Ifx_STM_CMCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CMP_Bits B;
} Ifx_STM_CMP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ICR_Bits B;
} Ifx_STM_ICR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ID_Bits B;
} Ifx_STM_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ISCR_Bits B;
} Ifx_STM_ISCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_KRST0_Bits B;
} Ifx_STM_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_KRST1_Bits B;
} Ifx_STM_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_KRSTCLR_Bits B;
} Ifx_STM_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_OCS_Bits B;
} Ifx_STM_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM0_Bits B;
} Ifx_STM_TIM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM0SV_Bits B;
} Ifx_STM_TIM0SV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM1_Bits B;
} Ifx_STM_TIM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM2_Bits B;
} Ifx_STM_TIM2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM3_Bits B;
} Ifx_STM_TIM3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM4_Bits B;
} Ifx_STM_TIM4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM5_Bits B;
} Ifx_STM_TIM5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM6_Bits B;
} Ifx_STM_TIM6;
# 454 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
typedef volatile struct _Ifx_STM
{
       Ifx_STM_CLC CLC;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_STM_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_STM_TIM0 TIM0;
       Ifx_STM_TIM1 TIM1;
       Ifx_STM_TIM2 TIM2;
       Ifx_STM_TIM3 TIM3;
       Ifx_STM_TIM4 TIM4;
       Ifx_STM_TIM5 TIM5;
       Ifx_STM_TIM6 TIM6;
       Ifx_STM_CAP CAP;
       Ifx_STM_CMP CMP[2];
       Ifx_STM_CMCON CMCON;
       Ifx_STM_ICR ICR;
       Ifx_STM_ISCR ISCR;
       Ifx_UReg_8Bit reserved_44[12];
       Ifx_STM_TIM0SV TIM0SV;
       Ifx_STM_CAPSV CAPSV;
       Ifx_UReg_8Bit reserved_58[144];
       Ifx_STM_OCS OCS;
       Ifx_STM_KRSTCLR KRSTCLR;
       Ifx_STM_KRST1 KRST1;
       Ifx_STM_KRST0 KRST0;
       Ifx_STM_ACCEN1 ACCEN1;
       Ifx_STM_ACCEN0 ACCEN0;
} Ifx_STM;
# 66 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h" 2
# 2 ".\\output\\inc/IfxStm_reg.h" 2
# 41 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
# 1 ".\\output\\inc/Qspi_dma.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h" 1







# 1 ".\\output\\inc/Std_Types.h" 1
# 9 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h" 2
# 1 ".\\output\\inc/IfxSrc_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    Ifx_UReg_32Bit SRPN:8;
    Ifx_UReg_32Bit reserved_8:2;
    Ifx_UReg_32Bit SRE:1;
    Ifx_UReg_32Bit TOS:3;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit ECC:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SRR:1;
    Ifx_UReg_32Bit CLRR:1;
    Ifx_UReg_32Bit SETR:1;
    Ifx_UReg_32Bit IOV:1;
    Ifx_UReg_32Bit IOVCLR:1;
    Ifx_UReg_32Bit SWS:1;
    Ifx_UReg_32Bit SWSCLR:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_SRC_SRCR_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 110 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CPU_CPU
{
       Ifx_SRC_SRCR SB;
} Ifx_SRC_CPU_CPU;
# 128 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CPU
{
       Ifx_SRC_CPU_CPU CPU[4];
} Ifx_SRC_CPU;
# 146 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CERBERUS_CERBERUS
{
       Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS_CERBERUS;
# 164 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CERBERUS
{
       Ifx_SRC_CERBERUS_CERBERUS CERBERUS;
} Ifx_SRC_CERBERUS;
# 182 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN_ASCLIN
{
       Ifx_SRC_SRCR TX;
       Ifx_SRC_SRCR RX;
       Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN_ASCLIN;
# 202 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN
{
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN[12];
} Ifx_SRC_ASCLIN;
# 220 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_QSPI_QSPI
{
       Ifx_SRC_SRCR TX;
       Ifx_SRC_SRCR RX;
       Ifx_SRC_SRCR ERR;
       Ifx_SRC_SRCR PT;
       Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI_QSPI;
# 242 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_QSPI
{
       Ifx_SRC_QSPI_QSPI QSPI[5];
} Ifx_SRC_QSPI;
# 260 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSCT_HSCT
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_HSCT_HSCT;
# 278 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSCT
{
       Ifx_SRC_HSCT_HSCT HSCT[1];
} Ifx_SRC_HSCT;
# 296 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSSL_HSSL_CH
{
       Ifx_SRC_SRCR COK;
       Ifx_SRC_SRCR RDI;
       Ifx_SRC_SRCR ERR;
       Ifx_SRC_SRCR TRG;
} Ifx_SRC_HSSL_HSSL_CH;
# 317 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSSL_HSSL
{
       Ifx_SRC_HSSL_HSSL_CH CH[4];
       Ifx_SRC_SRCR EXI;
} Ifx_SRC_HSSL_HSSL;
# 336 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSSL
{
       Ifx_SRC_HSSL_HSSL HSSL[1];
} Ifx_SRC_HSSL;
# 354 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_I2C_I2C
{
       Ifx_SRC_SRCR DTR;
       Ifx_SRC_SRCR ERR;
       Ifx_SRC_SRCR P;
       Ifx_UReg_8Bit reserved_C[4];
} Ifx_SRC_I2C_I2C;
# 375 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_I2C
{
       Ifx_SRC_I2C_I2C I2C[2];
} Ifx_SRC_I2C;
# 393 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SENT_SENT
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_SENT_SENT;
# 411 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SENT
{
       Ifx_SRC_SENT_SENT SENT[10];
} Ifx_SRC_SENT;
# 429 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_MSC_MSC
{
       Ifx_SRC_SRCR SR[5];
} Ifx_SRC_MSC_MSC;
# 447 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_MSC
{
       Ifx_SRC_MSC_MSC MSC[3];
} Ifx_SRC_MSC;
# 465 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CCU6_CCU
{
       Ifx_SRC_SRCR SR[4];
} Ifx_SRC_CCU6_CCU;
# 483 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CCU6
{
       Ifx_SRC_CCU6_CCU CCU[2];
} Ifx_SRC_CCU6;
# 501 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPT12_GPT12
{
       Ifx_SRC_SRCR CIRQ;
       Ifx_SRC_SRCR T2;
       Ifx_SRC_SRCR T3;
       Ifx_SRC_SRCR T4;
       Ifx_SRC_SRCR T5;
       Ifx_SRC_SRCR T6;
} Ifx_SRC_GPT12_GPT12;
# 524 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPT12
{
       Ifx_SRC_GPT12_GPT12 GPT12[1];
} Ifx_SRC_GPT12;
# 542 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_STM_STM
{
       Ifx_SRC_SRCR SR[2];
} Ifx_SRC_STM_STM;
# 560 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_STM
{
       Ifx_SRC_STM_STM STM[4];
} Ifx_SRC_STM;
# 578 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_FCE_FCE0
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_FCE_FCE0;
# 596 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_FCE
{
       Ifx_SRC_FCE_FCE0 FCE0;
} Ifx_SRC_FCE;
# 614 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DMA_DMA
{
       Ifx_SRC_SRCR ERR[4];
       Ifx_UReg_8Bit reserved_10[32];
       Ifx_SRC_SRCR CH[128];
} Ifx_SRC_DMA_DMA;
# 634 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DMA
{
       Ifx_SRC_DMA_DMA DMA[1];
} Ifx_SRC_DMA;
# 652 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GETH_GETH
{
       Ifx_SRC_SRCR SR[10];
} Ifx_SRC_GETH_GETH;
# 670 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GETH
{
       Ifx_SRC_GETH_GETH GETH[1];
} Ifx_SRC_GETH;
# 688 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CAN_CAN
{
       Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN_CAN;
# 706 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CAN
{
       Ifx_SRC_CAN_CAN CAN[3];
} Ifx_SRC_CAN;
# 724 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_VADC_G
{
       Ifx_SRC_SRCR SR0;
       Ifx_SRC_SRCR SR1;
       Ifx_SRC_SRCR SR2;
       Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADC_G;
# 745 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_VADC_FC
{
       Ifx_SRC_SRCR SR0;
} Ifx_SRC_VADC_FC;
# 764 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_VADC
{
       Ifx_SRC_VADC_G G[12];
       Ifx_SRC_VADC_FC FC[4];
       Ifx_UReg_8Bit reserved_D0[16];
       Ifx_SRC_VADC_G CG[2];
} Ifx_SRC_VADC;
# 785 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DSADC_DSADC
{
       Ifx_SRC_SRCR SRM;
       Ifx_SRC_SRCR SRA;
} Ifx_SRC_DSADC_DSADC;
# 804 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DSADC
{
       Ifx_SRC_DSADC_DSADC DSADC[10];
} Ifx_SRC_DSADC;
# 824 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ERAY_ERAY
{
       Ifx_SRC_SRCR INT0;
       Ifx_SRC_SRCR INT1;
       Ifx_SRC_SRCR TINT0;
       Ifx_SRC_SRCR TINT1;
       Ifx_SRC_SRCR NDAT0;
       Ifx_SRC_SRCR NDAT1;
       Ifx_SRC_SRCR MBSC0;
       Ifx_SRC_SRCR MBSC1;
       Ifx_SRC_SRCR OBUSY;
       Ifx_SRC_SRCR IBUSY;
       Ifx_UReg_8Bit reserved_28[8];
} Ifx_SRC_ERAY_ERAY;
# 852 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ERAY
{
       Ifx_SRC_ERAY_ERAY ERAY[2];
} Ifx_SRC_ERAY;
# 870 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSM_HSM
{
       Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM_HSM;
# 888 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSM
{
       Ifx_SRC_HSM_HSM HSM[1];
} Ifx_SRC_HSM;
# 906 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SCU
{
       Ifx_SRC_SRCR SCUERU[4];
} Ifx_SRC_SCU;
# 924 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PMS_PMS
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_PMS_PMS;
# 942 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PMS
{
       Ifx_SRC_PMS_PMS PMS[4];
} Ifx_SRC_PMS;
# 960 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SMU_SMU
{
       Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU_SMU;
# 978 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SMU
{
       Ifx_SRC_SMU_SMU SMU[1];
} Ifx_SRC_SMU;
# 996 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5_PSI5
{
       Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5_PSI5;
# 1014 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5
{
       Ifx_SRC_PSI5_PSI5 PSI5[1];
} Ifx_SRC_PSI5;
# 1032 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DAM_DAM
{
       Ifx_SRC_SRCR LI0;
       Ifx_SRC_SRCR RI0;
       Ifx_SRC_SRCR LI1;
       Ifx_SRC_SRCR RI1;
       Ifx_SRC_SRCR DR;
       Ifx_SRC_SRCR ERR;
} Ifx_SRC_DAM_DAM;
# 1055 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DAM
{
       Ifx_SRC_DAM_DAM DAM[1];
} Ifx_SRC_DAM;
# 1073 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5S_PSI5S
{
       Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5S_PSI5S;
# 1091 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5S
{
       Ifx_SRC_PSI5S_PSI5S PSI5S[1];
} Ifx_SRC_PSI5S;
# 1109 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPSR_GPSR
{
       Ifx_SRC_SRCR SR[8];
} Ifx_SRC_GPSR_GPSR;
# 1127 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPSR
{
       Ifx_SRC_GPSR_GPSR GPSR[4];
} Ifx_SRC_GPSR;
# 1155 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
       Ifx_SRC_CPU CPU;
       Ifx_UReg_8Bit reserved_10[16];
       Ifx_SRC_SRCR SBCU;
       Ifx_UReg_8Bit reserved_24[12];
       Ifx_SRC_SRCR XBAR0;
       Ifx_UReg_8Bit reserved_34[12];
       Ifx_SRC_CERBERUS CERBERUS;
       Ifx_UReg_8Bit reserved_48[8];
       Ifx_SRC_ASCLIN ASCLIN;
       Ifx_UReg_8Bit reserved_E0[12];
       Ifx_SRC_SRCR MTUDONE;
       Ifx_SRC_QSPI QSPI;
       Ifx_UReg_8Bit reserved_154[44];
       Ifx_SRC_HSCT HSCT;
       Ifx_UReg_8Bit reserved_184[12];
       Ifx_SRC_HSSL HSSL;
       Ifx_UReg_8Bit reserved_1D4[76];
       Ifx_SRC_I2C I2C;
       Ifx_SRC_SENT SENT;
       Ifx_UReg_8Bit reserved_268[8];
       Ifx_SRC_MSC MSC;
       Ifx_UReg_8Bit reserved_2AC[20];
       Ifx_SRC_CCU6 CCU6;
       Ifx_SRC_GPT12 GPT12;
       Ifx_UReg_8Bit reserved_2F8[8];
       Ifx_SRC_STM STM;
       Ifx_UReg_8Bit reserved_320[16];
       Ifx_SRC_FCE FCE;
       Ifx_UReg_8Bit reserved_334[12];
       Ifx_SRC_DMA DMA;
       Ifx_UReg_8Bit reserved_570[16];
       Ifx_SRC_GETH GETH;
       Ifx_UReg_8Bit reserved_5A8[8];
       Ifx_SRC_CAN CAN;
       Ifx_SRC_VADC VADC;
       Ifx_SRC_DSADC DSADC;
       Ifx_UReg_8Bit reserved_7C0[32];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN12;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN13;
       Ifx_UReg_8Bit reserved_7F8[8];
       Ifx_SRC_ERAY ERAY;
       Ifx_SRC_SRCR DMUHOST;
       Ifx_SRC_SRCR DMUFSI;
       Ifx_UReg_8Bit reserved_868[8];
       Ifx_SRC_HSM HSM;
       Ifx_UReg_8Bit reserved_878[8];
       Ifx_SRC_SCU SCU;
       Ifx_UReg_8Bit reserved_890[28];
       Ifx_SRC_SRCR PMSDTS;
       Ifx_SRC_PMS PMS;
       Ifx_SRC_SRCR SCR;
       Ifx_UReg_8Bit reserved_8C4[12];
       Ifx_SRC_SMU SMU;
       Ifx_UReg_8Bit reserved_8DC[4];
       Ifx_SRC_PSI5 PSI5;
       Ifx_UReg_8Bit reserved_900[16];
       Ifx_SRC_DAM DAM;
       Ifx_UReg_8Bit reserved_928[40];
       Ifx_SRC_PSI5S PSI5S;
       Ifx_UReg_8Bit reserved_970[32];
       Ifx_SRC_GPSR GPSR;
       Ifx_UReg_8Bit reserved_A10[64];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN14;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN15;
       Ifx_UReg_8Bit reserved_A68[8];
       Ifx_SRC_SRCR GTM_AEIIRQ;
       Ifx_SRC_SRCR GTM_ARUIRQ[3];
       Ifx_SRC_SRCR GTM_BRCIRQ;
       Ifx_SRC_SRCR GTM_CMBIRQ;
       Ifx_SRC_SRCR GTM_SPEIRQ[4];
       Ifx_UReg_8Bit reserved_A98[8];
       Ifx_SRC_SRCR GTM_PSM[2][8];
       Ifx_UReg_8Bit reserved_AE0[32];
       Ifx_SRC_SRCR GTM_DPLL[27];
       Ifx_UReg_8Bit reserved_B6C[4];
       Ifx_SRC_SRCR GTM_ERR;
       Ifx_UReg_8Bit reserved_B74[28];
       Ifx_SRC_SRCR GTM_TIM[7][8];
       Ifx_UReg_8Bit reserved_C70[32];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN16;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN17;
       Ifx_UReg_8Bit reserved_CA8[8];
       Ifx_SRC_SRCR GTM_MCS[7][8];
       Ifx_UReg_8Bit reserved_D90[96];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN18;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN19;
       Ifx_UReg_8Bit reserved_E08[8];
       Ifx_SRC_SRCR GTM_TOM[5][8];
       Ifx_UReg_8Bit reserved_EB0[32];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN20;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN21;
       Ifx_UReg_8Bit reserved_EE8[8];
       Ifx_SRC_SRCR GTM_ATOM[9][4];
       Ifx_UReg_8Bit reserved_F80[48];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN22;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN23;
       Ifx_UReg_8Bit reserved_FC8[8];
       Ifx_SRC_SRCR GTM_MCSW[10];
       Ifx_UReg_8Bit reserved_FF8[4104];
} Ifx_SRC;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h" 2
# 2 ".\\output\\inc/IfxSrc_reg.h" 2
# 10 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h" 2
# 1 ".\\output\\inc/IfxQspi_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h"
typedef struct _Ifx_QSPI_ACCEN0_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_QSPI_ACCEN0_Bits;


typedef struct _Ifx_QSPI_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_QSPI_ACCEN1_Bits;


typedef struct _Ifx_QSPI_BACON_Bits
{
    Ifx_UReg_32Bit LAST:1;
    Ifx_UReg_32Bit IPRE:3;
    Ifx_UReg_32Bit IDLE:3;
    Ifx_UReg_32Bit LPRE:3;
    Ifx_UReg_32Bit LEAD:3;
    Ifx_UReg_32Bit TPRE:3;
    Ifx_UReg_32Bit TRAIL:3;
    Ifx_UReg_32Bit PARTYP:1;
    Ifx_UReg_32Bit UINT:1;
    Ifx_UReg_32Bit MSB:1;
    Ifx_UReg_32Bit BYTE:1;
    Ifx_UReg_32Bit DL:5;
    Ifx_UReg_32Bit CS:4;
} Ifx_QSPI_BACON_Bits;


typedef struct _Ifx_QSPI_BACONENTRY_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_BACONENTRY_Bits;


typedef struct _Ifx_QSPI_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_QSPI_CLC_Bits;


typedef struct _Ifx_QSPI_DATAENTRY_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_DATAENTRY_Bits;


typedef struct _Ifx_QSPI_ECON_Bits
{
    Ifx_UReg_32Bit Q:6;
    Ifx_UReg_32Bit A:2;
    Ifx_UReg_32Bit B:2;
    Ifx_UReg_32Bit C:2;
    Ifx_UReg_32Bit CPH:1;
    Ifx_UReg_32Bit CPOL:1;
    Ifx_UReg_32Bit PAREN:1;
    Ifx_UReg_32Bit reserved_15:15;
    Ifx_UReg_32Bit BE:2;
} Ifx_QSPI_ECON_Bits;


typedef struct _Ifx_QSPI_FLAGSCLEAR_Bits
{
    Ifx_UReg_32Bit ERRORCLEARS:9;
    Ifx_UReg_32Bit TXC:1;
    Ifx_UReg_32Bit RXC:1;
    Ifx_UReg_32Bit PT1C:1;
    Ifx_UReg_32Bit PT2C:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit USRC:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_QSPI_FLAGSCLEAR_Bits;


typedef struct _Ifx_QSPI_GLOBALCON_Bits
{
    Ifx_UReg_32Bit TQ:8;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit SI:1;
    Ifx_UReg_32Bit EXPECT:4;
    Ifx_UReg_32Bit LB:1;
    Ifx_UReg_32Bit DEL0:1;
    Ifx_UReg_32Bit STROBE:5;
    Ifx_UReg_32Bit SRF:1;
    Ifx_UReg_32Bit STIP:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit MS:2;
    Ifx_UReg_32Bit AREN:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit CLKSEL:1;
    Ifx_UReg_32Bit RESETS:2;
} Ifx_QSPI_GLOBALCON_Bits;


typedef struct _Ifx_QSPI_GLOBALCON1_Bits
{
    Ifx_UReg_32Bit ERRORENS:9;
    Ifx_UReg_32Bit TXEN:1;
    Ifx_UReg_32Bit RXEN:1;
    Ifx_UReg_32Bit PT1EN:1;
    Ifx_UReg_32Bit PT2EN:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit USREN:1;
    Ifx_UReg_32Bit TXFIFOINT:2;
    Ifx_UReg_32Bit RXFIFOINT:2;
    Ifx_UReg_32Bit PT1:3;
    Ifx_UReg_32Bit PT2:3;
    Ifx_UReg_32Bit TXFM:2;
    Ifx_UReg_32Bit RXFM:2;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_QSPI_GLOBALCON1_Bits;


typedef struct _Ifx_QSPI_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_QSPI_ID_Bits;


typedef struct _Ifx_QSPI_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_QSPI_KRST0_Bits;


typedef struct _Ifx_QSPI_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_QSPI_KRST1_Bits;


typedef struct _Ifx_QSPI_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_QSPI_KRSTCLR_Bits;


typedef struct _Ifx_QSPI_MC_Bits
{
    Ifx_UReg_32Bit MCOUNT:13;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit CURRENT:13;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_QSPI_MC_Bits;


typedef struct _Ifx_QSPI_MCCON_Bits
{
    Ifx_UReg_32Bit TPRE2:3;
    Ifx_UReg_32Bit TRAIL2:3;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit IBLEN:1;
    Ifx_UReg_32Bit IBLF:1;
    Ifx_UReg_32Bit IBLC:1;
    Ifx_UReg_32Bit IBLS:1;
    Ifx_UReg_32Bit IALEN:1;
    Ifx_UReg_32Bit IALF:1;
    Ifx_UReg_32Bit IALC:1;
    Ifx_UReg_32Bit IALS:1;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit T2EN:1;
    Ifx_UReg_32Bit MCEN:1;
} Ifx_QSPI_MCCON_Bits;


typedef struct _Ifx_QSPI_MIXENTRY_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_MIXENTRY_Bits;


typedef struct _Ifx_QSPI_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit reserved_4:20;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_QSPI_OCS_Bits;


typedef struct _Ifx_QSPI_PISEL_Bits
{
    Ifx_UReg_32Bit MRIS:3;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit SRIS:3;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit SCIS:3;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit SLSIS:3;
    Ifx_UReg_32Bit reserved_15:17;
} Ifx_QSPI_PISEL_Bits;


typedef struct _Ifx_QSPI_RXEXIT_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_RXEXIT_Bits;


typedef struct _Ifx_QSPI_RXEXITD_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_RXEXITD_Bits;


typedef struct _Ifx_QSPI_SSOC_Bits
{
    Ifx_UReg_32Bit AOL:16;
    Ifx_UReg_32Bit OEN:16;
} Ifx_QSPI_SSOC_Bits;


typedef struct _Ifx_QSPI_STATUS_Bits
{
    Ifx_UReg_32Bit ERRORFLAGS:9;
    Ifx_UReg_32Bit TXF:1;
    Ifx_UReg_32Bit RXF:1;
    Ifx_UReg_32Bit PT1F:1;
    Ifx_UReg_32Bit PT2F:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit USRF:1;
    Ifx_UReg_32Bit TXFIFOLEVEL:3;
    Ifx_UReg_32Bit RXFIFOLEVEL:3;
    Ifx_UReg_32Bit SLAVESEL:4;
    Ifx_UReg_32Bit RPV:1;
    Ifx_UReg_32Bit TPV:1;
    Ifx_UReg_32Bit PHASE:4;
} Ifx_QSPI_STATUS_Bits;


typedef struct _Ifx_QSPI_STATUS1_Bits
{
    Ifx_UReg_32Bit BITCOUNT:8;
    Ifx_UReg_32Bit reserved_8:20;
    Ifx_UReg_32Bit BRDEN:1;
    Ifx_UReg_32Bit BRD:1;
    Ifx_UReg_32Bit SPDEN:1;
    Ifx_UReg_32Bit SPD:1;
} Ifx_QSPI_STATUS1_Bits;


typedef struct _Ifx_QSPI_XXLCON_Bits
{
    Ifx_UReg_32Bit XDL:16;
    Ifx_UReg_32Bit BYTECOUNT:16;
} Ifx_QSPI_XXLCON_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ACCEN0_Bits B;
} Ifx_QSPI_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ACCEN1_Bits B;
} Ifx_QSPI_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_BACON_Bits B;
} Ifx_QSPI_BACON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_BACONENTRY_Bits B;
} Ifx_QSPI_BACONENTRY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_CLC_Bits B;
} Ifx_QSPI_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_DATAENTRY_Bits B;
} Ifx_QSPI_DATAENTRY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ECON_Bits B;
} Ifx_QSPI_ECON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_FLAGSCLEAR_Bits B;
} Ifx_QSPI_FLAGSCLEAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_GLOBALCON_Bits B;
} Ifx_QSPI_GLOBALCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_GLOBALCON1_Bits B;
} Ifx_QSPI_GLOBALCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ID_Bits B;
} Ifx_QSPI_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_KRST0_Bits B;
} Ifx_QSPI_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_KRST1_Bits B;
} Ifx_QSPI_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_KRSTCLR_Bits B;
} Ifx_QSPI_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_MC_Bits B;
} Ifx_QSPI_MC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_MCCON_Bits B;
} Ifx_QSPI_MCCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_MIXENTRY_Bits B;
} Ifx_QSPI_MIXENTRY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_OCS_Bits B;
} Ifx_QSPI_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_PISEL_Bits B;
} Ifx_QSPI_PISEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_RXEXIT_Bits B;
} Ifx_QSPI_RXEXIT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_RXEXITD_Bits B;
} Ifx_QSPI_RXEXITD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_SSOC_Bits B;
} Ifx_QSPI_SSOC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_STATUS_Bits B;
} Ifx_QSPI_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_STATUS1_Bits B;
} Ifx_QSPI_STATUS1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_XXLCON_Bits B;
} Ifx_QSPI_XXLCON;
# 579 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h"
typedef volatile struct _Ifx_QSPI
{
       Ifx_QSPI_CLC CLC;
       Ifx_QSPI_PISEL PISEL;
       Ifx_QSPI_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_QSPI_GLOBALCON GLOBALCON;
       Ifx_QSPI_GLOBALCON1 GLOBALCON1;
       Ifx_QSPI_BACON BACON;
       Ifx_UReg_8Bit reserved_1C[4];
       Ifx_QSPI_ECON ECON[8];
       Ifx_QSPI_STATUS STATUS;
       Ifx_QSPI_STATUS1 STATUS1;
       Ifx_QSPI_SSOC SSOC;
       Ifx_UReg_8Bit reserved_4C[8];
       Ifx_QSPI_FLAGSCLEAR FLAGSCLEAR;
       Ifx_QSPI_XXLCON XXLCON;
       Ifx_QSPI_MIXENTRY MIXENTRY;
       Ifx_QSPI_BACONENTRY BACONENTRY;
       Ifx_QSPI_DATAENTRY DATAENTRY[8];
       Ifx_UReg_8Bit reserved_84[12];
       Ifx_QSPI_RXEXIT RXEXIT;
       Ifx_QSPI_RXEXITD RXEXITD;
       Ifx_UReg_8Bit reserved_98[12];
       Ifx_QSPI_MC MC;
       Ifx_QSPI_MCCON MCCON;
       Ifx_UReg_8Bit reserved_AC[60];
       Ifx_QSPI_OCS OCS;
       Ifx_QSPI_KRSTCLR KRSTCLR;
       Ifx_QSPI_KRST1 KRST1;
       Ifx_QSPI_KRST0 KRST0;
       Ifx_QSPI_ACCEN1 ACCEN1;
       Ifx_QSPI_ACCEN0 ACCEN0;
} Ifx_QSPI;
# 69 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h" 2
# 2 ".\\output\\inc/IfxQspi_reg.h" 2
# 11 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h" 2





typedef void (*Qspi_UserCbkFuncType)(void);


typedef struct Qspi_ModConfigType
{
    volatile Ifx_QSPI* QspiModule;
    volatile Ifx_SRC_SRCR* SrcTxRegister;
    volatile Ifx_SRC_SRCR* SrcRxRegister;
    uint8 TxDmaChannel;
    uint8 RxDmaChannel;
    uint8 RcvInputSel;
    uint8 ModTimeQuantum;
    Qspi_UserCbkFuncType UserFunc;
} Qspi_ModConfigType;





typedef struct Qspi_ChConfigType
{
    uint8 Channel;
    uint8 SlsoActiveLevel;

    uint8 ChTimeQuantum;
    uint8 BitSeg1;
    uint8 BitSeg2;
    uint8 BitSeg3;

    uint8 ClockPhase;
    uint8 ClockPol;
    uint8 ParityEn;
    uint8 ParityType;
    uint8 MsbFirst;
    uint8 DataLength;
    uint8 IdlePrescaler;
    uint8 IdleDelay;
    uint8 LeadPrescaler;
    uint8 LeadDelay;
    uint8 TrailPrescaler;
    uint8 TrailDelay;

} Qspi_ChConfigType;


typedef struct Qspi_DataType
{

    volatile uint32 ErrorFlags;

    Ifx_QSPI_BACON Bacon;

    const Qspi_ChConfigType* CfgPtr;

    volatile Ifx_QSPI* QspiModptr;

    volatile Ifx_SRC_SRCR* TxSrcReg;
    volatile Ifx_SRC_SRCR* RxSrcReg;

    uint32* TxBufPtr;
    uint32* RxBufPtr;

    Qspi_UserCbkFuncType CallbackFunc;

    uint8 TxDmaChannel;
    uint8 RxDmaChannel;

    uint8 Count;

    uint8 DataCount;
} Qspi_DataType;
# 95 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h"
void Qspi_CddlQspiDmaChRst(uint8 eCfgIndex);
Std_ReturnType Qspi_CddInit(uint8 eCfgIndex);
void Qspi_CddTxRx(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count);
void Qspi_CddTxRxShortMode(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count);
Std_ReturnType Qspi_CddRxDone(uint8 eCfgIndex);
# 2 ".\\output\\inc/Qspi_dma.h" 2
# 42 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2




# 1 ".\\output\\inc/CDD_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 8 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h" 2
# 20 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h"
typedef enum{
   eCDD_WRITE_DONE = 0,
   eCDD_WRTIE_CONTINUE
}CDD_eTransState;

typedef enum{
   eCDD_PIN_LOW = 0,
   eCDD_PIN_HIGH
}CDD_ePinLevel;

typedef volatile union{
   uint8 *u8Ptr;
   uint16 *u16Ptr;
   uint32 *u32Ptr;
   uint64 *u64Ptr;
   sint8 *s8Ptr;
   sint16 *s16Ptr;
   sint32 *s32Ptr;
   sint64 *s64Ptr;
   float32 *f32Ptr;
   const float32 *kf32Ptr;
}CDD_uCTablePtr;

typedef struct CDD_tTransParam{
   CDD_eTransState eState;
   uint32 u32TransLen;
   uint32 u32TotalLen;
   CDD_uCTablePtr uSrcPtr;
   CDD_uCTablePtr uDestPtr;
}CDD_tTransParam;
# 2 ".\\output\\inc/CDD_Types.h" 2
# 47 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 1
# 37 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
# 52 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h"
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 105 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 106 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 53 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const boolean TLE9180_bManualReadRegC;
extern const boolean TLE9180_bDrvOverVoltageTestOnC;
extern const boolean TLE9180_bDrvUnderVoltageTestOnC;
extern const boolean TLE9180_bDrvOverTempTestOnC;
extern const boolean TLE9180_bPhaseShortHighTestOnC;
extern const boolean TLE9180_bPhaseShortLowTestOnC;
extern const boolean TLE9180_bDrvOverCurrentTestOnC;
extern const boolean TLE9180_bPhsOverVoltTestOnC;
extern const boolean TLE9180_bPhasePerfTestOnC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 110 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 111 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 64 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 94 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 67 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const uint8 TLE9180_ku8MaxInitTimeC;
extern const uint8 TLE9180_ku8MaxReCfgTimeC;
extern const uint8 TLE9180_ku8EnaResetCntC;
extern const uint8 TLE9180_ku8ErrRecvMaxNumC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 99 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 100 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 73 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 83 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 76 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const uint16 TLE9180_ku16EnaResetTimeC;
extern const uint16 TLE9180_ku16ErrPinChkTimC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 88 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 80 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 116 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 117 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 83 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const float32 TLE9180_kf32PhsTempFaultC;
extern const float32 TLE9180_kf32PhsTempFltRecoverC;
extern const float32 TLE9180_kf32BatteryVolValidThrdC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 121 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 122 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 88 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2




extern boolean TLE9180_bPhasePerf;
extern boolean TLE9180_bTempWarning;
# 49 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
# 66 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h"
boolean TLE9180_bHalBatIsNormal(void);
boolean TLE9180_bHalSysIsReady(void);
boolean TLE9180_bHalPwmIsReady(void);
boolean TLE9180_bHalICIsNormal(void);
void TLE9180_vidHalWriteEnaPin(const CDD_ePinLevel kePinLevel);
void TLE9180_vidHalWriteSoffPin(const CDD_ePinLevel kePinLevel);
void TLE9180_vidHalWriteInhPin(const CDD_ePinLevel kePinLevel);




static inline void TLE9180_vidHalSpiInit(void);
static inline boolean TLE9180_bHalSpiWrite(CDD_tTransParam * const kpkxParam);
static inline uint32 TLE9180_u32HalGetTimerVal(void);
static inline boolean TLE9180_bHalIsComEnd(CDD_tTransParam * const kpkxParam);





# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 140 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section ".text" ax
# 87 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
static inline void TLE9180_vidHalSpiInit(void)
{
   Qspi_CddInit(2);
}

static inline boolean TLE9180_bHalIsComEnd(CDD_tTransParam * const kpkxParam)
{
   boolean bReadResult;


   (void)kpkxParam;
   bReadResult = (0x00u == Qspi_CddRxDone(2));




   return bReadResult;
}

static inline boolean TLE9180_bHalSpiWrite(CDD_tTransParam * const kpkxParam)
{
   boolean bRetVal;

   Qspi_CddTxRxShortMode(2,
                         kpkxParam->uSrcPtr.u32Ptr,
                         kpkxParam->uDestPtr.u32Ptr,
                         (uint8)kpkxParam->u32TotalLen);

   bRetVal = (1 != 0);
# 141 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h"
   return bRetVal;
}

static inline uint32 TLE9180_u32HalGetTimerVal(void)
{
   uint32 u32Time;

   u32Time = ((*(Ifx_STM*)0xF0001100u)).TIM0.U;

   return u32Time;
}


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 181 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section
# 155 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
# 28 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_REG.h" 1
# 37 "bswcdd\\PreDriver\\TLE9180\\TLE9180_REG.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\PreDriver\\TLE9180\\TLE9180_REG.h" 2
# 29 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2
# 1 ".\\output\\inc/Fault.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h" 1
# 30 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
# 1 ".\\output\\inc/DSM_Drv.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2

# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h" 2




typedef uint8 FaultFunctionType;
typedef uint8 FaultIndexType;
typedef uint16 FaultBitFieldType;
typedef FaultBitFieldType FaultMaskType;
typedef uint16 FaultOffsetType;

typedef FaultBitFieldType FaultStateType;

typedef uint8 FaultCntType;
typedef uint8 FaultFailModType;
typedef uint8 FaultFailureLevelType;
typedef uint32 FaultDtcNbType;
typedef uint8 FaultDtcFailTypeType;

typedef struct
{
   FaultDtcNbType DTCNb;
   FaultDtcFailTypeType DTCFt;
   uint8 DTCHistoryCount;
} FaultDtcRecordType;

typedef struct{
   uint32 u32StartIndex;
   uint32 u32StopIndex;
}DSM_tFaultElementIndex;
# 35 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
typedef enum DSM_CONTROL_UNIT_INDEX{
   DSM_UNIT_0 = 0,
   DSM_UNIT_1,
   DSM_UNIT_2,
   DSM_UNIT_3,
   DSM_UNIT_4,
   DSM_UNIT_MAX_NUM
}DSM_CONTROL_UNIT_INDEX;
# 71 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 72 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2
extern const uint16 FaultEraseRequestC;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 75 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 82 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2
extern uint32 DSM_DtcNumber[( 10 )];
extern volatile uint8 FaultFailureLevel;
extern volatile uint8 DSM_FaultFailureLevel[(DSM_UNIT_MAX_NUM + 1)];
extern uint16 FaultEraseRequest;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 88 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2
uint8 DSM_u8GetUnitFaultLevel(uint8 u8UnitIndex);
void FaultClear(uint8 u8LocMotorIndex);
void FaultCounterInit(void);
void FaultDisableAllDTCs(void);
void FaultEnableAllDTCs(void);
void FaultManualErase(void);
void FaultPowerDownManage(void);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 104 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 2
# 36 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h" 2
# 61 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h" 2
void FaultClearDTCRecord(void);
void FaultDetectionWithFail(uint8 Function, uint8 Type);
void FaultDetectionWithoutFail(uint8 Function, uint8 Type);
void FaultRecordDTC(uint16 FaultOffset);
void FaultRecordDTCContext(const uint16 dTCArrayIdx);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h" 2
# 37 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 88 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2

extern void FaultClearOneDtcRecord(uint16 dtcIdx);
extern void FaultSaveOneNewDtcRecord(FaultDtcNbType dtcNb, FaultFailModType failMod);
extern void FaultRefreshOneDtcRecord(uint16 dtcIdx, FaultFailModType failMod);

extern boolean FaultDtcNbIsLoggedIgn(FaultDtcNbType dtcNb);


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 98 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Drv.h" 2
# 2 ".\\output\\inc/DSM_Drv.h" 2
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2
# 43 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 44 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern uint8 FaultTableFuncTypeCounter1 [0x122];

extern FaultBitFieldType FaultFunctionTypeDetectedArray [0x59];
extern FaultBitFieldType FaultFunctionTypeLoggedArray [0x59];
extern FaultBitFieldType FaultFunctionTypeAuthorizedArray [0x59];
extern FaultBitFieldType FaultFunctionTypeLogIgnArray [0x59];

extern uint8 FaultFailModCounterTable [21];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 56 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern const FaultCntType FaultFunctionTypeIncs [0x122];
extern const FaultCntType FaultFunctionTypeDecs [0x122];
extern const FaultBitFieldType FaultFunctionTypeIrrArray [0x59];
extern const FaultBitFieldType FaultFunctionTypeAutInitArray [0x59];
extern const FaultBitFieldType FaultFunctionTypeLockedArray [0x59];
extern const FaultBitFieldType FaultFunctionTypeCntIgnArray [0x59];
extern const FaultFailModType FaultFunctionTypeFailModTable [0x122];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 72 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern const FaultOffsetType FaultFunctionTypeOffsetTable [0x59 + 1];
extern const FaultDtcNbType FaultFunctionTypeDtcNbTable [0x122];
extern const FaultDtcFailTypeType FaultFunctionTypeDtcFtTable [0x122];


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2
# 1354 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 1355 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2

extern FaultBitFieldType FaultABSW_COM_Detected;
extern FaultBitFieldType FaultABSW_COM_Logged;

extern FaultBitFieldType FaultABSW_HW2_Detected;
extern FaultBitFieldType FaultABSW_HW2_Logged;

extern FaultBitFieldType FaultABSW_HW_Detected;
extern FaultBitFieldType FaultABSW_HW_Logged;

extern FaultBitFieldType FaultAFSEVBHV_Detected;
extern FaultBitFieldType FaultAFSEVBHV_Logged;

extern FaultBitFieldType FaultAFSEVBLV_Detected;
extern FaultBitFieldType FaultAFSEVBLV_Logged;

extern FaultBitFieldType FaultAFSEVETA_Detected;
extern FaultBitFieldType FaultAFSEVETA_Logged;

extern FaultBitFieldType FaultAFSEVETA_OverDetected;
extern FaultBitFieldType FaultAFSEVETA_OverLogged;

extern FaultBitFieldType FaultAFSEVETA_TempDetected;
extern FaultBitFieldType FaultAFSEVETA_TempLogged;

extern FaultBitFieldType FaultAFSMTMTA_OverDetected;
extern FaultBitFieldType FaultAFSMTMTA_OverLogged;

extern FaultBitFieldType FaultAFSMTMTA_TempDetected;
extern FaultBitFieldType FaultAFSMTMTA_TempLogged;

extern FaultBitFieldType FaultAFTASBDS_Detected;
extern FaultBitFieldType FaultAFTASBDS_Logged;

extern FaultBitFieldType FaultAFTASETP_Detected;
extern FaultBitFieldType FaultAFTASETP_Logged;

extern FaultBitFieldType FaultAFTASMTP_Detected;
extern FaultBitFieldType FaultAFTASMTP_Logged;

extern FaultBitFieldType FaultAFTASOSP_Detected;
extern FaultBitFieldType FaultAFTASOSP_Logged;

extern FaultBitFieldType FaultAFTCMSCS_Detected;
extern FaultBitFieldType FaultAFTCMSCS_Logged;

extern FaultBitFieldType FaultAFTCMTCS_Detected;
extern FaultBitFieldType FaultAFTCMTCS_Logged;

extern FaultBitFieldType FaultAFTMTLCS_Detected;
extern FaultBitFieldType FaultAFTMTLCS_Logged;

extern FaultBitFieldType FaultAFTSLOBS_Detected;
extern FaultBitFieldType FaultAFTSLOBS_Logged;

extern FaultBitFieldType FaultBSW_COM_Detected;
extern FaultBitFieldType FaultBSW_COM_Logged;

extern FaultBitFieldType FaultBSW_HW2_Detected;
extern FaultBitFieldType FaultBSW_HW2_Logged;

extern FaultBitFieldType FaultBSW_HW_Detected;
extern FaultBitFieldType FaultBSW_HW_Logged;

extern FaultBitFieldType FaultFSEVBHV_Detected;
extern FaultBitFieldType FaultFSEVBHV_Logged;

extern FaultBitFieldType FaultFSEVBLV_Detected;
extern FaultBitFieldType FaultFSEVBLV_Logged;

extern FaultBitFieldType FaultFSEVETA_Detected;
extern FaultBitFieldType FaultFSEVETA_Logged;

extern FaultBitFieldType FaultFSEVETA_OverDetected;
extern FaultBitFieldType FaultFSEVETA_OverLogged;

extern FaultBitFieldType FaultFSEVETA_TempDetected;
extern FaultBitFieldType FaultFSEVETA_TempLogged;

extern FaultBitFieldType FaultFSMTMTA_OverDetected;
extern FaultBitFieldType FaultFSMTMTA_OverLogged;

extern FaultBitFieldType FaultFSMTMTA_TempDetected;
extern FaultBitFieldType FaultFSMTMTA_TempLogged;

extern FaultBitFieldType FaultFSMTRDG_Detected;
extern FaultBitFieldType FaultFSMTRDG_Logged;

extern FaultBitFieldType FaultFSSMACS_Detected;
extern FaultBitFieldType FaultFSSMACS_Logged;

extern FaultBitFieldType FaultFTASBDS_Detected;
extern FaultBitFieldType FaultFTASBDS_Logged;

extern FaultBitFieldType FaultFTASETP_Detected;
extern FaultBitFieldType FaultFTASETP_Logged;

extern FaultBitFieldType FaultFTASMTP_Detected;
extern FaultBitFieldType FaultFTASMTP_Logged;

extern FaultBitFieldType FaultFTASOSP_Detected;
extern FaultBitFieldType FaultFTASOSP_Logged;

extern FaultBitFieldType FaultFTCMSCS_Detected;
extern FaultBitFieldType FaultFTCMSCS_Logged;

extern FaultBitFieldType FaultFTCMTCS_Detected;
extern FaultBitFieldType FaultFTCMTCS_Logged;

extern FaultBitFieldType FaultFTEVEIT_Detected;
extern FaultBitFieldType FaultFTEVEIT_Logged;

extern FaultBitFieldType FaultFTMTLCS_Detected;
extern FaultBitFieldType FaultFTMTLCS_Logged;

extern FaultBitFieldType FaultGBSW_COM_Detected;
extern FaultBitFieldType FaultGBSW_COM_Logged;

extern FaultBitFieldType FaultGBSW_HW2_Detected;
extern FaultBitFieldType FaultGBSW_HW2_Logged;

extern FaultBitFieldType FaultGBSW_HW_Detected;
extern FaultBitFieldType FaultGBSW_HW_Logged;

extern FaultBitFieldType FaultGFSEVBHV_Detected;
extern FaultBitFieldType FaultGFSEVBHV_Logged;

extern FaultBitFieldType FaultGFSEVBLV_Detected;
extern FaultBitFieldType FaultGFSEVBLV_Logged;

extern FaultBitFieldType FaultGFSEVETA_Detected;
extern FaultBitFieldType FaultGFSEVETA_Logged;

extern FaultBitFieldType FaultGFSEVETA_OverDetected;
extern FaultBitFieldType FaultGFSEVETA_OverLogged;

extern FaultBitFieldType FaultGFSEVETA_TempDetected;
extern FaultBitFieldType FaultGFSEVETA_TempLogged;

extern FaultBitFieldType FaultGFSMTMTA_OverDetected;
extern FaultBitFieldType FaultGFSMTMTA_OverLogged;

extern FaultBitFieldType FaultGFSMTMTA_TempDetected;
extern FaultBitFieldType FaultGFSMTMTA_TempLogged;

extern FaultBitFieldType FaultGFSMTRDG_Detected;
extern FaultBitFieldType FaultGFSMTRDG_Logged;

extern FaultBitFieldType FaultGFSSMACS_Detected;
extern FaultBitFieldType FaultGFSSMACS_Logged;

extern FaultBitFieldType FaultGFTASBDS_Detected;
extern FaultBitFieldType FaultGFTASBDS_Logged;

extern FaultBitFieldType FaultGFTASETP_Detected;
extern FaultBitFieldType FaultGFTASETP_Logged;

extern FaultBitFieldType FaultGFTASMTP_Detected;
extern FaultBitFieldType FaultGFTASMTP_Logged;

extern FaultBitFieldType FaultGFTASOSP_Detected;
extern FaultBitFieldType FaultGFTASOSP_Logged;

extern FaultBitFieldType FaultGFTCMSCS_Detected;
extern FaultBitFieldType FaultGFTCMSCS_Logged;

extern FaultBitFieldType FaultGFTCMTCS_Detected;
extern FaultBitFieldType FaultGFTCMTCS_Logged;

extern FaultBitFieldType FaultGFTEVEIT_Detected;
extern FaultBitFieldType FaultGFTEVEIT_Logged;

extern FaultBitFieldType FaultGFTMTLCS_Detected;
extern FaultBitFieldType FaultGFTMTLCS_Logged;

extern FaultBitFieldType FaultGSDMTMEP_Detected;
extern FaultBitFieldType FaultGSDMTMEP_Logged;

extern FaultBitFieldType FaultOBSW_COM_Detected;
extern FaultBitFieldType FaultOBSW_COM_Logged;

extern FaultBitFieldType FaultOBSW_HW2_Detected;
extern FaultBitFieldType FaultOBSW_HW2_Logged;

extern FaultBitFieldType FaultOBSW_HW_Detected;
extern FaultBitFieldType FaultOBSW_HW_Logged;

extern FaultBitFieldType FaultOFSEVBHV_Detected;
extern FaultBitFieldType FaultOFSEVBHV_Logged;

extern FaultBitFieldType FaultOFSEVBLV_Detected;
extern FaultBitFieldType FaultOFSEVBLV_Logged;

extern FaultBitFieldType FaultOFSEVETA_Detected;
extern FaultBitFieldType FaultOFSEVETA_Logged;

extern FaultBitFieldType FaultOFSEVETA_OverDetected;
extern FaultBitFieldType FaultOFSEVETA_OverLogged;

extern FaultBitFieldType FaultOFSEVETA_TempDetected;
extern FaultBitFieldType FaultOFSEVETA_TempLogged;

extern FaultBitFieldType FaultOFSMTMTA_OverDetected;
extern FaultBitFieldType FaultOFSMTMTA_OverLogged;

extern FaultBitFieldType FaultOFSMTMTA_TempDetected;
extern FaultBitFieldType FaultOFSMTMTA_TempLogged;

extern FaultBitFieldType FaultOFTASBDS_Detected;
extern FaultBitFieldType FaultOFTASBDS_Logged;

extern FaultBitFieldType FaultOFTASETP_Detected;
extern FaultBitFieldType FaultOFTASETP_Logged;

extern FaultBitFieldType FaultOFTASMTP_Detected;
extern FaultBitFieldType FaultOFTASMTP_Logged;

extern FaultBitFieldType FaultOFTASOSP_Detected;
extern FaultBitFieldType FaultOFTASOSP_Logged;

extern FaultBitFieldType FaultOFTCMSCS_Detected;
extern FaultBitFieldType FaultOFTCMSCS_Logged;

extern FaultBitFieldType FaultOFTCMTCS_Detected;
extern FaultBitFieldType FaultOFTCMTCS_Logged;

extern FaultBitFieldType FaultOFTMTLCS_Detected;
extern FaultBitFieldType FaultOFTMTLCS_Logged;

extern FaultBitFieldType FaultOFTSLOBS_Detected;
extern FaultBitFieldType FaultOFTSLOBS_Logged;

extern FaultBitFieldType FaultRCEVETA_Detected;
extern FaultBitFieldType FaultRCEVETA_Logged;

extern FaultBitFieldType FaultRCEVETA_OverTempDetected;
extern FaultBitFieldType FaultRCEVETA_OverTempLogged;

extern FaultBitFieldType FaultRCEVLCS_Detected;
extern FaultBitFieldType FaultRCEVLCS_Logged;

extern FaultBitFieldType FaultRCSMACS_Detected;
extern FaultBitFieldType FaultRCSMACS_Logged;

extern FaultBitFieldType FaultRCSMACS_BatHeatDetected;
extern FaultBitFieldType FaultRCSMACS_BatHeatLogged;

extern FaultBitFieldType FaultRCSMACS_EACDetected;
extern FaultBitFieldType FaultRCSMACS_EACLogged;

extern FaultBitFieldType FaultRCSMACS_FastChgNegDetected;
extern FaultBitFieldType FaultRCSMACS_FastChgNegLogged;

extern FaultBitFieldType FaultRCSMACS_FastChgPosDetected;
extern FaultBitFieldType FaultRCSMACS_FastChgPosLogged;

extern FaultBitFieldType FaultRCSMACS_MainPosDetected;
extern FaultBitFieldType FaultRCSMACS_MainPosLogged;

extern FaultBitFieldType FaultRCSMACS_PreMainDetected;
extern FaultBitFieldType FaultRCSMACS_PreMainLogged;

extern FaultBitFieldType FaultRCSMACS_SCUDetected;
extern FaultBitFieldType FaultRCSMACS_SCULogged;

extern FaultBitFieldType FaultSDMTMEP_Detected;
extern FaultBitFieldType FaultSDMTMEP_Logged;




# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 1627 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h" 2
# 31 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h"
# 1 ".\\output\\inc/DSM_Drv.h" 1
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 2
# 336 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 337 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 2

extern uint8 FaultDetn_u8Read_FailureLevel(void);




extern uint16 FaultDetn_u16Read_ABSW_COM_BusOff_CAN1Detected(void);
extern uint16 FaultDetn_u16Read_ABSW_COM_TimoutRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW2_FPGA_OverVoltVBatDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_HDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_LDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurUIDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurVIDetected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurWIDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_VoltageGndDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_VoltageVccDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_P5VRefADCFltDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_IgbtTempRationalDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempNTC1CmdBoardDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempDrvLeftDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempIgbtLeftDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempIgbtLeftGndDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempIgbtLeftVccDetected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_OverTempWdgHead1Detected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempWindingHead1GndDetected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempWindingHead1VccDetected(void);
extern uint16 FaultDetn_u16Read_AFTASBDS_BattVoltDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_AFTASETP_PmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_AFTASMTP_Wndg1DeratingActDetected(void);
extern uint16 FaultDetn_u16Read_AFTASOSP_MotorSpdDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_AFTCMSCS_SpeedDiffDetected(void);
extern uint16 FaultDetn_u16Read_AFTCMTCS_VoltageMarginLowDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_ContorOverLoadDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurrentSumErrorDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_GNDDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_VCCDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_GNDDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_VCCDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_GNDDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_VCCDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_MotorOverLoadDetected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_RunForLongTimeDetected(void);
extern uint16 FaultDetn_u16Read_AFTSLOBS_SpeedImbalanceDetected(void);
extern uint16 FaultDetn_u16Read_BSW_COM_BusOff_CAN1Detected(void);
extern uint16 FaultDetn_u16Read_BSW_COM_RcErrRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_BSW_COM_TimoutRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_FPGA_OverVoltVBatDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_SelfTst_InterLockDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_IGBT_HDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_IGBT_LDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurUIDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurVIDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurWIDetected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_OCDataNotRationalDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_VoltageGndDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_VoltageVccDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_P5VRefADCFltDetected(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_IgbtTempRationalDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempNTC1CmdBoardDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempDrvLeftDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempIgbtLeftDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempIgbtLeftGndDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempIgbtLeftVccDetected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverTempWdgHead1Detected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverTempWdgHead2Detected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempWindingHead1GndDetected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempWindingHead1VccDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_ExcGenerationDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLGndDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLOpenDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLVccDetected(void);
extern uint16 FaultDetn_u16Read_FSSMACS_AkdFailFlagDetected(void);
extern uint16 FaultDetn_u16Read_FTASBDS_BattVoltDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTASETP_EstPmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTASETP_PmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_Wndg1DeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgRateDrt1Detected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgRateDrt2Detected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgUnderRateDrt1Detected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgUnderRateDrt2Detected(void);
extern uint16 FaultDetn_u16Read_FTASOSP_MotorSpdDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_FTCMSCS_SpdOvershootDetected(void);
extern uint16 FaultDetn_u16Read_FTCMTCS_VoltageMarginLowDetected(void);
extern uint16 FaultDetn_u16Read_FTEVEIT_EstOverTempDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurrentSumErrorDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_GNDDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_VCCDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaV_GNDDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaV_VCCDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaW_GNDDetected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaW_VCCDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_BusOff_CAN1Detected(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_RcErrRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_TimoutRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_FPGA_OverVoltVBatDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_SelfTst_InterLockDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_HDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_LDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurUIDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurVIDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurWIDetected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_OCDataNotRationalDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_VoltageGndDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_VoltageVccDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_P5VRefADCFltDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_IgbtTempRationalDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempNTC1CmdBoardDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempDrvLeftDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempIgbtLeftDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempIgbtLeftGndDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempIgbtLeftVccDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverTempWdgHead1Detected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverTempWdgHead2Detected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempWindingHead1GndDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempWindingHead1VccDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_ExcGenerationDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLGndDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLOpenDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLVccDetected(void);
extern uint16 FaultDetn_u16Read_GFSSMACS_AkdFailFlagDetected(void);
extern uint16 FaultDetn_u16Read_GFTASBDS_BattVoltDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTASETP_EstPmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTASETP_PmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_Wndg1DeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgRateDrt1Detected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgRateDrt2Detected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgUnderRateDrt1Detected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgUnderRateDrt2Detected(void);
extern uint16 FaultDetn_u16Read_GFTASOSP_MotorSpdDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_GFTCMSCS_SpdOvershootDetected(void);
extern uint16 FaultDetn_u16Read_GFTCMTCS_VoltageMarginLowDetected(void);
extern uint16 FaultDetn_u16Read_GFTEVEIT_EstOverTempDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurrentSumErrorDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaU_GNDDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaU_VCCDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaV_GNDDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaV_VCCDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaW_GNDDetected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaW_VCCDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_CosGndDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_CosVccDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_OverSpeedDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_ResSquaSumErrByFTDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SinGndDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SinVccDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SpeedWarnDetected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_UnderSpeedDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_BusOff_CAN1Detected(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_TimoutRxVCUDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW2_FPGA_OverVoltVBatDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_HDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_LDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurUIDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurVIDetected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurWIDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_VoltageGndDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_VoltageVccDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_OverVoltageDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_P5VRefADCFltDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_UnderVoltageDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_IgbtTempRationalDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempNTC1CmdBoardDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempDrvLeftDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempIgbtLeftDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempIgbtLeftGndDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempIgbtLeftVccDetected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_OverTempWdgHead1Detected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempWindingHead1GndDetected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempWindingHead1VccDetected(void);
extern uint16 FaultDetn_u16Read_OFTASBDS_BattVoltDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_OFTASETP_PmDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_OFTASMTP_Wndg1DeratingActDetected(void);
extern uint16 FaultDetn_u16Read_OFTASOSP_MotorSpdDeratingActDetected(void);
extern uint16 FaultDetn_u16Read_OFTCMSCS_SpeedDiffDetected(void);
extern uint16 FaultDetn_u16Read_OFTCMTCS_VoltageMarginLowDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_ContorOverLoadDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurrentSumErrorDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_GNDDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_VCCDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_GNDDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_VCCDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_GNDDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_VCCDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_MotorOverLoadDetected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_RunForLongTimeDetected(void);
extern uint16 FaultDetn_u16Read_OFTSLOBS_SpeedImbalanceDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_BatNegCopShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_BatPosCopShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_MainPosCopShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_ReserveCopShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad1ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad2ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad3ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad4ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad5ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad6ShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempBatNegCopDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempBatPosCopDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempMainPosCopDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempReserveCopDetected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad1Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad2Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad3Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad4Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad5Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad6Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad1Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad2Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad3Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad4Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad5Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad6Detected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad1CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad2CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad3CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad4CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad5CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad6CurShortDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatCmdOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACCmdOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosCmdOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUCmdOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatWeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACWeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4DrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4PreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4PreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4WeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosWeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainWeledDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUDrvErrDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUPreFailedDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUPreOverTimeDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUWeledDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_CosGndDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_CosVccDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_OverSpeedDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_ResSquaSumErrByFTDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SinGndDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SinVccDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SpeedWarnDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_UnderSpeedDetected(void);

extern uint16 FaultDetn_u16Read_ABSW_COM_Detected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW2_Detected(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_Detected(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_Detected(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_Detected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverDetected(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempDetected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_OverDetected(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempDetected(void);
extern uint16 FaultDetn_u16Read_AFTASBDS_Detected(void);
extern uint16 FaultDetn_u16Read_AFTASETP_Detected(void);
extern uint16 FaultDetn_u16Read_AFTASMTP_Detected(void);
extern uint16 FaultDetn_u16Read_AFTASOSP_Detected(void);
extern uint16 FaultDetn_u16Read_AFTCMSCS_Detected(void);
extern uint16 FaultDetn_u16Read_AFTCMTCS_Detected(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_Detected(void);
extern uint16 FaultDetn_u16Read_AFTSLOBS_Detected(void);
extern uint16 FaultDetn_u16Read_BSW_COM_Detected(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_Detected(void);
extern uint16 FaultDetn_u16Read_BSW_HW_Detected(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_Detected(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_Detected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverDetected(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempDetected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverDetected(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempDetected(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_Detected(void);
extern uint16 FaultDetn_u16Read_FSSMACS_Detected(void);
extern uint16 FaultDetn_u16Read_FTASBDS_Detected(void);
extern uint16 FaultDetn_u16Read_FTASETP_Detected(void);
extern uint16 FaultDetn_u16Read_FTASMTP_Detected(void);
extern uint16 FaultDetn_u16Read_FTASOSP_Detected(void);
extern uint16 FaultDetn_u16Read_FTCMSCS_Detected(void);
extern uint16 FaultDetn_u16Read_FTCMTCS_Detected(void);
extern uint16 FaultDetn_u16Read_FTEVEIT_Detected(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_Detected(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_Detected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_Detected(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_Detected(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_Detected(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_Detected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverDetected(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempDetected(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_Detected(void);
extern uint16 FaultDetn_u16Read_GFSSMACS_Detected(void);
extern uint16 FaultDetn_u16Read_GFTASBDS_Detected(void);
extern uint16 FaultDetn_u16Read_GFTASETP_Detected(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_Detected(void);
extern uint16 FaultDetn_u16Read_GFTASOSP_Detected(void);
extern uint16 FaultDetn_u16Read_GFTCMSCS_Detected(void);
extern uint16 FaultDetn_u16Read_GFTCMTCS_Detected(void);
extern uint16 FaultDetn_u16Read_GFTEVEIT_Detected(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_Detected(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_Detected(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_Detected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW2_Detected(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_Detected(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_Detected(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_Detected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverDetected(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempDetected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_OverDetected(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempDetected(void);
extern uint16 FaultDetn_u16Read_OFTASBDS_Detected(void);
extern uint16 FaultDetn_u16Read_OFTASETP_Detected(void);
extern uint16 FaultDetn_u16Read_OFTASMTP_Detected(void);
extern uint16 FaultDetn_u16Read_OFTASOSP_Detected(void);
extern uint16 FaultDetn_u16Read_OFTCMSCS_Detected(void);
extern uint16 FaultDetn_u16Read_OFTCMTCS_Detected(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_Detected(void);
extern uint16 FaultDetn_u16Read_OFTSLOBS_Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_Detected(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempDetected(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_Detected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_Detected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNegDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPosDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainDetected(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUDetected(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_Detected(void);





extern uint16 FaultDetn_u16Read_ABSW_COM_BusOff_CAN1Logged(void);
extern uint16 FaultDetn_u16Read_ABSW_COM_TimoutRxVCULogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW2_FPGA_OverVoltVBatLogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_HLogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_LLogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurUILogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurVILogged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurWILogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_VoltageGndLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_VoltageVccLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_P5VRefADCFltLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_IgbtTempRationalLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempNTC1CmdBoardLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempDrvLeftLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverTempIgbtLeftLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempIgbtLeftGndLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempIgbtLeftVccLogged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_OverTempWdgHead1Logged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempWindingHead1GndLogged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempWindingHead1VccLogged(void);
extern uint16 FaultDetn_u16Read_AFTASBDS_BattVoltDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_AFTASETP_PmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_AFTASMTP_Wndg1DeratingActLogged(void);
extern uint16 FaultDetn_u16Read_AFTASOSP_MotorSpdDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_AFTCMSCS_SpeedDiffLogged(void);
extern uint16 FaultDetn_u16Read_AFTCMTCS_VoltageMarginLowLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_ContorOverLoadLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurrentSumErrorLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_GNDLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_VCCLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_GNDLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_VCCLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_GNDLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_VCCLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_MotorOverLoadLogged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_RunForLongTimeLogged(void);
extern uint16 FaultDetn_u16Read_AFTSLOBS_SpeedImbalanceLogged(void);
extern uint16 FaultDetn_u16Read_BSW_COM_BusOff_CAN1Logged(void);
extern uint16 FaultDetn_u16Read_BSW_COM_RcErrRxVCULogged(void);
extern uint16 FaultDetn_u16Read_BSW_COM_TimoutRxVCULogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_FPGA_OverVoltVBatLogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_SelfTst_InterLockLogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_IGBT_HLogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_IGBT_LLogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurUILogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurVILogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_FPGA_OverUnderCurWILogged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_OCDataNotRationalLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_VoltageGndLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_VoltageVccLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_P5VRefADCFltLogged(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_IgbtTempRationalLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempNTC1CmdBoardLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempDrvLeftLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverTempIgbtLeftLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempIgbtLeftGndLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempIgbtLeftVccLogged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverTempWdgHead1Logged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverTempWdgHead2Logged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempWindingHead1GndLogged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempWindingHead1VccLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_ExcGenerationLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLGndLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLOpenLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_SinCosHLVccLogged(void);
extern uint16 FaultDetn_u16Read_FSSMACS_AkdFailFlagLogged(void);
extern uint16 FaultDetn_u16Read_FTASBDS_BattVoltDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTASETP_EstPmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTASETP_PmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_Wndg1DeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgRateDrt1Logged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgRateDrt2Logged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgUnderRateDrt1Logged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_WndgUnderRateDrt2Logged(void);
extern uint16 FaultDetn_u16Read_FTASOSP_MotorSpdDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_FTCMSCS_SpdOvershootLogged(void);
extern uint16 FaultDetn_u16Read_FTCMTCS_VoltageMarginLowLogged(void);
extern uint16 FaultDetn_u16Read_FTEVEIT_EstOverTempLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurrentSumErrorLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_GNDLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaU_VCCLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaV_GNDLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaV_VCCLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaW_GNDLogged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_CurSenrPhaW_VCCLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_BusOff_CAN1Logged(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_RcErrRxVCULogged(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_TimoutRxVCULogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_FPGA_OverVoltVBatLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_SelfTst_InterLockLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_HLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_IGBT_LLogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurUILogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurVILogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_FPGA_OverUnderCurWILogged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_OCDataNotRationalLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_VoltageGndLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_VoltageVccLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_P5VRefADCFltLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_IgbtTempRationalLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempNTC1CmdBoardLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempDrvLeftLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverTempIgbtLeftLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempIgbtLeftGndLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempIgbtLeftVccLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverTempWdgHead1Logged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverTempWdgHead2Logged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempWindingHead1GndLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempWindingHead1VccLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_ExcGenerationLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLGndLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLOpenLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_SinCosHLVccLogged(void);
extern uint16 FaultDetn_u16Read_GFSSMACS_AkdFailFlagLogged(void);
extern uint16 FaultDetn_u16Read_GFTASBDS_BattVoltDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTASETP_EstPmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTASETP_PmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_Wndg1DeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgRateDrt1Logged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgRateDrt2Logged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgUnderRateDrt1Logged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_WndgUnderRateDrt2Logged(void);
extern uint16 FaultDetn_u16Read_GFTASOSP_MotorSpdDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_GFTCMSCS_SpdOvershootLogged(void);
extern uint16 FaultDetn_u16Read_GFTCMTCS_VoltageMarginLowLogged(void);
extern uint16 FaultDetn_u16Read_GFTEVEIT_EstOverTempLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurrentSumErrorLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaU_GNDLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaU_VCCLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaV_GNDLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaV_VCCLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaW_GNDLogged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_CurSenrPhaW_VCCLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_CosGndLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_CosVccLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_OverSpeedLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_ResSquaSumErrByFTLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SinGndLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SinVccLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_SpeedWarnLogged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_UnderSpeedLogged(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_BusOff_CAN1Logged(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_TimoutRxVCULogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW2_FPGA_OverVoltVBatLogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_HLogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_LLogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurUILogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurVILogged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurWILogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_VoltageGndLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_VoltageVccLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_OverVoltageLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_P5VRefADCFltLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_UnderVoltageLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_IgbtTempRationalLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempNTC1CmdBoardLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempDrvLeftLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverTempIgbtLeftLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempIgbtLeftGndLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempIgbtLeftVccLogged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_OverTempWdgHead1Logged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempWindingHead1GndLogged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempWindingHead1VccLogged(void);
extern uint16 FaultDetn_u16Read_OFTASBDS_BattVoltDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_OFTASETP_PmDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_OFTASMTP_Wndg1DeratingActLogged(void);
extern uint16 FaultDetn_u16Read_OFTASOSP_MotorSpdDeratingActLogged(void);
extern uint16 FaultDetn_u16Read_OFTCMSCS_SpeedDiffLogged(void);
extern uint16 FaultDetn_u16Read_OFTCMTCS_VoltageMarginLowLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_ContorOverLoadLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurrentSumErrorLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_GNDLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_VCCLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_GNDLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_VCCLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_GNDLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_VCCLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_MotorOverLoadLogged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_RunForLongTimeLogged(void);
extern uint16 FaultDetn_u16Read_OFTSLOBS_SpeedImbalanceLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_BatNegCopShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_BatPosCopShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_MainPosCopShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_ReserveCopShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad1ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad2ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad3ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad4ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad5ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_SmlLoad6ShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempBatNegCopLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempBatPosCopLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempMainPosCopLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempReserveCopLogged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad1Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad2Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad3Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad4Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad5Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempSmlLoad6Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad1Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad2Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad3Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad4Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad5Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_OverCurSmlLoad6Logged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad1CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad2CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad3CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad4CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad5CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_SmlLoad6CurShortLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatCmdOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACCmdOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosCmdOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUCmdOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatWeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACWeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg1WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg2WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg3WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNeg4WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos1WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos2WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos3WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4DrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4PreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4PreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPos4WeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosWeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainWeledLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUDrvErrLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUPreFailedLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUPreOverTimeLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCUWeledLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_CosGndLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_CosVccLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_OverSpeedLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_ResSquaSumErrByFTLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SinGndLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SinVccLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_SpeedWarnLogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_UnderSpeedLogged(void);
# 1310 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h"
extern uint16 FaultDetn_u16Read_ABSW_COM_Logged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW2_Logged(void);
extern uint16 FaultDetn_u16Read_ABSW_HW_Logged(void);
extern uint16 FaultDetn_u16Read_AFSEVBHV_Logged(void);
extern uint16 FaultDetn_u16Read_AFSEVBLV_Logged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_OverLogged(void);
extern uint16 FaultDetn_u16Read_AFSEVETA_TempLogged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_OverLogged(void);
extern uint16 FaultDetn_u16Read_AFSMTMTA_TempLogged(void);
extern uint16 FaultDetn_u16Read_AFTASBDS_Logged(void);
extern uint16 FaultDetn_u16Read_AFTASETP_Logged(void);
extern uint16 FaultDetn_u16Read_AFTASMTP_Logged(void);
extern uint16 FaultDetn_u16Read_AFTASOSP_Logged(void);
extern uint16 FaultDetn_u16Read_AFTCMSCS_Logged(void);
extern uint16 FaultDetn_u16Read_AFTCMTCS_Logged(void);
extern uint16 FaultDetn_u16Read_AFTMTLCS_Logged(void);
extern uint16 FaultDetn_u16Read_AFTSLOBS_Logged(void);
extern uint16 FaultDetn_u16Read_BSW_COM_Logged(void);
extern uint16 FaultDetn_u16Read_BSW_HW2_Logged(void);
extern uint16 FaultDetn_u16Read_BSW_HW_Logged(void);
extern uint16 FaultDetn_u16Read_FSEVBHV_Logged(void);
extern uint16 FaultDetn_u16Read_FSEVBLV_Logged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_OverLogged(void);
extern uint16 FaultDetn_u16Read_FSEVETA_TempLogged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_OverLogged(void);
extern uint16 FaultDetn_u16Read_FSMTMTA_TempLogged(void);
extern uint16 FaultDetn_u16Read_FSMTRDG_Logged(void);
extern uint16 FaultDetn_u16Read_FSSMACS_Logged(void);
extern uint16 FaultDetn_u16Read_FTASBDS_Logged(void);
extern uint16 FaultDetn_u16Read_FTASETP_Logged(void);
extern uint16 FaultDetn_u16Read_FTASMTP_Logged(void);
extern uint16 FaultDetn_u16Read_FTASOSP_Logged(void);
extern uint16 FaultDetn_u16Read_FTCMSCS_Logged(void);
extern uint16 FaultDetn_u16Read_FTCMTCS_Logged(void);
extern uint16 FaultDetn_u16Read_FTEVEIT_Logged(void);
extern uint16 FaultDetn_u16Read_FTMTLCS_Logged(void);
extern uint16 FaultDetn_u16Read_GBSW_COM_Logged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW2_Logged(void);
extern uint16 FaultDetn_u16Read_GBSW_HW_Logged(void);
extern uint16 FaultDetn_u16Read_GFSEVBHV_Logged(void);
extern uint16 FaultDetn_u16Read_GFSEVBLV_Logged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_OverLogged(void);
extern uint16 FaultDetn_u16Read_GFSEVETA_TempLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_OverLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTMTA_TempLogged(void);
extern uint16 FaultDetn_u16Read_GFSMTRDG_Logged(void);
extern uint16 FaultDetn_u16Read_GFSSMACS_Logged(void);
extern uint16 FaultDetn_u16Read_GFTASBDS_Logged(void);
extern uint16 FaultDetn_u16Read_GFTASETP_Logged(void);
extern uint16 FaultDetn_u16Read_GFTASMTP_Logged(void);
extern uint16 FaultDetn_u16Read_GFTASOSP_Logged(void);
extern uint16 FaultDetn_u16Read_GFTCMSCS_Logged(void);
extern uint16 FaultDetn_u16Read_GFTCMTCS_Logged(void);
extern uint16 FaultDetn_u16Read_GFTEVEIT_Logged(void);
extern uint16 FaultDetn_u16Read_GFTMTLCS_Logged(void);
extern uint16 FaultDetn_u16Read_GSDMTMEP_Logged(void);
extern uint16 FaultDetn_u16Read_OBSW_COM_Logged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW2_Logged(void);
extern uint16 FaultDetn_u16Read_OBSW_HW_Logged(void);
extern uint16 FaultDetn_u16Read_OFSEVBHV_Logged(void);
extern uint16 FaultDetn_u16Read_OFSEVBLV_Logged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_OverLogged(void);
extern uint16 FaultDetn_u16Read_OFSEVETA_TempLogged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_OverLogged(void);
extern uint16 FaultDetn_u16Read_OFSMTMTA_TempLogged(void);
extern uint16 FaultDetn_u16Read_OFTASBDS_Logged(void);
extern uint16 FaultDetn_u16Read_OFTASETP_Logged(void);
extern uint16 FaultDetn_u16Read_OFTASMTP_Logged(void);
extern uint16 FaultDetn_u16Read_OFTASOSP_Logged(void);
extern uint16 FaultDetn_u16Read_OFTCMSCS_Logged(void);
extern uint16 FaultDetn_u16Read_OFTCMTCS_Logged(void);
extern uint16 FaultDetn_u16Read_OFTMTLCS_Logged(void);
extern uint16 FaultDetn_u16Read_OFTSLOBS_Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_Logged(void);
extern uint16 FaultDetn_u16Read_RCEVETA_OverTempLogged(void);
extern uint16 FaultDetn_u16Read_RCEVLCS_Logged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_Logged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_BatHeatLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_EACLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgNegLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_FastChgPosLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_MainPosLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_PreMainLogged(void);
extern uint16 FaultDetn_u16Read_RCSMACS_SCULogged(void);
extern uint16 FaultDetn_u16Read_SDMTMEP_Logged(void);



# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 1403 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Api.h" 2
# 32 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h" 2
# 1 ".\\output\\inc/DSM.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h" 1
# 2 ".\\output\\inc/DSM.h" 2
# 33 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT.h" 2
# 2 ".\\output\\inc/Fault.h" 2
# 30 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2
# 39 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
enum{
   TLE9180_MODE_INIT = 0,
   TLE9180_MODE_INIT_CHECK,
   TLE9180_SELF_TEST,
   TLE9180_WAIT_PWM_READY,
   TLE9180_MODE_NORMAL,
   TLE9180_MODE_SAFEOFF,
   TLE9180_MODE_ERR_FOUND,
   TLE9180_MODE_ERR_COUNT,
   TLE9180_MODE_ERR_TRY_CLEAR,
   TLE9180_MODE_ERR_RECOVER,
   TLE9180_MODE_FAULT_STT,
   TLE9180_MODE_REINIT,
   TLE9180_MODE_PRE_REINIT,
   TLE9180_MODE_COM_ONGOING,

   TLE9180_MODE_INVALID = 0xFF
};

enum{
   TLE9180_SELFTST_IDLE = 0,
   TLE9180_SELFTST_START,
   TLE9180_SELFTST_CHKMOD,
   TLE9180_SELFTST_SCD_HS,
   TLE9180_SELFTST_SCD_LS,
   TLE9180_SELFTST_VREG_OP,
   TLE9180_SELFTST_FINISH,
   TLE9180_SELFTST_RDMOD
};

enum{
   TLE9180_COM_IDLE = 0,
   TLE9180_COM_START,
   TLE9180_COM_EXTRACT_DATA,
   TLE9180_COM_END
};
# 95 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
static uint16 TLE9180_au16SpiTxFrame[(30)];
static uint16 TLE9180_au16SpiTxCfgAddr[(30)];
static uint16 TLE9180_au16SpiTxCfgData[(30)];
static uint16 TLE9180_au16SpiRxCfgData[(30)];

static uint8 TLE9180_u8TgtMode;
static uint8 TLE9180_u8ComState;

static CDD_tTransParam TLE9180_xTsParam;





# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 140 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section ".text" ax
# 110 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2
static void TLE9180_vidReadCfgRegs(void);
static void TLE9180_vidGetErrFlagFromSpiBuf(void);
static void TLE9180_vidReinit(void);
static uint8 TLE9180_CalculateCRC3(uint8 *message, uint8 len);
static uint8 TLE9180_CalculateCRC8(const uint8 * Crc_DataPtr, uint32 Crc_Length);
static uint32 TLE9180_u32CalcReadReg(uint8 u8RegAddr, uint8 u8Data);
static uint32 TLE9180_u32CalcWriteReg(uint8 u8RegAddr, uint8 u8Data);
static boolean TLE9180_bComMainfunction(void);

static inline void TLE9180_vidLoadCfgToRegs(void);
static inline void TLE9180_vidJumpToState(const uint8 ku8State);

static inline void TLE9180_vidTrigCom(const uint8 ku8TgtState);


static inline void TLE9180_vidCalcStateRegs(void);
static void TLE9180_vidSelfTestMng(const uint8 u8SelfTestStep);
static void TLE9180_vidTstReadReg(void);
static void TLE9180_vidTstWriteReg(void);
static void TLE9180_vidReadErrRegs(void);
static void TLE9180_vidGenTransParam(const uint32 * const kpku32SrcBuf, uint32 * const kpu32DestBuf, const uint32 ku32Num);


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 181 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section
# 134 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2





# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 140 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section ".text" ax
# 140 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2
# 150 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
void TLE9180_vidInit(void)
{
   TLE9180_u8ReCfgCnt = 0;
   TLE9180_u8RdRegTimCnt = 0;
   TLE9180_u8ReadRegAddr = 0;
   TLE9180_u8WriteRegAddr = 0;
   TLE9180_u8ErrRecoverCnt = 0;
   TLE9180_u8InitFailedCnt = 0;
   TLE9180_u16ErrPinChkCnt = 0;
   TLE9180_u16EnaResetTime = 0;
   TLE9180_bTestReadReg = (0 != 0);
   TLE9180_bTestWriteReg = (0 != 0);
   TLE9180_bPhaseShortLow = (0 != 0);
   TLE9180_bPhaseShortHigh = (0 != 0);
   TLE9180_bDrvOverCurrent = (0 != 0);
   TLE9180_bDrvOverVoltage = (0 != 0);
   TLE9180_bDrvUnderVoltage = (0 != 0);
   TLE9180_bDrvOverTemp = (0 != 0);
   TLE9180_bReadErrInfoFlg = (0 != 0);
   TLE9180_bInitFailFlg = (0 != 0);
   TLE9180_bErrorPinLevel = (0 != 0);
   TLE9180_bPhsOverVolt = (0 != 0);
   TLE9180_bIsInIdleMode = (0 != 0);
   TLE9180_bIsInCfgLockMode = (0 != 0);
   TLE9180_u8Mode = TLE9180_MODE_INIT;
   TLE9180_u8SelfTestStep = TLE9180_SELFTST_IDLE;

   TLE9180_vidHalSpiInit();

   TLE9180_vidHalWriteEnaPin(eCDD_PIN_HIGH);
   TLE9180_vidHalWriteInhPin(eCDD_PIN_HIGH);
   TLE9180_vidHalWriteSoffPin(eCDD_PIN_LOW);

   TLE9180_vidLoadCfgToRegs();
   TLE9180_vidCalcStateRegs();

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_u8Mode);
}

void TLE9180_vidMainFunction(void)
{
   uint8 u8LocIdx;
   boolean bTcuReadySts;
   boolean bPwmReadySts;

   bTcuReadySts = TLE9180_bHalSysIsReady();
   TLE9180_bErrorPinLevel = TLE9180_bHalICIsNormal();

   switch(TLE9180_u8Mode)
   {
      case TLE9180_MODE_INIT:
      {

         TLE9180_vidHalWriteEnaPin(eCDD_PIN_HIGH);
         TLE9180_vidHalWriteInhPin(eCDD_PIN_HIGH);
         TLE9180_vidHalWriteSoffPin(eCDD_PIN_LOW);

         TLE9180_vidReadCfgRegs();
         break;
      }

      case TLE9180_MODE_INIT_CHECK:
      {
         TLE9180_bInitFailFlg = (0 != 0);

         for(u8LocIdx = 0; u8LocIdx < (TLE9180_u8SpiTxFrameMaxNb - 1); u8LocIdx++)
         {
            TLE9180_au8CfgRegReadBk[u8LocIdx] = (uint8)((TLE9180_au32SpiReadFrame[u8LocIdx + 1] >> 4) & 0x000000FF);

            if (TLE9180_au8CfgRegReadBk[u8LocIdx] != TLE9180_au8CfgRegister[u8LocIdx])
            {
               TLE9180_bInitFailFlg = (1 != 0);
               break;
            }
         }


         if(TLE9180_bInitFailFlg)
         {
            if(TLE9180_u8InitFailedCnt < TLE9180_ku8MaxInitTimeC)
            {
               TLE9180_u8InitFailedCnt++;
               TLE9180_vidJumpToState(TLE9180_MODE_REINIT);

               TLE9180_vidHalWriteEnaPin(eCDD_PIN_LOW);
               TLE9180_vidHalWriteInhPin(eCDD_PIN_LOW);
               TLE9180_vidHalWriteSoffPin(eCDD_PIN_LOW);
            }
            else
            {
               TLE9180_vidJumpToState(TLE9180_WAIT_PWM_READY);
            }
         }
         else
         {
            TLE9180_vidJumpToState(TLE9180_WAIT_PWM_READY);
         }
         break;
      }

      case TLE9180_MODE_PRE_REINIT:
      {
         TLE9180_vidHalWriteInhPin(eCDD_PIN_HIGH);
         TLE9180_vidJumpToState(TLE9180_MODE_REINIT);

         if(((1 != 0) == TLE9180_bIsInIdleMode)
         || ((1 != 0) == TLE9180_bIsInCfgLockMode))
         {
            TLE9180_bIsModeReq = (1 != 0);
            TLE9180_bIsInIdleMode = (0 != 0);
            TLE9180_bIsInCfgLockMode = (0 != 0);
         }
         break;
      }

      case TLE9180_MODE_REINIT:
      {
         TLE9180_vidHalWriteInhPin(eCDD_PIN_HIGH);

         TLE9180_vidReinit();
         break;
      }

      case TLE9180_SELF_TEST:
      {
         TLE9180_u8SelfTestStep++;
         if (TLE9180_u8SelfTestStep <= TLE9180_SELFTST_RDMOD)
         {
            TLE9180_vidSelfTestMng(TLE9180_u8SelfTestStep);
         }
         else
         {
            TLE9180_u8SelfTestStep = TLE9180_SELFTST_IDLE;
            TLE9180_vidJumpToState(TLE9180_MODE_NORMAL);
         }
         break;
      }

      case TLE9180_WAIT_PWM_READY:
      {
         TLE9180_vidHalWriteSoffPin(eCDD_PIN_LOW);
         bPwmReadySts = TLE9180_bHalPwmIsReady();

         if((1 != 0) == bPwmReadySts)
         {
            TLE9180_vidJumpToState(TLE9180_MODE_NORMAL);
         }
      }

      case TLE9180_MODE_NORMAL:
      {
         TLE9180_vidHalWriteEnaPin(eCDD_PIN_HIGH);
         TLE9180_vidHalWriteInhPin(eCDD_PIN_HIGH);
         TLE9180_vidHalWriteSoffPin(eCDD_PIN_HIGH);

         if((0 != 0) == TLE9180_bErrorPinLevel)
         {
            TLE9180_u8RdRegTimCnt = 0;
            TLE9180_vidJumpToState(TLE9180_MODE_ERR_FOUND);
         }
         else
         {
            TLE9180_bDrvOverCurrent = (0 != 0);
            TLE9180_bDrvOverTemp = (0 != 0);
            TLE9180_bDrvOverVoltage = (0 != 0);
            TLE9180_bDrvUnderVoltage = (0 != 0);
            TLE9180_bPhaseShortHigh = (0 != 0);
            TLE9180_bPhaseShortLow = (0 != 0);
            TLE9180_bPhsOverVolt = (0 != 0);

            if(TLE9180_bTestWriteReg)
            {
               TLE9180_vidTstWriteReg();
            }
            else if(TLE9180_bTestReadReg)
            {
               TLE9180_vidTstReadReg();
            }
            else
            {

            }
         }
         break;
      }

      case TLE9180_MODE_SAFEOFF:
      {

         TLE9180_vidHalWriteEnaPin(eCDD_PIN_HIGH);
         TLE9180_vidHalWriteSoffPin(eCDD_PIN_LOW);
         break;
      }

      case TLE9180_MODE_ERR_FOUND:
      {

         if((0 != 0) == TLE9180_bErrorPinLevel)
         {
            if (TLE9180_u16ErrPinChkCnt < TLE9180_ku16ErrPinChkTimC)
            {
               TLE9180_u16ErrPinChkCnt++;
            }
            else
            {
               TLE9180_u16ErrPinChkCnt = 0;
               TLE9180_vidReadErrRegs();
            }
         }
         else
         {
            TLE9180_u16ErrPinChkCnt = 0;
            TLE9180_vidJumpToState(TLE9180_MODE_NORMAL);
         }
         break;
      }

      case TLE9180_MODE_ERR_COUNT:
      {
         TLE9180_vidGetErrFlagFromSpiBuf();
         if(1)
         {
            TLE9180_u8ErrRecoverCnt++;
            TLE9180_vidJumpToState(TLE9180_MODE_ERR_TRY_CLEAR);
         }
         else
         {
            TLE9180_vidJumpToState(TLE9180_MODE_FAULT_STT);
         }
         break;
      }

      case TLE9180_MODE_ERR_TRY_CLEAR:
      {
         if (TLE9180_u16EnaResetTime < TLE9180_ku16EnaResetTimeC)
         {
            TLE9180_u16EnaResetTime++;
            TLE9180_vidHalWriteEnaPin(eCDD_PIN_LOW);
         }
         else
         {

            if((1 != 0) == TLE9180_bErrorPinLevel)
            {
               TLE9180_u16EnaResetTime = 0;
               TLE9180_vidJumpToState(TLE9180_MODE_ERR_RECOVER);
            }
         }
         break;
      }

      case TLE9180_MODE_ERR_RECOVER:
      {

         TLE9180_vidHalWriteEnaPin(eCDD_PIN_HIGH);
         TLE9180_vidHalWriteSoffPin(eCDD_PIN_HIGH);

         TLE9180_u16EnaResetTime = 0;
         TLE9180_u16ErrPinChkCnt = 0;

         TLE9180_vidJumpToState(TLE9180_MODE_NORMAL);
         break;
      }

      case TLE9180_MODE_FAULT_STT:
      {
         TLE9180_vidHalWriteEnaPin(eCDD_PIN_LOW);
         TLE9180_vidHalWriteSoffPin(eCDD_PIN_LOW);
         break;
      }

      default:
         break;
   }

   if(TLE9180_MODE_COM_ONGOING == TLE9180_u8Mode)
   {
      boolean bComIsEnd;
      bComIsEnd = TLE9180_bComMainfunction();

      if(bComIsEnd)
      {
         TLE9180_vidJumpToState(TLE9180_u8TgtMode);
         TLE9180_u8TgtMode = TLE9180_MODE_INVALID;

         TLE9180_bTestReadReg = (0 != 0);
         TLE9180_bTestWriteReg = (0 != 0);
      }
   }

   if (TLE9180_SELF_TEST == TLE9180_u8Mode)
   {
      if(0 == TLE9180_bErrorPinLevel)
      {

      }
      else
      {

      }
   }
   else
   {
      if(((1 != 0) == TLE9180_bIsInIdleMode)
      || ((1 != 0) == TLE9180_bIsInCfgLockMode))
      {
         if(TLE9180_u8ReCfgCnt < TLE9180_ku8MaxReCfgTimeC)
         {
            boolean bBatIsNormal;
            bBatIsNormal = TLE9180_bHalBatIsNormal();

            if((1 != 0) == bBatIsNormal)
            {
               TLE9180_u8ReCfgCnt++;
               TLE9180_vidJumpToState(TLE9180_MODE_PRE_REINIT);
               TLE9180_vidHalWriteInhPin(eCDD_PIN_LOW);
            }
         }
      }

      if(bTcuReadySts)
      {





         if((0 != 0) == TLE9180_bErrorPinLevel)
         {

         }
         else
         {

         }

         if(((1 != 0) == TLE9180_bPhaseShortHigh)
         || ((1 != 0) == TLE9180_bPhaseShortLow))
         {

         }
         else
         {

         }
      }
   }
}
# 509 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
boolean TLE9180_bIsWorkModeNormal(void)
{
   boolean bLocWorkNomal;

   if(TLE9180_MODE_NORMAL == TLE9180_u8Mode)
   {
      bLocWorkNomal = (1 != 0);
   }
   else
   {
      bLocWorkNomal = (0 != 0);
   }

   return bLocWorkNomal;
}

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 181 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section
# 526 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2





# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 140 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section ".text" ax
# 532 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2
static inline void TLE9180_vidJumpToState(const uint8 ku8State)
{
   TLE9180_u8Mode = ku8State;
}

static void TLE9180_vidGetErrFlagFromSpiBuf(void)
{
   uint8 LoccalIndex;

   for(LoccalIndex = 0; LoccalIndex <= 19; LoccalIndex++)
   {
      TLE9180_au8ReadRegs[LoccalIndex] = (TLE9180_au32ErrRegsReadFrame[LoccalIndex + 1] >> 4) & 0x000000FF;
   }


   if((TLE9180_au8ReadRegs[0] & (0x01 << 0)) != 0)
   {
      TLE9180_bIsInIdleMode = (1 != 0);
      TLE9180_bIsInCfgLockMode = (0 != 0);
      TLE9180_au32ErrRegsReadFrame[1] = 0x00;
   }
   else if((TLE9180_au8ReadRegs[0] & (0x01 << 2)) != 0)
   {
      TLE9180_bIsInIdleMode = (0 != 0);
      TLE9180_bIsInCfgLockMode = (1 != 0);
      TLE9180_au32ErrRegsReadFrame[1] = 0x00;
   }
   else
   {
      TLE9180_bIsInIdleMode = (0 != 0);
      TLE9180_bIsInCfgLockMode = (0 != 0);
   }


   if((TLE9180_au8ReadRegs[4] & 0xE0) != 0 )
   {
      TLE9180_bPhsOverVolt = (1 != 0);
   }
   else
   {
      TLE9180_bPhsOverVolt = (0 != 0);
   }


   if(((TLE9180_au8ReadRegs[6] & 0x60) != 0) || ((TLE9180_au8ReadRegs[5] & 0x05) != 0))
   {
      TLE9180_bDrvOverVoltage = (1 != 0);
   }
   else
   {
      TLE9180_bDrvOverVoltage = (0 != 0);
   }


   if(((TLE9180_au8ReadRegs[6] & 0x10) != 0) || ((TLE9180_au8ReadRegs[5] & 0x1A) != 0))
   {
      TLE9180_bDrvUnderVoltage = (1 != 0);
   }
   else
   {
      TLE9180_bDrvUnderVoltage = (0 != 0);
   }


   if((TLE9180_au8ReadRegs[6] & 0x80) != 0)
   {
      TLE9180_bDrvOverTemp = (1 != 0);
   }
   else
   {
      TLE9180_bDrvOverTemp = (0 != 0);
   }


   if((TLE9180_au8ReadRegs[7] & 0xE0) != 0)
   {
      TLE9180_bPhaseShortHigh = (1 != 0);
   }
   else
   {
      TLE9180_bPhaseShortHigh = (0 != 0);
   }


   if((TLE9180_au8ReadRegs[7] & 0x1C) != 0)
   {
      TLE9180_bPhaseShortLow = (1 != 0);
   }
   else
   {
      TLE9180_bPhaseShortLow = (0 != 0);
   }


   if((TLE9180_au8ReadRegs[11] & 0x11) != 0)
   {
      TLE9180_bDrvOverCurrent = (1 != 0);
   }
   else
   {
      TLE9180_bDrvOverCurrent = (0 != 0);
   }
}







static void TLE9180_vidReinit(void)
{
   uint8 u8Signature = 0;
   uint8 u8CopyIndex;

   TLE9180_u8SpiTxFrameMaxNb = 21;

   for(u8CopyIndex = 0; u8CopyIndex < TLE9180_u8SpiTxFrameMaxNb; u8CopyIndex++)
   {
      TLE9180_au32SpiWriteFrame[u8CopyIndex] = TLE9180_au32ICInitSpiFrame[u8CopyIndex];
   }

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);

   if((1 != 0) == TLE9180_bIsModeReq)
   {
      TLE9180_bIsModeReq = (0 != 0);
      TLE9180_vidTrigCom(TLE9180_MODE_NORMAL);
   }
   else
   {

      TLE9180_vidTrigCom(TLE9180_MODE_INIT);
   }
}

static inline void TLE9180_vidLoadCfgToRegs(void)
{
   uint8 u8Signature;
   uint8 u8CopyIndex;


   TLE9180_au8CfgRegister[0x00] = 0xBA;
   TLE9180_au8CfgRegister[0x01] = 0x80;
   TLE9180_au8CfgRegister[0x02] = 0x03;
   TLE9180_au8CfgRegister[0x03] = 0x1C;
   TLE9180_au8CfgRegister[0x04] = 0x56;
   TLE9180_au8CfgRegister[0x05] = 0x07;
   TLE9180_au8CfgRegister[0x06] = 0xA0;
   TLE9180_au8CfgRegister[0x07] = 0x95;
   TLE9180_au8CfgRegister[0x08] = 0x30;
   TLE9180_au8CfgRegister[0x09] = 0x70;
   TLE9180_au8CfgRegister[0x0A] = 0x10;
   TLE9180_au8CfgRegister[0x0B] = 0x20;
   TLE9180_au8CfgRegister[0x0C] = 0x60;
   TLE9180_au8CfgRegister[0x0D] = 0x0E;
   TLE9180_au8CfgRegister[0x0E] = 0x0E;
   TLE9180_au8CfgRegister[0x0F] = 0x85;
   TLE9180_au8CfgRegister[0x10] = 0x50;
   TLE9180_au8CfgRegister[0x11] = 0x0E;
   TLE9180_au8CfgRegister[0x12] = 0x02;
   TLE9180_au8CfgRegister[0x13] = 0x00;


   TLE9180_au8CfgRegister[0x01] = 0x41;
   TLE9180_au8CfgRegister[0x02] = 0x01;
   TLE9180_au8CfgRegister[0x05] = 0x38;
   TLE9180_au8CfgRegister[0x06] = 0x34;
   TLE9180_au8CfgRegister[0x07] = 0x9A;
   TLE9180_au8CfgRegister[0x08] = 0xB2;
   TLE9180_au8CfgRegister[0x09] = 0x72;
   TLE9180_au8CfgRegister[0x0A] = 0x2A;
   TLE9180_au8CfgRegister[0x0B] = 0x4A;
   TLE9180_au8CfgRegister[0x0F] = 0xBF;
   TLE9180_au8CfgRegister[0x10] = 0xFF;
   TLE9180_au8CfgRegister[0x13] = 0x03;

   u8Signature = TLE9180_CalculateCRC8((&TLE9180_au8CfgRegister[0x01]), 19);
   TLE9180_au8CfgRegister[0x00] = u8Signature;

   TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x01,TLE9180_au8CfgRegister[0x01]);
   TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcWriteReg(0x02,TLE9180_au8CfgRegister[0x02]);
   TLE9180_au32SpiWriteFrame[2] = TLE9180_u32CalcWriteReg(0x05,TLE9180_au8CfgRegister[0x05]);
   TLE9180_au32SpiWriteFrame[3] = TLE9180_u32CalcWriteReg(0x06,TLE9180_au8CfgRegister[0x06]);
   TLE9180_au32SpiWriteFrame[4] = TLE9180_u32CalcWriteReg(0x07,TLE9180_au8CfgRegister[0x07]);
   TLE9180_au32SpiWriteFrame[5] = TLE9180_u32CalcWriteReg(0x08,TLE9180_au8CfgRegister[0x08]);
   TLE9180_au32SpiWriteFrame[6] = TLE9180_u32CalcWriteReg(0x09,TLE9180_au8CfgRegister[0x09]);
   TLE9180_au32SpiWriteFrame[7] = TLE9180_u32CalcWriteReg(0x0A,TLE9180_au8CfgRegister[0x0A]);
   TLE9180_au32SpiWriteFrame[8] = TLE9180_u32CalcWriteReg(0x0B,TLE9180_au8CfgRegister[0x0B]);
   TLE9180_au32SpiWriteFrame[9] = TLE9180_u32CalcWriteReg(0x0F,TLE9180_au8CfgRegister[0x0F]);
   TLE9180_au32SpiWriteFrame[10] = TLE9180_u32CalcWriteReg(0x10,TLE9180_au8CfgRegister[0x10]);
   TLE9180_au32SpiWriteFrame[11] = TLE9180_u32CalcWriteReg(0x13,TLE9180_au8CfgRegister[0x13]);

   TLE9180_au32SpiWriteFrame[12] = TLE9180_u32CalcWriteReg(0x20,0x00);
   TLE9180_au32SpiWriteFrame[13] = TLE9180_u32CalcWriteReg(0x21,0x00);
   TLE9180_au32SpiWriteFrame[14] = TLE9180_u32CalcWriteReg(0x25,0x7E);
   TLE9180_au32SpiWriteFrame[15] = TLE9180_u32CalcWriteReg(0x26,0x7E);
   TLE9180_au32SpiWriteFrame[16] = TLE9180_u32CalcWriteReg(0x27,0x7E);
   TLE9180_au32SpiWriteFrame[17] = TLE9180_u32CalcWriteReg(0x28,0x7E);
   TLE9180_au32SpiWriteFrame[18] = TLE9180_u32CalcWriteReg(0x29,0x7E);
   TLE9180_au32SpiWriteFrame[19] = TLE9180_u32CalcWriteReg(0x2A,0x7E);
   TLE9180_au32SpiWriteFrame[20] = TLE9180_u32CalcWriteReg(0x00,u8Signature);

   TLE9180_u8SpiTxFrameMaxNb = 21;

   for(u8CopyIndex = 0; u8CopyIndex < TLE9180_u8SpiTxFrameMaxNb; u8CopyIndex++)
   {
      TLE9180_au32ICInitSpiFrame[u8CopyIndex] = TLE9180_au32SpiWriteFrame[u8CopyIndex];
   }
}

static inline void TLE9180_vidCalcStateRegs(void)
{
   TLE9180_au32StateRegs[0] = TLE9180_u32CalcReadReg(0x40, 0);
   TLE9180_au32StateRegs[1] = TLE9180_u32CalcReadReg(0x41, 0);
   TLE9180_au32StateRegs[2] = TLE9180_u32CalcReadReg(0x42, 0);
   TLE9180_au32StateRegs[3] = TLE9180_u32CalcReadReg(0x43, 0);
   TLE9180_au32StateRegs[4] = TLE9180_u32CalcReadReg(0x44, 0);
   TLE9180_au32StateRegs[5] = TLE9180_u32CalcReadReg(0x45, 0);
   TLE9180_au32StateRegs[6] = TLE9180_u32CalcReadReg(0x46, 0);
   TLE9180_au32StateRegs[7] = TLE9180_u32CalcReadReg(0x47, 0);
   TLE9180_au32StateRegs[8] = TLE9180_u32CalcReadReg(0x48, 0);
   TLE9180_au32StateRegs[9] = TLE9180_u32CalcReadReg(0x49, 0);
   TLE9180_au32StateRegs[10] = TLE9180_u32CalcReadReg(0x4A, 0);
   TLE9180_au32StateRegs[11] = TLE9180_u32CalcReadReg(0x4B, 0);
   TLE9180_au32StateRegs[12] = TLE9180_u32CalcReadReg(0x4C, 0);
   TLE9180_au32StateRegs[13] = TLE9180_u32CalcReadReg(0x4D, 0);
   TLE9180_au32StateRegs[14] = TLE9180_u32CalcReadReg(0x5A, 0);
   TLE9180_au32StateRegs[15] = TLE9180_u32CalcReadReg(0x5B, 0);
   TLE9180_au32StateRegs[16] = TLE9180_u32CalcReadReg(0x5C, 0);
   TLE9180_au32StateRegs[17] = TLE9180_u32CalcReadReg(0x5D, 0);
   TLE9180_au32StateRegs[18] = TLE9180_u32CalcReadReg(0x5E, 0);
   TLE9180_au32StateRegs[19] = TLE9180_u32CalcReadReg(0x5F, 0);

   TLE9180_au32StateRegs[20] = TLE9180_u32CalcReadReg(0x32, 0);
}







static void TLE9180_vidReadCfgRegs(void)
{
   TLE9180_u8SpiTxFrameMaxNb = 21;

   TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcReadReg(0x00, 0);
   TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcReadReg(0x01, 0);
   TLE9180_au32SpiWriteFrame[2] = TLE9180_u32CalcReadReg(0x02, 0);
   TLE9180_au32SpiWriteFrame[3] = TLE9180_u32CalcReadReg(0x03, 0);
   TLE9180_au32SpiWriteFrame[4] = TLE9180_u32CalcReadReg(0x04, 0);
   TLE9180_au32SpiWriteFrame[5] = TLE9180_u32CalcReadReg(0x05, 0);
   TLE9180_au32SpiWriteFrame[6] = TLE9180_u32CalcReadReg(0x06, 0);
   TLE9180_au32SpiWriteFrame[7] = TLE9180_u32CalcReadReg(0x07, 0);
   TLE9180_au32SpiWriteFrame[8] = TLE9180_u32CalcReadReg(0x08, 0);
   TLE9180_au32SpiWriteFrame[9] = TLE9180_u32CalcReadReg(0x09, 0);
   TLE9180_au32SpiWriteFrame[10] = TLE9180_u32CalcReadReg(0x0A, 0);
   TLE9180_au32SpiWriteFrame[11] = TLE9180_u32CalcReadReg(0x0B, 0);
   TLE9180_au32SpiWriteFrame[12] = TLE9180_u32CalcReadReg(0x0C, 0);
   TLE9180_au32SpiWriteFrame[13] = TLE9180_u32CalcReadReg(0x0D, 0);
   TLE9180_au32SpiWriteFrame[14] = TLE9180_u32CalcReadReg(0x0E, 0);
   TLE9180_au32SpiWriteFrame[15] = TLE9180_u32CalcReadReg(0x0F, 0);
   TLE9180_au32SpiWriteFrame[16] = TLE9180_u32CalcReadReg(0x10, 0);
   TLE9180_au32SpiWriteFrame[17] = TLE9180_u32CalcReadReg(0x11, 0);
   TLE9180_au32SpiWriteFrame[18] = TLE9180_u32CalcReadReg(0x12, 0);
   TLE9180_au32SpiWriteFrame[19] = TLE9180_u32CalcReadReg(0x13, 0);

   TLE9180_au32SpiWriteFrame[20] = TLE9180_u32CalcReadReg(0x32, 0);

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_MODE_INIT_CHECK);
}
# 813 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
static void TLE9180_vidSelfTestMng(const uint8 u8SelfTestStep)
{
   boolean bLocSendFlg = (0 != 0);

   switch (u8SelfTestStep)
   {
      case TLE9180_SELFTST_IDLE:
      {
         bLocSendFlg = (0 != 0);
      }
      break;

      case TLE9180_SELFTST_START:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x37, 0x12);
         TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcWriteReg(0x37, 0x04);
         TLE9180_au32SpiWriteFrame[2] = TLE9180_u32CalcWriteReg(0x37, 0x01);
         TLE9180_u8SpiTxFrameMaxNb = 3;
         bLocSendFlg = (1 != 0);
      }
      break;

      case TLE9180_SELFTST_CHKMOD:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcReadReg(0x40, 0);
         TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcReadReg(0x32, 0);
         TLE9180_u8SpiTxFrameMaxNb = 2;
         bLocSendFlg = (1 != 0);
      }
      break;

      case TLE9180_SELFTST_SCD_HS:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x35, 0x40);
         TLE9180_u8SpiTxFrameMaxNb = 1;
         bLocSendFlg = (1 != 0);
      }
      break;

      case TLE9180_SELFTST_SCD_LS:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x35, 0x20);
         TLE9180_u8SpiTxFrameMaxNb = 1;
         bLocSendFlg = (1 != 0);
      }
      break;


      case TLE9180_SELFTST_VREG_OP:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x36, 0x01);
         TLE9180_u8SpiTxFrameMaxNb = 1;
         bLocSendFlg = (1 != 0);
      }
      break;

      case TLE9180_SELFTST_FINISH:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(0x37, 0x80);
         TLE9180_u8SpiTxFrameMaxNb = 1;
         bLocSendFlg = (1 != 0);
      }
      break;

      case TLE9180_SELFTST_RDMOD:
      {
         TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcReadReg(0x40, 0);
         TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcReadReg(0x32, 0);
         TLE9180_u8SpiTxFrameMaxNb = 2;
         bLocSendFlg = (1 != 0);
      }
      break;

      default:
      {
         bLocSendFlg = (0 != 0);
      }
      break;
   }

   if (bLocSendFlg)
   {
      TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
      TLE9180_vidTrigCom(TLE9180_u8Mode);
   }
}

static void TLE9180_vidTstReadReg(void)
{
   TLE9180_u8SpiTxFrameMaxNb = 2;
   TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcReadReg(TLE9180_u8ReadRegAddr,0);
   TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcReadReg(0x32,0);

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiTstReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_u8Mode);
}

static void TLE9180_vidTstWriteReg(void)
{
   uint8 u8Signature;

   if((TLE9180_u8WriteRegAddr >= 0x01) && (TLE9180_u8WriteRegAddr <= 0x13))
   {
      TLE9180_au8CfgRegister[TLE9180_u8WriteRegAddr] = TLE9180_u8WriteData;
      u8Signature = TLE9180_CalculateCRC8((&TLE9180_au8CfgRegister[0x01]), 19);

      TLE9180_u8SpiTxFrameMaxNb = 2;
      TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(TLE9180_u8WriteRegAddr, TLE9180_u8WriteData);
      TLE9180_au32SpiWriteFrame[1] = TLE9180_u32CalcWriteReg(0x00, u8Signature);
   }
   else
   {
      TLE9180_u8SpiTxFrameMaxNb = 1;
      TLE9180_au32SpiWriteFrame[0] = TLE9180_u32CalcWriteReg(TLE9180_u8WriteRegAddr, TLE9180_u8WriteData);
   }

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32SpiTstWriteFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_u8Mode);
}

static void TLE9180_vidReadErrRegs(void)
{
   uint8 i;

   TLE9180_u8SpiTxFrameMaxNb = 21;

   for(i = 0; i < TLE9180_u8SpiTxFrameMaxNb; i++)
   {
      TLE9180_au32SpiWriteFrame[i] = TLE9180_au32StateRegs[i];
   }

   TLE9180_vidGenTransParam(&TLE9180_au32SpiWriteFrame[0], &TLE9180_au32ErrRegsReadFrame[0], TLE9180_u8SpiTxFrameMaxNb);
   TLE9180_vidTrigCom(TLE9180_MODE_ERR_COUNT);
}

static boolean TLE9180_bComMainfunction(void)
{
   boolean bComIsEnd = (0 != 0);

   switch(TLE9180_u8ComState)
   {
      case TLE9180_COM_START:
      {
         TLE9180_bHalSpiWrite(&TLE9180_xTsParam);

         bComIsEnd = TLE9180_bHalIsComEnd(&TLE9180_xTsParam);
         if((1 != 0) == bComIsEnd)
         {
            TLE9180_u8ComState = TLE9180_COM_IDLE;
         }
         else
         {
            TLE9180_u8ComState = TLE9180_COM_END;
         }
         break;
      }
      case TLE9180_COM_END:
      {
         bComIsEnd = TLE9180_bHalIsComEnd(&TLE9180_xTsParam);
         if((1 != 0) == bComIsEnd)
         {
            TLE9180_u8ComState = TLE9180_COM_IDLE;
         }
         break;
      }
      case TLE9180_COM_IDLE:
      default:
      {
         bComIsEnd = (1 != 0);
         TLE9180_u8ComState = TLE9180_COM_IDLE;
         break;
      }
   }

   return bComIsEnd;
}

static inline void TLE9180_vidTrigCom(const uint8 ku8TgtState)
{
   TLE9180_u8TgtMode = ku8TgtState;
   TLE9180_u8ComState = TLE9180_COM_START;
   TLE9180_vidJumpToState(TLE9180_MODE_COM_ONGOING);
}

static void TLE9180_vidGenTransParam(const uint32 * const kpku32SrcBuf, uint32 * const kpu32DestBuf, const uint32 ku32Num)
{
   TLE9180_xTsParam.u32TransLen = 0;
   TLE9180_xTsParam.u32TotalLen = ku32Num;
   TLE9180_xTsParam.uSrcPtr.u32Ptr = kpku32SrcBuf;
   TLE9180_xTsParam.uDestPtr.u32Ptr = kpu32DestBuf;
}
# 1013 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
static uint32 TLE9180_u32CalcReadReg(uint8 u8RegAddr, uint8 u8Data)
{
   uint8 crc = 0;
   uint8 crcinput[3];
   uint32 u32LocData = 0;

   u32LocData |= (uint32)(0u << 23u);
   u32LocData |= (uint32)((uint32)(u8RegAddr & 0x7F) << 16u) ;
   u32LocData |= (uint32)((uint32)u8Data << 8u) ;
   crcinput[2] = (uint8)u32LocData;
   crcinput[1] = (uint8)(u32LocData >> 8);
   crcinput[0] = (uint8)(u32LocData >> 16);
   crc = (TLE9180_CalculateCRC3(&crcinput[0],3) & 0x07);
   u32LocData |= (uint32)crc ;

   return u32LocData;
}
# 1039 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c"
static uint32 TLE9180_u32CalcWriteReg(uint8 u8RegAddr, uint8 u8Data)
{
   uint8 crc = 0;
   uint8 crcinput[3];
   uint32 u32LocData = 0;

   u32LocData |= (uint32)(1u << 23u);
   u32LocData |= (uint32)((uint32)(u8RegAddr & 0x7F) << 16u) ;
   u32LocData |= (uint32)((uint32)u8Data << 8u) ;
   crcinput[2] = (uint8)u32LocData;
   crcinput[1] = (uint8)(u32LocData >> 8);
   crcinput[0] = (uint8)(u32LocData >> 16);
   crc = (TLE9180_CalculateCRC3(&crcinput[0],3) & 0x07);
   u32LocData |= (uint32)crc ;

   return u32LocData;
}

static uint8 TLE9180_CalculateCRC3(uint8 *message, uint8 len)
{
   uint8 i = 0;
   uint8 N = 8;
   uint8 crc = 0xFF;
   while(len--)
   {
      crc ^= *message++;
      if(len == 1)
      {
         N = 5;
      }
      else
      {
         N = 8;
      }
      for (i = 0; i < N; ++i)
      {
         if (crc & 0x80)
            crc = (crc << 1) ^ 0x60;
         else
            crc = (crc << 1);
      }
   }
   return (crc >> 5);
}

static uint8 TLE9180_CalculateCRC8(const uint8 * Crc_DataPtr, uint32 Crc_Length)
{
   uint8 Crc_StartValue8 = 0x00;

   while (Crc_Length != 0U)
   {
      uint8 i;

      Crc_StartValue8 ^= *Crc_DataPtr;


      for (i = 0U; i < 8U; ++i)
      {

         if ((Crc_StartValue8 & 0x80U) == 0U)
         {

            Crc_StartValue8 <<= 1U;
         }
         else
         {

            Crc_StartValue8 = ((uint8)(Crc_StartValue8 << 1U)) ^ 0x4D;
         }
      }




      ++Crc_DataPtr;
      --Crc_Length;
   }




   Crc_StartValue8 ^= 0x00;

   return Crc_StartValue8;
}

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 181 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section
# 1126 "bswcdd\\PreDriver\\TLE9180\\TLE9180.c" 2
