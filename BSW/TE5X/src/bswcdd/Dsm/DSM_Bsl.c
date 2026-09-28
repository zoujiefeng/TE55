/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     : Fault management                                        */
/*                                                                            */
/* !File            : DSM_Bsl.c                                               */
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
/* DSM.BSL.1 / FaultCounterInit                                               */
/* DSM.BSL.2 / FaultDetectionWithFail                                         */
/* DSM.BSL.3 / FaultDetectionWithoutFail                                      */
/* DSM.BSL.4 / FaultPowerDownManage                                           */
/* DSM.BSL.5 / FaultClear                                                     */
/* DSM.BSL.6 / FaultManualErase                                               */
/******************************************************************************/

#include "Std_Types.h"
#include "FAULT.h"
#include "DSM_Nvm.h"
#include "DSM_L.h"
#include "DSM.h"

//<<#include "eep_srv.h"
//<<#include "eep_dat.h"

#define DSM_START_SEC_CODE
#include "MemMap.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void FaultFailModHandle(FaultOffsetType xLocalFaultOffset, boolean bisFailState);

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define DSM_MOTOR_MASK               0xF0u
#define DSM_FAILMOD_MASK             0x0Fu
#define DSM_FAILMOD_MASK_BIT_SIZE    4u
#define DSM_UNIT_FAILMOD_NUM         5u     /* UNIT has 5 fault levels  */

/*Special definition for Nissan 4HD-P,its an temporary method*/
/*These definitions indicated the lower/upper limit number of GCU's elements in these arrays*/
/* MCU1 */
#define UNIT_0_ARRAY_FUNCTION_ELEMENT_START_1        (BSW_COM_)
#define UNIT_0_ARRAY_FUNCTION_ELEMENT_STOP_1         (FTMTLCS_)
#define UNIT_0_ARRAY_FUNCTION_TYPE_ELEMENT_START_1   41u
#define UNIT_0_ARRAY_FUNCTION_TYPE_ELEMENT_STOP_1    92u
#define UNIT_0_ARRAY_FUNCTION_ELEMENT_START_2        (SDMTMEP_)
#define UNIT_0_ARRAY_FUNCTION_ELEMENT_STOP_2         (SDMTMEP_)
#define UNIT_0_ARRAY_FUNCTION_TYPE_ELEMENT_START_2   282u
#define UNIT_0_ARRAY_FUNCTION_TYPE_ELEMENT_STOP_2    289u

/* MCU2 */
#define UNIT_1_ARRAY_FUNCTION_ELEMENT_START          (GBSW_COM_)
#define UNIT_1_ARRAY_FUNCTION_ELEMENT_STOP           (GSDMTMEP_)
#define UNIT_1_ARRAY_FUNCTION_TYPE_ELEMENT_START     93u
#define UNIT_1_ARRAY_FUNCTION_TYPE_ELEMENT_STOP      152u

/* ACU */
#define UNIT_2_ARRAY_FUNCTION_ELEMENT_START          (ABSW_COM_)
#define UNIT_2_ARRAY_FUNCTION_ELEMENT_STOP           (AFTSLOBS_)
#define UNIT_2_ARRAY_FUNCTION_TYPE_ELEMENT_START     0u
#define UNIT_2_ARRAY_FUNCTION_TYPE_ELEMENT_STOP      40u

/* OCU */
#define UNIT_3_ARRAY_FUNCTION_ELEMENT_START          (OBSW_COM_)
#define UNIT_3_ARRAY_FUNCTION_ELEMENT_STOP           (OFTSLOBS_)
#define UNIT_3_ARRAY_FUNCTION_TYPE_ELEMENT_START     153u
#define UNIT_3_ARRAY_FUNCTION_TYPE_ELEMENT_STOP      193u

/* PDU */
#define UNIT_4_ARRAY_FUNCTION_ELEMENT_START          (RCEVETA_)
#define UNIT_4_ARRAY_FUNCTION_ELEMENT_STOP           (RCSMACS_SCU)
#define UNIT_4_ARRAY_FUNCTION_TYPE_ELEMENT_START     194u
#define UNIT_4_ARRAY_FUNCTION_TYPE_ELEMENT_STOP      281u

