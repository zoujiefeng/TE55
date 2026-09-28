# 1 "bswcdd\\SBC\\SBC_Hal.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\SBC\\SBC_Hal.c"
# 21 "bswcdd\\SBC\\SBC_Hal.c"
# 1 "bswcdd\\SBC\\SBC.h" 1
# 37 "bswcdd\\SBC\\SBC.h"
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
# 38 "bswcdd\\SBC\\SBC.h" 2
# 60 "bswcdd\\SBC\\SBC.h"
enum{
   SBC_USER_IDLE,
   SBC_USER_CMD_GOTO_STANDBY,
   SBC_USER_CMD_CLOSE_LDO,
   SBC_USER_CMD_OPEN_LDO,
   SBC_USER_CMD_GOTO_INIT,
};
# 77 "bswcdd\\SBC\\SBC.h"
# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 78 "bswcdd\\SBC\\SBC.h" 2
extern uint8 SBC_u8DebounceCount;
extern uint8 SBC_u8LDOManagerState;
extern uint8 SBC_au8StdbyModCmdBuff[( 2 )];
extern uint8 SBC_au8StdbyModDataBuff[( 2 )];
extern uint8 SBC_au8CloseLDOCmdBuff[( 2 )];
extern uint8 SBC_au8CloseLDODataBuff[( 2 )];
extern uint8 SBC_au8OpenLDOCmdBuff[( 2 )];
extern uint8 SBC_au8OpenLDODataBuff[( 2 )];
extern uint8 SBC_au8InitModCmdBuff[( 2 )];
extern uint8 SBC_au8InitModDataBuff[( 2 )];
extern uint8 SBC_u8MaxWdgErrCnt;
extern uint16 SBC_au16StatusRegsNvm[( 18 )];
extern uint32 SBC_au32WdgExtXorMask[( 16 )];
extern float32 SBC_f32BatteryVoltage;
extern float32 SBC_f32BkpVoltage;
extern float32 SBC_bOtherSttFailFlg;

# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 96 "bswcdd\\SBC\\SBC.h" 2






# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 94 "bswcdd\\SBC\\SBC_MemMap.h"
#pragma section ".text" ax
# 103 "bswcdd\\SBC\\SBC.h" 2
void SBC_vidInit(void);
void SBC_vidSetDeinitWdgCmd(const boolean);
void SBC_vidSetWdgActvFinshFlg(void);
uint8 SBC_u8GetUserCmdReq(void);
uint8 SBC_u8GetMaxWdgErrCnt(void);
boolean SBC_bGetDeinitWdgCmd(void);
boolean SBC_bGetFaultClearFlgs(void);
boolean SBC_bGetStdbyModReq(void);
boolean SBC_bGetWdgActvFinshFlg(void);
boolean SBC_bIsSbcFautOccr(void);
boolean SBC_bUnderVoltageManager(void);
boolean SBC_vidSetStdbyModCmd(const boolean);
boolean SBC_bSetUserCmdReq(const uint8 u8UserCmdReq);
boolean SBC_bCheckOutputStt(void);

extern uint16 SBCHal_u16GetAdVal_P5VCom(void);
extern uint16 SBCHal_u16GetAdVal_P5VGateway(void);
extern uint16 SBCHal_u16GetAdVal_P5VBt(void);
extern uint16 SBCHal_u16GetAdVal_P5VRef(void);
extern uint16 SBCHal_u16GetAdVal_P5VAD2S(void);
extern float32 SBCHal_f32GetBatteryVol(void);


# 1 "bswcdd\\SBC\\SBC_MemMap.h" 1
# 135 "bswcdd\\SBC\\SBC_MemMap.h"
#pragma section
# 127 "bswcdd\\SBC\\SBC.h" 2
# 22 "bswcdd\\SBC\\SBC_Hal.c" 2
# 1 ".\\output\\inc/IOHAL.h" 1
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
# 2 ".\\output\\inc/IOHAL.h" 2
# 23 "bswcdd\\SBC\\SBC_Hal.c" 2
# 1 ".\\output\\inc/PortMux.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h" 1



# 1 ".\\output\\inc/Std_types.h" 1
# 5 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h" 2

typedef enum{
    ePMux_DIOInputMux1 = 0,
    ePMux_DIOInputMux2,
    ePMux_DIOInputMux3,
    ePMUX_ANInputMux1,
    ePMUX_ANInputMux2,
    ePMUX_ANInputMux3,
    ePMUX_ANInputMux4,
    ePMUX_ANInputMux5,
    ePMUX_ANInputMux6,
    ePMUX_ANInputMux7,
    ePMUX_ANInputMux8,
    ePMUX_ANInputMux9,
    ePMUX_ANInputMux10,
    ePMUX_ANInputMux11,
    ePMUX_ANInputMux12,
    ePMUX_InputMuxMaxNum,
}PMux_InputMuxIndex;

