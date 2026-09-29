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
#include "UDS_Nvm.h"           /* UDS_au8WrDidTableNvM_Ram 声明 */
#include "NvM.h"               /* NvM_WriteBlock 声明 */
/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
boolean reqTransExitFlag = FALSE;
boolean reqCheckRoutineFlag = FALSE;
boolean reqCheckProPreconditioniFlag = FALSE;
boolean reqWFingerPrintFlag = FALSE;

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
static void ProgM_vidClrFlsValidFlag(void);

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/
static boolean ProgM_bFlsIsValidFlag = FALSE;
static boolean ProgM_bSevice36IsReqFlag = FALSE;
static boolean ProgM_bCrcIsCorrectFlag = FALSE;
static boolean ProgM_bFileCrcIsCorrectFlag = FALSE;

/*********************************************************************************************************************
* Exported Variables Implementation
*********************************************************************************************************************/
extern volatile const DID_Type DID_Data;
extern uint32 ProgramErase_TimerThreshold;

/*********************************************************************************************************************
* Functions 
*********************************************************************************************************************/
void ProgM_vidSetFlsValidFlag(void)
{
    ProgM_bFlsIsValidFlag = TRUE;
}

static void ProgM_vidClrFlsValidFlag(void)
{
    ProgM_bFlsIsValidFlag = FALSE;
}

void ProgM_vidSetCrcIsCorrectFlag(void)
{
    ProgM_bCrcIsCorrectFlag = TRUE;
}

void ProgM_vidClrCrcIsCorrectFlag(void)
{
    ProgM_bCrcIsCorrectFlag = FALSE;
}

boolean ProgM_bGetCrcIsCorrectFlag(void)
{
    return ProgM_bCrcIsCorrectFlag;
}

void ProgM_vidSetFileCrcIsCorrectFlag(void)
{
    ProgM_bFileCrcIsCorrectFlag = TRUE;
}

boolean ProgM_bGetFileCrcIsCorrectFlag(void)
{
    return ProgM_bFileCrcIsCorrectFlag;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 101] */
/**
 * @brief An UDS Wrapper API
 *
 */
/* MISRA RULE 3206: The parameters is not used in this function. */
Std_ReturnType Fbl_ProgM_CheckProgrammingPreconditionsCallback(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                         Dcm_NegativeResponseCodeType * ErrorCode)
{
	*ErrorCode = E_OK;
	*dataOut1 = 0;
    reqCheckProPreconditioniFlag = TRUE;
    return E_OK;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 102] */
/*** Extern declaration for Fbl_ProgM_StartCheckRoutineCallback ***/
/**
 * @brief An UDS Wrapper API
 *
 */
