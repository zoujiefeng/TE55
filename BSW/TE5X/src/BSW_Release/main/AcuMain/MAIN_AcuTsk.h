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

#ifndef MAIN_ACU_TASK_H
#define MAIN_ACU_TASK_H

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
FUNC(void, MAIN_CODE) MAIN_AcuTaskInit(void);
FUNC(void, MAIN_CODE) MAIN_vidAcuTask1ms(void);
FUNC(void, MAIN_CODE) MAIN_vidAcuTask2ms(void);
FUNC(void, MAIN_CODE) MAIN_vidAcuTask5ms(void);
FUNC(void, MAIN_CODE) MAIN_vidAcuTask10ms(void);
FUNC(void, MAIN_CODE) MAIN_vidAcuTask100ms(void);
FUNC(void, MAIN_CODE) MAIN_vidAcuTask200ms(void);

extern void    MAIN_vidAcuPwmTreatment(void);
extern boolean AMAIN_bGetDiagAllowCondition(void);
extern boolean AMAIN_vidGetProgCondition(void);

extern boolean MAIN_bGetAcuSoftOvcFlag_U(void);
extern boolean MAIN_bGetAcuSoftOvcFlag_V(void);
extern boolean MAIN_bGetAcuSoftOvcFlag_W(void);
extern boolean MAIN_bGetAcuSoftOvBhvFlag(void);
extern boolean MAIN_bGetAcuIgbtLSFaultFlag(void);
extern boolean MAIN_bGetAcuIgbtHSFaultFlag(void);
extern void    MAIN_vidClrAcuFaultFlag(void);

#endif /* MAIN_ACU_TASK_H */

/*-------------------------------- end of file -------------------------------*/
