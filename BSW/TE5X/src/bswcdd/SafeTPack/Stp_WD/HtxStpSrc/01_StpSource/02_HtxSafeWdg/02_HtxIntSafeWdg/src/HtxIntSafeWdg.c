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
** FILENAME : HtxIntSafeWdg.c                                                 **
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
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2203             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2202             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2205             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2204             **
**                                                                            **
** DESCRIPTION : Internal Safety Watchdog driver source file                  **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxScu_bf.h"
#include "IfxScu_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxIntSafeWdg.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* Max. number of input frequency settings */
#define HTXINTSAFEWDG_INPUTFREQ_MAX            (2U)

#define HTXINTSAFEWDG_RANDOMMASKVAL            (32719U)
#define HTXINTSAFEWDG_RANDOMOFFSETVAL          (3U)
#define HTXINTSAFEWDG_RANDOMMODVAL             (32749U)

#define HTXINTSAFEWDG_WDTS_PASS_MASK           ((uint32)((uint32)IFX_SCU_WDTS_CON0_PW_MSK << IFX_SCU_WDTS_CON0_PW_OFF))

#define HTXINTSAFEWDG_WDTS_RELOAD_MASK         ((uint32)((uint32)IFX_SCU_WDTS_CON0_REL_MSK << IFX_SCU_WDTS_CON0_REL_OFF))

#define HTXINTSAFEWDG_WDT_SR_TIM_MSK           ((uint32)((uint32)IFX_SCU_WDTS_SR_TIM_MSK << IFX_SCU_WDTS_SR_TIM_OFF))

#define HTXWDGIF_WDT_STATUS_MASK               ((uint32)0x00000003U)

#define HTXINTSAFEWDG_WDTSCON0_UNLOCK          (0x1U)

#define HTXINTSAFEWDG_WDTSCON0_DIS_EI          (0x2U)
#define HTXINTSAFEWDG_WDTSCON0_ENA_EI          (0x3U)

/* Macros for ENDINIT protection */
#define HTXINTSAFEWDG_EI_WDT_PWD_INV           (0x3FU)
#define HTXINTSAFEWDG_EI_WDT_PWD_MASK          (0x0000FFFCU)
#define HTXINTSAFEWDG_WDTS_REL_VAL_MAX         (0xFFFFU)
#define HTXINTSAFEWDG_EI_TIMEOUT_VAL           (0x0000FFFCU)

/* Max. value for reload */
#define HTXINTSAFEWDG_WDTS_RELOAD_MAX          (0xFFFFU)

/* Max. value for password (as used in lower 16Bits of WDTCON0) */
#define HTXINTSAFEWDG_WDTS_PASSWORD_MAX        (0xFFFFU)

/* Mask for password Bits 2-7 */
#define HTXINTSAFEWDG_WDTS_PAS_LOW_MSK         (0x000000FCU)

/* Mask for password Bits 8-15 */
#define HTXINTSAFEWDG_WDTS_PAS_UP_MASK         (0x0000FF00U)

/* Mask for LCK and ENDINIT status bits */
#define HTXINTSAFEWDG_WDTS_STATUS_MASK         (0x00000003U) /* Attention: SEI and EI Wdg has no LCK status bit ! */

/* Shift by 16 bit positions */
#define HTXINTSAFEWDG_16BIT_OFFSET             ((uint8)16U)

/* Set LCK and ENDINIT */
#define HTXINTSAFEWDG_SET_LCK_ENDINIT          ((uint8)3U)

#define HTXINTSAFEWDG_11_BIT_SHIFT             ((uint8)11U)
#define HTXINTSAFEWDG_12_BIT_SHIFT             ((uint8)12U)
#define HTXINTSAFEWDG_13_BIT_SHIFT             ((uint8)13U)
#define HTXINTSAFEWDG_LFSR_EXOR_BIT_POS        (0x0004U)

#define HTXINTSAFEWDG_BIT_1_MASK               ((uint8)0x02U)


/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/* Local data for control of safeWdg flow */
typedef struct HtxIntSafeWdg_DataType
{
    /* Current state of watchdog */
    HtxWdgIf_IntWdgStateType State;
    /* Current watchdog timer reload value */
    uint32 ReloadCurr;
    /* Next seed to be used */
    uint32 NextSeed;
    /* Pointer to configuration data */
    const HtxIntSafeWdg_ConfigType* CfgPtr;
    /* Calculated Crc for data set */
    uint32 Crc;
} HtxIntSafeWdg_DataType;

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
#define HTXINTSAFEWDG_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxIntSafeWdg_MemMap.h"

/* Used redundant variables */
static HtxIntSafeWdg_DataType HtxIntSafeWdg_Data;

static uint32 HtxIntSafeWdg_Random;

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXINTSAFEWDG_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxIntSafeWdg_MemMap.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXINTSAFEWDG_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxIntSafeWdg_MemMap.h"

static uint32 HtxIntSafeWdg_lRandom(void);

static Std_ReturnType HtxIntSafeWdg_lCheckDataCrc(void);