Std_ReturnType Fbl_ProgM_StartCheckRoutineCallback(
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

    if(reqTransExitFlag)
    {
        switch(u8VerifyState)
        {
            case FBL_ACTIVE_CRC_STEP:
            {
                if(E_OK == EcuMgr_DownloadTargetExecuteVerifingRegion(crcValue))
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
                break;
            }
            case FBL_COPY_START_STEP:
            {
                if(E_OK == EcuMgr_DownloadTargetExecuteImplicitCopy())
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
                break;
            }
            case FBL_COPY_ONGOING_STEP:
            {
                if(E_OK == EcuMgr_DownloadTargetGetImplicitCopyResult())
                {
                    u8VerifyState = FBL_IMPLICIT_CHECK_STEP;
                    *ErrorCode = DCM_E_OK;
                    RetValue = DCM_E_FORCE_RCRRP;
                }
                break;
            }
            case FBL_IMPLICIT_CHECK_STEP:
            {
                if(E_OK == EcuMgr_DownloadTargetExecuteImplicitCheck())
                {
                    (void)EcuMgr_DownloadTargetPostVerifyingRegionHook();
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
                break;
            }
            default:
            {
                break;
            }
        }
    }
    else
    {
        *ErrorCode = (uint8)DCM_E_REQUESTSEQUENCEERROR;
        RetValue = E_NOT_OK;
    }

    if(RetValue == E_OK)
    {
        *dataOut1 = (TRUE == ProgM_bCrcIsCorrectFlag) ? FBL_PROGM_ROUTINE_STATUS_CORRECT : FBL_PROGM_ROUTINE_STATUS_INCORRECT;
        ProgM_bCrcIsCorrectFlag = FALSE;
    }

    return RetValue;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 103] */
/*** Extern declaration for Fbl_ProgM_CheckProgrammingDependenciesCallback ***/
/**
 * @brief An UDS Wrapper API
 * 
 */
/* MISRA RULE 3206: The parameters is not used in this function. */
FUNC(Std_ReturnType, DCM_APPL_CODE) Fbl_ProgM_CheckProgrammingDependenciesCallback(
                            VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,                                 /*PRQA S 3206*/ /*The parameter 'OpStatus' is not used in this function*/
                            uint8 * dataOut1,
                            P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode)
{
    Std_ReturnType ret = E_OK;
    Fbl_ProgM_CheckDependenceResultType checkResult = EcuMgr_DowloadTargetCheckDependenciesHook();

    if(reqCheckRoutineFlag)
    {
        if(FBL_PROGM_CHECK_DEPENDENCE_RESULT_PROCESSING == checkResult)
        {
            ret = DCM_E_PENDING;
            *ErrorCode = DCM_E_OK;
        }
        else
        {
            ret = E_OK;
            *ErrorCode = DCM_E_OK;
            reqCheckRoutineFlag = FALSE;

            *dataOut1 = (TRUE == ProgM_bFileCrcIsCorrectFlag) ? FBL_PROGM_ROUTINE_STATUS_CORRECT : FBL_PROGM_ROUTINE_STATUS_INCORRECT;
            ProgM_bFileCrcIsCorrectFlag = FALSE;
        }
    }
    else
    {
        ret = E_NOT_OK;
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
    }

    return ret;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 104] */
/*** Extern declaration for Fbl_ProgM_StartEraseMemoryCallback ***/
/**
 * @brief An UDS Wrapper API
 * 
 */
Std_ReturnType Fbl_ProgM_StartEraseMemoryCallback(
//  uint8  dataIn1,
 uint32  dataIn1,
 uint32  dataIn2,
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode)                        
{
    /* Default return is pending, unless operation is ready or error was detected */
    Std_ReturnType                  RetValue = E_NOT_OK;
    // uint8                           StartAddressFormat = (dataIn1 & 0x0F);
    // uint8                           EraseLengthFormat = ((dataIn1 & 0xF0) >> 4);
    uint32                          StartEraseAddressRegion = dataIn1;
    uint32                          RegionSize = dataIn2;
    Fbl_ProgM_EraseResultType		eraseResult = FBL_PROGM_ERASE_RESULT_SUCCESS;
    /* Assume no error unless there is a reason */
    *ErrorCode = E_OK;

    if(TRUE == ProgM_bFlsIsValidFlag)
    {
        if(DCM_INITIAL == OpStatus)
        {
            /* check if the inputs are valid*/
            if(TRUE == EcuMgr_DownloadTargetCheckValidEraseInputs(StartEraseAddressRegion, RegionSize, ErrorCode))
            {
                /* Call the pre-erasehook so that it can run any code that needs to be executed before the erase takes places.*/
                RetValue = EcuMgr_DownloadTargetPreEraseHook(ErrorCode);
                RetValue = EcuMgr_DownloadTargetPostEraseHook();

                RetValue = (E_OK == RetValue) ? (uint8)DCM_E_FORCE_RCRRP:E_NOT_OK;
                *ErrorCode = ((uint8)DCM_E_FORCE_RCRRP == RetValue) ? (uint8)DCM_E_OK:(uint8)DCM_E_CONDITIONSNOTCORRECT;
            }
            else
            {
                RetValue = E_NOT_OK;
                ProgM_vidClrFlsValidFlag();
                *ErrorCode = (uint8)DCM_E_REQUESTOUTOFRANGE;
            }
        }
        else if(DCM_FORCE_RCRRP_OK == OpStatus)
        {
            /* the erase is busy then carries on the erase*/
            eraseResult = EcuMgr_DownloadTargetExecuteErase();
            if(FBL_PROGM_ERASE_RESULT_SUCCESS == eraseResult)
            {
                (void)OS_Timer32_Stop(&ProgramErase_TimerThreshold);
                // RetValue = (E_OK == EcuMgr_DownloadTargetPostEraseHook()) ? E_OK:E_NOT_OK;
                RetValue = E_OK;
                // reqWFingerPrintFlag = FALSE;
                ProgM_vidClrFlsValidFlag();
                *ErrorCode = E_OK;
            }
            else if(FBL_PROGM_ERASE_RESULT_BUSY == eraseResult)
            {
                RetValue = DCM_E_FORCE_RCRRP;
                *ErrorCode = DCM_E_OK;
            }
            else if(DCM_E_CONDITIONSNOTCORRECT == eraseResult)
            {
                RetValue = E_NOT_OK;
                ProgM_vidClrFlsValidFlag();
                *ErrorCode = (uint8)DCM_E_CONDITIONSNOTCORRECT;           
            }
            else
            {
                RetValue = E_NOT_OK;
                ProgM_vidClrFlsValidFlag();
                *ErrorCode = (uint8)DCM_E_GENERALPROGRAMMINGFAILURE;
            }
        }
        else
        {
            /* unexpected DCM status... */
            RetValue = E_NOT_OK;
            ProgM_vidClrFlsValidFlag();
            *ErrorCode = DCM_E_GENERALPROGRAMMINGFAILURE;
        }
    }
    else
    {
        RetValue = E_NOT_OK;
        *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
    }
    *dataOut1 = RetValue;
    return RetValue;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 104] */
/*** Extern declaration for Fbl_ProgM_StartEraseMemoryCallback ***/
/**
* @brief An UDS Wrapper API
* 
*/
Std_ReturnType Fbl_ProgM_StartSwapCallback(
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

/* [$Satisfies $LEAR_FBL_DD_ProgM 105] */
/**
 * @brief An UDS Wrapper API
 * 
 */
/* MISRA RULE 3206: The parameters is not used in this function. */
FUNC(Std_ReturnType,DCM_APPL_CODE) DcmAppl_Dcm_ProcessRequestDownload(
                                            VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,/* PRQA S 3206 */ /* This function does not use this parameter */
                                            VAR(uint8,AUTOMATIC) DataFormatIdentifier,
                                            VAR(uint32,AUTOMATIC) MemoryAddress,
                                            VAR(uint32,AUTOMATIC) MemorySize,
                                            P2VAR(uint32,DCM_INTERN_DATA,AUTOMATIC) BlockLength,
                                            P2VAR(Dcm_NegativeResponseCodeType,DCM_INTERN_DATA,AUTOMATIC) ErrorCode)
{
    Std_ReturnType RetVal = E_OK;
    boolean IsRequestDownloadValid;

    IsRequestDownloadValid = EcuMgr_DownloadTargetCheckValidRequestDownloadInputs(DataFormatIdentifier,
                                                                                    MemoryAddress,
                                                                                    MemorySize,
                                                                                    ErrorCode);
    if (FALSE == IsRequestDownloadValid)
    {
        RetVal = E_NOT_OK;
    }
    else
    {
        /* Set the block length for generic download*/
        *BlockLength = ECUMGR_DOWNLOAD_BLOCK_SIZE + 2U;
        *ErrorCode = E_OK;
        RetVal = E_OK;
    }
    
    return RetVal;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 106] */
/**
 * @brief An UDS Wrapper API
 * 
 */

FUNC(Std_ReturnType,DCM_APPL_CODE) DcmAppl_Dcm_ProcessRequestTransferExit(
                                                                VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,	/* PRQA S 3206 */ /* This function does not use this parameter */
                                                                P2CONST(uint8,DCM_INTERN_DATA,AUTOMATIC) transferRequestParameterRecord,	/* PRQA S 3206 */ /* This function does not use this parameter */
                                                                VAR(uint32,AUTOMATIC) transferRequestParameterRecordSize,	/* PRQA S 3206 */ /* This function does not use this parameter */
                                                                P2VAR(uint8,DCM_INTERN_DATA,AUTOMATIC) transferResponseParameterRecord,	/* PRQA S 3206 */ /* This function does not use this parameter */
                                                                P2VAR(uint32,DCM_INTERN_DATA,AUTOMATIC) transferResponseParameterRecordSize,	/* PRQA S 3206 */ /* This function does not use this parameter */
                                                                P2VAR(Dcm_NegativeResponseCodeType,DCM_INTERN_DATA,AUTOMATIC) ErrorCode)

{
    Std_ReturnType retVal = E_OK;
    reqTransExitFlag = TRUE;
    *ErrorCode = E_OK;
    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 107] */
/**
 * @ingroup DCM_TPL
 * Dcm_WriteMemory:-\n
 * This API implements Write to memory functionality.User Application should add the necessary code to write the data in to memory address specified by the tester.\n
 *
 *
 * @param[in]       Wmba_Opstatus   :   Information on the opstatus\n
 * @param[in]       memoryid        :   Identifier of the memory block\n
 * @param[in]       memoryaddress   :   Starting address of the server memory address to be copied\n
 * @param[in]       datalength      :   Number of bytes in memory data\n
 * @param[out]      reqbuf          :   Data will be written into this buffer(points to the diagnostic buffer).\n
 * @param[out]      ErrorCode       : The negative response code to be updated by the application\n
 *                                    In case the Wmba_Opstatus value is passed as DCM_CANCEL, then the ErrorCode parameter shall be a NULL_PTR.
 * @retval          DCM_WRITE_OK       :  WRITE was successful\n
 * @retval          DCM_WRITE_FAILED   :  WRITE was not successful\n
 * @retval          DCM_WRITE_PENDING  :  WRITE is not yet finished\n
 * @retval          DCM_WRITE_FORCE_RCRRP : If the Pending response (0x78) has to be triggered by Dcm immediately.
 */
 FUNC(Dcm_ReturnWriteMemoryType,DCM_APPL_CODE) DcmAppl_Dcm_WriteMemory(VAR(Dcm_OpStatusType,  AUTOMATIC) Wmba_Opstatus,	/* PRQA S 3206 */ /* This function does not use this parameter */
                                                     VAR(uint8,  AUTOMATIC) memoryid,	/* PRQA S 3206 */ /* This function does not use this parameter */
                                                     VAR(uint32,  AUTOMATIC) memoryaddress,
                                                     VAR(uint32,  AUTOMATIC) datalength,
                                                     P2CONST (uint8,AUTOMATIC,DCM_INTERN_DATA) reqbuf,
                                                     P2VAR (Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) ErrorCode)
{
    /* Default return is pending, unless operation is ready or error was detected */
    VAR(Dcm_ReturnWriteMemoryType,AUTOMATIC) retVal = DCM_WRITE_PENDING;
    Fbl_ProgM_WriteResultType	writeResult = FBL_PROGM_WRITE_RESULT_BUSY;
    *ErrorCode = E_OK;

    /*Check if length is valid*/
    if(ECUMGR_DOWNLOAD_BLOCK_SIZE < datalength)
    {
        /* out of range*/
        retVal = DCM_WRITE_FAILED;
        *ErrorCode = (uint8)DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
    }
    else
    { 
        /* Execute the write*/
        writeResult = EcuMgr_DownloadTargetWrite(memoryaddress, datalength, reqbuf, Wmba_Opstatus);
        if(FBL_PROGM_WRITE_RESULT_SUCCESS == writeResult)
        {
            retVal = DCM_WRITE_OK;
        }
        else if(FBL_PROGM_WRITE_RESULT_BUSY == writeResult)
        {
            retVal = DCM_WRITE_FORCE_RCRRP;
        }
        else
        {
            retVal = DCM_WRITE_FAILED;
            *ErrorCode = (uint8)DCM_E_GENERALPROGRAMMINGFAILURE;
        }
    }
    return(retVal);
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 108] */
/**
 * @brief An UDS callback API
 * 
 */
boolean DcmAppl_bUdsResetReq = FALSE;
FUNC(void,DCM_APPL_CODE)  DcmAppl_Switch_DcmExecuteEcuReset(VAR(uint8,AUTOMATIC) ResetType_u8)	                                   /* PRQA S 3206 */ /* This function does not use this parameter */
{
    /* Call the reset rountine*/
    DcmAppl_bUdsResetReq = TRUE;
    (void)EcuMgr_PerformReset();
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 109] */
/**
 * @brief An UDS callback API
 * 
 */
FUNC(Std_ReturnType,DCM_APPL_CODE) Fbl_ProgM_DisableDtc(    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) Nrc_u8,	/* PRQA S 3206 */ /* This function does not use this parameter */
                                                            VAR(uint8,AUTOMATIC) Sid_u8,	                                        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                            VAR(uint8,AUTOMATIC) Subfunc_u8)	                                    /* PRQA S 3206 */ /* This function does not use this parameter */
{
    /* Always return positive response - DTC not supported in FBL */
    return E_OK;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 110] */
/**
 * @brief An UDS callback API
 * 
 */
FUNC(Std_ReturnType,DCM_APPL_CODE) Fbl_ProgM_EnableDtc( P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) Nrc_u8,
                                                        VAR(uint8,AUTOMATIC) Sid_u8,		                                        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                        VAR(uint8,AUTOMATIC) Subfunc_u8)	                                        /* PRQA S 3206 */ /* This function does not use this parameter */
{

    /* Always return negative response - DTC not supported in FBL */
    *Nrc_u8 = DCM_E_CONDITIONSNOTCORRECT;
    return E_NOT_OK;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 111] */
