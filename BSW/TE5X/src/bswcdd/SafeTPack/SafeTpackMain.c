
#include "SafeTpackMain.h"
#include "Ifx_reg.h"
#include "McalLib.h"
#include "AppCbk.h"
#include "StpRefApp.h"
#include "Clk.h"
#include "Ifx_Cfg.h"
#include "Ifx_Ssw.h"
#include "Ifx_Ssw_Infra.h"
#include "Ifx_Cfg_Ssw.h"
#include "Qspi_dma.h"

/*******************************************************************************
**                      Imported Compiler Switch Check                        **
*******************************************************************************/

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/

#define HTX_SMU_CFG_KEY_UNLOCK            ((SMU_KEYS.U & (uint32)(0xFFFFFF00U)) | ((uint32)0xBCU))
#define HTX_SMU_CFG_KEY_TEMPLOCK          (0x0U)

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/
static void Stp_vidEnableCache0(void);
static void Stp_vidEnableCache1(void);
static void Stp_vidEnableCache2(void);
static void Stp_vidEnableCache3(void);

/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static void Stp_vidEnableCache0(void)
{
   unsigned short wdtPassword   = Ifx_Ssw_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[0]);
   
   /* Clear the ENDINIT bit in the WDT_CON0 register, inline function */
   Ifx_Ssw_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[0], wdtPassword);
   
   {
       Ifx_CPU_PCON0 pcon0;
       pcon0.U       = 0;
       pcon0.B.PCBYP = 0; /* reset the enable bypass bit */
       Ifx_Ssw_MTCR(CPU_PCON0, pcon0.U);
       Ifx_Ssw_ISYNC();
   }
   
   {
       Ifx_CPU_DCON0 dcon0;
       dcon0.U       = 0;
       dcon0.B.DCBYP = 0; /* reset the enable bypass bit */
       Ifx_Ssw_MTCR(CPU_DCON0, dcon0.U);
       Ifx_Ssw_ISYNC();
   }
   Ifx_Ssw_setCpuEndinitInline(&MODULE_SCU.WDTCPU[0], wdtPassword);
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static void Stp_vidEnableCache1(void)
{
   unsigned short wdtPassword   = Ifx_Ssw_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[1]);
   
   /* Clear the ENDINIT bit in the WDT_CON0 register, inline function */
   Ifx_Ssw_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[1], wdtPassword);
   
   {
       Ifx_CPU_PCON0 pcon0;
       pcon0.U       = 0;
       pcon0.B.PCBYP = 0; /* reset the enable bypass bit */
       Ifx_Ssw_MTCR(CPU_PCON0, pcon0.U);
       Ifx_Ssw_ISYNC();
   }
   
   {
       Ifx_CPU_DCON0 dcon0;
       dcon0.U       = 0;
       dcon0.B.DCBYP = 0; /* reset the enable bypass bit */
       Ifx_Ssw_MTCR(CPU_DCON0, dcon0.U);
       Ifx_Ssw_ISYNC();
   }
   Ifx_Ssw_setCpuEndinitInline(&MODULE_SCU.WDTCPU[1], wdtPassword);
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static void Stp_vidEnableCache2(void)
{
   unsigned short wdtPassword   = Ifx_Ssw_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[2]);
   
   /* Clear the ENDINIT bit in the WDT_CON0 register, inline function */
   Ifx_Ssw_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[2], wdtPassword);
   
   {
       Ifx_CPU_PCON0 pcon0;
       pcon0.U       = 0;
       pcon0.B.PCBYP = 0; /* reset the enable bypass bit */
       Ifx_Ssw_MTCR(CPU_PCON0, pcon0.U);
       Ifx_Ssw_ISYNC();
   }
   
   {
       Ifx_CPU_DCON0 dcon0;
       dcon0.U       = 0;
       dcon0.B.DCBYP = 0; /* reset the enable bypass bit */
       Ifx_Ssw_MTCR(CPU_DCON0, dcon0.U);
       Ifx_Ssw_ISYNC();
   }
   Ifx_Ssw_setCpuEndinitInline(&MODULE_SCU.WDTCPU[2], wdtPassword);
}

/**********************************************************************
 * Function name    :  Stp_vidEnableCache3
 * Description      :  Enable cache3 when startup core3
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/08/24       V1.0        GYT        Create
 ***********************************************************************/ 
