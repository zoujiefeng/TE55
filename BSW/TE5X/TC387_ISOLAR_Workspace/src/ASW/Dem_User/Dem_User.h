/** @file    
  *
  * @brief    
  *
  * @note     
  *
  * @note     
  * @note     
  *
  * @date     
  */

#ifndef RTE_USER_DEM_H
#define RTE_USER_DEM_H


/*******************************************************
 ***
 *** Includes
 ***
 *******************************************************/

#include "Rte.h"
#include "Rte_Intl.h"
#include "Rte_Dem_Type.h"

#include "Rte_DataHandleType.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* API Mapping Macros */
#ifndef RTE_CORE

#define RTE_DEM_START_SEC_CODE
#include "Rte_MemMap.h"

Std_ReturnType DEM_DataServices_DemDataElementClass_1D03_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D05_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D06_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D07_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D08_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D0A_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D0B_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D0C_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D0E_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D0F_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D10_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D11_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D12_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D13_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D15_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D1A_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D1F_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D20_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D21_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D22_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D23_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D24_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D25_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D26_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D27_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D28_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D29_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D2A_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D2B_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D2C_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D2D_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D2E_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D2F_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D30_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D31_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D32_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D33_ReadData(uint8 * Data);
Std_ReturnType DEM_DataServices_DemDataElementClass_1D34_ReadData(uint8 * Data);


#define RTE_DEM_STOP_SEC_CODE
#include "Rte_MemMap.h"

#endif /* RTE_CORE */

/* Initial values for data element prototypes */

#ifdef __cplusplus
} /* extern C */
#endif /* __cplusplus */

#endif /* !RTE_USER_DEM_H */