/**
 * @brief An UDS callback API
 * 
 */
FUNC(Std_ReturnType,DCM_APPL_CODE) Fbl_ProgM_DisableRxAndTx(    P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) Nrc_u8,
                                                                VAR(uint8,AUTOMATIC) Sid_u8,		                                /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                VAR(uint8,AUTOMATIC) Subfunc_u8)	                                /* PRQA S 3206 */ /* This function does not use this parameter */
{
    /* Always return positive response */
	*Nrc_u8 = E_OK;
    return E_OK;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 112] */
/**
 * @brief An UDS callback API
 * 
 */
FUNC(Std_ReturnType,DCM_APPL_CODE) Fbl_ProgM_EnableRxAndTx( P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) Nrc_u8,
                                                            VAR(uint8,AUTOMATIC) Sid_u8,		                                    /* PRQA S 3206 */ /* This function does not use this parameter */
                                                            VAR(uint8,AUTOMATIC) Subfunc_u8)	                                    /* PRQA S 3206 */ /* This function does not use this parameter */
{
    /* Always return positive response */
	*Nrc_u8 = E_OK;
    return E_OK;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 113] */
/***Seca dcmDspSecurityGetSeedFnc functions with Useport  USE_ASYNCH_FNC ***/
/**
 * @brief An UDS callback API
 * 
 */
