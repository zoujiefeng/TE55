
/* MR12 RULE 1.2, DIR 4.10 VIOLATION: MemMap header concept - no protection against multiple inclusion intended */
/*
 ***************************************************************************************************
 * Defines
 ***************************************************************************************************
 */
#define MEMMAP_ERROR
/* MR12 RULE 20.5 VIOLATION: AUTOSAR MemMap concept requires #undef, AUTOSAR MemMap requirements are incompatible to MISRA */
#if defined WDGIF_START_SEC_CONFIG_DATA_FAST_UNSPECIFIED
    /* Unspecified size */
    #define BSW_START_SEC_CONST_UNSPECIFIED
    #include "Bsw_MemMap.h"
    #undef WDGIF_START_SEC_CONFIG_DATA_FAST_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined WDGIF_STOP_SEC_CONFIG_DATA_FAST_UNSPECIFIED
    #define BSW_STOP_SEC_CONST_UNSPECIFIED
    #include "Bsw_MemMap.h"
    #undef WDGIF_STOP_SEC_CONFIG_DATA_FAST_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined WDGIF_START_SEC_CODE
    #define  BSW_START_SEC_CODE
    #include "Bsw_MemMap.h"
    #undef WDGIF_START_SEC_CODE
    #undef MEMMAP_ERROR
#elif defined WDGIF_STOP_SEC_CODE
    #define  BSW_STOP_SEC_CODE
    #include "Bsw_MemMap.h"
    #undef WDGIF_STOP_SEC_CODE
    #undef MEMMAP_ERROR
#elif defined WDGIF_START_SEC_CODE_FAST
    #define  BSW_START_SEC_CODE
    #include "Bsw_MemMap.h"
    #undef WDGIF_START_SEC_CODE_FAST
    #undef MEMMAP_ERROR
#elif defined WDGIF_STOP_SEC_CODE_FAST
    #define  BSW_STOP_SEC_CODE
    #include "Bsw_MemMap.h"
    #undef WDGIF_STOP_SEC_CODE_FAST
    #undef MEMMAP_ERROR
#elif defined WDGIF_START_SEC_CODE_SLOW
    #define  BSW_START_SEC_CODE
    #include "Bsw_MemMap.h"
    #undef WDGIF_START_SEC_CODE_SLOW
    #undef MEMMAP_ERROR
#elif defined WDGIF_STOP_SEC_CODE_SLOW
    #define  BSW_STOP_SEC_CODE
    #include "Bsw_MemMap.h"
    #undef WDGIF_STOP_SEC_CODE_SLOW
    #undef MEMMAP_ERROR
#elif defined WDGIF_START_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
    /* Unspecified size */
    #define BSW_START_SEC_CONST_UNSPECIFIED
    #include "Bsw_MemMap.h"
    #undef WDGIF_START_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined WDGIF_STOP_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
    #define BSW_STOP_SEC_CONST_UNSPECIFIED
    #include "Bsw_MemMap.h"
    #undef WDGIF_STOP_SEC_CONFIG_DATA_POSTBUILD_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined WDGIF_START_SEC_VAR_FAST_CLEARED_UNSPECIFIED
    /* Unspecified size */
    #define BSW_START_SEC_VAR_FAST_CLEARED_UNSPECIFIED
    #include "Bsw_MemMap.h"
    #undef WDGIF_START_SEC_VAR_FAST_CLEARED_UNSPECIFIED
    #undef MEMMAP_ERROR
#elif defined WDGIF_STOP_SEC_VAR_FAST_CLEARED_UNSPECIFIED
    #define BSW_STOP_SEC_VAR_FAST_CLEARED_UNSPECIFIED
    #include "Bsw_MemMap.h"
    #undef WDGIF_STOP_SEC_VAR_FAST_CLEARED_UNSPECIFIED
    #undef MEMMAP_ERROR

#elif defined MEMMAP_ERROR
    #error "WdgIf_MemMap.h, wrong #pragma command"
#endif


