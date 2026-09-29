/*********************************************************************************************************************
*
* Description:     ProgM module, DCM call-back function implementation
* FileName:        FBL_ProgM.c
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
*********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "FBL_ProgMCfg.h"
#include "FBL_ProgM.h"
#include "FBL_ProgMPrvCfg.h"
#include "FBL_BootM.h"
#include "Dcm.h"
#include "BLSM.h"
#include "DcmAppl.h"
#include "EcuMgr.h"
#include "Sleep.h"
#include "UcbSwap.h"
#include "Os_TimeServices.h"
#include "FBL_DataMPrvCfg.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/
enum{
    FBL_ACTIVE_CRC_STEP = 0,
    FBL_COPY_START_STEP,
    FBL_COPY_ONGOING_STEP,
    FBL_IMPLICIT_CHECK_STEP
};

/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/
boolean reqCheckRoutineFlag_INVT = FALSE;
boolean reqCheckProPreconditioniFlag_INVT = FALSE;

/*********************************************************************************************************************
* Exported Variables Implementation
*********************************************************************************************************************/
extern uint32 ProgramErase_TimerThreshold;
extern boolean reqTransExitFlag;

/*********************************************************************************************************************
* Functions 
*********************************************************************************************************************/
Std_ReturnType Fbl_ProgM_StartCheckRoutineCallback_INVT(
 uint32  dataIn1,
 uint32  dataIn2,
 uint32  dataIn3,
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                         Dcm_NegativeResponseCodeType * ErrorCode)
{
    /* Default return is pending, unless operation is ready or error was detected */
    Std_ReturnType RetValue = DCM_E_PENDING;
    uint32 crcValue = dataIn3;
    static uint8 u8VerifyState = 0;
    
    if(reqTransExitFlag && FBL_BLSM_INVTProcessPassCheck)
    {
        switch(u8VerifyState)
        {
            case FBL_ACTIVE_CRC_STEP:
            {
                if(E_OK == EcuMgr_DownloadTargetExecuteVerifingRegion_INVT(crcValue))
                {
                    u8VerifyState = FBL_COPY_START_STEP;
                    *ErrorCode = DCM_E_OK;
                    RetValue = DCM_E_FORCE_RCRRP;
                }
                else
                {
                    u8VerifyState = FBL_ACTIVE_CRC_STEP;
                    *ErrorCode = (uint8)DCM_E_GENERALPROGRAMMINGFAILURE;
                    RetValue = E_NOT_OK;
                    reqTransExitFlag = FALSE;
                }
            }
            break;
            case FBL_COPY_START_STEP:
            {
                if(E_OK == EcuMgr_DownloadTargetExecuteImplicitCopy_INVT())
                {
                    u8VerifyState = FBL_COPY_ONGOING_STEP;
                    *ErrorCode = DCM_E_OK;
                    RetValue = DCM_E_FORCE_RCRRP;
                }
                else
                {
                    u8VerifyState = FBL_ACTIVE_CRC_STEP;
                    *ErrorCode = (uint8)DCM_E_CONDITIONSNOTCORRECT;
                    RetValue = E_NOT_OK;
                    reqTransExitFlag = FALSE;
                }
            }
            break;
            case FBL_COPY_ONGOING_STEP:
            {
                if(E_OK == EcuMgr_DownloadTargetGetImplicitCopyResult_INVT())
                {
                    u8VerifyState = FBL_IMPLICIT_CHECK_STEP;
                    *ErrorCode = DCM_E_OK;
                    RetValue = DCM_E_FORCE_RCRRP;
                }
            }
            break;
            case FBL_IMPLICIT_CHECK_STEP:
            {
                if(E_OK == EcuMgr_DownloadTargetExecuteImplicitCheck_INVT())
                {
                    (void)EcuMgr_DownloadTargetPostVerifyingRegionHook_INVT();
                    u8VerifyState = FBL_ACTIVE_CRC_STEP;
                    *ErrorCode = DCM_E_OK;
                    RetValue = E_OK;
                }
                else
                {
                    u8VerifyState = FBL_ACTIVE_CRC_STEP;
                    *ErrorCode = DCM_E_REQUESTSEQUENCEERROR;
                    RetValue = E_NOT_OK;
                }
                reqTransExitFlag = FALSE;
            }
            break;
            default:
            break;
        }
    }
    else
    {
        if(FALSE == FBL_BLSM_INVTProcessPassCheck)
        {
           *ErrorCode = (uint8)DCM_E_REQUESTOUTOFRANGE;
        }
        else
        {
           *ErrorCode = (uint8)DCM_E_REQUESTSEQUENCEERROR;
        }
        RetValue = E_NOT_OK;
    }

    *dataOut1 = (RetValue == E_OK) ? FBL_PROGM_ROUTINE_STATUS_CORRECT:FBL_PROGM_ROUTINE_STATUS_INCORRECT;

    return RetValue;
}

