/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : MAIN                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : MAIN                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : MAIN.H                                                  */
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

#ifndef MAIN_OCU_TASK_H
#define MAIN_OCU_TASK_H

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
FUNC(void, MAIN_CODE) MAIN_OcuTaskInit(void);
FUNC(void, MAIN_CODE) MAIN_vidOcuTask1ms(void);
FUNC(void, MAIN_CODE) MAIN_vidOcuTask2ms(void);
FUNC(void, MAIN_CODE) MAIN_vidOcuTask5ms(void);
FUNC(void, MAIN_CODE) MAIN_vidOcuTask10ms(void);
FUNC(void, MAIN_CODE) MAIN_vidOcuTask100ms(void);
FUNC(void, MAIN_CODE) MAIN_vidOcuTask200ms(void);

extern void    MAIN_vidOcuPwmTreatment(void);
extern boolean OMAIN_bGetDiagAllowCondition(void);
extern boolean OMAIN_vidGetProgCondition(void);

extern boolean MAIN_bGetOcuSoftOvcFlag_U(void);
extern boolean MAIN_bGetOcuSoftOvcFlag_V(void);
extern boolean MAIN_bGetOcuSoftOvcFlag_W(void);
extern boolean MAIN_bGetOcuSoftOvBhvFlag(void);
extern boolean MAIN_bGetOcuIgbtLSFaultFlag(void);
extern boolean MAIN_bGetOcuIgbtHSFaultFlag(void);
extern void    MAIN_vidClrOcuFaultFlag(void);

#endif /* MAIN_OCU_TASK_H */

/*-------------------------------- end of file -------------------------------*/
