# 1 "bswcdd\\IOHAL\\IcuHal\\IcuHal.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\IOHAL\\IcuHal\\IcuHal.c"
# 1 "bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 1




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
# 6 "bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Limits.h" 1
# 2 ".\\output\\inc/Std_Limits.h" 2
# 7 "bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2
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
# 8 "bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2
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
# 9 "bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2
# 1 ".\\output\\inc/Icu_17_TimerIp_Cfg.h" 1
# 10 "bswcdd\\IOHAL\\IcuHal\\IcuHal.h" 2



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
# 2 "bswcdd\\IOHAL\\IcuHal\\IcuHal.c" 2


float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2 = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2 = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2 = 0.0f;
float32 Icu_f32Cycle_AN_VOL_DCLINK_EPS = 0.0f;
float32 Icu_f32Cycle_AN_VOL_DCLINK_ACM = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1 = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1 = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1 = 0.0f;

float32 Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W = 0.0f;
float32 Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V = 0.0f;
float32 Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W = 0.0f;
float32 Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V = 0.0f;

static float32 Icu_f32CalcChannelCycle(const Icu_17_TimerIp_ChannelType Channel);
# 29 "bswcdd\\IOHAL\\IcuHal\\IcuHal.c"
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2(void)
{
   Icu_17_TimerIp_DutyCycleType strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(((Icu_17_TimerIp_ChannelType)5U), &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2(void)
{
   Icu_17_TimerIp_DutyCycleType strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(((Icu_17_TimerIp_ChannelType)6U), &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2(void)
{
   Icu_17_TimerIp_DutyCycleType strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(((Icu_17_TimerIp_ChannelType)7U), &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS(void)
{
   Icu_17_TimerIp_DutyCycleType strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(((Icu_17_TimerIp_ChannelType)8U), &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM(void)
{
   Icu_17_TimerIp_DutyCycleType strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(((Icu_17_TimerIp_ChannelType)9U), &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1(void)
{
   Icu_17_TimerIp_DutyCycleType strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(((Icu_17_TimerIp_ChannelType)10U), &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1(void)
{
   Icu_17_TimerIp_DutyCycleType strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(((Icu_17_TimerIp_ChannelType)11U), &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1(void)
{
   Icu_17_TimerIp_DutyCycleType strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(((Icu_17_TimerIp_ChannelType)12U), &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
# 175 "bswcdd\\IOHAL\\IcuHal\\IcuHal.c"
void Icu_vidGetDutyCycle(void)
{
   Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2();
   Icu_f32Cycle_AN_VOL_DCLINK_EPS = Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS();
   Icu_f32Cycle_AN_VOL_DCLINK_ACM = Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1();

   Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W = Icu_f32CalcChannelCycle(((Icu_17_TimerIp_ChannelType)13U));
   Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V = Icu_f32CalcChannelCycle(((Icu_17_TimerIp_ChannelType)14U));
   Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W = Icu_f32CalcChannelCycle(((Icu_17_TimerIp_ChannelType)15U));
   Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V = Icu_f32CalcChannelCycle(((Icu_17_TimerIp_ChannelType)16U));
}

static float32 Icu_f32CalcChannelCycle(const Icu_17_TimerIp_ChannelType Channel)
{
   Icu_17_TimerIp_DutyCycleType strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(Channel, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
