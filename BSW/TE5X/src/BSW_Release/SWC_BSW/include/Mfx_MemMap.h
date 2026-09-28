#ifndef MFX_MEMMAP_H
#define MFX_MEMMAP_H


/* MFX_MEMMAP_H */
#endif

/* MR12 RULE 1.2 VIOLATION: The MemMap header shall have no include protection because of the concept of MemMap.
The MemMep header could be included multiple times in a c file. */
#define MFX_MEMMAP_ERROR

/**********************************************************************************************************************
 **                                        Definitions for module Mfx                                                **
 *********************************************************************************************************************/

#if   defined (MFX_START_SEC_CODE)
    #define BSW_START_SEC_CODE
    #include "Bsw_MemMap.h"
    /* MR12 RULE 20.5 VIOLATION: AUTOSAR MemMap concept requires #undef, AUTOSAR MemMap requirements are 
    incompatible to MISRA */
    #undef MFX_START_SEC_CODE
    #undef MFX_MEMMAP_ERROR
#elif defined (MFX_STOP_SEC_CODE)
    #define BSW_STOP_SEC_CODE
    #include "Bsw_MemMap.h"
    #undef MFX_STOP_SEC_CODE
    #undef MFX_MEMMAP_ERROR
/*******************************************************************************/
#elif defined (MFX_START_SEC_CODE_SLOW)
    #define BSW_START_SEC_CODE
    #include "Bsw_MemMap.h"
    #undef MFX_START_SEC_CODE_SLOW
    #undef MFX_MEMMAP_ERROR
#elif defined (MFX_STOP_SEC_CODE_SLOW)
    #define BSW_STOP_SEC_CODE
    #include "Bsw_MemMap.h"
    #undef MFX_STOP_SEC_CODE_SLOW
    #undef MFX_MEMMAP_ERROR
/*******************************************************************************/
#elif defined (MFX_START_SEC_CODE_FAST)
    #define BSW_START_SEC_CODE_FAST
    #include "Bsw_MemMap.h"
    #undef MFX_START_SEC_CODE_FAST
    #undef MFX_MEMMAP_ERROR
#elif defined (MFX_STOP_SEC_CODE_FAST)
    #define BSW_STOP_SEC_CODE_FAST
    #include "Bsw_MemMap.h"
    #undef MFX_STOP_SEC_CODE_FAST
    #undef MFX_MEMMAP_ERROR
/*******************************************************************************/
#elif defined MFX_MEMMAP_ERROR
# error "Mfx_MemMap.h, wrong #pragma command"
#endif

/*
 **********************************************************************************************************************
 * End of header file: $Name______:Mfx_MemMap$
 **********************************************************************************************************************
*/

