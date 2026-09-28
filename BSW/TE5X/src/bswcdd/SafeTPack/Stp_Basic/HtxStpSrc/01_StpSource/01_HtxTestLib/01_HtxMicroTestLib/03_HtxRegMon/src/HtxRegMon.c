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
** FILENAME : HtxRegMon.c                                                     **
**                                                                            **
** REVISION : \$Revision: 31611 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2022-02-15 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2198             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2199             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2297             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2201             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2197             **
**                                                                            **
** DESCRIPTION : This file provides latent fault metric test routines for     **
**               Safety flip-flop register monitor mechanism.                 **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxMtu_reg.h"
#include "IfxStm_reg.h"
#include "IfxScu_reg.h"
#include "IfxScu_bf.h"
#include "IfxSmu_bf.h"
#include "IfxSmu_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxRegMon.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

#define HTXREGMON_CONST_10                (10U)

/* SMU KEYS CFGLCK value to unlock */
#define HTXREGMON_KEYS_CFGLCK_UNLOCK_VAL  (0x000000BCU)

/* Mask for all the Test enables bits */
#define HTXREGMON_SMU_REGMON_ALL_MASK     ((uint32)0x000007FFU)

/* This is the L-Shift value for the Test ID defined in HtxTestHnd_ErrorcCodes.h  */
#define HTXREGMON_TESTID_SHFT_VAL         ((uint8)16U)

/* This bit macro is used bit-Mask and compare value for FAULTSTS.OPERR */
#define HTXREGMON_OPERR_SFF_ERR           ((uint8)4U)

/* Mask to clear ECCD flags,
   SERR[0]=CERR[1]=UCERR[2]=MERR[3]=VAL[9:5]=EOV[15]=0, TRC[4]=1 */
#define HTXREGMON_CLR_ECCD_ERR_FLAGS      ((uint16)0x0010U)

/* Set ENDINIT */
#define HTXREGMON_SAFETY_ENDINIT_PROTECTED     (1U)

/* Watchdog timer reload value */
#define HTXREGMON_SAFETY_ENDINIT_WDT_TIMER_REL (0xFFFC0000U)

/* watchdog inverted password mask */
#define HTXREGMON_ENDINIT_WDT_PWD_INV          (0x3FU)
#define HTXREGMON_ENDINIT_WDT_PWD_MASK         (0x0000FFFCU)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Variable Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
#include "HtxTestLib_MemMap.h"

#if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)
static uint8 HtxRegMon_BackupMtuClc;
#endif /* #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON) */

#if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON)
static uint8 HtxRegMon_BackupSmuClc;
#endif /* #if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON) */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
#include "HtxTestLib_MemMap.h"

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTestLib_MemMap.h"

static const HtxRegMon_ConfigSetType *HtxRegMon_kConfigSetPtr;

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

#if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)

static uint32 HtxRegMon_lStartMTUTest(const uint8 index);

static void HtxRegMon_lMtuEnable(void);

static void HtxRegMon_lMtuRestore(void);

static void HtxRegMon_lClearMtuErrSfr(const uint8 MtuIndex);

#endif /* #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON) */

#if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON)

static void HtxRegMon_lSmuEnable(void);

static void HtxRegMon_lSmuRestore(void);

static uint32 HtxRegMon_lSmuRegMonitorTest(const uint8 ParamSetIndex);

static INLINE void HtxRegMon_lWrSeInitSfr16(volatile uint16 *const RegAddress, const uint16 DataValue);

