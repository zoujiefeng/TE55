/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Test analogic and digital IO                            */
/*                                                                            */
/* !File            : HARD_IO.H                                               */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2012 invt                                                        */
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

#ifndef HARD_IO_H
#define HARD_IO_H

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#if 0
#define HARD_START_SEC_VAR_UNSPECIFIED
#include "HARD_MemMap.h"

extern boolean HARD_bDio_M_PW_DOWN_Nm1;
extern boolean HARD_bDio_M_ENA_HT_HS_Nm1;
extern boolean HARD_bDio_M_ENA_HT_LS_Nm1;
extern boolean HARD_bDio_M_ADUM_ENABLE_N_Nm1;
extern boolean HARD_bDio_M_SUPPLY_WDI_Nm1;
extern boolean HARD_bDio_M_EEP_C_CS_Nm1;
extern boolean HARD_bDio_M_DBG_1_Nm1;
extern boolean HARD_bDio_M_LED_R1_Nm1;

#define HARD_STOP_SEC_VAR_UNSPECIFIED
#include "HARD_MemMap.h"
#endif
/******************************************************************************/
/* DEFINES MACROS                                                             */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define HARD_START_SEC_CODE
#include "HARD_MemMap.h"

void HARD_vidIoInit(void);
void HARD_vidIoWriteDioOutput(void);
void HARD_vidIoReadDioOutput(void);
void HARD_vidIoReadDioInput(void);
void HARD_vidIoReadAnaInput(void);
void HARD_vidIoReadPwmInput(void);

#define HARD_STOP_SEC_CODE
#include "HARD_MemMap.h"

#endif /* HARD_IO_H */

/*-------------------------------- end of file -------------------------------*/
