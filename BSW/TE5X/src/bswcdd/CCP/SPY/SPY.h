/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : SPY                                                     */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : SPY                                                     */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : SPY.H                                                   */
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

#ifndef SPY_H
#define SPY_H

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
FUNC(boolean, SPY_CODE) SPY_bPreTrigBufFilled(void);
FUNC(boolean, SPY_CODE) SPY_bWrOdt(uint8 u8ListIdx, uint16 u16FirstElmIdx, uint8 *pu8BufDst);
FUNC(void, SPY_CODE) SPY_vidDaqListStopd(uint8 u8ListIdx);
FUNC(void, SPY_CODE) SPY_vidDaqListTxInit(uint8 u8ListIdx, uint8 **ppu8DaqListElmAdr, uint16 u16FirstElmIdx, uint8 u8OdtLstIdx);
FUNC(void, SPY_CODE) SPY_vidInit(void);
FUNC(void, SPY_CODE) SPY_vidStopDataAcq(void);
FUNC(void, SPY_CODE) SPY_vidWrBuf(void);


#endif /* SPY_H */

/*-------------------------------- end of file -------------------------------*/
