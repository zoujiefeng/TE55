/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     : Enable or disable all fault detections                  */
/*                                                                            */
/* !File            : DSM_Diag.c                                              */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2011 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive:                                                                 $*/
/* $Revision::            $$Author::                  $$Date::               $*/
/******************************************************************************/
/* !VnrOff :                                                                  */
/******************************************************************************/
/* DSM.DIAG.1 / FaultDisableAllDTCs                                           */
/* DSM.DIAG.2 / FaultEnableAllDTCs                                            */
/******************************************************************************/

#include "Std_Types.h"
#include "FAULT.h"
#include "DSM.h"
#include "DSM_Nvm.h"

#define DSM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description: FaultDisableAllDTCs                                          */
/* !Number     : DSM.DIAG.1                                                   */
/* !Reference  :                                                              */
/* !Trace_To   :                                                              */
/*                                                                            */
/* !LastAuthor :                                                              */
/******************************************************************************/
void FaultDisableAllDTCs(void)
{
 FaultFunctionType   localFaultGroupIdx;

   for (localFaultGroupIdx = 0;
        localFaultGroupIdx < NB_FAULT_FUNCTION;
        localFaultGroupIdx++)
   {
      FaultFunctionDisable(localFaultGroupIdx);
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description: FaultEnableAllDTCs                                           */
/* !Number     : DSM.DIAG.2                                                   */
/* !Reference  :                                                              */
/* !Trace_To   :                                                              */
/*                                                                            */
/* !LastAuthor :                                                              */
/******************************************************************************/
void FaultEnableAllDTCs(void)
{
 FaultFunctionType   localFaultGroupIdx;

   for (localFaultGroupIdx = 0;
        localFaultGroupIdx < NB_FAULT_FUNCTION;
        localFaultGroupIdx++)
   {
      FaultFunctionEnable(localFaultGroupIdx);
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : To check if the DTC is supported by appli                   */
/* !Number      :                                                             */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
boolean DSM_bDtcSupported(uint32 DtcNumber)
{
   uint32 u32LocalDtcNumber;
   uint16 u16LocalFaultOffset;
   boolean bLocalDtcFound;

   bLocalDtcFound = 0;  
   u16LocalFaultOffset = 0;

   while ((u16LocalFaultOffset < NB_FAULT_FUNCTION_TYPE) && (0 == bLocalDtcFound))
   {
      u32LocalDtcNumber = FaultFunctionTypeDtcNbTable[u16LocalFaultOffset];
      
      if (u32LocalDtcNumber == DtcNumber)
      {
         bLocalDtcFound = 1;
      }
      u16LocalFaultOffset++;
   }
   return bLocalDtcFound;
}

/******************************************************************************/
/*                                                                            */
/* !Description : To check if the DTC is logged                               */
/* !Number      :                                                             */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                             */
/******************************************************************************/
boolean DSM_bDtcLogged(uint32 DtcNumber, uint8 *NvmFaultId)
{
   uint8 u8LocalFaultId;
   boolean bLocalDtcFound;

   u8LocalFaultId = 0;
   bLocalDtcFound = 0;  

   bLocalDtcFound = 0;
   /* Search DTC in log table */   
   while ((u8LocalFaultId < DSM_DTC_NB_RECORD_SIZE) && (0 == bLocalDtcFound))
   {
      if (DSM_DtcSavedFreezeFrameNvm[u8LocalFaultId].DtcNumber == DtcNumber)
      {
         bLocalDtcFound = 1;
      }
      u8LocalFaultId++;
   } 
   if (u8LocalFaultId > 0)
   {
      (*NvmFaultId) = u8LocalFaultId-1;
   }
   return bLocalDtcFound;
}

#define DSM_STOP_SEC_CODE
#include "MemMap.h"

/*------------------------------- end of file --------------------------------*/
