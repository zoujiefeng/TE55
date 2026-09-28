/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     : Failures data contexts management                       */
/*                                                                            */
/* !File            : DSM_Sav.c                                               */
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
/* DSM.SAV.1 / FaultRecordDTC                                                 */
/* DSM.SAV.2 / FaultClearDTCRecord                                            */
/******************************************************************************/

#include "Std_Types.h"

#include "DSM.h"
#include "DSM_L.h"
#include "DSM_Nvm.h"

#include "FAULT.h"
#include "FAULT_FF.h"
/* #include "FAIL.h" */
/* #include "FAIL_Nvm.h" */

/* #include "vsisrv.h" */
/* #include "TSMem.h" */
#include "NVM.h"

/******************************************************************************/
/* LOCAL FUNCTION DECLERATION                                                 */
/******************************************************************************/
#define DSM_START_SEC_CODE
#include "DSM_MemMap.h"

static void DSM_vidManageFaultLogged(FaultOffsetType faultOffset);
static void DSM_vidRecordDtc(uint8 u8LocalNvmId);

#define DSM_STOP_SEC_CODE
#include "DSM_MemMap.h"

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define DSM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : Record (at fault detection with Fail)                       */
/* !Number      : SAV.1                                                       */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void FaultRecordDTC(FaultOffsetType faultOffset)
{
   if (FaultFunctionTypeDtcFtTable[faultOffset] == 0x01)
   {
      FAULT_vidLockFreezeFrame(FF1);

      DSM_vidManageFaultLogged(faultOffset);
      FAULT_vidUnLockFreezeFrame(FF1);
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : Logged fault manager                                        */
/* !Number      :                                                             */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
static void DSM_vidManageFaultLogged(FaultOffsetType faultOffset)
{
   uint32 u32LocalDtcNumber;
   uint16 u16LocalTimestampIgn;
   uint16 u16LocalPrevTimestampIgn;
   uint8 u8LocalPrevAgingCycleCnt;
   uint8 u8LocalAgingCycleCnt;
   uint8 u8LocalFaultId;
   uint8 u8LocalNvmId;
   boolean bLocalDtcFound;

   bLocalDtcFound = 0;
   u16LocalTimestampIgn = 0;
   u8LocalFaultId = 0;
   u8LocalNvmId = 0;

   u32LocalDtcNumber = FaultFunctionTypeDtcNbTable[faultOffset];

   /* Check if DTC already logged */
   while (  (u8LocalFaultId < DSM_DTC_NB_RECORD_SIZE)
         && (0 == bLocalDtcFound)
         )
   {
      /* The ID saved is shifted to have the value 0 for No Fault detected */
      if (DSM_DtcSavedFreezeFrameNvm[u8LocalFaultId].DtcNumber == u32LocalDtcNumber)
      {
         bLocalDtcFound = 1;
      }
      u8LocalFaultId++;
   }

   u8LocalFaultId--;

   /* if DTC already logged */
   if (0 != bLocalDtcFound)
   {
      /* Management of DTC status */
      DSM_DtcStatusNvm[u8LocalFaultId] |= (1 << TestFailed);
      DSM_DtcStatusNvm[u8LocalFaultId] |= (1 << TestFailedThisOperationCycle);
      DSM_DtcStatusNvm[u8LocalFaultId] |= (1 << TestFailedSinceLastClear);
      DSM_DtcStatusNvm[u8LocalFaultId] |= (0 << TestNotCompletedSinceLastClear);
      DSM_DtcStatusNvm[u8LocalFaultId] |= (0 << TestNotCompletedThisOperationCycle);
      DSM_DtcStatusNvm[u8LocalFaultId] |= (1 << PendingDTC);

      /* Updating of status if necessary and environmental datas */
      if (DSM_DtcEnvDataNvm[u8LocalFaultId].u8DtcAgingCycleCnt != 0)
      {
         DSM_DtcStatusNvm[u8LocalFaultId] |= (1 << ConfirmedDTC);
         DSM_vidRecordDtc(u8LocalFaultId);
      }

      DSM_DtcEnvDataNvm[u8LocalFaultId].u8DtcAgingCycleCnt = 0;
      if (DSM_DtcEnvDataNvm[u8LocalFaultId].u8DtcOccurCnt < 255)
      {
         DSM_DtcEnvDataNvm[u8LocalFaultId].u8DtcOccurCnt++;
      }

#if 0
      NvM_SetRamBlockStatus(NvmB_App_DsmDtcAdd, TRUE);
#endif
   }
   /* if DTC not logged */ 
   else
   {
      u8LocalFaultId = 0;
      /* Check if a place is available in NVM for a new DTC */ 
      while (  (u8LocalFaultId < DSM_DTC_NB_RECORD_SIZE)
            && (0 == bLocalDtcFound)
            )
      {
         if (DSM_DtcSavedFreezeFrameNvm[u8LocalFaultId].DtcNumber == 0)
         {
            bLocalDtcFound = 1;
         }
         u8LocalFaultId++;
      }
      u8LocalFaultId--; 

      /* if no place is available in NVM for a new DTC */
      if (0 == bLocalDtcFound)
      {
         u16LocalPrevTimestampIgn = 0xFFFF;
         u8LocalPrevAgingCycleCnt = 0;
         u8LocalFaultId = DSM_DTC_NB_RECORD_SIZE - 1;
        
         /* Check which DTC we can delete to save the new (if the priority/level is higher) */
         for (u8LocalNvmId = 0; u8LocalNvmId < DSM_DTC_NB_RECORD_SIZE; u8LocalNvmId++)
         {
            u8LocalAgingCycleCnt = DSM_DtcEnvDataNvm[u8LocalNvmId].u8DtcAgingCycleCnt;
            
            if (u8LocalAgingCycleCnt > u8LocalPrevAgingCycleCnt)
            {
               u8LocalFaultId = u8LocalNvmId;
               u16LocalPrevTimestampIgn = u16LocalTimestampIgn;
               u8LocalPrevAgingCycleCnt = u8LocalAgingCycleCnt;               
            }
            else
            {
               if (  (u8LocalAgingCycleCnt == u8LocalPrevAgingCycleCnt)
                  && (u16LocalTimestampIgn < u16LocalPrevTimestampIgn)
                  )
               {
                  u8LocalFaultId = u8LocalNvmId;
                  u16LocalPrevTimestampIgn = u16LocalTimestampIgn;
                  u8LocalPrevAgingCycleCnt = u8LocalAgingCycleCnt;               
               }
               else
               {
               }
            }
         }
      }

      /* Management of DTC status */    
      DSM_DtcStatusNvm[u8LocalFaultId] |= (1 << TestFailed); 
      DSM_DtcStatusNvm[u8LocalFaultId] |= (1 << TestFailedThisOperationCycle); 
      DSM_DtcStatusNvm[u8LocalFaultId] |= (1 << TestFailedSinceLastClear);    
      DSM_DtcStatusNvm[u8LocalFaultId] |= (0 << TestNotCompletedSinceLastClear);
      DSM_DtcStatusNvm[u8LocalFaultId] |= (0 << TestNotCompletedThisOperationCycle);
      DSM_DtcStatusNvm[u8LocalFaultId] |= (1 << PendingDTC); 
#if 0
      /* !Comment: Update first malfunction odometer. */
      FAULT_FF_Frame_FF1.Item.OdomFirstMal_H = FAULT_FF_Frame_FF1.Item.OdomLastMal_H;
      FAULT_FF_Frame_FF1.Item.OdomFirstMal_L = FAULT_FF_Frame_FF1.Item.OdomLastMal_L;
#endif
      /* Save new DTC */
      DSM_DtcSavedFreezeFrameNvm[u8LocalFaultId].DtcNumber = u32LocalDtcNumber;
      DSM_vidRecordDtc(u8LocalFaultId);

      DSM_DtcEnvDataNvm[u8LocalFaultId].u8DtcAgingCycleCnt = 0;
      DSM_DtcEnvDataNvm[u8LocalFaultId].u8DtcOccurCnt = 0;

#if 0
      NvM_SetRamBlockStatus(NvmB_App_DsmDtcAdd, TRUE);     
#endif
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : Clear all DTC records                                       */
/* !Number      : SAV.2                                                       */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void FaultClearDTCRecord(void)
{
   uint8 u8LocalNvmFaultId;

   for (u8LocalNvmFaultId = 0; u8LocalNvmFaultId < DSM_DTC_NB_RECORD_SIZE ; u8LocalNvmFaultId++)
   {
      /* to unvalidate logged faults */
      DSM_DtcSavedFreezeFrameNvm[u8LocalNvmFaultId].DtcNumber = 0;
      DSM_DtcStatusNvm[u8LocalNvmFaultId] = 0;
      DSM_DtcEnvDataNvm[u8LocalNvmFaultId].u8DtcAgingCycleCnt = 0;
      DSM_DtcEnvDataNvm[u8LocalNvmFaultId].u8DtcOccurCnt = 0;
   }

#if 0
   NvM_SetRamBlockStatus(NvmB_App_DsmDtcAdd, TRUE);
   NvM_SetRamBlockStatus(NvmB_App_DsmDtcFF, TRUE);
#endif
}

/******************************************************************************/
/*                                                                            */
/* !Description : Saving of freeze frame variables                            */
/* !Number      :                                                             */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
static void DSM_vidRecordDtc(uint8 u8LocalNvmId)
{
#if 0
   TS_MemCpy32( (&DSM_DtcSavedFreezeFrameNvm[u8LocalNvmId].DtcFreezeFrame[0]),
                           (uint8 *)(&FAULT_FF_Frame_FF1),
                           (sizeof(FAULT_FF_Frame_FF1) ) );

   NvM_SetRamBlockStatus(NvmB_App_DsmDtcFF, TRUE);
#endif
}

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/

/******************************************************************************/
/*                                                                            */
/* !Description : Updating of AgingCycle counter during power latch           */
/* !Number      :                                                             */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                             */
/******************************************************************************/
void DSM_vidAgingCycleCnt(void)
{
   uint8 u8LocalNvmFaultId;
   for (u8LocalNvmFaultId = 0; u8LocalNvmFaultId < DSM_DTC_NB_RECORD_SIZE ; u8LocalNvmFaultId++)
   {
      if (  (DSM_DtcSavedFreezeFrameNvm[u8LocalNvmFaultId].DtcNumber != 0)
         && (DSM_DtcEnvDataNvm[u8LocalNvmFaultId].u8DtcAgingCycleCnt < 255)
         )
      {
         DSM_DtcEnvDataNvm[u8LocalNvmFaultId].u8DtcAgingCycleCnt++;
#if 0
         NvM_SetRamBlockStatus(NvmB_App_DsmDtcAdd, TRUE);
#endif
      }
   }
}

/******************************************************************************
*  
* !FuncName    : DSM_vidDtcStsInit  
* !Description : Initualize DTC Status bits, clear TF and TFTOC. 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void DSM_vidDtcStsInit(void)
{
   uint8 u8LocIdx;
   uint8 u8LocDtcStsMask;

   u8LocDtcStsMask = (1 << TestFailed) | (1 << TestFailedThisOperationCycle);
   u8LocDtcStsMask = ~u8LocDtcStsMask;
   
   for (u8LocIdx = 0; u8LocIdx < DSM_DTC_NB_RECORD_SIZE ; u8LocIdx++)
   {
      DSM_DtcStatusNvm[u8LocIdx] &= u8LocDtcStsMask;
   }
}

/******************************************************************************
*  
* !FuncName    : DSM_vidClrDtcStsTFBit  
* !Description : Clear DTC Status test failed bit
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void DSM_vidClrDtcStsTFBit(const uint8 u8LocListIdx)
{
   boolean bLocalDtcFound;
   uint8 u8LocDtcStsMask;
   uint8 u8LocalFaultId;
   uint32 u32LocalDtcNumber;

   bLocalDtcFound = FALSE;
   u8LocDtcStsMask = ~(1 << TestFailed);
   u8LocalFaultId = 0;
   u32LocalDtcNumber = FaultFunctionTypeDtcNbTable[u8LocListIdx];
   
   /* Check if DTC already logged */
   while (  (u8LocalFaultId < DSM_DTC_NB_RECORD_SIZE)
           && (FALSE == bLocalDtcFound)
            )
   {
      /* The ID saved is shifted to have the value 0 for No Fault detected */
      if (DSM_DtcSavedFreezeFrameNvm[u8LocalFaultId].DtcNumber == u32LocalDtcNumber)
      {
         bLocalDtcFound = TRUE;
      }
      u8LocalFaultId++;
   }
   
   u8LocalFaultId--;
   
   if (bLocalDtcFound)
   {
      if (u8LocalFaultId < DSM_DTC_NB_RECORD_SIZE)
      {
         DSM_DtcStatusNvm[u8LocalFaultId] &= u8LocDtcStsMask;
      }
   }
}

#define DSM_STOP_SEC_CODE
#include "MemMap.h"

/*------------------------------- end of file --------------------------------*/
