/***************************************************************************************************
 * Component : ECU_Startup.c
 * Date      : Mar 15 2019
 * Version   : 1.0
 * Description  : This module implements ECU startup sequences of TC397
 *
 **************************************************************************************************/

/*==================================================================================================
*                                         INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/
#define RTE_CORE

#include "Rte_Const.h"
#if !defined(RTE_VENDOR_MODE)
#error "Compiling an individual task file but RTE_VENDOR_MODE not defined. Compiling a stale file?"
#endif /* !defined(RTE_VENDOR_MODE) */
#if defined(RTE_USE_TASK_HEADER)
#include "ECU_StartupTask.h"
#else /* defined(RTE_USE_TASK_HEADER) */
#include "Os.h"
#endif /* defined(RTE_USE_TASK_HEADER) */
#if defined(RTE_REQUIRES_IOC)
#include "Ioc.h"
#endif /* defined(RTE_REQUIRES_IOC) */
#include "Rte.h"
#include "Rte_Intl.h"
#include "Rte_Type.h"
#include "Rte_DataHandleType.h"
/*==================================================================================================
*                                        LOCAL MACROS
==================================================================================================*/
/*==================================================================================================
*                                      FILE VERSION CHECKS
==================================================================================================*/
/*==================================================================================================
*                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
==================================================================================================*/

/*==================================================================================================
*                                       LOCAL CONSTANTS
==================================================================================================*/


/*==================================================================================================
*                                       LOCAL VARIABLES
==================================================================================================*/


/*==================================================================================================
*                                       GLOBAL CONSTANTS
==================================================================================================*/


/*==================================================================================================
*                                       GLOBAL VARIABLES
==================================================================================================*/

/*==================================================================================================
*                                   LOCAL FUNCTION PROTOTYPES
==================================================================================================*/
extern void BswM_MainFunction(void);
extern FUNC(void, RTE_CODE) SchM_IModeInit(void);
/* Runnable entity prototypes */
#define ECUM_START_SEC_CODE
#include "EcuM_MemMap.h" /*lint !e537 permit multiple inclusion */
FUNC(void, ECUM_CODE) EcuM_StartupTwo(void);
#define ECUM_STOP_SEC_CODE
#include "EcuM_MemMap.h" /*lint !e537 permit multiple inclusion */
/*==================================================================================================
*                                       LOCAL FUNCTIONS
==================================================================================================*/


/*==================================================================================================
*                                       GLOBAL FUNCTIONS
==================================================================================================*/

/* Function name :
* Description   :
* Parameter     :   None
* Return value  :   None
* Remarks       :
*/
#define OS_START_SEC_CODE
#include "Os_Memmap.h"
#include "ComM.h"
#include "Com_Prv.h"
Com_IpduGroupVector BswIpduGroupVec;

TASK(Core0_ECU_StartupTask)
{
   /* Box: Implicit Buffer Initialization begin */
   /* Box: Implicit Buffer Initialization end */
   /* Box: Implicit Buffer Fill begin */
   /* Box: Implicit Buffer Fill end */
   {
      /* static char cTest[10] = {0}; */
      /* Box: BSWImpl3_EcuM begin */
      EcuM_StartupTwo();
      /* Box: BSWImpl3_EcuM end */

      /* ETAS: SchM was initialized before BswM,
       * so mode initialization didn't trigger the BswM_RequestMode
       * Need to call it again
       */
      SchM_IModeInit();

      /* ETAS: BswM_MainFunction is scheduled with RTE,
       * Need to call BswM_MainFunction to trigger the start machine execution
       */
      BswM_MainFunction();
      //Com_SetIpduGroup(BswIpduGroupVec, ComConf_ComIPduGroup_ComIPduGroup_GCU_Tx, TRUE);
     //Com_SetIpduGroup(BswIpduGroupVec, ComConf_ComIPduGroup_ComIPduGroup_Rx, TRUE);
      //Com_IpduGroupControl(BswIpduGroupVec, TRUE);
      ComM_CommunicationAllowed(ComMConf_ComMChannel_Can_Network_CanNodeNum_01, TRUE);
      ComM_CommunicationAllowed(ComMConf_ComMChannel_Can_Network_CanNodeNum_00, TRUE);
   //  ComM_RequestComMode(ComMConf_ComMUser_ComMUser_Can_Network_Channel_Can_Network, COMM_FULL_COMMUNICATION);
   }
   /* Box: Implicit Buffer Flush begin */
   /* Box: Implicit Buffer Flush end */
   TerminateTask();
} /* ECU_StartupTask */
#define OS_STOP_SEC_CODE
#include "Os_Memmap.h"
