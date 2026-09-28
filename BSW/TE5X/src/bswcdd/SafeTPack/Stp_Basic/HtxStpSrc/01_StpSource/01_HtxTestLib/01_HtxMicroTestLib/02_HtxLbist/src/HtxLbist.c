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
** FILENAME : HtxLbist.c                                                      **
**                                                                            **
** REVISION : \$Revision: 31020 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-11-29 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2295             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2287             **
**                                                                            **
** DESCRIPTION : Source code file for the module HtxLbist                     **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxScu_reg.h"
#include "IfxCpu_reg.h"
#include "IfxSmu_reg.h"
#include "IfxMtu_reg.h"
#include "IfxPms_reg.h"
#include "IfxScu_bf.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxLbist.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* Any non-Zero value is valid */
#define HTXLBIST_TRIG_SEED                 ((uint32)0x00000012U)

#define HTXLBIST_TIMEOUT_VAL               ((uint32)0x000000FFU)

/* Macro to specify the masks for the bitfields STBYR, SWD, EVR33, EVRC of SCU_RSTSTAT SFR  */
#define HTXLBIST_STBYR_SWD_EVR33_EVRC      \
    (uint32)((IFX_SCU_RSTSTAT_STBYR_MSK << IFX_SCU_RSTSTAT_STBYR_OFF) | \
    (IFX_SCU_RSTSTAT_SWD_MSK << IFX_SCU_RSTSTAT_SWD_OFF) | \
    (IFX_SCU_RSTSTAT_EVR33_MSK << IFX_SCU_RSTSTAT_EVR33_OFF) | \
    (IFX_SCU_RSTSTAT_EVRC_MSK << IFX_SCU_RSTSTAT_EVRC_OFF))

/* As per ESM[SW]:MCU:LBIST_RESULT, under extreme operation conditions a
   single LBIST run might fail by showing an unexpected MISR-result.
   In this case the faulty silicon behaviour shall be confirmed by repeating the LBIST
   execution at least 2 times. If the LBIST function should fail to produce a correct
   MISR-signature within 3 consecutive runs, the device has to be considered as
   defective and shall not boot into a safe application. */
#define HTXLBIST_RERUNS_THRESHOLD          ((uint8)3U)

/* SSHID of CPU0_DLMU */
#define HTXLBIST_CPU0_DLMU_SSH_ID          ((uint8)4U)

#if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
/* SSHID of CPU1_DLMU */
#define HTXLBIST_CPU1_DLMU_SSH_ID          ((uint8)9U)
#endif

/* Mask to clear ECCD flags,
   SERR[0]=CERR[1]=UCERR[2]=MERR[3]=VAL[9:5]=EOV[15]=0, TRC[4]=1 */
#define HTXLBIST_CLR_ECCD_ERR_FLAGS        ((uint16)0x0010U)

#define HTXLBIST_LOW_8_BIT_MASK            ((uint32)0x000000FFU)

/* Macro to specify constant 24 */
#define HTXLBIST_CONST_24                  ((uint8)24U)

/* Macro to specify the expected Trap value */
#define HTXLBIST_TRAP_EXPECTED             ((uint32)0xA5A5A5A5U)
/* Macro to specify the inverted value of expected trap HTXLBIST_TRAP_EXPECTED */
#define HTXLBIST_TRAP_EXPECTED_INV         ((uint32)0x5A5A5A5AU)

/* Macro to specify that Trap is no expected */
#define HTXLBIST_TRAP_NOT_EXPECTED         ((uint32)0U)


/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTestLib_MemMap.h"

static uint32 HtxLbist_TrapExpected;
static uint32 HtxLbist_TrapExpectedRedn;

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTESTHND_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXLBIST_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static HtxTestHnd_TstRsltType HtxLbist_lTriggerLBIST
(
    const uint32 LbistTrigCrc,
    const uint8 ParamSetIndex,
    const uint8 TstSeed
);

static HtxTestHnd_TstRsltType HtxLbist_lGetLbistStatus
(
    const uint32 expSig,
    uint32 * const TstSignature
);

static void HtxLbist_lResetLbistHw(void);

static void HtxLbist_lSetCrc(void);

static uint32 HtxLbist_lIsColdPorstOrStdby(void);

static Std_ReturnType HtxLbist_lCheckCrc(void);
#if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON))
static uint32 HtxLbist_lMtuEnable(void);

static void HtxLbist_lMtuDisable(uint32 WasMtuEnabled);
#endif /* #if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON)) */

