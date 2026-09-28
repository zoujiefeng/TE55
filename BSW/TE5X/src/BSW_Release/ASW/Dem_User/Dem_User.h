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


Std_ReturnType DemDataServiceFunc_DF20_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_DF21_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_DF23_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_DF29_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_DF2A_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_DF2C_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D000_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D001_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D002_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D003_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D004_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D005_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D007_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D008_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D009_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D010_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D011_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D012_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D013_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D014_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D015_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D016_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D017_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D018_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D019_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D020_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D021_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D022_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D023_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D024_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D025_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D026_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D027_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D028_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D029_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D030_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D031_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D032_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D033_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D034_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D035_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D036_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D037_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D038_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D039_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D040_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D041_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D042_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D043_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D044_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D045_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D046_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D047_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D048_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_D049_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D01_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D02_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D03_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D04_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D05_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D06_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D07_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D08_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D09_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D0A_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D0B_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D0C_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D0D_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D0E_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D0F_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D13_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D14_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D15_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D16_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D17_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D18_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D19_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D1A_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D1B_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D1C_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D1D_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D1E_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D1F_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D20_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D21_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D22_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D23_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D24_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D25_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D26_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D27_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D28_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_1D29_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D02_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D03_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D04_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D05_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D06_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D07_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D08_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D0E_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D13_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D14_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D15_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D1C_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D1D_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D1E_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D1F_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D20_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D21_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D22_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D25_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_2D26_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D02_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D03_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D04_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D05_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D06_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D07_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D08_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D0E_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D13_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D14_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D15_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D1C_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D1D_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D1E_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D1F_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D20_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D21_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D22_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D25_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_3D26_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D27_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D28_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D29_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D2A_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D2B_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D2C_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D2D_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D2E_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D2F_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D30_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D31_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D32_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D33_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D34_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D35_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D36_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D37_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D38_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D39_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D3A_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D3B_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D3C_ReadData (uint8 * Data);
Std_ReturnType DemDataServiceFunc_4D3D_ReadData (uint8 * Data);



#define RTE_DEM_STOP_SEC_CODE
#include "Rte_MemMap.h"

#endif /* RTE_CORE */

/* Initial values for data element prototypes */

#ifdef __cplusplus
} /* extern C */
#endif /* __cplusplus */

#endif /* !RTE_USER_DEM_H */