static void HtxIntSafeWdg_lSetDataCrc(void);

static uint32 HtxIntSafeWdg_lSafetyRelValue(const uint32 TimReload);

static uint32 HtxIntSafeWdg_lSafetyPwSequence(const uint32 Password);

static void HtxIntSafeWdg_lSafetyModifyAccess
(
    const uint32 NewPassword,
    const uint32 NewReload
);

static void HtxIntSafeWdg_lSafetyCheckAccess(const uint32 CheckPassword);

static uint16 HtxIntSafeWdg_lDecryptPw(const uint32 Value);

static void HtxIntSafeWdg_lWrSeInitSfr
(
    volatile uint32 * const RegAddress,
    const uint32 DataValue
);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXINTSAFEWDG_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxIntSafeWdg_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXINTSAFEWDG_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxIntSafeWdg_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxIntSafeWdg_Init
 *                  (const HtxIntSafeWdg_ConfigType* const ConfigPtr)
 *
 * \description   : This function initialises the internal safety watchdog driver
 *
 *******************************************************************************
 *
 * \param[in]     : ConfigPtr - Pointer to driver configuration structure
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result
 *
 *******************************************************************************
 *
 * \service id:   : 0x06
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1668
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxIntSafeWdg_Init(const HtxIntSafeWdg_ConfigType* const ConfigPtr)
{
    HtxWdgIf_ResultType Result;
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SCU_WDTS_CON1 lWdtsCon1RegVal;
    uint32 InitPassword;

    Result = HTXWDGIF_JOB_INV_PARAM;

    if(ConfigPtr != NULL_PTR)
    {
        /* Check valid configuration */
        if(ConfigPtr->SwdtInputFreq <= HTXINTSAFEWDG_INPUTFREQ_MAX)
        {
            /* Store configuration pointer locally */
            HtxIntSafeWdg_Data.CfgPtr = ConfigPtr;

            /* Enter critical section */
            HTXINTSAFEWDG_EA_ENTER_WDTSCON1();

            /* Get old value */
            lWdtsCon1RegVal.U = SCU_WDTSCON1.U;
            /* Set frequency bits */
            lWdtsCon1RegVal.B.IR0 = (uint8)(ConfigPtr->SwdtInputFreq & (uint8)0x01U);
            lWdtsCon1RegVal.B.IR1 = (uint8)((ConfigPtr->SwdtInputFreq & HTXINTSAFEWDG_BIT_1_MASK)>>1U);
            /* Disable watchdog service */
            lWdtsCon1RegVal.B.DR = 1U;
            /* Enable automatic password sequencing */
            lWdtsCon1RegVal.B.PAR = 1U;
            /* Disable Time check feature */
            lWdtsCon1RegVal.B.TCR = 0U;

            /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
               pointer to other type is done to Fetch the data pointed by the void address */
            /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
               object type and a pointer to a different object type is to fetch the data in the address of type void */
            /* Configure safety watchdog, Set value for Frequency and disable SWDT */
            HtxIntSafeWdg_lWrSeInitSfr((volatile uint32*)(volatile void*)&SCU_WDTSCON1.U,(uint32)lWdtsCon1RegVal.U);

            /* Exit critical section */
            HTXINTSAFEWDG_EA_EXIT_WDTSCON1();

            /* Get initial password to be set for initial seed = 0 */
            InitPassword = ConfigPtr->SwdtSignTable[0U].BaseValue;

            /* Set initial password and timer reload value */
            HtxIntSafeWdg_lSafetyModifyAccess(InitPassword, (uint32) ConfigPtr->SwdtTimerReload);

            /* Store current reload value */
            HtxIntSafeWdg_Data.ReloadCurr = ConfigPtr->SwdtTimerReload;

            /* Initialise randomisation seed */
            HtxIntSafeWdg_Random = 1U;

            /* Initialise the seed */
            HtxIntSafeWdg_Data.NextSeed = 0U;

            /* Check if watchdog is disabled */
            if(SCU_WDTSSR.B.DS != 1U)
            {
                /* Watchdog in wrong state.*/
                HtxIntSafeWdg_Data.State = HTXWDGIF_INT_SWDG_UNKNOWN;
                Result = HTXWDGIF_JOB_INV_STATE;
            }
            else
            {
                Result = HTXWDGIF_JOB_SUCCESS;
                /* Initialise state */
                HtxIntSafeWdg_Data.State = HTXWDGIF_INT_SWDG_INIT;
                /* Initialise crc for current data set */
                HtxIntSafeWdg_lSetDataCrc();
            } /* END of if(SCU_WDTSSR.B.DS != 1U) */

        } /* END of if(ConfigPtr->SwdtInputFreq <= HTXINTSAFEWDG_INPUTFREQ_MAX) */

    } /* END of if(ConfigPtr != NULL_PTR) */

    return (Result);

} /* End of HtxIntSafeWdg_Init() */


