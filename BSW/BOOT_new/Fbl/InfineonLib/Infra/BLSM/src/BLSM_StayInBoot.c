/*********************************************************************************************************************
*
* Description:     BLSM module implementation 
* FileName:        BLSM_StayInBoot.c
* Company:         invt GmbH (www.invt.com)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright invt GmbH 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
UCN1HC          2020/11/09
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#ifdef DEVELOPMENT

#include "BLSM.h"
#include "BLSM_CallOuts.h"
#include "Dcm.h"
#include "CanSM_ComM.h"
#include "ComM.h"
#include "Os_TimeServices.h"
#include "EcuMgr.h"
/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
#define STAY_IN_BOOT_TIMEOUT   20


/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/
static boolean StayInBoot_IsEnable = FALSE;
static boolean StayInBoot_IsIndicated = FALSE;

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_BLSM 111] */
void BLSM_StayInBootMonitorMainFunction(void)
{
    ComM_ModeType CurrComMode;
    ComM_ModeType CurrComMode_01;
    Dcm_SesCtrlType currSession;
    static uint32 StayInBoot_Timer = 0u;
    static boolean StayInBoot_IsActivated = FALSE;    
    
    if(TRUE == StayInBoot_IsEnable)
    {
        if(FALSE == StayInBoot_IsActivated)
        {
            if((E_OK == CanSM_GetCurrentComMode(ComMConf_ComMChannel_ComMChannel_Can_Network_Channel_01, &CurrComMode))
            && (E_OK == CanSM_GetCurrentComMode(ComMConf_ComMChannel_ComMChannel_Can_Network_Channel_01, &CurrComMode_01)))
            {
                if((CurrComMode == COMM_FULL_COMMUNICATION)
				&& (CurrComMode_01 == COMM_FULL_COMMUNICATION))
                {
                    StayInBoot_IsActivated = TRUE;
                    /*Start the Stayinboot timer*/
                    OS_Timer32_Start(&StayInBoot_Timer);
                }
            }
            else {/*Nothing*/}
        }
        else
        {
            /*Check if StayInBoot_IsIndicated is true or not*/
        	(void)Dcm_GetSesCtrlType(&currSession);
            if((TRUE == StayInBoot_IsIndicated) || (DCM_PROGRAMMING_SESSION == currSession))
            {
                /* Keep the Stay in bootloader up*/
                StayInBoot_IsEnable = FALSE;
            }
            else
            {
                /*Check if the timer has timed-out*/
                if(TRUE == OS_Timer32_IsElapsed(StayInBoot_Timer, STAY_IN_BOOT_TIMEOUT))
                {
                    //Jump into the Application
                    EcuMgr_JumpToApplication();
                }
                else {/*Nothing*/}
            }

        }
    }
    else {/*Nothing*/}
}

/* [$Satisfies $LEAR_FBL_DD_BLSM 112] */
void BLSM_EnableStayInBoot(void)
{
    StayInBoot_IsEnable = TRUE;
}

/* [$Satisfies $LEAR_FBL_DD_BLSM 113] */
void BLSM_IndicatedStayInBoot(void)
{
    StayInBoot_IsIndicated = TRUE;
}

#else
 /* Do nothing */
#endif

