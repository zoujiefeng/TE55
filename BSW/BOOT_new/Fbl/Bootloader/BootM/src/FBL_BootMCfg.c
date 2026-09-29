/*********************************************************************************************************************
*
* Description:     BootM module implementation
* FileName:        FBL_BootMCfg.c
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
#include "Dcm.h"
#include "FBL_BootMCfg.h"
#include "DcmCore_DslDsd_Prot.h"
#include "DcmDspUds_Dsc_Prot.h"
#include "FBL_DataM.h"
#include "Os_TimeServices.h"
#include "DcmAppl.h"
#include "Fee.h"
#include "EcuMgr.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
#define FBL_BOOTM_STAY_IN_BOOT_ROUTINECONTROL_ID     0xF518
#define FBL_BOOTM_START_SWAP_ROUTINECONTROL_ID       0x815F

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Variables
*********************************************************************************************************************/
extern boolean SwapReq;
extern boolean StayInBootReq;

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/
/**
 * @brief
 *
 * @param flag
 * @return Std_ReturnType
 */
static Std_ReturnType Fbl_BootM_ReadResetResponseFlag(Fbl_BootM_ResetResponseFlagStateType *flag);

/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_BootM 003] */
/**
 * @brief Read content of reset response flag on Nvm
 *
 * @param flag data is written to
 * @return Std_ReturnType
 */
static Std_ReturnType Fbl_BootM_ReadResetResponseFlag(Fbl_BootM_ResetResponseFlagStateType *flag)
{
    Std_ReturnType ret = E_NOT_OK;
    /* MISRA RULE 0310: Casting to different object pointer type. */
    /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */
    ret = FBL_DataM_ReadNvmResetResponseFlag((uint8 *)flag);
    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_BootM 004] */
/**
 * @brief Clear state of Reset response flag
 *
 * @return Std_ReturnType
 */
static Std_ReturnType Fbl_BootM_ClearResetResposeFlag(void)
{
    Std_ReturnType ret = E_NOT_OK;
    Fbl_BootM_ResetResponseFlagStateType flag = FBL_BOOTM_RESET_RESPONSE_FLAG_STATE_OFF;
    /* MISRA RULE 0310: Casting to different object pointer type. */
    /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */
    ret = FBL_DataM_WriteNvmResetResponseFlag((const uint8 *)&flag);
    return ret;
}

/*********************************************************************************************************************
* Exported Variables Implementation
*********************************************************************************************************************/

/* [$Satisfies $LEAR_FBL_DD_BootM 105] */
/**
 * @brief Read reprograming request flag
 *
 * @param flag [out] a pointer is written into.
 * @return Std_ReturnType result is E_OK        - succeeded.
 *                                  E_NOT_OK    - Failed.
 */
Std_ReturnType Fbl_BootM_ReadReprogrammingRequestFlag(Fbl_BootM_ReprogrammingRequestFlagStateType *flag)
{
    /* MISRA RULE 0310: Casting to different object pointer type. */
    /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */
    return FBL_DataM_ReadNvmReprogrammingRequestFlag((uint8 *)flag);
}



/* [$Satisfies $LEAR_FBL_DD_BootM 106] */
Std_ReturnType Fbl_BootM_ReadValidityFlags(Fbl_BootM_ValidityFlagType *flag)
{
    return FBL_DataM_ReadNvmValidityFlags(flag);
}

/* [$Satisfies $LEAR_FBL_DD_BootM 107] */
Std_ReturnType Fbl_BootM_WriteValidityFlags(Fbl_BootM_ValidityFlagType *flag)   /*PRQA S 3673 */ /*The object addressed by the pointer parameter 'flag' is not modified and so the pointer could be of type 'pointer to const'*/
{
    return FBL_DataM_WriteNvmValidityFlags(flag);
}