/*******************************************************************************
 *
 * \function      : void HtxIntSafeWdg_DeInit(void)
 *
 * \description   : This function enables the internal safety watchdog driver
 *                  (the default state ofsafety watchdog after reset)
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
 * \service id:   : 0x07
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1669
 *
 ******************************************************************************/
void HtxIntSafeWdg_DeInit(void)
{
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SCU_WDTS_CON1 lWdtsCon1RegVal;

    /* Enter critical section */
    HTXINTSAFEWDG_EA_ENTER_WDTSCON1();

    lWdtsCon1RegVal.U = SCU_WDTSCON1.U;
    lWdtsCon1RegVal.B.DR = 0U;

    /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
       pointer to other type is done to Fetch the data pointed by the void address */
    /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
       object type and a pointer to a different object type is to fetch the data in the address of type void */
    /* Enable safety watchdog */
    HtxIntSafeWdg_lWrSeInitSfr((volatile uint32*)(volatile void*)&SCU_WDTSCON1.U, lWdtsCon1RegVal.U);

    /* Exit critical section */
    HTXINTSAFEWDG_EA_EXIT_WDTSCON1();

    /* Initialise state */
    HtxIntSafeWdg_Data.State = HTXWDGIF_INT_SWDG_UNKNOWN;
    HtxIntSafeWdg_Data.Crc = (uint32)0U;
} /* End of HtxIntSafeWdg_DeInit() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxIntSafeWdg_Activate(void)
 *
 * \description   : This function enables watchdog with slow interval settings
 *                  and set initial
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result
 *
 *******************************************************************************
 *
 * \service id:   : 0x08
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1671
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxIntSafeWdg_Activate(void)
{
    HtxWdgIf_ResultType Result;
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_SCU_WDTS_CON1 ScuWdtsCon1;

    /* Initialise with failure code */
    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxIntSafeWdg_lCheckDataCrc() == E_OK)
    {
        Result = HTXWDGIF_JOB_INV_STATE;

        /* Now assume wrong state */
        if(HtxIntSafeWdg_Data.State == HTXWDGIF_INT_SWDG_INIT)
        {
            HTXINTSAFEWDG_EA_ENTER_WDTSCON1();

            /* Enable safety watchdog */
            /* Enable SWDT */
            /* SCU_WDTSCON1.B.DR  = 0U; */
            ScuWdtsCon1.U = SCU_WDTSCON1.U;
            ScuWdtsCon1.B.DR = 0U;

            /* MISRA2012_RULE_11_5_JUSTIFICATION: Conversion from pointer to void to
               pointer to other type is done to Fetch the data pointed by the void address */
            /* MISRA2012_RULE_11_3_JUSTIFICATION: cast performed between a pointer to
               object type and a pointer to a different object type is to fetch the data in the address of type void */
            HtxIntSafeWdg_lWrSeInitSfr((volatile uint32*)(volatile void*)&SCU_WDTSCON1.U, ScuWdtsCon1.U);

            HTXINTSAFEWDG_EA_EXIT_WDTSCON1();

            /* Initialise next used seed */
            HtxIntSafeWdg_Data.NextSeed = 0U;

            /* Check if watchdog is disabled */
            if(SCU_WDTSSR.B.DS != 0U)
            {
                /* Watchdog in wrong state */
                HtxIntSafeWdg_Data.State = HTXWDGIF_INT_SWDG_UNKNOWN;
                Result = HTXWDGIF_JOB_INV_STATE;
            }
            else
            {
                /* Set state to activated */
                HtxIntSafeWdg_Data.State = HTXWDGIF_INT_SWDG_ACTIVE;

                /* Everything okay */
                Result = HTXWDGIF_JOB_SUCCESS;
            } /* END of if(SCU_WDTSSR.B.DS != 0U) */

            /* Update crc for current data set */
            HtxIntSafeWdg_lSetDataCrc();
        } /* END of if(HtxIntSafeWdg_Data.State == HTXINTSAFEWDG_INIT) */
    } /* END Of if(HtxIntSafeWdg_lCheckDataCrc() == E_OK) */

    return (Result);
} /* End of HtxIntSafeWdg_Activate() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxIntSafeWdg_Service (const uint32 Signature)
 *
 * \description   : This function services the watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : Signature - signature to be used for servicing the watchdog
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result:
 *                  HTXWDGIF_JOB_SUCCESS:
 *                  Operation successfully performed.
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  Job failed due to driver internal data checksum failure.
 *
 *                  HTXWDGIF_JOB_INV_STATE:
 *                  Job failed because job is requested from a forbidden state.
 *
 *                  HTXWDGIF_JOB_FAILED_SERVICE:
 *                  Job failed due to service failure.
 *
 *******************************************************************************
 *
 * \service id:   : 0x09
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1682
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxIntSafeWdg_Service(const uint32 Signature)
{
    /* Get current Config Pointer */
    const HtxIntSafeWdg_ConfigType* CurrConfigPtr = HtxIntSafeWdg_Data.CfgPtr;
    uint32 nextSeed;
    volatile uint32 CheckPassword;
    HtxWdgIf_ResultType Result;
    uint8 UsedSeed;

    /* Default failure */
    Result = HTXWDGIF_JOB_FAILED_CRC;

    /* Config pointer and state value are (still) valid? */
    if(E_OK == HtxIntSafeWdg_lCheckDataCrc())
    {
        /* Assume wrong state */
        Result = HTXWDGIF_JOB_INV_STATE;

        /* Check the watchdog state */
        if(HtxIntSafeWdg_Data.State == HTXWDGIF_INT_SWDG_ACTIVE)
        {
            /* Provide next seed, Get random seed value */
            nextSeed = HtxIntSafeWdg_lRandom();
            UsedSeed = (uint8)HtxIntSafeWdg_Data.NextSeed;

            /* Check whether password sequence calculation might already be done externally */
            /* Use base value to calculate next check password */
            CheckPassword  = CurrConfigPtr->SwdtSignTable[UsedSeed].BaseValue;

            /* Does signature match to the expected one?, Assume okay */
            Result = HTXWDGIF_JOB_SUCCESS;

            /* Signature passed from upper layer is not equal to the expected signature */
            if(Signature != CurrConfigPtr->SwdtSignTable[UsedSeed].ExptdTstSig)
            {
                /* Use inverted password, if signature does not match */
                CheckPassword = ~CheckPassword;
                Result = HTXWDGIF_JOB_FAILED_SERVICE;
            } /* END of if(Signature != CurrConfigPtr->SwdtSignTable[UsedSeed].ExptdTstSig) */

            /* Do transformation of base value to proper password */
            CheckPassword = HtxIntSafeWdg_lSafetyPwSequence(CheckPassword);

            /* Check whether watchdog overflow happened - should already
               have generated an SMU alarm, but if not... */
            if(SCU_WDTSSR.B.OE != 0U)
            {
                Result = HTXWDGIF_JOB_FAILED_SERVICE;
            } /* END of if(SCU_WDTSSR.B.OE != 0U) */

            /* Service watchdog with check access */
            HtxIntSafeWdg_lSafetyCheckAccess(CheckPassword);

            /* Check watchdog access status - should already have generated
               an SMU alarm, but if not... */
            if(SCU_WDTSSR.B.AE != 0U)
            {
                /* Watchdog access failed, set state to failed */
                Result = HTXWDGIF_JOB_FAILED_SERVICE;
            } /* END of if(SCU_WDTSSR.B.AE != 0U) */

            /* Check watchdog failures */
            if(Result != HTXWDGIF_JOB_SUCCESS)
            {
                /* Watchdog access failed, set state to failed */
                HtxIntSafeWdg_Data.State = HTXWDGIF_INT_SWDG_FAIL;
            } /* END of if(Result != HTXWDGIF_JOB_SUCCESS) */

            /* Get next password to be set */
            CheckPassword = CurrConfigPtr->SwdtSignTable[nextSeed].BaseValue;

            /* Initialise safety watchdog with the new base value according
               to generated next seed and refresh timer reload to configured time */
            /* This watchdog access will be tried even, if previously errors have been detected */
            HtxIntSafeWdg_lSafetyModifyAccess(CheckPassword,HtxIntSafeWdg_Data.ReloadCurr);

            /* Store next seed */
            HtxIntSafeWdg_Data.NextSeed = nextSeed;

            /* Update crc for current data set */
            HtxIntSafeWdg_lSetDataCrc();
        } /* END of if(HtxIntSafeWdg_Data.State == HTXINTSAFEWDG_ACTIVE) */
    } /* END of if(HtxIntSafeWdg_lCheckDataCrc() == E_OK) */

    return (Result);

} /* End of HtxIntSafeWdg_Service() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_IntWdgStateType HtxIntSafeWdg_GetState(void)
 *
 * \description   : This function reads back the current state (active / failed)
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result:
 *                  HTXWDGIF_INT_SWDG_INIT:
 *                  Watchdog is initialized and it is in OFF state.
 *
 *                  HTXWDGIF_INT_SWDG_ACTIVE:
 *                  Watchdog is activated and it is in ON state. and requires servicing
 *
 *                  HTXWDGIF_INT_SWDG_FAIL:
 *                  The watchdog is in ON state however the servicing failed
 *                  i.e.overflow error / access error
 *
 *                  HTXWDGIF_INT_SWDG_UNKNOWN:
 *                  The watchdog state is unknown.
 *
 *******************************************************************************
 *
 * \service id:   : 0x0A
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2211
 *
 ******************************************************************************/
