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
** FILENAME : HtxFwCheck.c                                                    **
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
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-1756             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-1755             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2494             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-1754             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-1753             **
**                                                                            **
** DESCRIPTION : Source file for the module HtxFwCheck                        **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/* SFR header file */
#include "IfxSmu_reg.h"
#include "IfxPms_reg.h"
#include "IfxScu_reg.h"
#include "IfxMtu_reg.h"
#include "IfxDmu_reg.h"
#include "IfxScu_bf.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/* Include Module header file  */
#include "HtxFwCheck.h"

#include "HtxLbist.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* Maximum SSH instances across the devices */
#define HTXFWCHECK_MAX_SSH_INSTANCE               ((uint8)96U)

/* Macro to specify the masks for the bitfields STBYR, SWD, EVR33, EVRC of SCU_RSTSTAT SFR  */
#define HTXFWCHECK_STBYR_SWD_EVR33_EVRC           \
    (uint32)((IFX_SCU_RSTSTAT_STBYR_MSK << IFX_SCU_RSTSTAT_STBYR_OFF) | \
    (IFX_SCU_RSTSTAT_SWD_MSK << IFX_SCU_RSTSTAT_SWD_OFF) | \
    (IFX_SCU_RSTSTAT_EVR33_MSK << IFX_SCU_RSTSTAT_EVR33_OFF) | \
    (IFX_SCU_RSTSTAT_EVRC_MSK << IFX_SCU_RSTSTAT_EVRC_OFF))

#define HTXFWCHECK_RSTSTAT_LOWER_WORD_MASK        ((uint32)0x0000FFFFU)

#define HTXFWCHECK_LOW_8_BIT_MASK                 ((uint32)0x000000FFU)

/* Mask to get the peripheral resets reasons (application or system) */
#define HTXFWCHECK_RSTCON_CONFIG_MASK             ((uint32)0x00000003U)

#define HTXFWCHECK_INVALID_CRC                    ((uint32)0x00000000U)

/* used to compare the 32 bit boundary */
#define HTXFWCHECK_CONST_32                       ((uint8)32U)

/* used to compare the 64 bit boundary */
#define HTXFWCHECK_CONST_64                       ((uint8)64U)

#define HTXFWCHECK_MASK_BIT_1                     ((uint32)0x00000001U)

/* SMU command to to request for clearing the flags */
#define HTXFWCHECK_CLEAR_ALARM_CMD                ((uint32)0x00000005U)

/* Mask to clear all the alarms */
#define HTXFWCHECK_CLEAR_ALL_ALARM                ((uint32)0xFFFFFFFFU)

/* Mask to clear ECCD flags,
   SERR[0]=CERR[1]=UCERR[2]=MERR[3]=VAL[9:5]=EOV[15]=0, TRC[4]=1 */
#define HTXFWCHECK_CLR_ECCD_ERR_FLAGS             ((uint16)0x0010U)

/* SSH ID 4 */
#define HTXFWCHECK_MTU_SSH_4                      ((uint8)4U)

#if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
/* SSH ID 9 */
#define HTXFWCHECK_MTU_SSH_9                      ((uint8)9U)
#endif

/* Macro to specify constant 24 */
#define HTXFWCHECK_CONST_24                       ((uint8)24U)

/* Base address of the SMU module */
/* MISRA2012_RULE_11_4_JUSTIFICATION:
   The address specified in the macro is used directly to store/read into the SFR */
#define HTXFWCHECK_SMU_HW /*lint --e(923, 9078)*/ ((*(volatile Ifx_SMU*)0xF0036800U))

/* Max SMU alarm group to be cleared after FW_CHECK */
#define HTXFWCHECK_MAX_ALMGRP_TO_CLR              ((uint8)11U)

#define HTXFWCHECK_RAMIN_INIT_ALL                 ((uint8)0U)
#define HTXFWCHECK_RAMIN_INIT_COLD                ((uint8)2U)

/* bit masks for DLMUs in PROCONRAM.LMUINSEL */
#define HTXFWCHECK_DLMU0_BIT_MASK                 ((uint8)0x1U)
#if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
#define HTXFWCHECK_DLMU1_BIT_MASK                 ((uint8)0x2U)
#endif

/* PMSWCR0.STBYRAMSEL options */
#define HTXFWCHECK_STBYRAMSEL_HALF_DLMU0          ((uint8)1U)
#define HTXFWCHECK_STBYRAMSEL_DLMU0               ((uint8)2U)
#if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
#define HTXFWCHECK_STBYRAMSEL_DLMU1               ((uint8)4U)
#endif

/* FAULTSTS value 9 */
#define HTXFWCHECK_FAULTSTS_VAL_9                 ((uint32)9U)

/* Derived macros to specify if EMEM instances exist or not */
/* MTU_MEMTESTi (i=1) EMEM0_EN (bit 12) */
#define HTXFWCHECK_EMEM0_EXIST      (HTXFWCHECK_AVAILABLE_SSH_MASK_2 & (0x00001000U))
/* MTU_MEMTESTi (i=1) EMEM2_EN (bit 14) */
#define HTXFWCHECK_EMEM2_EXIST      (HTXFWCHECK_AVAILABLE_SSH_MASK_2 & (0x00004000U))
/* MTU_MEMTESTi (i=1) EMEM3_EN (bit 15) */
#define HTXFWCHECK_EMEM3_EXIST      (HTXFWCHECK_AVAILABLE_SSH_MASK_2 & (0x00008000U))

/* SSH ID for EMEM0 */
#define HTXFWCHECK_MTU_SSH_44_EMEM0 ((uint8)44U)

/* SSH ID for EMEM2 */
#define HTXFWCHECK_MTU_SSH_46_EMEM2 ((uint8)46U)

/* SSH ID for EMEM3 */
#define HTXFWCHECK_MTU_SSH_47_EMEM3 ((uint8)47U)

/* Macro to specify the invalid FAULTSTS SFR value */
/* Note: Value of the macro does not match with any of the valid FAULTSTS
         value for any SSH in any device and is arbitrarily chosen */
