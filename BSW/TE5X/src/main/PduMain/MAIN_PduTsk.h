/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : RcMAIN                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : RcMAIN                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : RcMAIN.H                                                  */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2008 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/**************************** </AUTO_FILE_HEADER> *****************************/
/* PVCS Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::                                                               $*/
/* $Author::                                          $$Date::               $*/
/******************************************************************************/
/* !VnrOff  : Names imposed by the customer                                   */
/* !CompReq :                                                                 */
/******************************************************************************/

#ifndef MAIN_PDU_TASK_H
#define MAIN_PDU_TASK_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/

/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
extern void MAIN_PduTaskInit(void);
extern void MAIN_vidPduTask1ms(void);
extern void MAIN_vidPduTask2ms(void);
extern void MAIN_vidPduTask5ms(void);
extern void MAIN_vidPduTask10ms(void);
extern void MAIN_vidPduTask100ms(void);
extern void MAIN_vidPduTask200ms(void);


#endif /* MAIN_PDU_TASK_H */

/*-------------------------------- end of file -------------------------------*/
