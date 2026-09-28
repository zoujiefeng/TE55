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
** FILENAME : HtxTestLib_MemMap.h                                             **
**                                                                            **
** REVISION : \$Revision: 26594 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-10-20 #$                                   **
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
** MAY BE CHANGED BY USER : yes                                               **
**                                                                            **
*******************************************************************************/

#define MEMMAP_ERROR

/*******************************************************************************
 ****  MemMap section for HtxTestHnd module
 ******************************************************************************/

/*******************************************************************************
 ****  Config Data Sections
 ******************************************************************************/

/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#if defined HTXTESTHND_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXTESTHND_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXTESTHND_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXTESTHND_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXTESTHND_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXTESTHND_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXTESTHND_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXTESTHND_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXTESTHND_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXTESTHND_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXTESTHND_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXTESTHND_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXTESTHND_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXTESTHND_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXTESTHND_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXTESTHND_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXTESTHND_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXTESTHND_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  MemMap section for HtxSfrCmpTst module
 ******************************************************************************/

/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXSFRTSTCMP_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXSFRTSTCMP_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCMP_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXSFRTSTCMP_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCMP_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXSFRTSTCMP_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCMP_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXSFRTSTCMP_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCMP_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXSFRTSTCMP_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCMP_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXSFRTSTCMP_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXSFRTSTCMP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXSFRTSTCMP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCMP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXSFRTSTCMP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCMP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXSFRTSTCMP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCMP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXSFRTSTCMP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCMP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXSFRTSTCMP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCMP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXSFRTSTCMP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCMP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXSFRTSTCMP_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCMP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXSFRTSTCMP_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXSFRTSTCMP_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXSFRTSTCMP_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCMP_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXSFRTSTCMP_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  MemMap section for HtxSfrCrcTst module
 ******************************************************************************/
 
/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXSFRTSTCRC_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXSFRTSTCRC_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCRC_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXSFRTSTCRC_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCRC_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXSFRTSTCRC_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCRC_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXSFRTSTCRC_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCRC_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXSFRTSTCRC_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCRC_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXSFRTSTCRC_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXSFRTSTCRC_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXSFRTSTCRC_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXSFRTSTCRC_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXSFRTSTCRC_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXSFRTSTCRC_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXSFRTSTCRC_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  MemMap section for HtxLbist module
 ******************************************************************************/

/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXLBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXLBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXLBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXLBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXLBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXLBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXLBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXLBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXLBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXLBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXLBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXLBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXLBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXLBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXLBIST_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXLBIST_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXLBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXLBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  MemMap section for HtxRegMon module
 ******************************************************************************/
 
/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXREGMON_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXREGMON_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXREGMON_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXREGMON_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXREGMON_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXREGMON_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXREGMON_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXREGMON_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXREGMON_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXREGMON_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXREGMON_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXREGMON_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXREGMON_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXREGMON_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXREGMON_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXREGMON_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXREGMON_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXREGMON_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  MemMap section for HtxMonbist module
 ******************************************************************************/
 
/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXMONBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXMONBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXMONBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXMONBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXMONBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXMONBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXMONBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXMONBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXMONBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXMONBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXMONBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXMONBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXMONBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXMONBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXMONBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXMONBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXMONBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXMONBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXMONBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXMONBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXMONBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXMONBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXMONBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXMONBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXMONBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXMONBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXMONBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXMONBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXMONBIST_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXMONBIST_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXMONBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXMONBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  MemMap section for HtxDtsResultA module
 ******************************************************************************/
 
/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXDTSRESULTA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXDTSRESULTA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXDTSRESULTA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXDTSRESULTA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXDTSRESULTA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXDTSRESULTA_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXDTSRESULTA_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXDTSRESULTA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXDTSRESULTA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXDTSRESULTA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXDTSRESULTA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXDTSRESULTA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXDTSRESULTA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXDTSRESULTA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXDTSRESULTA_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXDTSRESULTA_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXDTSRESULTA_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXDTSRESULTA_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTA_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXDTSRESULTA_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  MemMap section for HtxDtsResultB module
 ******************************************************************************/

/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXDTSRESULTB_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXDTSRESULTB_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTB_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXDTSRESULTB_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTB_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXDTSRESULTB_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTB_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXDTSRESULTB_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTB_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXDTSRESULTB_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTB_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXDTSRESULTB_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXDTSRESULTB_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXDTSRESULTB_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTB_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXDTSRESULTB_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTB_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXDTSRESULTB_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTB_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXDTSRESULTB_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTB_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXDTSRESULTB_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTB_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXDTSRESULTB_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXDTSRESULTB_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXDTSRESULTB_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTB_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXDTSRESULTB_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXDTSRESULTB_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXDTSRESULTB_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXDTSRESULTB_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXDTSRESULTB_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  MemMap section for HtxSmuAliveAlarm module
 ******************************************************************************/
 