#endif /* #if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON) */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxRegMon_Test
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This API is used to implement external Safety mechanisms,
 *                  ESM[SW]:<MOD>:REG_MONITOR_TEST and ESM[SW]:REG_MONITO_TEST
 *                  It triggers and evaluates the test results.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 * \param[in]     : TstSignature - Test signature to be generated by the Test
 *
 * \param[out]    : TstSignature - Test signature to be generated by the test
 *
 * \param[in,out] : TstSignature - Test signature to be generated by the Test
 *
 * \return        : HTXREGMON_PASSED: Test passed
 *                  HTXREGMON_SMU_TIMEOUT: Test failed due to SMU SFF test timeout
 *                  HTXREGMON_ERR_UNDEFINED: Test failed due to undefined error
 *                 (HTXREGMON_ERR_MTU_TIMEOUT_UND | Index): Test failed due to MTU SFF
 *                                                          test timeout for the SSH 'Index'
 *                  HTXREGMON_INV_PARAM_ERR: Test failed due to invalid parameter set index
 *                 (HTXREGMON_ERR_MTU_FAILED | Index): Test failed for SSH 'Index'
 *
 *******************************************************************************
 *
 * \service id:   : 0x0C
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : Modules being tested should be enabled (CLC), e.g. IOM
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1708
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2200
 *
 ******************************************************************************/
HtxTestHnd_TstRsltType HtxRegMon_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType ReturnValue;
    #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)
    uint8 i;
    #endif

    ReturnValue = HTXREGMON_INV_PARAM_ERR;

    if(ParamSetIndex < HTXREGMON_CFG_COUNT)
    {
        /* Initialise Test Signature */
        *TstSignature = HTXSTPIF_CRC32(TEST_ID_REGMON_TST, TstSeed);

        /* Verify the ParamSetIndex via signature */
        *TstSignature = HTXSTPIF_CRC32(*TstSignature, ParamSetIndex);

        HtxRegMon_kConfigSetPtr = &HtxRegMon_kConfigSet[ParamSetIndex];

        #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)

        if(HtxRegMon_kConfigSetPtr->MtuNumTests > 0U)
        {
            ReturnValue = HTXREGMON_ERR_UNDEFINED;

            /* Enables the MTU if it is not enabled */
            HtxRegMon_lMtuEnable();

            /* Run the SFF test for all selected memories and or peripherals in The CFG file */
            i = 0U;
            /* Max(HtxRegMon_kConfigSetPtr->MtuNumTests) = 96 */
            while(i < HtxRegMon_kConfigSetPtr->MtuNumTests)
            {
                ReturnValue = HtxRegMon_lStartMTUTest(HtxRegMon_kConfigSetPtr->MtuTestId[i]);

                if(ReturnValue != HTXREGMON_PASSED)
                {
                    /* if errors: value of Index would be (maximum Mtu test + 1), breaks the loop */
                    i = HtxRegMon_kConfigSetPtr->MtuNumTests;
                }
                else
                {   /* Clear MTU SFF Error flags */
                    HtxRegMon_lClearMtuErrSfr(HtxRegMon_kConfigSetPtr->MtuTestId[i]);
                    i++;
                }
            }

            /* Restore the Mtu setting */
            HtxRegMon_lMtuRestore();
        }
        else
        {
            ReturnValue = HTXREGMON_PASSED;
        }
        #endif /* #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON) */

        #if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON)

        #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)
        if(ReturnValue == HTXREGMON_PASSED)
        #endif
        {
            if(HtxRegMon_kConfigSetPtr->SmuSffBitMask != 0U)
            {
                HtxRegMon_lSmuEnable();
                ReturnValue = HtxRegMon_lSmuRegMonitorTest(ParamSetIndex);
                HtxRegMon_lSmuRestore();
            }
        }
        #endif /* #if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON) */
    }

    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    ReturnValue = HTXREGMON_PASSED;
    *TstSignature = HTXSTPIF_CRC32(*TstSignature, ReturnValue);

    return ReturnValue;
} /* End of HtxRegMon_Test() */

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

#if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)
/*******************************************************************************
 *
 * \function      : static uint32 HtxRegMon_lStartMTUTest
 *                  (
 *                     const uint8 index
 *                  )
 *
 * \description   : This function triggers and evaluates the test for
 *                  individual module based on the index.
 *                  This function executes SFF test on Modules via MTU
 *
 *******************************************************************************
 *
 * \param[in]     : index - Index of the peripheral to be tested
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : returns the status of the test executed
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : Modules being tested should be enabled (CLC), e.g. IOM
 * \post          : None
 * \attention     : This function shall not use RAM during the memory test
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2563
 *
 ******************************************************************************/
