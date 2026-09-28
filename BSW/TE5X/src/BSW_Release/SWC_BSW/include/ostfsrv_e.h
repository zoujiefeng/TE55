/******************************************************************************/
/*                                                                            */
/* !Layer           : SRVL                                                    */
/*                                                                            */
/* !Component       : OSTFSRV                                                  */
/* !Description     : StateFlow generic APIs                                  */
/*                                                                            */
/* !File            : OSTFSRV_E.H                                              */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2007 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/

#ifndef OSTFSRV_E_H
#define OSTFSRV_E_H

#include "Std_Types.h"
#include "ostfsrv_i.h"


/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/

/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidINIT_STATEFLOW(snModule)                          */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidINIT_STATEFLOW(snModule) \
	OSTFSRV_vidINIT_STATEFLOW_I(snModule)


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidSET_EVENT(snModule, snEvent)                      */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidSET_EVENT(snModule, snEvent) \
	OSTFSRV_vidSET_EVENT_I(snModule, snEvent)


#endif /* OSTFSRV_E_H */

/*-------------------------------- END OF FILE -------------------------------*/
