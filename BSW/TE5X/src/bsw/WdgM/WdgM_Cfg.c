

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
*/
#include "Os.h"
/*
#if (!defined(OS_AR_RELEASE_MAJOR_VERSION) || (OS_AR_RELEASE_MAJOR_VERSION != 4))
#error "AUTOSAR major version undefined or mismatched"
#endif
#if (!defined(OS_AR_RELEASE_MINOR_VERSION) || (OS_AR_RELEASE_MINOR_VERSION != 2))
#error "AUTOSAR minor version undefined or mismatched"
#endif
*/
#include "WdgM_Prv.h"

/*
 ***************************************************************************************************
 * Variables
 ***************************************************************************************************
 */


/* There is no deadline Supervision configured in valid WdgMMode so corresponding Variables, data types are not defined....!!! */




/* There is no External graph configured in valid WdgMMode so corresponding Variables, data types are not defined....!!! */



/*
 ***************************************************************************************************
 * Dynamic Variables
 ***************************************************************************************************
 */
#define WDGM_START_SEC_VAR_FAST_CLEARED_UNSPECIFIED
#include "WdgM_MemMap.h"
/* TRACE[WDGM200] Values of local supervsion should be described in WdgM_LocalStatusType */
WdgM_SupervisedEntityDynType WdgM_SupervisedEntityDyn[5];  /* WDGM242 */
static WdgM_CheckpointDynType WdgM_CheckpointDyn[9];

WdgM_InternalGraph_StatusType WdgM_InternalGraph_StatusDyn[WDGM_MAX_INTERNAL_GRAPH];

#define WDGM_STOP_SEC_VAR_FAST_CLEARED_UNSPECIFIED
#include "WdgM_MemMap.h"

/*
 **********************************************************************************************************************
 * Defines/Macros
 **********************************************************************************************************************
*/

#define WDGM_START_SEC_CONFIG_DATA_FAST_UNSPECIFIED
#include "WdgM_MemMap.h"

const WdgM_CheckpointType WdgM_Checkpoint[9] =
{   
    /* PtrToCheckpointDyn                          Comment */ 
    
    {   &WdgM_CheckpointDyn[0]                       /* WdgMSupervisedEntityId: 0, WdgMCheckpointId: 0 */        },    
    {   &WdgM_CheckpointDyn[1]                       /* WdgMSupervisedEntityId: 1, WdgMCheckpointId: 0 */        },    
    {   &WdgM_CheckpointDyn[2]                       /* WdgMSupervisedEntityId: 2, WdgMCheckpointId: 0 */        },    
    {   &WdgM_CheckpointDyn[3]                       /* WdgMSupervisedEntityId: 3, WdgMCheckpointId: 0 */        },    
    {   &WdgM_CheckpointDyn[4]                       /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 0 */        },
    {   &WdgM_CheckpointDyn[5]                       /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 1 */        },
    {   &WdgM_CheckpointDyn[6]                       /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 2 */        },
    {   &WdgM_CheckpointDyn[7]                       /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 3 */        },
    {   &WdgM_CheckpointDyn[8]                       /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 4 */        }
};


const WdgM_SupervisedEntityType WdgM_SupervisedEntity[5]=
{   
    /* NoOfCheckpoint             PartionEnabled             TimerId                                        OsApplicationId                                PtrToCheckpoint                                PtrToSupervisedEntityDyn                        hasInternalGraph           idxInternalGraphCPProperty                       Comment */         
    
    {  1                        ,  FALSE                    ,  WDGM_INVALID_TIMER_ID                        ,  INVALID_OSAPPLICATION                        ,  &WdgM_Checkpoint[0]                          ,   &WdgM_SupervisedEntityDyn[0]                 ,  FALSE                    ,  0                            /* WdgMSupervisedEntityId: 0 */              },
    {  1                        ,  FALSE                    ,  WDGM_INVALID_TIMER_ID                        ,  INVALID_OSAPPLICATION                        ,  &WdgM_Checkpoint[1]                          ,   &WdgM_SupervisedEntityDyn[1]                 ,  FALSE                    ,  0                            /* WdgMSupervisedEntityId: 1 */              },
    {  1                        ,  FALSE                    ,  WDGM_INVALID_TIMER_ID                        ,  INVALID_OSAPPLICATION                        ,  &WdgM_Checkpoint[2]                          ,   &WdgM_SupervisedEntityDyn[2]                 ,  FALSE                    ,  0                            /* WdgMSupervisedEntityId: 2 */              },
    {  1                        ,  FALSE                    ,  WDGM_INVALID_TIMER_ID                        ,  INVALID_OSAPPLICATION                        ,  &WdgM_Checkpoint[3]                          ,   &WdgM_SupervisedEntityDyn[3]                 ,  FALSE                    ,  0                            /* WdgMSupervisedEntityId: 3 */              },
    {  5                        ,  FALSE                    ,  WDGM_INVALID_TIMER_ID                        ,  INVALID_OSAPPLICATION                        ,  &WdgM_Checkpoint[4]                          ,   &WdgM_SupervisedEntityDyn[4]                 ,  TRUE                     ,  0                            /* WdgMSupervisedEntityId: 4 */              }
};