HtxWdgIf_IntWdgStateType HtxIntSafeWdg_GetState(void)
{
    HtxWdgIf_IntWdgStateType CurrState;

    CurrState = HTXWDGIF_INT_SWDG_UNKNOWN;

    if(HtxIntSafeWdg_lCheckDataCrc() == E_OK)
    {
        CurrState = HtxIntSafeWdg_Data.State;
    }

    return (CurrState);

} /* End of HtxIntSafeWdg_GetState() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxIntSafeWdg_GetSeed(uint8* const NextSeedPtr)
 *
 * \description   : This function returns the next seed value to be used
 *
 *******************************************************************************
 *
 * \param[in]     : NextSeedPtr - Pointer to next Seed
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result:
 *                  HTXWDGIF_JOB_SUCCESS:
 *                  Operation successfully performed.
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  Job failed due to driver internal data checksum failure.
 *
 *                  HTXWDGIF_JOB_INV_STATE:
 *                  Job failed because job is requested from a forbidden state.
 *
 *                  HTXWDGIF_JOB_INV_PARAM:
 *                  Job failed due to invalid parameter.
 *******************************************************************************
 *
 * \service id:   : 0x0B
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1683
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxIntSafeWdg_GetSeed(uint8* const NextSeedPtr)
{
    HtxWdgIf_ResultType Result;

    /* Failure per default */
    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxIntSafeWdg_lCheckDataCrc() == E_OK)
    {   /* Initialise result */
        Result = HTXWDGIF_JOB_INV_PARAM;

        if(NextSeedPtr != NULL_PTR)
        {
            if(HtxIntSafeWdg_Data.State == HTXWDGIF_INT_SWDG_ACTIVE)
            {
                /* Get next seed */
                *NextSeedPtr = (uint8)HtxIntSafeWdg_Data.NextSeed;
                Result = HTXWDGIF_JOB_SUCCESS;
            }
            else
            {
                Result = HTXWDGIF_JOB_INV_STATE;
            }  /* END of if(HtxIntSafeWdg_Data.State == HTXINTSAFEWDG_ACTIVE) */
        } /* END of if(NextSeedPtr != NULL_PTR) */
    } /* END of if(HtxIntSafeWdg_lCheckDataCrc() == E_OK) */

    return (Result);

} /* End of HtxIntSafeWdg_GetSeed() */

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxIntSafeWdg_lCheckDataCrc(void)
 *
 * \description   : This function checks dataset integrity by CRC validation
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Result
 *
 *******************************************************************************
 *
 * \service id:   : 0x07
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1680
 *
 ******************************************************************************/
