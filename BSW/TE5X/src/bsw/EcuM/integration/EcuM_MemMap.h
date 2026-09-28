
/*********************************************************************************************************************
* CONTAINS THE ECUM-MEMMAP SEC CODE DECLARATIONS
*********************************************************************************************************************/
/* MR12 RULE 1.2 VIOLATION: The MemMap header shall have no include protection because of the concept of MemMap.
   The MemMap header could be included multiple times in a c file. */
#ifndef ECUM_MEMMAP_H
#define ECUM_MEMMAP_H
   /* BSW-17391 */
   #include "EcuM_Cfg_MemMap.h"

/*
***************************************************************
*/
#undef ECUM_MEMMAP_H
#endif//ECUM_MEMMAP_H

