/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : FAIL                                                    */
/* !Description     : Fault management                                        */
/*                                                                            */
/* !File            : FAIL_Nvm_Def.c                                          */
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

#include "Std_Types.h"
#include "FAIL_Nvm.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

#define FAIL_START_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"
/* !MComment: Order of Nvm variables declaration is mandatory                 */
/*------------------------*/
/* NVM_BLOCK: FAIL_RST    */
/*------------------------*/
/* !Comment: A dummy space use to escape NVM data overflow from NVRAM. --Daniel. */
uint8 FAIL_au8DummySpace02[8];
uint16  FAIL_u16RstStartUpCntNvm;
uint16  FAIL_u16RstHotCntNvm;
boolean FAIL_bRstHotFlagNvm;

/*------------------------*/
/* NVM_BLOCK: TIMESTAMP   */
/*------------------------*/
/* !Comment: A dummy space use to escape NVM data overflow from NVRAM. --Daniel. */
uint8 FAIL_au8DummySpace01[8];
uint32 FAIL_u32TimestampLifeNvm;
uint16 FAIL_u16TimestampIgnNvm;

#define FAIL_STOP_SEC_VAR_UNSPECIFIED
#include "FAIL_MemMap.h"

/*------------------------------- end of file --------------------------------*/