/* [$Satisfies $LEAR_FBL_DD_BootM 108] */
/**
 * @ingroup DCM_TPL
 * Dcm_GetProgConditions :-\n
 * This API is used for restoring the Programming Information by the application.\n
 * This API should  restore the Programming conditions from the Non volatile memory which was stored during Jump To Boot.\n
 * In this API user has to restore the protocol information required to start Dcm\n
 *
 *  @param[in] ProgConditions \n
 *  The following information needs to be filled by the user in ProgConditions\n
 *     1. ProtocolID - protocol which needs to be started as default\n
 *     2. Tester Source address - Connection will be derived from this input\n
 *     3. SID - service identifier (In case of Warm request/Warm response)\n
 *     4. SubFncId - Subfunction ID\n
 *     5. StoreType - Storage Type used for restoring, Warm Request/Warm Response/Warm Init\n
 *     6. SessionLevel - Session level which needs to be started\n
 *     7. SecurityLevel - Security level which needs to be started\n
 *     8. ReqResLen - Total request/response length including SID and Subfunc\n
 *     9. Request/Response bytes which follows the SID and Subfunc\n
 *     10.Number of Response pending 0x78 triggered before the jump\n
 *     11.Elapsed time in Drive or Boot\n
 *     12. NumOfSecurityLevels - Number of security levels configured,
 *           If the configuration parameter DcmDspSecurityStoreDelayCountAndTimerOnJump  is set to True, then the below information has to be stored
 *     13. SecurityInformation[].SecurityLevel = Security level\n
 *     14.SecurityInformation[].DelayCount = The failed attempt count per SecurityLevel\n
 *     15.SecurityInformation[].ResidualDelay = Remaining delay (either remaining powerOndelay/remaining delay time) per SecurityLevel which will be started in Dcm per security level\n
 *     16.freeForProjectUse 6 bytes of free space is provided for projects to store additional information like CAN ID, BAUD Rate, etc..\n
 *
 * @param[out]      ProgConditions : Pointer to the location where the programming conditions  to be stored.
 *
 *
 * @retval                 DCM_WARM_START : The ECU starts from a bootloader jump\n
 * @retval                 DCM_COLD_START : Start ECU Normally\n
 *
 */
