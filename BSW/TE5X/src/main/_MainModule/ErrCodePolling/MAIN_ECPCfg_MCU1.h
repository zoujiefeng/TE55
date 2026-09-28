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
   eMAIN_J1939_SPN_IDX_523931  = 0,
   eMAIN_J1939_SPN_IDX_523932,
   eMAIN_J1939_SPN_IDX_523933,
   eMAIN_J1939_SPN_IDX_523934,
   eMAIN_J1939_SPN_IDX_523935,
   eMAIN_J1939_SPN_IDX_523936,
   eMAIN_J1939_SPN_IDX_523937,
   eMAIN_J1939_SPN_IDX_523938,
   eMAIN_J1939_SPN_IDX_523939,
   eMAIN_J1939_SPN_IDX_523940,
   eMAIN_J1939_SPN_IDX_523941,
   eMAIN_J1939_SPN_IDX_523942,
   eMAIN_J1939_SPN_IDX_523943,
   eMAIN_J1939_SPN_IDX_523944,
   eMAIN_J1939_SPN_IDX_523945,
   eMAIN_J1939_SPN_IDX_523946,
   eMAIN_J1939_SPN_IDX_523947,
   eMAIN_J1939_SPN_IDX_524216,
   eMAIN_J1939_SPN_IDX_168,
   eMAIN_J1939_SPN_IDX_523948,
   eMAIN_J1939_SPN_IDX_523949,
   eMAIN_J1939_SPN_MAX_NO
};


/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* __MAIN_ERR_CODE_POLLING_CFG_H_ */
