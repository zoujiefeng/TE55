
#ifndef     ECUMGR_CFG_BOOTTARGET_H
#define     ECUMGR_CFG_BOOTTARGET_H

/*******************************************************************************
**                      Includes
*******************************************************************************/
#include "Std_Types.h"
#include "EcuMgr_Utils.h"
/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
#define ECUMGR_CRC_ECU_INITIAL                            (0xFFFFFFFFU)
#define ECUMGR_SEED_SIZE                                (16U)
#define ECUMGR_KEY_SIZE                                (16U)

#define ECUMGR_KEY_SIZE_INVT                                   (4U)
#define ECUMGR_SEED_SIZE_INVT                                 (4U)

/*Block Information from customer*/
/* A BANK */
#define ECUMGR_STATUS_INFO_WHOLE_BLOCKS_VALIDITY      B(00000111)

#define ECUMGR_STATUS_INFO_APP_VALIDITY         B(00000001)
#define ECUMGR_STATUS_INFO_CAL_VALIDITY         B(00000010)
#define ECUMGR_STATUS_INFO_BLOCKS_VALIDITY      B(00000011)
#define ECUMGR_STATUS_INFO_BOOT_VALIDITY        B(00000100)

#ifdef USE_EIGH_BYTES
#define ECUMGR_STATUS_INFO_BLOCKS_VALIDITY      (0xA1A2A3A4B1B2B3B4U)
#define ECUMGR_STATUS_INFO_BLOCKS_NOVALIDITY    (0xFFFFFFFFFFFFFFFFU)

#define ECUMGR_STATUS_INFO_APP_VALIDITY         (0xFFFFFFFFB1B2B3B4U)
#define ECUMGR_STATUS_INFO_APP_NOVALIDITY       (0x00000000FFFFFFFFU)

#define ECUMGR_STATUS_INFO_CAL_VALIDITY         (0xA1A2A3A4FFFFFFFFU)
#define ECUMGR_STATUS_INFO_CAL_NOVALIDITY       (0xFFFFFFFF00000000U)
#endif
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
 * @brief get Seed in accordance of UDS service
 *
 * @param seedLen [in] lenght of seed 
 * @param accDataRecSize [in] size of record data
 * @param securityAccessDataRecord [in] security acces of record data
 * @param seed [out] the given seed pointer is written into
 * @return Std_ReturnType result is E_OK        - succeeded.
 *                                  E_NOT_OK    - Failed.
 */
extern Std_ReturnType EcuMgr_GetSeed( uint32 seedLen,
                                        uint32 accDataRecSize,
                                        uint8 *securityAccessDataRecord,
                                        uint8 *seed);

extern Std_ReturnType EcuMgr_GetSeed_INVT( uint32 seedLen,
                                        uint32 accDataRecSize,
                                        uint8 *securityAccessDataRecord,
                                        uint8 *seed);
/**
 * @brief compare key in accordance of uds service
 *
 * @param keyLen [in] length of key
 * @param key [in] key write to
 * @return Std_ReturnType result is E_OK        - succeeded.
 *                                  E_NOT_OK    - Failed.
 */
extern Std_ReturnType EcuMgr_CompareKey(  uint32 keyLen,
                                            const uint8 *key);

extern Std_ReturnType EcuMgr_CompareKey_INVT(  uint32 keyLen,
                                           const uint8 *key);

/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/
#endif