FUNC(Std_ReturnType, DCM_APPL_CODE) DcmGetSeedDSP_Fbl_ProgM_GetSeedCallback(VAR(Dcm_SecLevelType,AUTOMATIC) SecLevel_u8,                              /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                            VAR(uint32,AUTOMATIC) Seedlen_u32,
                                                                            VAR(uint32,AUTOMATIC) AccDataRecsize_u32,
                                                                            P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) SecurityAccessDataRecord,
                                                                            P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Seed,
                                                                            VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,                                 /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                            P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) ErrorCode)
{
    Std_ReturnType  retVal = E_NOT_OK;
    *ErrorCode = E_NOT_OK;
    retVal = EcuMgr_GetSeed(Seedlen_u32, AccDataRecsize_u32, SecurityAccessDataRecord, Seed);
    
    if ( E_OK == retVal)
    {
        retVal      = E_OK;
        *ErrorCode  = E_OK;
    }
    else
    {
        /* Nothing todo - return E_NOT_OK */
    }

    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 114] */
/***Seca dcmDspSecurityCompareKeyFnc functions with Useport  USE_ASYNCH_FNC ***/
/**
 * @brief An UDS callback API
 * 
 */
Std_ReturnType DcmCompareKeyDSP_Fbl_ProgM_CompareKeyCallback(uint32 KeyLen_32,const uint8 * Key,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode)
{
    Std_ReturnType retVal = E_NOT_OK;
    *ErrorCode = E_NOT_OK;

    retVal = EcuMgr_CompareKey(KeyLen_32, (const uint8*)Key);

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
    return retVal;
}

