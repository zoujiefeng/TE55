/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : UDS                                                     */
/* !Description     : Diagnostic service management                           */
/*                                                                            */
/* !File            : UDS_Nvm.h                                               */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2016 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive:                                                                 $*/
/* $Revision::            $$Author::                  $$Date::               $*/
/******************************************************************************/
/* !VnrOff :                                                                  */
/******************************************************************************/
#ifndef __UDS_NVM_H__
#define __UDS_NVM_H__

#include "Std_Types.h"
#include "UDS_DidDataDef.h"

/*NvM Ram Block declaration*/
extern uint8 UDS_au8ESKDataNvM_Ram[16];

/*NvM Rom Block declaration*/
extern const uint8 UDS_au8ESKDataNvM_Rom[16];

#endif
/*------------------------------- end of file --------------------------------*/
