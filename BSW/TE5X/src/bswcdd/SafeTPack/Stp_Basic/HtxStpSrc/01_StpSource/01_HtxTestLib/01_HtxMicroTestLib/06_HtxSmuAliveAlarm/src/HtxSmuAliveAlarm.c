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
** FILENAME : HtxSmuAliveAlarm.c                                              **
**                                                                            **
** REVISION : \$Revision: 26594 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-10-20 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2224             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2223             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2299             **
**                                                                            **
** DESCRIPTION : The SMU alive alarm driver tests the SMU core alive monitor  **
**               and its connection to the SMU standby by triggering the      **
**               alive alarm.                                                 **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxSmu_reg.h"
#include "IfxPms_reg.h"
#include "IfxStm_reg.h"
#include "IfxScu_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxSmuAliveAlarm.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* Mask for 16th bit field */
#define HTXSMUALIVEALARM_ALIVE_BIT_MASK  ((uint32)0x00010000U)

/* Mask for Appl/Sys reset */
#define HTXSMUALIVEALARM_LOW_WORD_MASK   ((uint32)0x0C00FFFFU)

/* Timeout for the SMU command to be successfully executed */
#define HTXSMUALIVEALARM_TIMEOUT         ((uint32)0x000000FFU)

/* SMU START state machine */
#define HTXSMUALIVEALARM_SSM_START       ((uint8)0U)

/* SMU RUN state machine */
#define HTXSMUALIVEALARM_SSM_RUN         ((uint8)1U)

/* SMU command for Alive alarm test */
#define HTXSMUALIVEALARM_CMD             (0x7U)

/* Argument for the command to start Alive alarm test */
#define HTXSMUALIVEALARM_START           ((uint32)((uint32)0x5U << 4U))

/* Argument for the command to stop Alive alarm test */
#define HTXSMUALIVEALARM_STOP            ((uint32)((uint32)0xAU << 4U))


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

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSMUALIVEALARM_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static Std_ReturnType HtxSmuAliveAlarm_lGetAlmSts(void);

static Std_ReturnType HtxSmuAliveAlarm_lTrigger(void);

static Std_ReturnType HtxSmuAliveAlarm_lIsApplOrSysRst(void);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSMUALIVEALARM_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSMUALIVEALARM_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxSmuAliveAlarm_Test
 *                  (
 *                    const uint8 ParamSetIndex,
 *                    const uint8 TstSeed,
 *                    uint32* const TstSignature
 *                  )
 *
 * \description   : This API is used to implement external Safety mechanisms,
 *                  ESM[SW]:SMU:ALIVE_ALARM_TEST. It triggers and evaluates
 *                  test results.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 *
 * \param[out]    : TstSignature - Test signature to be generated by the test
 *
 * \return        : HTXSMUALIVEALARM_PASSED - The test passed
 *                  HTXSMUALIVEALARM_ERR_ALM_STS - Test Failed due to SMU ALM flag not set
 *                  HTXSMUALIVEALARM_ERR_TRIG - Failed due to error in triggering the test
 *                  HTXSMUALIVEALARM_PREV_ALM_STS - Test failed due to previous ALM set
 *                  HTXSMUALIVEALARM_ERR_SMU_RUN - Test failed due to invalid SMU state
 *
 *******************************************************************************
 *
 * \service id:   : 0x0F
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : SMU_core should be in the START state.
 *                  Stdby_SMU shall be disabled
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2226
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2225
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1724
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1727
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1726
 ******************************************************************************/
HtxTestHnd_TstRsltType HtxSmuAliveAlarm_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType ReturnValue;
    Std_ReturnType AliveAlmTstSts;
    uint8 SmuSsmReg;

    SmuSsmReg = (uint8)SMU_DBG.B.SSM;

    /* Initialise Test Signature */
    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    *TstSignature = (uint32)HTXSTPIF_CRC32(TEST_ID_SMU_ALIVE_ALARM_TST, TstSeed);

    /* Verify the ParamSetIndex via signature */
    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ParamSetIndex);

    /* Execute the SMU test only when SMU state is in 'START' */
    /* SMU State machine is Reset only for Warm/COLD PORST (not for Application/system reset) */
    if(SmuSsmReg == HTXSMUALIVEALARM_SSM_START)
    {
        /* Gets the SMU alive alarm status bit to check
           if it is already set. If it is set return an error */
        if(PMS_AG21_STDBY.B.SF16 == 0U)
        {
            AliveAlmTstSts = HtxSmuAliveAlarm_lTrigger();

            if(AliveAlmTstSts == E_OK)
            {
                if(HtxSmuAliveAlarm_lGetAlmSts() == E_OK)
                {
                    ReturnValue = HTXSMUALIVEALARM_PASSED;
                }
                else
                {   /* Alive alarm flag not set after the Alive Test trigger */
                    ReturnValue = HTXSMUALIVEALARM_ERR_ALM_STS;
                }
            }
            else
            {   /* Error while triggering the Alive alarm test, command failed */
                ReturnValue = HTXSMUALIVEALARM_ERR_TRIG;
            }
        }
        else
        {   /* Previous alarm ALM21[16] status is not cleared */
            ReturnValue = HTXSMUALIVEALARM_PREV_ALM_STS;
        }
    }
    else
    {
        /* Return PASS if SMU is in RUN state and reset type is appl/sys */
        if((HtxSmuAliveAlarm_lIsApplOrSysRst() == E_OK) && (SmuSsmReg == HTXSMUALIVEALARM_SSM_RUN))
        {
            ReturnValue = HTXSMUALIVEALARM_PASSED;
        }
        else
        {
            /* SMU = RUN_State, PORST - Invalid case, for PORST SMU would
             * be in START state and application shall not put SMU into RUN state
             * until the startup SafeTpack tests are executed */
            /* SMU - FAULT state, Appl/Sys reset, shall return with false condition */
            ReturnValue = HTXSMUALIVEALARM_ERR_SMU_RUN;
        }
    }

    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ReturnValue);

    return ReturnValue;

} /* End of HtxSmuAliveAlarm_Test() */


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxSmuAliveAlarm_lIsApplOrSysRst(void)
 *
 * \description   : This function checks if the previous reset
 *                  was either application or system
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : E_OK: Previous reset was application or System
 *                  E_NOT_OK: previous reset was not application/system
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : SMU_core should be in the START state.
 *                  Stdby_SMU shall be disabled
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1723
 *
 ******************************************************************************/
