# 1 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c"
# 29 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c"
# 1 ".\\output\\inc/IcuHal.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 1




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
# 6 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Limits.h" 1
# 2 ".\\output\\inc/Std_Limits.h" 2
# 7 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2
# 1 ".\\output\\inc/IOHAL_Cfg_I.h" 1
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
# 2 ".\\output\\inc/IOHAL_Cfg_I.h" 2
# 8 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2
# 1 ".\\output\\inc/Icu_17_TimerIp.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 1
# 49 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 50 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2

# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 46 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2






# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{



  if (irqs_on)
    _enable();
  else
    _disable();

}
# 54 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2
# 75 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
typedef unsigned int unsigned_int;
# 201 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned __crc32bw( unsigned b, unsigned a )
 __attribute__ ((always_inline));






static __inline__ unsigned __crc32bw( unsigned b, unsigned a ) {
  unsigned res;
  __asm__ volatile("crc32b.w %0, %1, %2" :"=d"(res) : "d"(b), "d"(a): "memory");
    return res;
}
# 223 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned __crc32b( unsigned b, unsigned a )
 __attribute__ ((always_inline));






static __inline__ unsigned __crc32b( unsigned b, unsigned a ) {
  unsigned res;
  __asm__ volatile("crc32.b %0, %1, %2" :"=d"(res) : "d"(b), "d"(a): "memory");
    return res;
}
# 613 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned _extru(unsigned a, unsigned p, unsigned w) {
  unsigned res;
  __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                    : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14","d15");
  return res;
}
# 717 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned int cmpswap_w (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
  __extension__ unsigned long long reg64
    = value | (unsigned long long) condition << 32;

  __asm__ __volatile__ ("cmpswap.w [%[addr]]0, %A[reg]"
                        : [reg] "+d" (reg64)
                        : [addr] "a" (address)
                        : "memory");
    return reg64;
}
# 839 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned int swapmskw (unsigned int *address,
                                           unsigned int value,unsigned int mask)
{
  __extension__ unsigned long long reg64
    = value | (unsigned long long) mask << 32;

    __asm__ __volatile__( "swapmsk.w [%[addr]] 0,%A[reg]"
        : [reg]"+d" (reg64)
        : [addr]"a" (address)
        : "memory");
     return ((unsigned int)reg64 & mask);
}
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 52 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2


# 1 ".\\output\\inc/Icu_17_TimerIp_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_Cfg.h" 1
# 2 ".\\output\\inc/Icu_17_TimerIp_Cfg.h" 2
# 55 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2
# 286 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{


  ICU_17_TIMERIP_MODE_NORMAL = 0U,


  ICU_17_TIMERIP_MODE_SLEEP = 1U
} Icu_17_TimerIp_ModeType;



typedef uint8 Icu_17_TimerIp_ChannelType;


typedef enum
{


  ICU_17_TIMERIP_IDLE = 0U,

  ICU_17_TIMERIP_ACTIVE = 1U
} Icu_17_TimerIp_InputStateType;





typedef enum
{


  ICU_17_TIMERIP_RISING_EDGE = 0U,


  ICU_17_TIMERIP_FALLING_EDGE = 1U,


  ICU_17_TIMERIP_BOTH_EDGES = 2U,
  ICU_17_TIMERIP_NO_EDGE = 3U
} Icu_17_TimerIp_ActivationType;



typedef uint32 Icu_17_TimerIp_ValueType;





typedef struct
{

  Icu_17_TimerIp_ValueType ActiveTime;

  Icu_17_TimerIp_ValueType PeriodTime;
} Icu_17_TimerIp_DutyCycleType;






typedef uint16 Icu_17_TimerIp_IndexType;