static void HtxLbist_lSetFwDataCrc(void);

static void HtxLbist_lInitDlmu(void);

static void HtxLbist_lInitLbistData(void);

static void HtxLbist_lSetDlmuUsage(const uint8 lDlmuUsg);

static void HtxLbist_lSetTrapStatus(const uint32 value);

static void HtxLbist_lClearColdResetStatus(void);

static void HtxLbist_lBackupMtuForFwCheck(void);
/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXLBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXLBIST_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxLbist_Test
 *                   (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This API checks if the LBIST needs to be trigger
 *                  based on the LBIST status. It also handles the LBIST result
 *
 *                  The SafeTPack TstSeed is not directly used to generate
 *                  the seed value for the LBIST in this version.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 *
 * \param[out]    : TstSignature - Test signature to be generated by the test
 *
 * \return        : HtxTestHnd_TstRsltType,
 *                  HTXLBIST_SUCCESS - The test passed
 *
 *                  HTXLBIST_CALLER_ADDR_ERR - Error caused by unexpected calling address
 *
 *                  HTXLBIST_PORST_ERR - A power on reset(PORST) occurred during LBIST
 *
 *                  HTXLBIST_TERMINATION_ERR - The LBIST did not terminate correctly
 *
 *                  HTXLBIST_DEFAULT_SIGNATURE_ERR - The default signature is incorrect
 *
 *                  HTXLBIST_CRC_ERR - CRC error
 *
 *                  HTXLBIST_UNDEFINED_ERR - This error is never intentionally
 *                  returned. If it is returned anyway, something  must be
 *                  very serious must be wrong
 *
 *                  HTXLBIST_INV_PARAM_ERR - Invalid parameter
 *
 *******************************************************************************
 *
 * \service id:   : 0x01
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1697
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1752
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2215
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2214
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2213
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2212
 *
 ******************************************************************************/
HtxTestHnd_TstRsltType HtxLbist_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType Result;

    if (ParamSetIndex < HTXLBIST_CFG_COUNT)
    {
        /* Initialise Test Signature */
        *TstSignature = HTXSTPIF_CRC32(TEST_ID_LBIST_TST, TstSeed);

        /* Verify the ParamSetIndex via signature */
        *TstSignature = HTXSTPIF_CRC32(*TstSignature, ParamSetIndex);

        if (HtxLbist_lIsColdPorstOrStdby() == TRUE)
        {
            /* Errors/Traps due to accessing uninitialized memory are ignored
            if in case the memory area pointed by HTXLBIST_DATA_ADDR was not
            initialised by HW / startup SW. HtxLbist variables will
            be initialised by HtxLbist_lInitDlmu */
            HtxLbist_lSetTrapStatus(HTXLBIST_TRAP_EXPECTED);
            Std_ReturnType lCrcStatus = HtxLbist_lCheckCrc();
            HtxLbist_lSetTrapStatus(HTXLBIST_TRAP_NOT_EXPECTED);

            /* Was the RAM already initialised */
            if (lCrcStatus == E_NOT_OK)
            {
                HtxLbist_lInitLbistData();
                HtxLbist_lSetCrc();
            }

            /* This is to avoid indefinite re-triggering of LBIST,
               due to hard error in the memory area pointed by HTXLBIST_DATA_ADDR */
            if (HtxLbist_lCheckCrc() == E_OK)
            {
                HtxLbist_lBackupMtuForFwCheck();
                uint32 LbistTrigReq = FALSE;

                /* HtxLbist START state */
                if (HTXLBIST_DATA_ADDR.LbistState == HTXLBIST_START_STATE)
                {
                    /* Check if the LBIST is triggered by startup software (SSW) */
                    if (SCU_LBISTCTRL0.B.LBISTDONE == 1U)
                    {
                        /* LBIST is triggered at the least one time */
                        HTXLBIST_DATA_ADDR.LbistRuns = 1U;
                        HTXLBIST_DATA_ADDR.LbistState = HTXLBIST_RUN_STATE;

                        /* LBIST has run since last PORST */
                        /* Get LBIST status */
                        Result = HtxLbist_lGetLbistStatus(HtxLbist_kConfigSet[ParamSetIndex].HtxLbist_LbistCtrl3RegVal, TstSignature);

                        /* Update the previous LBIST result */
                        HTXLBIST_DATA_ADDR.LbistLastResult = Result;

                        if (Result == HTXLBIST_SUCCESS)
                        {
                            HTXLBIST_DATA_ADDR.LbistState = HTXLBIST_PASS_STATE;
                        }
                        else
                        {
                            HTXLBIST_DATA_ADDR.LbistState = HTXLBIST_RUN_STATE;
                            LbistTrigReq = TRUE;
                        }
                    }
                    else
                    {
                        /* Only to prevent unitialized Result warning. This will not actually be returned
                        by HtxLbist_Test() as HtxLbist_lTriggerLBIST() will cause a reset. */
                        Result = HTXLBIST_UNDEFINED_ERR;

                        HTXLBIST_DATA_ADDR.LbistState = HTXLBIST_RUN_STATE;
                        LbistTrigReq = TRUE;
                    }
                }
                else if (HTXLBIST_DATA_ADDR.LbistState == HTXLBIST_RUN_STATE)
                {
                    Result = HtxLbist_lGetLbistStatus(HtxLbist_kConfigSet[ParamSetIndex].HtxLbist_LbistCtrl3RegVal, TstSignature);

                    /* Update the previous LBIST result */
                    HTXLBIST_DATA_ADDR.LbistLastResult = Result;

                    if (Result == HTXLBIST_SUCCESS)
                    {
                        HTXLBIST_DATA_ADDR.LbistState = HTXLBIST_PASS_STATE;
                    }
                    else
                    { /* Check if the consecutive LBIST runs are within the threshold */
                        if (HTXLBIST_DATA_ADDR.LbistRuns < HTXLBIST_RERUNS_THRESHOLD)
                        {
                            LbistTrigReq = TRUE;
                        }
                        else
                        { /* The Lbist Fail */
                            HTXLBIST_DATA_ADDR.LbistRuns = 0U;
                            HTXLBIST_DATA_ADDR.LbistState = HTXLBIST_FAIL_STATE;
                            HtxLbist_lResetLbistHw();
                        }
                    }
                }
                else if (HTXLBIST_DATA_ADDR.LbistState == HTXLBIST_PASS_STATE)
                {
                    Result = HTXLBIST_SUCCESS;
                    *TstSignature = HTXSTPIF_CRC32(*TstSignature, Result);
                }
                else
                {
                    Result = HTXLBIST_DATA_ADDR.LbistLastResult;
                }

                if (LbistTrigReq == TRUE)
                {
                    HTXLBIST_DATA_ADDR.LbistRuns++;

                    HtxLbist_lSetDlmuUsage(HTXLBIST_CPU_DLMU_ID);
                    HtxLbist_lSetCrc();

                    /* Result can have only one return value HTXLBIST_CALLER_ADDR_ERR or RESET happens */
                    /* Does not return if LBIST is triggered */
                    Result = HtxLbist_lTriggerLBIST(
                        HTXSTPIF_CRC32(*TstSignature, HTXLBIST_TRIG_SEED), ParamSetIndex, TstSeed);
                }

                HtxLbist_lSetCrc();
            }
            else
            {
                Result = HTXLBIST_CRC_ERR;
            }
        }
        else
        {
            /* For all resets other than COLD PORST LBIST doesn't run. */
            Result = HTXLBIST_SUCCESS;
            *TstSignature = HTXSTPIF_CRC32(*TstSignature, Result);
        }
    }
    else
    {
        Result = HTXLBIST_INV_PARAM_ERR;
    }

    *TstSignature = HTXSTPIF_CRC32(*TstSignature, Result);

    return Result;
} /* End of HtxLbist_Test() */

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : Std_ReturnType HtxLbist_IsTrapExpected(void)
 *
 * \description   : This API checks if the Trap is expected or not.
 *                  If the Trap is expected, it clears the errors and 
 *                  initialises the memory area pointed by HTXLBIST_DATA_ADDR.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK: Trap is expected from HtxList and can be ignored
 *                  E_NOT_OK: Unexpected TRAP, shall be handled
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : This function shall be used in the TRAP handler to check if 
 *                  the TRAP is expected or not.
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2556
 *
 ******************************************************************************/
