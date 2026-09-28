/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : F32SRV                                                  */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : F32SRV                                                  */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : F32SRV.H                                                */
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

#ifndef F32SRV_H
#define F32SRV_H

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
FUNC(boolean, F32SRV_CODE) F32SRV_bIsFinite(float32 f32Data);
FUNC(sint16, F32SRV_CODE) F32SRV_s16F32ToSint16(float32 f32Data, sint16 s16UnderflowValue, sint16 s16OverflowValue, sint16 s16NanValue);
FUNC(sint32, F32SRV_CODE) F32SRV_s32F32ToSint32(float32 f32Data, sint32 s32UnderflowValue, sint32 s32OverflowValue, sint32 s32NanValue);
FUNC(sint8, F32SRV_CODE) F32SRV_s8F32ToSint8(float32 f32Data, sint8 s8UnderflowValue, sint8 s8OverflowValue, sint8 s8NanValue);
FUNC(uint16, F32SRV_CODE) F32SRV_u16F32ToUint16(float32 f32Data, uint16 u16UnderflowValue, uint16 u16OverflowValue, uint16 u16NanValue);
FUNC(uint32, F32SRV_CODE) F32SRV_u32F32ToUint32(float32 f32Data, uint32 u32UnderflowValue, uint32 u32OverflowValue, uint32 u32NanValue);
FUNC(uint8, F32SRV_CODE) F32SRV_u8F32ToUint8(float32 f32Data, uint8 u8UnderflowValue, uint8 u8OverflowValue, uint8 u8NanValue);


#endif /* F32SRV_H */

/*-------------------------------- end of file -------------------------------*/
