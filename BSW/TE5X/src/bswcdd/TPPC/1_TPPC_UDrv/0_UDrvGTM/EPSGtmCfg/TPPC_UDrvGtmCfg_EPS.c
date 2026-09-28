
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "TPPC_GtmPrvType.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "TPPC_UDrvGtmCfg_EPS.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void UDrvCfg_vidPushPwmUserConfig(IfxGtm_Pwm_Config *config);
static void UDrvCfg_vidPushPwmOutPinUserConfig(IfxGtm_Pwm_OutputConfig *config);
static void UDrvCfg_vidPushPwmChannalUserConfig(IfxGtm_Pwm_ChannelConfig *config);
static void UDrvCfg_vidPushPwmDtmUserConfig(IfxGtm_Pwm_DtmConfig *config);
static void UDrvCfg_vidPushPwmIntUserConfig(IfxGtm_Pwm_InterruptConfig *config);
static void UDrvCfg_vidPushPwmAdcTrigConfig(GtmM_AdcTrigConfig *config);

static void UDrvCfg_vidLinkPwmConfigAndPwmChConfig(IfxGtm_Pwm_Config *config, IfxGtm_Pwm_ChannelConfig *Driver);
static void UDrvCfg_vidLinkPwmChConfigAndOutPinConfig(IfxGtm_Pwm_ChannelConfig *config, IfxGtm_Pwm_OutputConfig *Driver);
static void UDrvCfg_vidLinkPwmChConfigAndDtmConfig(IfxGtm_Pwm_ChannelConfig *config, IfxGtm_Pwm_DtmConfig *Driver);
static void UDrvCfg_vidLinkPwmConfigAndIntConfig(IfxGtm_Pwm_ChannelConfig *config, IfxGtm_Pwm_InterruptConfig *Driver);

static void UDrvCfg_vidUpdateGtmMDriver(GtmM_Driver *pGtmMDriver);

#if (TPPC_UDRV_GTM_ENABLE_INT == 1)
static void UDrvCfg_vidPeriodEvent(void *data);
#endif

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions (User Config)
 ******************************************************************************/
#define TPPC_UDRV_GTM_CFG_PWM_MAP_SET              g_kpxTomOutMapSet

#define TPPC_UDRV_GTM_DEADTIME_SW_STATE \
      TPPC_UDRV_GTM_DTM_DEADTIME_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DEADTIME_ENA_VAL,     /* PWM1A */ \
                                       TPPC_UDRV_GTM_DTM_CTRL2_DEADTIME_ENA_VAL,     /* PWM1B */ \
                                       TPPC_UDRV_GTM_DTM_CTRL2_DEADTIME_ENA_VAL,     /* PWM2A */ \
                                       TPPC_UDRV_GTM_DTM_CTRL2_DEADTIME_ENA_VAL,     /* PWM2B */ \
                                       TPPC_UDRV_GTM_DTM_CTRL2_DEADTIME_ENA_VAL,     /* PWM3A */ \
                                       TPPC_UDRV_GTM_DTM_CTRL2_DEADTIME_ENA_VAL)     /* PWM3B */

/* 0x09 */
#define TPPC_UDRV_GTM_INVERT_STATE_1 \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */
/* 0x12 */
#define TPPC_UDRV_GTM_INVERT_STATE_2 \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */
/* 0x18 */
#define TPPC_UDRV_GTM_INVERT_STATE_3 \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */
/* 0x24 */
#define TPPC_UDRV_GTM_INVERT_STATE_4 \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */
/* 0x21 */
#define TPPC_UDRV_GTM_INVERT_STATE_5 \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */
/* 0x06 */
#define TPPC_UDRV_GTM_INVERT_STATE_6 \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */

/* 0x00 */
#define TPPC_UDRV_GTM_INVERT_STATE_OFF \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */

/* 0x00 */
#define TPPC_UDRV_GTM_INVERT_STATE_ON \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */

/* 0x00 */
#define TPPC_UDRV_GTM_INVERT_STATE_LOW_ASC \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */

/* 0x00 */
#define TPPC_UDRV_GTM_INVERT_STATE_HIGH_ASC \
      TPPC_UDRV_GTM_DTM_INVERT_STATE(TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM1B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM2B */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL,     /* PWM3A */ \
                                     TPPC_UDRV_GTM_DTM_CTRL2_DIRECT_OUTPUT_VAL)     /* PWM3B */

