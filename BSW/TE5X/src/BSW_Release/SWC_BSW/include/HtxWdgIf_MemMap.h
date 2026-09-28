/*******************************************************************************
**                                                                            **
** Copyright (C) Hitex (UK) Ltd. (2018)                                       **
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
** FILENAME : HtxWdgIf_MemMap.h                                               **
**                                                                            **
** REVISION : \$Revision: 26773 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-11-02 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxWdgIf module Memory Map Header File                       **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

#define MEMMAP_ERROR

/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#if defined HTXWDGIF_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.32bit"
    #pragma align 4
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.32bit" aw 4
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.32bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.32bit" "ClearedData.LmuNC.32bit" far-absolute RW
  #endif
    #undef  HTXWDGIF_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXWDGIF_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
  #ifdef _TASKING_C_TRICORE_
    #pragma align restore
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXWDGIF_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXWDGIF_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.16bit"
    #pragma align 4
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.16bit" aw 2
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.16bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.16bit" "ClearedData.LmuNC.16bit" far-absolute RW
  #endif
    #undef  HTXWDGIF_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXWDGIF_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
  #ifdef _TASKING_C_TRICORE_
    #pragma align restore
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXWDGIF_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXWDGIF_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXWDGIF_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXWDGIF_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXWDGIF_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXWDGIF_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.Unspecified"
    #pragma align 4
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.Unspecified" a 4
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.Unspecified"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.Unspecified" far-absolute R
  #endif
    #undef  HTXWDGIF_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXWDGIF_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
  #ifdef _TASKING_C_TRICORE_
    #pragma align restore
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXWDGIF_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXWDGIF_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.32bit"
    #pragma align 4
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.32bit" a 4
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.32bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.32bit" far-absolute R
  #endif
    #undef  HTXWDGIF_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXWDGIF_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
  #ifdef _TASKING_C_TRICORE_
    #pragma align restore
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXWDGIF_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXWDGIF_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.16bit"
    #pragma align 2
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.16bit" a 2
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.16bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.16bit" far-absolute R
  #endif
    #undef  HTXWDGIF_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXWDGIF_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
  #ifdef _TASKING_C_TRICORE_
    #pragma align restore
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXWDGIF_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXWDGIF_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXWDGIF_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXWDGIF_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXWDGIF_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXWDGIF_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXWDGIF_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXWDGIF_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXWDGIF_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR

#endif /* END Of #if defined HTXWDGIF_START_SEC_INIT_VAR_ASIL_B_GLOBAL_32  */

/*******************************************************************************
 ****  Error Message
 ******************************************************************************/
#if defined MEMMAP_ERROR
#error "HTXWDGIF_MemMap.h, wrong pragma command"
#endif /* END Of #if defined MEMMAP_ERROR */

/* EOF */
