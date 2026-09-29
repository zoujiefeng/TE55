/*
 * This is a template file. It defines integration functions necessary to complete RTA-BSW.
 * The integrator must complete the templates before deploying software containing functions defined in this file.
 * Once templates have been completed, the integrator should delete the #error line.
 * Note: The integrator is responsible for updates made to this file.
 *
 * To remove the following error define the macro NOT_READY_FOR_TESTING_OR_DEPLOYMENT with a compiler option (e.g. -D NOT_READY_FOR_TESTING_OR_DEPLOYMENT)
 * The removal of the error only allows the user to proceed with the building phase
 */



/* Bsw_MemMap.h for AUTOSAR Memory Mapping R4.0 Rev 3 */
/* MISRA RULE 19.15 VIOLATION: MemMap header concept - no protection against repeated inclusion intended */


#if defined (START_WITH_IF)  // to start with #elif

/* VARIABLES */


/* CODE */
#elif defined BSW_START_SEC_DEFAULT_CODE
    #undef BSW_START_SEC_DEFAULT_CODE
#elif defined BSW_STOP_SEC_DEFAULT_CODE
    #undef BSW_STOP_SEC_DEFAULT_CODE

#elif defined BSW_START_SEC_CODE
    #undef    BSW_START_SEC_CODE
    #define   DEFAULT_BSW_START_CODE

#elif defined BSW_STOP_SEC_CODE
    #undef    BSW_STOP_SEC_CODE
    #define   DEFAULT_BSW_STOP_CODE

#elif defined BSW_START_SEC_CONST_UNSPECIFIED
    #undef    BSW_START_SEC_CONST_UNSPECIFIED
    #define   DEFAULT_BSW_START_SEC_CONST_UNSPECIFIED
#elif defined BSW_STOP_SEC_CONST_UNSPECIFIED
    #undef    BSW_STOP_SEC_CONST_UNSPECIFIED
    #define   DEFAULT_BSW_STOP_SEC_CONST_UNSPECIFIED
#else
    //  #error "Bsw_MemMap.h, memmap section unconfigured"
#endif

// #include "MemMap.h"