FUNC(Std_ReturnType, DCM_APPL_CODE) Fbl_ProgM_CheckProgrammingDependenciesCallback_INVT(
                            VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,                                 /*PRQA S 3206*/ /*The parameter 'OpStatus' is not used in this function*/
                            uint8 * dataOut1,
                            P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode)
{
    Std_ReturnType ret = E_OK;
    Fbl_ProgM_CheckDependenceResultType checkResult = EcuMgr_DowloadTargetCheckDependenciesHook_INVT();

    if(reqCheckRoutineFlag_INVT && FBL_BLSM_INVTProcessPassCheck)
    {
        if(FBL_PROGM_CHECK_DEPENDENCE_RESULT_SUCCESS == checkResult)
        {
            ret = E_OK;
            *ErrorCode = DCM_E_OK;
            reqCheckRoutineFlag_INVT = FALSE;
        }
        else if(FBL_PROGM_CHECK_DEPENDENCE_RESULT_PROCESSING == checkResult)
        {
            ret = DCM_E_PENDING;
            *ErrorCode = DCM_E_OK;
        }
        else
        {
            ret = E_NOT_OK;
            *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        }
    }
    else
    {
        if(FALSE == FBL_BLSM_INVTProcessPassCheck)
        {
           *ErrorCode = (uint8)DCM_E_REQUESTOUTOFRANGE;
        }
        else
        {
           *ErrorCode = DCM_E_REQUESTSEQUENCEERROR;
        }
        ret = E_NOT_OK;
    }

    *dataOut1 = (ret == E_OK) ? FBL_PROGM_ROUTINE_STATUS_CORRECT:FBL_PROGM_ROUTINE_STATUS_INCORRECT;

    return ret;

}

