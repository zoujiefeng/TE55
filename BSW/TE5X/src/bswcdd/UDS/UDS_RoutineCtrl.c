/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Dcm.h"
#include "Dcm_ExternalServiceProcessing.h"
#include "UcbSwap.h"
#include "bswsrv.h"

#include "MAIN_OCTrim.h"

/*******************************************************************************
 ****  Imported Global Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/


/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Private Variable Declarations
 ******************************************************************************/


/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/******************************************************************************/
/*                                                                                         */
/* !FuncName    :                                                                          */
/* !Description : Zero position self-learning                                                */
/* !Number      : 0                                                                        */
/* !Reference   : NONE                                                                     */
/*                                                                                         */
/*****************************************************************************/
/* !LastAuthor  : LZP                                                                   */
/*****************************************************************************/
Std_ReturnType DcmDspRequestRoutine_ZeroPosSelfLearning(
                           Dcm_OpStatusType OpStatus,
                           uint8 * dataOut1,
                           Dcm_NegativeResponseCodeType * ErrorCode)
{
   /* Default return is pending, unless operation is ready or error was detected */
   Std_ReturnType RetValue = E_NOT_OK;
   /* Assume no error unless there is a reason */
   *ErrorCode = E_OK;

   *dataOut1 = MAIN_OCT_u8GetOcCalibState(eMAIN_UNIT_MCU_INDEX);
   if(DCM_INITIAL == OpStatus)
   {
   }
   RetValue = E_OK;

   return RetValue;
}

Std_ReturnType DcmDspStartRoutine_ZeroPosSelfLearning(
                        Dcm_OpStatusType OpStatus,
                        Dcm_NegativeResponseCodeType * ErrorCode)
{
   /* Default return is pending, unless operation is ready or error was detected */
   Std_ReturnType RetValue = E_NOT_OK;
   /* Assume no error unless there is a reason */
   *ErrorCode = E_OK;
   boolean bLocOcCondSatisfy = FALSE;

   bLocOcCondSatisfy = MAIN_bChkOcCondition();

   if(bLocOcCondSatisfy)
   {
      RetValue = E_OK;
      MAIN_OCT_vidTrigOcCalib(eMAIN_UNIT_MCU_INDEX);
   }
   else
   {
      RetValue = E_NOT_OK;
      *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
   }

   if(DCM_INITIAL == OpStatus)
   {
   }

   return RetValue;
}

Std_ReturnType DcmDspRequestRoutine_GcuPosSelfLearning(
                        Dcm_OpStatusType OpStatus,
                        uint8 * dataOut1,
                        Dcm_NegativeResponseCodeType * ErrorCode)
{
   /* Default return is pending, unless operation is ready or error was detected */
   Std_ReturnType RetValue = E_NOT_OK;
   /* Assume no error unless there is a reason */
   *ErrorCode = E_OK;
   
   *dataOut1 = MAIN_OCT_u8GetOcCalibState(eMAIN_UNIT_GCU_INDEX);
   if(DCM_INITIAL == OpStatus)
   {
   }
   RetValue = E_OK;
   
   return RetValue;
}

/******************************************************************************/
/*                                                                                         */
/* !FuncName    :                                                                          */
/* !Description :                                                 */
/* !Number      : 0                                                                        */
/* !Reference   : NONE                                                                     */
/*                                                                                         */
/*****************************************************************************/
/* !LastAuthor  : LZP                                                                   */
/*****************************************************************************/
Std_ReturnType DcmDspStartRoutine_GcuPosSelfLearning(
                        Dcm_OpStatusType OpStatus,
                        Dcm_NegativeResponseCodeType * ErrorCode)
{
   /* Default return is pending, unless operation is ready or error was detected */
   Std_ReturnType RetValue = E_NOT_OK;
   /* Assume no error unless there is a reason */
   *ErrorCode = E_OK;
   boolean bLocOcCondSatisfy = FALSE;
   
   bLocOcCondSatisfy = GMAIN_bChkOcCondition();
   
   if(bLocOcCondSatisfy)
   {
      RetValue = E_OK;
      MAIN_OCT_vidTrigOcCalib(eMAIN_UNIT_GCU_INDEX);
   }
   else
   {
      RetValue = E_NOT_OK;
      *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
   }
   
   if(DCM_INITIAL == OpStatus)
   {
   }
   
   return RetValue;
}

