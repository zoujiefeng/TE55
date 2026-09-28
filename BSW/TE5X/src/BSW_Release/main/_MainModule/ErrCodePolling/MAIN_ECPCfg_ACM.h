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
   eMAIN_J1939_SPN_IDX_520715  = 0,
   eMAIN_J1939_SPN_IDX_520716,
   eMAIN_J1939_SPN_IDX_520717,
   eMAIN_J1939_SPN_IDX_520718,
   eMAIN_J1939_SPN_IDX_520730,
   eMAIN_J1939_SPN_IDX_520729,
   eMAIN_J1939_SPN_IDX_520719,
   eMAIN_J1939_SPN_IDX_520720,
   eMAIN_J1939_SPN_IDX_520722,
   eMAIN_J1939_SPN_IDX_520723,
   eMAIN_J1939_SPN_IDX_520724,
   eMAIN_J1939_SPN_IDX_520725,
   eMAIN_J1939_SPN_IDX_520726,
   eMAIN_J1939_SPN_IDX_520728,
   eMAIN_J1939_SPN_IDX_520727,
   eMAIN_J1939_SPN_MAX_NO
};

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* __MAIN_ERR_CODE_POLLING_CFG_H_ */
