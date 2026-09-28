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
/* !File            : BSW.H                                                   */
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

#ifndef BSW_H
#define BSW_H

#include "Std_Types.h"
#include "CAN01_DEF.h"
#include "CAN02_DEF.h"
#include "CAN03_DEF.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/


/******************************************************************************/
/* TYPES                                                                      */
/******************************************************************************/


/******************************************************************************/
/* CALIBRATIONS DECLARATION                                                   */
/******************************************************************************/
#define BSW_CALIB_START_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"
extern CONST(boolean, BSW_CALIB) BSW_bSPYBenchOnC;
#define BSW_CALIB_STOP_SEC_CONST_BOOL
#include "BSWSRV_MemMap.h"


/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define BSW_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

extern VAR(boolean, BSW_VAR) BSW_bCAN0BusOff;
extern VAR(boolean, BSW_VAR) BSW_bComIsNormalFlg;
extern VAR(boolean, BSW_VAR) BSW_bMKeyOnStatus;
extern VAR(boolean, BSW_VAR) BSW_bOCDataNotRation;
extern VAR(boolean, BSW_VAR) GBSW_bOCDataNotRation;
extern VAR(boolean, BSW_VAR) BSW_bVsiReadySts;
extern VAR(uint16, BSW_VAR) BSW_u16RawVolt15VRdc;
extern VAR(uint32, BSW_VAR) BSW_u32VSICounterCkreq;
extern VAR(uint32, BSW_VAR) GBSW_u32VSICounterCkreq;
extern VAR(uint32, BSW_VAR) ABSW_u32VSICounterCkreq;
extern VAR(uint32, BSW_VAR) OBSW_u32VSICounterCkreq;
extern VAR(uint32, BSW_VAR) BSW_u8CAN0BusOffCounter;
extern VAR(uint32, BSW_VAR) BSW_u8CAN1BusOffCounter;
extern VAR(uint32, BSW_VAR) BSW_u8CAN2BusOffCounter;
extern VAR(uint32, BSW_VAR) BSW_u8CAN3BusOffCounter;

#define BSW_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"



#define BSW_VER_START_SEC_VERSION_BSW_UNSPECIFIED
#include "BSW_VER_MemMap.h"

extern const uint8 BSW_kau8IntOfflineDate[4];
extern const uint8 BSW_kau8IntProductionLineId[4];
extern const uint8 BSW_kau8IntProjectId[8];
extern const uint8 BSW_kau8IntBswLibDate[6];
extern const uint8 BSW_kau8IntBswSvnRev[2];
extern const uint8 BSW_kau8IntBootSvnRev[2];
extern const uint8 BSW_kau8IntFpgaSvnRev[2];
extern const uint8 BSW_kau8IntCpldSvnRev[2];
extern const uint8 BSW_kau8IntHwSvnRev[2];
extern const uint8 BSW_kau8IntAddlInfo[8];

#define BSW_VER_STOP_SEC_VERSION_BSW_UNSPECIFIED
#include "BSW_VER_MemMap.h"



/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
FUNC(void, BSW_CODE) BSW_vidInit(void);
FUNC(void, BSW_CODE) BSW_vidSetOcDataNotRatFlg(const boolean);
FUNC(void, BSW_CODE) GBSW_vidSetOcDataNotRatFlg(const boolean);
FUNC(uint8, BSW_CODE) BSW_u8GetSelfChkErrSts(void);
FUNC(boolean, BSW_CODE) BSW_bGetBswReadySts(void);

#endif /* BSW_H */

/*-------------------------------- end of file -------------------------------*/