Std_ReturnType DcmDspRequestRoutine_TcuPosLearning(
                        Dcm_OpStatusType OpStatus,
                        uint8 * dataOut1,
                        Dcm_NegativeResponseCodeType * ErrorCode)
{
   /* Default return is pending, unless operation is ready or error was detected */
   Std_ReturnType RetValue = E_OK;
   /* Assume no error unless there is a reason */
   *ErrorCode = E_OK;
   
   return RetValue;
}
/******************************************************************************/
/*                                                                                         */
/* !FuncName    :                                                                          */
/* !Description : TCU position learning and reading                                                */
/* !Number      : 0                                                                        */
/* !Reference   : NONE                                                                     */
/*                                                                                         */
/*****************************************************************************/
/* !LastAuthor  : LZP                                                                   */
/*****************************************************************************/
Std_ReturnType DcmDspStartRoutine_TcuPosLearning(
                        Dcm_OpStatusType OpStatus,
                        Dcm_NegativeResponseCodeType * ErrorCode)
{
   /* Default return is pending, unless operation is ready or error was detected */
   Std_ReturnType RetValue = E_OK;
   /* Assume no error unless there is a reason */
   *ErrorCode = E_OK;

   return RetValue;
}


/**********************************************************************************************************************************/
/******************************************** Routines for interacting with the Boot **********************************************/
/**********************************************************************************************************************************/
Std_ReturnType DcmDspStartRoutine_StayInBootCallback(
                        const uint8 * dataIn1,
                        Dcm_OpStatusType OpStatus,
                        uint16 CurrentDataLength,
                        Dcm_NegativeResponseCodeType * ErrorCode)
{
   static boolean ResetRequested = FALSE;
   /* Default return is pending, unless operation is ready or error was detected */
   Std_ReturnType RetValue = E_NOT_OK;
   /* Assume no error unless there is a reason */
   *ErrorCode = E_OK;
   (void)dataIn1;
   (void)CurrentDataLength;

   if(DCM_INITIAL == OpStatus)
   {
      // Add detection of programming conditions for operations with reset or jump to BOOT.
      // 2026-7-20.Wx
      if( BSW_bGetProgCondition() == FALSE )
      {
         *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
         RetValue = E_NOT_OK;
      }
      else
      {
         BSW_vidSetStayInBootReq();
         ResetRequested = FALSE;
         *ErrorCode = DCM_E_OK;
         RetValue = DCM_E_FORCE_RCRRP;
      }
   }
   else
   {
      if(TRUE != ResetRequested)
      {
         MCU_vSetResetCmd();
         ResetRequested = TRUE;
      }

      RetValue = DCM_E_FORCE_RCRRP;
      *ErrorCode = DCM_E_OK;
   }
   return RetValue;
}

Std_ReturnType DcmDspStartRoutine_StartSwapCallback(
                        Dcm_OpStatusType OpStatus,
                        Dcm_NegativeResponseCodeType * ErrorCode)
{
   static boolean ResetRequested = FALSE;
   /* Default return is pending, unless operation is ready or error was detected */
   Std_ReturnType RetValue = E_NOT_OK;
   /* Assume no error unless there is a reason */
   *ErrorCode = E_OK;

   if(DCM_INITIAL == OpStatus)
   {
      // Add detection of programming conditions for operations with reset or jump to BOOT.
      // 2026-7-21.Wx
      if((TRUE == Swap_bCheckSwapCondition()) && (BSW_bGetProgCondition() == TRUE))
      {
         BSW_vidSetActiveSwapReq();
         ResetRequested = FALSE;
         RetValue = DCM_E_FORCE_RCRRP;
         *ErrorCode = DCM_E_OK;
      }
      else
      {
         RetValue = E_NOT_OK;
         *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;
      }
   }
   else
   {
      if(TRUE != ResetRequested)
      {
         MCU_vSetResetCmd();
         ResetRequested = TRUE;
      }

      RetValue = DCM_E_FORCE_RCRRP;
      *ErrorCode = DCM_E_OK;
   }

   return RetValue;
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/