Std_ReturnType HtxLbist_IsTrapExpected(void)
{
    Std_ReturnType lRetVal;

    lRetVal = E_NOT_OK;

    if((HTXLBIST_TRAP_EXPECTED == HtxLbist_TrapExpected) &&
       (HTXLBIST_TRAP_EXPECTED_INV == HtxLbist_TrapExpectedRedn))
    {
        /* Write 0 to trap DIETR */
        /* IED will be set when the Core is reading its own uninitialised memory */
        HTXSTPIF_MTCR(CPU_DIETR,0U);

        /* Write 0 to trap DSTR */
        /* LDE, CRE will be set when the Core is reading from uninitialised memory (belonging to other cores) */
        HTXSTPIF_MTCR(CPU_DSTR,0U);

        /* Initialise the memory area pointed by HTXLBIST_DATA_ADDR */
        HtxLbist_lInitDlmu();

        lRetVal = E_OK;
    }

    return lRetVal;
} /* End of HtxLbist_IsTrapExpected() */

/*******************************************************************************
 *
 * \function      : static uint32 HtxLbist_lMtuEnable(void)
 *
 * \description   : Enables the MTU module if it wasn't already enabled
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : WasMtuEnabled - MTU_CLC.B.DISS before enabling
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2557
 *
 ******************************************************************************/