/*******************************************************************************
 ****  Private Macro Definitions (Fixed Parameter)
 ******************************************************************************/
#if (TPPC_UDRV_GTM_PWM_ACTIVE_STATE == GTM_PWM_ACTIVE_HIGH)
#define TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE       TPPC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_HIGH
#define TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE     TPPC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_LOW
#else
#define TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE       TPPC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_LOW
#define TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE     TPPC_UDRV_GTM_DTM_CTRL2_CONST_OUTPUT_HIGH
#endif

/* 0x09 */
#define TPPC_UDRV_GTM_PWM_STATE_1 \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,    /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE,       /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE)     /* PWM3B */
/* 0x12 */
#define TPPC_UDRV_GTM_PWM_STATE_2 \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE,       /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,    /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE)     /* PWM3B */
/* 0x18 */
#define TPPC_UDRV_GTM_PWM_STATE_3 \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE,       /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,    /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE)     /* PWM3B */
/* 0x24 */
#define TPPC_UDRV_GTM_PWM_STATE_4 \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,    /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE)       /* PWM3B */
/* 0x21 */
#define TPPC_UDRV_GTM_PWM_STATE_5 \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,    /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE)       /* PWM3B */
/* 0x06 */
#define TPPC_UDRV_GTM_PWM_STATE_6 \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE,       /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,    /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE)     /* PWM3B */

/* 0x00 */
#define TPPC_UDRV_GTM_PWM_STATE_OFF \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE)     /* PWM3B */

/* 0x00 */
#define TPPC_UDRV_GTM_PWM_STATE_ON \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,     /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,     /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,     /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,     /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL,     /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CTRL2_FUNC_OUTPUT_VAL)     /* PWM3B */

/* 0x00 */
#define TPPC_UDRV_GTM_PWM_STATE_LOW_ASC \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE,       /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE,       /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE)       /* PWM3B */

/* 0x00 */
#define TPPC_UDRV_GTM_PWM_STATE_HIGH_ASC \
      TPPC_UDRV_GTM_DTM_PWM_STATE(TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE,       /* PWM1A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM1B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE,       /* PWM2A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE,     /* PWM2B */ \
                                  TPPC_UDRV_GTM_DTM_CONST_ACTIVE_STATE,       /* PWM3A */ \
                                  TPPC_UDRV_GTM_DTM_CONST_INACTIVE_STATE)     /* PWM3B */

/* 0x09 */
#define TPPC_UDRV_GTM_STATE_1 \
   (TPPC_UDRV_GTM_PWM_STATE_1 | TPPC_UDRV_GTM_INVERT_STATE_1)
/* 0x12 */
#define TPPC_UDRV_GTM_STATE_2 \
   (TPPC_UDRV_GTM_PWM_STATE_2 | TPPC_UDRV_GTM_INVERT_STATE_2)
/* 0x18 */
#define TPPC_UDRV_GTM_STATE_3 \
   (TPPC_UDRV_GTM_PWM_STATE_3 | TPPC_UDRV_GTM_INVERT_STATE_3)
/* 0x24 */
#define TPPC_UDRV_GTM_STATE_4 \
   (TPPC_UDRV_GTM_PWM_STATE_4 | TPPC_UDRV_GTM_INVERT_STATE_4)
/* 0x21 */
#define TPPC_UDRV_GTM_STATE_5 \
   (TPPC_UDRV_GTM_PWM_STATE_5 | TPPC_UDRV_GTM_INVERT_STATE_5)
/* 0x06 */
#define TPPC_UDRV_GTM_STATE_6 \
   (TPPC_UDRV_GTM_PWM_STATE_6 | TPPC_UDRV_GTM_INVERT_STATE_6)
/* 0x00 */
#define TPPC_UDRV_GTM_STATE_OFF \
   (TPPC_UDRV_GTM_PWM_STATE_OFF | TPPC_UDRV_GTM_INVERT_STATE_OFF)
/* 0x00 */
#define TPPC_UDRV_GTM_STATE_ON \
   (TPPC_UDRV_GTM_PWM_STATE_ON | TPPC_UDRV_GTM_INVERT_STATE_ON | TPPC_UDRV_GTM_DEADTIME_SW_STATE)
/* 0x00 */
#define TPPC_UDRV_GTM_STATE_LOW_ASC \
   (TPPC_UDRV_GTM_PWM_STATE_LOW_ASC | TPPC_UDRV_GTM_INVERT_STATE_LOW_ASC)
