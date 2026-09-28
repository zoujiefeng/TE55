
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "IfxStm_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "CDD_TPPC.h"
#include "MAIN_AcuTsk.h"
#include "MAIN_OcuTsk.h"
#include "FR_System.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/* !Comment: Get STM1 timer counter value, STM1 frequency is 100MHZ. */
#define SYS_u32GET_STM1_TIM0()               ((uint32)MODULE_STM1.TIM0.U)
#define SYS_SEC_TO_CLK_GAIN                  ((float)10000000.0f)
#define SYS_T12_CLK_PERD                     ((float)0.00000004f)
/* !Comment: T12 clock number per second. */
#define SYS_T12_CLK_NUM_1S                   (25000000.0f)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint32 Core3_1msStartTime;
static uint32 Core3_1msLastStartTime;
static uint32 Core3_1msStopTime;
static uint32 Core3_1msTotalTime;
static uint32 Core3_1msPeriodTime;
static uint32 Core3_10msStartTime;
static uint32 Core3_10msLastStartTime;
static uint32 Core3_10msStopTime;
static uint32 Core3_10msTotalTime;
static uint32 Core3_10msPeriodTime;

static uint32 Core3_VsiStartTime;
static uint32 Core3_VsiLastStartTime;
static uint32 Core3_VsiStopTime;
static uint32 Core3_VsiTotalTime;
static uint32 Core3_VsiPeriodTime;

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void CDD_TPPC_vidInit(void)
{
   CDD_TPPC_vidHwInit();
}

void CDD_TPPC_vidCORE3_1ms_func(void)
{
   Core3_1msStartTime = SYS_u32GET_STM1_TIM0();
   
   Core3_1msPeriodTime = Core3_1msStartTime - Core3_1msLastStartTime;
   Core3_1msLastStartTime = Core3_1msStartTime;

   MAIN_vidAcuTask1ms();
   MAIN_vidOcuTask1ms();

   Core3_1msStopTime = SYS_u32GET_STM1_TIM0();
   if(Core3_1msStopTime >= Core3_1msStartTime)
   {
      Core3_1msTotalTime = Core3_1msStopTime - Core3_1msStartTime;
   }
}

void CDD_TPPC_vidCORE3_2ms_func(void)
{
   MAIN_vidAcuTask2ms();
   MAIN_vidOcuTask2ms();
}

void CDD_TPPC_vidCORE3_10ms_func(void)
{
   Core3_10msStartTime = SYS_u32GET_STM1_TIM0();
   
   Core3_10msPeriodTime = Core3_10msStartTime - Core3_10msLastStartTime;
   Core3_10msLastStartTime = Core3_10msStartTime;

   MAIN_vidAcuTask10ms();
   MAIN_vidOcuTask10ms();

   Core3_10msStopTime = SYS_u32GET_STM1_TIM0();
   if(Core3_10msStopTime >= Core3_10msStartTime)
   {
      Core3_10msTotalTime = Core3_10msStopTime - Core3_10msStartTime;
   }
}

void CDD_TPPC_vidCORE3_100ms_func(void)
{
   MAIN_vidAcuTask100ms();
   MAIN_vidOcuTask100ms();
}

void CDD_TPPC_vidCORE3_200ms_func(void)
{
   MAIN_vidAcuTask200ms();
   MAIN_vidOcuTask200ms();
}

#define  ASW_START_CODE_FAST_CPU3_SECTION
#include "AswMemMap.h"
void CDD_TPPC_vidPwmTreatment(void)
{
   Core3_VsiStartTime = SYS_u32GET_STM1_TIM0();
   
   Core3_VsiPeriodTime = Core3_VsiStartTime - Core3_VsiLastStartTime;
   Core3_VsiLastStartTime = Core3_VsiStartTime;

   MAIN_vidAcuPwmTreatment();
   MAIN_vidOcuPwmTreatment();
   FR_vidEcuMainHandler(eFR_DCAC_INDEX, 166);

   Core3_VsiStopTime = SYS_u32GET_STM1_TIM0();
   if(Core3_VsiStopTime >= Core3_VsiStartTime)
   {
      Core3_VsiTotalTime = Core3_VsiStopTime - Core3_VsiStartTime;
   }
}
#define  ASW_STOP_CODE_FAST_CPU3_SECTION
#include "AswMemMap.h"

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/



/*-------------------------------- end of file -------------------------------*/
