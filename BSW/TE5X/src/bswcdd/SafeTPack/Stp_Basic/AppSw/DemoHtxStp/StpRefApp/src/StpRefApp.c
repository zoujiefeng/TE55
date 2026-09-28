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
** FILENAME : StpRefApp.c                                                     **
**                                                                            **
** REVISION : \$Revision: 31188 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-12-20 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2301             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2302             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2304             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2306             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2308             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2309             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2310             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2311             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2312             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2314             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2315             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2316             **
**                                                                            **
** DESCRIPTION : Demo application to demonstrate SafeTpack usage              **
**                                                                            **
** SPECIFICATION(S) : TC3XX                                                   **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "Support_EndInit.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "StpRefApp.h"
#include "McalLib.h"
#include "Ifx_Ssw_Infra.h"
#include "Ifx_Ssw.h"
#include "AppCbk.h"
#include "TstM.h"
#include "HtxStpIf.h"
#include "HtxTestHnd.h"
#if (HTXSTPIF_PFM_STATUS == STD_ON)
#include "PfmRefApp.h"
#endif

#if(HTXSTPIF_TLF_TEST_STATUS == STD_ON)
#include "HtxTLF35584Test.h"
#endif

#if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)
#include "SafeWdgM.h"
#endif

#if((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON))
#include "HtxTLF35584Qspi.h"
#endif

#include "IfxScu_reg.h"
#include "IfxPort_reg.h"
#include "IfxQspi_reg.h"
#include "IfxSmu_reg.h"
#include "IfxPms_reg.h"
#include "Irq.h"
#include "IfxSrc_bf.h"
#include "SBC.h"
#include "SBC_L.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* CPU modes */
#define STPREFAPP_CORE_RUN_MODE    (0U)
#define STPREFAPP_CORE_IDLE_MODE   (1U)

#define STPREFAPP_PMCSR            (&SCU_PMCSR0)

/* Core ID */
#define STPREFAPP_COREID_CORE0     (0U)
#define STPREFAPP_COREID_CORE1     (1U)
#define STPREFAPP_COREID_CORE2     (2U)
#define STPREFAPP_COREID_CORE3     (3U)
#define STPREFAPP_COREID_CORE4     (4U)
#define STPREFAPP_COREID_CORE5     (5U)

/* SMU_DBG SSM value for START state */
#define STPREFAPP_SMU_START_STATE  (0U)

/* SMU_FSP value for FSP Time-Switching protocol */
#define STPREFAPP_SMU_FSP_CFG      (0x00400058U)

/* SMU PCTL value for FSP control */
#define STPREFAPP_SMU_PCTL         (0x00000085U)

/* Enable/Disable verification of TLF35584 startup test signature */
#define STPREFAPP_VERIFY_TLF_TEST_SIG   (STD_ON)

/* Seed value for TLF35584 Startup Test */
#define STPREFAPP_TLF_TEST_SEED         (5U)

/* TLF35584 Startup test expected signatures (for Seed = 5) */
/* If WWD, FWD, ERR, ABIST are enabled: 0x0ACA4993U */
/* If WWD, FWD, ERR are enabled: 0x6CBEBCBDU */
/* If WWD, FWD are enabled: 0x6E2547D0U */
/* If WWD is enabled: 0xD44DEF01U */
/* If FWD is enabled: 0x3A62733FU */
/* If ERR is enabled: 0x6D5F6510U */
/* If ABIST is enabled: 0xB185FF67U */
/* If WWD, FWD, ABIST are enabled: 0xDB667F88U */
/* If WWD, ABIST are enabled: 0xAC8457B9U */
/* If FWD, ABIST are enabled: 0x88317D12U */
/* If ERR, ABIST are enabled: 0xE75094E0U */
/* If WWD, ERR are enabled: 0x1A59F21AU */
/* If FWD, ERR are enabled: 0x89E44E1FU */
/* If WWD, ERR, ABIST are enabled: 0xF159B7D7U */
/* If FWD, ERR, ABIST are enabled: 0xF0708386U */
#define STPREFAPP_TLF_TEST_EXP_SIGNATURE  (0xB185FF67U)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

#if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)
#if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
/* Counter for failed TLF job request */
static uint8 StpRefApp_JobFailedCnt;
static uint8 StpRefApp_ActivateCalled;

uint8 GetActiveCall(void)
{
   return StpRefApp_ActivateCalled;
}

void SetActiveCall(uint8 u8Called)
{
   StpRefApp_ActivateCalled = u8Called;
}

#endif
#endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */

static uint8 StpRefApp_DiagTestSlice;
static uint32 StpRefApp_LedCntr;
volatile static uint8 StpRefApp_TaskActive, StpRefApp_TimerFlag[6];

/* Core status */
volatile static uint8 StpRefApp_Core1Ready;
volatile static uint8 StpRefApp_Core2Ready;
volatile static uint8 StpRefApp_Core3Ready;

/* Startup test status */
volatile static uint8 StpRefApp_StartupTestDone;
volatile static uint8 StpRefApp_Core0StartupTestDone;
volatile static uint8 StpRefApp_Core1StartupTestDone;

#if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)
HtxWdgIf_CmdType StpRefApp_UserCmd[3U];
uint8 StpRefApp_TLFUserdataBackup[3U];
#endif

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

static void StpRefApp_lSetCoreMode(uint8 CoreId, uint8 CoreMode);

#if((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON))
static void StpRefApp_lConfigureTlfSpiPins(void);