static Std_ReturnType HtxIntSafeWdg_lCheckDataCrc(void)
{
    uint32 CurrCrc;
    Std_ReturnType lRetVal;

    lRetVal = E_NOT_OK;
    CurrCrc = 0U;

    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxIntSafeWdg_Data.State);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxIntSafeWdg_Data.ReloadCurr);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxIntSafeWdg_Data.NextSeed);
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address stored in the pointer is used to calculate the CRC */    
    /* MISRA2012_RULE_11_6_JUSTIFICATION:
       The address stored in the pointer is used to calculate the CRC */    
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc,HtxIntSafeWdg_Data.CfgPtr);

    if(CurrCrc == HtxIntSafeWdg_Data.Crc)
    {
        lRetVal = E_OK;
    }

    return lRetVal;

} /* End of HtxIntSafeWdg_lCheckDataCrc() */


/*******************************************************************************
 *
 * \function      : static void HtxIntSafeWdg_lSetDataCrc(void)
 *
 * \description   : This function calculates and update crc for data set
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
 * \service id:   : 0x08
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1681
 *
 ******************************************************************************/
static void HtxIntSafeWdg_lSetDataCrc(void)
{
    uint32 CurrCrc;

    CurrCrc = 0U;
    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxIntSafeWdg_Data.State);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxIntSafeWdg_Data.ReloadCurr);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxIntSafeWdg_Data.NextSeed);
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address stored in the pointer is used to calculate the CRC */    
    /* MISRA2012_RULE_11_6_JUSTIFICATION:
       The address stored in the pointer is used to calculate the CRC */ 
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc,HtxIntSafeWdg_Data.CfgPtr);

    HtxIntSafeWdg_Data.Crc = CurrCrc;

} /* End of HtxIntSafeWdg_lSetDataCrc() */


/*******************************************************************************
 *
 * \function      : static uint32 HtxIntSafeWdg_lRandom(void)
 *
 * \description   : This function generates random numbers
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Random number
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1673
 *
 ******************************************************************************/
static uint32 HtxIntSafeWdg_lRandom(void)
{
    uint32 lRetVal;

    HtxIntSafeWdg_Random = ((HtxIntSafeWdg_Random * HTXINTSAFEWDG_RANDOMMASKVAL)
                            + HTXINTSAFEWDG_RANDOMOFFSETVAL) % HTXINTSAFEWDG_RANDOMMODVAL;

    lRetVal = ((HtxIntSafeWdg_Random % HTXWDGIF_SAFEWDG_MAXNBR_SEED));

    return lRetVal;

} /* End of HtxIntSafeWdg_lRandom() */


/*******************************************************************************
 *
 * \function      : static void HtxIntSafeWdg_lSafetyModifyAccess
 *                  (
 *                     const uint32 NewPassword,
 *                     const uint32 NewReload
 *                  )
 *
 * \description   : This function safety modify access
 *
 *******************************************************************************
 *
 * \param[in]     : NewPassword - New password
 * \param[in]     : NewReload - New reload value
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1674
 *
 ******************************************************************************/