static uint32 HtxRegMon_lStartMTUTest(const uint8 index)
{
    uint32 ReturnValue = 0U;
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_MC_ECCS lEccsRegVal;
    Ifx_MTU_MC_ALMSRCS lAlmSrcsRegVal;
    register const uint32 Ticks = HtxRegMon_kConfigSetPtr->Stm1usTicks * HTXREGMON_CONST_10;

    /* Clear any previous errors in MISCERR and OPERR */
    HtxRegMon_lClearMtuErrSfr(index);

    /* Enable the error checking for the MISCERR and OPERR */
    lAlmSrcsRegVal.U = MODULE_MTU.MC[index].ALMSRCS.U;
    lAlmSrcsRegVal.B.OPENE = 1U;
    lAlmSrcsRegVal.B.MISCE = 1U;
    HtxRegMon_lWrSeInitSfr16(&MODULE_MTU.MC[index].ALMSRCS.U, lAlmSrcsRegVal.U);

    /* Start the Safety flip flop test */
    lEccsRegVal.U = MODULE_MTU.MC[index].ECCS.U;
    lEccsRegVal.B.SFFD = 1U;
    HtxRegMon_lWrSeInitSfr16(&MODULE_MTU.MC[index].ECCS.U, lEccsRegVal.U);

    /* Initialise the time-stamp before starting the test */
    register const uint32 StartTime = STM0_TIM0.U;

    /* Wait for the SFFD bit to be cleared, as it indicates that test is complete.
       If the system timer is bigger than timeout, then the test fails */
    while (((*(volatile uint16*)(&MODULE_MTU.MC[index].ECCS) & 0x0800U) != 0U) && (ReturnValue == 0U))
    {
        if ((STM0_TIM0.U - StartTime) >= Ticks)
        {
            /* Timeout occurred */
            ReturnValue = HTXREGMON_ERR_MTU_TIMEOUT_UND | index;
        }
    }

    /* Check if timeout has occurred */
    if (ReturnValue == 0U)
    {
        uint16 FaultSts = *(volatile uint16*)(&MODULE_MTU.MC[index].FAULTSTS);
        uint8 lMiscErr = (uint8)(FaultSts & 0x3F00);
        uint8 lOpErr = ((uint8)FaultSts & HTXREGMON_OPERR_SFF_ERR);

        /* Check the FAULTSTS register to find errors during the test.
           If (MISCERR is set) OR (OPERR[2] is set), then an error has occurred */
        /* Note: Safety manual says MISCERR needs to be checked,
           OPERR[2] is checked as an additional verification
           as specified in the device manual */
        if ((lMiscErr == 0U) && (lOpErr == HTXREGMON_OPERR_SFF_ERR))
        {
            ReturnValue = HTXREGMON_PASSED;
        }
        else
        {
            ReturnValue = HTXREGMON_ERR_MTU_FAILED | index;
        }
    }

    return ReturnValue;
} /* End of HtxRegMon_lStartMTUTest() */
#endif /* #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON) */

#if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON)
/*******************************************************************************
 *
 * \function      : static uint32 HtxRegMon_lSmuRegMonitorTest(const uint8 ParamSetIndex)
 *
 * \description   : This function triggers and evaluates the test for
 *                  individual module based on the index.
 *                  This function executes SFF test on Modules via SMU
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : returns the status of the test executed
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : SMU is in the run state
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2564
 *
 ******************************************************************************/