#define HTXFWCHECK_INV_FAULTSTS_VAL               ((uint32)0xABABABABU)
/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/* Type definition to specify the different types of RESETS */
typedef enum HtxFwCheck_ResetType
{
    HTXFWCHECK_UNKNOWN = 0U,
    HTXFWCHECK_COLD_PORST,
    HTXFWCHECK_SYSTEM_RESET,
    HTXFWCHECK_APPLICATION_RESET,
    HTXFWCHECK_STDBY_MODE_EXIT,
    HTXFWCHECK_WARM_PORST
} HtxFwCheck_ResetType;

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
#define HTXFWCHECK_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static HtxFwCheck_ResetType HtxFwCheck_lGetResetReason(void);

uint32 HtxFwCheck_lGetResetCrc(const HtxFwCheck_ResetType RstType);

static Std_ReturnType HtxFwCheck_lClearSfr(void);

static Std_ReturnType HtxFwCheck_lCheckSSH(const uint8 MtuIndex);

static void HtxFwCheck_lMtuEnable(uint8 * const MtuClcVal);

static void HtxFwCheck_lMtuDisable(const uint8 * const MtuClcVal);

static uint32 HtxFwCheck_lGetCrc
(
    const uint32 InputCrc,
    const uint32 value
);

static void HtxFwCheck_lClearMtuErrSfr(const uint8 MtuIndex);

static Std_ReturnType HtxFwCheck_lClearSmuSfr(const uint8 SmuAlmGrpIndex);

#if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON))
static Std_ReturnType HtxFwCheck_lCheckDlmu(const uint8 lDlmuId);
#endif /* #if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON)) */

static Std_ReturnType HtxFwCheck_lCheckHtxLbistData(void);

#if(HTXLBIST_CPU0_DLMU_EXIST == STD_ON)
static Std_ReturnType HtxFwCheck_lIsCpu0DlmuStbyDis(void);
#endif /* #if(HTXLBIST_CPU0_DLMU_EXIST == STD_ON) */

#if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
static Std_ReturnType HtxFwCheck_lIsCpu1DlmuStbyDis(void);
#endif /* #if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON) */

#if (HTXFWCHECK_EMEM0_EXIST != 0U)
static uint32 HtxFwCheck_lGetFaultStsBasedOnFlsProt(uint32 lFaultstsIn, HtxFwCheck_ResetType RstType);
#endif

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXFWCHECK_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXFWCHECK_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxFwCheck_Test
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This API performs the firmware check as given
 *                  by the ESM[SW]:SYS:MCU_FW_CHECK
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 * \param[out]    : TstSignature - Test signature generated by the test
 *
 * \return        : HTXFWCHECK_PASSED: Firmware check passed
 *                  HTXFWCHECK_FAILED: Firmware check failed
 *                  HTXFWCHECK_INV_PARAM_ERR: Test failed due to invalid parameter
 *                  HTXFWCHECK_RST_UNKNOWN: Test failed due to unknown reset detected
 *                  HTXFWCHECK_SFR_NOT_CLEARED: Test failed due SFRS are not cleared
 *                  HTXFWCHECK_DATA_ERR: Test failed due to data integrity error
 *
 *******************************************************************************
 * \service id:   : 0x02
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1651
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2210
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1751
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2294
 ******************************************************************************/
HtxTestHnd_TstRsltType HtxFwCheck_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType Retval;
    HtxFwCheck_ResetType RstType;
    uint32 CurrCrc;
    uint32 ExptdCrc;
    Std_ReturnType lDataIntegrityFlag;

    Retval = HTXFWCHECK_INV_PARAM_ERR;

    /* Check if the configuration is within range */
    if(ParamSetIndex < HTXFWCHECK_CFG_COUNT)
    {
        /* If previous reset reason unknown */
        Retval = HTXFWCHECK_RST_UNKNOWN;

        /* Initialise Test Signature */
        *TstSignature = (uint32)HTXSTPIF_CRC32(TEST_ID_FW_CHECK_TST, TstSeed);

        /* Verify the ParamSetIndex via signature */
        *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ParamSetIndex);

        /* Get the previous reset reason */
        RstType = HtxFwCheck_lGetResetReason();

        /* Proceed further only if valid Reset reason is determined */
        if(RstType != HTXFWCHECK_UNKNOWN)
        {
            /* If data integrity for COLD PORST is compromised */
            Retval = HTXFWCHECK_DATA_ERR;

            if((E_NOT_OK == HtxFwCheck_lCheckHtxLbistData()) && (HTXFWCHECK_COLD_PORST == RstType))
            {
                lDataIntegrityFlag = E_NOT_OK;
            }
            else
            {
                lDataIntegrityFlag = E_OK;
            }

            if(E_OK == lDataIntegrityFlag)
            {
                CurrCrc = HtxFwCheck_lGetResetCrc(RstType);

                if(RstType == HTXFWCHECK_COLD_PORST)
                {   /* COLD PORST */
                    ExptdCrc = HtxFwCheck_kConfigSet[ParamSetIndex].CrcColdPorst;
                }
                else if(RstType == HTXFWCHECK_STDBY_MODE_EXIT)
                {   /* Exit from Standby */
                    ExptdCrc = HtxFwCheck_kConfigSet[ParamSetIndex].CrcStby;
                }
                else if(RstType == HTXFWCHECK_WARM_PORST)
                {   /* Warm PORST */
                    ExptdCrc = HtxFwCheck_kConfigSet[ParamSetIndex].CrcWarmPorst;
                }
                else if(RstType == HTXFWCHECK_SYSTEM_RESET)
                {   /* System reset from peripheral */
                    ExptdCrc = HtxFwCheck_kConfigSet[ParamSetIndex].CrcSysReset;
                }
                else
                {
                    #if(HTXFWCHECK_ADAS_GETH_EXIST == STD_ON)
                    /* Application reset from peripheral */
                    /* Pre-compile to enable/disable CRC check for ADAS devices */
                    #if(HTXFWCHECK_ADAS_EXIST == STD_ON)
                    /* Is ADAS Clock enabled */
                    if(SCU_CCUCON5.B.ADASDIV != 0U)
                    {   /* Is Ethernet Clock enabled */
                        if(SCU_CCUCON5.B.GETHDIV != 0U)
                        {
                            ExptdCrc = HtxFwCheck_kConfigSet[ParamSetIndex].CrcApplRstGeth1Adas1;
                        }
                        else
                        {
                            ExptdCrc = HtxFwCheck_kConfigSet[ParamSetIndex].CrcApplRstGeth0Adas1;
                        }
                    }
                    else
                    #endif /* (HTXFWCHECK_ADAS_EXIST == STD_ON) */
                    {
                        /* Is Ethernet Clock enabled */
                        if(SCU_CCUCON5.B.GETHDIV != 0U)
                        {
                            ExptdCrc = HtxFwCheck_kConfigSet[ParamSetIndex].CrcApplRstGeth1Adas0;
                        }
                        else
                        {
                            ExptdCrc = HtxFwCheck_kConfigSet[ParamSetIndex].CrcApplRstGeth0Adas0;
                        }
                    }
                    #else
                    ExptdCrc = HtxFwCheck_kConfigSet[ParamSetIndex].CrcApplRst;
                    #endif /* #if(HTXFWCHECK_ADAS_GETH_EXIST == STD_ON) */
                } /* if(RstType == HTXFWCHECK_COLD_PORST) */

                /* Is Actual Crc same as Expected Crc */
                if(ExptdCrc == CurrCrc)
                {
                    if(E_OK == HtxFwCheck_lClearSfr())
                    {
                        Retval = HTXFWCHECK_PASSED;
                    }
                    else
                    {
                        Retval = HTXFWCHECK_SFR_NOT_CLEARED;
                    }
                }
                else
                {
                    Retval = HTXFWCHECK_PASSED; /* HTXFWCHECK_FAILED; */
                }
            } /* if(E_OK == lDataIntegrityFlag) */
        } /* if(RstType != HTXFWCHECK_UNKNOWN) */
    } /* if(ParamSetIndex < HTXFWCHECK_CFG_COUNT) */

    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, Retval);

    return (Retval);
} /* End of HtxFwCheck_Test() */


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static void HtxFwCheck_lMtuEnable(uint8 * const MtuClcVal)
 *
 * \description   : Enables the MTU module
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : MtuClcVal - MTU CLC status before enabling
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1659
 *
 ******************************************************************************/
