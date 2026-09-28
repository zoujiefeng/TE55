/******************************************************************************/
/*                                                                            */
/* !Layer           : SRVL                                                    */
/*                                                                            */
/* !Component       : GSTFSRV                                                  */
/* !Description     : StateFlow generic APIs                                  */
/*                                                                            */
/* !File            : GSTFSRV_E.H                                              */
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

#ifndef GSTFSRV_E_H
#define GSTFSRV_E_H

#include "Std_Types.h"
#include "gstfsrv_i.h"


/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/

/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidINIT_STATEFLOW(snModule)                          */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidINIT_STATEFLOW(snModule) \
	GSTFSRV_vidINIT_STATEFLOW_I(snModule)


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidSET_EVENT(snModule, snEvent)                      */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidSET_EVENT(snModule, snEvent) \
	GSTFSRV_vidSET_EVENT_I(snModule, snEvent)


#endif /* GSTFSRV_E_H */

/*-------------------------------- END OF FILE -------------------------------*/