const WdgM_InternalGraph_CPPropertyType WdgM_InternalGraph_CPProperty[5]=
{   
    /* PosinInternalGraph           noofdestCP                      idxofdestCP                     intgraphIdx                     Comment */           
    
    {  WDGM_POSNGRAPH_INITIAL_E      , 1                             , 0                             ,0                             /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 0 */        } ,
    {  WDGM_POSNGRAPH_INTERMEDIATE_E , 1                             , 1                             ,0                             /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 1 */        } ,
    {  WDGM_POSNGRAPH_INTERMEDIATE_E , 1                             , 2                             ,0                             /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 2 */        } ,
    {  WDGM_POSNGRAPH_INTERMEDIATE_E , 1                             , 3                             ,0                             /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 3 */        } ,
    {  WDGM_POSNGRAPH_FINAL_E        , 0                             , 0                             ,0                             /* WdgMSupervisedEntityId: 4, WdgMCheckpointId: 4 */        } 
};

const WdgM_CheckpointIdType WdgM_InternalGraph_DestCheckpoints[4]=
{   
    /* DestCPID                           Comment */ 
    1                             ,/* WdgMSupervisedEntityId: 4, WdgMSourceCheckpointId: 0 */   
    2                             ,/* WdgMSupervisedEntityId: 4, WdgMSourceCheckpointId: 1 */   
    3                             ,/* WdgMSupervisedEntityId: 4, WdgMSourceCheckpointId: 2 */   
    4                              /* WdgMSupervisedEntityId: 4, WdgMSourceCheckpointId: 3 */    
};
const WdgM_AliveSupervisionType WdgM_AliveSupervision[5] =
{
    /* MinMargin          MaxMargin                  AliveSupervisionCheckpointId     SupervisedEntityId              ExpectedAliveIndications   SupervisionReferenceCycle   Comment */ 
   
    {   0                   ,  2                   ,  0                              ,  3                             ,  10                      ,  10                       /* WdgMMode: 0  AliveSuperVision: Alive_Supervision_Entity1 */                  },   
    {   5                   ,  5                   ,  0                              ,  0                             ,  9                       ,  10                       /* WdgMMode: 1  AliveSuperVision: Alive_Supervision_CPU1 */                     },
    {   5                   ,  5                   ,  0                              ,  1                             ,  9                       ,  10                       /* WdgMMode: 1  AliveSuperVision: Alive_Supervision_CPU2 */                     },
    {   5                   ,  5                   ,  0                              ,  2                             ,  9                       ,  10                       /* WdgMMode: 1  AliveSuperVision: Alive_Supervision_CPU3 */                     },
    {   5                   ,  5                   ,  0                              ,  3                             ,  9                       ,  10                       /* WdgMMode: 1  AliveSuperVision: Alive_Supervision_Entity1 */                  }
};

/* No WdgMDeadlineSupervision configured so corresponding code is not generated. */


