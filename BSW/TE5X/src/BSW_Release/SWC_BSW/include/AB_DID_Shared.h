/******************************************************************************/
/*                                                                            */
/* !Layer          : AB_DID_Shared                                                      */
/*                                                                            */
/* !Module         : AB_DID_Shared                                                      */
/* !Description    :                                        */
/*                                                                            */
/* !File           : AB_DID_Shared.h                                                 */
/*                                                                            */
/* !Target         : All                                                      */
/*                                                                            */
/* !Vendor         : invt                                                     */
/*                                                                            */
/* Coding language : H                                                        */
/*                                                                            */
/* COPYRIGHT 2008 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::               $*/
/******************************************************************************/

#ifndef AB_DID_ShARED_H
#define AB_DID_ShARED_H

#include "Std_Types.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"

void AB_vidSharedDidInitFunc(void) ;

#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

#endif  /* AB_DID_ShARED_H */

/*-------------------------------- end of file -------------------------------*/