typedef enum {
    ePMUX_DIO0_MUX1 = (0 | (ePMux_DIOInputMux1 << 4)),
    ePMUX_DIO1_MUX1,
    ePMUX_DIO2_MUX1,
    ePMUX_DIO3_MUX1,
    ePMUX_DIO4_MUX1,
    ePMUX_DIO5_MUX1,
    ePMUX_DIO6_MUX1,
    ePMUX_DIO7_MUX1,
    ePMUX_DIOInputMux1MaxChannelNum
}PMux_DIOInputMux1;

typedef enum {
    ePMUX_DIO0_MUX2 = (0 | (ePMux_DIOInputMux2 << 4)),
    ePMUX_DIO1_MUX2,
    ePMUX_DIO2_MUX2,
    ePMUX_DIO3_MUX2,
    ePMUX_DIO4_MUX2,
    ePMUX_DIO5_MUX2,
    ePMUX_DIO6_MUX2,
    ePMUX_DIO7_MUX2,
    ePMUX_DIOInputMux2MaxChannelNum
}PMux_DIOInputMux2;

typedef enum {
    ePMUX_DIO0_MUX3 = (0 | (ePMux_DIOInputMux3 << 4)),
    ePMUX_DIO1_MUX3,
    ePMUX_DIO2_MUX3,
    ePMUX_DIO3_MUX3,
    ePMUX_DIO4_MUX3,
    ePMUX_DIO5_MUX3,
    ePMUX_DIO6_MUX3,
    ePMUX_DIO7_MUX3,
    ePMUX_DIOInputMux3MaxChannelNum
}PMux_DIOInputMux3;

typedef enum {
    ePMUX_AN0_MUX1 = (0 | (ePMUX_ANInputMux1 << 4)),
    ePMUX_AN1_MUX1,
    ePMUX_AN2_MUX1,
    ePMUX_AN3_MUX1,
    ePMUX_AN4_MUX1,
    ePMUX_AN5_MUX1,
    ePMUX_AN6_MUX1,
    ePMUX_AN7_MUX1,
    ePMUX_ANInputMux1MaxChannelNum
}PMux_ANInputMux1;

typedef enum {
    ePMUX_AN0_MUX2 = (0 | (ePMUX_ANInputMux2 << 4)),
    ePMUX_AN1_MUX2,
    ePMUX_AN2_MUX2,
    ePMUX_AN3_MUX2,
    ePMUX_AN4_MUX2,
    ePMUX_AN5_MUX2,
    ePMUX_AN6_MUX2,
    ePMUX_AN7_MUX2,
    ePMux_ANInputMux2MaxChannelNum
}PMux_ANInputMux2;

typedef enum {
    ePMUX_AN0_MUX3 = (0 | (ePMUX_ANInputMux3 << 4)),
    ePMUX_AN1_MUX3,
    ePMUX_AN2_MUX3,
    ePMUX_AN3_MUX3,
    ePMUX_AN4_MUX3,
    ePMUX_AN5_MUX3,
    ePMUX_AN6_MUX3,
    ePMUX_AN7_MUX3,
    ePMux_ANInputMux3MaxChannelNum
}PMux_ANInputMux3;

typedef enum {
    ePMUX_AN0_MUX4 = (0 | (ePMUX_ANInputMux4 << 4)),
    ePMUX_AN1_MUX4,
    ePMUX_AN2_MUX4,
    ePMUX_AN3_MUX4,
    ePMUX_AN4_MUX4,
    ePMUX_AN5_MUX4,
    ePMUX_AN6_MUX4,
    ePMUX_AN7_MUX4,
    ePMux_ANInputMux4MaxChannelNum
}PMux_ANInputMux4;

typedef enum {
    ePMUX_AN0_MUX5 = (0 | (ePMUX_ANInputMux5 << 4)),
    ePMUX_AN1_MUX5,
    ePMUX_AN2_MUX5,
    ePMUX_AN3_MUX5,
    ePMUX_AN4_MUX5,
    ePMUX_AN5_MUX5,
    ePMUX_AN6_MUX5,
    ePMUX_AN7_MUX5,
    ePMux_ANInputMux5MaxChannelNum
}PMux_ANInputMux5;

typedef enum {
    ePMUX_AN0_MUX6 = (0 | (ePMUX_ANInputMux6 << 4)),
    ePMUX_AN1_MUX6,
    ePMUX_AN2_MUX6,
    ePMUX_AN3_MUX6,
    ePMUX_AN4_MUX6,
    ePMUX_AN5_MUX6,
    ePMUX_AN6_MUX6,
    ePMUX_AN7_MUX6,
    ePMux_ANInputMux6MaxChannelNum
}PMux_ANInputMux6;

