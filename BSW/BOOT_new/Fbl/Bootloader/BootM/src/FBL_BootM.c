/*********************************************************************************************************************
*
* Description:     BootM module implementation
* FileName:        FBL_BootM.c
* Company:         INVT (www.invt.com.cn)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright INVT 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
*/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "FBL_BootM.h"
#include "CanSM_ComM.h"
#include "Dcm.h"
#include "FBL_DataM.h"
#include "EcuMgr.h"
#include "BLSM_CallOuts.h"
#include "Os_TimeServices.h"
#include "UcbSwap.h"
#include "BLSM.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/

/**
 * @brief
 *
 */
typedef enum
{
    FBL_BOOTM_CMPSTATE_NOT_INIT,
    FBL_BOOTM_CMPSTATE_INIT
} Fbl_BootM_CmpStateType;

/**
 * @brief
 *
 */
typedef enum
{
    FBL_BOOTM_SYSTEM_STATE_RUNNING,
    FBL_BOOTM_SYSTEM_STATE_PRE_RUNNING
} Fbl_BootM_SystemStateType;

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/
/* Component status */
static Fbl_BootM_CmpStateType Fbl_BootM_CmpState = FBL_BOOTM_CMPSTATE_NOT_INIT;
/* Main function state variables */
static Fbl_BootM_SystemStateType Fbl_BootM_CurrentSystemState = FBL_BOOTM_SYSTEM_STATE_PRE_RUNNING;
static boolean Fbl_BootM_DefaultSessionSwitched = FALSE;
uint32 ProgramWrite_TimerThreshold = 0U;
uint32 ProgramErase_TimerThreshold = 0U;
uint32 StayInBoot_TimerThreshold = 0U;
#define PROGRAMWRITE_THRESHOLD_LIMIT_TIME	20000U   //ms
#define PROGRAMERASE_THRESHOLD_LIMIT_TIME	80000U   //ms
#define STAYINBOOT_THRESHOLD_LIMIT_TIME     20000U   //ms
Dcm_SesCtrlType Fbl_BootM_PreviousSession = DCM_DEFAULT_SESSION;
boolean Fbl_BootM_bSessionReset = FALSE;


/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Variables Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/
static void Fbl_BootM_DcmSessionMonitor(void);
static Std_ReturnType Fbl_BootM_ClearReprogrammingRequestFlag(void);
/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_BootM 001] */
/* Implement Bootloader Session transition in accordance with ISO14229 */
static void Fbl_BootM_DcmSessionMonitor(void)
{
    Dcm_SesCtrlType currSession;
    Fbl_BootM_ReprogrammingRequestFlagStateType reprogrammingRequestFlagState;

    (void)Fbl_BootM_ReadReprogrammingRequestFlag(&reprogrammingRequestFlagState);
    /* There is no need to check the return value because Dcm_GetSesCtrlType always returns E_OK*/
    (void)Dcm_GetSesCtrlType(&currSession);

    if(TRUE == Fbl_BootM_bSessionReset)
    {
        BSW_vidSetDefFromBootFlag();

        EcuMgr_PerformReset();
    }

    if (((currSession != DCM_PROGRAMMING_SESSION) && (Fbl_BootM_PreviousSession == DCM_PROGRAMMING_SESSION)) 
    ||  ((currSession == DCM_DEFAULT_SESSION) && (Fbl_BootM_DefaultSessionSwitched == TRUE)))
    {
        /*Reset ECu when non-default session has been timeout or after a ROLLBACK process has done!*/
        if(DCM_EXTENDED_DIAGNOSTIC_SESSION == currSession)
        {
            BSW_vidSetExtFromProgFlag();
        }
        EcuMgr_PerformReset();
    }

    if (FBL_BOOTM_REPROGRAMMING_REQUEST_FLAG_STATE_ON == reprogrammingRequestFlagState)
    {
        (void)Fbl_BootM_ClearReprogrammingRequestFlag();
    }

    if( TRUE == OS_Timer32_IsStarted (ProgramWrite_TimerThreshold))
    {
        if((TRUE == OS_Timer32_IsElapsed(ProgramWrite_TimerThreshold, PROGRAMWRITE_THRESHOLD_LIMIT_TIME)))
        {
            EcuMgr_PerformReset();
        }
    }

    if( TRUE == OS_Timer32_IsStarted (ProgramErase_TimerThreshold))
    {
        if((TRUE == OS_Timer32_IsElapsed(ProgramErase_TimerThreshold, PROGRAMERASE_THRESHOLD_LIMIT_TIME)))
        {
            EcuMgr_PerformReset();
        }
    }

    if( TRUE == OS_Timer32_IsStarted (StayInBoot_TimerThreshold))
    {
        if((TRUE == OS_Timer32_IsElapsed(StayInBoot_TimerThreshold, STAYINBOOT_THRESHOLD_LIMIT_TIME)))
        {
            EcuMgr_PerformReset();
        }
    }

    Fbl_BootM_DefaultSessionSwitched = FALSE;
    Fbl_BootM_PreviousSession = currSession;
}