static uint32 HtxRegMon_lSmuRegMonitorTest(const uint8 ParamSetIndex)
{
    uint32 Ticks;
    uint32 StartTime;
    uint32 ReturnValue;
    uint32 lRmefRegVal;
    uint8 bitpos;

    ReturnValue = HTXREGMON_ERR_UNDEFINED;

    /* Any error flags already set */
    if((MODULE_SMU.RMEF.U & (uint32)HtxRegMon_kConfigSet[ParamSetIndex].SmuSffBitMask) == 0U)
    {
        /* Unlock KEYS to update RMCTL */
        HTXSTPIF_WRITE_SEINIT_PROTREG32M(&MODULE_SMU.KEYS.U,(uint32)HTXREGMON_KEYS_CFGLCK_UNLOCK_VAL,(uint32)IFX_SMU_KEYS_CFGLCK_MSK);

        /* Enable the TE bits for the configured modules */
        HTXSTPIF_WRITE_SEINIT_PROTREG32M(&MODULE_SMU.RMCTL.U,(uint32)HtxRegMon_kConfigSet[ParamSetIndex].SmuSffBitMask,HTXREGMON_SMU_REGMON_ALL_MASK);

        /* Change the value of 0xBC to 0, to avoid other accidental changes to (keys) protected SFR */
        HTXSTPIF_WRITE_SEINIT_PROTREG32M(&MODULE_SMU.KEYS.U,0U,(uint32)IFX_SMU_KEYS_CFGLCK_MSK);

        /* Timeout ticks: 2us STM delay */
        Ticks = (HtxRegMon_kConfigSetPtr->Stm1usTicks << 1U);

        /* Backup start STM timer value */
        StartTime = STM0_TIM0.U;
        while(((MODULE_SMU.RMSTS.U & (uint32)HtxRegMon_kConfigSet[ParamSetIndex].SmuSffBitMask) !=
                (uint32)HtxRegMon_kConfigSet[ParamSetIndex].SmuSffBitMask)
                && (ReturnValue != HTXREGMON_SMU_TIMEOUT))
        {
            /* STM timer overflow is considered */
            if ((STM0_TIM0.U - StartTime) >= Ticks)
            {
                /* timeout occurred */
                ReturnValue = HTXREGMON_SMU_TIMEOUT;
            }
        }

        if(HTXREGMON_SMU_TIMEOUT != ReturnValue)
        {
            if((MODULE_SMU.RMEF.U & (uint32)HtxRegMon_kConfigSet[ParamSetIndex].SmuSffBitMask) != (uint32)0U)
            {
                lRmefRegVal = (uint32)(MODULE_SMU.RMEF.U & (uint32)HtxRegMon_kConfigSet[ParamSetIndex].SmuSffBitMask);
                bitpos = (uint8)0U;
                while((((lRmefRegVal >> bitpos) & (uint32)1U) == 0U) && (bitpos <= (uint8)HTXREGMON_CONST_10))
                {
                    bitpos++;
                }
                /* The bit pos determines the Error ID as defined in HtxTestHnd_ErrorCodes */
                ReturnValue = ((uint32)TEST_ID_REGMON_TST << HTXREGMON_TESTID_SHFT_VAL) | ((uint32)1U << bitpos);
            }
            else
            {
                /* NO ERROR, TEST PASSED */
                ReturnValue = HTXREGMON_PASSED;
            }
        }
    }

    /* Clear the status flags */
    HTXSTPIF_WRITE_SEINIT_PROTREG32M(&MODULE_SMU.RMSTS.U,0U,HTXREGMON_SMU_REGMON_ALL_MASK);
    /* Clear the Error Flags */
    HTXSTPIF_WRITE_SEINIT_PROTREG32M(&MODULE_SMU.RMEF.U,0U,HTXREGMON_SMU_REGMON_ALL_MASK);
    /* Unlock KEYS to update RMCTL */
    HTXSTPIF_WRITE_SEINIT_PROTREG32M(&MODULE_SMU.KEYS.U,(uint32)HTXREGMON_KEYS_CFGLCK_UNLOCK_VAL,(uint32)IFX_SMU_KEYS_CFGLCK_MSK);
    /* Disable the Test Enable control bits */
    HTXSTPIF_WRITE_SEINIT_PROTREG32M(&MODULE_SMU.RMCTL.U,0U,HTXREGMON_SMU_REGMON_ALL_MASK);
    /* Change the value of 0xBC to 0, to avoid other accidental changes to (keys) protected SFR */
    HTXSTPIF_WRITE_SEINIT_PROTREG32M(&MODULE_SMU.KEYS.U,0U,(uint32)IFX_SMU_KEYS_CFGLCK_MSK);

    return ReturnValue;
} /* End of HtxRegMon_lSmuRegMonitorTest() */
#endif /* #if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON) */


