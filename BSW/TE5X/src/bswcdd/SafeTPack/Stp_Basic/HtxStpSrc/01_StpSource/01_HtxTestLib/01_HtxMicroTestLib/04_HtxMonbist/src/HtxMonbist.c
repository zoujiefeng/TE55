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
** FILENAME : HtxMonbist.c                                                    **
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
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2209             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2296             **
**                                                                            **
** DESCRIPTION : This file provides a test routine which checks if the logic  **
**               which detects if the voltage is too high or low in the PMS   **
**               and SMU is working.                                          **
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
#include "IfxPms_bf.h"
#include "IfxPms_reg.h"
#include "HtxStpIf.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxMonbist.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* This macro specifies the Timeout value needed for MONBIST
   (25us) (assuming max fstm) with additional buffer, to avoid infinite loop */
#define HTXMONBIST_TIMEOUT                     (0x2000U)

/* EVRMONFILT config value for MONBIST test */
#define HTXMONBIST_CLEARFILT                   (0x20000000U)

/* EVRMONCTRL config value for MONBIST test */
#define HTXMONBIST_VOLTALARM                   (0x00a5a5a5U)

/* Disable FSP reaction on Stdby SMU */
#define HTXMONBIST_FSPREACTIONDISABLED         (0x40000000U)
#define HTXMONBIST_CLEARALARM                  (0x40000009U)

/* Enable standby SMU */
#define HTXMONBIST_EN_SMU_STBY                 (0x40000001U)

/* Disable Stdby SMU */
#define HTXMONBIST_DIS_SMU_STBY                (0x40000000U)
#define HTXMONBIST_STARTMONBIST                (0x40000001U)

/* This macro specifies the mask for all the UV/OV bit fields in PMSIEN SFR */
#define HTXMONBIST_PMSIEN_ALL_UV_OV_MASK       (0x00000FFFU)

#define HTXMONBIST_TEST_DONE_RUN_MASK          (0x0000000CU)
#define HTXMONBIST_SET_TST_DONE_CLEAR_TST_RUN  (0x00000008U)

/* Clear flags for AS20 and AG21 Stby SMU */
#define HTXMONBIST_CLEAR_AG20_STBY_FLAG        (0x0000FFF0U)
#define HTXMONBIST_CLEAR_AG21_STBY_FLAG        (0x0001FFBFU)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

typedef struct HtxMonbist_BackupType
{
    Ifx_PMS_MONFILT PmsMonFiltReg;
    Ifx_PMS_PMSIEN  PmsIenReg;
} HtxMonbist_BackupType;

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
#define HTXMONBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTestLib_MemMap.h"

static HtxMonbist_BackupType HtxMonbist_Backup;

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXMONBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXMONBIST_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

static void HtxMonBist_lBackupReg(void);

static void HtxMonBist_lRestoreReg(void);

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXMONBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXMONBIST_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxTestHnd_TstRsltType HtxMonbist_Test
 *                  (
 *                     const uint8 ParamSetIndex,
 *                     const uint8 TstSeed,
 *                     uint32* const TstSignature
 *                  )
 *
 * \description   : This API is used to implement external Safety mechanisms,
 *                  SMC[SW]:PMS:MONBIST_CFG and ESM[SW]:PMS:MONBIST_RESULT
 *                  by triggering and evaluating the test results.
 *
 *******************************************************************************
 *
 * \param[in]     : ParamSetIndex - Index of the configuration set
 * \param[in]     : TstSeed - Seed to be used for generating the signature
 *
 * \param[out]    : TstSignature - Test signature to be generated by the test
 *
 * \return        : HTXMONBIST_PASSED:
 *                  The test passed
 *
 *                  HTXMONBIST_ERR_PMS_FLAG:
 *                  The test failed because an error found in the Power Management System
 *
 *                  HTXMONBIST_ERR_SMU_FLAG:
 *                  The test failed because an error was found in the SMU_stdby
 *
 *                  HTXMONBIST_ERR_PMS_SMU_FLAG:
 *                  The test failed because an error found in the Power Management System and SMU_stdby
 *
 *                  HTXMONBIST_ERR_UNSPECIFIED:
 *                  The test failed for an unknown reason
 *
 *                  HTXMONBIST_ERR_TIMEOUT:
 *                  The test failed because the test took to long to complete
 *
 *                  HTXMONBIST_ERR_SFR_CONFIG:
 *                  The test failed because the configuration of SFR is not possible
 *******************************************************************************
 *
 * \service id:   : 0x05
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : The SFF test on the PMS should not currently be in progress.
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2207
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2206
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2208
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-1705
 *                  @wi.implements 4321.AURIX2G_SafeTpack/4321-2196
 *
 ******************************************************************************/
