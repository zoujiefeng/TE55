/*
 *
 *    Clock initializzation Funcntion
 *
 *
 */

#include "McuFunc.h"
#include "Mcu.h"
#include "IfxSmu_reg.h"
#include "IfxScu_reg.h"

#include "CCU6.h"
#include "MCS.h"
#include "RESBSL.h"
#include "HARD.h"
#include "STFSRV.h"
#include "GSTFSRV.h"
#include "ASTFSRV.h"
#include "OSTFSRV.h"
#include "MAIN_Tsk.h"
#include "GMAIN_Tsk.h"
#include "bswsrv.h"
#include "DEVHAL.h"
#include "CCP.h"
#include "SPY.h"
#include "CALUSR.h"
#include "DSM.h"
#include "FAIL.h"
#include "OverlayManager.h"
#include "SBC.h"
#include "VADC.h"
#include "CDD_TPPC.h"
#include "MAIN_MuxFuncCfg.h"
#include "Irq.h"
#include "IfxSrc_reg.h"
#include "IfxGtm_reg.h"
#include "GtmM.h"

#define CPU0_START_SEC_CODE
#include "MemMap.h"
void McuFunc_InitializeClock(void)
{
   /* Initialize MCU Clock*/
   /* parameter 0 is chosen here by default, the first clock configuration */
   (void)Mcu_InitClock(0);
   /* wait till PLL lock */
   while(Mcu_GetPllStatus() == MCU_PLL_UNLOCKED)
   {

   }
   /* distribute the clock */
   Mcu_DistributePllClock();
}

void McuFunc_vidCddModuleInitCore0(void)
{
   (void) CCU6_Init();
   (void) GCCU6_Init();
   (void) SBC_vidInit();
   (void) MCS_vidVsiGtmMcs0Init();
   (void) RESBSL_vidInit();
   (void) HARD_vidInit();
   (void) STFSRV_vidInit();
   (void) GSTFSRV_vidInit();
   (void) ASTFSRV_vidInit();
   (void) OSTFSRV_vidInit();
   (void) Overlay_Init();
   (void) CCP_vidIni(NULL_PTR);
   (void) SPY_vidInit();
   (void) CalUsr_vidInit();
   (void) FaultCounterInit();
   (void) FAIL_vidInit();
   (void) MAIN_TaskInit();
   (void) GMAIN_TaskInit();
   (void) MAIN_MFC_vidModuleInit();
   (void) MAIN_ECP_vidModuleInit();
	GtmM_vid_ACM_Icu_Mode_Cfg();
	GtmM_vid_EPS_Icu_Mode_Cfg();
}
#define CPU0_STOP_SEC_CODE
#include "MemMap.h"

#define CPU1_START_SEC_CODE
#include "MemMap.h"
void McuFunc_vidCddModuleInitCore1(void)
{

}
#define CPU1_STOP_SEC_CODE
#include "MemMap.h"

#define CPU2_START_SEC_CODE
#include "MemMap.h"
void McuFunc_vidCddModuleInitCore2(void)
{
   VADC_vidMainFunction();
}
#define CPU2_STOP_SEC_CODE
#include "MemMap.h"

#define CPU3_START_SEC_CODE
#include "MemMap.h"
void McuFunc_vidCddModuleInitCore3(void)
{
   CDD_TPPC_vidInit();
   VADC_vidMainFunction();
}
#define CPU3_STOP_SEC_CODE
#include "MemMap.h"
