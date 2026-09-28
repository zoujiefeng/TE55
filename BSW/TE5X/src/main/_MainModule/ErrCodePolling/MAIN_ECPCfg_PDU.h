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
   eMAIN_J1939_SPN_IDX_523900  = 0,
   eMAIN_J1939_SPN_IDX_523901,
   eMAIN_J1939_SPN_IDX_523902,
   eMAIN_J1939_SPN_IDX_523903,
   eMAIN_J1939_SPN_IDX_523904,
   eMAIN_J1939_SPN_IDX_523905,
   eMAIN_J1939_SPN_IDX_523906,
   eMAIN_J1939_SPN_IDX_523907,
   eMAIN_J1939_SPN_IDX_523908,
   eMAIN_J1939_SPN_IDX_523909,
   eMAIN_J1939_SPN_IDX_523910,
   eMAIN_J1939_SPN_IDX_523911,
   eMAIN_J1939_SPN_IDX_523912,
   eMAIN_J1939_SPN_IDX_523913,
   eMAIN_J1939_SPN_IDX_523914,
   eMAIN_J1939_SPN_IDX_523915,
   eMAIN_J1939_SPN_IDX_523916,
   eMAIN_J1939_SPN_IDX_523917,
   eMAIN_J1939_SPN_IDX_523918,
   eMAIN_J1939_SPN_IDX_523919,

   eMAIN_J1939_SPN_MAX_NO
};

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* __MAIN_ERR_CODE_POLLING_CFG_H_ */
