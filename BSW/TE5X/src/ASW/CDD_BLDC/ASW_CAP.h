/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : BLDC                                                    */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : BLDC                                                    */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : BLDC.H                                                  */
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

#ifndef __ASW_CAP_H_
#define __ASW_CAP_H_


/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "BLDC.h"
#include "BLDC_DeviceCfg.h"
#include "TLE9180.h"
#include "DRV8340.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
enum{
   ASW_CAP_PREDRV_TYPE_DRV8340 = eBLDC_DEV_GTM_DRV8340_INDEX,
   ASW_CAP_PREDRV_TYPE_TLE9180 = eBLDC_DEV_GTM_TLE9180_INDEX
};

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline void  ASW_CAP_vidInit(void);
static inline void  ASW_CAP_vidMotorStateMng(void);
static inline void  ASW_CAP_vidMotPosPwmMng(void);
static inline void  ASW_CAP_vidGetPosSigPerd(uint32* pu32PosSigPerd);
static inline void  ASW_CAP_vidGetPositionDuty(float32* pf32PosDuty);
static inline void  ASW_CAP_vidHallDiagMainfunction(const uint8 u8CurHallStt);
static inline uint8 ASW_CAP_u8GetHallStt(void);
static inline void  ASW_CAP_vidChgHallPattern(void);
static inline void  ASW_CAP_vidSetPwmBcDuty(const float32 f32Duty);
static inline sint16 MAIN_s16GetTcuCurVal(void);

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

static inline sint16 MAIN_s16GetTcuCurVal(void)
{
   uint16 u16LocIohalTemp;
   uint16 u16LocIohalTemp2;
   sint16 s16Ret;

   // u16LocIohalTemp  = IOHAL_u16Read_CH_ADC_IN_AN_ISN_CLU_BLDC();
   MAIN_f32AdcTestVR0 = (float32)u16LocIohalTemp;
   
   if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      // u16LocIohalTemp2 = IOHAL_u16Read_CH_ADC_IN_AN_ISN_VO1_BLDC();
      MAIN_f32AdcTestVO1 = (float32)u16LocIohalTemp2;

      s16Ret = (sint16)u16LocIohalTemp2 - (sint16)u16LocIohalTemp;
   }
   else
   {
      s16Ret = (sint16)u16LocIohalTemp;
   }

   return s16Ret;
}

#if 1
static inline void ASW_CAP_vidInit(void)
{

   if(0 == MAIN_u8TcuCapPreDrvTypeC)
   {
      DRV8340_vidModuleInit();
      BLDCDev_vidInit(ASW_CAP_PREDRV_TYPE_DRV8340);
   }
   else if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      TLE9180_vidInit();
      BLDCDev_vidInit(ASW_CAP_PREDRV_TYPE_TLE9180);
   }
   else
   {
      /* Do nothing */
   }
}

static inline void ASW_CAP_vidMotorStateMng(void)
{
   if(0 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidMotorStateMng(ASW_CAP_PREDRV_TYPE_DRV8340);
      DRV8340_vidMainFunction();
   }
   else if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidMotorStateMng(ASW_CAP_PREDRV_TYPE_TLE9180);
      TLE9180_vidMainFunction();
   }
   else
   {
      /* Do nothing */
   }
}

static inline void ASW_CAP_vidMotPosPwmMng(void)
{
   if(0 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidMotPosPwmMng(ASW_CAP_PREDRV_TYPE_DRV8340);
   }
   else if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidMotPosPwmMng(ASW_CAP_PREDRV_TYPE_TLE9180);
   }
   else
   {
      /* Do nothing */
   }
}

static inline void ASW_CAP_vidGetPosSigPerd(uint32* pu32PosSigPerd)
{
   if(0 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidGetPosSigPerd(ASW_CAP_PREDRV_TYPE_DRV8340, pu32PosSigPerd);
   }
   else if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidGetPosSigPerd(ASW_CAP_PREDRV_TYPE_TLE9180, pu32PosSigPerd);
   }
   else
   {
      /* Do nothing */
   }
}

static inline void ASW_CAP_vidGetPositionDuty(float32* pf32PosDuty)
{
   if(0 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidGetPositionDuty(ASW_CAP_PREDRV_TYPE_DRV8340, pf32PosDuty);
   }
   else if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidGetPositionDuty(ASW_CAP_PREDRV_TYPE_TLE9180, pf32PosDuty);
   }
   else
   {
      /* Do nothing */
   }
}

static inline void ASW_CAP_vidHallDiagMainfunction(const uint8 u8CurHallStt)
{
   if(0 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidHallDiagMainfunction(ASW_CAP_PREDRV_TYPE_DRV8340, u8CurHallStt);
   }
   else if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidHallDiagMainfunction(ASW_CAP_PREDRV_TYPE_TLE9180, u8CurHallStt);
   }
   else
   {
      /* Do nothing */
   }
}

static inline uint8 ASW_CAP_u8GetHallStt(void)
{
   if(0 == MAIN_u8TcuCapPreDrvTypeC)
   {
      return BLDCDev_u8GetHallStt(ASW_CAP_PREDRV_TYPE_DRV8340);
   }
   else if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      return BLDCDev_u8GetHallStt(ASW_CAP_PREDRV_TYPE_TLE9180);
   }
   else
   {
      /* Do nothing */
   }
}

static inline void ASW_CAP_vidChgHallPattern(void)
{
   if(0 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidChgHallPattern(ASW_CAP_PREDRV_TYPE_DRV8340);
   }
   else if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidChgHallPattern(ASW_CAP_PREDRV_TYPE_TLE9180);
   }
   else
   {
      /* Do nothing */
   }
}

static inline void ASW_CAP_vidSetPwmBcDuty(const float32 f32Duty)
{
   if(0 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidSetPwmBcDuty(ASW_CAP_PREDRV_TYPE_DRV8340, f32Duty);
   }
   else if(1 == MAIN_u8TcuCapPreDrvTypeC)
   {
      BLDCDev_vidSetPwmBcDuty(ASW_CAP_PREDRV_TYPE_TLE9180, f32Duty);
   }
   else
   {
      /* Do nothing */
   }
}
#endif

#endif /* __ASW_CAP_H_ */

/*-------------------------------- end of file -------------------------------*/