#if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON))
static uint32 HtxLbist_lMtuEnable(void)
{
    uint32 WasMtuEnabled;
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_CLC MtuClcReg;
    MtuClcReg.U = MTU_CLC.U;

    if(MtuClcReg.B.DISS == 1U)
    {
    	WasMtuEnabled = FALSE;

    	/* Request MTU enable */
        MtuClcReg.B.DISR = 0U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&MTU_CLC.U, MtuClcReg.U);

        /* Dummy read to avoid pipeline issues related */
        /* MISRA2012_RULE_2_2_JUSTIFICATION:
           Dummy read needed to set the value in the SFR */
        volatile uint32 ldummy = MTU_CLC.U;
        HTXSTPIF_UNUSED_PARAMETER(ldummy);
    }
    else
    {
    	WasMtuEnabled = TRUE;
    }

    return WasMtuEnabled;
} /* End of HtxLbist_lMtuEnable() */
#endif /* #if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON)) */

/*******************************************************************************
 *
 * \function      : static void HtxLbist_lMtuDisable(uint32 WasMtuEnabled)
 *
 * \description   : Disables the MTU module
 *
 *******************************************************************************
 *
 * \param[in]     : WasMtuEnabled - MTU_CLC.B.DISS before enabling in
 * 					HtxLbist_lMtuEnable
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2549
 *
 ******************************************************************************/
#if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON))
static void HtxLbist_lMtuDisable(uint32 WasMtuEnabled)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_CLC MtuClcReg;

    if (WasMtuEnabled == FALSE)
    {
        /* Disable the MTU */
        MtuClcReg.U = MTU_CLC.U;
        MtuClcReg.B.DISR = 1U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&MTU_CLC.U, MtuClcReg.U);
    }
} /* End of HtxLbist_lMtuDisable() */
#endif /* #if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON)) */

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxLbist_lCheckCrc(void)
 *
 * \description   : This function calculates the Crc for module data and
 *                  verifies the it against the stored Crc
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK - The Crc for the data is verified
 *                  E_NOT_OK - Crc mismatch for the data
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1687
 *
 ******************************************************************************/
static Std_ReturnType HtxLbist_lCheckCrc(void)
{
    uint32 temp;
    uint8 Retval;

    /* Do a dummy read of all the elements present in HtxLbist_DataType */
    /* To trigger any expected Trap for Uninitialised memory */
    (void)HTXLBIST_DATA_ADDR.LbistLastResult;
    (void)HTXLBIST_DATA_ADDR.LbistState;
    (void)HTXLBIST_DATA_ADDR.LbistCrc;
    (void)HTXLBIST_DATA_ADDR.LbistRuns;
    (void)HTXLBIST_DATA_ADDR.FwDataCrc;
    (void)HTXLBIST_DATA_ADDR.Cpu0DlmuEccd;
    (void)HTXLBIST_DATA_ADDR.Cpu0DlmuFaultsts;
    (void)HTXLBIST_DATA_ADDR.Cpu0DlmuErrinfo;
    (void)HTXLBIST_DATA_ADDR.Cpu1DlmuEccd;
    (void)HTXLBIST_DATA_ADDR.Cpu1DlmuFaultsts;
    (void)HTXLBIST_DATA_ADDR.Cpu1DlmuErrinfo;
    (void)HTXLBIST_DATA_ADDR.Dummy1;
    (void)HTXLBIST_DATA_ADDR.Dummy2;
    (void)HTXLBIST_DATA_ADDR.DlmuUsage;
    (void)HTXLBIST_DATA_ADDR.DlmuUsageRedn;

    temp = (uint32)HTXSTPIF_CRC32(HTXLBIST_DATA_ADDR.LbistState, TEST_ID_LBIST_TST);
    temp = (uint32)HTXSTPIF_CRC32(HTXLBIST_DATA_ADDR.LbistRuns, temp);
    temp = (uint32)HTXSTPIF_CRC32(HTXLBIST_DATA_ADDR.LbistLastResult, temp);

    if(HTXLBIST_DATA_ADDR.LbistCrc == temp)
    {
        Retval = E_OK;
    }
    else
    {
        Retval = E_NOT_OK;
    }

    return Retval;
} /* End of HtxLbist_lCheckCrc() */