typedef uint32 Icu_17_TimerIp_EdgeNumberType;
# 367 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{
  ICU_17_TIMERIP_MODE_SIGNAL_EDGE_DETECT = 0U,
  ICU_17_TIMERIP_MODE_SIGNAL_MEASUREMENT = 1U,
  ICU_17_TIMERIP_MODE_TIMESTAMP = 2U,
  ICU_17_TIMERIP_MODE_EDGE_COUNTER = 3U,
  ICU_17_TIMERIP_MODE_INCREMENTAL_INTERFACE = 4U
} Icu_17_TimerIp_MeasurementModeType;
# 383 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{
  ICU_17_TIMERIP_LOW_TIME = 0U,
  ICU_17_TIMERIP_HIGH_TIME = 1U,
  ICU_17_TIMERIP_PERIOD_TIME = 2U,
  ICU_17_TIMERIP_DUTY_CYCLE = 3U
} Icu_17_TimerIp_SignalMeasurementPropertyType;
# 398 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{
  ICU_17_TIMERIP_LINEAR_BUFFER = 0U,
  ICU_17_TIMERIP_CIRCULAR_BUFFER = 1U
} Icu_17_TimerIp_TimestampBufferType;



typedef void (*Icu_17_TimerIp_NotifiPtrType)(void);
# 415 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef enum
{
  ICU_17_TIMERIP_1_COUNT_INPUT = 1U,
  ICU_17_TIMERIP_2_COUNT_INPUT = 3U
} Icu_17_TimerIp_IncrementType;







typedef enum
{
  ICU_17_TIMERIP_ENC_COUNT_UP = 0U,
  ICU_17_TIMERIP_ENC_COUNT_DOWN = 1U
} Icu_17_TimerIp_EncCountDirType;
# 455 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
typedef struct
{
# 467 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
  Icu_17_TimerIp_NotifiPtrType NotificationPointer;

  struct
  {

    unsigned_int MeasurementMode : 3;


    unsigned_int DefaultStartEdge: 2;


    unsigned_int MeasurementProperty: 2;


    unsigned_int WakeupCapability: 2;

    unsigned_int AssignedHwUnitNumber: 16;
# 492 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
    unsigned_int AssignedHwUnit: 2;

    unsigned_int PinSelection: 4;

    unsigned_int Reserved: 1;

    uint32 TimChFilterTimeForRisingEdge;

    uint32 TimChFilterTimeForFallingEdge;

    uint32 OverflowISRThreshold;

    uint16 InterruptMode;

    uint8 TimChannelClockSelect;

    uint8 TimChannelGpr0InputSelect;

    uint8 TimChannelFilterEnable;

    uint8 TimChFilterCounterFreqSelect;

    uint8 TimChFilterModeForRisingEdge;

    uint8 TimChFilterModeForFallingEdge;

    uint8 TimChannelInputSelect;
  } IcuProperties;




  uint8 ModeMappingIndex;
} Icu_17_TimerIp_ChannelConfigType;



typedef struct
{

  const Icu_17_TimerIp_ChannelConfigType* ChannelConfigPtr;

  Icu_17_TimerIp_ChannelType MaxChannelCore;

  Icu_17_TimerIp_ChannelType MaxDataChannelCore;
} Icu_17_TimerIp_CoreConfigType;



typedef struct
{

  const Icu_17_TimerIp_CoreConfigType * CoreConfig[6];







} Icu_17_TimerIp_ConfigType;
# 569 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 627 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 570 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2
# 604 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_Init
(
  const Icu_17_TimerIp_ConfigType *const ConfigPtr
);
# 824 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_SetActivationCondition
(
  const Icu_17_TimerIp_ChannelType Channel,
  const Icu_17_TimerIp_ActivationType Activation
);
# 853 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_DisableEdgeDetection
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 886 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_EnableEdgeDetection
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 918 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_EnableMultiEdgeDetection
(const Icu_17_TimerIp_ChannelType Channel,
 const uint32 EdgeCount);
# 951 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_DisableNotification
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 980 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_EnableNotification
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 1307 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_StartSignalMeasurement
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 1342 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_StopSignalMeasurement
(
  const Icu_17_TimerIp_ChannelType Channel
);
# 1421 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
extern void Icu_17_TimerIp_GetDutyCycleValues
(
  const Icu_17_TimerIp_ChannelType Channel,
  Icu_17_TimerIp_DutyCycleType *const DutyCycleValues
);
# 1680 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 639 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 1681 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2


