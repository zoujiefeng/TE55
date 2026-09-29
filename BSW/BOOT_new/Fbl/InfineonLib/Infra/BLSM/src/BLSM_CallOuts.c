/*********************************************************************************************************************
*
* Description:     BLSM module implementation 
* FileName:        BLSM_CallOuts.c
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
UCN1HC          07/07/2019
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "PduR.h"
#include "CanIf.h"
#include "CanTp.h"
#include "CanSM.h"
#include "CanTrcv.h"
#include "NvM.h"
#include "Fee.h"
#include "MemIf.h"
#include "Dcm.h"

#include "FBL_DataM.h"
#include "FBL_BootM.h"

#include "BLSM_CallOuts.h"

#include "BLSM.h"

#include "EcuMgr.h"
#include "Sleep.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_BLSM 101] */
/**
 * @brief the first initialization of BLSM which is to initialise low level of MCU.
 * @return none
 *
 */
void Fbl_BLSM_InitOne (void)
{
    NvM_Rb_StatusType NvM_ReadAllStatusflag;
    MemIf_StatusType stMemIf_en;
    /*EcuMgr Initialization*/
    EcuMgr_Init();
    /*Fee_Init*/
    (void)Fee_Init(NULL_PTR);
    (void)Fee_Rb_EndInit();
    /*Nvm initialization */
    NvM_Init();
    /*DataM Init */
    Fbl_DataM_Init();
    /*Non-volatile memory read */
    NvM_ReadAll();
    do
    {
        NvM_MainFunction();
        MemIf_Rb_MainFunction();
        (void)NvM_Rb_GetStatus(&NvM_ReadAllStatusflag);
        stMemIf_en = MemIf_Rb_GetStatus();
    } while ((NvM_ReadAllStatusflag == NVM_RB_STATUS_BUSY) || (stMemIf_en == MEMIF_BUSY));
    /*Check the Ecu State.*/
    Fbl_BootM_CheckEcuState();
}

/* [$Satisfies $LEAR_FBL_DD_BLSM 102] */
/**
 * @brief the second initialization of BLSM which is to initialise the communication
 *          and its routine.
 * @return none
 */
void Fbl_BLSM_InitTwo (void)
{
    CanTrcv_Init(NULL_PTR);

    /*Initialize CanIf */
    CanIf_Init(NULL_PTR);
    /*Initialize CanSM */
    CanSM_Init(NULL_PTR);
    /*Initailize CanTp */
    CanTp_Init(NULL_PTR);
    /*Initialize PduR */
    PduR_Init(&PduR_Config);
}

/* [$Satisfies $LEAR_FBL_DD_BLSM 103] */
/**
 * @brief the third initialization of BLSM which is to initialise UDS service and its dependencies.
 * @return none.
 */
void Fbl_BLSM_InitThree (void)
{
    /*Initialize DCM module*/
    Dcm_Init(NULL_PTR);
    /*Start the sleep timer*/
    // Sleep_StartStopTimer();
}

/* [$Satisfies $LEAR_FBL_DD_BLSM 104] */
/**
 * @brief initialise bootloader Application.
 * @return None
 *
 */
void Fbl_BLSM_Initialize_App (void)
{
    Fbl_BootM_Init();
}
