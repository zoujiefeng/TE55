/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2013)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**   $FILENAME   : Mcal.h $                                                   **
**                                                                            **
**   $CC VERSION : \main\11 $                                                 **
**                                                                            **
**   $DATE       : 2014-08-03 $                                               **
**                                                                            **
**   VENDOR      : Infineon Technologies                                      **
**                                                                            **
**   DESCRIPTION : This header file exports all global macros,                **
**                 type definitions and functions needed by all MCAL drivers. **
**                                                                            **
**   SPECIFICATION(S) : NA                                                    **
**                                                                            **
**   MAY BE CHANGED BY USER [yes/no]: yes                                     **
**                                                                            **
*******************************************************************************/

#ifndef MCAL_H 
#define MCAL_H 

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/* Inclusion of Mcal Library files File */
//#include "Mcal_TcLib.h"
//#include "Mcal_WdgLib.h"
#include "Platform_Types.h"
#include "Mcal_Compiler.h"
#include "McalLib.h"

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/* 
   This macro is editable by the user
   If this macro is STD_ON the Tim value will be stored  into a global variable 
   in Mcal Reset ENDINIT APIs
   Again it will be stored into the REL register in Mcal Set ENDINIT APIs
   
   If this macro is STD_OFF then the above function will be disabled.
   By default it will be STD_OFF  
       
*/
#define CanConf_CanController_Can_Network_CANNODE_0   (Can_17_McmCanConf_CanController_Can_Network_CANNODE_0)
#define CanConf_CanController_Can_Network_CANNODE_1   (Can_17_McmCanConf_CanController_Can_Network_CANNODE_1)
#define CanConf_CanController_Can_Network_CANNODE_2   (Can_17_McmCanConf_CanController_Can_Network_CANNODE_2)
#define CanConf_CanController_Can_Network_CANNODE_3   (Can_17_McmCanConf_CanController_Can_Network_CANNODE_3)

#define Can_Network_CANNODE_0_Tx_Std_MailBox_1 Can_17_McmCanConf_CanHardwareObject_Can_Network_CANNODE_0_Tx_Std_MailBox_1
#define Can_Network_CANNODE_0_Tx_Std_MailBox_2 Can_17_McmCanConf_CanHardwareObject_Can_Network_CANNODE_0_Tx_Std_MailBox_2
#define Can_Network_CANNODE_0_Tx_Std_MailBox_3 Can_17_McmCanConf_CanHardwareObject_Can_Network_CANNODE_0_Tx_Std_MailBox_3
#define Can_Network_CANNODE_0_Tx_Std_MailBox_4 Can_17_McmCanConf_CanHardwareObject_Can_Network_CANNODE_0_Tx_Std_MailBox_4
#define Can_Network_CANNODE_0_Tx_Std_MailBox_5 Can_17_McmCanConf_CanHardwareObject_Can_Network_CANNODE_0_Tx_Std_MailBox_5
#define Can_Network_CANNODE_1_Tx_Std_MailBox_1 Can_17_McmCanConf_CanHardwareObject_Can_Network_CANNODE_1_Tx_Std_MailBox_1
#define Can_Network_CANNODE_1_Tx_Std_MailBox_2 Can_17_McmCanConf_CanHardwareObject_Can_Network_CANNODE_1_Tx_Std_MailBox_2
#define Can_Network_CANNODE_1_Tx_Std_MailBox_3 Can_17_McmCanConf_CanHardwareObject_Can_Network_CANNODE_1_Tx_Std_MailBox_3
#define Can_Network_CANNODE_1_Tx_Std_MailBox_4 Can_17_McmCanConf_CanHardwareObject_Can_Network_CANNODE_1_Tx_Std_MailBox_4

#define MCAL_UPDATE_NEWPASSWORD                    (0x1U)
#define MCAL_NOUPDATE_PASSWORD                     (0x0U)
#define MCAL_DUMMY_PASSWORD                        (0x0U)
#define MCAL_SETENDINITPROTECTION                  (0x1U)
#define MCAL_RESETENDINITPROTECTION                (0x0U)

// #define Mcal_ResetENDINIT()   Mcal_UpdatePeripheralEndInit(MCAL_DUMMY_PASSWORD,\
//                                         MCAL_NOUPDATE_PASSWORD,\
//                                         MCAL_RESETENDINITPROTECTION)

// #define Mcal_SetENDINIT()     Mcal_UpdatePeripheralEndInit(MCAL_DUMMY_PASSWORD,\
//                                      MCAL_NOUPDATE_PASSWORD,\
//                                      MCAL_SETENDINITPROTECTION)

#define Mcal_ResetSafetyENDINIT_Timed(x)   Mcal_UpdateSafetyEndInit(MCAL_DUMMY_PASSWORD,\
                            MCAL_NOUPDATE_PASSWORD,\
                            MCAL_RESETENDINITPROTECTION)
                            
#define Mcal_SetSafetyENDINIT_Timed()      Mcal_UpdateSafetyEndInit(MCAL_DUMMY_PASSWORD,\
                            MCAL_NOUPDATE_PASSWORD,\
                            MCAL_SETENDINITPROTECTION)
                            
#define Mcal_SafetyPwSequence(CheckPassword)   CheckPassword
//Mcal_GetCpuWdgPassword()

#define Mcal_SafetyCheckAccess(CheckPassword, y)\
do{}while(0);
#define Mcal_SafetyModifyAccess(InitPassword , y)\
do{}while(0);


#define WDT_RESTORE_TIM          (STD_OFF)
#define MCAL_DIV_INCONSISTENCY   (1U)
#define MCAL_SPINLOCK_TIMEOUT    (2U)

#define SHARED_START_SEC_CODE
#include "MemMap.h"
extern void Mcal_SafeErrorHandler(uint32 ErrorType);
#define SHARED_STOP_SEC_CODE
#include "MemMap.h"

#endif /* MCAL_H  */