# 1 ".\\output\\inc/Icu_17_TimerIp_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h" 1
# 59 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 430 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 60 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h" 2

extern const Icu_17_TimerIp_ConfigType Icu_17_TimerIp_Config;
# 75 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h"
# 1 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h" 1
# 443 ".\\output\\inc/..\\..\\Integration\\mcal\\Icu_17_TimerIp_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Icu_17_TimerIp_MemMap.h" 2
# 76 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Icu_17_TimerIp_PBcfg.h" 2
# 2 ".\\output\\inc/Icu_17_TimerIp_PBcfg.h" 2
# 1684 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h" 2
# 2 ".\\output\\inc/Icu_17_TimerIp.h" 2
# 9 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2
# 1 ".\\output\\inc/Icu_17_TimerIp_Cfg.h" 1
# 10 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2



extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2;
extern float32 Icu_f32Cycle_AN_VOL_DCLINK_EPS;
extern float32 Icu_f32Cycle_AN_VOL_DCLINK_ACM;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1;
extern float32 Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W;
extern float32 Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V;
extern float32 Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W;
extern float32 Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V;




float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2(void);
float32 Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS(void);
float32 Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1(void);


extern void Icu_vidGetDutyCycle(void);
# 2 ".\\output\\inc/IcuHal.h" 2
# 30 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c" 2
# 1 "bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 1
# 31 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c" 2

# 1 ".\\output\\inc/Dio.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 1
# 44 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2


# 1 ".\\output\\inc/Dio_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h" 1
# 2081 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 159 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 2082 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h" 2

extern const struct Dio_ConfigType Dio_Config;



# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 172 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 2088 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h" 2
# 2 ".\\output\\inc/Dio_Cfg.h" 2
# 48 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2
# 117 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
typedef uint16 Dio_ChannelType;





typedef uint8 Dio_LevelType;




typedef uint8 Dio_PortType;




typedef uint16 Dio_PortLevelType;




typedef struct
{

  Dio_PortLevelType mask;


  uint8 offset;


  Dio_PortType port;
} Dio_ChannelGroupType;




typedef struct
{

  uint8 Dio_PortIdConfig;


  uint16 Dio_ChannelConfig;

} Dio_PortChannelIdType;




typedef struct Dio_ConfigType
{

  const Dio_PortChannelIdType* Dio_PortChannelIdConfigPtr;


  const Dio_ChannelGroupType* Dio_ChannelGroupConfigPtr;


  uint32 Dio_ChannelGroupConfigSize;
} Dio_ConfigType;
# 193 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 194 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 194 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2
# 223 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_LevelType Dio_ReadChannel
(
  const Dio_ChannelType ChannelId
);
# 261 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern void Dio_WriteChannel
(
  const Dio_ChannelType ChannelId,
  const Dio_LevelType Level
);
# 293 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_PortLevelType Dio_ReadPort
(
  const Dio_PortType PortId
);
# 325 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern void Dio_WritePort
(
  const Dio_PortType PortId,
  const Dio_PortLevelType Level
);
# 358 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_PortLevelType Dio_ReadChannelGroup
(
  const Dio_ChannelGroupType * const ChannelGroupIdPtr
);
# 394 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern void Dio_WriteChannelGroup
(
  const Dio_ChannelGroupType * const ChannelGroupIdPtr,
  const Dio_PortLevelType Level
);
# 431 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_LevelType Dio_FlipChannel
(
  const Dio_ChannelType ChannelId
);
# 487 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 206 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 488 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2
# 2 ".\\output\\inc/Dio.h" 2
# 33 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c" 2
# 1 ".\\output\\inc/VADC.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\VADC\\VADC.h" 1



# 1 ".\\output\\inc/Std_Types.h" 1
# 5 ".\\output\\inc/..\\..\\bswcdd\\VADC\\VADC.h" 2