Std_ReturnType Fbl_ProgM_StartEraseMemoryCallback_INVT(
						 uint32  dataIn1,
						 uint32  dataIn2,
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                         Dcm_NegativeResponseCodeType * ErrorCode)                        
{
    /* Default return is pending, unless operation is ready or error was detected */
    Std_ReturnType                  RetValue = E_NOT_OK;
    uint32                          StartEraseAddressRegion = dataIn1;
    uint32                          RegionSize = dataIn2;
    Fbl_ProgM_EraseResultType		eraseResult = FBL_PROGM_ERASE_RESULT_SUCCESS;
    /* Assume no error unless there is a reason */
    *ErrorCode = E_OK;

    if(FBL_BLSM_INVTProcessPassCheck)
    {
        if(DCM_INITIAL == OpStatus)
        {
            /* check if the inputs are valid*/
            if(TRUE == EcuMgr_DownloadTargetCheckValidEraseInputs(StartEraseAddressRegion, RegionSize, ErrorCode))
            {
                /* Call the pre-erasehook so that it can run any code that needs to be executed before the erase takes places.*/
                RetValue = EcuMgr_DownloadTargetPreEraseHook_INVT(ErrorCode);
                RetValue = EcuMgr_DownloadTargetPostEraseHook_INVT();

                RetValue = (E_OK == RetValue) ? (uint8)DCM_E_FORCE_RCRRP:E_NOT_OK;
                *ErrorCode = ((uint8)DCM_E_FORCE_RCRRP == RetValue) ? (uint8)DCM_E_OK:(uint8)DCM_E_CONDITIONSNOTCORRECT;
            }
            else
            {
                RetValue = E_NOT_OK;
                *ErrorCode = (uint8)DCM_E_REQUESTOUTOFRANGE;
            }
        }
        else if(DCM_FORCE_RCRRP_OK == OpStatus)
        {
            /* the erase is busy then carries on the erase*/
            eraseResult = EcuMgr_DownloadTargetExecuteErase_INVT();
            if(FBL_PROGM_ERASE_RESULT_SUCCESS == eraseResult)
            {
                (void)OS_Timer32_Stop(&ProgramErase_TimerThreshold);
                // RetValue = (E_OK == EcuMgr_DownloadTargetPostEraseHook()) ? E_OK:E_NOT_OK;
                RetValue = E_OK;
                *ErrorCode = (E_OK == RetValue) ? E_OK : (uint8)DCM_E_GENERALPROGRAMMINGFAILURE;
            }
            else if(FBL_PROGM_ERASE_RESULT_BUSY == eraseResult)
            {
                RetValue = DCM_E_FORCE_RCRRP;
                *ErrorCode = DCM_E_OK;
            }
            else if(DCM_E_CONDITIONSNOTCORRECT == eraseResult)
            {
                RetValue = E_NOT_OK;
                *ErrorCode = (uint8)DCM_E_CONDITIONSNOTCORRECT;           
            }
            else
            {
                RetValue = E_NOT_OK;
                *ErrorCode = (uint8)DCM_E_GENERALPROGRAMMINGFAILURE;
            }
        }
        else
        {
            /* unexpected DCM status... */
            RetValue = E_NOT_OK;
            *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        }
    }
    else
    {
        if(FALSE == FBL_BLSM_INVTProcessPassCheck)
        {
           *ErrorCode = (uint8)DCM_E_REQUESTOUTOFRANGE;
        }
        else
        {
           *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
        }
        RetValue = E_NOT_OK;
    }
    *dataOut1 = 0x00;
    return RetValue;
}

Std_ReturnType Fbl_ProgM_CheckProgrammingPreconditionsCallback_INVT(
                          Dcm_OpStatusType OpStatus,
                          uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode)
{
   Std_ReturnType                  RetValue = E_NOT_OK;
   
   if(FBL_BLSM_INVTProcessPassCheck)
   {
      *ErrorCode = E_OK;
      RetValue = E_OK;
      *dataOut1 = 0;
       reqCheckProPreconditioniFlag_INVT = TRUE;
   }
   else
   {
      *ErrorCode = (uint8)DCM_E_REQUESTOUTOFRANGE;
      RetValue = E_NOT_OK;
   }
    return RetValue;
}

FUNC(Std_ReturnType, DCM_APPL_CODE) DcmGetSeedDSP_Fbl_ProgM_GetSeedCallback_INVT(VAR(Dcm_SecLevelType,AUTOMATIC) SecLevel_u8,                              /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                            VAR(uint32,AUTOMATIC) Seedlen_u32,
                                                                            VAR(uint32,AUTOMATIC) AccDataRecsize_u32,
                                                                            P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) SecurityAccessDataRecord,
                                                                            P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Seed,
                                                                            VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,                                 /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                            P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) ErrorCode)
{
    Std_ReturnType  retVal = E_NOT_OK;
    *ErrorCode = E_NOT_OK;

    if(TRUE == FBL_BLSM_INVTProcessPassCheck)
    {
       retVal = EcuMgr_GetSeed_INVT(Seedlen_u32, AccDataRecsize_u32, SecurityAccessDataRecord, Seed);
       
       if ( E_OK == retVal)
       {
           retVal      = E_OK;
           *ErrorCode  = E_OK;
       }
       else
       {
           /* Nothing todo - return E_NOT_OK */
       }
    }
    else
    {
       retVal      = E_NOT_OK;
       *ErrorCode  = DCM_E_SUBFUNCTIONNOTSUPPORTED;
    }

    return retVal;
}