FUNC(Dcm_EcuStartModeType,DCM_APPL_CODE) Dcm_GetProgConditions
                                   (P2VAR(Dcm_ProgConditionsType,AUTOMATIC,DCM_INTERN_DATA) ProgConditions)
{
   VAR(Dcm_EcuStartModeType,AUTOMATIC) retVal = DCM_COLD_START;
   Fbl_BootM_ReprogrammingRequestFlagStateType reprogrammingRequestFlagState;
   Fbl_BootM_ResetResponseFlagStateType resetResponseFlagState;
   Std_ReturnType opResult;
   uint16 dataTimingValue_u16;

   /* MISRA RULE 0310: Casting to different object pointer type. */
   opResult = Fbl_BootM_ReadReprogrammingRequestFlag(&reprogrammingRequestFlagState);    /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

   /* MISRA RULE 0310: Casting to different object pointer type. */
   opResult = (opResult == E_OK) ? Fbl_BootM_ReadResetResponseFlag(&resetResponseFlagState) : opResult;    /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */
   /* Check if a programming request has been issued */

   if((E_OK == opResult)  &&
      (FBL_BOOTM_REPROGRAMMING_REQUEST_FLAG_STATE_ON == reprogrammingRequestFlagState))
   {
      if((FBL_BOOTM_RESET_RESPONSE_FLAG_ON_ECU_RESET == resetResponseFlagState) ||
         (FBL_BOOTM_RESET_RESPONSE_FLAG_STATE_ON_DEFAULT_SESSION == resetResponseFlagState))
      {
         /*Make a positvie response*/
         ProgConditions->StoreType       = DCM_WARMRESPONSE_TYPE;
         retVal = DCM_WARM_START;
         ProgConditions->TesterSourceAddr    = 0x00;
         ProgConditions->Sid                 = 0x50;
         ProgConditions->SubFncId            = 0x02;
         ProgConditions->ProtocolId          = DCM_UDS_ON_CAN;
         ProgConditions->SessionLevel        = DCM_PROGRAMMING_SESSION;
         ProgConditions->SecurityLevel       = 1;
         ProgConditions->ReqResLen           = 0x6;
         ProgConditions->ResponseRequired    = TRUE;

         /* Fill P2 Max Time */
         dataTimingValue_u16 = (uint16)(Dcm_Dsp_Session[Dcm_ctDiaSess_u8].P2_max_u32 / 1000u);
         Dcm_ProgConditions_st.ReqResBuf[0] = (uint8)(dataTimingValue_u16 >> 8u);
         Dcm_ProgConditions_st.ReqResBuf[1] = (uint8)(dataTimingValue_u16 & 0x00ffu);
         /* Fill P2 Star Max Time */
         dataTimingValue_u16 = (uint16)(Dcm_Dsp_Session[Dcm_ctDiaSess_u8].P2str_max_u32 / 10000u);
         Dcm_ProgConditions_st.ReqResBuf[2] = (uint8)(dataTimingValue_u16 >> 8u);
         Dcm_ProgConditions_st.ReqResBuf[3] = (uint8)(dataTimingValue_u16 & 0x00ffu);
      }
      else
      {
         /*Do not make the positive response*/
         retVal = DCM_COLD_START;
      }
      /*Clear the reset response flag*/
      (void)Fbl_BootM_ClearResetResposeFlag();
   }
   else if(TRUE == StayInBootReq)
   {
      StayInBootReq = FALSE;
      
      /*Make a positvie response*/
      ProgConditions->StoreType           = DCM_WARMRESPONSE_TYPE;
      ProgConditions->TesterSourceAddr    = 0x00;
      ProgConditions->Sid                 = 0x71;
      ProgConditions->SubFncId            = 0x01;
      ProgConditions->ProtocolId          = DCM_UDS_ON_CAN;
      ProgConditions->SessionLevel        = DCM_DEFAULT_SESSION;
      ProgConditions->SecurityLevel       = 1;
      ProgConditions->ReqResLen           = 0x4;
      ProgConditions->ResponseRequired    = TRUE;

      /* Fill RC Id */
      dataTimingValue_u16 = FBL_BOOTM_STAY_IN_BOOT_ROUTINECONTROL_ID;
      Dcm_ProgConditions_st.ReqResBuf[0] = (uint8)(dataTimingValue_u16 >> 8u);
      Dcm_ProgConditions_st.ReqResBuf[1] = (uint8)(dataTimingValue_u16 & 0x00ffu);

      retVal = DCM_WARM_START;
   }
   else if(TRUE == SwapReq)
   {
      SwapReq = FALSE;
      retVal = DCM_WARM_START;
      
#if 1
      /*Make a positvie response*/
      ProgConditions->StoreType           = DCM_WARMRESPONSE_TYPE;
      ProgConditions->TesterSourceAddr    = 0x00;
      ProgConditions->Sid                 = 0x71;
      ProgConditions->SubFncId            = 0x01;
      ProgConditions->ProtocolId          = DCM_UDS_ON_CAN;
      ProgConditions->SessionLevel        = DCM_PROGRAMMING_SESSION;
      ProgConditions->SecurityLevel       = 1;
      ProgConditions->ReqResLen           = 0x4;
      ProgConditions->ResponseRequired    = TRUE;

      /* Fill RC Id */
      dataTimingValue_u16 = FBL_BOOTM_START_SWAP_ROUTINECONTROL_ID;
      Dcm_ProgConditions_st.ReqResBuf[0] = (uint8)(dataTimingValue_u16 >> 8u);
      Dcm_ProgConditions_st.ReqResBuf[1] = (uint8)(dataTimingValue_u16 & 0x00ffu);
#else 
   if(TRUE == SwapReqValid)
   {
      SwapReqValid = FALSE;
      
      /*Make a positvie response*/
      ProgConditions->StoreType           = DCM_WARMRESPONSE_TYPE;
      ProgConditions->TesterSourceAddr    = 0x00;
      ProgConditions->Sid                 = 0x71;
      ProgConditions->SubFncId            = 0x01;
      ProgConditions->ProtocolId          = DCM_UDS_ON_CAN;
      ProgConditions->SessionLevel        = DCM_PROGRAMMING_SESSION;
      ProgConditions->SecurityLevel       = 1;
      ProgConditions->ReqResLen           = 0x4;
      ProgConditions->ResponseRequired    = TRUE;

      /* Fill RC Id */
      dataTimingValue_u16 = FBL_BOOTM_START_SWAP_ROUTINECONTROL_ID;
      Dcm_ProgConditions_st.ReqResBuf[0] = (uint8)(dataTimingValue_u16 >> 8u);
      Dcm_ProgConditions_st.ReqResBuf[1] = (uint8)(dataTimingValue_u16 & 0x00ffu);
   }else
   {
      /*Make a negative response*/
      ProgConditions->StoreType           = DCM_WARMRESPONSE_TYPE;
      ProgConditions->TesterSourceAddr    = 0x00;
      ProgConditions->Sid                 = 0x7F;
      ProgConditions->SubFncId            = 0x31;
      ProgConditions->ProtocolId          = DCM_UDS_ON_CAN;
      ProgConditions->SessionLevel        = DCM_PROGRAMMING_SESSION;
      ProgConditions->SecurityLevel       = 1;
      ProgConditions->ReqResLen           = 0x3;
      ProgConditions->ResponseRequired    = TRUE;
      
      Dcm_ProgConditions_st.ReqResBuf[0] = DCM_E_CONDITIONSNOTCORRECT;
   }
#endif
   }
   else
   {
      /*Do not make the positive response*/
      retVal = DCM_COLD_START;
   }

   return(retVal);
}