extern uint16 VADC_u16GroupBuffer0[16];
extern uint16 VADC_u16GroupBuffer1[16];
extern uint16 VADC_u16GroupBuffer2[16];
extern uint16 VADC_u16GroupBuffer3[16];
extern uint16 VADC_u16GroupBuffer3_1[16];
extern uint16 VADC_u16GroupBuffer4[16];
extern uint16 VADC_u16GroupBuffer8[16];
extern uint16 VADC_u16GroupBuffer8_2[16];
extern uint16 VADC_u16GroupBuffer10[16];
extern uint16 VADC_u16GroupBuffer11[16];

extern void VADC_vidTreatment(void);
void VADC_vidMainFunction(void);
# 2 ".\\output\\inc/VADC.h" 2
# 34 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c" 2

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
# 36 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c" 2


# 1 "bswcdd\\IOHAL\\IOHAL_MemMap.h" 1
# 69 "bswcdd\\IOHAL\\IOHAL_MemMap.h"
#pragma section ".text" ax
# 39 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c" 2






uint16 IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x000))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x006)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x007)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x009)), u16State);
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x00b))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x00c)), u16State);
}

uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x013))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x014)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x015)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x016)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x017)), u16State);
}

void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x020)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_SER_2 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x021)), u16State);
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x026))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x027)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x028)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x029)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x02a)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x02b)), u16State);
}

uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0a4))));
}

uint16 IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0b0))));
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0b1))));
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0b2))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0b4)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_SER_3 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0b5)), u16State);
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0b7))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0b8)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0bd)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0be)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0bf)), u16State);
}

uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0c0))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0c1)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0d0)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0d1)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0d2)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0d3)), u16State);
}

uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0e6))));
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0e7))));
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0e8))));
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0ea))));
}

void IOHAL_vidWrite_CH_DIO_OUT_M_DO2 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0f0)), u16State);
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0f1))));
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x0f3))));
}
void IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0f7)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x0f8)), u16State);
}

uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x140))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x141)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x143)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x149)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x14a)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x14b)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x14c)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x14e)), u16State);
}

void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x155)), u16State);
}

void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x160)), u16State);
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x161))));
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x162))));
}
uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2 (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x163))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x164)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x168)), u16State);
}

void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x171)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x172)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x177)), u16State);
}
# 331 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c"
uint16 IOHAL_u16Read_CH_DIO_IN_M_KEY_ON (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x202))));
}
void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x203)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x204)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x205)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x207)), u16State);
}

void IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x216)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_SER (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x21e)), u16State);
}
void IOHAL_vidWrite_CH_DIO_OUT_M_DO1 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x21f)), u16State);
}

uint16 IOHAL_u16Read_CH_DIO_IN_M_CHG_ON (void)
{
   return ((uint16)Dio_ReadChannel((((Dio_ChannelType)0x221))));
}

void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3 (uint16 u16State)
{
   Dio_WriteChannel((((Dio_ChannelType)0x224)), u16State);
}

