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
** FILENAME : Clk_Cfg.h                                                       **
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

#ifndef CLK_CFG_H
#define CLK_CFG_H

#include "Std_Types.h"

#include "Ifx_Cfg.h"
#include "IfxScu_reg.h"
#include "IfxSmu_reg.h"
#include "IfxStm_reg.h"
#include "Clk_Types.h"

#if (IFX_CFG_H != 1)
  /* Normally defined inside Ifx_Cfg.h */
  #define IFX_CFG_SCU_XTAL_FREQUENCY	(20000000)	/**< default supported: 40000000, 25000000, 20000000, 16000000 */
  #define IFX_CFG_SCU_PLL_FREQUENCY		(300000000) /**< default supported: 300000000, 200000000, 160000000, 133000000, 80000000 */
  #define IFX_CFG_SCU_PLL1_FREQUENCY	(320000000) /**< default supported: 320000000, 160000000 */
  #define IFX_CFG_SCU_PLL2_FREQUENCY	(200000000) /**< default supported: 200000000 */
#endif /* END of #ifndef IFX_CFG_H */

#ifndef     IFX_CFG_SCU_XTAL_FREQUENCY
	#define IFX_CFG_SCU_XTAL_FREQUENCY   20000000   /**< \brief Default External oscillator frequency */
	#warning "IFX_CFG_SCU_XTAL_FREQUENCY not specified in your IfxCfg.h file."
	#warning "Please double check the external XTAL frequency with the default setting of 20 MHz!"
#endif /* END of #ifndef IFX_CFG_SCU_XTAL_FREQUENCY */


/* Wait time between PLL steps */
#define CLK_CFG_PLL_WAITTIME          ((float32) 0.000200F)

/* Set the Number of K2 ramp up and down steps for System PLL,
 * please change Clk_defaultSysPllConfigSteps in according to this value */
#ifndef     CLK_NUMBEROFK2STEPS
	#define CLK_NUMBEROFK2STEPS            ((uint16)4U)
#endif


/* Clock default configuration based on XTAL 20MHz! Note, different XTAL needs modification! */
//extern const Clk_PllStepConfigType Clk_defaultSysPllConfigSteps[CLK_NUMBEROFK2STEPS];

#endif /* CLK_CFG_H */

/* EOF */
