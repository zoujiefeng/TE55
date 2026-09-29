/*********************************************************************************************************************
*
* Description:     Watchdog function porting.
* FileName:        FBL_WdgM_Port.c
* Company:         INVT (www.invt.com.cn)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright INVT 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
RHT2HC          2020/12/07     modified
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "FBL_WdgM_Port.h"
#include "Wdg_17_Scu.h"
#include "Os_TimeServices.h"
#include "Smu.h"
/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
#define FBL_WDGM_TESTING

//extern void Wdg_Cbk_GptNotification0(void);    /* PRQA S 3447 */ /* MISRA DEVIATION: The variable is auto-generated. */

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/
static uint32  Fbl_WdgTimer = 0;      /* Watchdog timer */
static uint16  Fbl_Port_CurrentPass = 0;    /* Current password to trigger Watchdog */

/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/
static uint16 Fbl_Port_calSeqPassword(void);

/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/
static uint16 Fbl_Port_calSeqPassword(void)
{
    uint32  SeqPass = 0;
    uint32  Pass = 0;

    Pass =  (((uint32)Fbl_Port_CurrentPass >> 13U) ^ \
               ((uint32)Fbl_Port_CurrentPass >> 12U) ^\
               ((uint32)Fbl_Port_CurrentPass >> 11U) ^\
               ((uint32)Fbl_Port_CurrentPass >> 1U)) & 1U;

    SeqPass = (((uint32)Fbl_Port_CurrentPass << 1U) | (Pass)) & 0x00003FFFU;

    Fbl_Port_CurrentPass = (uint16)SeqPass;

    return (uint16)SeqPass;
}

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_Wdg 101] */
/**
 * @brief Initialize Watchdog module
 */
void Fbl_Port_InitWdg(void)
{
	/* Initialize SMU module to manage Watchdog alarm */
    Smu_Init(&Smu_Config);
    /* Push SMU to RUN state */
    Smu_ActivateRunState(SMU_RUN_COMMAND);
    
    /* Reset/set ENDINIT */
    //Ifx_Ssw_clearCpuEndinit();
    //Ifx_Ssw_setCpuEndinit();

    Wdg_17_Scu_Init(&Wdg_17_Scu_Config_0);

    /* Set current password to default - This value is same with configuration in MCAL */
    Fbl_Port_CurrentPass = FBL_PORT_WDG_INIT_PASSWORD;
    
    /* Get position start trigger Watchdog */
    (void)OS_Timer32_Start(&Fbl_WdgTimer);
}

/* [$Satisfies $LEAR_FBL_DD_Wdg 102] */
/**
 * @brief Main function of Watchdog to trigger Watchdog
 */
void Fbl_Port_WdgMainFunction(void)
{
#ifdef FBL_WDGM_TESTING
    static volatile boolean enableLoop = 0;
    while(TRUE == enableLoop)
	{

	}
#endif

    /* Trigger watchdog when elapse time greater half of window time */
    if(TRUE == OS_Timer32_IsElapsed(Fbl_WdgTimer, FBL_PORT_WDG_TRIGGER_POINT))
    {
        /* Trigger watchdog */
        Fbl_Port_TriggerWdg();
    }
}

/* [$Satisfies $LEAR_FBL_DD_Wdg 104] */
/**
 * @brief Disable watchdog module
 */
void Fbl_Port_DisableWdg(void)
{
    /* Request to set Watchdog mode to OFF */
    Wdg_17_Scu_SetMode(WDGIF_OFF_MODE);


    /*DeInit SMU*/
    Smu_DeInit();
}

/* [$Satisfies $LEAR_FBL_DD_Wdg 103] */
/**
 * @brief   Trigger watchdog
 */
void Fbl_Port_TriggerWdg(void)
{
    /* Trigger watchdog */
    Wdg_17_Scu_SetTriggerCondition((uint16)(Fbl_WdgTimer/STM_TH_1MS));

	(void)OS_Timer32_Start(&Fbl_WdgTimer);
}
