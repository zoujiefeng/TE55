#ifndef __MAIN_ERR_CODE_POLLING_CFG_H_
#define __MAIN_ERR_CODE_POLLING_CFG_H_

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_ErrCodePolling.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct MAIN_ECPParam{
   /* Common param */
   uint8   u8LocFaultCode[MAIN_ECP_FAULT_CODE_MAX_NUM];

   /* User param */
   boolean bFaultLv0;
   boolean bFaultLv1;
   boolean bFaultLv2;
   boolean bFaultLv3;
   boolean bFaultLv4;
   boolean bFaultLv5;
}MAIN_ECPParam;

enum{
   eMAIN_J1939_SPN_IDX_523956  = 0,
   eMAIN_J1939_SPN_IDX_523957,
   eMAIN_J1939_SPN_IDX_523958,
   eMAIN_J1939_SPN_IDX_523959,
   eMAIN_J1939_SPN_IDX_523960,
   eMAIN_J1939_SPN_IDX_523961,
   eMAIN_J1939_SPN_IDX_523962,
   eMAIN_J1939_SPN_IDX_523963,
   eMAIN_J1939_SPN_IDX_523964,
   eMAIN_J1939_SPN_IDX_523965,
   eMAIN_J1939_SPN_IDX_523966,
   eMAIN_J1939_SPN_IDX_523967,
   eMAIN_J1939_SPN_IDX_523968,
   eMAIN_J1939_SPN_IDX_523969,
   eMAIN_J1939_SPN_IDX_523970,
   eMAIN_J1939_SPN_IDX_523971,
   eMAIN_J1939_SPN_IDX_523972,
   eMAIN_J1939_SPN_IDX_523973,
   eMAIN_J1939_SPN_IDX_524216,
   eMAIN_J1939_SPN_IDX_523948,
   eMAIN_J1939_SPN_IDX_523974,
   eMAIN_J1939_SPN_MAX_NO
};

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* __MAIN_ERR_CODE_POLLING_CFG_H_ */
