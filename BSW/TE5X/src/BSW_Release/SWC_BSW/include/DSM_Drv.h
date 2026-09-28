/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     : Fault detections driver                                 */
/*                                                                            */
/* !File            : DSM_Drv.h                                               */
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

#ifndef _DSM_DRV_H_
#define _DSM_DRV_H_

#include "Std_Types.h"

#include "DSM_Typ.h"
#include "DSM.h"
#include "DSM_L.h"

#define _DSM_NO                        0x55
#define _DSM_YES                       0xAA

#define _DSM_EXTENDED_STATUS           _DSM_NO

#define _DSM_DTC_MANAGEMENT            _DSM_YES
#define _DSM_DTC_IS_LOGGED_IGN         _DSM_NO  
#define _DSM_DTC_FULL_EEP_MANAGEMENT   _DSM_NO  
#define _DSM_FAULT_INTERRUPT_CALLING   _DSM_NO  


/******************************************************************************/
/*  Defines                                                                   */
/******************************************************************************/

#define WITH_FAIL                      1U
#define WITHOUT_FAIL                   0U

#define FAULT_NOT_FOUND                0
#define FAULT_DETECTED                 1
#define FAULT_LOGGED                   1
#define FAULT_IRREVERSIBLE             1
#define FAULT_CNT_IGN                  1
#define FAULT_AUTHORIZED               1

#define FAULT_LOCKED                   1
#define FAULT_UNLOCKED                 0

#define FAULT_ALL_DISABLE              0x00
#define FAULT_ALL_ENABLE               0xFF

#define FAULT_ERASE_AUTHORIZED         0x55AA


#define FAULT_NB_DTC_RECORD_MAX        7     /* a definir : nombre de DTC max sauvegarde              */
#define FAULT_DTC_RECORD_LENGTH        22    /* nombre d'octet a sauvegarder par panne :              */
                                             /*  - DTC number (2 octets)                              */
                                             /*  - DTC fault type (1 octet)                           */
                                             /*  - History counter (compteur d'anteriorite) (1 octet) */

#define FAULT_PERMANENT_HISTORY_COUNT  40    /* valeur d'init du compteur d'anteriorite               */
#define FAULT_DTC_DEFAULT_VALUE        0x00  /* valeur d'init du tableau de sauvegarde des DTC        */

/******************************************************************************/
/*  Prototypes                                                                */
/******************************************************************************/

/* interfaces application */

#define DSM_START_SEC_CODE
#include "MemMap.h"

extern void FaultClearOneDtcRecord(uint16 dtcIdx);
extern void FaultSaveOneNewDtcRecord(FaultDtcNbType dtcNb, FaultFailModType failMod);
extern void FaultRefreshOneDtcRecord(uint16 dtcIdx, FaultFailModType failMod);

extern boolean FaultDtcNbIsLoggedIgn(FaultDtcNbType dtcNb); 

#define DSM_STOP_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*  Macros                                                                    */
/******************************************************************************/

#if (_DSM_FAULT_INTERRUPT_CALLING == _DSM_YES)
   #define FaultSuspendAllInterrupts() \
      SuspendAllInterrupts()
#else 
   #define FaultSuspendAllInterrupts()
#endif

#if (_DSM_FAULT_INTERRUPT_CALLING == _DSM_YES)
   #define FaultResumeAllInterrupts() \
      ResumeAllInterrupts()
#else
   #define FaultResumeAllInterrupts()
#endif