/* 0x00 */
#define TPPC_UDRV_GTM_STATE_HIGH_ASC \
   (TPPC_UDRV_GTM_PWM_STATE_HIGH_ASC | TPPC_UDRV_GTM_INVERT_STATE_HIGH_ASC)

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static IfxGtm_Pwm_Channel   g_xPwmChannels[TPPC_UDRV_GTM_MAX_CH_NUM];     /* Array containing channel data after configuration     */
static float32              g_xPwmDutyCycles[TPPC_UDRV_GTM_MAX_CH_NUM];   /* Duty Cycle values to hold                             */
static float32              g_xPwmPhases[TPPC_UDRV_GTM_MAX_CH_NUM];       /* Phase Shift values to hold                            */
static IfxGtm_Pwm_DeadTime  g_xPwmDeadTimes[TPPC_UDRV_GTM_MAX_CH_NUM];    /* Dead Time values to hold                              */

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/
static IfxGtm_Tom_ToutMapP g_kpxTomOutMapSet[TPPC_UDRV_GTM_MAX_CH_NUM][2] = {
   {
      TPPC_UDRV_GTM_CFG_OUT_PORT_DTM_TRIG,
      TPPC_UDRV_GTM_CFG_OUT_PORT_DTM_TRIG_N
   },
   {
      TPPC_UDRV_GTM_CFG_OUT_PORT_PWM1,
      TPPC_UDRV_GTM_CFG_OUT_PORT_PWM1_N
   },
   {
      TPPC_UDRV_GTM_CFG_OUT_PORT_PWM2,
      TPPC_UDRV_GTM_CFG_OUT_PORT_PWM2_N
   },
   {
      TPPC_UDRV_GTM_CFG_OUT_PORT_PWM3,
      TPPC_UDRV_GTM_CFG_OUT_PORT_PWM3_N
   },
   {
      TPPC_UDRV_GTM_CFG_OUT_PORT_ADC_TRIG,
      TPPC_UDRV_GTM_CFG_OUT_PORT_ADC_TRIG_N
   }
};

/* Main PWM config structure                          */
static const IfxGtm_Pwm_Config g_kxGtmPwmUserCfg = {
   .gtmSFR                 = &MODULE_GTM,                       /**< \brief Pointer to GTM module */
   .cluster                = TPPC_UDRV_GTM_CFG_GTM_CLUSTER,     /* Cluster                                    */
   .subModule              = IfxGtm_Pwm_SubModule_tom,          /* Sub module                                 */
   .alignment              = IfxGtm_Pwm_Alignment_center,       /* Alignment                                  */
   .numChannels            = TPPC_UDRV_GTM_MAX_CH_NUM,          /* Number of channels configured              */
   .channels               = NULL_PTR,                          /* Attach Channel configuration               */
   .frequency              = TPPC_UDRV_GTM_PWM_FREQ,            /* PWM frequency                              */
   .clockSource.atom       = IfxGtm_Cmu_Clk_0,                  /* Clock source for TOM                       */
   .dtmClockSource         = IfxGtm_Dtm_ClockSource_cmuClock0,  /* Clock source for DTM                       */
   .dtmPwmInitState        = TPPC_UDRV_GTM_PWM_STATE_OFF,       /* Clock source for DTM                       */
   .syncStart              = FALSE,                              /* Start all channels after init              */
   .syncUpdateEnabled      = TRUE                               /* TRUE: Update compare registers from shadow at the end of period                       */
};