uint16 IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV (void)
{
   return ((uint16)VADC_u16GroupBuffer10[0]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1 (void)
{
   return ((uint16)VADC_u16GroupBuffer0[0]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1 (void)
{
   return ((uint16)VADC_u16GroupBuffer0[1]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F (void)
{
   return ((uint16)VADC_u16GroupBuffer0[2]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1 (void)
{
   return ((uint16)VADC_u16GroupBuffer0[2]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F (void)
{
   return ((uint16)VADC_u16GroupBuffer0[3]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2 (void)
{
   return ((uint16)VADC_u16GroupBuffer0[3]);
}






uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1 (void)
{
   return ((uint16)VADC_u16GroupBuffer1[0]);
}






uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1 (void)
{
   return ((uint16)VADC_u16GroupBuffer1[1]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1 (void)
{
   return ((uint16)VADC_u16GroupBuffer1[2]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4 (void)
{
   return ((uint16)VADC_u16GroupBuffer1[3]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2 (void)
{
   return ((uint16)VADC_u16GroupBuffer1[3]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W (void)
{
   return ((uint16)VADC_u16GroupBuffer1[4]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION (void)
{
   return ((uint16)VADC_u16GroupBuffer1[4]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V (void)
{
   return ((uint16)VADC_u16GroupBuffer1[5]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S (void)
{
   return ((uint16)VADC_u16GroupBuffer1[5]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2 (void)
{
   return ((uint16)VADC_u16GroupBuffer2[0]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2 (void)
{
   return ((uint16)VADC_u16GroupBuffer2[1]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W (void)
{
   return ((uint16)VADC_u16GroupBuffer2[2]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC (void)
{
   return ((uint16)VADC_u16GroupBuffer2[2]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V (void)
{
   return ((uint16)VADC_u16GroupBuffer2[3]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF (void)
{
   return ((uint16)VADC_u16GroupBuffer2[3]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2 (void)
{
   return ((uint16)VADC_u16GroupBuffer2[4]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2 (void)
{
   return ((uint16)VADC_u16GroupBuffer2[5]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2 (void)
{
   return ((uint16)VADC_u16GroupBuffer3[0]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2 (void)
{
   return ((uint16)VADC_u16GroupBuffer3[1]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2 (void)
{
   return ((uint16)VADC_u16GroupBuffer3[2]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1 (void)
{
   return ((uint16)VADC_u16GroupBuffer3_1[0]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1 (void)
{
   return ((uint16)VADC_u16GroupBuffer3_1[1]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2 (void)
{
   return ((uint16)VADC_u16GroupBuffer3_1[2]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4 (void)
{
   return ((uint16)VADC_u16GroupBuffer3_1[4]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3 (void)
{
   return ((uint16)VADC_u16GroupBuffer3_1[3]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1 (void)
{
   return ((uint16)VADC_u16GroupBuffer11[1]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1 (void)
{
   return ((uint16)VADC_u16GroupBuffer11[2]);
}






uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[8]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2 (void)
{
   return ((uint16)VADC_u16GroupBuffer11[0]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[9]);
}
# 682 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c"
uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U (void)
{
   return ((uint16)VADC_u16GroupBuffer8_2[0]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V (void)
{
   return ((uint16)VADC_u16GroupBuffer8_2[1]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U (void)
{
   return ((uint16)VADC_u16GroupBuffer8_2[3]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V (void)
{
   return ((uint16)VADC_u16GroupBuffer8_2[4]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W (void)
{
   return ((uint16)VADC_u16GroupBuffer8_2[2]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W (void)
{
   return ((uint16)VADC_u16GroupBuffer8_2[5]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[0]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[1]);
}





uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[2]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[3]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[4]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[5]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[6]);
}
uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12 (void)
{
   return ((uint16)VADC_u16GroupBuffer8[7]);
}

uint16 IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE(void)
{
   return PMux_u16GetInputVal(ePMUX_AN0_MUX10);
}

uint16 IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE(void)
{
   return PMux_u16GetInputVal(ePMUX_AN2_MUX11);
}

uint16 IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE(void)
{
   return PMux_u16GetInputVal(ePMUX_AN3_MUX11);
}

uint16 IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE(void)
{
   return PMux_u16GetInputVal(ePMUX_AN2_MUX10);
}

uint16 IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE(void)
{
   return PMux_u16GetInputVal(ePMUX_AN3_MUX10);
}







float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2(void)
{
   return Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2;
}
float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2(void)
{
   return Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2;
}
float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2(void)
{
   return Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2;
}
float32 IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS(void)
{
   return Icu_f32Cycle_AN_VOL_DCLINK_EPS;
}
float32 IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM(void)
{
   return Icu_f32Cycle_AN_VOL_DCLINK_ACM;
}
float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1(void)
{
   return Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1;
}
float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1(void)
{
   return Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1;
}
float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1(void)
{
   return Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1;
}

float32 IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W(void)
{
   return Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W;
}
float32 IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V(void)
{
   return Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V;
}
float32 IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W(void)
{
   return Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W;
}
float32 IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V(void)
{
   return Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V;
}


# 1 "bswcdd\\IOHAL\\IOHAL_MemMap.h" 1
# 95 "bswcdd\\IOHAL\\IOHAL_MemMap.h"
#pragma section
# 857 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c" 2