Std_ReturnType DcmGetAttemptCounter_L3_Fbl_ProgM( Dcm_OpStatusType OpStatus,uint8 * AttemptCounter)
{
   (void)(OpStatus);
   Std_ReturnType RetValue = E_OK;

   *AttemptCounter = (uint8)(*Fbl_DataM_RamMirrorNV_Reserve00_FACBlock);

   return RetValue;
}
Std_ReturnType DcmSetAttemptCounter_L3_Fbl_ProgM( Dcm_OpStatusType OpStatus,uint8 AttemptCounter)
{
   Std_ReturnType RetValue = E_OK;

   if(DCM_CANCEL != OpStatus)
   {
      Fbl_DataM_RamMirrorNV_Reserve00_FACBlock[0] = AttemptCounter;
      NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_00_FailureAttemptCnt_L1, TRUE);
      NvM_WriteBlock(NvMConf_NvMBlockDescriptor_NV_ReserveForBoot_00_FailureAttemptCnt_L1, NULL_PTR);
   }
   else
   {
      RetValue = E_NOT_OK;
   }

   return RetValue;
}



FUNC(Std_ReturnType,DCM_APPL_CODE) DataServices_R_F15A_WriteFunc (P2CONST(uint8,AUTOMATIC,DCM_INTERN_DATA) Data,
                                                                    VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,
                                                                    P2VAR(Dcm_NegativeResponseCodeType,
                                                                    AUTOMATIC,DCM_INTERN_DATA) ErrorCode)
{

    
    Std_ReturnType retVal = E_NOT_OK;
    uint8 idx;

    *ErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;

    /* 将16字节写入 NvM RAM Mirror */
    for (idx = 0U; idx < 16U; idx++)
    {
        UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF15A[idx] = Data[idx];
    }
    retVal = E_OK;
    *ErrorCode = E_OK;
    NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NvM_UDS_au8WrDidTable, TRUE);
    NvM_WriteBlock(NvMConf_NvMBlockDescriptor_NvM_UDS_au8WrDidTable, NULL_PTR);

    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 116] */