#if(HTXTLF35584QSPI_DMAUSED == STD_OFF)
static void StpRefApp_lSetQspiInterrupt(void);
#endif

#endif /* #if((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON)) */

static void StpRefApp_lConfigLedPins(void);

static void StpRefApp_lToggleLED(void);

#if (HTXSTPIF_TLF_TEST_STATUS == STD_ON)
static void StpRefApp_lEsr1TrapInit(void);
#if (HTXTLF35584TEST_ERR_TEST == STD_ON)
static void StpRefApp_lSmuInit(void);
#endif
#endif

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : void StpRefApp_SafeTpackMain(void)
 *
 * \description   : This function handles SafeTpack Startup tests
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x01
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant (Reentrant by different cores)
 *
 * \pre           : -
 * \post          : -
 * \attention     : -
 * \traceability  :
 *
 ******************************************************************************/
void StpRefApp_SafeTpackMain(void)
{
    Ifx_PMS_PMSWSTATCLR lPmsWstatClrRegVal;
    #if (HTXSTPIF_TLF_TEST_STATUS == STD_ON)
    volatile uint32 lTlfTestSignature;
    #endif
    uint8 lCoreId;

    /* Get Core Id */
    lCoreId = (uint8)Mcal_GetCpuIndex();

    /* Check Core Id */
    if (lCoreId == STPREFAPP_COREID_CORE0)
    {
        StpRefApp_StartupTestDone = 0U;
        StpRefApp_Core0StartupTestDone = 0U;
#if (HTXSTPIF_PFM_STATUS == STD_ON)
        PfmRefApp_Init();
#endif

        /* Initialise Test Manager */
        TstM_Init();

        #if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)
        /* Execute Core0 Startup Test Group0 (HtxLbist, HtxMonbist and HtxFwCheck) */
        TstM_ExecStartupTestGroup(0U);
        #endif


        /* AoU: It is expected that after execution completion of HtxLbist/HtxFwCheck,
                status in SFR PMS_PMSWSTAT2 is cleared to avoid re-triggering of LBIST */
        /* Note: Needs to be updated, depending the Stand-by wake-up source */
        if(PMS_PMSWSTAT2.B.PINBWKP == 1U)
        {
            lPmsWstatClrRegVal.U = PMS_PMSWSTATCLR.U;
            /* Clear PIN B Wake */
            lPmsWstatClrRegVal.B.PINBWKPCLR = 1U;
            /* Clear wakeup source */
            HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_PMSWSTATCLR.U, lPmsWstatClrRegVal.U);
        }

        /* Clear COLD PORST if not cleared via HtxFwCheck */
        HTXSTPIF_WRITE_CEINIT_PROTREG32(&SCU_RSTCON2.U,(uint32)2U);

        #if(((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON)) && (HTXSTPIF_SPI_CONFIG_STATUS == STD_OFF))
        //StpRefApp_lConfigureTlfSpiPins();
        #endif

        /* SMU FSP pin */
        //P33_IOCR8.B.PC8 = 0x10;

        #if (HTXSTPIF_TLF_TEST_STATUS == STD_ON)

        #if(HTXTLF35584QSPI_DMAUSED == STD_OFF)
        /* Initialise the QSPI interrupt used by TLF test */
        StpRefApp_lSetQspiInterrupt();
        ENABLE();
        #endif

        if(HTX_TLF_TEST_COMPLETED != HtxTLF35584Test_GetTestStatus())
        {
            /* Check if SMU is in START state */
            if(STPREFAPP_SMU_START_STATE == SMU_DBG.B.SSM)
            {
                StpRefApp_lEsr1TrapInit();
                #if (HTXTLF35584TEST_ERR_TEST == STD_ON)
                StpRefApp_lSmuInit();
                #endif

                lTlfTestSignature = HtxTLF35584Test_Start(STPREFAPP_TLF_TEST_SEED);

                #if (STPREFAPP_VERIFY_TLF_TEST_SIG == STD_ON)
                /* Verify test signature */
                if(lTlfTestSignature != STPREFAPP_TLF_TEST_EXP_SIGNATURE)
                {
                   /* To allow re-triggering the TLF tests upon failure */
                   HtxTLF35584Test_ResetTestStatus();
                   /* TLF35584 Test failed */
                   AppCbk_ErrorHandler(APPCBK_STPREFAPP_TLF_TEST_FAIL);
                }
                #endif /* End of #if (STPREFAPP_VERIFY_TLF_TEST_SIG == STD_ON) */
            } /* End of if(STPREFAPP_SMU_START_STATE == SMU_DBG.B.SSM) */

        } /* End of if(HTX_TLF_TEST_COMPLETED != HtxTLF35584Test_GetTestStatus()) */

        #if(HTXTLF35584QSPI_DMAUSED == STD_OFF)
        DISABLE();
        #endif

        #endif /* End of #if (HTXSTPIF_TLF_TEST_STATUS == STD_ON) */

        #if((HTXSTPIF_TLF_TEST_STATUS == STD_ON) && (HTXSTPIF_WDG_STACK_STATUS == STD_OFF))
        /* Disable the watchdog after the TLF test*/
        /* Note: This shall be used only when the watchdog stack
                 is not present to service the TLF35584 device */
        StpRefApp_TlfDisable();
        #endif

        #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)

        #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
        #if(HTXTLF35584QSPI_DMAUSED == STD_OFF)
        /* Initialise the QSPI interrupt used by HtxTLF35584 */
        StpRefApp_lSetQspiInterrupt();
        #endif
        #endif

        #endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */

        /* Needed for HtxDtsResult
         * Enable DTSC (this is needed for HtxDtsResult test) */
        SCU_DTSCLIM.B.EN = 0x1U;

        /* this delay(20us) is needed for Tem sensor to start the measurement*/
        while(SCU_DTSCSTAT.B.RESULT < SCU_DTSCLIM.B.LOWER)
        {
            /* wait for DTSC to enable the temperature measurement */
        }

        #if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)
        /* Execute Core0 Startup Test Group1 */
        TstM_ExecStartupTestGroup(1U);
        #endif

        /* Any application specific initialisations required for ESM[SW]:SYS:MCU_STARTUP can be done here */

        /* Core0 Startup Test Finished */
        StpRefApp_Core0StartupTestDone = 1U;

        /* Start Core1 */
        Ifx_Ssw_startCore(&MODULE_CPU1, (unsigned int)&__Core1_start);

        /* Wait for Core1 to finish its Startup Tests */
        while(StpRefApp_Core1StartupTestDone == 0U);

        /* Start Core2 */
        Ifx_Ssw_startCore(&MODULE_CPU2, (unsigned int)&__Core2_start);
        /* Wait for Core2 to be ready */
        while (StpRefApp_Core2Ready == 0U);

        /* Start Core3 */
        Ifx_Ssw_startCore(&MODULE_CPU3, (unsigned int)&__Core3_start);
        /* Wait for Core2 to be ready */
        while (StpRefApp_Core3Ready == 0U);

        /* Switch SafeTpack Test Handler to RUNTIME phase */
        TstM_SwitchToRunPhase();

        /* Startup Test Phase Complete */
        StpRefApp_StartupTestDone = 1U;
    }
    else if (lCoreId == STPREFAPP_COREID_CORE1)
    {
        /* Core1 Ready */
        StpRefApp_Core1Ready = 1U;

        /* Wait for Core0 to finish its Startup Tests */
        while(StpRefApp_Core0StartupTestDone == 0U);

        /* Put Core0 to IDLE mode */
        StpRefApp_lSetCoreMode(STPREFAPP_COREID_CORE0, STPREFAPP_CORE_IDLE_MODE);

        #if(HTXTESTHND_STARTUP_TEST_GROUPS > 0U)
        /* Execute Core1 Startup Test Group */
        TstM_ExecStartupTestGroup(2U);
        #endif

        /* Set Core0 to RUN mode */
        StpRefApp_lSetCoreMode(STPREFAPP_COREID_CORE0, STPREFAPP_CORE_RUN_MODE);

        /* Core1 Startup Test Finished */
        StpRefApp_Core1StartupTestDone = 1U;

        /* Wait for completion of Startup Test Phase */
        while(StpRefApp_StartupTestDone == 0U);
    }
    else if (lCoreId == STPREFAPP_COREID_CORE2)
    {
        /* Core2 Ready */
        StpRefApp_Core2Ready = 1U;

        /* Wait for completion of Startup Test Phase */
        while(StpRefApp_StartupTestDone == 0U);
    }
    else if (lCoreId == STPREFAPP_COREID_CORE3)
    {
        /* Core3 Ready */
        StpRefApp_Core3Ready = 1U;

        /* Wait for completion of Startup Test Phase */
        while(StpRefApp_StartupTestDone == 0U);
    }
    else
    {
        /* Invalid parameter lCoreId */
    }

} /* End of RefApp_SafeTpackMain() */


