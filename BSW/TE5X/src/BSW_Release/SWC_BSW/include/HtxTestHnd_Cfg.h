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
** FILENAME : HtxTestHnd_Cfg.h                                                **
**                                                                            **
** REVISION : \$Revision: 28351 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-27, 15:18:16                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxTestHnd configuration header file                         **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
**  MAY BE CHANGED BY USER : No                                               **
**                                                                            **
*******************************************************************************/

#ifndef HTXTESTHND_CFG_H
#define HTXTESTHND_CFG_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/* Startup Test Index */
#define HTXTESTHND_LBIST  (0U)
#define HTXTESTHND_MONBIST  (1U)
#define HTXTESTHND_MCU_STARTUP  (2U)
#define HTXTESTHND_SMU_ALIVE_ALARM  (3U)
#define HTXTESTHND_REG_MONITOR_TEST  (4U)
#define HTXTESTHND_MBIST_CONFIG0  (5U)
#define HTXTESTHND_MBIST_CONFIG1  (6U)
#define HTXTESTHND_DTS_RESULT_TEST  (7U)

/* Run-time Test Index */
#define HTXTESTHND_DTS_RESULT_CHECK_A  (0U)
#define HTXTESTHND_SFR_CMP_TEST_CONFIG1  (1U)
#define HTXTESTHND_SFR_CRC_TEST_CONFIG1  (2U)
#define HTXTESTHND_SFR_CMP_TEST_CONFIG2  (3U)
#define HTXTESTHND_SFR_CRC_TEST_CONFIG2  (4U)
#define HTXTESTHND_DTS_RESULT_CHECK_B  (5U)
#define HTXTESTHND_SFR_CRC_CSFR_CORE2  (6U)
#define HTXTESTHND_SFR_CRC_CSFR_CORE3  (7U)

/* Macro specifies if the plausibility check for startup test is enabled/disabled */
#define HTXTESTHND_STARTUP_INV_CHECK     (STD_ON)

/* Macro specifies if the plausibility check for runtime test is enabled/disabled */
#define HTXTESTHND_RUNTIME_INV_CHECK     (STD_ON)

/* Master core Id */
#define HTXTESTHND_MASTER_CORE_ID        (0U)

/* Total number of startup tests */
#define HTXTESTHND_TOTAL_STARTUP_TESTS   (8U)
/* Total number of run-time tests */
#define HTXTESTHND_TOTAL_RUNTIME_TESTS   (8U)
/* Total number of startup test groups */
#define HTXTESTHND_STARTUP_TEST_GROUPS   (3U)

/* Total number of run-time test groups */
#define HTXTESTHND_RUNTIME_TEST_GROUPS   (4U)

/* Maximum number of startup tests per group */
#define HTXTESTHND_STARTUP_TST_GRP_SIZE  (5U)

/* Maximum number of run-time tests per group */
#define HTXTESTHND_RUNTIME_TST_GRP_SIZE  (4U)

#define HTXTESTHND_ALM_MASTER_CORE_ONLY  (0U)
#define HTXTESTHND_ALM_ALL_CORES         (1U)
#define HTXTESTHND_ALM_NONE              (2U)

/* Macro to disable/specify SMU set alarm configuration */
#define HTXTESTHND_SET_SMU_ALM_CALLER    (HTXTESTHND_ALM_MASTER_CORE_ONLY)


#endif  /* HTXTESTHND_CFG_H */

/* EOF */
