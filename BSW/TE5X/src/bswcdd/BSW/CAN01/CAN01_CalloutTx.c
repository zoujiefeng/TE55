/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Com.h"
#include "Com_Cbk.h"
#include "CAN01_DEF.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"
boolean Bsw_IPduCallout_CanNodeNum_01_Tx_03(PduIdType ID, P2VAR(uint8, AUTOMATIC, COM_VAR_NOINIT) ipduD)
{
   return TRUE;
}
#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
