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
** FILENAME : Clk.h                                                           **
**                                                                            **
** REVISION : \$Revision: 29886 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-08-03 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : <brief description>                                          **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

#ifndef CLK_H
#define CLK_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "Std_Types.h"

#include "Ifx_Cfg.h"
#include "IfxScu_reg.h"
#include "IfxSmu_reg.h"
#include "IfxStm_reg.h"


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "Clk_Types.h"
#include "Clk_Cfg.h"


/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/
#ifndef     IFX_CFG_SCU_XTAL_FREQUENCY
/* Hz *< \brief Default External oscillator frequency */
#define IFX_CFG_SCU_XTAL_FREQUENCY   (20000000)
/* Warning "IFX_CFG_SCU_XTAL_FREQUENCY not specified in your IfxCfg.h file." */
/* Warning "Please double check the external XTAL frequency with the default setting of 20 MHz!" */
#endif

/********************************************
 * A2G SMU
 ********************************************/
#ifndef   IFXSCUCCU_SMUALARM_MASK
#define IFXSCUCCU_SMUALARM_MASK                    (0x1DU)
#endif /* END of #ifndef IFXSCUCCU_SMUALARM_MASK */

/* Based on SMU.c MCAL A2G TC39x Beta 1.0.0 */
#ifndef SMU_H
/* SMU configuration unlock lock value */
#define SMU_CFG_KEY_UNLOCK   ((SMU_KEYS.U & (uint32)(0xFFFFFF00U)) | ((uint32)0xBCU))
#define SMU_CFG_KEY_TEMPLOCK (0x0U)
#endif /* END of #ifndef SMU_H */

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

extern Std_ReturnType Clk_Init(void);



#endif /* CLK_H */

/* EOF */
