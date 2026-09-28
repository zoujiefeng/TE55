/***************************** <AUTO_FILE_HEADER> *****************************/
/*                                                                            */
/* !Layer           : APPLI                                                   */
/*                                                                            */
/* !Component       : CDD_TPPC                                                */
/* !Description     :                                                         */
/*                                                                            */
/* !Module          : CDD_TPPC                                                */
/* !Description     : API of the Component                                    */
/*                                                                            */
/* !File            : CDD_TPPC.H                                              */
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

#ifndef __CDD_TPPC_H_
#define __CDD_TPPC_H_


/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "VADC.h"
#include "TPPC.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/
extern void CDD_TPPC_vidInit(void);
extern void CDD_TPPC_vidCORE3_1ms_func(void);
extern void CDD_TPPC_vidCORE3_2ms_func(void);
extern void CDD_TPPC_vidCORE3_10ms_func(void);
extern void CDD_TPPC_vidCORE3_100ms_func(void);
extern void CDD_TPPC_vidCORE3_200ms_func(void);
extern void CDD_TPPC_vidPwmTreatment(void);

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline void CDD_TPPC_vidHwInit(void);

/******************************************************************************/
/*********************************  ACM  **************************************/
/******************************************************************************/
static inline void CDD_TPPC_vidACMMotorStateMng(void);
static inline void CDD_TPPC_vidACMSoftTrapTrigger(void);
static inline void CDD_TPPC_vidStopACMPwmOutput(void);
static inline void CDD_TPPC_vidSetACMPwmDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);
static inline void CDD_TPPC_vidSetACMClrFaultReq(const boolean bClrFaultReq);
static inline void CDD_TPPC_vidSetACMMotorSpdRdyFlg(const boolean bMotorSpdRdy);
static inline boolean CDD_TPPC_bGetACMPwmRunFlag(void);
static inline boolean CDD_TPPC_bGetACMPwmState(void);
static inline boolean CDD_TPPC_bGetACMAscisClose(void);
static inline boolean CDD_TPPC_bGetEPSAscisClose(void);

/******************************************************************************/
/*********************************  EPS  **************************************/
/******************************************************************************/
static inline void CDD_TPPC_vidEPSMotorStateMng(void);
static inline void CDD_TPPC_vidEPSSoftTrapTrigger(void);
static inline void CDD_TPPC_vidStopEPSPwmOutput(void);
static inline void CDD_TPPC_vidSetEPSPwmDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);
static inline void CDD_TPPC_vidSetEPSClrFaultReq(const boolean bClrFaultReq);
static inline void CDD_TPPC_vidSetEPSMotorSpdRdyFlg(const boolean bMotorSpdRdy);
static inline boolean CDD_TPPC_bGetEPSPwmRunFlag(void);
static inline boolean CDD_TPPC_bGetEPSPwmState(void);

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static inline void CDD_TPPC_vidHwInit(void)
{
   VADC_vidMainFunction();

   TPPCDev_vidInit(eTPPC_DEV_GTM_ACM_INDEX);
   TPPCDev_vidInit(eTPPC_DEV_GTM_EPS_INDEX);

   TPPCDev_vidStartTimer(eTPPC_DEV_GTM_ACM_INDEX);
   TPPCDev_vidStartTimer(eTPPC_DEV_GTM_EPS_INDEX);
}

/******************************************************************************/
/*********************************  ACM  **************************************/
/******************************************************************************/
static inline void CDD_TPPC_vidACMMotorStateMng(void)
{
   TPPCDev_vidMotorStateMng(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline void CDD_TPPC_vidACMSoftTrapTrigger(void)
{
   TPPCDev_vidAscEntry(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline void CDD_TPPC_vidStopACMPwmOutput(void)
{
   TPPCDev_vidStopPwmOutput(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline void CDD_TPPC_vidSetACMPwmDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW)
{
   TPPCDev_vidSetPwmBcDuty(eTPPC_DEV_GTM_ACM_INDEX, (f32DutyU * 100.0f), (f32DutyV * 100.0f), (f32DutyW * 100.0f));
}

static inline void CDD_TPPC_vidSetACMClrFaultReq(const boolean bClrFaultReq)
{
   TPPCDev_vidSetClrFaultReq(eTPPC_DEV_GTM_ACM_INDEX, bClrFaultReq);
}

static inline void CDD_TPPC_vidSetACMMotorSpdRdyFlg(const boolean bMotorSpdRdy)
{
   TPPCDev_vidSetMotorSpdRdyFlg(eTPPC_DEV_GTM_ACM_INDEX, bMotorSpdRdy);
}

static inline boolean CDD_TPPC_bGetACMPwmRunFlag(void)
{
   return TPPCDev_bGetPwmRunFlag(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline boolean CDD_TPPC_bGetACMPwmState(void)
{
   return TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_ACM_INDEX);
}

static inline boolean CDD_TPPC_bGetACMAscisClose(void)
{
   return TPPCDev_bGetAscisClose(eTPPC_DEV_GTM_ACM_INDEX);
}

/******************************************************************************/
/*********************************  EPS  **************************************/
/******************************************************************************/
static inline void CDD_TPPC_vidEPSMotorStateMng(void)
{
   TPPCDev_vidMotorStateMng(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline void CDD_TPPC_vidEPSSoftTrapTrigger(void)
{
   TPPCDev_vidAscEntry(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline void CDD_TPPC_vidStopEPSPwmOutput(void)
{
   TPPCDev_vidStopPwmOutput(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline void CDD_TPPC_vidSetEPSPwmDuty(float32 f32DutyU, float32 f32DutyV, float32 f32DutyW)
{
   TPPCDev_vidSetPwmBcDuty(eTPPC_DEV_GTM_EPS_INDEX, (f32DutyU * 100.0f), (f32DutyV * 100.0f), (f32DutyW * 100.0f));
}

static inline void CDD_TPPC_vidSetEPSClrFaultReq(const boolean bClrFaultReq)
{
   TPPCDev_vidSetClrFaultReq(eTPPC_DEV_GTM_EPS_INDEX, bClrFaultReq);
}

static inline void CDD_TPPC_vidSetEPSMotorSpdRdyFlg(const boolean bMotorSpdRdy)
{
   TPPCDev_vidSetMotorSpdRdyFlg(eTPPC_DEV_GTM_EPS_INDEX, bMotorSpdRdy);
}

static inline boolean CDD_TPPC_bGetEPSPwmRunFlag(void)
{
   return TPPCDev_bGetPwmRunFlag(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline boolean CDD_TPPC_bGetEPSPwmState(void)
{
   return TPPCDev_u8GetPwmState(eTPPC_DEV_GTM_EPS_INDEX);
}

static inline boolean CDD_TPPC_bGetEPSAscisClose(void)
{
   return TPPCDev_bGetAscisClose(eTPPC_DEV_GTM_EPS_INDEX);
}

#endif /* __CDD_TPPC_H_ */

/*-------------------------------- end of file -------------------------------*/
