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
** FILENAME : HtxTLF35584_Cfg.c                                               **
**                                                                            **
** REVISION : \$Revision: 31004 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-27, 09:27:06                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxTLF35584 configuration file                               **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "HtxTLF35584.h"

/*******************************************************************************
**                      Private Macro definition                              **
*******************************************************************************/


/*******************************************************************************
**                      Configuration Options                                 **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTLF35584_MemMap.h"

/* external TLF watchdog configuration */
const HtxTLF35584_ConfigType HtxTLF35584_ConfigRoot[] =
{
    {
        &HtxTLF35584Qspi_ChConfigRoot[0],
        TLF_WM_FWD_WWD_SPI,  /* Mode of Watchdog */
        0U,                  /* Watchdog cycle time.This value will set "WDCYC" bit in WDCFG0*/
        3U,                  /* Open window time */
        3U,                  /* Close window time */
        7U,                  /* Functional watchdog time */
        9U,                  /* Window Watchdog error threshold */
        9U,                  /* Functional Watchdog error threshold */
        &MODULE_P20,        /* DUMMY PORT, will not be used since TLF_WM_WWD_WDI ia not selected */
        9U,                 /* DUMMY PIN, will not be used since TLF_WM_WWD_WDI ia not selected */
        /* Signature XOR table: */
        {
            /* XOR Mask for sig;  Actual TLF Sig */

            0x44CBDC0B,          /* 0xFF0FF000*/
            0x2F88FD1F,          /* 0xB040BF4F*/
            0x41FCE7E6,          /* 0xE919E616*/
            0x2ABFC6F2,          /* 0xA656A959*/
            0x77BF3D66,          /* 0x75857A8A*/
            0x1CFC1C72,          /* 0x3ACA35C5*/
            0x7288068B,          /* 0x63936C9C*/
            0x19CB279F,          /* 0x2CDC23D3*/
            0xC07FD716,          /* 0xD222DD2D*/
            0xAB3CF602,          /* 0x9D6D9262*/
            0xC548ECFB,          /* 0xC434CB3B*/
            0xAE0BCDEF,          /* 0x8B7B8474*/
            0xF30B367B,          /* 0x58A857A7*/
            0x9848176F,          /* 0x17E718E8*/
            0xF63C0D96,          /* 0x4EBE41B1*/
            0x9D7F2C82           /* 0x01F10EFE*/
        }
    }
};

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
#include "HtxTLF35584_MemMap.h"

/*******************************************************************************
**                      Global Funtion Declarations                           **
*******************************************************************************/

/* EOF */
 