static Std_ReturnType HtxSmuAliveAlarm_lIsApplOrSysRst(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SCU_RSTSTAT ResetStatus;
    uint8 RetVal = E_NOT_OK;

    /* Read the Reset status SFR */
    ResetStatus.U = SCU_RSTSTAT.U;

    if((ResetStatus.U & HTXSMUALIVEALARM_LOW_WORD_MASK) != 0U)
    {
        RetVal = E_OK;
    }

    return RetVal;

} /* End of HtxSmuAliveAlarm_lIsApplOrSysRst() */


/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxSmuAliveAlarm_lTrigger(void)
 *
 * \description   : This application triggers the Smu Alive alarm test
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : E_OK: Test triggered successful
 *                  E_NOT_OK: Test not triggered
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1725
 *
 ******************************************************************************/
static Std_ReturnType HtxSmuAliveAlarm_lTrigger(void)
{
    uint32 Timeout;
    uint8 RetVal;

    /* Initialise with default Failure Id */
    RetVal = E_NOT_OK;

    /* Runs The SMU alive alarm test.*/
    SMU_CMD.U = HTXSMUALIVEALARM_CMD | HTXSMUALIVEALARM_START;

    Timeout = 0U;

    /* Poll for command status(Success) */
    while((SMU_STS.B.RES != 0U) && (Timeout < HTXSMUALIVEALARM_TIMEOUT))
    {
        Timeout++;
    }

    if(Timeout < HTXSMUALIVEALARM_TIMEOUT)
    {
        /* Stop The SMU alive alarm test */
        SMU_CMD.U = HTXSMUALIVEALARM_CMD | HTXSMUALIVEALARM_STOP;

        Timeout = 0U;

        /* Poll for command status(Success) */
        while((SMU_STS.B.RES != 0U) && (Timeout < HTXSMUALIVEALARM_TIMEOUT))
        {
            Timeout++;
        }

        if(Timeout < HTXSMUALIVEALARM_TIMEOUT)
        {
            RetVal = E_OK;
        }
    }

    return RetVal;
} /* End of HtxSmuAliveAlarm_lTrigger() */


/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxSmuAliveAlarm_lGetAlmSts(void)
 *
 * \description   : This function checks the alarm status
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : E_OK: Alarm was set and cleared successfully
 *                  E_NOT_OK: Alarm not set
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1722
 *
 ******************************************************************************/
static Std_ReturnType HtxSmuAliveAlarm_lGetAlmSts(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_PMS_CMD_STDBY PmsStdbyCmdRegVal;
    Std_ReturnType RetVal = E_NOT_OK;

    /* Check is the ALM21[16] is set */
    if(PMS_AG21_STDBY.B.SF16 == (uint8)1U)
    {
        /* CMD to clear SMU ALM21[16] bit */
        PmsStdbyCmdRegVal.U = PMS_CMD_STDBY.U;
        PmsStdbyCmdRegVal.B.BITPROT = 1U;
        PmsStdbyCmdRegVal.B.ASCE = 1U;

        /* Perform 32-bit write */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_CMD_STDBY.U,PmsStdbyCmdRegVal.U);

        /* Clear the alarm */
        /* To clear the alarm set the only bit corresponding to the alarm, with rest of the bits cleared */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_AG21_STDBY.U,HTXSMUALIVEALARM_ALIVE_BIT_MASK);

        /* Check if the ALM21[16] is cleared */
        if(PMS_AG21_STDBY.B.SF16 == (uint8)0U)
        {
            RetVal = E_OK;
        }
    }

    return RetVal;
} /* End of HtxSmuAliveAlarm_lGetAlmSts() */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXSMUALIVEALARM_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/* EOF */
