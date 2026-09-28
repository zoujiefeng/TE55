/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     : Failures data types definition                          */
/*                                                                            */
/* !File            : DSM_Typ.h                                               */
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

#ifndef _DSM_TYP_H_
#define _DSM_TYP_H_

#include "Std_Types.h"

/*!Comment: emergency stop fault level, should excute ASC.  */
#define DSM_FAULT_LEVEL_EMRG_STOP      (4U)

typedef uint8             FaultFunctionType;         /* Determine le nbre de pannes_fonction max                   */
typedef uint8             FaultIndexType;
typedef uint16            FaultBitFieldType;
typedef FaultBitFieldType FaultMaskType;
typedef uint16            FaultOffsetType;
                                                     /*                                                            */
typedef FaultBitFieldType FaultStateType;            /*                                                            */
                                                     /*                                                            */
typedef uint8             FaultCntType;              /* Type des increments/decrements/compteurs de panne          */
typedef uint8             FaultFailModType;          /* Type des Fail_mod                                          */
typedef uint8             FaultFailureLevelType;     /* Type des FaultFailureLevel                                 */
typedef uint32            FaultDtcNbType;            /* Type des DTC Number                                        */
typedef uint8             FaultDtcFailTypeType;      /* Type des DTC Failure Type                                  */

typedef struct
{                          
   FaultDtcNbType         DTCNb;
   FaultDtcFailTypeType   DTCFt;
   uint8                  DTCHistoryCount;
} FaultDtcRecordType;                                /* octets sauvegardes en eeprom                               */

typedef struct{
   uint32 u32StartIndex;
   uint32 u32StopIndex;
}DSM_tFaultElementIndex;

#endif /* _DSM_TYP_H_ */

/*------------------------------- end of file --------------------------------*/