/*******************************************************************************
 *
 * \function      : void StpRefApp_Tick(void)
 *
 * \description   : This function handles timer interrupt used for SafeTpack demo application
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x02
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : This function is called from STM interrupt context
 * \traceability  :
 *
 ******************************************************************************/
void StpRefApp_Tick(void)
{
    uint8 i;

    /* Check for task budget overrun */
    if (StpRefApp_TaskActive == 1U)
    {
        /* Previous cycle is not complete yet. Report error. */
        AppCbk_ErrorHandler(APPCBK_ERR_TASK_BUDGET_OVRRUN);
    }

    /* Set the timer flags for use by all the cores */
    for(i=0U; i < MCAL_NO_OF_CORES; i++)
    {
        StpRefApp_TimerFlag[i] = 1U;
    }

} /* End of StpRefApp_Tick() */


/*******************************************************************************
 *
 * \function      : void StpRefApp_WaitForTick(void)
 *
 * \description   : This function waits for timer tick interrupt
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x03
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant (Reentrant by different cores)
 *
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
void StpRefApp_WaitForTick(void)
{
    uint8 lCoreId;

    lCoreId = (uint8)Mcal_GetCpuIndex();

    while (StpRefApp_TimerFlag[lCoreId] == 0U)
    {
        ;
    }

    StpRefApp_TimerFlag[lCoreId] = 0U;

} /* End of StpRefApp_WaitForTick() */


/*******************************************************************************
 *
 * \function      : void StpRefApp_SafeWdgInit(void)
 *
 * \description   : This function initialises the configured watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x04
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
void StpRefApp_SafeWdgInit(void)
{
    uint8 i;

    #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)

    SafeWdgM_Init(0U);

    #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
    StpRefApp_ActivateCalled = 0U;
    #endif

    #endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */

    StpRefApp_LedCntr = 0U;
    StpRefApp_TaskActive = 0U;
    StpRefApp_DiagTestSlice = 0U;

    /* Clear the timer flags for use by all the cores */
    for(i=0U; i < MCAL_NO_OF_CORES; i++)
    {
        StpRefApp_TimerFlag[i] = 0U;
    }
} /* End of StpRefApp_SafeWdgInit() */

