/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Test Ecu State Manager (applicative SW emulation)       */
/*                                                                            */
/* !File            : HARD_Esm.h                                              */
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
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::               $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#ifndef HARD_ESM_H
#define HARD_ESM_H

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

/******************************************************************************/
/* DEFINES MACROS                                                             */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define HARD_START_SEC_CODE
#include "HARD_MemMap.h"

void HARD_vidEsmInit(void);
void HARD_vidEsmStfManagerNf(uint8 fState);
void HARD_vidEsmStfManagerFt(uint8 fState);

#define HARD_STOP_SEC_CODE
#include "HARD_MemMap.h"

#endif /* HARD_ESM_H */

/*-------------------------------- end of file -------------------------------*/