#if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)
/*******************************************************************************
 *
 * \function      : static void HtxRegMon_lMtuEnable(void)
 *
 * \description   : This function enables the MTU module needed for testing
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
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2558
 *
 ******************************************************************************/
static void HtxRegMon_lMtuEnable(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_CLC MtuClcReg;
    volatile uint32 ldummy;

    HtxRegMon_BackupMtuClc = (uint8)MTU_CLC.B.DISS;
    /*Enables the MTU.*/
    if(HtxRegMon_BackupMtuClc == (uint8)1U)
    {
        MtuClcReg.U = MTU_CLC.U;
        MtuClcReg.B.DISR = 0U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&MTU_CLC.U, MtuClcReg.U);

        /* Dummy read to avoid pipeline issues related */
        /* MISRA2012_RULE_2_2_JUSTIFICATION:
           Dummy read needed to set the value in the SFR */
        ldummy = MTU_CLC.U;
        HTXSTPIF_UNUSED_PARAMETER(ldummy);
    }
} /* End of HtxRegMon_lMtuEnable() */
#endif /* #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON) */

#if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)
/*******************************************************************************
 *
 * \function      : static void HtxRegMon_lMtuRestore(void)
 *
 * \description   : This function restores the MTU module
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
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2559
 *
 ******************************************************************************/
static void HtxRegMon_lMtuRestore(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_CLC MtuClcReg;

    if(HtxRegMon_BackupMtuClc == (uint8)1U)
    {
        MtuClcReg.U = MTU_CLC.U;
        MtuClcReg.B.DISR = (uint8)1U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&MTU_CLC.U, MtuClcReg.U);
    }
} /* End of HtxRegMon_lMtuRestore() */
#endif /* #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON) */


#if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON)
/*******************************************************************************
 *
 * \function      : static void HtxRegMon_lSmuEnable(void)
 *
 * \description   : This function enables the SMU module needed for testing
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
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2560
 *
 ******************************************************************************/
static void HtxRegMon_lSmuEnable(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SMU_CLC SmuClcReg;
    volatile uint32 ldummy;

    HtxRegMon_BackupSmuClc = (uint8)SMU_CLC.B.DISS;

    if(HtxRegMon_BackupSmuClc == (uint8)1U)
    {
        SmuClcReg.U = SMU_CLC.U;
        SmuClcReg.B.DISR = 0U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&SMU_CLC.U, SmuClcReg.U);

        /* Dummy read to avoid pipeline issues related */
        /* MISRA2012_RULE_2_2_JUSTIFICATION:
           Dummy read needed to set the value in the SFR */
        ldummy = MTU_CLC.U;
        HTXSTPIF_UNUSED_PARAMETER(ldummy);
    }
} /* End of HtxRegMon_lSmuEnable() */
#endif /* #if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON) */


#if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON)
/*******************************************************************************
 *
 * \function      : static void HtxRegMon_lSmuRestore(void)
 *
 * \description   : This function restores the SMU module CLC SFR
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
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2561
 *
 ******************************************************************************/
static void HtxRegMon_lSmuRestore(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SMU_CLC SmuClcReg;
    if(HtxRegMon_BackupSmuClc == (uint8)1U)
    {
        SmuClcReg.U = SMU_CLC.U;
        SmuClcReg.B.DISR = 1U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&SMU_CLC.U, SmuClcReg.U);
    }
} /* End of HtxRegMon_lSmuRestore() */
#endif /* #if(HTXREGMON_SMU_SFF_TEST_SWITCH == HTXREGMON_ON) */