const WdgM_LocalStatusParamsType WdgM_LocalStatusParams[6] =
{
    /* FailedAliveSupervisionRefCycleTol               SupervisedEntityId                              Comment */                                    
    
    {   2                                            ,  3                                              /* WdgMMode: 0  WdgMLocalStatusParams: WdgMLocalStatusParams_Alive_Supervision_Entity1 */ },    
    {   0                                            ,  0                                              /* WdgMMode: 1  WdgMLocalStatusParams: WdgMLocalStatusParams_0 */               },
    {   0                                            ,  1                                              /* WdgMMode: 1  WdgMLocalStatusParams: WdgMLocalStatusParams_1 */               },
    {   0                                            ,  2                                              /* WdgMMode: 1  WdgMLocalStatusParams: WdgMLocalStatusParams_2 */               },
    {   0                                            ,  3                                              /* WdgMMode: 1  WdgMLocalStatusParams: WdgMLocalStatusParams_Alive_Supervision_Entity1 */ },
    {   0                                            ,  4                                              /* WdgMMode: 1  WdgMLocalStatusParams: WdgMLocalStatusParams_Logic_Supervision_Emtity1 */ }  
};


const WdgM_TriggerType WdgM_Trigger[2] =
{
    /* TriggerConditionValue(in mili seconds)          DeviceIdx                                       TriggerModeType             Comment */                                    
    
    {   40                                           ,  WdgIfConf_WdgIfDevice_WdgIfDevice            ,  WDGIF_FAST_MODE            /* WdgMMode: 0  WdgMTrigger: WdgMTrigger_FastMode */                            },    
    {   100                                          ,  WdgIfConf_WdgIfDevice_WdgIfDevice            ,  WDGIF_SLOW_MODE            /* WdgMMode: 1  WdgMTrigger: WdgMTrigger_SlowMode */                            } 
};

/* No WdgMExternalTransition configured for External Graph so corresponding code is not generated. */


const WdgM_PrvModeType WdgM_PrvMode[2] =
{       /* ExpiredSupervisionCycleTol                  SchMWdgMSupervisionCycle                                 SupervisionCycle(in mili seconds)               NoOfAliveSupervision                            NoOfDeadlineSupervision                         NoOfLocalStatusParams                           NoOfTrigger                                     PtrToAliveSupervision                           PtrToDeadlineSupervision                        PtrToLocalStatusParams                          PtrToTrigger                                    NoOfExternalGraphTransition                     PtrToExternalGraphTransition                    Comment */                                    
    
    {   0                                            ,  RTE_MODE_WdgMSupervisionCycle_SUPERVISION_CYCLE_0      ,  WDGM_SUPERVISION_CYCLE_0                     ,  1                                            ,  0                                            ,  1                                            ,  1                                            ,  &WdgM_AliveSupervision[0]                    ,  NULL_PTR                                     ,  &WdgM_LocalStatusParams[0]                   ,  &WdgM_Trigger[0]                             ,  0                                            , NULL_PTR                                       /* WdgMMode: WdgMMode_FastMode */            },
    {   0                                            ,  RTE_MODE_WdgMSupervisionCycle_SUPERVISION_CYCLE_0      ,  WDGM_SUPERVISION_CYCLE_0                     ,  4                                            ,  0                                            ,  5                                            ,  1                                            ,  &WdgM_AliveSupervision[1]                    ,  NULL_PTR                                     ,  &WdgM_LocalStatusParams[1]                   ,  &WdgM_Trigger[1]                             ,  0                                            , NULL_PTR                                       /* WdgMMode: WdgMMode_SlowMode */            }
};

const WdgM_ConfigType WdgM_Config =
{
    1                                                           , /* InitialMode */
    2                                                           , /* NoOfMode */
    WDGM_INVALID_DEM_EVENT_ID                                   , /* ErrorSupervision */
    WDGM_INVALID_DEM_EVENT_ID                                   , /* ErrorSetMode */ 
    NULL_PTR                                                    , /* PtrToRunningCounterValue */
    NULL_PTR                                                    , /* PtrToDeadlineIndices */
    &WdgM_PrvMode[0]                                            ,  /* PtrToMode */
    NULL_PTR                                                      /* PtrToExternalGraphIndices */
};


#define      WDGM_STOP_SEC_CONFIG_DATA_FAST_UNSPECIFIED
#include "WdgM_MemMap.h"