/* Array containing configuration for PWM Channels    */
static const IfxGtm_Pwm_ChannelConfig g_kxGtmPwmChUserCfg[TPPC_UDRV_GTM_MAX_CH_NUM] = {
   {
      TPPC_UDRV_GTM_CFG_CHANNEL_DTM_TRIG, /* Tom channel index to be used for base channel     */
      0.0f,                      /* Phase shift in radians (range: 0.0 .. 2pi);
                                   * only for edge aligned sync channels)               */
      2.0f,                      /* PWM duty in % (range: 0.0 .. 100.0)                */
      NULL_PTR,
      NULL_PTR,
      NULL_PTR,
      NULL_PTR
   },
   {
      TPPC_UDRV_GTM_CFG_CHANNEL_PWM1, /* Tom channel index to be used for base channel     */
      0.0f,                       /* Phase shift in radians (range: 0.0 .. 2pi);
                                   * only for edge aligned sync channels)               */
      0.0f,                      /* PWM duty in % (range: 0.0 .. 100.0)                */
      NULL_PTR,
      NULL_PTR,
      NULL_PTR,
      NULL_PTR
   },
   {
      TPPC_UDRV_GTM_CFG_CHANNEL_PWM2, /* Tom channel index to be used for base channel     */
      0.0f,                       /* Phase shift in radians (range: 0.0 .. 2pi);
                                   * only for edge aligned sync channels)               */
      0.0f,                       /* PWM duty in % (range: 0.0 .. 100.0)                */
      NULL_PTR,
      NULL_PTR,
      NULL_PTR,
      NULL_PTR
   },
   {
      TPPC_UDRV_GTM_CFG_CHANNEL_PWM3, /* Tom channel index to be used for base channel     */
      0.0f,                       /* Phase shift in radians (range: 0.0 .. 2pi);
                                   * only for edge aligned sync channels)               */
      0.0f,                       /* PWM duty in % (range: 0.0 .. 100.0)                */
      NULL_PTR,
      NULL_PTR,
      NULL_PTR,
      NULL_PTR
   },
   {
      TPPC_UDRV_GTM_CFG_CHANNEL_ADC_TRIG, /* Tom channel index to be used for base channel     */
      0.0f,                       /* Phase shift in radians (range: 0.0 .. 2pi);
                                   * only for edge aligned sync channels)               */
      2.0f,                       /* PWM duty in % (range: 0.0 .. 100.0)                */
      NULL_PTR,
      NULL_PTR,
      NULL_PTR,
      NULL_PTR
   },
};

/* Array Containing Dead Time Values for PWM Channels */
static const TPPC_UdrvGtmDeadtimeCfg g_kxGtmPwmDtmUserCfg = {
   .bParamIsValid = TRUE,
   .DtmUserCfg = {
      {
         {
            TPPC_UDRV_GTM_PWM_DEADTIME,
            TPPC_UDRV_GTM_PWM_DEADTIME
         }
      },
      {
         {
            TPPC_UDRV_GTM_PWM_DEADTIME,
            TPPC_UDRV_GTM_PWM_DEADTIME
         }
      },
      {
         {
            TPPC_UDRV_GTM_PWM_DEADTIME,
            TPPC_UDRV_GTM_PWM_DEADTIME
         }
      },
      {
         {
            TPPC_UDRV_GTM_PWM_DEADTIME,
            TPPC_UDRV_GTM_PWM_DEADTIME
         }
      },
      {
         {
            TPPC_UDRV_GTM_PWM_DEADTIME,
            TPPC_UDRV_GTM_PWM_DEADTIME
         }
      }
   }
};

/* Interrupt Configuration of Master Channel          */
static const IfxGtm_Pwm_InterruptConfig g_kxGtmIntUserCfg = {
   .mode          = IfxGtm_IrqMode_pulseNotify,    /* IRQ mode of interrupt                                                              */
   .isrProvider   = IfxSrc_Tos_cpu0,               /* Type of Service                         : The actual parameters are set by the OS  */
   .priority      = 20,                            /* Interrupt priority                      : The actual parameters are set by the OS  */
#if (TPPC_UDRV_GTM_ENABLE_INT == 1)
   .periodEvent   = UDrvCfg_vidPeriodEvent,        /* Callback function pointer for CC0 Event : The actual parameters are set by the OS  */
   .dutyEvent     = NULL_PTR                       /* Callback function pointer for CC1 Event : The actual parameters are set by the OS  */
#else
   .periodEvent   = NULL_PTR,                      /* Callback function pointer for CC0 Event : The actual parameters are set by the OS  */
   .dutyEvent     = NULL_PTR                       /* Callback function pointer for CC1 Event : The actual parameters are set by the OS  */
#endif
};

static const GtmM_AdcTrigConfig g_kxGtmAdcTrigUserCfg = {
   .eAdcGroup        = TPPC_UDRV_GTM_CFG_ADC_TRIG_GROUP,
   .eAdcTrig         = TPPC_UDRV_GTM_CFG_ADC_TRIG_SOURCE,
   .eAdcTrigSource   = TPPC_UDRV_GTM_CFG_ADC_TRIG_CLUSTER,
   .eAdcTrigChannel  = TPPC_UDRV_GTM_CFG_ADC_TRIG_CHANNEL,
   .bAdcTrigEnable   = TPPC_UDRV_GTM_CFG_ADC_TRIG_ENABLE,
   .u8AdcTrigChIndex = TPPC_UDRV_GTM_ADC_TRIG_INDEX
};

