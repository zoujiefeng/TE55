#ifndef FLS_H
#define FLS_H
#include "Fls_17_Dmu.h"

/**
 * @brief FLS_H
 * Autosar release major version
 *
 */
#define FLS_AR_RELEASE_MAJOR_VERSION 4
/**
 * @brief FLS_H
 * Autosar release minor version
 *
 */
#define FLS_AR_RELEASE_MINOR_VERSION 2
/**
 * @brief FLS_H
 * Autosar release revision version
 *
 */
#define FLS_AR_RELEASE_REVISION_VERSION 2


/* Fls_Mode for FeeFs1 */
#define Fls_Mode Fls_ConfigPtr->FlsStateVarPtr->FlsMode



typedef uint32 Fls_AddressType;

typedef uint32 Fls_LengthType;


#define FlsConfigSet                Fls_17_Dmu_Config
#define Fls_ConfigType              Fls_17_Dmu_ConfigType
#define Fls_Read(a,b,c)             Fls_17_Dmu_Read(a,b,c)
#define Fls_GetJobResult            Fls_17_Dmu_GetJobResult
#define Fls_Compare(a,b,c)          Fls_17_Dmu_Compare(a,b,c)
#define Fls_Write(a,b,c)            Fls_17_Dmu_Write(a,b,c)
#define Fls_Erase(a,b)              Fls_17_Dmu_Erase(a,b)
#define Fls_SetMode(Mode)           Fls_17_Dmu_SetMode(Mode)

void	Test_NvM_Blocks_MainFunction(void);
#if 1
#define Fls_BlankCheck              Fls_17_Dmu_BlankCheck
#endif
#define Fls_Init(a)                 Fls_17_Dmu_Init(a)
#define Fls_ControlTimeoutDet(a)    Fls_17_Dmu_ControlTimeoutDet(a)
#define Fls_GetStatus()             Fls_17_Dmu_GetStatus()
#define Fls_MainFunction()    		Fls_17_Dmu_MainFunction()

#endif
