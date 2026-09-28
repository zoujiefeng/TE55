/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : BSW                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : BSW                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : BSW_L.H                                                 */
/*                                                                            */
/* !Scope           : Private                                                 */
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

#ifndef BSW_L_H
#define BSW_L_H

#include "Std_Types.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/
enum BSW_CanNode
{
    BSW_CANNODE0_e = 0,
    BSW_CANNODE1_e = 1,
    BSW_CANNODE2_e = 2,
    BSW_CANNODE3_e = 3,
};
/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define BSW_CALIB_START_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"
#define BSW_CALIB_STOP_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"

#define BSW_CALIB_START_SEC_CONST_16
#include "BSWSRV_MemMap.h"
extern CONST(uint8, BSW_CALIB) BSW_u8ChecksumErrThdC;
extern CONST(uint8, BSW_CALIB) BSW_u8RCUnchgErrThdC;
extern CONST(uint8, BSW_CALIB) BSW_u8RcJumpErrThdC;
extern CONST(uint16, BSW_CALIB) BSW_ku16VSIRdyChkTimoutC;
extern CONST(uint16, BSW_CALIB) BSW_ku16VSIRdyChk2TimoutC;
extern CONST(uint16, BSW_CALIB) BSW_ku16CCPReinitTriggerC;
extern CONST(uint16, BSW_CALIB) BSW_ku16WakeupGcuTimC;
#define BSW_CALIB_STOP_SEC_CONST_16
#include "BSWSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define BSW_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
extern VAR(boolean, BSW_VAR) BSW_bProgFlowEnd01;
extern VAR(boolean, BSW_VAR) BSW_bProgFlowNewCycFlg01;
extern VAR(uint32, BSW_VAR) BSW_u32ProgFlowSign01;
extern VAR(uint8, BSW_VAR) BSW_u8ProgFlowSeed01;
extern VAR(uint8, BSW_VAR) BSW_u8SelfChkErr;
extern VAR(uint16, BSW_VAR) BSW_u16RawVolP9VMulti;
extern VAR(uint16, BSW_VAR) BSW_u16RawVolP5VHS;
extern VAR(uint16, BSW_VAR) BSW_u16RawVolP5VBT;
extern VAR(uint16, BSW_VAR) BSW_u16RawVolP5VLS;
extern VAR(uint16, BSW_VAR) BSW_u16RawVolP5VCOM;
extern VAR(uint16, BSW_VAR) BSW_u16RawVolP5VREF;
extern VAR(uint16, BSW_VAR) BSW_u16SelfChkDelay;
extern VAR(uint16, BSW_VAR) BSW_u16VsiReadyDelay;
#define BSW_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/


#endif /* BSW_L_H */

/*-------------------------------- end of file -------------------------------*/
