/*******************************************************************************
**                                                                            **
** Copyright (C) Hitex (UK) Ltd. (2020)                                       **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This source code and any compilation or derivative thereof is the sole     **
** property of Hitex (UK) Ltd. and is provided pursuant to a Software         **
** License  Agreement. This code is the proprietary information of            **
** Hitex (UK) Ltd. and is confidential in nature. Its use and dissemination   **
** by any other party other than Hitex (UK) Ltd. is strictly limited by the   **
** confidential information provisions of the Agreement referenced above.     **
**                                                                            **
********************************************************************************
**                                                                            **
** FILENAME : Clk.c                                                           **
**                                                                            **
** REVISION : \$Revision: 29886 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-08-03 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : <brief description>                                          **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "Clk.h" /* includes all necessary Clk header files */
#include "Support_EndInit.h"
#include "Std_Types.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

static void Clk_lWait(float32 t_us, uint16 f_stm);

static Std_ReturnType Clk_lSetSmuAlarmForCcuLossOfLock(StatusType smuCcuAlarmsSetTo);

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

Std_ReturnType Clk_Init(void)
{
    Std_ReturnType RetValue = (Std_ReturnType)E_NOT_OK;
    uint16 loop_cnt = 0U;

    /*----- only for debug purpose (selected clock can be checked at EXTCLK0/1 via scope)
     * use only the not reserved configurations for application setup
     * set_EXTCLK0_frequency_source (8); // 1 =>> fpll0, 2 =>> fpll1, 3 =>> fosc, 4 =>> fback, 5 =>> fpll2,
     * 8 =>> fsri, 9 =>> fspb
     * set_EXTCLK1_frequency_source (6); // 5 =>> fmcan, 6 =>> fadc, 7 =>> fqspi, 11 =>> fmsc, 13 =>> fasclinf */

    /*----------------------------------------------------------------------------
     * enable oscillator
     *----------------------------------------------------------------------------*/
    /* oscillator is off after reset and in External Input Clock Mode, MODE = 2
     * if using a crystal then oscillator has to be enabled with MODE = 0
     * OSC_TC.H001 Oscillator Operation at VEXT = 3.3V:
     * When using Vext=3.3V the LVDS bias distributor has to be adjusted to
     * 3.3V supply by setting bit P21_LPCR2.PS=0.
     * Otherwise the oscillator gain can be too low for a reliable oscillator startup at cold temperature. */

    Support_ClearSafetyEndInit();
    /* Set oscillator to external crystal mode */
    SCU_OSCCON.B.MODE = CLK_OSCCON_MODE_EXT_CRYSTAL_POWERSAVING_OFF;
    Support_SetSafetyEndInit();

    /*----------------------------------------------------------------------------
     * Select backup clock fback as CCU input clock
     *----------------------------------------------------------------------------*/
    /* (fback=fsource0=fsource1=fsource2=100MHz) */
    while(SCU_CCUCON0.B.LCK); /* Poll LCK before changing CCUCON0 (after a maximum wait time of 5us .LCK is set) */
    Support_ClearSafetyEndInit();
    SCU_CCUCON0.U = (SCU_CCUCON0.U & 0x0fffffff) |
                    (CLK_CCUCON0_CLKSEL_FBACK << IFX_SCU_CCUCON0_CLKSEL_OFF) |
                    (CLK_CCUCON0_UP_SEND_UPDATE_REQUEST << IFX_SCU_CCUCON0_UP_OFF);

    /*----------------------------------------------------------------------------
     * Wait for reliable XTAL1 clock
     *----------------------------------------------------------------------------*/
    /* 20MHz is the Crystal frequency on the Triboard */
    SCU_OSCCON.B.OSCVAL = 20 + 1 - 16; /* f_oscref = (OSCVAL - 1 + 16) MHz */
    SCU_OSCCON.B.OSCRES = CLK_OSCCON_OSCRES_RESTART; /* Restart oscillator watchdog*/

    loop_cnt = 0U;
    Support_SetSafetyEndInit();
    while ((SCU_OSCCON.U & 0x102U) != 0x102U) // wait until PLLLV and PLLHV are set
    {
        loop_cnt += 1U;
        if (loop_cnt > 11000U) /* minimum timeout has to be at least oscillator startup time toscs.
                                 * toscs_max=3ms @ 20MHz<=fosc and 8pF load capacitance.
                                 * for details use the actual Data Sheet */
        {
            /* oscillator frequency is to low or too high. Fail behavior has to be coded by user software! */
            /* Add Error Handling here : __debug();*/
            /* while(1);  "hang-up" of example code!! */
            (void) NOP();
        }
    }

    /*----------------------------------------------------------------------------
     * Select fosc0 (fxtal1) as PLL input clock
     *----------------------------------------------------------------------------*/
    Support_ClearSafetyEndInit();
    SCU_SYSPLLCON0.B.INSEL = CLK_SYSPLLCON0_INSEL_CLKSOURCE_FOSC0; /* INSEL = 1 */

    /*----------------------------------------------------------------------------
     * initialize system PLL
     *----------------------------------------------------------------------------*/
    /*----- PLLs are in Power Saving Mode after Power-on reset =>> restart PLLs.*/
    SCU_SYSPLLCON0.B.PLLPWD = CLK_SYSPLLCON0_PLLPWD_POWER_SAVING_OFF;
    SCU_PERPLLCON0.B.PLLPWD = CLK_PERPLLCON0_PLLPWD_POWER_SAVING_OFF;

    /* Note in Users Manual:
     * "If the PLL has been powered down and is getting enabled via PLLPWD =1,
     * a wait period of 1 ms has to be applied until it is working in stable mode w/o jitter"
     */
    Clk_lWait(1000, 50); /* Increase the wait time if needed */

    /*----- wait until system PLL is in normal operation mode */
    while(SCU_SYSPLLSTAT.B.PWDSTAT); /* poll PWDSTAT until PLL power down mode is finished
                                            * (after a maximum wait time of 100us .PWDSTAT is cleared)*/

    /*----- set K2DIV (K2=6) =>> fpll0=100MHz */
    while( !SCU_SYSPLLSTAT.B.K2RDY ); /* poll K2RDY before changing K2 (after a maximum wait time of 5us .K2RDY is set) */
    SCU_SYSPLLCON1.B.K2DIV = CLK_SYSPLLCON1_K2DIV_K6; /*OLD: K2sys_1-1; == IfxScuCcu_defaultSysPllConfigSteps[0]*/
    /* Note in the Users Manual: "Between the update of two K2-Divider values 6 cycles of fpll0 should be waited"*/

    /*----- set P divider (P=Psys=1) */
    /* fREF has to be in the specified range! */
    SCU_SYSPLLCON0.B.PDIV = CLK_SYSPLLCON0_PDIV_P1;/* OLD: Psys-1; */

    /*----- set N divider (N=Nsys=30 @ fosc=20MHz or N=24 @ fosc=25MHz) */
    /* fdco has to be in the specified range! */
    SCU_SYSPLLCON0.B.NDIV = CLK_SYSPLLCON0_NDIV_N30; /*OLD: Nsys-1; */

    /*----- restart PLL lock detection (RESLD = 1) */
    SCU_SYSPLLCON0.B.RESLD = CLK_SYSPLLCON0_RESLD_RESTART_DCO_LOCK_DET; /* OLD: 1; */
    Support_SetSafetyEndInit();

    /*----- wait for PLL lock */
    /* No timeout coded: minimum timeout has to be at least PLL lock-in time tl_max=100us.
     * for details use the actual Data Sheet */
    while(!SCU_SYSPLLSTAT.B.LOCK);

    /*----------------------------------------------------------------------------
     * Initialize peripheral PLL
     *----------------------------------------------------------------------------*/
    /*----- wait until peripheral PLL is in normal operation mode */
    while(SCU_PERPLLSTAT.B.PWDSTAT); /* poll PWDSTAT until PLL power down mode is finished
                                       * (after a maximum wait time of 100us .PWDSTAT is cleared) */

    /*----- set K2 divider (fosc=20MHz K2=2 fpll1=320MHz) or (fosc=25MHz K2=5 fpll1=160MHz) */
    /* poll K2RDY before changing K2 (after a maximum wait time of 5us .K2RDY is set)*/
    while( !SCU_PERPLLSTAT.B.K2RDY );

    Support_ClearSafetyEndInit();
    SCU_PERPLLCON1.B.K2DIV = CLK_PERPLLCON1_K2DIV_K2_2; /*OLD: K2per-1;*/
    Support_SetSafetyEndInit();

    /*----- set K3 divider (fosc=20MHz K3=2 fpll2=200MHz) or (fosc=25MHz K3=2 fpll2=200MHz) */
    while( !SCU_PERPLLSTAT.B.K3RDY ); /* poll K3RDY before changing K3 (after a maximum wait time of 5us .K3RDY is set) */
    Support_ClearSafetyEndInit();
    SCU_PERPLLCON1.B.K3DIV = CLK_PERPLLCON1_K3DIV_K3_2; /*OLD: K3per-1;*/

    /*----- set DIVBY value
     * DIVBY selects factor "5/8" for fper_dco=640MHz or factor "1/2" for fper_dco=800MHz
     * this results in fpll2=200MHz for fosc=20MHz and fosc=25MHz */
    SCU_PERPLLCON0.B.DIVBY = CLK_PERPLLCON0_DIVBY_BYPASS_IS_ON; /* OLD: DIVBY; =1*/

    /*----- set P divider (P=Pper=1)
     * fref has to be in the specified range! */
    SCU_PERPLLCON0.B.PDIV = CLK_PERPLLCON0_PDIV_P1; /*OLD: Pper-1; =0*/

    /*----- set N divider (N=Nper=32)
     * fdco has to be in the specified range! */
    SCU_PERPLLCON0.B.NDIV = CLK_PERPLLCON0_NDIV_N32; /*OLD: Nper-1;*/

    /*----- restart PLL lock detection (RESLD = 1) */
    SCU_PERPLLCON0.B.RESLD = CLK_PERPLLCON0_RESLD_RESTART_DCO_LOCK_DET; /* OLD: 1; */
    Support_SetSafetyEndInit();

    /*----- wait for PLL lock
     * no timeout coded: minimum timeout has to be at least PLL lock-in time tl_max=100us.
     * for details use the actual Data Sheet */
    while(!SCU_PERPLLSTAT.B.LOCK);
    /*----- end of PLL initialization (fpll0=100MHz, fpll1=320MHz, fpll2=200MHz) */

    /*----------------------------------------------------------------------------
     * Initialize SCU_CCUCON registers (tc38x A-step, tc39x B-step)
     *----------------------------------------------------------------------------*/
    /*----- configure SCU_CCUCON Registers to first target setting if changing of reset values is desired.
     *      in case of changing clock source of fgtm, fmcan, fmsc, fqspi or fasclins:
     *      =>> first stop the clock, wait 5us then select the new clock source */

    Support_ClearSafetyEndInit();
    /* UP=1 of CCUCON0 or CCUCON5 will request an update for CCUCON0 and CCUCON5 */
    while(SCU_CCUCON0.B.LCK); /* poll LCK before changing CCUCON0 (after a maximum wait time of 5us .LCK is set) */
    SCU_CCUCON0.U = (SCU_CCUCON0.U & 0x00000000U) |
                    ( (CLK_CCUCON0_CLKSEL_FBACK)        << IFX_SCU_CCUCON0_CLKSEL_OFF ) |  /* OLD: CLKsel  = 0 */
                    ( (CLK_CCUCON0_FSI2DIV_1)           << IFX_SCU_CCUCON0_FSI2DIV_OFF) |  /* OLD: FSI2div = 1 */
                    ( (CLK_CCUCON0_FSIDIV_3)            << IFX_SCU_CCUCON0_FSIDIV_OFF ) |  /* OLD: FSIdiv  = 3 */
                    ( (CLK_CCUCON0_BBBDIV_2)            << IFX_SCU_CCUCON0_BBBDIV_OFF ) |  /* OLD: BBBdiv  = 2 */
                    ( (CLK_CCUCON0_SPBDIV_3)            << IFX_SCU_CCUCON0_SPBDIV_OFF ) |  /* OLD: SPBdiv  = 3 */
                    ( (CLK_CCUCON0_LPDIV_0)             << IFX_SCU_CCUCON0_LPDIV_OFF  ) |  /* OLD: LPdiv   = 0 */
                    ( (CLK_CCUCON0_SRIDIV_1)            << IFX_SCU_CCUCON0_SRIDIV_OFF ) |  /* OLD: SRIdiv  = 1 */
                    ( (CLK_CCUCON0_GTMDIV_1)            << IFX_SCU_CCUCON0_GTMDIV_OFF ) |  /* OLD: GTMdiv  = 1 */
                    ( (CLK_CCUCON0_STMDIV_3)            << IFX_SCU_CCUCON0_STMDIV_OFF ) |  /* OLD: STMdiv = 3  */
                    (CLK_CCUCON0_UP_SEND_UPDATE_REQUEST << IFX_SCU_CCUCON0_UP_OFF     ) ;  /* OLD 1 == Update request */

    while(SCU_CCUCON5.B.LCK); /* poll LCK before changing CCUCON5 (after a maximum wait time of 5us .LCK is set)*/
    SCU_CCUCON5.U = (SCU_CCUCON5.U & 0x00000000U) |
                    ( (CLK_CCUCON5_MCANHDIV_3)     << IFX_SCU_CCUCON5_MCANHDIV_OFF) | /* OLD: MCANHDIV = 3       */
                    ( (CLK_CCUCON5_GETHDIV_1) << IFX_SCU_CCUCON5_GETHDIV_OFF ) | /* OLD: GETHDIV = 0        */
                    (CLK_CCUCON5_UP_UPDATE_REQUEST << IFX_SCU_CCUCON5_UP_OFF      ) ; /* OLD 1 == Update request */

    while(SCU_CCUCON1.B.LCK); /* poll LCK before changing CCUCON1 (after a maximum wait time of 5us .LCK is set) */
    SCU_CCUCON1.U = (SCU_CCUCON1.U & 0x00000000U) |
                    ( (CLK_CCUCON1_CLKSELQSPI_2_FSOURCE2) << IFX_SCU_CCUCON1_CLKSELQSPI_OFF )  |  /* OLD: CLKSELQSPI = 2 */
                    ( (CLK_CCUCON1_QSPIDIV_1)             << IFX_SCU_CCUCON1_QSPIDIV_OFF    )  |  /* OLD: QSPIdiv    = 1 */
                    ( (CLK_CCUCON1_CLKSELMSC_2_FSOURCE2)  << IFX_SCU_CCUCON1_CLKSELMSC_OFF  )  |  /* OLD: CLKSELMSC  = 2 */
                    ( (CLK_CCUCON1_MSCDIV_1)              << IFX_SCU_CCUCON1_MSCDIV_OFF     )  |  /* OLD: MSCdiv     = 1 */
                    ( (CLK_CCUCON1_I2CDIV_2)              << IFX_SCU_CCUCON1_I2CDIV_OFF     )  |  /* OLD: I2CDIV     = 2 */
                    ( (CLK_CCUCON1_PLL1DIVDIS_0)          << IFX_SCU_CCUCON1_PLL1DIVDIS_OFF )  |  /* OLD: PLL1DIVDIS = 0 */
                    ( (CLK_CCUCON1_CLKSELMCAN_FMCANI)     << IFX_SCU_CCUCON1_CLKSELMCAN_OFF )  |  /* OLD: CLKSELMCAN = 1 */
                    ( (CLK_CCUCON1_MCANDIV_2)             << IFX_SCU_CCUCON1_MCANDIV_OFF    )  ;  /* OLD: MCANdiv    = 2 */

    while(SCU_CCUCON2.B.LCK); /* poll LCK before changing CCUCON2 (after a maximum wait time of 5us .LCK is set) */
    SCU_CCUCON2.U = (SCU_CCUCON2.U & 0x00000000U) |
                    ( (CLK_CCUCON2_ERAYPERON_1_FSOURCE1_HALF)    << IFX_SCU_CCUCON2_ERAYPERON_OFF)      | /* OLD: ERAYPERON = 1     */
                    ( (CLK_CCUCON2_CLKSELASCLINS_1_FASCLINSI)    << IFX_SCU_CCUCON2_CLKSELASCLINS_OFF ) | /* OLD: CLKSELASCLINS = 1 */
                    ( (CLK_CCUCON2_ASCLINSDIV_1)                 << IFX_SCU_CCUCON2_ASCLINSDIV_OFF )    | /* OLD: ASCLINSdiv = 1    */
                    ( (CLK_CCUCON2_ASCLINFDIV_1)                 << IFX_SCU_CCUCON2_ASCLINFDIV_OFF )    ; /* OLD: ASCLINFdiv = 1    */

    SCU_CCUCON6.U  = (SCU_CCUCON6.U & 0x00000000U)  |
                     ( (CLK_CCUCONX_CPUDIV_0) << IFX_SCU_CCUCON6_CPU0DIV_OFF);  /* OLD: CPU0div = 0 */
    SCU_CCUCON7.U  = (SCU_CCUCON7.U & 0x00000000U)  |
                     ( (CLK_CCUCONX_CPUDIV_0) << IFX_SCU_CCUCON7_CPU1DIV_OFF);  /* OLD: CPU1div = 0 */
    SCU_CCUCON8.U  = (SCU_CCUCON8.U & 0x00000000U)  |
                     ( (CLK_CCUCONX_CPUDIV_0) << IFX_SCU_CCUCON8_CPU2DIV_OFF);  /* OLD: CPU2div = 0 */

    Support_SetSafetyEndInit();

    /*----------------------------------------------------------------------------
     * Switch CCU input clocks from backup clock to PLL clocks
     *----------------------------------------------------------------------------*/
    /*----- Select fpll0/1/2 as CCU input clock: (fsoure0=100MHz, fsource1=160MHz, fsource2=200MHz) */
    while(SCU_CCUCON0.B.LCK); /* poll LCK before changing CCUCON0 (after a maximum wait time of 5us .LCK is set) */
    Support_ClearSafetyEndInit();
    SCU_CCUCON0.U = (SCU_CCUCON0.U & 0x0fffffffU) |
                    (CLK_CCUCON0_CLKSEL_FPLLX << IFX_SCU_CCUCON0_CLKSEL_OFF) |
                    (CLK_CCUCON0_UP_SEND_UPDATE_REQUEST << IFX_SCU_CCUCON0_UP_OFF); /* CLKSEL=01b, fsourcex=fpllx, UP */
    Support_SetSafetyEndInit();
    Clk_lWait(100U, 33U); /* wait 100us */

    /*----------------------------------------------------------------------------
     * Increase system frequency step by step to target frequency
     *----------------------------------------------------------------------------*/
    /*----- set K2=4 (fsource0=600/4=150MHz) */
    while( !SCU_SYSPLLSTAT.B.K2RDY ); /* poll K2RDY before changing K2 (after a maximum wait time of 5us .K2RDY is set) */
    Support_ClearSafetyEndInit();
    SCU_SYSPLLCON1.B.K2DIV = CLK_SYSPLLCON1_K2DIV_K4; /* OLD: K2sys_2-1; */
    Support_SetSafetyEndInit();
    Clk_lWait(100U, 50U); // wait 100us

    /*----- set K2=3 (fsource0=600/3=200MHz) */
    while( !SCU_SYSPLLSTAT.B.K2RDY ); /* poll K2RDY before changing K2 (after a maximum wait time of 5us .K2RDY is set) */
    Support_ClearSafetyEndInit();
    SCU_SYSPLLCON1.B.K2DIV = CLK_SYSPLLCON1_K2DIV_K3; /* OLD: K2sys_3-1; */
    Support_SetSafetyEndInit();
    Clk_lWait(100U, 66U); /* wait 100us */

    /*----- set K2=2 (fsource0=600/2=300MHz) */
    while( !SCU_SYSPLLSTAT.B.K2RDY ); /* poll K2RDY before changing K2 (after a maximum wait time of 5us .K2RDY is set) */
    Support_ClearSafetyEndInit();
    SCU_SYSPLLCON1.B.K2DIV = CLK_SYSPLLCON1_K2DIV_K2; /* OLD: K2sys-1; */
    Support_SetSafetyEndInit();
    Clk_lWait(100U, 100U); /* wait 100us */

    /*----------------------------------------------------------------------------
     * Initialize system PLL frequency modulation
     *----------------------------------------------------------------------------*/
    /* #if enable_FMPLL == 1 */
#if 0
    /*----- Set system PLL frequency modulation */
    MODCFG = 64.0f * MA/100.0f * fosc_MHz/Psys * Nsys/3.6f; /* modulator configuration: MA[%], fosc[MHz] */
    Support_ClearSafetyEndInit();
    SCU_SYSPLLCON2.U = (SCU_SYSPLLCON2.U & ~(0xffff << 0) ) |
                       (0x3d << 10)                         |
                       ( (0x3ff & MODCFG) << 0);
    SCU_SYSPLLCON0.B.MODEN = CLK_SYSPLLCON0_MODEN_FREQ_MOD_ON; /* OLD: 1 = enable PLL frequency modulation */
    Support_SetSafetyEndInit();
    /*----- wait until FM is running */
    while (!SCU_SYSPLLSTAT.B.MODRUN); /*(after a maximum wait time of 5us .MODRUN is set)*/
#endif

    RetValue = Clk_lSetSmuAlarmForCcuLossOfLock(STD_ON);

    return (RetValue);
}