/* !Comment: TPPC control table */
/* Column define: Current hall ;  Expect hall;  OutputModel; */
static const GtmCfg_GenHallCtrlList TPPCGtm_au8BackwardTable[6] = {
   {1, 5, .PwmState = {TPPC_UDRV_GTM_STATE_1}},
   {2, 3, .PwmState = {TPPC_UDRV_GTM_STATE_2}},
   {3, 1, .PwmState = {TPPC_UDRV_GTM_STATE_3}},
   {4, 6, .PwmState = {TPPC_UDRV_GTM_STATE_4}},
   {5, 4, .PwmState = {TPPC_UDRV_GTM_STATE_5}},
   {6, 2, .PwmState = {TPPC_UDRV_GTM_STATE_6}}
};

/* !Comment: TPPC control table */
/* Column define: Current hall ;  Expect hall;  OutputModel;  */
static const GtmCfg_GenHallCtrlList TPPCGtm_au8ForwardTable[6] = {
   {1, 3, .PwmState = {TPPC_UDRV_GTM_STATE_5}},
   {2, 6, .PwmState = {TPPC_UDRV_GTM_STATE_3}},
   {3, 2, .PwmState = {TPPC_UDRV_GTM_STATE_1}},
   {4, 5, .PwmState = {TPPC_UDRV_GTM_STATE_6}},
   {5, 1, .PwmState = {TPPC_UDRV_GTM_STATE_4}},
   {6, 4, .PwmState = {TPPC_UDRV_GTM_STATE_2}}
};

static const GtmCfg_GenPwmCtrlList TPPCGtm_PwmCtrlList = {
   .pxBackwardList  = &TPPCGtm_au8BackwardTable[0],
   .pxForwardList   = &TPPCGtm_au8ForwardTable[0],
   .u32PWMOnState   = TPPC_UDRV_GTM_STATE_ON,
   .u32PWMOffState  = TPPC_UDRV_GTM_STATE_OFF,
   .u32LowAscState  = TPPC_UDRV_GTM_STATE_LOW_ASC,
   .u32HighAscState = TPPC_UDRV_GTM_STATE_HIGH_ASC
};

static const GtmM_PwmDeviceInitApi g_xPwmDeviceInitApi = {
   UDrvCfg_vidPushPwmUserConfig,
   UDrvCfg_vidPushPwmOutPinUserConfig,
   UDrvCfg_vidPushPwmChannalUserConfig,
   UDrvCfg_vidPushPwmDtmUserConfig,
   UDrvCfg_vidPushPwmIntUserConfig,
   UDrvCfg_vidPushPwmAdcTrigConfig,

   /* Cfg Link Api */
   UDrvCfg_vidLinkPwmConfigAndPwmChConfig,
   UDrvCfg_vidLinkPwmChConfigAndOutPinConfig,
   UDrvCfg_vidLinkPwmChConfigAndDtmConfig,
   UDrvCfg_vidLinkPwmConfigAndIntConfig,
   UDrvCfg_vidUpdateGtmMDriver
};

/*******************************************************************************
 ****  Global Constant Definitions
 ******************************************************************************/
