/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : FAIL                                                    */
/* !Description     : Fault management                                        */
/*                                                                            */
/* !File            : FAIL_Nvm.h                                              */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2016 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive:                                                                 $*/
/* $Revision::            $$Author::                  $$Date::               $*/
/******************************************************************************/
/* !VnrOff :                                                                  */
/******************************************************************************/
/******************************************************************************/
#ifndef FAIL_NVM_H
#define FAIL_NVM_H

#include "Std_Types.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

#define FAIL_START_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"
/*------------------------*/
/* NVM_BLOCK: FAIL_RST    */
/*------------------------*/
extern uint16  FAIL_u16RstStartUpCntNvm;
extern uint16  FAIL_u16RstHotCntNvm;
extern boolean FAIL_bRstHotFlagNvm;

/*------------------------*/
/* NVM_BLOCK: TIMESTAMP   */
/*------------------------*/
extern uint32 FAIL_u32TimestampLifeNvm;
extern uint16 FAIL_u16TimestampIgnNvm;

#define FAIL_STOP_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"

#endif /* FAIL_NVM_H */

/*------------------------------- end of file --------------------------------*/