/*******************************************************************************
 *
 * \function      : static uint32 HtxLbist_lIsColdPorstOrStdby(void)
 *
 * \description   : This function checks if the COLD PORST or exit from Standby has occurred
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[in,out] : None
 *
 * \return        : TRUE: COLD PORST or Stdby-Exit has occurred
 *                  FALSE: COLD PORST/Stdby-Exit has not occurred
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1688
 *
 ******************************************************************************/
static uint32 HtxLbist_lIsColdPorstOrStdby(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SCU_RSTSTAT lRststatRegVal;
    lRststatRegVal.U = SCU_RSTSTAT.U;
    uint32 IsColdOrStandbyReset;

    /* Is it the COLD PORST */
    if (((lRststatRegVal.U & HTXLBIST_STBYR_SWD_EVR33_EVRC) != (uint32)0U) &&
        (lRststatRegVal.B.PORST == (uint8)1U))
    {
        IsColdOrStandbyReset = TRUE;
    }
    else
    { /* Extract the upper 8-bits [31-24] */
        /* Extract lower 8-bit [7-0] */
        /* Perform a bitwise AND and check if any bits are present, then it is a Standby exit */
        const uint32 lWakeupStat = (uint32)PMS_PMSWSTAT2.U;
        const uint32 lUpper8bitsWakeStat = (lWakeupStat >> HTXLBIST_CONST_24) & HTXLBIST_LOW_8_BIT_MASK;
        const uint32 lLower8bitsWakeStat = (lWakeupStat & HTXLBIST_LOW_8_BIT_MASK);

        if ((lLower8bitsWakeStat & lUpper8bitsWakeStat) != 0U)
        {
            /* Initialise the memory area pointed by HTXLBIST_DATA_ADDR to re-trigger
               the LBIST again for a Standby (after previous LBIST run in COLD PORST) */
            HtxLbist_lInitDlmu();
            IsColdOrStandbyReset = TRUE;
        }
        else if (lRststatRegVal.B.LBTERM == 1U)
        {
            /* When the reason for Reset is LBIST it means that RSTSTAT 
            was cleared by HtxLbist_lClearColdResetStatus() so B.PORST
            will read as 0 even though it should have been 1. */
            IsColdOrStandbyReset = TRUE;
        }
        else
        {
            IsColdOrStandbyReset = FALSE;
        }
    }

    return IsColdOrStandbyReset;
} /* End of HtxLbist_lIsColdPorstOrStdby() */

/*******************************************************************************
 *
 * \function      : static void HtxLbist_lSetCrc(void)
 *
 * \description   : Calculates the CRC for the data stored on SCR XRAM
 *
 *******************************************************************************
 *
 * \param[in]     : expSig - The expected signature.
 *
 * \param[in,out] : HTXLBIST_DATA_ADDR.LbistCrc - Crc for the module's
 *                                           global data stored on SCR XRAM
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1699
 *
 ******************************************************************************/
static void HtxLbist_lSetCrc(void)
{
    uint32 temp;

    temp = (uint32)HTXSTPIF_CRC32(HTXLBIST_DATA_ADDR.LbistState, TEST_ID_LBIST_TST);
    temp = (uint32)HTXSTPIF_CRC32(HTXLBIST_DATA_ADDR.LbistRuns, temp);
    temp = (uint32)HTXSTPIF_CRC32(HTXLBIST_DATA_ADDR.LbistLastResult, temp);

    HTXLBIST_DATA_ADDR.LbistCrc = temp;
} /* End of HtxLbist_lSetCrc() */