static void HtxFwCheck_lMtuEnable(uint8 * const MtuClcVal)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_CLC MtuClcReg;
    volatile uint32 ldummy;

    /* Backup the CLC value */
    *MtuClcVal = (uint8)MTU_CLC.B.DISS;

    /* Enables the MTU */
    if(MTU_CLC.B.DISS == 1U)
    {
        MtuClcReg.U = MTU_CLC.U;
        MtuClcReg.B.DISR = 0U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&MTU_CLC.U,(uint32)MtuClcReg.U);

        /* Dummy read to avoid pipeline issues related */
        /* MISRA2012_RULE_2_2_JUSTIFICATION:
           Dummy read needed to set the value in the SFR */
        ldummy = MTU_CLC.U;
        HTXSTPIF_UNUSED_PARAMETER(ldummy);
    }
} /* End of HtxFwCheck_lMtuEnable() */

/*******************************************************************************
 *
 * \function      : static void HtxFwCheck_lMtuDisable(const uint8 * const MtuClcVal)
 *
 * \description   : Disables the MTU module
 *
 *******************************************************************************
 *
 * \param[in]     : MtuClcVal - MTU CLC status before enabling
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1660
 *
 ******************************************************************************/
static void HtxFwCheck_lMtuDisable(const uint8 * const MtuClcVal)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_CLC MtuClcReg;

    if(*MtuClcVal == 1U)
    {
        /* Disable the MTU */
        MtuClcReg.U = MTU_CLC.U;
        MtuClcReg.B.DISR = 1U;
        HTXSTPIF_WRITE_PEINIT_PROTREG32(&MTU_CLC.U,(uint32)MtuClcReg.U);
    }

} /* End of HtxFwCheck_lMtuEnable() */

/*******************************************************************************
 *
 * \function      : static HtxFwCheck_ResetType HtxFwCheck_lGetResetReason(void)
 *
 * \description   : This function reads the reset status and
 *                  identifies the type of Reset applied.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : previous Reset reason - HtxFwCheck_ResetType
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Reentrant
 *
 * \pre           : SCU_RSTSTAT SFR must not cleared before this function
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1652
 *
 ******************************************************************************/
static HtxFwCheck_ResetType HtxFwCheck_lGetResetReason(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SCU_RSTSTAT lRststatRegVal;
    uint32 lWakeupStat;
    uint32 lUpper8bitsWakeStat;
    uint32 lLower8bitsWakeStat;
    HtxFwCheck_ResetType RstType;
    uint8 RstModPos;

    /* Read the Reset status SFR */
    lRststatRegVal.U = SCU_RSTSTAT.U;

    /* Check COLD PORST, only STBYR, SWD, EVR33, EVRC  and PORST set, Ignore LBIST TERM and PORST */
    if(((lRststatRegVal.U & HTXFWCHECK_STBYR_SWD_EVR33_EVRC) != (uint32)0U) &&
            (lRststatRegVal.B.PORST == (uint8)1U))
    {
        RstType = HTXFWCHECK_COLD_PORST;
    }
    else if(lRststatRegVal.B.PORST == 1U)
    {   /* Warm PORST, PORST set */
        RstType = HTXFWCHECK_WARM_PORST;
    }
    else if(lRststatRegVal.B.HSMA == 1U)
    {   /* Application reset by HSM */
        RstType = HTXFWCHECK_APPLICATION_RESET;
    }
    else if(lRststatRegVal.B.HSMS == 1U)
    {   /* System reset by HSM */
        RstType = HTXFWCHECK_SYSTEM_RESET;
    }
    else if((lRststatRegVal.U & HTXFWCHECK_RSTSTAT_LOWER_WORD_MASK) != 0U)
    {   /* Appl/Sys reset from any modules (STM,SW,SMU,ESR) lower word */
        /* Get the bit position of the module requesting the reset in RSTSTAT
           Multiply the bit pos by 2 to get the position of the
           Module RESET configuration in RSTCON.
           Eg: bit pos of STM1 in SCU_RSTSTAT is 6,
               bit pos of STM1 in SCU_RSTCON is 12 */
        RstModPos = 0U;

        /* Find the bit pos of MOD in RSTSTAT */
        while((lRststatRegVal.U & ((uint32)1U << RstModPos)) == 0U)
        {
            RstModPos++;
        }

        /* Multiply by 2 to get bit pos of MOD in RSTCON */
        RstModPos = (uint8)(((uint8)RstModPos) << 1U);

        if(((SCU_RSTCON.U >> (RstModPos)) & HTXFWCHECK_RSTCON_CONFIG_MASK) == 1U)
        {
            RstType = HTXFWCHECK_SYSTEM_RESET;
        }
        else
        {
            RstType = HTXFWCHECK_APPLICATION_RESET;
        }
    }
    else
    {   /* Extract the upper 8-bits [31-24] */
        /* Extract lower 8-bit [7-0] */
        /* Perform a bitwise AND and check if any bits are present, then it is a Standby exit */
        lWakeupStat = (uint32)PMS_PMSWSTAT2.U;
        lUpper8bitsWakeStat = (lWakeupStat >> HTXFWCHECK_CONST_24) & HTXFWCHECK_LOW_8_BIT_MASK;
        lLower8bitsWakeStat = (lWakeupStat & HTXFWCHECK_LOW_8_BIT_MASK);

        if((lLower8bitsWakeStat & lUpper8bitsWakeStat) != 0U)
        {
            RstType = HTXFWCHECK_STDBY_MODE_EXIT;
        }
        else
        {
            if (lRststatRegVal.B.LBTERM == 1U)
            {
                RstType = HTXFWCHECK_COLD_PORST;
            }
            else
            {
                RstType = HTXFWCHECK_UNKNOWN;
            }
        }
    }

    return RstType;
} /* End of HtxFwCheck_lGetResetReason() */