typedef enum {
    ePMUX_AN0_MUX7 = (0 | (ePMUX_ANInputMux7 << 4)),
    ePMUX_AN1_MUX7,
    ePMUX_AN2_MUX7,
    ePMUX_AN3_MUX7,
    ePMUX_AN4_MUX7,
    ePMUX_AN5_MUX7,
    ePMUX_AN6_MUX7,
    ePMUX_AN7_MUX7,
    ePMux_ANInputMux7MaxChannelNum
}PMux_ANInputMux7;

typedef enum {
    ePMUX_AN0_MUX8 = (0 | (ePMUX_ANInputMux8 << 4)),
    ePMUX_AN1_MUX8,
    ePMUX_AN2_MUX8,
    ePMUX_AN3_MUX8,
    ePMUX_AN4_MUX8,
    ePMUX_AN5_MUX8,
    ePMUX_AN6_MUX8,
    ePMUX_AN7_MUX8,
    ePMux_ANInputMux8MaxChannelNum
}PMux_ANInputMux8;

typedef enum {
    ePMUX_AN0_MUX9 = (0 | (ePMUX_ANInputMux9 << 4)),
    ePMUX_AN1_MUX9,
    ePMUX_AN2_MUX9,
    ePMUX_AN3_MUX9,
    ePMUX_AN4_MUX9,
    ePMUX_AN5_MUX9,
    ePMUX_AN6_MUX9,
    ePMUX_AN7_MUX9,
    ePMux_ANInputMux9MaxChannelNum
}PMux_ANInputMux9;

typedef enum {
    ePMUX_AN0_MUX10 = (0 | (ePMUX_ANInputMux10 << 4)),
    ePMUX_AN1_MUX10,
    ePMUX_AN2_MUX10,
    ePMUX_AN3_MUX10,
    ePMUX_AN4_MUX10,
    ePMUX_AN5_MUX10,
    ePMUX_AN6_MUX10,
    ePMUX_AN7_MUX10,
    ePMux_ANInputMux10MaxChannelNum
}PMux_ANInputMux10;

typedef enum {
    ePMUX_AN0_MUX11 = (0 | (ePMUX_ANInputMux11 << 4)),
    ePMUX_AN1_MUX11,
    ePMUX_AN2_MUX11,
    ePMUX_AN3_MUX11,
    ePMUX_AN4_MUX11,
    ePMUX_AN5_MUX11,
    ePMUX_AN6_MUX11,
    ePMUX_AN7_MUX11,
    ePMux_ANInputMux11MaxChannelNum
}PMux_ANInputMux11;

typedef enum {
    ePMUX_AN0_MUX12 = (0 | (ePMUX_ANInputMux12 << 4)),
    ePMUX_AN1_MUX12,
    ePMUX_AN2_MUX12,
    ePMUX_AN3_MUX12,
    ePMUX_AN4_MUX12,
    ePMUX_AN5_MUX12,
    ePMUX_AN6_MUX12,
    ePMUX_AN7_MUX12,
    ePMux_ANInputMux12MaxChannelNum
}PMux_ANInputMux12;

enum{
    ePMUX_SHIFT_REG_1 = 0,
    ePMUX_SHIFT_REG_2,
    ePMUX_SHIFT_REG_3,

    ePMUX_SHIFT_REG_MAX_NO,
};


extern void PMux_vidMainFunction(const uint8 ku8MuxIndex);
extern uint16 PMux_u16GetInputVal(const uint8 ku8DataIndex);
extern void PMux_vidShiftOutMultiBytes(const uint8 const * kpku8Data, const uint8 ku8Bytes, const uint8 ku8SRID);

extern void PMux_vidMuxHandler_1(void);
extern void PMux_vidMuxHandler_2(void);
extern void PMux_vidMuxHandler_Group3(void);
# 2 ".\\output\\inc/PortMux.h" 2
# 24 "bswcdd\\SBC\\SBC_Hal.c" 2

uint16 SBCHal_u16GetAdVal_P5VCom(void)
{
   return PMux_u16GetInputVal(ePMUX_AN2_MUX11);
}

uint16 SBCHal_u16GetAdVal_P5VGateway(void)
{
   return PMux_u16GetInputVal(ePMUX_AN1_MUX11);
}

uint16 SBCHal_u16GetAdVal_P5VBt(void)
{
   return PMux_u16GetInputVal(ePMUX_AN3_MUX11);
}

uint16 SBCHal_u16GetAdVal_P5VRef(void)
{
   return IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF();
}

uint16 SBCHal_u16GetAdVal_P5VAD2S(void)
{
   return IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S();
}

float32 SBCHal_f32GetBatteryVol(void)
{
   uint16 u16LocAdcRaw = 0;
   float32 f32LocBatValAd = 0.0f;

   u16LocAdcRaw = IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE();
   f32LocBatValAd = (float32)u16LocAdcRaw;

   SBC_f32BatteryVoltage = (f32LocBatValAd * 0.0159f) + 0.003f;

   return SBC_f32BatteryVoltage;
}