HtxTestHnd_TstRsltType HtxMonbist_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType ReturnValue;
    uint32 TimeoutFlag;
    uint32 StartTime;
    /* MISRA2012_RULE_19_2_JUSTIFICATION:
       No side effects foreseen by violating this MISRA rule.
       Union usage is required to access SFR data type and implement
       efficiently for clearing or setting the individual bitfields */
    Ifx_PMS_MONBISTSTAT MonbistStatReg;
    uint8 lSmuEnFlag;

    /* Initialise Test Signature */
    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    *TstSignature = (uint32)HTXSTPIF_CRC32(TEST_ID_MONBIST_TST, TstSeed);

    /* Verify the ParamSetIndex via signature */
    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ParamSetIndex);

    /* Backup the EVR SFR values */
    HtxMonBist_lBackupReg();

    lSmuEnFlag = 0U;
    if(PMS_CMD_STDBY.B.SMUEN != 1U)
    {
        lSmuEnFlag = 1U;
        /* Enable standby SMU */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_CMD_STDBY.U,HTXMONBIST_EN_SMU_STBY);
    }

    /* The MONBISTCTRL.TSTCLR bit shall be set foremost to clear all the flags and reset
       the test logic. This clears TSTEN, TSTRUN, TSTDONE, TSTOK, SMUERR and PMSERR bits */
    HTXSTPIF_WRITE_SEINIT_PROTREG32M(&PMS_MONBISTCTRL.U,1U,
                                     (uint32)((uint32)IFX_PMS_MONBISTCTRL_TSTCLR_MSK << IFX_PMS_MONBISTCTRL_TSTCLR_OFF));

    /* Check if Spike filter configuration is allowed */
    if(PMS_EVRMONFILT.B.SLCK != 1U)
    {
        /* EVRMONFILT is set to 0x20000000 to clear the filter and to activate 1 x spike filter */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_EVRMONFILT.U,HTXMONBIST_CLEARFILT);

        /* EVRMONCTRL is set to 0xa5a5a5 to activate Over-Voltage and Under-Voltage alarms */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_EVRMONCTRL.U,HTXMONBIST_VOLTALARM);

        /* The corresponding Over-voltage and Under-voltage interrupts are
           disabled by clearing PMSIEN.OVx/UVx register bit fields. */
        /* Following bit-fields are cleared,
           UVSB OVSB UVDDM OVDDM UVPRE OVPRE UVC OVC UV33 OV33 UVSWD OVSWD */
        HTXSTPIF_WRITE_SEINIT_PROTREG32M(&PMS_PMSIEN.U,0U,HTXMONBIST_PMSIEN_ALL_UV_OV_MASK);

        /* FSP reaction on alarms are disabled by setting AGFSP.FEx to 0 */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_AG20FSP_STDBY.U,HTXMONBIST_FSPREACTIONDISABLED);
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_AG21FSP_STDBY.U,HTXMONBIST_FSPREACTIONDISABLED);

        /* CMD.FSP0EN and CMD.FSP1EN configuration bits are cleared to
           avoid spurious Error pin activation during MONBIST. */
        /* CMD.ASCE is set to ensure that all pending alarms are cleared in AGx registers */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_CMD_STDBY.U,HTXMONBIST_CLEARALARM);
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_AG20_STDBY.U,HTXMONBIST_CLEAR_AG20_STBY_FLAG);
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_CMD_STDBY.U,HTXMONBIST_CLEARALARM);
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_AG21_STDBY.U,HTXMONBIST_CLEAR_AG21_STBY_FLAG);

        /* EVRMONFILT is set back to 0x00000000 before enabling MONBIST to ensure alarm propagation. */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_EVRMONFILT.U,0U);
        /*  Consequently the MONBIST is enabled via MONBISTSTAT.TSTEN register bit */
        /*  [Correction] --> instead it should be enabled via MONBISTCTRL.TESTEN */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_MONBISTCTRL.U,HTXMONBIST_STARTMONBIST);

        /* Wait while the test is ongoing */
        /* Exit only when TSTDONE bit[3] is set and TSTRUN bit[2] is cleared */
        TimeoutFlag = 0U;
        StartTime = STM0_TIM0.U;
        while(((PMS_MONBISTSTAT.U & HTXMONBIST_TEST_DONE_RUN_MASK) != HTXMONBIST_SET_TST_DONE_CLEAR_TST_RUN)
                && (TimeoutFlag != HTXMONBIST_TIMEOUT))
        {
            if ((STM0_TIM0.U - StartTime) >= HTXMONBIST_TIMEOUT)
            {
                /* timeout occurred */
                TimeoutFlag = HTXMONBIST_TIMEOUT;
            }
        }

        /* If No timeout */
        if(TimeoutFlag != HTXMONBIST_TIMEOUT)
        {
            /* If The TSTOK bit is set then the test was successful else
               the check the 2 error bits which indicate if the error
               was found in the PMS and or SMU.*/
            MonbistStatReg.U = PMS_MONBISTSTAT.U;
            if((MonbistStatReg.B.TSTOK) == 1U)
            {
                ReturnValue = HTXMONBIST_PASSED;
            }
            else
            {
                if(((MonbistStatReg.B.PMSERR) == 1U) && ((MonbistStatReg.B.SMUERR) == 1U))
                {
                    ReturnValue = HTXMONBIST_ERR_PMS_SMU_FLAG;
                }
                else if((MonbistStatReg.B.PMSERR) == 1U)
                {
                    ReturnValue = HTXMONBIST_ERR_PMS_FLAG;
                }
                else if((MonbistStatReg.B.SMUERR) == 1U)
                {
                    ReturnValue = HTXMONBIST_ERR_SMU_FLAG;
                }
                else
                {
                    ReturnValue = HTXMONBIST_ERR_UNSPECIFIED;
                }
            }
        }
        else
        {
            /* Timeout occurred */
            ReturnValue = HTXMONBIST_ERR_TIMEOUT;
        }

        /* Clear SMU_STBY ERR flags after the test */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_CMD_STDBY.U,HTXMONBIST_CLEARALARM);
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_AG20_STDBY.U,HTXMONBIST_CLEAR_AG20_STBY_FLAG);
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_CMD_STDBY.U,HTXMONBIST_CLEARALARM);
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_AG21_STDBY.U,HTXMONBIST_CLEAR_AG21_STBY_FLAG);
    }
    else
    {
        /* PMS_EVRMONFILT.B.SLCK is already set and cannot be reconfigured */
        ReturnValue = HTXMONBIST_ERR_SFR_CONFIG;
    }

    if(lSmuEnFlag == 1U)
    {
        /* Enable standby SMU */
        HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_CMD_STDBY.U,HTXMONBIST_DIS_SMU_STBY);
    }

    *TstSignature = (uint32)HTXSTPIF_CRC32(*TstSignature, ReturnValue);

    /* Restore the value of SFR before the Test */
    HtxMonBist_lRestoreReg();

    return ReturnValue;
} /* End of HtxMonbist_Test() */


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static void HtxMonBist_lBackupReg(void)
 *
 * \description   : Helper function which backups up
 *                  the state of the PMS.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
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
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1706
 *
 ******************************************************************************/
static void HtxMonBist_lBackupReg(void)
{
    HtxMonbist_Backup.PmsMonFiltReg.U = PMS_EVRMONFILT.U;
    HtxMonbist_Backup.PmsIenReg.U = PMS_PMSIEN.U;
} /* End of HtxMonBist_lBackupReg() */

/*******************************************************************************
 *
 * \function      : static void HtxMonBist_lRestoreReg(void)
 *
 * \description   : Helper function which restores the state of the PMS
 *                  to before the test started.
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
 * \reentrancy    : non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-1704
 *
 ******************************************************************************/
static void HtxMonBist_lRestoreReg(void)
{
    HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_EVRMONFILT.U,(uint32)HtxMonbist_Backup.PmsMonFiltReg.U);
    HTXSTPIF_WRITE_SEINIT_PROTREG32(&PMS_PMSIEN.U,(uint32)HtxMonbist_Backup.PmsIenReg.U);
} /* End of HtxMonBist_lRestoreReg() */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXMONBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTestLib_MemMap.h"

/* EOF */
