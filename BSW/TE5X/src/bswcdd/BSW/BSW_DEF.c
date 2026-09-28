/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : BSW                                                     */
/*                                                                            */
/* !Module          : BSW                                                     */
/* !Description     : Data definition                                         */
/*                                                                            */
/* !File            : BSW_DEF.C                                               */
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

#include "Std_Types.h"
#include "BSW.h"
#include "BSW_L.h"


/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/
#define BSW_CALIB_START_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"
CONST(boolean, BSW_CALIB) BSW_bSPYBenchOnC = 1;
CONST(boolean, BSW_CALIB) BSW_u8E2E_ValidC = TRUE;
#define BSW_CALIB_STOP_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"

#define BSW_CALIB_START_SEC_CONST_16    
#include "BSWSRV_MemMap.h"
CONST(uint16, BSW_CALIB) BSW_ku16VSIRdyChkTimoutC = 30;
CONST(uint16, BSW_CALIB) BSW_ku16VSIRdyChk2TimoutC = 150;
CONST(uint16, BSW_CALIB) BSW_ku16WakeupGcuTimC = 20;
CONST(uint16, BSW_CALIB) BSW_ku16CCPReinitTriggerC = 0x00;
#define BSW_CALIB_STOP_SEC_CONST_16
#include "BSWSRV_MemMap.h"


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define BSW_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

VAR(boolean, BSW_VAR) BSW_bComIsNormalFlg;
VAR(boolean, BSW_VAR) BSW_bMKeyOnStatus;
VAR(boolean, BSW_VAR) BSW_bOCDataNotRation;
VAR(boolean, BSW_VAR) GBSW_bOCDataNotRation;
VAR(boolean, BSW_VAR) BSW_bVsiReadySts;
VAR(boolean, BSW_VAR) BSW_bProgFlowEnd01;
VAR(boolean, BSW_VAR) BSW_bProgFlowNewCycFlg01;
VAR(uint8, BSW_VAR) BSW_u8SelfChkErr;
VAR(uint8, BSW_VAR) BSW_u8ProgFlowSeed01;
VAR(uint16, BSW_VAR) BSW_u16RawVolP9VMulti;
VAR(uint16, BSW_VAR) BSW_u16RawVolP5VHS;
VAR(uint16, BSW_VAR) BSW_u16RawVolP5VBT;
VAR(uint16, BSW_VAR) BSW_u16RawVolP5VLS;
VAR(uint16, BSW_VAR) BSW_u16RawVolP5VCOM;
VAR(uint16, BSW_VAR) BSW_u16RawVolP5VREF;
VAR(uint16, BSW_VAR) BSW_u16RawVolt15VRdc;
VAR(uint16, BSW_VAR) BSW_u16SelfChkDelay;
VAR(uint16, BSW_VAR) BSW_u16VsiReadyDelay;
VAR(uint32, BSW_VAR) BSW_u32ProgFlowSign01;
VAR(uint32, BSW_VAR) BSW_u32VSICounterCkreq;
VAR(uint32, BSW_VAR) GBSW_u32VSICounterCkreq;
VAR(uint32, BSW_VAR) ABSW_u32VSICounterCkreq;
VAR(uint32, BSW_VAR) OBSW_u32VSICounterCkreq;
VAR(uint32, BSW_VAR) BSW_u8CAN0BusOffCounter;
VAR(uint32, BSW_VAR) BSW_u8CAN1BusOffCounter;
VAR(uint32, BSW_VAR) BSW_u8CAN2BusOffCounter;
VAR(uint32, BSW_VAR) BSW_u8CAN3BusOffCounter;

#define BSW_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

/*-------------------------------- end of file -------------------------------*/
