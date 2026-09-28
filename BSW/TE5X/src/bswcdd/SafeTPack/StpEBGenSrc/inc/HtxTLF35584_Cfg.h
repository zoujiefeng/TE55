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
** FILENAME : HtxTLF35584_Cfg.h                                               **
**                                                                            **
** REVISION : \$Revision: 26142 $                                              **
**                                                                            **
** DATE, TIME: 2023-10-20, 10:23:02                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxTLF35584 configuration header file                        **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/
#ifndef HTXTLF35584_CFG_H
#define HTXTLF35584_CFG_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/


#define HTXTLF35584_CFG_PARAM_COUNT     (1U)


#define HTXTLF35584_ERR_PIN_MON_ENABLE  (STD_OFF)
/*SYSPCFG0 register settings*/
/*Standby Enabled*/
#define HTXTLF35584_STAND_BY_ENABLE     (0x01U)
/*SYSPCFG1 register settings*/
/*ERR pin monitor recovery time is set to 1 ms*/
#define HTXTLF35584_ERRREC_TIME         (0x0U)
/*Safe state 2 delay is set to 0 ms*/
#define HTXTLF35584_SS2DEL_TIME         (0x0U)
/*Err pin monitor recovery Disabled*/
#define HTXTLF35584_ERR_REC_EN          (0x0U)
/*ERR pin monitor functionality while the system is in
SLEEP mode is disabled*/
#define HTXTLF35584_ERRSLP_EN           (0x0U)
/*WDCFG1 register settings*/
/*watchdog functionality while the system is in SLEEP
mode is disabled*/
#define HTXTLF35584_WDSLP_EN            (0x0U)
/*DEVCTRL register settings*/
/*reference voltage is enabled*/
#define HTXTLF35584_VREF_EN             (0x08U)
/*communication LDO is enabled*/
#define HTXTLF35584_COM_EN              (0x20U)
/*Tracker1 LDO is enabled*/
#define HTXTLF35584_TRK1_EN             (0x40U)
/*Tracker2 LDO is enabled*/
#define HTXTLF35584_TRK2_EN             (0x80U)

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Prototypes                            **
*******************************************************************************/

/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/

#endif  /*HTXTLF35584_CFG_H */

/* EOF */