/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxLbist_lGetLbistStatus
 *                  (
 *                     const uint32 expSig,
 *                     uint32 * const TstSignature
 *                  )
 *
 * \description   : Function Checks the status register to find if
 *                  the test terminated correctly and the signature is
 *                  matches the expected signature.
 *
 *******************************************************************************
 *
 * \param[in]     : expSig - The expected signature.
 *
 * \param[in,out] : TstSignature - Pointer to test signature
 *
 * \return        : HtxTestHnd_TstRsltType,
 *                  HTXLBIST_SUCCESS: The test passed
 *
 *                  HTXLBIST_PORST_ERR: A power on reset(PORST) occurred during LBIST
 *
 *                  HTXLBIST_TERMINATION_ERR: The LBIST did not terminate correctly
 *
 *                  HTXLBIST_DEFAULT_SIGNATURE_ERR: The default signature is incorrect
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1703
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxLbist_lGetLbistStatus
(
    const uint32 expSig,
    uint32 * const TstSignature
)
{
    HtxTestHnd_TstRsltType Result;

    /* A LBIST has been run just before warm reset */
    /* Did LBIST terminate due to an unexpected PORST? */
    if(MODULE_SCU.RSTSTAT.B.LBPORST == 1U)
    {
        Result = HTXLBIST_PORST_ERR;
    }
    else
    {
        /* No PORST occurred but did LBIST terminate correctly? */
        if(MODULE_SCU.RSTSTAT.B.LBTERM == 0U)
        {
            Result = HTXLBIST_TERMINATION_ERR;
        }
        else
        {
            /* LBIST terminated properly */
            /* Check signature */

            /* Default Signature Check */
            if(MODULE_SCU.LBISTCTRL3.B.SIGNATURE != expSig)
            {
                Result = HTXLBIST_DEFAULT_SIGNATURE_ERR;
            }
            else
            {
                /* LBIST is OK */
                Result = HTXLBIST_SUCCESS;

                *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, Result);

                /* Recommendation from Safety Manual:
                After MISR-signature evaluation it is recommended to bring the LBIST-controller to
                a safe reset-state by setting LBISTCTRL0.LBISTRES=1 */

                HtxLbist_lResetLbistHw();
            }
        }
    }

    return(Result);

} /* End of HtxLbist_lGetLbistStatus() */

/*******************************************************************************
 *
 * \function      : static HtxTestHnd_TstRsltType HtxLbist_lTriggerLBIST
 *                  (
 *                      const uint32 LbistTrigCrc,
 *                      const uint8 ParamSetIndex,
 *                      const uint8 TstSeed
 *                  )
 *
 * \description   : Triggers the LBIST
 *
 *******************************************************************************
 *
 * \param[in]     : LbistTrigCrc - CRC calculated by the the caller
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - seed used for test.
 *
 *
 * \return        : HtxTestHnd_TstRsltType,
 *                  HTXLBIST_CALLER_ADDR_ERR: Error caused by unexpected calling address
 *                  HTXLBIST_UNDEFINED_ERR: (This is never returned)
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1701
 *
 ******************************************************************************/
static HtxTestHnd_TstRsltType HtxLbist_lTriggerLBIST
(
    const uint32 LbistTrigCrc,
    const uint8 ParamSetIndex,
    const uint8 TstSeed
)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SCU_LBISTCTRL0 LbistCtrl0RegVal;
    uint32 ExptdTrigCrc;
    HtxTestHnd_TstRsltType Result;

    Result = HTXLBIST_UNDEFINED_ERR;

    HtxLbist_lClearColdResetStatus();
    HtxLbist_lResetLbistHw();

    /* Load LBIST parameters */
    HTXSTPIF_WRITE_SEINIT_PROTREG32(&MODULE_SCU.LBISTCTRL0.U,
                                    HtxLbist_kConfigSet[ParamSetIndex].HtxLbist_LbistCtrl0RegVal);

    HTXSTPIF_WRITE_SEINIT_PROTREG32(&MODULE_SCU.LBISTCTRL1.U,
                                    HtxLbist_kConfigSet[ParamSetIndex].HtxLbist_LbistCtrl1RegVal);

    HTXSTPIF_WRITE_SEINIT_PROTREG32(&MODULE_SCU.LBISTCTRL2.U,
                                    HtxLbist_kConfigSet[ParamSetIndex].HtxLbist_LbistCtrl2RegVal);

    /* Start the LBIST */
    /* Calculate the CRC in the similar way done in the caller function */
    ExptdTrigCrc = (uint32)HTXSTPIF_CRC32(TEST_ID_LBIST_TST, TstSeed);
    ExptdTrigCrc = (uint32)HTXSTPIF_CRC32(ExptdTrigCrc, ParamSetIndex);
    ExptdTrigCrc = (uint32)HTXSTPIF_CRC32(ExptdTrigCrc, HTXLBIST_TRIG_SEED);

    /* Check that we got here from the intended address */
    if(ExptdTrigCrc != LbistTrigCrc)
    {
        /* Error: unexpected calling address */
        Result = HTXLBIST_CALLER_ADDR_ERR;
    }
    else
    {
        /* Called from the expected place - OK */
        /* Triggering LBIST Now */
        LbistCtrl0RegVal.U = MODULE_SCU.LBISTCTRL0.U;
        LbistCtrl0RegVal.B.LBISTREQ = 1U;
        LbistCtrl0RegVal.B.LBISTREQRED = 1U;

        HTXSTPIF_WRITE_SEINIT_PROTREG32(&MODULE_SCU.LBISTCTRL0.U,(uint32)LbistCtrl0RegVal.U);

        /* MISRA2012_RULE_14_4_JUSTIFICATION:
           Conditional expression should have essentially Boolean type.
           Hardware reset is expected beyond this instruction and execution control
           shouldn't proceed further, hence conditional expression is not used */
        /* Wait for LBIST Reset */
        while (1U)
        {   /* Wait until warm reset at end of LBIST */
            HTXSTPIF_NOP();
        }
    }

    return(Result);

} /* End of HtxLbist_lTriggerLBIST() */

