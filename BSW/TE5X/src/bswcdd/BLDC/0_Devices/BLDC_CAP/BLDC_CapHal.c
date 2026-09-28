
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Pwm_17_GtmCcu6.h" 
#include "Icu_17_TimerIp.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "BSW.h"
#include "IOHAL.h"
#include "Fault_Api.h"

#include "BLDC_Device.h"
#include "BLDC_CapDataType.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/* !Comment: Bus key clock duty 100% raw value. */
#define BLDC_BUS_KEY_DUTY_MAX      (32768)

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static boolean BLDCUHAL_bGetReadyState(void);
static void    BLDCUHAL_vidSetHallInvalidState(boolean bStatus);
static void    BLDCUHAL_vidSetHallUndefinedState(boolean bStatus);
static void    BLDCUHAL_vidSetHallSupplyLowState(boolean bStatus);
static void    BLDCUHAL_vidSetPhaseShortGndState(boolean bStatus);
static void    BLDCUHAL_vidSetPhaseShortVccState(boolean bStatus);
static void    BLDCUHAL_vidStartDutySample(void);
static void    BLDCUHAL_vidBusKeyConfig(float32 f32Percent);
static uint16  BLDCUHAL_u16ReadHallUndefineState(void);
static uint16  BLDCUHAL_u16ReadSupplyLowState(void);
float32 BLDC_f32GetPfbPwmDuty(Icu_17_TimerIp_ChannelType icuChannel);
static boolean BLDCUHAL_bGetMotPosDuty(float32 *pf32Duty, uint32 *pu32PeriodT, uint32 *pu32ActiveT);

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/
static const BLDC_HalApi BLDCUHAL_HalModuleApi = {
   /*Hardware*/
   .u16ADReadOilPressure       = NULL_PTR,//IOHAL_u16Read_CH_ADC_IN_AN_Oil_Pressure,
   .u16ADRead12VBattery        = NULL_PTR,//IOHAL_u16Read_CH_ADC_IN_AN_P12V_BATT_1,
   .u16ADRead12VBackup         = NULL_PTR,//IOHAL_u16Read_CH_ADC_IN_AN_PSUP_P9V_MULTI,
   .u16ADReadP5VAD2S           = NULL_PTR,//IOHAL_u16Read_CH_ADC_IN_AN_P5V_BT_AD2S,
   /* Mcal */
   .vidStartPosSample          = BLDCUHAL_vidStartDutySample,
   .vidBusKeyConfig            = BLDCUHAL_vidBusKeyConfig,
   .bGetMotPosDuty             = BLDCUHAL_bGetMotPosDuty,

   /* Software */
   /* Fault Detection */
   .vidSetHallInvalidState     = BLDCUHAL_vidSetHallInvalidState,
   .vidSetHallUndefinedState   = BLDCUHAL_vidSetHallUndefinedState,
   .vidSetHallSupplyLowState   = BLDCUHAL_vidSetHallSupplyLowState,
   .vidSetPhaseShortGndState   = BLDCUHAL_vidSetPhaseShortGndState,
   .vidSetPhaseShortVccState   = BLDCUHAL_vidSetPhaseShortVccState,
   /* Fault Logged */
   .u16ReadHallUndefineLogged  = BLDCUHAL_u16ReadHallUndefineState,
   .u16ReadHallSupplyLowLogged = BLDCUHAL_u16ReadSupplyLowState,
   /* Bswsrv */
   .bGetReadyState             = BLDCUHAL_bGetReadyState,
};

const BLDC_HalModule BLDC_CapHalModule = {
   .pvApi           = (const void *)&BLDCUHAL_HalModuleApi,
   .u16IOReadHall_1 = NULL_PTR,//IOHAL_u16Read_CH_DIO_IN_M_T01_H1,
   .u16IOReadHall_2 = NULL_PTR,//IOHAL_u16Read_CH_DIO_IN_M_T01_H2,
   .u16IOReadHall_3 = NULL_PTR,//IOHAL_u16Read_CH_DIO_IN_M_T01_H3
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
boolean BLDCUHAL_bGetReadyState(void)
{
   BSW_bGetBswReadySts();
}

uint16 BLDCUHAL_u16ReadHallUndefineState(void)
{
}

uint16 BLDCUHAL_u16ReadSupplyLowState(void)
{
}

/* DTC Report */
void BLDCUHAL_vidSetHallInvalidState(boolean bStatus)
{
}

void BLDCUHAL_vidSetHallUndefinedState(boolean bStatus)
{
}

void BLDCUHAL_vidSetHallSupplyLowState(boolean bStatus)
{
}

void BLDCUHAL_vidSetPhaseShortGndState(boolean bStatus)
{
   /* FaultDetection(TCUCAP1_, PHASEDETECTGND, (boolean)(bStatus)); */
}

void BLDCUHAL_vidSetPhaseShortVccState(boolean bStatus)
{
   /* FaultDetection(TCUCAP1_, PHASEDETECTVCC, (boolean)(bStatus)); */
}

void BLDCUHAL_vidStartDutySample(void)
{
   
}

void BLDCUHAL_vidBusKeyConfig(float32 f32Percent)
{
   
}

/*****************************************************************************
*
* !Runnable    : BLDC_f32GetPfbPwmDuty 
* !Trigger       : 
* !Description : BLDC motor position PWM signal management
* 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
float32 BLDC_f32GetPfbPwmDuty(Icu_17_TimerIp_ChannelType icuChannel)
{
   return 0.0f;
}

boolean BLDCUHAL_bGetMotPosDuty(float32 *pf32Duty, uint32 *pu32PeriodT, uint32 *pu32ActiveT)
{
   return 0;
}