#define STPREFAPP_RUN_TIME_SLICE   0U
#define STPREFAPP_SERVICE_SLICE    9U
#define STPREFAPP_GET_INFO_SLICE   19U
#define STPREFAPP_USR_CMD_SLICE    29U

#define STPREFAPP_TOTAL_SLICE      30U

void StpRefApp_vidUserCmdHandle(void)
{
   uint8 u8LocUserCmdReq = SBC_USER_IDLE;
   uint8 u8LocIdx = 0;
   uint8 u8LocCmdSize = 0;
   
   u8LocUserCmdReq = SBC_u8GetUserCmdReq();
   SBC_bSetUserCmdReq(SBC_USER_IDLE);
   switch(u8LocUserCmdReq)
   {  
      case SBC_USER_IDLE:
      {             
         break;
      }
      case SBC_USER_CMD_GOTO_STANDBY:
      {
         u8LocCmdSize = sizeof(SBC_au8StdbyModCmdBuff);
         for (u8LocIdx = 0; u8LocIdx < u8LocCmdSize; u8LocIdx++)
         {
            StpRefApp_UserCmd[u8LocIdx].ReqCmd = SBC_au8StdbyModCmdBuff[u8LocIdx];
            StpRefApp_UserCmd[u8LocIdx].UserData = SBC_au8StdbyModDataBuff[u8LocIdx];
         }
         SafeWdgM_UserRequest(&StpRefApp_UserCmd[0], u8LocCmdSize);
         break;
      }
      case SBC_USER_CMD_CLOSE_LDO:
      {
         u8LocCmdSize = sizeof(SBC_au8CloseLDOCmdBuff);
         for (u8LocIdx = 0; u8LocIdx < u8LocCmdSize; u8LocIdx++)
         {
            StpRefApp_UserCmd[u8LocIdx].ReqCmd = SBC_au8CloseLDOCmdBuff[u8LocIdx];
            StpRefApp_UserCmd[u8LocIdx].UserData = SBC_au8CloseLDODataBuff[u8LocIdx];
         }
         SafeWdgM_UserRequest(&StpRefApp_UserCmd[0], u8LocCmdSize);
         break;
      }
      case SBC_USER_CMD_OPEN_LDO:
      {
         u8LocCmdSize = sizeof(SBC_au8OpenLDOCmdBuff);
         for (u8LocIdx = 0; u8LocIdx < u8LocCmdSize; u8LocIdx++)
         {
            StpRefApp_UserCmd[u8LocIdx].ReqCmd = SBC_au8OpenLDOCmdBuff[u8LocIdx];
            StpRefApp_UserCmd[u8LocIdx].UserData = SBC_au8OpenLDODataBuff[u8LocIdx];
         }
         SafeWdgM_UserRequest(&StpRefApp_UserCmd[0], u8LocCmdSize);
         break;
      }
      case SBC_USER_CMD_GOTO_INIT:
      {
         u8LocCmdSize = sizeof(SBC_au8InitModCmdBuff);
         for (u8LocIdx = 0; u8LocIdx < u8LocCmdSize; u8LocIdx++)
         {
            StpRefApp_UserCmd[u8LocIdx].ReqCmd = SBC_au8InitModCmdBuff[u8LocIdx];
            StpRefApp_UserCmd[u8LocIdx].UserData = SBC_au8InitModDataBuff[u8LocIdx];
         }
         SafeWdgM_UserRequest(&StpRefApp_UserCmd[0], u8LocCmdSize);
         break;
      }
      default:
      {
         break;
      }
   }
}

/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu0(void)
 *
 * \description   : This function activates the watchdog and handles run-time cyclic tests
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x05
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
HtxWdgIf_ResultType JobStatus;
HtxWdgIf_StateType WdgState;
volatile uint8 StpRefApp_u8SwAlarmTest = 0;