/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXSMUALIVEALARM_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXSMUALIVEALARM_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXSMUALIVEALARM_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXSMUALIVEALARM_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXSMUALIVEALARM_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXSMUALIVEALARM_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXSMUALIVEALARM_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXSMUALIVEALARM_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXSMUALIVEALARM_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXSMUALIVEALARM_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXSMUALIVEALARM_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXSMUALIVEALARM_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXSMUALIVEALARM_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXSMUALIVEALARM_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXSMUALIVEALARM_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXSMUALIVEALARM_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXSMUALIVEALARM_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXSMUALIVEALARM_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXSMUALIVEALARM_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXSMUALIVEALARM_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXSMUALIVEALARM_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXSMUALIVEALARM_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXSMUALIVEALARM_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXSMUALIVEALARM_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXSMUALIVEALARM_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXSMUALIVEALARM_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXSMUALIVEALARM_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXSMUALIVEALARM_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXSMUALIVEALARM_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXSMUALIVEALARM_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXSMUALIVEALARM_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXSMUALIVEALARM_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  MemMap section for HtxVmtMbist module
 ******************************************************************************/
 
/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXVMTMBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXVMTMBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXVMTMBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXVMTMBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXVMTMBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXVMTMBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXVMTMBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXVMTMBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXVMTMBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXVMTMBIST_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXVMTMBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXVMTMBIST_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXVMTMBIST_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXVMTMBIST_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXVMTMBIST_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXVMTMBIST_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXVMTMBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXVMTMBIST_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  MemMap section for HtxFwCheck module
 ******************************************************************************/
 
/*******************************************************************************
 ****  Data Sections
 ******************************************************************************/
/* To be used for all global or static variables. */
/* Variable to be cleared at startup or reset is placed here - .bss */
#elif defined HTXFWCHECK_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXFWCHECK_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXFWCHECK_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
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
    #undef  HTXFWCHECK_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXFWCHECK_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXFWCHECK_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXFWCHECK_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
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
    #undef  HTXFWCHECK_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXFWCHECK_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss "ClearedData.LmuNC.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "ClearedData.LmuNC.8bit" aw
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section bss = ".ClearedData.LmuNC.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section DATA "InitData.LmuNC.8bit" "ClearedData.LmuNC.8bit" far-absolute RW
  #endif
    #undef  HTXFWCHECK_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXFWCHECK_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farbss restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXFWCHECK_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR

/*******************************************************************************
 ****  Section for Configuration, etc.
 ******************************************************************************/
/* Constants with attributes that show that they reside in one segment for module
   configuration.*/

#elif defined HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
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
    #undef  HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR
#elif defined HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
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
    #undef  HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_32
    #undef MEMMAP_ERROR

#elif defined HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR
#elif defined HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
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
    #undef  HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_16
    #undef MEMMAP_ERROR

#elif defined HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom "Config.Cpu0.8bit"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Config.Cpu0.8bit" a
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section rodata = ".Config.Cpu0.8bit"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CONST "Config.Cpu0.8bit" far-absolute R
  #endif
    #undef  HTXFWCHECK_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR
#elif defined HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
  #ifdef _TASKING_C_TRICORE_
    #pragma section farrom restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXFWCHECK_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_8
    #undef MEMMAP_ERROR


/*******************************************************************************
 ****  Section for code
 ******************************************************************************/
#elif defined HTXFWCHECK_START_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code "Code.Cpu0"
  #elif defined _GNU_C_TRICORE_
    #pragma section "Code.Cpu0" ax
   #elif defined _GHS_C_TRICORE_
     #pragma ghs section text = ".Code.Cpu0"
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section CODE "Code.Cpu0" RX
  #endif
    #undef  HTXFWCHECK_START_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR
#elif defined HTXFWCHECK_STOP_SEC_CODE_ASIL_B_GLOBAL
  #ifdef _TASKING_C_TRICORE_
    #pragma section code restore
  #elif defined _GNU_C_TRICORE_
    #pragma section
  #elif defined _GHS_C_TRICORE_
       #pragma ghs section
  #elif defined _DIABDATA_C_TRICORE_
    #pragma section 
  #endif
    #undef  HTXFWCHECK_STOP_SEC_CODE_ASIL_B_GLOBAL
    #undef MEMMAP_ERROR

#endif

/*******************************************************************************
 ****  Error Message
 ******************************************************************************/

#if defined MEMMAP_ERROR
#error "HtxTestLib_MemMap.h, wrong pragma command"
#endif /* END Of #if defined MEMMAP_ERROR */

/* EOF */