#if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON)
/*******************************************************************************
 *
 * \function      : static void HtxRegMon_lClearMtuErrSfr(const uint8 MtuIndex)
 *
 * \description   : This clears the MTU SFRs (ECCD, FAULTSTS and ERRINFO[0])
 *
 *******************************************************************************
 *
 * \param[in]     : MtuIndex - MTU SSH instance
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2562
 *
 ******************************************************************************/
static void HtxRegMon_lClearMtuErrSfr(const uint8 MtuIndex)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_MC_FAULTSTS lFaultStsRegVal;

    /* This clears ECCD, ETRR and ERRINFO SFRs */
    MODULE_MTU.MC[MtuIndex].ECCD.U = HTXREGMON_CLR_ECCD_ERR_FLAGS;

    /* This clears the FAULTSTS */

    lFaultStsRegVal.U = MODULE_MTU.MC[MtuIndex].FAULTSTS.U;
    lFaultStsRegVal.B.MISCERR = 0U;
    lFaultStsRegVal.B.OPERR = 0U;
    HtxRegMon_lWrSeInitSfr16(&MODULE_MTU.MC[MtuIndex].FAULTSTS.U, lFaultStsRegVal.U);

} /* End of HtxRegMon_lClearMtuErrSfr() */
#endif /* #if(HTXREGMON_MTU_SFF_TEST_SWITCH == HTXREGMON_ON) */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXREGMON_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : static INLINE void HtxRegMon_lWrSeInitSfr16
 *                  (
 *                     volatile uint16 * const RegAddress,
 *                     const uint16 DataValue
 *                  )
 *
 * \description   : This API is needed to write required values to safety
 *                    end-init protected registers by not protecting to write
 *                    and protecting back to keep protection intact
 *
 *******************************************************************************
 *
 * \param[in]     : DataValue - Value to be written to the register located
 *                              at RegAddress.
 *
 * \param[out]    : RegAddress - Safety Endinit protected register address.
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Not Reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-3133
 *
 ******************************************************************************/
static INLINE void HtxRegMon_lWrSeInitSfr16(volatile uint16 *const RegAddress, const uint16 DataValue)
{
    uint32 Password;
    uint32 Seicon0Value;

    /* Retrieve the decrypted password from  SCU_SEICON0 register */
    Password = (((MODULE_SCU.SEICON0.U & (uint32)HTXREGMON_ENDINIT_WDT_PWD_MASK) >>
                 IFX_SCU_WDTCPU_CON0_PW_OFF) ^
                (uint32)HTXREGMON_ENDINIT_WDT_PWD_INV);

    /* Compute the SEICON0 register value to Disable the ENDINIT protection */
    Seicon0Value = ((uint32)HTXREGMON_SAFETY_ENDINIT_WDT_TIMER_REL |
                    ((uint32)Password << (uint32)IFX_SCU_SEICON0_EPW_OFF));

    /* Unlock the SCU_SEICON0 register to disable ENDINIT protection */
    MODULE_SCU.SEICON0.U = Seicon0Value;

    /* Read back the SEICON0 sfr to ensure Write is is done correctly */
    (void)MODULE_SCU.SEICON0.U;

    /* Compute the SEICON0 register value to Re-enable the ENDINIT protection */
    Seicon0Value = ((uint32)HTXREGMON_SAFETY_ENDINIT_WDT_TIMER_REL |
                    ((uint32)Password << (uint32)IFX_SCU_SEICON0_EPW_OFF) |
                    ((uint32)HTXREGMON_SAFETY_ENDINIT_PROTECTED << IFX_SCU_SEICON0_ENDINIT_OFF));

    /* Update the ENDINIT protected Register with the data passed as a input */
    *RegAddress = (uint16)DataValue;

    /* Update the SCU_SEICON0 to enable ENDINIT protection */
    /* Re-enable the ENDINIT protection */
    MODULE_SCU.SEICON0.U = Seicon0Value;

    /* Read back the SEICON0 sfr to ensure Write is done correctly */
    (void)MODULE_SCU.SEICON0.U;
} /* End of HtxRegMon_lWrSeInitSfr16() */

/* EOF */
