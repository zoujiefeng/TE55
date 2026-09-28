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
** FILENAME : HtxLbist_Cfg.h                                                  **
**                                                                            **
** REVISION : \$Revision: 29647 $                                              **
**                                                                            **
** DATE, TIME: 2023-10-20, 10:23:03                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxLbist configuration header file                           **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/

/* Multiple include header guard */
#ifndef HTXLBIST_CFG_H
#define HTXLBIST_CFG_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/
/* Number of Config sets */
#define HTXLBIST_CFG_COUNT                         ((uint8)1U)

/* Macro to specify the type of CPUx_DLMU memory used */
#define HTXLBIST_CPU_DLMU_ID                       (HTXLBIST_SW_CPU0_DLMU_USED)

/* Address location to store the global data,
   which are preserved in-between the LBIST resets */
/* MISRA2012_RULE_11_4_JUSTIFICATION:
   The address specified in the macro is used directly to store/read the HtxLbist data */
#define HTXLBIST_DATA_ADDR /*lint --e(923, 9078)*/ (*(volatile HtxLbist_DataType*)0x90000040U)

/* Macro to specify which DLMUs exist in the device */
#define HTXLBIST_CPU0_DLMU_EXIST                    (STD_ON)
#define HTXLBIST_CPU1_DLMU_EXIST                    (STD_ON)

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

#endif  /* HTXLBIST_CFG_H */

/* EOF */