/*******************************************************************************
 *
 * \function      : static void HtxLbist_lResetLbistHw(void)
 *
 * \description   : Resets the LBIST controller
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 *
 * \return        : None
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1698
 *
 ******************************************************************************/
static void HtxLbist_lResetLbistHw(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SCU_LBISTCTRL0 LbistCtrl0Reg;
    uint32 Timeout;

    Timeout = HTXLBIST_TIMEOUT_VAL;

    /* Clear LBISTDONE by setting LBISTRES to 1 */
    LbistCtrl0Reg.U = MODULE_SCU.LBISTCTRL0.U;
    LbistCtrl0Reg.B.LBISTRES = 1U;
    HTXSTPIF_WRITE_SEINIT_PROTREG32(&MODULE_SCU.LBISTCTRL0.U,(uint32)LbistCtrl0Reg.U);

    /* Wait for LBISTRES to clear */
    while((MODULE_SCU.LBISTCTRL0.B.LBISTDONE == 1U)  && (Timeout > 0U))
    {
        Timeout--;
    }
} /* End of HtxLbist_lResetLbistHw() */

/*******************************************************************************
 *
 * \function      : static void HtxLbist_lSetFwDataCrc(void)
 *
 * \description   : This sets the CRC for the data used by the Firmware module
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2551
 *
 ******************************************************************************/
static void HtxLbist_lSetFwDataCrc(void)
{
    uint32 ltempCrc32;

    ltempCrc32 = 0U;
    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    #if(HTXLBIST_CPU0_DLMU_EXIST == STD_ON)
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuEccd);
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuFaultsts);
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuErrinfo);
    #endif

    #if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuEccd);
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuFaultsts);
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuErrinfo);
    #endif

    HTXLBIST_DATA_ADDR.FwDataCrc = ltempCrc32;
} /* End of static void HtxLbist_lSetFwDataCrc() */

/*******************************************************************************
 *
 * \function      : static void HtxLbist_lInitDlmu(void)
 *
 * \description   :  This function initialises the memory area pointed by 
 *                   HTXLBIST_DATA_ADDR with zero.
 *                   It is needed for the scenario of uninitialised memory upon
 *                   power-on reset.
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2552
 *
 ******************************************************************************/
static void HtxLbist_lInitDlmu(void)
{
    uint32 i = 0U;
    for (i = 0U; i < sizeof(HtxLbist_DataType) / sizeof(uint64); i++)
    {
        /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
       pointer to other type is done to Fetch the data pointed by the void address */
        /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
       object type and a pointer to a different object type is to fetch the data in the address of type void */
        ((volatile uint64 *)&HTXLBIST_DATA_ADDR)[i] = 0U;
    }
} /* End of HtxLbist_lInitDlmu() */

/*******************************************************************************
 *
 * \function      : static void HtxLbist_lInitLbistData(void)
 *
 * \description   : This function initialises the Lbist data
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2553
 *
 ******************************************************************************/