Std_ReturnType DcmCompareKeyDSP_Fbl_ProgM_CompareKeyCallback_INVT(uint32 KeyLen_32,const uint8 * Key,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode)
{
    Std_ReturnType retVal = E_NOT_OK;
    *ErrorCode = E_NOT_OK;
    
    if(TRUE == FBL_BLSM_INVTProcessPassCheck)
    {
       retVal = EcuMgr_CompareKey_INVT(KeyLen_32, (const uint8*)Key);
       
       if(E_OK == retVal)
       {
           retVal     = E_OK;
           *ErrorCode  = E_OK;
       }
       else
       {
           /* Nothing todo return Error E_NOT_OK */
           *ErrorCode = DCM_E_INVALIDKEY;
       }
    }
    else
    {
       retVal      = E_NOT_OK;
       *ErrorCode  = DCM_E_SUBFUNCTIONNOTSUPPORTED;
    }

    return retVal;
}

FUNC(Std_ReturnType,DCM_APPL_CODE) DcmDspData_ActiveBank_ReadFunc(VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                    P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Data)
{
   *Data = Swap_u8GetActiveBank();
   return E_OK;   
}

FUNC(Std_ReturnType,DCM_APPL_CODE) DcmDspData_INVTBootVersion_ReadFunc(VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                    P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Data)
{
   BSW_vidGetINVTBootVersion(Data);
   return E_OK;
}

FUNC(Std_ReturnType,DCM_APPL_CODE) DcmDspData_INVTAppVersion_ReadFunc(VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                    P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Data)
{
   return E_OK;
}

FUNC(Std_ReturnType,DCM_APPL_CODE) DcmDspData_BootTime_ReadFunc(VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                    P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Data)
{
   BSW_vidGetBootCompileTime(Data);
   return E_OK;
}
FUNC(Std_ReturnType,DCM_APPL_CODE) DcmDspData_ReqCanId_ReadFunc(VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                    P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Data)
{
   BSW_vidGetBootReqCanId(Data);
   return E_OK;
}
FUNC(Std_ReturnType,DCM_APPL_CODE) DcmDspData_RspCanId_ReadFunc(VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                    P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Data)
{
   BSW_vidGetBootRspCanId(Data);
   return E_OK;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 104] */
/*** Extern declaration for Fbl_ProgM_StartEraseMemoryCallback ***/
/**
* @brief An UDS Wrapper API
* 
*/
Std_ReturnType Fbl_ProgM_StartSwapCallback_INVT(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode)
{
   /* Default return is pending, unless operation is ready or error was detected */
   Std_ReturnType                  RetValue = E_NOT_OK;
   /* Assume no error unless there is a reason */
   *ErrorCode = E_OK;

   if(TRUE == Swap_vidTriggerSwap())
   {
      RetValue = E_OK;
      *ErrorCode = DCM_E_OK;
   }
   else
   {
      RetValue = E_NOT_OK;
      *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
   }

   return RetValue;
}

Std_ReturnType DcmRbDsdSubServiceUserModeRuleFnc_requestSeed_FBL_INVT(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8, uint8 Subfunc_u8)
{
    Std_ReturnType  retVal = E_NOT_OK;
    *Nrc_u8 = E_NOT_OK;
    (void)Sid_u8;
    (void)Subfunc_u8;

    if(TRUE == FBL_BLSM_INVTProcessPassCheck)
    {
        retVal   = E_OK;
        *Nrc_u8  = E_OK;
    }
    else
    {
        retVal   = E_NOT_OK;
        *Nrc_u8  = DCM_E_SUBFUNCTIONNOTSUPPORTED;
    }

    return retVal;
}

Std_ReturnType DcmRbDsdSubServiceUserModeRuleFnc_sendKey_FBL_INVT(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8, uint8 Subfunc_u8)
{
    Std_ReturnType  retVal = E_NOT_OK;
    *Nrc_u8 = E_NOT_OK;
    (void)Sid_u8;
    (void)Subfunc_u8;

    if(TRUE == FBL_BLSM_INVTProcessPassCheck)
    {
        retVal   = E_OK;
        *Nrc_u8  = E_OK;
    }
    else
    {
        retVal   = E_NOT_OK;
        *Nrc_u8  = DCM_E_SUBFUNCTIONNOTSUPPORTED;
    }

    return retVal;
}