static void HtxIntSafeWdg_lSafetyModifyAccess
(
    const uint32 NewPassword,
    const uint32 NewReload
)
{
    uint32 NewValCon0;
    uint32 NewPw;          /* Next password to be used */
    uint32 NewRel;         /* Next timer reload to be used */
    uint32 NewTimer;       /* New timer to be setup */
    uint32 NewPwd;         /* New password to be setup */
    uint32 CurrState;      /* Current state of LCK, ENDINIT */
    volatile uint32 dummy; /* Ensure readback */

    /* Enter critical section */
    HTXINTSAFEWDG_EA_ENTER_WDTSCON0();

    NewValCon0 = SCU_WDTS_CON0.U; /* save old value */
    CurrState = NewValCon0 & HTXINTSAFEWDG_WDTS_STATUS_MASK; /* save get current state */
    NewTimer = NewValCon0 & HTXINTSAFEWDG_WDTS_RELOAD_MASK; /* save current value */
    NewPwd = NewValCon0 & HTXINTSAFEWDG_WDTS_PASS_MASK; /* save current pwd value*/

    /* Get valid next password */
    NewPw = HtxIntSafeWdg_lSafetyPwSequence(NewValCon0);

    /* Get valid next timer reload */
    NewRel = HtxIntSafeWdg_lSafetyRelValue(NewValCon0);

    /* Build required new WDTCON0 value */
    /* New reload value, New Password, Clear LCK, keep ENDINIT set */
    NewValCon0 = ((NewRel)|(NewPw)|(1U));

    /* Unlock access */
    SCU_WDTS_CON0.U = NewValCon0;

    /* Modify reload value requested? */
    if(NewReload <= HTXINTSAFEWDG_WDTS_RELOAD_MAX)
    {
        NewTimer = NewReload << HTXINTSAFEWDG_16BIT_OFFSET;
    }

    /* Modify password requested? */
    if(NewPassword <= HTXINTSAFEWDG_WDTS_PASSWORD_MAX)
    {
        NewPwd = NewPassword;
    }

    /* Clear timer reload and restore saved value or setup new values */
    NewValCon0 &= ~HTXINTSAFEWDG_WDTS_RELOAD_MASK;
    NewValCon0 |= NewTimer;   /* set (new) timer value */


    /* Clear password and restore saved value or setup new values, clear old bits */
    NewValCon0 &= ~HTXINTSAFEWDG_WDTS_PASS_MASK;

    /* Adjust to valid bits only and prepare write value */
    NewValCon0 |= (NewPwd & HTXINTSAFEWDG_WDTS_PAS_UP_MASK) |
                  ((~(NewPwd & HTXINTSAFEWDG_WDTS_PAS_LOW_MSK))
                   & HTXINTSAFEWDG_WDTS_PAS_LOW_MSK);

    /* Restore LCK and ENDINIT settings, (clear LCK and ENDINIT) */
    NewValCon0 &= ~HTXINTSAFEWDG_WDTS_STATUS_MASK;
    NewValCon0 |= CurrState;

    /* Modify write access and restore lock state */
    SCU_WDTS_CON0.U = NewValCon0;

    /* Read back to ensure protection release is executed */
    /* MISRA2012_RULE_2_2_JUSTIFICATION:
       Dummy read needed to set the value in the SFR */
    dummy = SCU_WDTS_CON0.U;

    /* Exit critical section */
    HTXINTSAFEWDG_EA_EXIT_WDTSCON0();

    HTXSTPIF_UNUSED_PARAMETER(dummy);

} /* End of HtxIntSafeWdg_lSafetyModifyAccess() */


/*******************************************************************************
 *
 * \function      : static uint32 HtxIntSafeWdg_lSafetyPwSequence(const uint32 Password)
 *
 * \description   : This function safety password sequence
 *
 *******************************************************************************
 *
 * \param[in]     : Password - Password
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : New Password
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1675
 *
 ******************************************************************************/
static uint32 HtxIntSafeWdg_lSafetyPwSequence(const uint32 Password)
{
    uint32 Result;
    uint32 bit;
    uint32 lfsr;

    Result = Password & HTXINTSAFEWDG_WDTS_PASS_MASK;

    /* First generate proper password write value
       (include PW Bit8-15 and inverted PW Bit 2-7) */
    Result = (Result & HTXINTSAFEWDG_WDTS_PAS_UP_MASK) |
             ((~(Result & HTXINTSAFEWDG_WDTS_PAS_LOW_MSK))
              & HTXINTSAFEWDG_WDTS_PAS_LOW_MSK );

    /* Check if auto sequence password enabled */
    if((((SCU_WDTS_SR.U) >> IFX_SCU_WDTS_SR_PAS_OFF) & IFX_SCU_WDTS_SR_PAS_MSK) != 0U)
    {
        /* Modify password with expected password by calculating new 14-bit LFSR
           with characteristic polynomial x14+x13+x12+x2+1 */
        lfsr = Result;
        bit = ((lfsr>>1U) ^
               (lfsr>>HTXINTSAFEWDG_11_BIT_SHIFT) ^
               (lfsr>>HTXINTSAFEWDG_12_BIT_SHIFT) ^
               (lfsr>>HTXINTSAFEWDG_13_BIT_SHIFT)) & HTXINTSAFEWDG_LFSR_EXOR_BIT_POS;

        Result = (((lfsr << 1U) | bit) & HTXINTSAFEWDG_WDTS_PASS_MASK);
    }
    return (Result);
} /* End of HtxIntSafeWdg_lSafetyPwSequence() */


