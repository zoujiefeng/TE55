/*
 * This is a template file. It defines integration functions necessary to complete RTA-BSW.
 * The integrator must complete the templates before deploying software containing functions defined in this file.
 * Once templates have been completed, the integrator should delete the #error line.
 * Note: The integrator is responsible for updates made to this file.
 *
 * To remove the following error define the macro NOT_READY_FOR_TESTING_OR_DEPLOYMENT with a compiler option (e.g. -D NOT_READY_FOR_TESTING_OR_DEPLOYMENT)
 * The removal of the error only allows the user to proceed with the building phase
 */
#ifndef NOT_READY_FOR_TESTING_OR_DEPLOYMENT
#error The content of this file is a template which provides empty stubs. The content of this file must be completed by the integrator accordingly to project specific requirements
#else
#warning The content of this file is a template which provides empty stubs. The content of this file must be completed by the integrator accordingly to project specific requirements
#endif /* NOT_READY_FOR_TESTING_OR_DEPLOYMENT */



#ifndef E2E_CALLOUT_H
#define E2E_CALLOUT_H


#endif /* E2E_CALLOUT_H */

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
 */
#include "E2E_Prv.h"
/*
 **********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************
*/

E2E_INLINE  uint8     E2E_Prv_P01CalcCRC8_CallOut(const E2E_P01ConfigType * const Config_pst, uint8 Counter_u8,
                                           const uint8 * const Data_pu8);
E2E_INLINE uint8 E2E_Prv_P02CalcCRC8H2F_CallOut(const E2E_P02ConfigType * const Config_pst, uint8 DataID_u8,
                                          const uint8 * const Data_pu8);
E2E_INLINE uint32   E2E_Prv_P04CalcCRC32P4_CallOut(const E2E_P04ConfigType * const Config_pst, const uint8 * const Data_pu8,
                                           uint16 Length_u16);
E2E_INLINE uint16   E2E_Prv_P05CalcCRC16_CallOut(const E2E_P05ConfigType * const Config_pst, const uint8 * const Data_pu8,
                                           uint16 Length_u16);
E2E_INLINE uint16   E2E_Prv_P06CalcCRC16_CallOut(const E2E_P06ConfigType * const Config_pst, const uint8 * const Data_pu8,
                                           uint16 Length_u16);
E2E_INLINE uint64   E2E_Prv_P07CalcCRC64_CallOut(const E2E_P07ConfigType * const Config_pst, const uint8 * const Data_pu8,
                                           uint32 Length_u32);
E2E_INLINE uint8 E2E_Prv_P11CalcCRC8_CallOut(const E2E_P11ConfigType * const ConfigPtr, const uint8 * const Data_pu8);

E2E_INLINE uint8 E2E_Prv_P22CalcCRC8H2F_CallOut(const E2E_P22ConfigType * const ConfigPtr, const uint8 * const Data_pu8,
                                         uint32 Length_u32, uint8 value_u8);

E2E_INLINE uint32   E2E_Prv_P44CalcCRC32P4_CallOut(const E2E_P44ConfigType * const Config_pst, const uint8 * const Data_pu8,
                                           uint16 Length_u16);