/******************************************************************************
* FUNCTION : wait
* DECLARATION: void wait (float32 t_us, int f_stm)
* DESCRIPTION: wait by reading of System Timer
* t_us   : wait time in us,
* f_stm  : System Timer frequency in MHz
* tc38xx : fstm = fsource0 / STMDIV (fsource0 = fpll0)
******************************************************************************/
static void Clk_lWait(float32 t_us, uint16 f_stm)
{
    uint32 Timer_old     = 0U;
    uint32 Timer_new     = 0U;
    uint32 STM_waitcount = 0U;
    uint32 TimerDiff     = 0U;

    Timer_old = STM0_TIM0.U;                /* read actual System Timer value                  */
    STM_waitcount = (uint32)(t_us * f_stm); /* STMdiv=2, wait time t_us in System Timer Counts */

    do
    {
        Timer_new = STM0_TIM0.U; /* read actual System Timer value */
        TimerDiff = (Timer_new > Timer_old)? (Timer_new - Timer_old):(Timer_old - Timer_new);

    } while (STM_waitcount > TimerDiff);
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static Std_ReturnType Clk_lSetSmuAlarmForCcuLossOfLock(StatusType smuCcuAlarmsSetTo)
{
    Std_ReturnType returnValue = E_NOT_OK;

    switch(smuCcuAlarmsSetTo)
    {
        case (STD_ON): /* Enable SMU CCU Loss of Lock monitoring */
        {
            Support_ClearSafetyEndInit();
        
            /* Disable SMU Alarms for CCU */
            SMU_KEYS.U = (uint32)SMU_CFG_KEY_UNLOCK;   /* Enable access to SMU registers (uint32)0xBCU */
            SMU_CMD.U  = (uint32)0x00000005U;           /*  */
            SMU_AG8.U  = IFXSCUCCU_SMUALARM_MASK;      /* Clear SMU Alarms*/
            SMU_KEYS.U = (uint32)SMU_CFG_KEY_TEMPLOCK; /* Temporary SMU config lock (uint32)0U */
        
            Support_SetSafetyEndInit();
        
            returnValue = E_OK;
            break;
        }
        case (STD_OFF): /* Disable SMU CCU Loss of Lock monitoring */
        {
            Support_ClearSafetyEndInit();
        
            /* Disable SMU Alarms for CCU */
            SMU_KEYS.U    = (uint32)SMU_CFG_KEY_UNLOCK;   /* Enable access to SMU registers (uint32)0xBCU */
            SMU_AG8CF0.U &= ~IFXSCUCCU_SMUALARM_MASK;     /* Disable Alarm Group 8 Alarm 0 =  */
            SMU_AG8CF1.U &= ~IFXSCUCCU_SMUALARM_MASK;     /* Disable Alarm Group 8 Alarm 1 =  */
            SMU_AG8CF2.U &= ~IFXSCUCCU_SMUALARM_MASK;     /* Disable Alarm Group 8 Alarm 2 =  */
            SMU_KEYS.U    = (uint32)SMU_CFG_KEY_TEMPLOCK; /* Temporary SMU config lock (uint32)0U */
        
            Support_SetSafetyEndInit();
        
            returnValue = E_OK;
            break;
        }
        default:
        {
            returnValue = E_NOT_OK;
            break;
        }
    } /* END of switch(smuCcuAlarmsSetTo) */

    return (returnValue);
} /* END of static Std_ReturnType Clk_lSetSmuAlarmForCcuLossOfLock(StatusType smuCcuAlarmsSetTo) */


/* EOF */