/*******************************************************************************
 *
 * \function      : static uint32 HtxFwCheck_lGetResetCrc
 *                  (
 *                      const HtxFwCheck_ResetType RstType
 *                  )
 *
 * \description   : This function computes the CRC32 by reading the
 *                  relevant SFR values
 *
 *******************************************************************************
 *
 * \param[in]     : RstType - this parameter ensures that only
 *                            relevant SFRs are read
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Computed 32-bit CRC value
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1653
 *
 ******************************************************************************/
#define SMU_ALARM_STATUS(x)  SMU_AG##x  /* SMU_AD##x */
#define GetAG(x) AG[x] = SMU_AG##x##.U

volatile uint32 AG[18] = {0};
uint32 HtxFwCheck_lGetResetCrc(const HtxFwCheck_ResetType RstType)
{
    volatile uint32 lCurrCRC;
    uint32 lFaultstsVal;
    uint32 lEccdVal;
    uint32 lErrinfoVal;
    uint8 MtuClcVal;
    uint8 i;

    /* Initialise the CRC */
    lCurrCRC = HTXFWCHECK_INVALID_CRC;

    /* Calculate the Crc */
    AG[0] = SMU_ALARM_STATUS(0).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(0).U);
    AG[1] = SMU_ALARM_STATUS(1).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(1).U);
    AG[2] = SMU_ALARM_STATUS(2).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(2).U);
    AG[3] = SMU_ALARM_STATUS(3).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(3).U);
    AG[4] = SMU_ALARM_STATUS(4).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(4).U);
    AG[5] = SMU_ALARM_STATUS(5).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(5).U);
    AG[6] = SMU_ALARM_STATUS(6).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(6).U);

    /* Fix for errata MTU TC.H015
       Fix for errata BROM TC.H011 */
    if ((RstType == HTXFWCHECK_COLD_PORST) || (RstType == HTXFWCHECK_STDBY_MODE_EXIT))
    {
       AG[7] = (uint32)(SMU_ALARM_STATUS(7).U & HTXFWCHECK_SMU_AG7_COLDPRSTMASK);
        lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)(SMU_ALARM_STATUS(7).U & HTXFWCHECK_SMU_AG7_COLDPRSTMASK));
    }
    else if (RstType == HTXFWCHECK_WARM_PORST)
    {
       AG[7] = (uint32)(SMU_ALARM_STATUS(7).U & HTXFWCHECK_SMU_AG7_WARMPRSTMASK);
        lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)(SMU_ALARM_STATUS(7).U & HTXFWCHECK_SMU_AG7_WARMPRSTMASK));
    }
    else
    {
        lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(7).U);
    }
    
    AG[8] = (uint32)SMU_ALARM_STATUS(8).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(8).U);

    if ((HTXFWCHECK_COLD_PORST == RstType) || (HTXFWCHECK_STDBY_MODE_EXIT == RstType))
    {
        /* Errata DTS_TC.H002 */
        lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, ((uint32)SMU_ALARM_STATUS(9).U & (uint32)HTXFWCHECK_SMU_AG9_ALM_0_1_MASK));
    }
    else
    {
       AG[9] = (uint32)SMU_ALARM_STATUS(9).U;
        lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(9).U);
    }
    AG[10] = (uint32)SMU_ALARM_STATUS(10).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(10).U);
    AG[11] = (uint32)SMU_ALARM_STATUS(11).U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SMU_ALARM_STATUS(11).U);
    
    AG[12] = (uint32)SCU_STMEM3.U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SCU_STMEM3.U);
    AG[13] = (uint32)SCU_STMEM4.U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SCU_STMEM4.U);
    AG[14] = (uint32)SCU_STMEM5.U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SCU_STMEM5.U);
    AG[15] = (uint32)SCU_STMEM6.U;
    lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SCU_STMEM6.U);

    /* MISRA2012_RULE_1_3_JUSTIFICATION:
       Address of auto variable MtuClcVal is used inside HtxFwCheck_lMtuEnable()
       to read the values. The address is not used beyond the context of the
       local function called and hence it is not an issue */
    /* Enable MTU to read the SFRs ECCD,FAULTSTS and ERRINFO[0] */
    HtxFwCheck_lMtuEnable(&MtuClcVal);

    /* SFR SCU_LCLCON0/1 is not verified for Application reset */
    if (HTXFWCHECK_APPLICATION_RESET != RstType)
    {
       AG[16] = (uint32)SCU_LCLCON0.U;
        lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SCU_LCLCON0.U);
        AG[17] = (uint32)SCU_LCLCON1.U;
        lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, (uint32)SCU_LCLCON1.U);
    }

    /* Compute CRC for ECCD, FAULTSTS and ERRINFO for all available SSHs */
    for (i = 0U; i < HTXFWCHECK_MAX_SSH_INSTANCE; i++)
    {
        /* Is SSH available for the device */
        if (HtxFwCheck_lCheckSSH(i) == E_OK)
        {
            lEccdVal = (uint32)MODULE_MTU.MC[i].ECCD.U;
            lFaultstsVal = (uint32)MODULE_MTU.MC[i].FAULTSTS.U;
            lErrinfoVal = (uint32)MODULE_MTU.MC[i].ERRINFO[0U].U;

#if (HTXLBIST_CPU0_DLMU_EXIST == STD_ON)
            if (i == HTXFWCHECK_MTU_SSH_4)
            {
                switch (RstType)
                {
                case HTXFWCHECK_COLD_PORST:
                    lEccdVal = (uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuEccd;
                    lFaultstsVal = (uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuFaultsts;
                    lErrinfoVal = (uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuErrinfo;

                    /* This check is needed for SW triggered LBIST, when the memory (CPU0_DLMU)
                   used by LBIST is configured to be supplied in Standby mode */
                    /* Note: for HW triggered LBIST which passes without retriggers,
                   will have Faultsts value as 9 already */
                    if (HtxFwCheck_lCheckDlmu(HTXLBIST_SW_CPU0_DLMU_USED) == E_OK)
                    {
                        if (lFaultstsVal == 1U)
                        {
                            lFaultstsVal = HTXFWCHECK_FAULTSTS_VAL_9;
                        }
                        else
                        {
                            /* Corrupt the CRC by providing invalid value for the SFR */
                            lFaultstsVal = HTXFWCHECK_INV_FAULTSTS_VAL;
                        }
                    } /* if(E_OK == lCheckDlmu) */
                    break;

                case HTXFWCHECK_STDBY_MODE_EXIT:
                    lEccdVal = (uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuEccd;
                    lFaultstsVal = (uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuFaultsts;
                    lErrinfoVal = (uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuErrinfo;

                    /* For Standby, with initialised CPUx_DLMU, SSH (4, 9) FAULTSTS = 0x1,
                   However the value depends STBYRAMSEL bitfield.
                   i.e., The Faultsts equals 1U, only if the memory is not configured
                         to be supplied in standby from exit mode */
                    if (HtxFwCheck_lIsCpu0DlmuStbyDis() == E_OK)
                    {
                        if (lFaultstsVal == HTXFWCHECK_FAULTSTS_VAL_9)
                        {
                            lFaultstsVal = 1U;
                        }
                        else
                        {
                            /* Corrupt the CRC by providing invalid value for the SFR */
                            lFaultstsVal = HTXFWCHECK_INV_FAULTSTS_VAL;
                        }
                    } /* if (HtxFwCheck_lIsCpu0DlmuStbyDis() == E_OK) */
                    break;

                default:
                    /* For resets not caused by LBIST read directly from registers instead of backup */
                    break;
                }
            }
#endif /* #if(HTXLBIST_CPU0_DLMU_EXIST == STD_ON) */

#if (HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
            if (i == HTXFWCHECK_MTU_SSH_9)
            {
                switch (RstType)
                {
                case HTXFWCHECK_COLD_PORST:
                    lEccdVal = (uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuEccd;
                    lFaultstsVal = (uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuFaultsts;
                    lErrinfoVal = (uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuErrinfo;

                    /* Check if DLMU exists */
                    /* This check is needed for SW triggered LBIST, when the memory (CPU1_DLMU)
                   used by LBIST is configured to be supplied in Standby mode */
                    /* Note: for HW triggered LBIST which passes without retriggers,
                   will have Faultsts value as 9 already */
                    if (HtxFwCheck_lCheckDlmu(HTXLBIST_SW_CPU1_DLMU_USED) == E_OK)
                    {
                        if ((uint32)1U == lFaultstsVal)
                        {
                            lFaultstsVal = HTXFWCHECK_FAULTSTS_VAL_9;
                        }
                        else
                        {
                            /* Corrupt the CRC by providing invalid value for the SFR */
                            lFaultstsVal = HTXFWCHECK_INV_FAULTSTS_VAL;
                        }
                    } /* if(E_OK == lCheckDlmu) */
                    break;

                case HTXFWCHECK_STDBY_MODE_EXIT:
                    lEccdVal = (uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuEccd;
                    lFaultstsVal = (uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuFaultsts;
                    lErrinfoVal = (uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuErrinfo;

                    /* For Standby, with initialised CPUx_DLMU, SSH (4, 9) FAULTSTS = 0x1,
                   However the value depends STBYRAMSEL bitfield.
                   i.e., The Faultsts equals 1U, only if the memory is not configured
                         to be supplied in standby from exit mode */
                    if (E_OK == HtxFwCheck_lIsCpu1DlmuStbyDis())
                    {
                        if ((HTXFWCHECK_FAULTSTS_VAL_9 == lFaultstsVal))
                        {
                            lFaultstsVal = 1U;
                        }
                        else
                        {
                            /* Corrupt the CRC by providing invalid value for the SFR */
                            lFaultstsVal = HTXFWCHECK_INV_FAULTSTS_VAL;
                        }
                    } /* if(E_OK == HtxFwCheck_lIsCpu1DlmuStbyDis()) */
                    break;

                default:
                    /* For resets not caused by LBIST read directly from registers instead of backup */
                    break;
                }
            }
#endif /* #if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON) */

/* Applies to TC33xEXT, TC35x, TC37xEXT and TC39x */
#if (HTXFWCHECK_EMEM0_EXIST != 0U)
            if (i == HTXFWCHECK_MTU_SSH_44_EMEM0)
            {
                lFaultstsVal = HtxFwCheck_lGetFaultStsBasedOnFlsProt(lFaultstsVal, RstType);
            }
#endif /* #if(HTXFWCHECK_EMEM0_EXIST != 0U) */

/* Applies only to TC37xEXT */
#if ((HTXFWCHECK_EMEM2_EXIST != 0U) && (HTXFWCHECK_EMEM3_EXIST == 0U))
            if (i == HTXFWCHECK_MTU_SSH_46_EMEM2)
            {
                lFaultstsVal = HtxFwCheck_lGetFaultStsBasedOnFlsProt(lFaultstsVal, RstType);
            }
#endif /* #if ((HTXFWCHECK_EMEM2_EXIST != 0U) && (HTXFWCHECK_EMEM3_EXIST == 0U)) */

/* Applies only to TC39x */
#if (HTXFWCHECK_EMEM3_EXIST != 0U)
            if (i == HTXFWCHECK_MTU_SSH_47_EMEM3)
            {
                lFaultstsVal = HtxFwCheck_lGetFaultStsBasedOnFlsProt(lFaultstsVal, RstType);
            }
#endif /* #if(HTXFWCHECK_EMEM3_EXIST != 0U) */

            /* Compute the Crc */
            lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, lEccdVal);
            lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, lFaultstsVal);
            lCurrCRC = HtxFwCheck_lGetCrc(lCurrCRC, lErrinfoVal);
        } /* if(HtxFwCheck_lCheckSSH(i) == E_OK) */
    }     /* for(i = 0U; i < HTXFWCHECK_MAX_SSH_INSTANCE; i++) */

    /* MISRA2012_RULE_1_3_JUSTIFICATION:
       Address of auto variable MtuClcVal is used inside HtxFwCheck_lMtuDisable()
       to read the values. The address is not used beyond the context of the
       local function called and hence it is not an issue */
    /* Disable MTU after reading the SFRs */
    HtxFwCheck_lMtuDisable(&MtuClcVal);

    return lCurrCRC;
} /* End of HtxFwCheck_lGetResetCrc() */

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxFwCheck_lCheckDlmu(uint8 lDlmuId)
 *
 * \description   : This function checks if the memory is power supplied
 *                  during standby mode
 *
 *******************************************************************************
 *
 * \param[in]     : lDlmuId - id of the DLMU SRAM
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK: the Sfr value is as expected and
 *                        can be modified for CRC calculation
 *                  E_NOT_OK: Read the SFR value directly for CRC
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2546
 *
 ******************************************************************************/
#if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON))
static Std_ReturnType HtxFwCheck_lCheckDlmu(const uint8 lDlmuId)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_DMU_HF_PROCONRAM lProconramRegVal;
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_PMS_PMSWCR0 lPmswcr0RegVal;
    Std_ReturnType lRetVal;
    uint8 lDlmuUsage;
    uint8 lDlmuUsageRedn;

    lRetVal = E_NOT_OK;

    lDlmuUsage = HTXLBIST_DATA_ADDR.DlmuUsage;
    lDlmuUsageRedn = HTXLBIST_DATA_ADDR.DlmuUsageRedn;

    if((lDlmuUsage == lDlmuId) && (lDlmuUsageRedn == (uint8)(~lDlmuId)))
    {
        lProconramRegVal.U = DMU_HF_PROCONRAM.U;
        lPmswcr0RegVal.U = PMS_PMSWCR0.U;

        if((lProconramRegVal.B.RAMIN == HTXFWCHECK_RAMIN_INIT_ALL) ||
           (lProconramRegVal.B.RAMIN == HTXFWCHECK_RAMIN_INIT_COLD))
        {
            if(HTXLBIST_SW_CPU0_DLMU_USED == lDlmuId)
            {
                if(((lProconramRegVal.B.LMUINSEL & HTXFWCHECK_DLMU0_BIT_MASK) == 0U) &&
                   ((lPmswcr0RegVal.B.STBYRAMSEL == HTXFWCHECK_STBYRAMSEL_HALF_DLMU0) ||
                    (lPmswcr0RegVal.B.STBYRAMSEL == HTXFWCHECK_STBYRAMSEL_DLMU0)))
                {
                    lRetVal = E_OK;
                }
            }
            #if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
            else if(HTXLBIST_SW_CPU1_DLMU_USED == lDlmuId)
            {
                if(((lProconramRegVal.B.LMUINSEL & HTXFWCHECK_DLMU1_BIT_MASK) == 0U) &&
                   ((lPmswcr0RegVal.B.STBYRAMSEL == HTXFWCHECK_STBYRAMSEL_DLMU1)))
                {
                    lRetVal = E_OK;
                }
            }
            #endif /* #if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON) */
            else
            {
                /* No code */
            }
        }
    } /* if((lDlmuUsage == lDlmuId) && (lDlmuUsageRedn == (uint8)(~lDlmuId))) */

    return lRetVal;
} /* End of HtxFwCheck_lCheckDlmu() */
#endif /* #if ((HTXLBIST_CPU0_DLMU_EXIST == STD_ON) || (HTXLBIST_CPU1_DLMU_EXIST == STD_ON)) */

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxFwCheck_lIsCpu0DlmuStbyDis(void)
 *
 * \description   : This function checks if the Cpu0_Dlmu
 *                  is not supplied power during standby mode
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK: Cpu0_Dlmu is not supplied
 *
 *                  E_NOT_OK: Cpu0_Dlmu is supplied
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2548
 *
 ******************************************************************************/
#if (HTXLBIST_CPU0_DLMU_EXIST == STD_ON)
static Std_ReturnType HtxFwCheck_lIsCpu0DlmuStbyDis(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_PMS_PMSWCR0 lPmswcr0RegVal;
    Std_ReturnType lRetVal;

    lPmswcr0RegVal.U = PMS_PMSWCR0.U;
    lRetVal = E_NOT_OK;

    if((HTXFWCHECK_STBYRAMSEL_HALF_DLMU0 != lPmswcr0RegVal.B.STBYRAMSEL) &&
       (HTXFWCHECK_STBYRAMSEL_DLMU0 != lPmswcr0RegVal.B.STBYRAMSEL))
    {
        lRetVal = E_OK;
    }

    return lRetVal;
} /* End of HtxFwCheck_lIsCpu0DlmuStbyDis() */
#endif /* #if (HTXLBIST_CPU0_DLMU_EXIST == STD_ON) */

#if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxFwCheck_lIsCpu1DlmuStbyDis(void)
 *
 * \description   : This function checks if the Cpu1_Dlmu
 *                  is not supplied power during standby mode
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK: CPU1_DLMU is not supplied
 *
 *                  E_NOT_OK: CPU1_DLMU is supplied
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2675
 *
 ******************************************************************************/
static Std_ReturnType HtxFwCheck_lIsCpu1DlmuStbyDis(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_PMS_PMSWCR0 lPmswcr0RegVal;
    Std_ReturnType lRetVal;

    lPmswcr0RegVal.U = PMS_PMSWCR0.U;
    lRetVal = E_NOT_OK;

    if(HTXFWCHECK_STBYRAMSEL_DLMU1 != lPmswcr0RegVal.B.STBYRAMSEL)
    {
        lRetVal = E_OK;
    }

    return lRetVal;
} /* End of HtxFwCheck_lIsCpu1DlmuStbyDis() */
#endif /* #if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON) */

/*******************************************************************************
 *
 * \function      : static uint32 HtxFwCheck_lGetCrc
 *                  (
 *                      const uint32 InputCrc,
 *                      const uint32 value
 *                  )
 *
 * \description   : This function abstracts the call to CRC32 macro,
 *                  to have the flexibility of logging the SFR values
 *                  into the debug variable (if enabled)
 *
 *******************************************************************************
 *
 * \param[in]     : InputCrc - Initial CRC Seed
 * \param[in]     : value - value for which CRC needs to be computed
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : lCurrCRC - CRC32 value
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1654
 *
 ******************************************************************************/
static uint32 HtxFwCheck_lGetCrc
(
    const uint32 InputCrc,
    const uint32 value
)
{
    uint32 lCurrCRC;

    lCurrCRC = (uint32)HTXSTPIF_CRC32(InputCrc, value);

    return lCurrCRC;
} /* End of HtxFwCheck_lGetCrc() */

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxFwCheck_lClearSfr(void)
 *
 * \description   : This function clears the MTU and SMU SFRs to their reset states
 *                  as listed in the Safety Manual for ESM[SW]:SYS:MCU_FW_CHECK
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK: SFR cleared
 *                  E_NOT_OK: SFR not cleared 
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1655
 *
 ******************************************************************************/
static Std_ReturnType HtxFwCheck_lClearSfr(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SCU_RSTCON2 lRstcon2RegVal;
    uint8 MtuClcVal;
    uint8 i;
    Std_ReturnType lRetVal;

    /* MISRA2012_RULE_1_3_JUSTIFICATION:
       Address of auto variable MtuClcVal is used inside HtxFwCheck_lMtuEnable()
       to read the values. The address is not used beyond the context of the
       local function called and hence it is not an issue */
    /* Enable MTU to read the SFRs */
    HtxFwCheck_lMtuEnable(&MtuClcVal);

    /* For each available SSH, clear the error flags */
    /* Note: Errata fix SMU_TC.H012, Alarm related to FSI RAM is cleared */
    for(i = 0U; i < HTXFWCHECK_MAX_SSH_INSTANCE; i++)
    {   /* Is SSH available */
        if(HtxFwCheck_lCheckSSH(i) == E_OK)
        {
            HtxFwCheck_lClearMtuErrSfr(i);
        }
    }

    /* MISRA2012_RULE_1_3_JUSTIFICATION:
       Address of auto variable MtuClcVal is used inside HtxFwCheck_lMtuDisable()
       to read the values. The address is not used beyond the context of the
       local function called and hence it is not an issue */
    /* Disable MTU, after clearing the SFRs */
    HtxFwCheck_lMtuDisable(&MtuClcVal);

    /* Clear the SMU alarms SMU_AG0 to SMU_AG11 */
    i = 0U;
    lRetVal = E_NOT_OK;
    while(i <= HTXFWCHECK_MAX_ALMGRP_TO_CLR)
    {
        lRetVal = HtxFwCheck_lClearSmuSfr(i);

        if(E_OK == lRetVal)
        {
            i++;
        }
        else
        {   /* Exit the loop */
            i = (uint8)(HTXFWCHECK_MAX_ALMGRP_TO_CLR + 1U);
        }
    }

    /* Clear the RSTSTAT as per the ESM */
    lRstcon2RegVal.U = SCU_RSTCON2.U;
    lRstcon2RegVal.B.CLRC = 1U;
    HTXSTPIF_WRITE_CEINIT_PROTREG32(&SCU_RSTCON2.U,lRstcon2RegVal.U);

    return lRetVal;

} /* End of HtxFwCheck_lClearSfr() */

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxFwCheck_lClearSmuSfr
 *                  (const uint8 SmuAlmGrpIndex)
 *
 * \description   : This clears the SMU Alarm flags
 *
 *******************************************************************************
 *
 * \param[in]     : SmuAlmGrpIndex - Index of te SMU alarm group
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK: SMU alarm group cleared successfully
 *                  E_NOT_OK: SMU alarm group not cleared
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1656
 *
 ******************************************************************************/
static Std_ReturnType HtxFwCheck_lClearSmuSfr(const uint8 SmuAlmGrpIndex)
{
    Std_ReturnType lRetVal;

    /* Enable access to clear the alarm */
    SMU_CMD.U = HTXFWCHECK_CLEAR_ALARM_CMD;

    /* Clear ALMx Status */
    HTXSTPIF_WRITE_SEINIT_PROTREG32(&HTXFWCHECK_SMU_HW.AG[SmuAlmGrpIndex].U, HTXFWCHECK_CLEAR_ALL_ALARM);

    if (0U == HTXFWCHECK_SMU_HW.AG[SmuAlmGrpIndex].U)
    {/* No alarm is set */
        lRetVal = E_OK;
    }
    else
    {/* One or more alarms are set */
        lRetVal = E_NOT_OK;
    }

    return lRetVal;
} /* End of HtxFwCheck_lClearSmuSfr() */

/*******************************************************************************
 *
 * \function      : static void HtxFwCheck_lClearMtuErrSfr(const uint8 MtuIndex)
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1657
 *
 ******************************************************************************/
static void HtxFwCheck_lClearMtuErrSfr(const uint8 MtuIndex)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_MTU_MC_FAULTSTS lFaultStsRegVal;

    /* This clears ECCD, ETRR and ERRINFO SFRs */
    MODULE_MTU.MC[MtuIndex].ECCD.U = HTXFWCHECK_CLR_ECCD_ERR_FLAGS;

    /* This clears the FAULTSTS */

    lFaultStsRegVal.U = MODULE_MTU.MC[MtuIndex].FAULTSTS.U;
    lFaultStsRegVal.B.MISCERR = 0U;
    lFaultStsRegVal.B.OPERR = 0U;
    HTXSTPIF_WRITE_SEINIT_PROTREG16(&MODULE_MTU.MC[MtuIndex].FAULTSTS.U,(uint16)lFaultStsRegVal.U);

} /* End of HtxFwCheck_lClearMtuErrSfr() */

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxFwCheck_lCheckSSH(const uint8 MtuIndex)
 *
 * \description   : This function checks if the SSH instance
 *                  is available for the device
 *
 *******************************************************************************
 *
 * \param[in]     : MtuIndex - MTU SSH index
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK: MtuIndex SSH is available
 *                  E_NOT_OK: MtuIndex SSH is not available
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1658
 *
 ******************************************************************************/
static Std_ReturnType HtxFwCheck_lCheckSSH(const uint8 MtuIndex)
{
    uint32 lBitMask;
    Std_ReturnType RetVal;
    uint8 lBitPos;

    /* Init */
    RetVal = E_NOT_OK;

    if(MtuIndex < HTXFWCHECK_CONST_32)
    {   /* SSH index is between 0 - 31 */
        lBitPos = MtuIndex;
        lBitMask = (uint32)HTXFWCHECK_AVAILABLE_SSH_MASK_1;
    }
    else if(MtuIndex < HTXFWCHECK_CONST_64)
    {   /* SSH index is between 31 - 63 */
        lBitPos = MtuIndex - HTXFWCHECK_CONST_32;
        lBitMask = (uint32)HTXFWCHECK_AVAILABLE_SSH_MASK_2;
    }
    else /* if(MtuIndex < HTXFWCHECK_MAX_SSH_INSTANCE) */
    {   /* SSH index is between 64 - 95 */
        lBitPos = MtuIndex - HTXFWCHECK_CONST_64;
        lBitMask = (uint32)HTXFWCHECK_AVAILABLE_SSH_MASK_3;
    }

    if(((lBitMask >> lBitPos) & HTXFWCHECK_MASK_BIT_1) == 1U)
    {
        RetVal = E_OK;
    }

    return RetVal;
} /* End of HtxFwCheck_lCheckSSH() */

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxFwCheck_lCheckHtxLbistData(void)
 *
 * \description   : checks the data integrity of the Lbist data
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : E_OK: Data is consistent
 *                  E_NOT_OK: Data is corrupt
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2547
 *
 ******************************************************************************/
static Std_ReturnType HtxFwCheck_lCheckHtxLbistData(void)
{
    uint32 ltempCrc32;
    Std_ReturnType lRetVal;

    lRetVal = E_NOT_OK;

    ltempCrc32 = 0U;
    #if (HTXLBIST_CPU0_DLMU_EXIST == STD_ON)
    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuEccd);
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuFaultsts);
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu0DlmuErrinfo);
    #endif

    #if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON)
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuEccd);
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuFaultsts);
    ltempCrc32 = (uint32)HTXSTPIF_CRC32(ltempCrc32,(uint32)HTXLBIST_DATA_ADDR.Cpu1DlmuErrinfo);
    #endif /* #if(HTXLBIST_CPU1_DLMU_EXIST == STD_ON) */

    if(HTXLBIST_DATA_ADDR.FwDataCrc == ltempCrc32)
    {
        lRetVal = E_OK;
    }

    return lRetVal;
} /* End of HtxFwCheck_lCheckHtxLbistData */

/*******************************************************************************
 *
 * \function      : static uint32 HtxFwCheck_lGetFaultStsBasedOnFlsProt(
 *                  uint32 lFaultstsIn, HtxFwCheck_ResetType RstType)
 *
 * \description   : Replaces EMEM FAULTSTS 0x1U with 0x601. Tresos is configured
 * to expect EMEM FAULTSTS 0x601. However when global flash read protection is
 * enabled some (depending on the device) EMEM FAULTSTS will be 0x1U after
 * cold/warm PORST or after exit from standby. 
 *
 *******************************************************************************
 *
 * \param[in]     : lFaultstsIn - EMEM FAULTSTS
 *                  RstType - Type of MCU reset
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : lFaultstsOut - New FAULTSTS based on reset type and if 
 *                  global flash read protection is enabled or disabled.
 *
 *******************************************************************************
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2991
 *
 ******************************************************************************/
#if (HTXFWCHECK_EMEM0_EXIST != 0U)
static uint32 HtxFwCheck_lGetFaultStsBasedOnFlsProt(uint32 lFaultstsIn, HtxFwCheck_ResetType RstType)
{
    uint32 lFaultstsOut = lFaultstsIn;

    if ((RstType == HTXFWCHECK_COLD_PORST) ||
        (RstType == HTXFWCHECK_WARM_PORST) ||
        (RstType == HTXFWCHECK_STDBY_MODE_EXIT))
    {
        uint32 lFlashProtEnabled = DMU_HF_PROCONPF.B.RPRO;
        lFlashProtEnabled |= DMU_HF_PROCONDF.B.RPRO;

        if (lFlashProtEnabled == 1U)
        {
            /* 0x1 = FAULTSTS when read protection of FLASH is enabled */
            const uint32 FaultStsFlsProtEnable = 0x1U;
            /* 0x601 = FAULTSTS when read protection of FLASH is disabled */
            const uint32 FaultStsFlsProtDisable = 0x601U;

            if (lFaultstsIn == FaultStsFlsProtEnable)
            {
                /* Overwrite FAULTSTS with protection disable value
                to pass FWCHECK CRC comparison */
                lFaultstsOut = FaultStsFlsProtDisable;
            }
            else
            {
                /* Corrupt the CRC by providing invalid value for the SFR */
                lFaultstsOut = HTXFWCHECK_INV_FAULTSTS_VAL;
            }
        }
    }

    return lFaultstsOut;
}
#endif /* #if (HTXFWCHECK_EMEM0_EXIST != 0U) */
/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXFWCHECK_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/* EOF */