#define FUNCTION_TYPE_ELEMENT_MAX_NO      (UNIT_0_ARRAY_FUNCTION_TYPE_ELEMENT_STOP_2 + 1)

#if (FUNCTION_TYPE_ELEMENT_MAX_NO != NB_FAULT_FUNCTION_TYPE)
#error "bswcdd\Dsm\DSM_Bsl.c : The fault code segment is not synchronized with the Oil, requiring inspection"
#endif

enum{
   DSM_FAILMOD_START_IDX_UNIT_0 = 0,
   DSM_FAILMOD_END_IDX_UNIT_0 = DSM_FAILMOD_START_IDX_UNIT_0 + DSM_UNIT_FAILMOD_NUM,

   DSM_FAILMOD_START_IDX_UNIT_1 = DSM_FAILMOD_END_IDX_UNIT_0,
   DSM_FAILMOD_END_IDX_UNIT_1 = DSM_FAILMOD_START_IDX_UNIT_1 + DSM_UNIT_FAILMOD_NUM,

   DSM_FAILMOD_START_IDX_UNIT_2 = DSM_FAILMOD_END_IDX_UNIT_1,
   DSM_FAILMOD_END_IDX_UNIT_2 = DSM_FAILMOD_START_IDX_UNIT_2 + DSM_UNIT_FAILMOD_NUM,

   DSM_FAILMOD_START_IDX_UNIT_3 = DSM_FAILMOD_END_IDX_UNIT_2,
   DSM_FAILMOD_END_IDX_UNIT_3 = DSM_FAILMOD_START_IDX_UNIT_3 + DSM_UNIT_FAILMOD_NUM,

   DSM_FAILMOD_START_IDX_UNIT_4 = DSM_FAILMOD_END_IDX_UNIT_3,
   DSM_FAILMOD_END_IDX_UNIT_4 = DSM_FAILMOD_START_IDX_UNIT_4 + 1,  /* PDU has 1 fault levels  */
};

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  FaultFailModHandle
 * Description      :  Handle fault level and fault counter
 * Input parameter  :  xLocalFaultOffset - fault index
 *                     bisFailState - fault state: TRUE=fault occurred  FALSE=fault recovered
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/01/05       V1.0        Zyx        Create
 * 2024/01/23       V1.1        Lzj        Modify.Add "else u8LocFailModCounterIdx = (u16locFaultFailMode & DSM_UNIT_1_FAILMOD_MASK);"
 * 2024/01/24       V1.2        Zyx        Modify.Add "zero-level fault does not affect the fault level"
 * 2024/01/24       V2.0        Lzj        Modify.Now lower 4 bits for FailMode,higher 4 bits for Motor
 ***********************************************************************/ 
