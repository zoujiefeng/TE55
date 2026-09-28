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
** FILENAME : HtxRegMon_Cfg.h                                                 **
**                                                                            **
** REVISION : \$Revision: 27699 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-24, 14:44:06                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxRegMon configuration header file                          **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/
/* Multiple include header guard */
#ifndef HTXREGMON_CFG_H
#define HTXREGMON_CFG_H

/*******************************************************************************
**                              Includes                                      **
*******************************************************************************/

/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/
#define HTXREGMON_CFG_COUNT           ((uint8)4U)

/* MTU SSH IDs */
#define HTXREGMON_CPU0_DMEM           (0U)
#define HTXREGMON_CPU0_DTAG           (1U)
#define HTXREGMON_CPU0_PMEM           (2U)
#define HTXREGMON_CPU0_PTAG           (3U)
#define HTXREGMON_CPU0_DLMU_STBY      (4U)
#define HTXREGMON_CPU1_DMEM           (5U)
#define HTXREGMON_CPU1_DTAG           (6U)
#define HTXREGMON_CPU1_PMEM           (7U)
#define HTXREGMON_CPU1_PTAG           (8U)
#define HTXREGMON_CPU1_DLMU_STBY      (9U)
#define HTXREGMON_CPU2_DMEM           (10U)
#define HTXREGMON_CPU2_DTAG           (11U)
#define HTXREGMON_CPU2_PMEM           (12U)
#define HTXREGMON_CPU2_PTAG           (13U)
#define HTXREGMON_CPU2_DLMU           (14U)
#define HTXREGMON_CPU3_DMEM           (15U)
#define HTXREGMON_CPU3_DTAG           (16U)
#define HTXREGMON_CPU3_PMEM           (17U)
#define HTXREGMON_CPU3_PTAG           (18U)
#define HTXREGMON_CPU3_DLMU           (19U)
#define HTXREGMON_LMU00               (30U)
#define HTXREGMON_CPU0_DMEM1          (34U)
#define HTXREGMON_CPU1_DMEM1          (35U)
#define HTXREGMON_DAM0                (38U)
#define HTXREGMON_SADMA               (41U)
#define HTXREGMON_MINI_MCDS           (42U)
#define HTXREGMON_GTM_FIFO            (53U)
#define HTXREGMON_GTM_MCS0SLOW        (54U)
#define HTXREGMON_GTM_MCS0FAST        (55U)
#define HTXREGMON_GTM_MCS1SLOW        (56U)
#define HTXREGMON_GTM_MCS1FAST        (57U)
#define HTXREGMON_GTM_DPLL1A          (58U)
#define HTXREGMON_GTM_DPLL1BC         (59U)
#define HTXREGMON_GTM_DPLL2           (60U)
#define HTXREGMON_M_CAN10             (62U)
#define HTXREGMON_M_CAN20             (63U)
#define HTXREGMON_M_CAN21             (64U)
#define HTXREGMON_PSI5                (65U)
#define HTXREGMON_ERAY_OBF0           (66U)
#define HTXREGMON_ERAY_OBF1           (67U)
#define HTXREGMON_ERAY_TBF_IBF0       (68U)
#define HTXREGMON_ERAY_TBF_IBF1       (69U)
#define HTXREGMON_ERAY_MBF0           (70U)
#define HTXREGMON_ERAY_MBF1           (71U)
#define HTXREGMON_SCR_XRAM            (77U)
#define HTXREGMON_SCR_RAMINT          (78U)
#define HTXREGMON_GIGETH_RX_RAM       (82U)
#define HTXREGMON_GIGETH_TX_RAM       (83U)

/* Number of MTU SFF tests */
#define HTXREGMON_NUM_MTU_SFF         (96U)

/* Module defines to specify a feature is available or not */
#define HTXREGMON_ON                  (1U)
#define HTXREGMON_OFF                 (0U)

/* Macro switch to enable the MTU SFF logic */
#define HTXREGMON_MTU_SFF_TEST_SWITCH    (HTXREGMON_ON)

/* Macro switch to enable the SMU SFF logic */
#define HTXREGMON_SMU_SFF_TEST_SWITCH    (HTXREGMON_ON)

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declaration                           **
*******************************************************************************/

/*******************************************************************************
**                      Function Declaration                                  **
*******************************************************************************/

#endif  /* HTXREGMON_CFG_H */

/* EOF */
