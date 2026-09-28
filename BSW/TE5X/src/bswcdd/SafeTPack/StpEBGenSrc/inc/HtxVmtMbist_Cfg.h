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
** FILENAME : HtxVmtMbist_Cfg.h                                               **
**                                                                            **
** REVISION : \$Revision: 28351 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-24, 13:35:56                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxVmtMbist configuration header file                        **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/

/* Multiple include header guard */
#ifndef HTXVMTMBIST_CFG_H
#define HTXVMTMBIST_CFG_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/
#define HTXVMTMBIST_CFG_COUNT           ((uint8)2U)

/* MTU SSH IDs */
#define HTXVMTMBIST_CPU0_DMEM           (0U)
#define HTXVMTMBIST_CPU0_DTAG           (1U)
#define HTXVMTMBIST_CPU0_PMEM           (2U)
#define HTXVMTMBIST_CPU0_PTAG           (3U)
#define HTXVMTMBIST_CPU0_DLMU_STBY      (4U)
#define HTXVMTMBIST_CPU1_DMEM           (5U)
#define HTXVMTMBIST_CPU1_DTAG           (6U)
#define HTXVMTMBIST_CPU1_PMEM           (7U)
#define HTXVMTMBIST_CPU1_PTAG           (8U)
#define HTXVMTMBIST_CPU1_DLMU_STBY      (9U)
#define HTXVMTMBIST_CPU2_DMEM           (10U)
#define HTXVMTMBIST_CPU2_DTAG           (11U)
#define HTXVMTMBIST_CPU2_PMEM           (12U)
#define HTXVMTMBIST_CPU2_PTAG           (13U)
#define HTXVMTMBIST_CPU2_DLMU           (14U)
#define HTXVMTMBIST_CPU3_DMEM           (15U)
#define HTXVMTMBIST_CPU3_DTAG           (16U)
#define HTXVMTMBIST_CPU3_PMEM           (17U)
#define HTXVMTMBIST_CPU3_PTAG           (18U)
#define HTXVMTMBIST_CPU3_DLMU           (19U)
#define HTXVMTMBIST_LMU00               (30U)
#define HTXVMTMBIST_CPU0_DMEM1          (34U)
#define HTXVMTMBIST_CPU1_DMEM1          (35U)
#define HTXVMTMBIST_DAM0                (38U)
#define HTXVMTMBIST_SADMA               (41U)
#define HTXVMTMBIST_MINI_MCDS           (42U)
#define HTXVMTMBIST_GTM_FIFO            (53U)
#define HTXVMTMBIST_GTM_MCS0SLOW        (54U)
#define HTXVMTMBIST_GTM_MCS0FAST        (55U)
#define HTXVMTMBIST_GTM_MCS1SLOW        (56U)
#define HTXVMTMBIST_GTM_MCS1FAST        (57U)
#define HTXVMTMBIST_GTM_DPLL1A          (58U)
#define HTXVMTMBIST_GTM_DPLL1BC         (59U)
#define HTXVMTMBIST_GTM_DPLL2           (60U)
#define HTXVMTMBIST_M_CAN10             (62U)
#define HTXVMTMBIST_M_CAN20             (63U)
#define HTXVMTMBIST_M_CAN21             (64U)
#define HTXVMTMBIST_PSI5                (65U)
#define HTXVMTMBIST_ERAY_OBF0           (66U)
#define HTXVMTMBIST_ERAY_OBF1           (67U)
#define HTXVMTMBIST_ERAY_TBF_IBF0       (68U)
#define HTXVMTMBIST_ERAY_TBF_IBF1       (69U)
#define HTXVMTMBIST_ERAY_MBF0           (70U)
#define HTXVMTMBIST_ERAY_MBF1           (71U)
#define HTXVMTMBIST_SCR_XRAM            (77U)
#define HTXVMTMBIST_SCR_RAMINT          (78U)
#define HTXVMTMBIST_GIGETH_RX_RAM       (82U)
#define HTXVMTMBIST_GIGETH_TX_RAM       (83U)

/* Invalid SSH ID */
#define HTXVMTMBIST_NONE                (255U)

/* Enable/disable API with GANG MBIST */
#define HTXVMTMBIST_GANG_ENABLE_API     (STD_ON)

/* Enable/disable API without GANG MBIST */
#define HTXVMTMBIST_GANG_DISABLE_API    (STD_OFF)

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/


#endif  /* HTXVMTMBIST_CFG_H */

/* EOF */
