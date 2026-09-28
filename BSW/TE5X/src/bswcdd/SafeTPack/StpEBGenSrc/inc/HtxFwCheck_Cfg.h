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
** FILENAME : HtxFwCheck_Cfg.h                                                **
**                                                                            **
** REVISION : \$Revision: 28455 $                                              **
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
** DESCRIPTION : HtxFwCheck configuration file                                **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXFWCHECK_CFG_H
#define HTXFWCHECK_CFG_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/* Bit mask for the available SSH instances for the specific device */
#define HTXFWCHECK_AVAILABLE_SSH_MASK_1   (0x400FFFFFU)
#define HTXFWCHECK_AVAILABLE_SSH_MASK_2   (0xDFE0074CU)
#define HTXFWCHECK_AVAILABLE_SSH_MASK_3   (0x000C60FFU)

/* Masked value for the device for SMU_AG7 SFR */
#define HTXFWCHECK_SMU_AG7_COLDPRSTMASK   ((uint32)0xFFFFFFFEU)

/* Masked value for the device for SMU_AG8 SFR */
#define HTXFWCHECK_SMU_AG7_WARMPRSTMASK   ((uint32)0xFFFFFFFFU)

/* Number of Config sets */
#define HTXFWCHECK_CFG_COUNT              ((uint8)1U)

/* Specifies if GETH or ADAS Clock configuration available */
#define HTXFWCHECK_ADAS_GETH_EXIST        (STD_ON)

/* Specifies if ADAS Clock configuration available */
#define HTXFWCHECK_ADAS_EXIST             (STD_OFF)

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

#endif /* HTXFWCHECK_CFG_H */

/* EOF */