/* [$Satisfies $LEAR_FBL_DD_BootM 002] */
/**
 * @brief clear the reporgramming flag. 
 *        It will change this flag to FBL_BOOTM_REPROGRAMMING_REQUEST_FLAG_STATE_OFF
 * 
 * @return Std_ReturnType result is E_OK        - succeeded.
 *                                  E_NOT_OK    - Failed.
 */
static Std_ReturnType Fbl_BootM_ClearReprogrammingRequestFlag(void)
{
    Std_ReturnType ret = E_NOT_OK;
    Fbl_BootM_ReprogrammingRequestFlagStateType flag = FBL_BOOTM_REPROGRAMMING_REQUEST_FLAG_STATE_OFF;
    ret = FBL_DataM_WriteNvmReprogrammingRequestFlag((const uint8 *)&flag);
    return ret;
}
/*********************************************************************************************************************
* Export Functions Implementation
*********************************************************************************************************************/
void Fbl_vidStartStayInbootTimer(void)
{
    (void)OS_Timer32_Start(&StayInBoot_TimerThreshold);
}

void Fbl_vidStartEraseTimer(void)
{
    (void)OS_Timer32_Stop(&StayInBoot_TimerThreshold);
    (void)OS_Timer32_Start(&ProgramErase_TimerThreshold);
}

void Fbl_vidStopEraseTimer(void)
{
    (void)OS_Timer32_Stop(&ProgramErase_TimerThreshold);
}

void Fbl_vidStartWriteTimer(void)
{
    (void)OS_Timer32_Stop(&StayInBoot_TimerThreshold);
    (void)OS_Timer32_Start(&ProgramWrite_TimerThreshold);
}

void Fbl_vidStopWriteTimer(void)
{
    (void)OS_Timer32_Stop(&ProgramWrite_TimerThreshold);
}

/* [$Satisfies $LEAR_FBL_DD_BootM 101] */
/**
 * @brief Initialize bootM component
 * @return None
 */
void Fbl_BootM_Init(void)
{
    Fbl_BootM_CmpState = FBL_BOOTM_CMPSTATE_INIT;
    Fbl_BootM_CurrentSystemState = FBL_BOOTM_SYSTEM_STATE_PRE_RUNNING;
}

/* [$Satisfies $LEAR_FBL_DD_BootM 102] */
/**
 * @brief De-initialize BootM component
 * @return None
 */
void Fbl_BootM_DeInit(void)
{
    Fbl_BootM_CmpState = FBL_BOOTM_CMPSTATE_NOT_INIT;
}

/* [$Satisfies $LEAR_FBL_DD_BootM 103] */
/**
 * @brief Service is monitor bootloader sesstion transition.
 * @return None
 */
