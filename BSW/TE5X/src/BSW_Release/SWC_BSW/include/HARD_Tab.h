/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : HARD tables definition                                  */
/*                                                                            */
/* !File            : HARD_TAB.H                                              */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2011 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::               $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#ifndef HARD_TAB_H
#define HARD_TAB_H

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/*----------------------------------------------------------------------------*/
/* Temperature                                                                */
/*----------------------------------------------------------------------------*/
#define HARD_CARTO_SIZE_TEMP_5KNTC   24
#define HARD_CARTO_SIZE_TEMP_CTN     19
#define HARD_CARTO_SIZE_TEMP_CTP     22
#define HARD_CARTO_SIZE_TEMP_NTC_MOT 26

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

#define HARD_START_SEC_CONST_UNSPECIFIED
#include "HARD_MemMap.h"
/*----------------------------------------------------------------------------*/
/* PTG profil simu                                                            */
/*----------------------------------------------------------------------------*/
extern const sint16 fixe HARDPTG_s16HardProfilSimu[256];

/*----------------------------------------------------------------------------*/
/* Temperature (5k NTC table)                                                 */
/*----------------------------------------------------------------------------*/
extern const uint16 fixe HARD_u16VsiTemp5kNTCBkptC[HARD_CARTO_SIZE_TEMP_5KNTC];
extern const uint8 fixe HARD_u8VsiTemp5kNTCC[HARD_CARTO_SIZE_TEMP_5KNTC];

/*----------------------------------------------------------------------------*/
/* Temperature (CTN table)                                                    */
/*----------------------------------------------------------------------------*/
extern const uint16 fixe HARD_u16VsiTempCTNBkptC[HARD_CARTO_SIZE_TEMP_CTN];
extern const uint8 fixe HARD_u8VsiTempCTNC[HARD_CARTO_SIZE_TEMP_CTN];

/*----------------------------------------------------------------------------*/
/* Temperature (CTP table)                                                    */
/*----------------------------------------------------------------------------*/
extern const uint16 fixe HARD_u16TempCTPBkptC[HARD_CARTO_SIZE_TEMP_CTP];
extern const uint8 fixe HARD_u8TempCTPC[HARD_CARTO_SIZE_TEMP_CTP];

/*----------------------------------------------------------------------------*/
/* Temperature (NTC table MOT)                                                */
/*----------------------------------------------------------------------------*/
extern const uint16 fixe HARD_u16VsiTempNTCMotBkptC[HARD_CARTO_SIZE_TEMP_NTC_MOT];
extern const uint16 fixe HARD_u16VsiTempNTCMotC[HARD_CARTO_SIZE_TEMP_NTC_MOT];

#define HARD_STOP_SEC_CONST_UNSPECIFIED
#include "HARD_MemMap.h"

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

#endif /* HARD_TAB_H */

/*-------------------------------- end of file -------------------------------*/
