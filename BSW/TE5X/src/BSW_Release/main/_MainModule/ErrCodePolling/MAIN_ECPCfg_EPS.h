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
   eMAIN_J1939_SPN_IDX_520615  = 0,
   eMAIN_J1939_SPN_IDX_520616,
   eMAIN_J1939_SPN_IDX_520617,
   eMAIN_J1939_SPN_IDX_520618,
   eMAIN_J1939_SPN_IDX_520619,
   eMAIN_J1939_SPN_IDX_520620,
   eMAIN_J1939_SPN_IDX_520622,
   eMAIN_J1939_SPN_IDX_520623,
   eMAIN_J1939_SPN_IDX_520624,
   eMAIN_J1939_SPN_IDX_520625,
   eMAIN_J1939_SPN_IDX_520626,
   eMAIN_J1939_SPN_IDX_520627,
   eMAIN_J1939_SPN_IDX_520628,
   eMAIN_J1939_SPN_IDX_520629,
   eMAIN_J1939_SPN_MAX_NO
};

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* __MAIN_ERR_CODE_POLLING_CFG_H_ */