void Fbl_BootM_MainFunction(void)
{
    ComM_ModeType commStatus;
    ComM_ModeType commStatus_01;
    Std_ReturnType opResult;
    Std_ReturnType opResult_01;

    if (Fbl_BootM_CmpState == FBL_BOOTM_CMPSTATE_INIT)
    {
        switch (Fbl_BootM_CurrentSystemState)
        {
        case FBL_BOOTM_SYSTEM_STATE_PRE_RUNNING:
            opResult = CanSM_GetCurrentComMode(ComMConf_ComMChannel_ComMChannel_Can_Network_Channel_01, &commStatus);
            opResult_01 = CanSM_GetCurrentComMode(ComMConf_ComMChannel_ComMChannel_Can_Network_Channel_03, &commStatus_01);
            
            if((opResult == E_OK)
			&& (opResult_01 == E_OK)
			&& (COMM_FULL_COMMUNICATION == commStatus)
			&& (COMM_FULL_COMMUNICATION == commStatus_01))
            {
                /*BootM transition state to FBL_BOOTM_SYSTEM_STATE_RUNNING */
                Fbl_BootM_CurrentSystemState = FBL_BOOTM_SYSTEM_STATE_RUNNING;
            }
            break;
        case FBL_BOOTM_SYSTEM_STATE_RUNNING:
            /*Call session monitor service*/
            Fbl_BootM_DcmSessionMonitor();
            break;
        default:
            break;
        }
    }
}

/* [$Satisfies $LEAR_FBL_DD_BootM 104] */
/**
 * @brief Callback from DCM to notify whenever the session change.
 * 
 */
FUNC(void, DCM_APPL_CODE)
DcmAppl_Switch_DcmDiagnosticSessionControl(VAR(Dcm_SesCtrlType, AUTOMATIC) SessionMode)
{
    static boolean Fbl_BootM_FirstEntrySession = TRUE;
    if (TRUE == Fbl_BootM_FirstEntrySession)
    {
        Fbl_BootM_FirstEntrySession = FALSE;
        Fbl_BootM_DefaultSessionSwitched = FALSE;
    }
    else
    {
        if (SessionMode == DCM_DEFAULT_SESSION)
        {
            Fbl_BootM_DefaultSessionSwitched = TRUE;
        }
    }
}


/* [$Satisfies $LEAR_FBL_DD_BootM 109] */
/**
 * @brief Fbl_BootM_EcuState is a condition function that MCU will whether jump to Application or do
 *        another job (ex. stay-in-boot feature).
 * @return None.
 */
Fbl_BootM_ReprogrammingRequestFlagStateType reprogrammingRequestState;
Fbl_BootM_ValidityFlagType validityLogicalBlocks;

boolean SwapReq = FALSE;
boolean StayInBootReq = FALSE;


void Fbl_BootM_CheckEcuState(void)
{
   /*Verify whether all logical blocks are valid or not, also make sure that all logical block are saved in nonvolatile memory*/
   (void)Fbl_BootM_ReadReprogrammingRequestFlag(&reprogrammingRequestState);
   (void)Fbl_BootM_ReadValidityFlags(&validityLogicalBlocks);

   if(TRUE == BSW_bCheckStayInBootState())
   {
      /* Clear ram request */       
      BSW_vidClearStayInBootReq();
      /* Stay in boot */
      StayInBootReq = TRUE;
      /*Enable INVT flashing process*/
      FBL_BLSM_INVTProcessPassCheck = TRUE;
      (void)OS_Timer32_Start(&StayInBoot_TimerThreshold);
   }
   else if(TRUE == BSW_bCheckSwapReqState())
   {
      /* Clear ram request */
      BSW_vidClearSwapReq();
      /* Swap */
      SwapReq = TRUE;
      (void)Swap_vidTriggerSwap();
   }
   /*No external reprogramming request - Check the App whether is valid or not*/
   else if(((validityLogicalBlocks & (uint8)(ECUMGR_STATUS_INFO_BLOCKS_VALIDITY << (Swap_u8GetActiveBank() * 4))) == 0u)
          && (FBL_BOOTM_REPROGRAMMING_REQUEST_FLAG_STATE_ON != reprogrammingRequestState))
   {
#ifdef DEVELOPMENT
      BLSM_EnableStayInBoot();
#else
   /*Jump to Application*/
   EcuMgr_JumpToApplication();
#endif
   }
   else
   {
      /* Stay in boot */
   }
}