void StpRefApp_Runtime_Cpu0(void)
{
    boolean bLocDeinitWdg = FALSE;
    
    #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)
    #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
    /* HtxWdgIf_ResultType JobStatus; */
    #endif
    /* HtxWdgIf_StateType WdgState; */

    #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
    HtxWdgIf_MainFunction();
    #endif

    WdgState = SafeWdgM_GetState();

    #if(HTXWDGIF_WDG_TYPE == HTXWDGIF_EXT_WDG_ONLY)

    if((WdgState.ExtWdgState == HTXWDGIF_EXT_TLF_INIT) && (StpRefApp_ActivateCalled == 0U))

    #elif(HTXWDGIF_WDG_TYPE == HTXWDGIF_INT_WDG_ONLY)

    if(WdgState.IntWdgState != (uint16)HTXWDGIF_INT_SWDG_ACTIVE)

    #elif(HTXWDGIF_WDG_TYPE == HTXWDGIF_INT_CNR_WDG_TLF_WINDOW)

    if((WdgState.ExtWdgState == HTXWDGIF_EXT_TLF_INIT) && (StpRefApp_ActivateCalled == 0U) &&
       (WdgState.IntWdgState != (uint16)HTXWDGIF_INT_SWDG_ACTIVE))

    #endif
    {
        SafeWdgM_Activate();
        #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
        StpRefApp_ActivateCalled = 1U;
        #endif
    }

    #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
    JobStatus = SafeWdgM_GetJobResult();

    if (JobStatus == HTXWDGIF_JOB_SUCCESS)
    {
        /* Previous job successful executed / accepted */
        if (StpRefApp_JobFailedCnt > 0U)
        {
            /* failed Job request */
            StpRefApp_JobFailedCnt--;
        }
    }
    else if (JobStatus != HTXWDGIF_JOB_ACCEPTED)
    {
        /* Check failed Jobs */
        StpRefApp_JobFailedCnt++;
        if (StpRefApp_JobFailedCnt > 5U)
        {
            /* Max number of successive failed jobs exceeded */
            AppCbk_ErrorHandler(APPCBK_TLF_MAXJOBS_FAIL);
        }
    }

    /* switch to next slice */
    if (WdgState.ExtWdgState == HTXWDGIF_EXT_TLF_NORMAL)
    {
        StpRefApp_TaskActive = 1U;
        /* switch to next slice */
        StpRefApp_DiagTestSlice = (StpRefApp_DiagTestSlice + 1) % STPREFAPP_TOTAL_SLICE;
    }
    else
    {
        StpRefApp_DiagTestSlice = STPREFAPP_TOTAL_SLICE - 1;
    }

    if (JobStatus != HTXWDGIF_JOB_ACCEPTED)
    #endif /* HTXWDGIF_INT_WDG_ONLY */
    #endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */
    {
#if (HTXSTPIF_PFM_STATUS == STD_ON)
        PfmRefApp_Core_0_5ms();
#endif

        switch (StpRefApp_DiagTestSlice)
        {
            case STPREFAPP_RUN_TIME_SLICE:
            {
                /* Execute the Core0 Run-time Test Group */
                #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
                /* TstM_ExecRunTimeTestGroup(0U); */
                TstM_ExecRuntimeTest();
                #endif
            }
            break;

            case STPREFAPP_SERVICE_SLICE:
            {
                #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)
                WdgState = SafeWdgM_GetState();

                #if(HTXWDGIF_WDG_TYPE == HTXWDGIF_EXT_WDG_ONLY)
                if(WdgState.ExtWdgState == HTXWDGIF_EXT_TLF_NORMAL)
                #endif
                #if(HTXWDGIF_WDG_TYPE == HTXWDGIF_INT_WDG_ONLY)
                if(WdgState.IntWdgState == HTXWDGIF_INT_SWDG_ACTIVE)
                #endif
                #if(HTXWDGIF_WDG_TYPE == HTXWDGIF_INT_CNR_WDG_TLF_WINDOW)
                if((WdgState.IntWdgState == HTXWDGIF_INT_SWDG_ACTIVE)&&(WdgState.ExtWdgState == HTXWDGIF_EXT_TLF_NORMAL))
                #endif
                #endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */
                {
                   StpRefApp_LedCntr++;
                }

                #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)
                /* Service watchdog */ /* verify the Tests signatures */
                bLocDeinitWdg = SBC_bGetDeinitWdgCmd();
                if (FALSE == bLocDeinitWdg)
                {
                   if(FALSE == SBC_bServiceDisableC)
                   {
                      SafeWdgM_Service();                        /* Service watchdog  */
                   }
                }
                else 
                {
                   SafeWdgM_DeInit();
                   /* !Comment: Clear deinit watdog command if deinit task has started. */
                   SBC_vidSetDeinitWdgCmd(FALSE);
                   /* !Comment: Stop error pin work. */
                   //Smu_ReleaseErrorPin();  --Daniel WDG
                }
                #else
                /* Verify the test signature */
                TstM_VerifyRuntimeTestSig();
                #endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */
            }
            break;

            case STPREFAPP_GET_INFO_SLICE:
            {
                #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)
                #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
                SafeWdgM_GetWdgInfo();
                SBC_vidSetWdgActvFinshFlg();
                #endif /* HTXWDGIF_INT_WDG_ONLY */
                #endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */
            }
            break;

            case STPREFAPP_USR_CMD_SLICE: /* Info slice to get watchdog data */
            {
                #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON)
                #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY)
                /* SafeWdgExtTlf_UcHandler_GetTlfInfo(); */ /* Read error and status flags */

                #if 0
                   /* Command to read the status of TLF device */
                   /* DEVSTAT   (0x27U)
                      WWDSTAT   (0x29U)
                      FWDSTAT1  (0x2BU) */
                   StpRefApp_TLFUserdataBackup[0] = StpRefApp_UserCmd[0].UserData;
                   StpRefApp_TLFUserdataBackup[1] = StpRefApp_UserCmd[1].UserData;
                   StpRefApp_TLFUserdataBackup[2] = StpRefApp_UserCmd[2].UserData;

                   StpRefApp_UserCmd[0].ReqCmd = ((uint32)0x27U & (uint32)0x3FU);
                   StpRefApp_UserCmd[0].UserData = 0U;
                   StpRefApp_UserCmd[1].ReqCmd = ((uint32)0x29U & (uint32)0x3FU);
                   StpRefApp_UserCmd[1].UserData = 0U;
                   StpRefApp_UserCmd[2].ReqCmd = ((uint32)0x2BU & (uint32)0x3FU);
                   StpRefApp_UserCmd[2].UserData = 0U;
                #endif
                
                StpRefApp_vidUserCmdHandle();
                /*SafeWdgM_UserRequest(StpRefApp_UserCmd, 3U);*/
                #endif /* #if(HTXWDGIF_WDG_TYPE != HTXWDGIF_INT_WDG_ONLY) */
                #endif /* #if(HTXSTPIF_WDG_STACK_STATUS == STD_ON) */
            }
            break;

            case 4:
            {
                /* User Test Code */
                if(1 == StpRefApp_u8SwAlarmTest)
                {
                    (void)HTXSTPIF_SET_SMU_ALARM_FUNC(10, 0);
                }
            }
            break;

            default:
            {
                /* No Code */
            }
            break;
        }
    }
    StpRefApp_TaskActive = 0U;
} /* End of StpRefApp_Runtime_Cpu0() */


