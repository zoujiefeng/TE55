/*********************************************************************************************************************
*
* Description:     BootM module API
* FileName:        FBL_BootM.h
* Company:         INVT (www.invt.com.cn)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright INVT 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
*/
#ifndef  FBL_BOOTMCFG_H
#define  FBL_BOOTMCFG_H
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "Std_Types.h"
#include "FBL_BootMPrvCfg.h"
#include "NvM.h"
/*********************************************************************************************************************
* Exported Defines
*********************************************************************************************************************/
#define FBL_BOOTM_REPROGRAMMING_REQUEST_FLAG_STATE_ON   ((Fbl_BootM_ReprogrammingRequestFlagStateType)0xB5u)
#define FBL_BOOTM_REPROGRAMMING_REQUEST_FLAG_STATE_OFF  ((Fbl_BootM_ReprogrammingRequestFlagStateType)0x00u)

#define FBL_BOOTM_RESET_RESPONSE_FLAG_ON_ECU_RESET              ((Fbl_BootM_ResetResponseFlagStateType)0x02)
#define FBL_BOOTM_RESET_RESPONSE_FLAG_STATE_ON_DEFAULT_SESSION  ((Fbl_BootM_ResetResponseFlagStateType)0x01)
#define FBL_BOOTM_RESET_RESPONSE_FLAG_STATE_OFF                 ((Fbl_BootM_ResetResponseFlagStateType)0x00)

/*********************************************************************************************************************
* Exported Macros
*********************************************************************************************************************/


/*********************************************************************************************************************
* Exported Types
*********************************************************************************************************************/
typedef uint8  Fbl_BootM_ReprogrammingRequestFlagStateType;
typedef uint8   Fbl_BootM_ResetResponseFlagStateType;
typedef uint8  Fbl_BootM_ValidityFlagType;
typedef uint32  Fbl_BootM_CrcFlagType;

/*********************************************************************************************************************
* Exported Variables
*********************************************************************************************************************/
/*********************************************************************************************************************
* Exported Functions
*********************************************************************************************************************/

/**
 * @brief Read reprograming request flag
 *
 * @param flag [out] a pointer is written into.
 * @return Std_ReturnType result is E_OK        - succeeded.
 *                                  E_NOT_OK    - Failed.
 */
extern Std_ReturnType Fbl_BootM_ReadReprogrammingRequestFlag(Fbl_BootM_ReprogrammingRequestFlagStateType *flag);

/**
 * @brief Read validity flag
 *
 * @param flag [out] a pointer is written into.
 * @return Std_ReturnType result is E_OK        - succeeded.
 *                                  E_NOT_OK    - Failed.
 */
extern Std_ReturnType Fbl_BootM_ReadValidityFlags(Fbl_BootM_ValidityFlagType *flag);


/**
 * @brief Read validity flag
 *
 * @param flag [out] a pointer is written into.
 * @return Std_ReturnType result is E_OK        - succeeded.
 *                                  E_NOT_OK    - Failed.
 */
extern Std_ReturnType Fbl_BootM_WriteValidityFlags(Fbl_BootM_ValidityFlagType *flag);

#endif
