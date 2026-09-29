#ifndef FBL_INFRA_ECUMGR_INCLUDE_ECUMGR_DIDSERVICES_H_
#define FBL_INFRA_ECUMGR_INCLUDE_ECUMGR_DIDSERVICES_H_

/*******************************************************************************
**                      Includes
*******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/
/**
 * @brief: Store Finger Printer information
 *
 * @return Std_ReturnType
 * 							- E_OK: Date is valid
 * 							- E_NOT_OK: Date is invalid
 */
extern Std_ReturnType EcuMgr_DIDService_StoreFingerPrintInfor(const uint8* data);

/**
 * @brief: Write Finger Printer information to Non-Volatile memory
 *
 * @return Std_ReturnType
 * 							- E_OK: Successfully
 * 							- E_NOT_OK: Fail
 */
extern Std_ReturnType EcuMgr_DIDService_WriteFingerPrintInfor(uint32 blockID);

/**
 * @brief: Read Finger Printer information to Non-Volatile memory
 *
 * @return Std_ReturnType
 * 							- E_OK: Successfully
 * 							- E_NOT_OK: Fail
 */
extern Std_ReturnType EcuMgr_DIDService_ReadFingerPrintInfor(uint8* data);

extern Std_ReturnType EcuMgr_DIDService_Read0xF187(uint8* data);
extern Std_ReturnType EcuMgr_DIDService_Read0xF18A(uint8* data);
extern Std_ReturnType EcuMgr_DIDService_Read0xF18B(uint8* data);
extern Std_ReturnType EcuMgr_DIDService_Read0xF18C(uint8* data);
extern Std_ReturnType EcuMgr_DIDService_Read0xF190(uint8* data);
extern Std_ReturnType EcuMgr_DIDService_Read0xF193(uint8* data);
extern Std_ReturnType EcuMgr_DIDService_Read0xF195(uint8* data);
extern Std_ReturnType EcuMgr_DIDService_Read0xF19A(uint8* data);
extern Std_ReturnType EcuMgr_DIDService_Read0xF1B7(uint8* data);

/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/

#endif /* FBL_INFRA_ECUMGR_INCLUDE_ECUMGR_DIDSERVICES_H_ */
