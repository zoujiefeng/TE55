/*
 * BswM_Callout_Stub.c
 *
 *  Created on: July 4, 2019
 *      Author: AGT1HC
 */
#include "Platform_Types.h"
#include "BswM_PBcfg.h"
#include "BswM_Generic.h"
#include "EcuM.h"
#include "SchM_BswM_Type.h"
/**********************************************************************************
   Function name    :  CheckCondition
   Description      :  the software simulation of Checking the wake up source
   Parameter  (in)  :
   Parameter  (inout)  :  None
   Parameter  (out)  :  None
   Return value    :  None
   Remarks      :
 ***********************************************************************************/
#define BSW_START_SEC_VAR_INIT_8
#include "Bsw_MemMap.h"
/*by default the wake-up is valid */
uint8 Condition = 1;
uint8 active_wakeup = 0;
uint8 passive_wakeup = 0;
#define BSW_STOP_SEC_VAR_INIT_8
#include "Bsw_MemMap.h"

extern uint8 shutdown_b;
#define RTE_ASW_BASE_START_SEC_CODE
#include "Rte_MemMap.h"
FUNC(Std_ReturnType, RTE_CODE) Rte_Write_ASW_BASE_PPort_SwcModeRequest_AppMode(VAR(uint8, AUTOMATIC) data);
#define RTE_ASW_BASE_STOP_SEC_CODE
#include "Rte_MemMap.h"

#define BSW_START_SEC_CODE
#include "Bsw_MemMap.h"
void CheckCondition(void);
void CheckCondition(void)
{
    switch (Condition)
    {
    case 1 /* active wake up */:
        /* code */
        active_wakeup=1;
        BswM_RequestMode(BSWM_CFG_USERID_BSWMSWCMODEREQUEST,RTE_MODE_MDG_App_Mode_ECUM_WAKEUP);
        break;
    case 2 /* passive wake up */:
        /* code */
        passive_wakeup=1;
        BswM_RequestMode(BSWM_CFG_USERID_BSWMSWCMODEREQUEST,RTE_MODE_MDG_App_Mode_ECUM_WAKEUP);
        break;
    default: /*unknown wake up */
        Rte_Write_ASW_BASE_PPort_SwcModeRequest_AppMode(SWC_REQUEST_SHUTDOWN);
        break; 
    }
    
}
#define BSW_STOP_SEC_CODE
#include "Bsw_MemMap.h"