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
** FILENAME : HtxTestHnd_ErrorCodes.h                                         **
**                                                                            **
** REVISION : \$Revision: 26925 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-11-10 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-1730             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-1745             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-1731             **
**                                                                            **
** DESCRIPTION : SafeTpack error codes                                        **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXTESTHND_ERRORCODES_H
#define HTXTESTHND_ERRORCODES_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxStpIf.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/* SafeTpack Test IDs */
#define TEST_ID_LBIST_TST               ((uint16)0x0001)
#define TEST_ID_SFR_CMP_TST             ((uint16)0x0002)
#define TEST_ID_SFR_CRC_TST             ((uint16)0x0003)
#define TEST_ID_REGMON_TST              ((uint16)0x0004)
#define TEST_ID_MONBIST_TST             ((uint16)0x0005)
#define TEST_ID_DTS_RESULT_TSTA         ((uint16)0x0006)
#define TEST_ID_SMU_ALIVE_ALARM_TST     ((uint16)0x0007)
#define TEST_ID_VMT_MBIST_NDT_TST       ((uint16)0x0008)
#define TEST_ID_FW_CHECK_TST            ((uint16)0x0009)
#define TEST_ID_DTS_RESULT_TSTB         ((uint16)0x000A)
/* Test handler */
#define TEST_ID_HTXTESTHND              ((uint16)0xFFFF)

/* Checks if TestResult corresponds to Test success */
#define HTXTESTHND_SUCCESS(TestResult)  (((uint32)(TestResult) & (uint32)0xFFFU) == (uint32)0x1FFU)

/************** SafeTpack Test Results **************/

#define HTXTESTHND_INVALID_RESULT       (0xFFFFA5A5U)
#define HTXTESTHND_TEST_NOT_EXECUTED    (0xFFFF0000U)

/* HtxLbist_Test Return Values (Test Id: 1) */
#define HTXLBIST_SUCCESS                (0x000101FFU)
#define HTXLBIST_CALLER_ADDR_ERR        (0x00010102U)
#define HTXLBIST_PORST_ERR              (0x00010107U)
#define HTXLBIST_TERMINATION_ERR        (0x0001020DU)
#define HTXLBIST_DEFAULT_SIGNATURE_ERR  (0x0001020EU)
#define HTXLBIST_CRC_ERR                (0x00010203U)
#define HTXLBIST_UNDEFINED_ERR          (0x00010204U)
#define HTXLBIST_INV_PARAM_ERR          (0x00010205U)

/* HtxSfrTst_SfrCmpTst Return Values (Test Id: 2) */
#define HTXSFRTST_CMP_SUCCESS           (0x000201FFU)
#define HTXSFRTST_CMP_INV_PARAM_ERR     (0x0002A102U)
#define HTXSFRTST_CMP_OVERLOAD          (0x0002D000U)
#define HTXSFRTST_CMP_VAL_ERR           (0x0002C000U)

/* HtxSfrTst_SfrCrcTst Return Values (Test Id: 3) */
#define HTXSFRTST_CRC_SUCCESS           (0x000301FFU)
#define HTXSFRTST_CRC_INV_PARAM_ERR     (0x00030102U)
#define HTXSFRTST_CRC_DATAMISMATCH      (0x00030105U)

/* HtxRegMon_Test Return Values (Test Id: 4) */
#define HTXREGMON_PASSED                (0x000401FFU)
#define HTXREGMON_SMU_TIMEOUT           (0x0004000CU)
#define HTXREGMON_ERR_UNDEFINED         (0x0004000FU)
#define HTXREGMON_ERR_MTU_TIMEOUT_UND   (0x00040200U)
#define HTXREGMON_INV_PARAM_ERR         (0x00040500U)
#define HTXREGMON_ERR_MTU_FAILED        (0x00040300U)

/* HtxMonbist_Test Return Values (Test Id: 5) */
#define HTXMONBIST_PASSED               (0x000501FFU)
#define HTXMONBIST_ERR_SMU_FLAG         (0x00050000U)
#define HTXMONBIST_ERR_PMS_FLAG         (0x00050001U)
#define HTXMONBIST_ERR_PMS_SMU_FLAG     (0x00050002U)
#define HTXMONBIST_ERR_TIMEOUT          (0x00050003U)
#define HTXMONBIST_ERR_UNSPECIFIED      (0x00050004U)
#define HTXMONBIST_ERR_SFR_CONFIG       (0x00050005U)

/* HtxDtsResult_TestA Return Values (Test Id: 6) */
#define HTXDTSRESULT_A_PASSED           (0x000601FFU)
#define HTXDTSRESULT_A_FAILED_ERR_DIFF  (0x00060000U)

/* HtxSmuAliveAlarm_Test Return Values (Test Id: 7) */
#define HTXSMUALIVEALARM_PASSED         (0x000701FFU)
#define HTXSMUALIVEALARM_ERR_ALM_STS    (0x00070003U)
#define HTXSMUALIVEALARM_ERR_TRIG       (0x00070004U)
#define HTXSMUALIVEALARM_PREV_ALM_STS   (0x00070005U)
#define HTXSMUALIVEALARM_ERR_SMU_RUN    (0x00070006U)

/* HtxVmtMbist_Test Return Values (Test Id: 8) */
#define HTXVMTMBIST_PASSED              (0x000801FFU)
#define HTXVMTMBIST_ERR_MTU_UNDEFINED   (0x00080100U)
#define HTXVMTMBIST_ERR_MTU_TIMEOUT_UND (0x00080200U)
#define HTXVMTMBIST_INV_PARAM_ERR       (0x00080300U)

/* HtxFwCheck Test_Id = 0x09 */
#define HTXFWCHECK_PASSED               (0x000901FFU)
#define HTXFWCHECK_FAILED               (0x00090001U)
#define HTXFWCHECK_INV_PARAM_ERR        (0x00090002U)
#define HTXFWCHECK_RST_UNKNOWN          (0x00090003U)
#define HTXFWCHECK_SFR_NOT_CLEARED      (0x00090004U)
#define HTXFWCHECK_DATA_ERR             (0x00090005U)

/* HtxDtsResult_TestB Return Values (Test Id: 0xA) */
#define HTXDTSRESULT_B_PASSED           (0x000A01FFU)
#define HTXDTSRESULT_B_FAILED_ERR_DIFF  (0x000A0000U)

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/* SafeTpack Test Result Type */
typedef uint32 HtxTestHnd_TstRsltType;

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

#endif /* HTXTESTHND_ERRORCODES_H */

/* EOF */