/*******************************************************************************
 *
 * \function      : static uint32 HtxIntSafeWdg_lSafetyRelValue(const uint32 TimReload)
 *
 * \description   : This function safety reload value
 *
 *******************************************************************************
 *
 * \param[in]     : TimReload - Reload value
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Timer value
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1676
 *
 ******************************************************************************/
static uint32 HtxIntSafeWdg_lSafetyRelValue(const uint32 TimReload)
{
    uint32 Result;

    Result = TimReload & HTXINTSAFEWDG_WDTS_RELOAD_MASK;

    /* Timer check enabled? */
    if((((SCU_WDTS_SR.U) >> IFX_SCU_WDTS_SR_TCS_OFF) & IFX_SCU_WDTS_SR_TCS_MSK) != 0U)
    {
        Result = (uint32)((~(uint32)SCU_WDTS_SR.U) & HTXINTSAFEWDG_WDT_SR_TIM_MSK);
    }

    return (Result);

} /* End of HtxIntSafeWdg_lSafetyRelValue() */


/*******************************************************************************
 *
 * \function      : static void HtxIntSafeWdg_lSafetyCheckAccess
 *                  (
 *                     const uint32 CheckPassword
 *                  )
 *
 * \description   : This function safety check access
 *
 *******************************************************************************
 *
 * \param[in]     : CheckPassword - Password to be used for CHECK access of Safety WDG
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1677
 *
 ******************************************************************************/
static void HtxIntSafeWdg_lSafetyCheckAccess(const uint32 CheckPassword)
{
    uint32 NewValCon0;

    /* Enter critical section */
    HTXINTSAFEWDG_EA_ENTER_WDTSCON0();

    /* Save old value (without ENDINIT/LOCK) */
    NewValCon0 = ((uint32)SCU_WDTS_CON0.U) & ~(uint32)HTXWDGIF_WDT_STATUS_MASK;

    /* Password check always requested */
    NewValCon0 &= ~(HTXINTSAFEWDG_WDTS_PASS_MASK); /* clear out old password */

    /* Password must match exactly the expected range! */
    NewValCon0 |= CheckPassword;

    /* Set LCK and ENDINIT Bit for check access */
    NewValCon0 |= HTXINTSAFEWDG_SET_LCK_ENDINIT;

    /* Check access, no modify */
    SCU_WDTS_CON0.U = NewValCon0;

    /* Exit critical section */
    HTXINTSAFEWDG_EA_EXIT_WDTSCON0();

} /* End of HtxIntSafeWdg_lSafetyCheckAccess() */


