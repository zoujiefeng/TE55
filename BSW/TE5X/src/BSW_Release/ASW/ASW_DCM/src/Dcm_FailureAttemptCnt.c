#include "Std_Types.h"
#include "Rte_ASW_DCM_Type.h"
#include "NvM.h"
#include "NvM_Cfg.h"

uint8 UDS_au8FAC_L1_Ram[1];
uint8 UDS_au8FAC_L1_Rom[1];

#define ASW_DCM_START_SEC_CODE
#include "ASW_DCM_MemMap.h"

Std_ReturnType Dcm_GetAttemptCounter_L1( Dcm_OpStatusType OpStatus,uint8 * AttemptCounter)
{
   (void)(OpStatus);
   Std_ReturnType RetValue = E_OK;

   *AttemptCounter = (uint8)(*UDS_au8FAC_L1_Ram);

   return RetValue;
}

Std_ReturnType Dcm_SetAttemptCounter_L1( Dcm_OpStatusType OpStatus,uint8 AttemptCounter)
{
   Std_ReturnType RetValue = E_OK;

   if(DCM_CANCEL != OpStatus)
   {
      UDS_au8FAC_L1_Ram[0] = AttemptCounter;
      NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NvM_UDS_au8FailureAttemptCnt_L1, TRUE);
      NvM_WriteBlock(NvMConf_NvMBlockDescriptor_NvM_UDS_au8FailureAttemptCnt_L1, NULL_PTR);
   }
   else
   {
      RetValue = E_NOT_OK;
   }

   return RetValue;
}

#define ASW_DCM_STOP_SEC_CODE
#include "ASW_DCM_MemMap.h"