static void HtxLbist_lInitLbistData(void)
{
    /* Initialise the driver data */
    HTXLBIST_DATA_ADDR.LbistState = HTXLBIST_START_STATE;
    HTXLBIST_DATA_ADDR.LbistRuns = 0U;
    HTXLBIST_DATA_ADDR.LbistLastResult = HTXLBIST_UNDEFINED_ERR;

    HtxLbist_lSetDlmuUsage(HTXLBIST_HW_TRIG_DLMU_UNUSED);

} /* End of HtxLbist_lInitLbistData */


/*******************************************************************************
 *
 * \function      : static void HtxLbist_lSetDlmuUsage(const uint8 lDlmuUsg)
 *
 * \description   : This function sets the Dlmu usage
 *
 *******************************************************************************
 *
 * \param[in]     : lDlmuUsg - The DLMU memory
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2554
 *
 ******************************************************************************/
static void HtxLbist_lSetDlmuUsage(const uint8 lDlmuUsg)
{
    HTXLBIST_DATA_ADDR.DlmuUsage = lDlmuUsg;
    HTXLBIST_DATA_ADDR.DlmuUsageRedn = (uint8)(~lDlmuUsg);
} /* End of HtxLbist_lSetDlmuUsage */


/*******************************************************************************
 *
 * \function      : static void HtxLbist_lSetTrapStatus(const uint32 value)
 *
 * \description   : This function sets Trap-ignore semaphore
 *
 *******************************************************************************
 *
 * \param[in]     : value - 32- bit value to be set for the semaphore
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2555
 *
 ******************************************************************************/
static void HtxLbist_lSetTrapStatus(const uint32 value)
{
    HtxLbist_TrapExpected = value;
    HtxLbist_TrapExpectedRedn = (uint32)(~value);
} /* End of HtxLbist_lSetTrapStatus */

/*******************************************************************************
 *
 * \function      : static void HtxLbist_lClearColdResetStatus(void)
 *
 * \description   : Clear RSTSTAT cold reset status so that next power up
 *  doesn't cause the re-initialization of standby RAM 
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2713
 *
 ******************************************************************************/
static void HtxLbist_lClearColdResetStatus(void)
{
    Ifx_SCU_RSTCON2 ScuRstcon;
    ScuRstcon.U = SCU_RSTCON2.U;
    ScuRstcon.B.CLRC = 1U;
    HTXSTPIF_WRITE_CEINIT_PROTREG32(&SCU_RSTCON2.U, ScuRstcon.U);
}
 
/*******************************************************************************
 *
 * \function      : static void HtxLbist_lBackupMtuForFwCheck(void)
 *
 * \description   : Backs up the MTU SFRs of CPU0 DLMU and CPU1 DLMU 
 *                  that are used in HtxFwCheck module, as an LBIST reset causes
 *                  loss of values
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2715
 *
 ******************************************************************************/
static void HtxLbist_lBackupMtuForFwCheck(void)
{
#if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON))
    uint32 WasMtuEnabled = HtxLbist_lMtuEnable();

#if (HTXLBIST_CPU0_DLMU_EXIST == STD_ON)
    HTXLBIST_DATA_ADDR.Cpu0DlmuEccd = MODULE_MTU.MC[HTXLBIST_CPU0_DLMU_SSH_ID].ECCD.U;
    HTXLBIST_DATA_ADDR.Cpu0DlmuFaultsts = MODULE_MTU.MC[HTXLBIST_CPU0_DLMU_SSH_ID].FAULTSTS.U;
    HTXLBIST_DATA_ADDR.Cpu0DlmuErrinfo = MODULE_MTU.MC[HTXLBIST_CPU0_DLMU_SSH_ID].ERRINFO[0U].U;
#endif /* #if(HTXLBIST_CPU0_DLMU_EXIST == STD_ON) */

#if (HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
    HTXLBIST_DATA_ADDR.Cpu1DlmuEccd = MODULE_MTU.MC[HTXLBIST_CPU1_DLMU_SSH_ID].ECCD.U;
    HTXLBIST_DATA_ADDR.Cpu1DlmuFaultsts = MODULE_MTU.MC[HTXLBIST_CPU1_DLMU_SSH_ID].FAULTSTS.U;
    HTXLBIST_DATA_ADDR.Cpu1DlmuErrinfo = MODULE_MTU.MC[HTXLBIST_CPU1_DLMU_SSH_ID].ERRINFO[0U].U;
#endif /* #if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON) */

    HtxLbist_lMtuDisable(WasMtuEnabled);
#endif /* #if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON)) */
    /* Set CRC for the data used by HtxFwCheck */
    HtxLbist_lSetFwDataCrc();
}

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXLBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/* EOF */