/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu1(void)
 *
 * \description   : This function handles run-time cyclic tests on CPU1
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x05
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
void StpRefApp_Runtime_Cpu1(void)
{
    switch (StpRefApp_DiagTestSlice % STPREFAPP_TOTAL_SLICE)
    {
        case 1:
        {
            /* Execute the Core1 Run-time Test Group */
            #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
            /*TstM_ExecRunTimeTestGroup(1U);*/
            TstM_ExecRuntimeTest();
            #endif
        }
        break;

        case 2:
        {
            /* User Test Code */
        }
        break;

        case 3:
        {
            /* User Test Code */
        }
        break;

        case 4:
        {
            /* User Test Code */
        }
        break;

        case 5:
        {
            /* User Test Code */
        }
        break;

        default:
        {
            /* User Test Code */
        }
        break;
    }
} /* End of StpRefApp_Runtime_Cpu1() */

/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu2(void)
 *
 * \description   : This function handles run-time cyclic tests on CPU2
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x05
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
void StpRefApp_Runtime_Cpu2(void)
{
    switch (StpRefApp_DiagTestSlice % STPREFAPP_TOTAL_SLICE)
    {
        case 1:
        {
            /* User Test Code */
            /* Execute the Core2 Run-time Test Group */
            #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
            /*TstM_ExecRunTimeTestGroup(1U);*/
            TstM_ExecRuntimeTest();
            #endif

        }
        break;

        case 2:
        {
            /* User Test Code */
        }
        break;

        case 3:
        {
            /* User Test Code */
        }
        break;

        case 4:
        {
            /* User Test Code */
        }
        break;

        case 5:
        {
            /* User Test Code */
        }
        break;

        default:
        {
            /* User Test Code */
        }
        break;
    }
} /* End of StpRefApp_Runtime_Cpu2() */

/*******************************************************************************
 *
 * \function      : void StpRefApp_Runtime_Cpu3(void)
 *
 * \description   : This function handles run-time cyclic tests on CPU3
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x05
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     :
 * \traceability  :
 *
 ******************************************************************************/
void StpRefApp_Runtime_Cpu3(void)
{
    switch (StpRefApp_DiagTestSlice % STPREFAPP_TOTAL_SLICE)
    {
        case 1:
        {
            /* User Test Code */
            /* Execute the Core2 Run-time Test Group */
            #if(HTXTESTHND_RUNTIME_TEST_GROUPS > 0U)
            /*TstM_ExecRunTimeTestGroup(1U);*/
            TstM_ExecRuntimeTest();
            #endif

        }
        break;

        case 2:
        {
            /* User Test Code */
        }
        break;

        case 3:
        {
            /* User Test Code */
        }
        break;

        case 4:
        {
            /* User Test Code */
        }
        break;

        case 5:
        {
            /* User Test Code */
        }
        break;

        default:
        {
            /* User Test Code */
        }
        break;
    }
} /* End of StpRefApp_Runtime_Cpu3() */

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static void StpRefApp_lSetCoreMode(uint8 lCoreId, uint8 CoreMode)
 *
 * \description   : Sets the state of a given core
 *
 *******************************************************************************
 *
 * \param[in]     : lCoreId - Core Id
 * \param[in]     : Core Mode - Core Mode
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant (Reentrant by different cores)
 *
 * \pre           : -
 * \post          : -
 * \attention     : -
 * \traceability  :
 *
 ******************************************************************************/
static void StpRefApp_lSetCoreMode(uint8 lCoreId, uint8 CoreMode)
{
    Mcal_WriteSafetyEndInitProtRegMask(&STPREFAPP_PMCSR[lCoreId].U,(uint32)CoreMode,3U);

} /* End of StpRefApp_lSetCoreMode() */

#if((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON))
/*******************************************************************************
 *
 * \function      : static void StpRefApp_lConfigureTlfSpiPins(void)
 *
 * \description   : This function configures the port pins used for SPI communication with TLF35584
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : Current configuration is for TriBoard TC3x7 TH V2.01.
 * Configuration has to be done by user according to the used board!
 * \traceability  :
 *
 ******************************************************************************/
static void StpRefApp_lConfigureTlfSpiPins(void)
{
    /* Init QSPI port pins
    P14.2 QSPI2 Slave Select Output 1 for SCS of TLF35584
    P15.3 QSPI2 Master Clock Output for SCL of TLF35584
    P15.6 QSPI2 Master Transmit Output for SDI of TLF35584
    P15.7 QSPI2 Master Receive Input B for SDO from TLF35584 */
    //P14_IOCR0.B.PC2 = 0x13U; /* CS */ /* QSPI2_SLSO1 */ /* HtxTLF35584QspiChannel = 1 */
    //P15_IOCR0.B.PC3 = 0x13U; /* CLOCK */
    //P15_IOCR4.B.PC6 = 0x13U; /* MOSI */
    //P15_IOCR4.B.PC7 = 0x02U; /* MISO */ /* QSPI2_MRSTB (B=1) */ /* HtxTLF35584QspiRxInpSelection = 1 */
    //P14_IOCR0.B.PC3 = 0x10U; /* TLF WDI pin */
    //P33_IOCR8.B.PC9 = 0x02U; /* TLF35584 SS1 Feedback */
    /*P14_IOCR4.B.PC5 = 0x10U;*/ /* Toggle in ESR1 NMI Trap (upon TLF35584 INT signal) for debug purpose */
} /* End of StpRefApp_lConfigureTlfSpiPins() */
#endif /* #if((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON)) */