static void FaultFailModHandle(FaultOffsetType xLocalFaultOffset, boolean bisFailState)
{
   uint8 u8LocFailModCounterIdx   = 0;
   uint8 u8LocMotorIndex          = 0;
   uint8 u8LocFailMode            = 0;
   sint16 s16LocFailModCount      = 0;
   boolean bFaultLevelRecoverFlag = FALSE;

   /* a. Which Motor Being Selected */
   u8LocMotorIndex = (uint8)((FaultFunctionTypeFailModTable[xLocalFaultOffset] & DSM_MOTOR_MASK) >> DSM_FAILMOD_MASK_BIT_SIZE);
   /* b. Which FailMod belongs to this Motor */
   u8LocFailMode   = (uint8)(FaultFunctionTypeFailModTable[xLocalFaultOffset] & DSM_FAILMOD_MASK);

   /* 1. Fail Mode Counter Handle */
   {
      /**********************************************************************
      * ! 
      * ! Explain what "u8LocFailModCounterIdx" is which will appear later
      * ! u8LocFailModCounterIdx is the element's number of FaultFailModCounterTable[]'s
      * ! We use this array to index the times of different faults in different Motors
      * ! In Nissan HPT150 project:
      * ! [0]~[4] for MCU's faults.[0] for level 0,[1] for level 1 and so on
      * ! [5]~[9] for GCU's faults.[5] for level 0 and ... ...
      * ! 
      **********************************************************************/
      /* a. Get Counter Table Index */
      /* a. If MCU selected */
      if(u8LocMotorIndex < DSM_UNIT_MAX_NUM)
      {
         u8LocFailModCounterIdx = (DSM_UNIT_FAILMOD_NUM * u8LocMotorIndex + u8LocFailMode);
      }
      
      if(TRUE == bisFailState)
      {
         FaultFailModCounterTable[u8LocFailModCounterIdx]++;
      }
      else
      {
         if (FaultFailModCounterTable[u8LocFailModCounterIdx] > 1)
         {
            FaultFailModCounterTable[u8LocFailModCounterIdx]--;
         }
         else
         {
            bFaultLevelRecoverFlag = TRUE;
            FaultFailModCounterTable[u8LocFailModCounterIdx] = 0;
         }
      }
   }/* End of Fail Mode Counter Handle */
   
   /* 2. Fault Level Handle */
   {
      if(0 == u8LocFailMode)
      {
         /* zero-level fault does not affect the fault level */
         /*                    Do nothing                    */
      }
      else
      {
         if(TRUE == bisFailState)
         {
            if(u8LocFailMode > DSM_FaultFailureLevel[u8LocMotorIndex])
            {
               /* a. The fault level of current fault is greater than Unit fault level */
               /* b. Set a new fault level for the unit */
               DSM_FaultFailureLevel[u8LocMotorIndex] = u8LocFailMode;
            }
            else
            {
               /* a. The fault level of current fault is smaller than Unit fault level */
               /* b. Do nothing */
            }
         }
         else if(TRUE == bFaultLevelRecoverFlag)
         {
            /* Find next valid fault level */
            if (u8LocFailMode == DSM_FaultFailureLevel[u8LocMotorIndex])
            {
               do
               {
                  /* Execute a maximum of four loops before exiting */
                  /* Fail mode: 4--, 3--, 2--, 1-- */
                  u8LocFailMode--;
                  /* Counter Uint_0: 4--, 3--, 2--, 1--*/
                  /* Counter Uint_1: 9--, 8--, 7--, 6--*/
                  u8LocFailModCounterIdx--;
                  s16LocFailModCount = FaultFailModCounterTable[u8LocFailModCounterIdx];
               } while ((s16LocFailModCount == 0)
                     && (u8LocFailMode != 0));
               
               /* c. Set a new fault level for the unit */
               DSM_FaultFailureLevel[u8LocMotorIndex] = u8LocFailMode;
            }
         }
         else
         {
            /* c. The fault level is not recovered, do nothing */
         }
      }
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description: FaultCounterInit                                             */
/* !Number     : BSL.1                                                        */
/* !Reference  :                                                              */
/* !Trace_To   :                                                              */
/*                                                                            */
/* !LastAuthor :                                                              */
/******************************************************************************/
/* !Comment: initialize the fault detection management                        */
/* @param  : None                                                             */
/* @return : None                                                             */
/******************************************************************************/
void FaultCounterInit(void)
{
   FaultStateType    localFaultIgn           = 0;
   FaultFunctionType localFaultGroupIdx      = 0;
   uint16            localFaultIdx           = 0;
   FaultIndexType    localCheckFaultTypeIdx  = 0;
   FaultFailModType  localFaultFailMod       = 0;
   uint16_least      localNbFaultTypeByGroup = 0;
   uint8             u8LocMotorNum           = 0;

   FaultFailureLevel = FAULT_FAILURE_LEVEL_0;/*need to do   --LZJ*/
   for(u8LocMotorNum = 0; u8LocMotorNum < DSM_CONTROL_UNIT_NUM; u8LocMotorNum++)
   {
      DSM_FaultFailureLevel[u8LocMotorNum] = FAULT_FAILURE_LEVEL_0;
   }

   FaultEraseRequest = 0;

   for (localFaultGroupIdx = 0;
        localFaultGroupIdx < NB_FAULT_FUNCTION;
        localFaultGroupIdx++
       )
   {
      FaultFunctionTypeDetectedArray[localFaultGroupIdx] = 0;
      FaultFunctionTypeLoggedArray[localFaultGroupIdx] = 0;
      FaultFunctionTypeLogIgnArray[localFaultGroupIdx] = 0;
      FaultFunctionTypeAuthorizedArray[localFaultGroupIdx] = (FaultBitFieldType)(FaultFunctionTypeAutInitArray[localFaultGroupIdx]);
   }

   localCheckFaultTypeIdx = 0;
   for (localFaultGroupIdx = 0;
        localFaultGroupIdx < NB_FAULT_FUNCTION;
        localFaultGroupIdx++
       )
   {
      localNbFaultTypeByGroup = FaultFunctionTypeOffsetTable[localFaultGroupIdx + 1] - FaultFunctionTypeOffsetTable[localFaultGroupIdx];
      for (localFaultIdx = 0;
           localFaultIdx < localNbFaultTypeByGroup;
           localFaultIdx++
          )
      {
         localFaultIgn = FaultCntIgnState(localFaultGroupIdx, localFaultIdx);
         if (localFaultIgn == FAULT_CNT_IGN)
         {
            if (FaultTableFuncTypeCounter1[localCheckFaultTypeIdx] == 255)
            {
               FaultSetLogged(localFaultGroupIdx, localFaultIdx);
            }
         }
         else
         {
            FaultTableFuncTypeCounter1[localCheckFaultTypeIdx] = 0;
         }
         localCheckFaultTypeIdx++;
      }
   }
   for (localFaultFailMod = 0;
        localFaultFailMod < NB_FAIL_MOD_MAX;
        localFaultFailMod++
       )
   {
      FaultFailModCounterTable[localFaultFailMod] = 0;
   }
   
   /* !Comment: Initialize DTC Status stored in NVM. */
   DSM_vidDtcStsInit();
}

/******************************************************************************/
/*                                                                            */
/* !Description: FaultDetectionWithFail                                       */
/* !Number     : BSL.2                                                        */
/* !Reference  :                                                              */
/* !Trace_To   :                                                              */
/*                                                                            */
/* !LastAuthor :                                                              */
/******************************************************************************/
/* !Comment: Manage a fault detection                                         */
/* @param  : - Function: fault function internal number                       */
/*           - Type    : fault type number in this fault function             */
/* @return : None                                                             */
/******************************************************************************/
void FaultDetectionWithFail(FaultFunctionType Function, FaultIndexType Type)
{
   FaultOffsetType       localFaultOffset;
   FaultStateType        localFaultTypeAut;
   FaultStateType        localFaultLogged;
   uint16_least          localFaultCount;
   

#if (_DSM_EXTENDED_STATUS == _DSM_YES)
   if (  (Function < NB_FAULT_FUNCTION)
      && (Type <= (FaultIndexType)(FaultFunctionTypeOffsetTable[Function + 1] - FaultFunctionTypeOffsetTable[Function]))
      )
   {
#endif
      localFaultTypeAut = FaultAuthorizedState(Function, Type);
      if (localFaultTypeAut == FAULT_AUTHORIZED)
      {
         FaultSetDetected(Function, Type);
         localFaultOffset = (FaultOffsetType)FaultGetTypeIdx(Function, Type);
         if (FaultTableFuncTypeCounter1[localFaultOffset] != 255)
         {
            localFaultCount = (uint16)FaultTableFuncTypeCounter1[localFaultOffset]
                                      + FaultFunctionTypeIncs[localFaultOffset];
            if (localFaultCount >= 255)
            {
               FaultTableFuncTypeCounter1[localFaultOffset] = (FaultCntType)255;
               localFaultLogged = FaultLoggedState(Function, Type);
               if (localFaultLogged == 0)
               {
                  FaultSetLogged(Function, Type);

#if (_DSM_DTC_MANAGEMENT == _DSM_YES)
                  FaultRecordDTC(localFaultOffset);
#if (_DSM_DTC_IS_LOGGED_IGN == _DSM_YES)
                  FaultSetLoggedIgn(Function, Type);
#endif
#endif
                  /* localFailModCounterIdx = FaultSetFailModCounterIndex(localFaultOffset); */  /* By ZYX: For compatiblity with multiple units */
                  FaultFailModHandle(localFaultOffset, TRUE);
               }
            }
            else
            {
               FaultTableFuncTypeCounter1[localFaultOffset] = (FaultCntType)localFaultCount;
            }
         }
      }
#if (_DSM_EXTENDED_STATUS == _DSM_YES)
   }
#endif
}

/******************************************************************************/
/*                                                                            */
/* !Description: FaultDetectionWithoutFail                                    */
/* !Number     : BSL.3                                                        */
/* !Reference  :                                                              */
/* !Trace_To   :                                                              */
/*                                                                            */
/* !LastAuthor :                                                              */
/******************************************************************************/
/* !Comment: Manage a no fault detection                                      */
/* @param  : - Function: fault function internal number                       */
/*           - Type    : fault type number in this fault function             */
/* @return : None                                                             */
/******************************************************************************/
void FaultDetectionWithoutFail(FaultFunctionType Function, FaultIndexType Type)
{
   FaultOffsetType       localFaultOffset;
   sint16                localFaultCount;
   FaultStateType        localFaultTypeAut;
   FaultStateType        localFaultLogged;
   FaultStateType        localFaultIrr;


#if (_DSM_EXTENDED_STATUS == _DSM_YES)
   if (  (Function < NB_FAULT_FUNCTION)
      && (Type <= (FaultIndexType)(FaultFunctionTypeOffsetTable[Function + 1] - FaultFunctionTypeOffsetTable[Function]))
      )
   {
#endif
      localFaultTypeAut = FaultAuthorizedState(Function, Type);
      if (localFaultTypeAut == FAULT_AUTHORIZED)
      {
         FaultClearDetected(Function, Type);
         localFaultOffset = (FaultOffsetType)FaultGetTypeIdx(Function, Type);
         if (FaultTableFuncTypeCounter1[localFaultOffset] != 0)
         {
            localFaultCount = (sint16)(FaultTableFuncTypeCounter1[localFaultOffset]
                                      - FaultFunctionTypeDecs[localFaultOffset]);
            if (localFaultCount <= 0)
            {
               /* !Comment: Clear DTC TF status bit. */
               DSM_vidClrDtcStsTFBit(localFaultOffset);
               
               FaultTableFuncTypeCounter1[localFaultOffset] = (FaultCntType)0;
               localFaultLogged = FaultLoggedState(Function, Type);
               localFaultIrr = FaultIrrState(Function, Type);
               if (  (localFaultLogged != 0)
                  && (localFaultIrr != FAULT_IRREVERSIBLE)
                  )
               {
                  FaultClearLogged(Function, Type);

                  FaultFailModHandle(localFaultOffset, FALSE);
               }
            }
            else
            {
               FaultTableFuncTypeCounter1[localFaultOffset] = (FaultCntType)localFaultCount;
            }
         }
      }
#if (_DSM_EXTENDED_STATUS == _DSM_YES)
   }
#endif
}

/******************************************************************************/
/*                                                                            */
/* !Description: FaultPowerDownManage                                         */
/* !Number     : BSL.4                                                        */
/* !Reference  :                                                              */
/* !Trace_To   :                                                              */
/*                                                                            */
/* !LastAuthor :                                                              */
/******************************************************************************/
/* !Comment:                                                                  */
/* @param  : None                                                             */
/* @return : None                                                             */
/******************************************************************************/
void FaultPowerDownManage(void)
{
//<<   EepSRVWrite(EEPROM_FAULTCOUNT, EEPROM_SAVE_LATER);
}

void DSM_vidClrFuncArrayBySegment(const uint16 ku16SegStart, const uint16 ku16SegEnd)
{
   uint16 u16Index;

   for(u16Index = ku16SegStart; u16Index < (ku16SegEnd + 1); u16Index++)
   {
      FaultFunctionTypeDetectedArray[u16Index] = 0;
      FaultFunctionTypeLoggedArray[u16Index]   = 0;
   }
}

void DSM_vidClrFuncCtrBySegment(const uint16 ku16SegStart, const uint16 ku16SegEnd)
{
   uint16 u16Index;

   for(u16Index = ku16SegStart; u16Index < (ku16SegEnd + 1); u16Index++)
   {
      FaultTableFuncTypeCounter1[u16Index] = 0;
   }
}

void DSM_vidClrFailModeCtrBySegment(const uint8 ku8SegStart, const uint8 ku8SegEnd)
{
   uint8 u8Index;

   for(u8Index = ku8SegStart; u8Index < ku8SegEnd; u8Index++)
   {
      FaultFailModCounterTable[u8Index] = 0;
   }
}

/******************************************************************************
*
* !Description: FaultClear
* !Number     : BSL.5
* !Reference  : 
* !Trace_To   : 
* !LastAuthor : 
* !Comment: reset all detection and logging flags and clear all faults contexts stored in appointed motor
*
* @param:
* u8LocMotorIndex   :Show which Motor being selected
* @return : None
*
* Modify          Version     Author     Operation
* --------------------------------------------------------------------
* 2024/01/15       V1.0        Zyx        Create
* 2024/01/25       V1.1        Lzj        Modify.To distinguish Motor type
******************************************************************************/
void FaultClear(uint8 u8LocMotorIndex)
{
   switch(u8LocMotorIndex)
   {
      case DSM_UNIT_0:
      {
         DSM_vidClrFuncArrayBySegment(UNIT_0_ARRAY_FUNCTION_ELEMENT_START_1, UNIT_0_ARRAY_FUNCTION_ELEMENT_STOP_1);
         DSM_vidClrFuncArrayBySegment(UNIT_0_ARRAY_FUNCTION_ELEMENT_START_2, UNIT_0_ARRAY_FUNCTION_ELEMENT_STOP_2);

         DSM_vidClrFuncCtrBySegment(UNIT_0_ARRAY_FUNCTION_TYPE_ELEMENT_START_1, UNIT_0_ARRAY_FUNCTION_TYPE_ELEMENT_STOP_1);
         DSM_vidClrFuncCtrBySegment(UNIT_0_ARRAY_FUNCTION_TYPE_ELEMENT_START_2, UNIT_0_ARRAY_FUNCTION_TYPE_ELEMENT_STOP_2);
         
         DSM_vidClrFailModeCtrBySegment(DSM_FAILMOD_START_IDX_UNIT_0, DSM_FAILMOD_END_IDX_UNIT_0);
         break;
      }
      case DSM_UNIT_1:
      {
         DSM_vidClrFuncArrayBySegment(UNIT_1_ARRAY_FUNCTION_ELEMENT_START, UNIT_1_ARRAY_FUNCTION_ELEMENT_STOP);
         DSM_vidClrFuncArrayBySegment(UNIT_1_ARRAY_FUNCTION_ELEMENT_START, UNIT_1_ARRAY_FUNCTION_ELEMENT_STOP);

         DSM_vidClrFuncCtrBySegment(UNIT_1_ARRAY_FUNCTION_TYPE_ELEMENT_START, UNIT_1_ARRAY_FUNCTION_TYPE_ELEMENT_STOP);
         
         DSM_vidClrFailModeCtrBySegment(DSM_FAILMOD_START_IDX_UNIT_1, DSM_FAILMOD_END_IDX_UNIT_1);
         break;
      }
      case DSM_UNIT_2:
      {
         DSM_vidClrFuncArrayBySegment(UNIT_2_ARRAY_FUNCTION_ELEMENT_START, UNIT_2_ARRAY_FUNCTION_ELEMENT_STOP);
         DSM_vidClrFuncArrayBySegment(UNIT_2_ARRAY_FUNCTION_ELEMENT_START, UNIT_2_ARRAY_FUNCTION_ELEMENT_STOP);

         DSM_vidClrFuncCtrBySegment(UNIT_2_ARRAY_FUNCTION_TYPE_ELEMENT_START, UNIT_2_ARRAY_FUNCTION_TYPE_ELEMENT_STOP);
         
         DSM_vidClrFailModeCtrBySegment(DSM_FAILMOD_START_IDX_UNIT_2, DSM_FAILMOD_END_IDX_UNIT_2);
         break;
      }
      case DSM_UNIT_3:
      {
         DSM_vidClrFuncArrayBySegment(UNIT_3_ARRAY_FUNCTION_ELEMENT_START, UNIT_3_ARRAY_FUNCTION_ELEMENT_STOP);
         DSM_vidClrFuncArrayBySegment(UNIT_3_ARRAY_FUNCTION_ELEMENT_START, UNIT_3_ARRAY_FUNCTION_ELEMENT_STOP);

         DSM_vidClrFuncCtrBySegment(UNIT_3_ARRAY_FUNCTION_TYPE_ELEMENT_START, UNIT_3_ARRAY_FUNCTION_TYPE_ELEMENT_STOP);
         
         DSM_vidClrFailModeCtrBySegment(DSM_FAILMOD_START_IDX_UNIT_3, DSM_FAILMOD_END_IDX_UNIT_3);
         break;
      }
      case DSM_UNIT_4:
      {
         DSM_vidClrFuncArrayBySegment(UNIT_4_ARRAY_FUNCTION_ELEMENT_START, UNIT_4_ARRAY_FUNCTION_ELEMENT_STOP);
         DSM_vidClrFuncArrayBySegment(UNIT_4_ARRAY_FUNCTION_ELEMENT_START, UNIT_4_ARRAY_FUNCTION_ELEMENT_STOP);

         DSM_vidClrFuncCtrBySegment(UNIT_4_ARRAY_FUNCTION_TYPE_ELEMENT_START, UNIT_4_ARRAY_FUNCTION_TYPE_ELEMENT_STOP);
         
         DSM_vidClrFailModeCtrBySegment(DSM_FAILMOD_START_IDX_UNIT_4, DSM_FAILMOD_END_IDX_UNIT_4);
         break;
      }
      default:
      {
         break;
      }
   }

   FaultFailureLevel = FAULT_FAILURE_LEVEL_0;/*need to do   --LZJ*/
   DSM_FaultFailureLevel[u8LocMotorIndex] = FAULT_FAILURE_LEVEL_0;
}

/******************************************************************************/
/*                                                                            */
/* !Description: FaultManualErase                                             */
/* !Number     : BSL.6                                                        */
/* !Reference  :                                                              */
/* !Trace_To   :                                                              */
/*                                                                            */
/* !LastAuthor :                                                              */
/******************************************************************************/
/* !Comment: reset all detection and logging flags and clear all faults       */
/*           contexts stored manually via TestPro                             */
/* @param  : None                                                             */
/* @return : None                                                             */
/******************************************************************************/
void FaultManualErase(void)
{
   uint8 u8Index = 0;
   uint16 *pu16FaultErase = NULL_PTR;
   pu16FaultErase = (uint16*)&FaultEraseRequestC;
   
   if ( (FAULT_ERASE_AUTHORIZED == FaultEraseRequest) ||
        (FAULT_ERASE_AUTHORIZED == *pu16FaultErase) )
   {
      FaultEraseRequest = 0;
      *pu16FaultErase = 0;
      
      FaultClear(DSM_UNIT_MAP_MCU);
      FaultClear(DSM_UNIT_MAP_GCU);
      FaultClear(DSM_UNIT_MAP_ACU);
      FaultClear(DSM_UNIT_MAP_OCU);
      FaultClear(DSM_UNIT_MAP_PDU);

      for(u8Index = 0; u8Index < DSM_DTC_NB_RECORD_SIZE; u8Index++)
      {
        DSM_DtcSavedFreezeFrameNvm[u8Index].DtcNumber = 0;
      }
   }
   
   for(u8Index = 0; u8Index < DSM_DTC_NB_RECORD_SIZE; u8Index++)
   {
      DSM_DtcNumber[u8Index] = DSM_DtcSavedFreezeFrameNvm[u8Index].DtcNumber;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description: DSM_u8GetFaultLevel                                          */
/*                                                                            */
/* !LastAuthor : Daniel                                                       */
/******************************************************************************/
/* !Comment: Get Fault failure level       */
/* @param  : None                                                             */
/* @return : Fault Level                                                      */
/******************************************************************************/
uint8 DSM_u8GetUnitFaultLevel(uint8 u8UnitIndex)
{
   uint8 u8Unit;
   uint8 u8MaxLevel;

   u8MaxLevel = DSM_FaultFailureLevel[0];
   for(u8Unit = 1; u8Unit < DSM_UNIT_MAP_MAX; u8Unit++)
   {
      if(DSM_FaultFailureLevel[u8Unit] > u8MaxLevel)
      {
         u8MaxLevel = DSM_FaultFailureLevel[u8Unit];
      }
   }

   DSM_FaultFailureLevel[DSM_UNIT_MAP_MAX] = u8MaxLevel;
   
   return DSM_FaultFailureLevel[u8UnitIndex];
}

#define DSM_STOP_SEC_CODE
#include "MemMap.h"

/*------------------------------- end of file --------------------------------*/
