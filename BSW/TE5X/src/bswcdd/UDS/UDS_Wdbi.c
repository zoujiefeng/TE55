/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Dcm.h"
#include "NvM_Cfg.h"
#include "UDS_Nvm.h"

#include "UDS_DidModule.h"

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
/* Std_ReturnType DataServices_RW_F18C_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF18C, Data);

   *ErrorCode = E_OK;
   rtn = ((Std_ReturnType)RTE_E_OK);

   return rtn;
}

Std_ReturnType DataServices_RW_F190_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF190, Data);

   *ErrorCode = E_OK;
   rtn = ((Std_ReturnType)RTE_E_OK);

   return rtn;
}

Std_ReturnType DataServices_RW_F1B7_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF1B7, Data);

   *ErrorCode = E_OK;
   rtn = ((Std_ReturnType)RTE_E_OK);

   return rtn;
}
 */
Std_ReturnType DataServices_RW_0E00_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0x0E00, Data);

   *ErrorCode = E_OK;
   rtn = ((Std_ReturnType)RTE_E_OK);

   return rtn;
}

Std_ReturnType DataServices_RW_1E00_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0x1E00, Data);

   *ErrorCode = E_OK;
   rtn = ((Std_ReturnType)RTE_E_OK);

   return rtn;
}