const GtmCfgHandle UDrvCfg_xGtmCfg_EPS = {
   .u8DtmTrigChannel = TPPC_UDRV_GTM_CFG_CHANNEL_DTM_TRIG,
   .u8Pwm1Channel    = TPPC_UDRV_GTM_CFG_CHANNEL_PWM1,
   .u8Pwm2Channel    = TPPC_UDRV_GTM_CFG_CHANNEL_PWM2,
   .u8Pwm3Channel    = TPPC_UDRV_GTM_CFG_CHANNEL_PWM3,
   .pkxPwmCtrlList   = &TPPCGtm_PwmCtrlList,
   .pkxPwmInitApi    = &g_xPwmDeviceInitApi
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  UDrvCfg_vidPushPwmUserConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidPushPwmUserConfig(IfxGtm_Pwm_Config *config)
{
   const IfxGtm_Pwm_Config *UserConfigPtr = &g_kxGtmPwmUserCfg;
   
   config->gtmSFR                 = UserConfigPtr->gtmSFR;                       /**< \brief Pointer to GTM module */
   config->cluster                = UserConfigPtr->cluster;                      /* Cluster                                    */
   config->subModule              = UserConfigPtr->subModule;                    /* Sub module                                 */
   config->alignment              = UserConfigPtr->alignment;                    /* Alignment                                  */
   config->numChannels            = UserConfigPtr->numChannels;                  /* Number of channels configured              */
   config->channels               = UserConfigPtr->channels;                     /* Attach Channel configuration               */
   config->frequency              = UserConfigPtr->frequency;                    /* PWM frequency                              */
   config->clockSource.atom       = UserConfigPtr->clockSource.atom;             /* Clock source for ATOM                      */
   config->dtmClockSource         = UserConfigPtr->dtmClockSource;               /* Clock source for DTM                       */
   config->dtmPwmInitState        = UserConfigPtr->dtmPwmInitState;              /* Clock source for DTM                       */
   config->syncStart              = UserConfigPtr->syncStart;                    /* Start all channels after init              */
   config->syncUpdateEnabled      = UserConfigPtr->syncUpdateEnabled;            /* TRUE: Update compare registers from shadow at the end of period                       */
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidPushPwmOutPinUserConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidPushPwmOutPinUserConfig(IfxGtm_Pwm_OutputConfig *config)
{
   uint8 u8LocIndex;
   //const IfxGtm_Pwm_OutputConfig *UserConfigPtr = &g_kxGtmPwmOutPinUserCfg[0];
   
   for(u8LocIndex = 0; u8LocIndex < TPPC_UDRV_GTM_MAX_CH_NUM; u8LocIndex++)
   {
      config[u8LocIndex].pin                   = (IfxGtm_Pwm_ToutMap*)((uint32)TPPC_UDRV_GTM_CFG_PWM_MAP_SET[u8LocIndex][0]);     /* HVLV Primary PWM High-side (T1)   */
      config[u8LocIndex].complementaryPin      = (IfxGtm_Pwm_ToutMap*)((uint32)TPPC_UDRV_GTM_CFG_PWM_MAP_SET[u8LocIndex][1]);     /* HVLV Primary PWM Low-side (T2)    */
      config[u8LocIndex].polarity              = TPPC_UDRV_GTM_PWM_ACTIVE_STATE;                                          /* Polarity of High-Side             */
      config[u8LocIndex].complementaryPolarity = TPPC_UDRV_GTM_PWM_INACTIVE_STATE;                                        /* Polarity of Low-Side              */
      config[u8LocIndex].outputMode            = IfxPort_OutputMode_pushPull;                                             /* Output mode                       */
      config[u8LocIndex].padDriver             = IfxPort_PadDriver_cmosAutomotiveSpeed1;                                  /* Pad driver                        */
   }
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidPushPwmChannalUserConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidPushPwmChannalUserConfig(IfxGtm_Pwm_ChannelConfig *config)
{
   uint8 u8LocIndex;
   const IfxGtm_Pwm_ChannelConfig *UserConfigPtr = &g_kxGtmPwmChUserCfg[0];
   
#if (0 == (TPPC_UDRV_GTM_CFG_CHANNEL_DTM_TRIG % 4))
   for(u8LocIndex = 0; u8LocIndex < TPPC_UDRV_GTM_MAX_CH_NUM; u8LocIndex++)
   {
      config[u8LocIndex].timerCh      = UserConfigPtr[u8LocIndex].timerCh;              /* Atom channel index to be used for base channel     */
      config[u8LocIndex].phase        = UserConfigPtr[u8LocIndex].phase;                /* Phase shift in radians (range: 0.0 .. 2pi);
                                                                                         * only for edge aligned sync channels)               */
      config[u8LocIndex].duty         = UserConfigPtr[u8LocIndex].duty;                 /* PWM duty in % (range: 0.0 .. 100.0)                */
      config[u8LocIndex].dtm          = UserConfigPtr[u8LocIndex].dtm;                  /* Attach Dead time configuration for this channel    */
      config[u8LocIndex].output       = UserConfigPtr[u8LocIndex].output;               /* Attach Pin connections and polarities for this ch. */
      config[u8LocIndex].mscOut       = UserConfigPtr[u8LocIndex].mscOut;               /* MSC configuration for this channel                 */
      config[u8LocIndex].interrupt    = UserConfigPtr[u8LocIndex].interrupt;            /* Attach Interrupt configuration for this channel    */
   }
#else
   uint8 u8DtmTrigIndex = TPPC_UDRV_GTM_CFG_CHANNEL_DTM_TRIG % 4;

   for(u8LocIndex = 0; u8LocIndex < u8DtmTrigIndex; u8LocIndex++)
   {
      config[u8LocIndex].timerCh      = UserConfigPtr[u8LocIndex + 1].timerCh;              /* Atom channel index to be used for base channel     */
      config[u8LocIndex].phase        = UserConfigPtr[u8LocIndex + 1].phase;                /* Phase shift in radians (range: 0.0 .. 2pi);
                                                                                             * only for edge aligned sync channels)               */
      config[u8LocIndex].duty         = UserConfigPtr[u8LocIndex + 1].duty;                 /* PWM duty in % (range: 0.0 .. 100.0)                */
      config[u8LocIndex].dtm          = UserConfigPtr[u8LocIndex + 1].dtm;                  /* Attach Dead time configuration for this channel    */
      config[u8LocIndex].output       = UserConfigPtr[u8LocIndex + 1].output;               /* Attach Pin connections and polarities for this ch. */
      config[u8LocIndex].mscOut       = UserConfigPtr[u8LocIndex + 1].mscOut;               /* MSC configuration for this channel                 */
      config[u8LocIndex].interrupt    = UserConfigPtr[u8LocIndex + 1].interrupt;            /* Attach Interrupt configuration for this channel    */
   }

   config[u8LocIndex].timerCh      = UserConfigPtr[0].timerCh;              /* Atom channel index to be used for base channel     */
   config[u8LocIndex].phase        = UserConfigPtr[0].phase;                /* Phase shift in radians (range: 0.0 .. 2pi);
                                                                                    * only for edge aligned sync channels)               */
   config[u8LocIndex].duty         = UserConfigPtr[0].duty;                 /* PWM duty in % (range: 0.0 .. 100.0)                */
   config[u8LocIndex].dtm          = UserConfigPtr[0].dtm;                  /* Attach Dead time configuration for this channel    */
   config[u8LocIndex].output       = UserConfigPtr[0].output;               /* Attach Pin connections and polarities for this ch. */
   config[u8LocIndex].mscOut       = UserConfigPtr[0].mscOut;               /* MSC configuration for this channel                 */
   config[u8LocIndex].interrupt    = UserConfigPtr[0].interrupt;            /* Attach Interrupt configuration for this channel    */

   u8LocIndex++;

   for(; u8LocIndex < TPPC_UDRV_GTM_MAX_CH_NUM; u8LocIndex++)
   {
      config[u8LocIndex].timerCh      = UserConfigPtr[u8LocIndex].timerCh;              /* Atom channel index to be used for base channel     */
      config[u8LocIndex].phase        = UserConfigPtr[u8LocIndex].phase;                /* Phase shift in radians (range: 0.0 .. 2pi);
                                                                                         * only for edge aligned sync channels)               */
      config[u8LocIndex].duty         = UserConfigPtr[u8LocIndex].duty;                 /* PWM duty in % (range: 0.0 .. 100.0)                */
      config[u8LocIndex].dtm          = UserConfigPtr[u8LocIndex].dtm;                  /* Attach Dead time configuration for this channel    */
      config[u8LocIndex].output       = UserConfigPtr[u8LocIndex].output;               /* Attach Pin connections and polarities for this ch. */
      config[u8LocIndex].mscOut       = UserConfigPtr[u8LocIndex].mscOut;               /* MSC configuration for this channel                 */
      config[u8LocIndex].interrupt    = UserConfigPtr[u8LocIndex].interrupt;            /* Attach Interrupt configuration for this channel    */
   }
#endif
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidPushPwmDtmUserConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidPushPwmDtmUserConfig(IfxGtm_Pwm_DtmConfig *config)
{
   uint8 u8LocIndex;
   
   if(g_kxGtmPwmDtmUserCfg.bParamIsValid == TRUE)
   {
      const IfxGtm_Pwm_DtmConfig *UserConfigPtr = &(g_kxGtmPwmDtmUserCfg.DtmUserCfg[0]);
      
      for(u8LocIndex = 0; u8LocIndex < TPPC_UDRV_GTM_MAX_CH_NUM; u8LocIndex++)
      {
         config[u8LocIndex].deadTime.rising    = UserConfigPtr[u8LocIndex].deadTime.rising;
         config[u8LocIndex].deadTime.falling   = UserConfigPtr[u8LocIndex].deadTime.falling;
      }
   }
   else
   {
      for(u8LocIndex = 0; u8LocIndex < TPPC_UDRV_GTM_MAX_CH_NUM; u8LocIndex++)
      {
         config[u8LocIndex].deadTime.rising    = 0;
         config[u8LocIndex].deadTime.falling   = 0;
      }
   }
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidPushPwmIntUserConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidPushPwmIntUserConfig(IfxGtm_Pwm_InterruptConfig *config)
{
   const IfxGtm_Pwm_InterruptConfig *UserConfigPtr = &g_kxGtmIntUserCfg;
   
   config->mode          = UserConfigPtr->mode;                      /* IRQ mode of interrupt                          */
   config->isrProvider   = UserConfigPtr->isrProvider;               /* Type of Service                                */
   config->priority      = UserConfigPtr->priority;                  /* Interrupt priority                             */
   config->periodEvent   = UserConfigPtr->periodEvent;               /* Callback function pointer for CC0 Event        */
   config->dutyEvent     = UserConfigPtr->dutyEvent;                 /* Callback function pointer for CC1 Event        */
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidPushPwmAdcTrigConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidPushPwmAdcTrigConfig(GtmM_AdcTrigConfig *config)
{
   const GtmM_AdcTrigConfig *UserConfigPtr = &g_kxGtmAdcTrigUserCfg;

   config->bAdcTrigEnable   = UserConfigPtr->bAdcTrigEnable;
   config->u8AdcTrigChIndex = UserConfigPtr->u8AdcTrigChIndex;
   
   config->eAdcGroup        = UserConfigPtr->eAdcGroup;
   config->eAdcTrig         = UserConfigPtr->eAdcTrig;
   config->eAdcTrigChannel  = UserConfigPtr->eAdcTrigChannel;
   config->eAdcTrigSource   = UserConfigPtr->eAdcTrigSource;
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidLinkPwmConfigAndPwmChConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 *                  :  Driver : Device driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidLinkPwmConfigAndPwmChConfig(IfxGtm_Pwm_Config *config, IfxGtm_Pwm_ChannelConfig *Driver)
{
   config->channels = Driver;
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidLinkPwmChConfigAndOutPinConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 *                  :  Driver : Device driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidLinkPwmChConfigAndOutPinConfig(IfxGtm_Pwm_ChannelConfig *config, IfxGtm_Pwm_OutputConfig *Driver)
{
   uint8 u8LocIndex;
   
   for(u8LocIndex = 0; u8LocIndex < TPPC_UDRV_GTM_MAX_CH_NUM; u8LocIndex++)
   {
      config[u8LocIndex].output = &Driver[u8LocIndex];
   }
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidLinkPwmChConfigAndDtmConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 *                  :  Driver : Device driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidLinkPwmChConfigAndDtmConfig(IfxGtm_Pwm_ChannelConfig *config, IfxGtm_Pwm_DtmConfig *Driver)
{
   uint8 u8LocIndex;
   
   for(u8LocIndex = 0; u8LocIndex < TPPC_UDRV_GTM_MAX_CH_NUM; u8LocIndex++)
   {
      config[u8LocIndex].dtm = &Driver[u8LocIndex];
   }
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidLinkPwmConfigAndIntConfig
 * Description      :  
 * Input parameter  :  config : Ram config handle
 *                  :  Driver : Device driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidLinkPwmConfigAndIntConfig(IfxGtm_Pwm_ChannelConfig *config, IfxGtm_Pwm_InterruptConfig *Driver)
{
   config[0].interrupt = Driver;
}

/**********************************************************************
 * Function name    :  UDrvCfg_vidUpdateGtmMDriver
 * Description      :  
 * Input parameter  :  pGtmMDriver : GTM device driver handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidUpdateGtmMDriver(GtmM_Driver *pGtmMDriver)
{
   pGtmMDriver->channels   = &g_xPwmChannels[0];     /* Array containing channel data after configuration     */
   pGtmMDriver->dutyCycles = &g_xPwmDutyCycles[0];   /* Duty Cycle values to hold                             */
   pGtmMDriver->phases     = &g_xPwmPhases[0];       /* Phase Shift values to hold                            */
   pGtmMDriver->deadTimes  = &g_xPwmDeadTimes[0];    /* Dead Time values to hold                              */
}

#if (TPPC_UDRV_GTM_ENABLE_INT == 1)
/**********************************************************************
 * Function name    :  TPPC_vidMotorMgrVarInit
 * Description      :  
 * Input parameter  :  PTPPC_Device : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void UDrvCfg_vidPeriodEvent(void *data)
{
   /* Used for initialization, not called at run time */
}
#endif

