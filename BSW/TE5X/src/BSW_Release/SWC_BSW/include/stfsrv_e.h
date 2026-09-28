/******************************************************************************/
/*                                                                            */
/* !Layer           : SRVL                                                    */
/*                                                                            */
/* !Component       : STFSRV                                                  */
/* !Description     : StateFlow generic APIs                                  */
/*                                                                            */
/* !File            : STFSRV_E.H                                              */
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

#ifndef STFSRV_E_H
#define STFSRV_E_H

#include "Std_Types.h"
#include "stfsrv_i.h"


/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/

/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidINIT_STATEFLOW(snModule)                          */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidINIT_STATEFLOW(snModule) \
	STFSRV_vidINIT_STATEFLOW_I(snModule)


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidSET_EVENT(snModule, snEvent)                      */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidSET_EVENT(snModule, snEvent) \
	STFSRV_vidSET_EVENT_I(snModule, snEvent)


#endif /* STFSRV_E_H */

/*-------------------------------- END OF FILE -------------------------------*/
