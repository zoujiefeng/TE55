/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : DSM                                                     */
/* !Description     : Associated failures data contexts saving                */
/*                                                                            */
/* !File            : DSM_Ctx.c                                               */
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
/* DSM.CTX.1 / FaultRecordDTCContext                                          */
/******************************************************************************/

#include "Std_Types.h"

#include "DSM.h"
#include "DSM_L.h"

#include "FAULT.h"

//<<#include "eep_srv.h"
//<<#include "eep_dat.h"

#define DSM_START_SEC_CODE
#include "MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : Associated failures data contexts saving                    */
/* !Number      : CTX.1                                                       */
/* !Reference   : V01NT0905382.001                                            */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                   */
/******************************************************************************/
void FaultRecordDTCContext(const uint16 dTCArrayIdx)
{
}

#define DSM_STOP_SEC_CODE
#include "MemMap.h"

/*------------------------------- end of file --------------------------------*/