/******************************************************************************/
/*  FaultDetection(Function, Type, State)                                     */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/*  State      :                                                              */
/******************************************************************************/
#define FaultDetection(Function, Type, State) \
   _FaultDetection(Function, Function##_##Type, State)

#define _FaultDetection(Function, FunctionType, State) \
   ( (State == WITH_FAIL) \
   ? (FaultDetectionWithFail(Function, FunctionType)) \
   : (FaultDetectionWithoutFail(Function, FunctionType)))

/******************************************************************************/
/*  FaultDetected(Function, Type)                                             */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultDetected(Function, Type) \
   _FaultDetected(Function, Function##_##Type)

#define _FaultDetected(Function, Type) \
   FaultDetectedState(Function, Type)

/******************************************************************************/
/*  FaultLogged(Function, Type)                                               */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultLogged(Function, Type) \
   _FaultLogged(Function, Function##_##Type)

#define _FaultLogged(Function, Type) \
   FaultLoggedState(Function, Type)

/******************************************************************************/
/*  FaultIrr(Function, Type)                                                  */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultIrr(Function, Type) \
   _FaultIrr(Function, Function##_##Type)

#define _FaultIrr(Function, Type) \
   FaultIrrState(Function, Type)

/******************************************************************************/
/*  FaultCounter(Function, Type)                                              */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultCounter(Function, Type) \
   _FaultCounter(Function, Function##_##Type)

#define _FaultCounter(Function, Type) \
   FaultCounterState(Function, Type)

/******************************************************************************/
/*  FaultDisable(Function, Type)                                              */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultDisable(Function, Type) \
   _FaultDisable(Function, Function##_##Type)

#define _FaultDisable(Function, Type) \
   if(FaultLockedState(Function, Type) == 0) \
   { \
      FaultDisableDetection(Function, Type) \
   }

/******************************************************************************/
/*  FaultEnable(Function, Type)                                               */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultEnable(Function, Type) \
   _FaultEnable(Function, Function##_##Type)

#define _FaultEnable(Function, Type) \
   if(FaultLockedState(Function, Type) == 0) \
   { \
      FaultEnableDetection(Function, Type) \
   }

/******************************************************************************/
/*  Internal macro                                                            */
/******************************************************************************/


/******************************************************************************/
/*  FaultGetTypeIdx(Function, Type)                                           */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultGetTypeIdx(Function, Type) \
   FaultFunctionTypeOffsetTable[Function] + Type

/******************************************************************************/
/*  FaultFunctionDetected(Function)                                           */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultFunctionDetected(Function) \
   ((FaultFunctionTypeDetectedArray[Function] != (FaultBitFieldType)0) \
   ?FAULT_DETECTED \
   :FAULT_NOT_FOUND)

/******************************************************************************/
/*  FaultFunctionLogged(Function)                                             */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultFunctionLogged(Function) \
   ((FaultFunctionTypeLoggedArray[Function] != (FaultBitFieldType)0) \
   ?FAULT_LOGGED \
   :FAULT_NOT_FOUND)

/******************************************************************************/
/*  FaultFunctionDisable(Function)                                            */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultFunctionDisable(Function) \
   FaultSuspendAllInterrupts(); \
   FaultFunctionTypeAuthorizedArray[Function] &= \
   (FaultBitFieldType)(FaultFunctionTypeLockedArray[Function]); \
   FaultResumeAllInterrupts()

/******************************************************************************/
/*  FaultFunctionEnable(Function)                                             */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultFunctionEnable(Function) \
   FaultSuspendAllInterrupts(); \
   FaultFunctionTypeAuthorizedArray[Function] |= \
   (FaultBitFieldType)(~FaultFunctionTypeLockedArray[Function]) \
   FaultResumeAllInterrupts()

/******************************************************************************/
/*  FaultClearDetected(Function, Type)                                        */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultClearDetected(Function, Type) \
   FaultSuspendAllInterrupts(); \
   FaultFunctionTypeDetectedArray[Function] &= (FaultBitFieldType) (~(1 << Type)); \
   FaultResumeAllInterrupts()

/******************************************************************************/
/*  FaultClearLogged(Function, Type)                                          */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultClearLogged(Function, Type) \
   FaultSuspendAllInterrupts(); \
   FaultFunctionTypeLoggedArray[Function] &= (FaultBitFieldType) (~(1 << Type)); \
   FaultResumeAllInterrupts()

/******************************************************************************/
/*  FaultSetDetected(Function, Type)                                          */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultSetDetected(Function, Type) \
   FaultSuspendAllInterrupts(); \
   FaultFunctionTypeDetectedArray[Function] |= (FaultBitFieldType)(1 << Type); \
   FaultResumeAllInterrupts()

/******************************************************************************/
/*  FaultSetLogged(Function, Type)                                            */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultSetLogged(Function, Type) \
   FaultSuspendAllInterrupts(); \
   FaultFunctionTypeLoggedArray[Function] |= (FaultBitFieldType)(1 << Type); \
   FaultResumeAllInterrupts()

/******************************************************************************/
/*  FaultSetLoggedIgn(Function, Type)                                         */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultSetLoggedIgn(Function, Type) \
   FaultSuspendAllInterrupts(); \
   FaultFunctionTypeLogIgnArray[Function] |= (FaultBitFieldType)(1 << Type); \
   FaultResumeAllInterrupts()

/******************************************************************************/
/*  FaultDisableDetection(Function, Type)                                     */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultDisableDetection(Function, Type) \
   FaultSuspendAllInterrupts(); \
   FaultFunctionTypeAuthorizedArray[Function] &= ~(1 << Type); \
   FaultResumeAllInterrupts()

/******************************************************************************/
/*  FaultEnableDetection(Function, Type)                                      */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultEnableDetection(Function, Type) \
   FaultSuspendAllInterrupts(); \
   FaultFunctionTypeAuthorizedArray[Function] |= (1 << Type); \
   FaultResumeAllInterrupts()

/******************************************************************************/
/*  FaultAuthorizedState(Function, Type)                                      */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultAuthorizedState(Function, Type) \
   (FaultStateType)((FaultFunctionTypeAuthorizedArray[Function] >> Type) & 0x0001)

/******************************************************************************/
/*  FaultLockedState(Function, Type)                                          */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultLockedState(Function, Type) \
   (FaultStateType)((FaultFunctionTypeLockedArray[Function] >> Type) & 0x0001)

/******************************************************************************/
/*  FaultDetectedState(Function, Type)                                        */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultDetectedState(Function, Type) \
   (FaultStateType)((FaultFunctionTypeDetectedArray[Function] >> Type) & 0x0001)

/******************************************************************************/
/*  FaultLoggedState(Function, Type)                                          */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultLoggedState(Function, Type) \
   (FaultStateType)((FaultFunctionTypeLoggedArray[Function] >> Type) & 0x0001)

/******************************************************************************/
/*  FaultLoggedIgnState(Function, Type)                                       */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultLoggedIgnState(Function, Type) \
   (FaultStateType)((FaultFunctionTypeLogIgnArray[Function] >> Type) & 0x0001)

/******************************************************************************/
/*  FaultIrrState(Function, Type)                                             */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultIrrState(Function, Type) \
   (FaultStateType)((FaultFunctionTypeIrrArray[Function] >> Type) & 0x0001)

/******************************************************************************/
/*  FaultCntIgnState(Function, Type)                                          */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultCntIgnState(Function, Type) \
   (FaultStateType)((FaultFunctionTypeCntIgnArray[Function] >> Type) & 0x0001)

/******************************************************************************/
/*  FaultCounterState(Function, Type)                                         */
/******************************************************************************/
/*  Function   :                                                              */
/*  Type       :                                                              */
/******************************************************************************/
#define FaultCounterState(Function, Type) \
   FaultTableFuncTypeCounter1[FaultGetTypeIdx(Function, Type)]

#endif /* _DSM_DRV_H_ */

/*------------------------------- end of file --------------------------------*/