#if (HTXSTPIF_TLF_TEST_STATUS == STD_ON)
/*******************************************************************************
 *
 * \function      : static void StpRefApp_lEsr1TrapInit(void)
 *
 * \description   : This function clears and enables ESR1 Trap.
 *                  TLF35584 INT pin in connected to ESR1.
 *                  INT signal activation triggers ESR1 (NMI) Trap.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : -
 * \traceability  :
 *
 ******************************************************************************/
static void StpRefApp_lEsr1TrapInit(void)
{
    Ifx_SCU_TRAPDIS0 lTrapDis0;

    /* Clear ESR1 Trap */
    SCU_TRAPCLR.B.ESR1T = 1U;
    /* Enable ESR1 Trap */
    lTrapDis0.U = SCU_TRAPDIS0.U;
    lTrapDis0.B.CPU0ESR1T = 0U;
    HTXSTPIF_WRITE_CEINIT_PROTREG32((uint32*)&(SCU_TRAPDIS0.U),(uint32)lTrapDis0.U);

} /* End of StpRefApp_lEsr1TrapInit() */


#if (HTXTLF35584TEST_ERR_TEST == STD_ON)
/*******************************************************************************
 *
 * \function      : static void StpRefApp_lSmuInit(void)
 *
 * \description   : This function configures and enables SMU FSP functionality.
 *                  (Time switching protocol)
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : This function shall only be called when SMU is in START state.
 * \traceability  :
 *
 ******************************************************************************/
static void StpRefApp_lSmuInit(void)
{
    Ifx_SMU_FSP lSmuFsp;

    if(SMU_DBG.B.SSM == STPREFAPP_SMU_START_STATE)
    {
        /* Unlock SMU configuration */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&SMU_KEYS.U,(uint32)0xBCU);

        /* Configure FSP for Bi-stable mode */
        lSmuFsp.U = SMU_FSP.U;
        lSmuFsp.B.MODE = 0U;
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&SMU_FSP.U,(uint32)lSmuFsp.U);
        /* Configure everything except mode */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&SMU_FSP.U,(uint32)(STPREFAPP_SMU_FSP_CFG & 0xFFFFFF9FU));
        /* Configure everything including Time-Switching protocol */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&SMU_FSP.U,(uint32)STPREFAPP_SMU_FSP_CFG);
        /* Enable SMU control of FSP pin (P33.8) */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&SMU_PCTL.U,(uint32)STPREFAPP_SMU_PCTL);

        /* Temporary lock SMU configuration */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&SMU_KEYS.U,(uint32)0x00U);
    }

} /* End of StpRefApp_lSmuInit() */

#endif /* End of #if (HTXTLF35584TEST_ERR_TEST == STD_ON) */
#endif /* End of #if (HTXSTPIF_TLF_TEST_STATUS == STD_ON) */

/*******************************************************************************
 *
 * \function      : uint8 TLF35584Demo_IsSsspActive(void)
 *
 * \description   : This function checks Secondary Safety Shutdown Path Activation
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : 0: SS1 pin (P33.9) is high
 *                  1: SS1 pin (P33.9) is low
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : User shall implement the following:
                    Check on application level that the safe state outputs SS1/2 are low and
                    the secondary safety shutdown path has been activated on application level.
 * \traceability  :
 *
 ******************************************************************************/
uint8 TLF35584Demo_IsSsspActive(void)
{
    uint8 RetVal;

    RetVal = 0U;

    /* TLF35584 SS1 pin is connected to P33.9 */
    if(P33_IN.B.P9 == 0)
    {
        RetVal = 1U;
    }

    return RetVal;

} /* End of TLF35584Demo_IsSsspActive() */


/*******************************************************************************
 *
 * \function      : void TLF35584Demo_InterruptHandler(void)
 *
 * \description   : This function is the interrupt handler for TLF35584 INT pin activation.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : HtxTLF35584Test module forwards any unexpected interrupt to application
 *                  for servicing.
 * \traceability  :
 *
 ******************************************************************************/
void TLF35584Demo_InterruptHandler(void)
{
    NOP();

} /* End of TLF35584Demo_InterruptHandler() */


/*******************************************************************************
 *
 * \function      : static void StpRefApp_lConfigLedPins(void)
 *
 * \description   : 
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : -
 * \traceability  :
 *
 ******************************************************************************/
static void StpRefApp_lConfigLedPins(void)
{
    /* Alternate CLOCK pin */
    P33_IOCR12.B.PC14 = 0x13U;

    /* LED pins */
    P33_IOCR4.B.PC4 = 0x10U;
    P33_IOCR4.B.PC5 = 0x10U;
    P33_IOCR4.B.PC6 = 0x10U;
    P33_IOCR4.B.PC7 = 0x10U;

    P33_OMR.U = ((1U<<20U) | (1U<<4U));
    P33_OMR.U = ((1U<<22U) | (1U<<6U));
} /* End of StpRefApp_lConfigLedPins() */


/*******************************************************************************
 *
 * \function      : static void StpRefApp_lToggleLED(void)
 *
 * \description   : This function toggles the LEDs
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : -
 * \traceability  :
 *
 ******************************************************************************/