FUNC(Std_ReturnType,DCM_APPL_CODE) DataServices_R_F15A_ReadData (VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,
                                                                    P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Data)
{
    Std_ReturnType	retVal = E_OK;
    uint8 idx;

    /* 从 NvM RAM Mirror 读取16字节 */
    for (idx = 0U; idx < 16U; idx++)
    {
        Data[idx] = UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF15A[idx];
    }

    return retVal;
}



/* [$Satisfies $LEAR_FBL_DD_ProgM 115] */
/**
 * @brief An UDS callback API
 * 
 */
FUNC(Std_ReturnType,DCM_APPL_CODE) DcmDspData_Fingerprint_WriteFunc (P2CONST(uint8,AUTOMATIC,DCM_INTERN_DATA) Data,
                                                                    VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,          /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                    P2VAR(Dcm_NegativeResponseCodeType,
                                                                    AUTOMATIC,DCM_INTERN_DATA) ErrorCode)
{
    Std_ReturnType retVal = E_NOT_OK;

    *ErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
    retVal =  EcuMgr_DIDService_StoreFingerPrintInfor(Data);

    if(E_OK == retVal)
    {
    	*ErrorCode = E_OK;
        reqWFingerPrintFlag = TRUE;
    }

    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_ProgM 116] */
/**
 * @brief An UDS callback API
 * 
 */
