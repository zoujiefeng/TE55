/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2021)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  : Wdg_17_Scu_PBCfg.c                                            **
**                                                                            **
**  VERSION   : 11.0.0                                                        **
**                                                                            **
**  DATE, TIME: 2023-10-09, 17:20:44                   !!!IGNORE-LINE!!!    **
**                                                                            **
**  GENERATOR : Build b191017-0938                       !!!IGNORE-LINE!!!   **
**                                                                            **
**  BSW MODULE DECRIPTION : Wdg.bmd                                           **
**                                                                            **
**  VARIANT   : Variant PB                                                    **
**                                                                            **
**  PLATFORM  : Infineon AURIX2G                                              **
**                                                                            **
**  AUTHOR    : DL-AUTOSAR-Engineering                                        **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : Wdg configuration generated out of ECUC file               **
**                                                                            **
**  SPECIFICATION(S) : Specification of Wdg Driver, AUTOSAR Release           **
**                     4.2.2 and 4.4.0                                        **
**                                                                            **
**  MAY BE CHANGED BY USER : no                                               **
**                                                                            **
*******************************************************************************/
/******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
/* Include module header File */

/* Module header file, which includes module configuration(Wdg_17_Cfg.h) file */
#include "Wdg_17_Scu.h"

/******************************************************************************
**                      Imported Compiler Switch Checks                      **
*******************************************************************************/

/******************************************************************************
**                      Private Macro Definitions                            **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

    
  /* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
due to Autosar Naming constraints.*/
#define WDG_17_SCU_START_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: MemMap.h is used to define memory
sections of the data or code, so included multiple times from code. Local
function declared before MemMap header file */
/* MISRA2012_RULE_4_10_JUSTIFICATION: MemMap.h is used to define memory sections
of the data or code, so included multiple times from code. This violation is an
approved exception without side effects by AUTOSAR. */
#include "Wdg_17_Scu_MemMap.h"

static const Mcu_17_Gtm_TomAtomChConfigType Wdg_GtmConfig_0[2] =
{
  /*GTM channel structure for Slow*/
  {
    /*Gtm module used to services wdg*/
    MCU_GTM_TIMER_ATOM,
    /* Timer Number Module No | Timer Channel No */
    0x4,
    /* Ctrl register load value */
    6146,
    /*Timer Channel CN0 value*/
    0x0U,
    /*Timer Channel CM0 value*/
    500000U,
    /*Timer Channel CM1 value*/
    0x0U,
    /*Timer Channel SR0 value*/
    500000U,
    /*Timer Channel SR1 value*/
    0x0U,
    /*Timer Channel Interrupt Enable value*/
    0x81U
  },
  /*GTM channel structure for Fast*/
  {
    /*Gtm module used to services wdg*/
    MCU_GTM_TIMER_ATOM,
    /* Timer Number Module No | Timer Channel No */
    0x4,
    /* Ctrl register load value */
    6146,
    /*Timer Channel CN0 value*/
    0x0U,
    /*Timer Channel CM0 value*/
    50000U,
    /*Timer Channel CM1 value*/
    0x0U,
    /*Timer Channel SR0 value*/
    50000U,
    /*Timer Channel SR1 value*/
    0x0U,
    /*Timer Channel Interrupt Enable value*/
    0x81U
  }
};


const struct Wdg_17_Scu_ConfigType Wdg_17_Scu_Config_0 =
{
  
  Wdg_GtmConfig_0,
  /*FastMode reload value*/
  (uint16)6942,
  /*SlowMode reload value*/
  63094,
  /*Fast refresh time*/
  1,
  /*Slow refresh time*/
  10,
  /*Wdg initial timeout*/
  1000,
  /*Wdg maximum timeout*/
  32000,
  /*Default mode*/
  WDGIF_OFF_MODE,
  /*Core Disable allowed status*/
  TRUE,
  /*Core Id*/
  0,
  /*CPU Wdg Password*/
  60
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
due to Autosar Naming constraints.*/
#define WDG_17_SCU_STOP_SEC_CONFIG_DATA_ASIL_B_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: MemMap.h is used to define memory
sections of the data or code, so included multiple times from code. Local
function declared before MemMap header file */
/* MISRA2012_RULE_4_10_JUSTIFICATION: MemMap.h is used to define memory sections
of the data or code, so included multiple times from code. This violation is an
approved exception without side effects by AUTOSAR. */
#include "Wdg_17_Scu_MemMap.h"




