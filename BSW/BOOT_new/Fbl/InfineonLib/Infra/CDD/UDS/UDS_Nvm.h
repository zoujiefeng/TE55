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
// #include "FBL_DataMPrvCfg.h"
#define UDS_DID_BUF_SIZE_0xF190 (17u)
#define UDS_DID_BUF_SIZE_0xF1B7 (7u)
#define UDS_DID_BUF_SIZE_0xF15A (16u)

typedef union UDS_WrDidTable_t
{
   uint8 au8Buf[128];
   struct tBuf
   {
      uint8 au8DidBuf_0xF15A[UDS_DID_BUF_SIZE_0xF15A];
      uint8 au8DidBuf_0xF190[UDS_DID_BUF_SIZE_0xF190];
      uint8 au8DidBuf_0xF1B7[UDS_DID_BUF_SIZE_0xF1B7];
   } tBuf;
} UDS_WrDidTable_t;
/*NvM Ram Block declaration*/
extern uint8 UDS_au8ESKDataNvM_Ram[16];
// extern uint8 UDS_au8WrDidTableNvM_Ram[128];
/******************************************************************************/
/**************************  Writeable DID RAM Block  *************************/
/******************************************************************************/
extern UDS_WrDidTable_t UDS_au8WrDidTableNvM_Ram;

/*NvM Rom Block declaration*/
extern const uint8 UDS_au8ESKDataNvM_Rom[16];
extern const UDS_WrDidTable_t UDS_au8WrDidTableNvM_Rom;

#endif
/*------------------------------- end of file --------------------------------*/
