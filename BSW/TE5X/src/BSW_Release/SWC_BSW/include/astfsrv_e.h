/******************************************************************************/
/*                                                                            */
/* !Layer           : SRVL                                                    */
/*                                                                            */
/* !Component       : ASTFSRV                                                  */
/* !Description     : StateFlow generic APIs                                  */
/*                                                                            */
/* !File            : ASTFSRV_E.H                                              */
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

#ifndef ASTFSRV_E_H
#define ASTFSRV_E_H

#include "Std_Types.h"
#include "astfsrv_i.h"


/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/

/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidINIT_STATEFLOW(snModule)                          */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidINIT_STATEFLOW(snModule) \
	ASTFSRV_vidINIT_STATEFLOW_I(snModule)


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidSET_EVENT(snModule, snEvent)                      */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidSET_EVENT(snModule, snEvent) \
	ASTFSRV_vidSET_EVENT_I(snModule, snEvent)


#endif /* ASTFSRV_E_H */

/*-------------------------------- END OF FILE -------------------------------*/