static void StpRefApp_lToggleLED(void)
{
    P33_OMR.U = ((1U<<20U) | (1U<<4U));
    P33_OMR.U = ((1U<<21U) | (1U<<5U));
    P33_OMR.U = ((1U<<22U) | (1U<<6U));
    P33_OMR.U = ((1U<<23U) | (1U<<7U));

} /* End of StpRefApp_lToggleLED() */

#if((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON))
#if(HTXTLF35584QSPI_DMAUSED == STD_OFF)
/*******************************************************************************
 *
 * \function      : static void StpRefApp_lSetQspiInterrupt(void)
 *
 * \description   : This function configures the interrupt source node for QSPI RX
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : None
 *
 ******************************************************************************/
static void StpRefApp_lSetQspiInterrupt(void)
{
    SRC_QSPI2RX.U |= (uint32)((uint32)IRQ_QSPI2_RX_PRIO |
                     ((uint32)1U<<IFX_SRC_SRCR_SWSCLR_OFF) |
                     ((uint32)1U<<IFX_SRC_SRCR_IOVCLR_OFF) |
                     ((uint32)1U<<IFX_SRC_SRCR_CLRR_OFF));
    SRC_QSPI2RX.B.SRE = 1U;
} /* End of StpRefApp_lSetQspiInterrupt() */
#endif /* #if(HTXTLF35584QSPI_DMAUSED == STD_OFF) */
#endif /* #if((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON)) */


/* QSPI Rx interrupt is required only if DMA is not used */
#if((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON))


#if(HTXTLF35584QSPI_DMAUSED == STD_OFF)
/*******************************************************************************
 *
 * \function      : IFX_INTERRUPT(StpRefApp_QSPI2RxHandler, 0, IRQ_QSPI2_RX_PRIO)
 *
 * \description   : This is the interrupt service routine for QSPI2_RX.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : QSPI Rx interrupt is required only if DMA is not used
 * \traceability  :
 *
 ******************************************************************************/
#if(IRQ_QSPI2_RX_TOS != IRQ_TOS_DMA)
#if((IRQ_QSPI2_RX_PRIO > 0) || (IRQ_QSPI2_RX_CAT == IRQ_CAT2))
#if((IRQ_QSPI2_RX_PRIO > 0) && (IRQ_QSPI2_RX_CAT == IRQ_CAT1))
IFX_INTERRUPT(StpRefApp_QSPI2RxHandler, 0, IRQ_QSPI2_RX_PRIO)
{
    ENABLE();

    HtxTLF35584Qspi_IsrTxRx();

} /* End of IFX_INTERRUPT(StpRefApp_QSPI2RxHandler, 0, IRQ_QSPI2_RX_PRIO) */
#endif
#endif
#endif

#endif /* End of #if(HTXTLF35584QSPI_DMAUSED == STD_OFF) */

#endif /* End of #if((HTXSTPIF_WDG_STACK_STATUS == STD_ON) || (HTXSTPIF_TLF_TEST_STATUS == STD_ON)) */

/*******************************************************************************
 *
 * \function      : void StpRefApp_TlfDisable(void)
 *
 * \description   : This function disables the TLF35584
 *                  (avoids the need to service the watchdog)
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : -
 * \post          : -
 * \attention     : -
 * \traceability  :
 *
 ******************************************************************************/
void StpRefApp_TlfDisable(void)
{
    /* SPI commands to TLF: unprotect, disable watchdog, protect */
    const unsigned short wdtdiscmd[10] =
        {0x8756U, 0x87deU, 0x86adU, 0x8625U, 0x8d27U,0x8A01U, 0x87beU, 0x8668U, 0x877dU, 0x8795U};
    uint8 i;

    Support_ClearCpuEndInit(&MODULE_SCU.WDTCPU[0]);

    QSPI2_CLC.U = 0x8U;
    (void) QSPI2_CLC.U;

    /* Set Speed Grade 1 */
    P14_PDR0.B.PD2 = 0U;
    P15_PDR0.B.PD3 = 0U;
    P15_PDR0.B.PD6 = 0U;
    P15_PDR0.B.PD7 = 0U;

    QSPI2_PISEL.B.MRIS = 1U;

    Support_SetCpuEndInit(&MODULE_SCU.WDTCPU[0]);

    QSPI2_GLOBALCON.U = 0x20003C04U;
    QSPI2_GLOBALCON1.U = 0x14000000U;
    QSPI2_ECON1.U = 0x501U;
    QSPI2_SSOC.U = 0x00020000U;

    while ((QSPI2_STATUS.U & (uint32)0xFFFU) != 0U)
    {
        QSPI2_FLAGSCLEAR.U = 0xFFFU;
    }

    QSPI2_BACONENTRY.U = 0x17A10001U; /* BACON - SLSO1 */

    QSPI2_GLOBALCON.B.EN = 1U;

    for (i=0U; i<10U; i++)
    {
        /* Send command to TLF, Poll for QSPI TX and RX flags and clear flags */
        QSPI2_DATAENTRY0.U = (uint32) wdtdiscmd[i];
        while (!QSPI2_STATUS.B.TXF);
        QSPI2_FLAGSCLEAR.U = (uint32)(((uint32)1U) << 9U);
        while (!QSPI2_STATUS.B.RXF);
        QSPI2_FLAGSCLEAR.U = (uint32)(((uint32)1U) << 10U);
        (void) QSPI2_RXEXIT.U;
    }
} /* End of StpRefApp_TlfDisable() */

/* EOF */