/*******************************************************************************
 *
 * \function      : static void HtxIntSafeWdg_lWrSeInitSfr
 *                  (
 *                      volatile uint32 * const RegAddress,
 *                      const uint32 DataValue
 *                  )
 *
 * \description   : This function write to Safety EndInit protected register
 *
 *******************************************************************************
 *
 * \param[in]     : RegAddress - Register address
 * \param[in]     : DataValue - Data value
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
static void HtxIntSafeWdg_lWrSeInitSfr
(
    volatile uint32* const RegAddress,
    const uint32 DataValue
)
{
    uint32 UnlockWdtSCon0Value;
    uint32 NewWdtSCon0Value;
    uint32 UnlockPassword;
    uint32 UnlockTimerReload;
    uint32 TimerReload, TimerReloadAtReset;
    uint32 Password;
    /* The variable 'dummy' is made volatile to prevent any optimization of
     * the variable during compilation, since the variable is used only for
     * read back of ENDINIT control registers, after the same register is
     * written in the previous statement */
    volatile uint32 dummy;

    /* Compute the password required to unlock the WDTSCON0 register */
    UnlockPassword = HtxIntSafeWdg_lSafetyPwSequence((uint32)(MODULE_SCU.WDTS.CON0.U));

    /* Compute the timer reload value required to unlock the WDTSCON0 register */
    UnlockTimerReload = HtxIntSafeWdg_lSafetyRelValue((uint32)(MODULE_SCU.WDTS.CON0.U));
     
    /* Extract the current timer reload value */
    TimerReload = HTXSTPIF_GETBITATOMIC(MODULE_SCU.WDTS.SR.U,
                                        IFX_SCU_WDTS_SR_TIM_OFF,
                                        IFX_SCU_WDTS_SR_TIM_LEN);
    TimerReloadAtReset = TimerReload;

    /* Compute the current password, to be returned, based on the retrieved WDTSCON0 value */
    Password = HtxIntSafeWdg_lDecryptPw((uint32)(MODULE_SCU.WDTS.CON0.U));

    /* Calculate the value to be written in WDTSCON0, to unlock it */
    UnlockWdtSCon0Value = (UnlockTimerReload) |
                          (UnlockPassword)|
                          ((uint32)HTXINTSAFEWDG_WDTSCON0_UNLOCK);

    /* Calculate the value to be written in WDTSCON0,
     * to temporarily disable ENDINIT protection */
    NewWdtSCon0Value = (TimerReload << IFX_SCU_WDTS_CON0_REL_OFF)|
                       (Password << IFX_SCU_WDTS_CON0_PW_OFF)|
                       ((uint32)HTXINTSAFEWDG_WDTSCON0_DIS_EI);

    /* Unlock the WDTSCON0 register */
    MODULE_SCU.WDTS.CON0.U = UnlockWdtSCon0Value;
    /* MISRA2012_RULE_2_2_JUSTIFICATION:
       Dummy read needed to set the value in the SFR */
    dummy = MODULE_SCU.WDTS.CON0.U;

    /* Update the WDTSCON0 to temporarily disable ENDINIT protection */
    MODULE_SCU.WDTS.CON0.U = NewWdtSCon0Value;
    /* MISRA2012_RULE_2_2_JUSTIFICATION:
       Dummy read needed to set the value in the SFR */
    dummy = MODULE_SCU.WDTS.CON0.U;

    *RegAddress = (uint32)DataValue;

    /* Compute the timer reload value required to unlock the WDTSCON0 register */
    UnlockTimerReload = HtxIntSafeWdg_lSafetyRelValue((uint32)(MODULE_SCU.WDTS.CON0.U));

    /* Extract the current timer reload value */
    TimerReload = HTXSTPIF_GETBITATOMIC(MODULE_SCU.WDTS.SR.U,
                                        IFX_SCU_WDTS_SR_TIM_OFF,
                                        IFX_SCU_WDTS_SR_TIM_LEN);

    TimerReload = TimerReload - (uint32)HTXINTSAFEWDG_EI_TIMEOUT_VAL;

    TimerReload = TimerReload + TimerReloadAtReset;

    if(TimerReload > (uint32)HTXINTSAFEWDG_WDTS_REL_VAL_MAX)
    {
        TimerReload = HTXINTSAFEWDG_WDTS_REL_VAL_MAX;
    }

    /* Compute the current password, to be returned, based on the retrieved WDTSCON0 value */

    /* Calculate the value to be written in WDTSCON0, to unlock it */
    UnlockWdtSCon0Value = (UnlockTimerReload)|
                          (UnlockPassword)|
                          ((uint32)HTXINTSAFEWDG_WDTSCON0_UNLOCK);

    /* Calculate the value to be written in WDTSCON0, to re-enable ENDINIT protection */
    NewWdtSCon0Value = (TimerReload << IFX_SCU_WDTS_CON0_REL_OFF)|
                       (Password << IFX_SCU_WDTS_CON0_PW_OFF)|
                       ((uint32)HTXINTSAFEWDG_WDTSCON0_ENA_EI);

    /* Unlock the WDTSCON0 register */
    MODULE_SCU.WDTS.CON0.U = UnlockWdtSCon0Value;
    /* MISRA2012_RULE_2_2_JUSTIFICATION:
       Dummy read needed to set the value in the SFR */
    dummy = MODULE_SCU.WDTS.CON0.U;

    /* Update the WDTSCON0 to re-enable ENDINIT protection */
    MODULE_SCU.WDTS.CON0.U = NewWdtSCon0Value;
    /* MISRA2012_RULE_2_2_JUSTIFICATION:
       Dummy read needed to set the value in the SFR */
    dummy = MODULE_SCU.WDTS.CON0.U;

    HTXSTPIF_UNUSED_PARAMETER(dummy);
} /* End of HtxIntSafeWdg_lWrSeInitSfr() */


/*******************************************************************************
 *
 * \function      : static uint16 HtxIntSafeWdg_lDecryptPw(const uint32 Value)
 *
 * \description   : This function decrypts the password
 *
 *******************************************************************************
 *
 * \param[in]     : Value - Value
 *
 * \param[out]    : None
 *
 * \param[in,out] : None
 *
 * \return        : Return value
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1679
 *
 ******************************************************************************/
static uint16 HtxIntSafeWdg_lDecryptPw(const uint32 Value)
{
    /* Decrypt the password, by extract password from positions [15:2], and
       inverting the last 6 bits on the extracted password */
    return((uint16)(((Value & (uint32)HTXINTSAFEWDG_EI_WDT_PWD_MASK) >> \
                     IFX_SCU_WDTS_CON0_PW_OFF) ^ \
                    (uint32)HTXINTSAFEWDG_EI_WDT_PWD_INV));

} /* End of HtxIntSafeWdg_lDecryptPw() */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXINTSAFEWDG_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxIntSafeWdg_MemMap.h"


/* EOF */