FUNC(Std_ReturnType,DCM_APPL_CODE) DcmDspData_Fingerprint_ReadFunc (VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                    P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_ReadFingerPrintInfor(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}

FUNC(Std_ReturnType,DCM_APPL_CODE) DcmDspData_BootVersion_ReadFunc (VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,        /* PRQA S 3206 */ /* This function does not use this parameter */
                                                                    P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Data)
{
    Std_ReturnType	retVal = E_NOT_OK;
    uint8 i = 0;
    // retVal = EcuMgr_DIDService_ReadFingerPrintInfor(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */
    for(i = 0; i < DID_0xF1AA_LENGTH; i++)
    {
        Data[i] = DID_Data.Did_0xF1AA[i];
    }
    retVal = E_OK;

    return retVal;
}

Std_ReturnType DataServices_R_F187_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_Read0xF187(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}

Std_ReturnType DataServices_R_F18A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_Read0xF18A(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}

Std_ReturnType DataServices_R_F18B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_Read0xF18B(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}

Std_ReturnType DataServices_R_F18C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_Read0xF18C(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}

Std_ReturnType DataServices_R_F190_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_Read0xF190(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}

Std_ReturnType DataServices_R_F193_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_Read0xF193(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}

Std_ReturnType DataServices_R_F195_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_Read0xF195(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}

Std_ReturnType DataServices_R_F19A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_Read0xF19A(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}

Std_ReturnType DataServices_R_F1B7_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
    Std_ReturnType	retVal = E_NOT_OK;

    retVal = EcuMgr_DIDService_Read0xF1B7(Data);	                                                         /* PRQA S 0310 */ /* Casting from type of high layer to type of low layer */

    return retVal;
}




// Std_ReturnType DcmDspData_BootVersion_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);

 /**
 * @ingroup DCM_TPL
 * DcmAppl_UserServiceModeRuleService :-\n
 * This API is used to do specific checks on the SID before processing the service.The ErrorCode parameter(Nrc_u8) needs to be updated by the application in case of failed checks.
 *
 * @param[in]     Sid_u8 : Service Id under processing
 * @param[out]    Nrc_u8 : NRC to be set by the application
 *
 * @retval               E_OK      : Service specific checks passed successfully \n
 * @retval               E_NOT_OK  : Service specific checks failed\n
 *
 */
FUNC(Std_ReturnType,DCM_APPL_CODE) DcmAppl_UserServiceModeRuleService(  P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) Nrc_u8,
                                                                        VAR(uint8,AUTOMATIC) Sid_u8)                                            /* PRQA S 3206 */ /* MISRA DEVIATION: The parameter is auto-generated and used in others. */
{
	VAR(Std_ReturnType,AUTOMATIC) retVal_u8 = E_OK;
	*Nrc_u8= E_OK;

    if(Sid_u8 == 0x36)
    {
        ProgM_bSevice36IsReqFlag = TRUE;
    }

	// Sleep_StartStopTimer();
	return (retVal_u8);
}

Std_ReturnType Dcm_UserModeRule_Sid37(Dcm_NegativeResponseCodeType * Nrc_u8, uint8 Sid_u8)
{
    (void)Sid_u8;

	VAR(Std_ReturnType,AUTOMATIC) retVal_u8 = E_OK;
	*Nrc_u8 = E_OK;

    if(FALSE == ProgM_bSevice36IsReqFlag)
    {
        retVal_u8 = E_NOT_OK;
        *Nrc_u8 = DCM_E_REQUESTSEQUENCEERROR;
    }

    ProgM_bSevice36IsReqFlag = FALSE;

	return (retVal_u8);
}