static void Stp_vidEnableCache3(void)
{
   unsigned short wdtPassword   = Ifx_Ssw_getCpuWatchdogPasswordInline(&MODULE_SCU.WDTCPU[3]);
   
   /* Clear the ENDINIT bit in the WDT_CON0 register, inline function */
   Ifx_Ssw_clearCpuEndinitInline(&MODULE_SCU.WDTCPU[3], wdtPassword);
   
   {
       Ifx_CPU_PCON0 pcon0;
       pcon0.U       = 0;
       pcon0.B.PCBYP = 0; /* reset the enable bypass bit */
       Ifx_Ssw_MTCR(CPU_PCON0, pcon0.U);
       Ifx_Ssw_ISYNC();
   }
   
   {
       Ifx_CPU_DCON0 dcon0;
       dcon0.U       = 0;
       dcon0.B.DCBYP = 0; /* reset the enable bypass bit */
       Ifx_Ssw_MTCR(CPU_DCON0, dcon0.U);
       Ifx_Ssw_ISYNC();
   }
   Ifx_Ssw_setCpuEndinitInline(&MODULE_SCU.WDTCPU[3], wdtPassword);
}

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/

/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
static volatile uint32 Core0_Counter;
static volatile uint32 Core1_Counter;
static volatile uint32 Core2_Counter;
static volatile uint32 Core3_Counter;

/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/
/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void StpRefApp_InitWdg(void)
{
   StpRefApp_SafeWdgInit();
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void Stp_vidCore0Init(void)
{
   Clk_Init();

#if 1
   /* Needed for HtxLbist to store the execution count on Cpu0_DLMU */ /* AoU */
   Ifx_PMS_PMSWCR0 lPmcsr0RegVal;
   lPmcsr0RegVal.U = PMS_PMSWCR0.U;
   lPmcsr0RegVal.B.STBYRAMSEL = 2U;  /* 2 = CPU0_DLMU, 4 = CPU1_DLMU */
   Mcal_WriteSafetyEndInitProtReg(&PMS_PMSWCR0.U, lPmcsr0RegVal.U);
#endif

   StpRefApp_SafeTpackMain();

#if 1
   /* Disable SMU Alarms for WDTS */
   Mcal_WriteSafetyEndInitProtReg(&SMU_KEYS.U,(uint32)HTX_SMU_CFG_KEY_UNLOCK);   /* Enable access to SMU registers (uint32)0xBCU */
   Mcal_WriteSafetyEndInitProtRegMask(&SMU_AG8CF0.U,(uint32)0U,((uint32)1U<<16U));
   Mcal_WriteSafetyEndInitProtRegMask(&SMU_AG8CF2.U,(uint32)0U,((uint32)1U<<16U));
   Mcal_WriteSafetyEndInitProtReg(&SMU_KEYS.U,(uint32)HTX_SMU_CFG_KEY_TEMPLOCK); /* Temporary SMU config lock (uint32)0U */
#endif
   Stp_vidEnableCache0();
   Core0_Counter = 0U;
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void Stp_vidCore1Init(void)
{
   StpRefApp_SafeTpackMain();
   Stp_vidEnableCache1();
   Core1_Counter = 0U;
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void Stp_vidCore2Init(void)
{
   StpRefApp_SafeTpackMain();
   Stp_vidEnableCache2();
   Core2_Counter = 0U;
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void Stp_vidCore3Init(void)
{
   StpRefApp_SafeTpackMain();
   Stp_vidEnableCache3();
   Core3_Counter = 0U;
}

/**********************************************************************
 * Function name    :  Stp_vidCore0Runable1ms
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void Stp_vidCore0Runable1ms(void)
{
   Core0_Counter++;
   StpRefApp_Runtime_Cpu0();
}

/**********************************************************************
 * Function name    :  Stp_vidCore1Runable1ms
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void Stp_vidCore1Runable1ms(void)
{
   Core1_Counter++;
   StpRefApp_Runtime_Cpu1();
}

/**********************************************************************
 * Function name    :  FRecord_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  u32EndPosition - End postion
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void Stp_vidCore2Runable1ms(void)
{
   Core2_Counter++;
   StpRefApp_Runtime_Cpu2();
}

/**********************************************************************
 * Function name    :  Stp_vidCore3Runable1ms
 * Description      :  Core3 runnable runtime valid
 * Input parameter  :  void
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/08/24       V1.0        GYT        Create
 ***********************************************************************/ 
void Stp_vidCore3Runable1ms(void)
{
   Core3_Counter++;
   StpRefApp_Runtime_Cpu3();
}

/* END OF FILE */
