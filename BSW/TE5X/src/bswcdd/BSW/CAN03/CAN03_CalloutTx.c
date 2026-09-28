/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Com.h"
#include "Com_Cbk.h"
#include "CAN03_DEF.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"
boolean Bsw_IPduCallout_CanNodeNum_03_Tx_01(PduIdType ID, P2VAR(PduInfoType, AUTOMATIC, COM_VAR_NOINIT) ptr)
{
   return TRUE;
}

boolean Bsw_IPduCallout_CanNodeNum_03_Tx_02(PduIdType ID, P2VAR(PduInfoType, AUTOMATIC, COM_VAR_NOINIT) ptr)
{
   return TRUE;
}
#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
