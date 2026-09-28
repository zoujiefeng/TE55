#ifndef __BLDC_UDRV_GTM_H_
#define __BLDC_UDRV_GTM_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "BLDC_Device.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "GtmM.h"
#include "BLDC_UDrvGtmGeneDef.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct GtmCfg_GenHallCtrlList{
   uint8  u8CurListIndex;
   uint8  u8NextListIndex;
   union{
      uint32 U;
      struct{
         uint32 DTMnCh1ACfg :4;
         uint32 DTMnCh1BCfg :4;
         uint32 DTMnCh2ACfg :4;
         uint32 DTMnCh2BCfg :4;
         uint32 DTMnCh3ACfg :4;
         uint32 DTMnCh3BCfg :4;
         uint32 DTMnCh4ACfg :4;
         uint32 DTMnCh4BCfg :4;
      }B;
   }PwmState;
}GtmCfg_GenHallCtrlList;

typedef struct UDrvCfg_GenHallCtrlList{
   const GtmCfg_GenHallCtrlList *pxBackwardList;
   const GtmCfg_GenHallCtrlList *pxForwardList;
   uint32  u32PWMOffState;
}UDrvCfg_GenHallCtrlList;

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions (User Config)
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void BLDC_vidUDrvIntHwInit(const BLDC_TimerDriver * const kpktDev);
extern void BLDC_vidUDrvGtmSetPwmOutState(const BLDC_TimerDriver * const kpktDrv, uint8 u8Dir, uint8 u8Index);
extern void BLDC_vidUDrvGtmPwmDisable(const BLDC_TimerDriver * const kpktDrv);
extern void BLDC_vidUDrvGtmIntTrigEnable(const BLDC_TimerDriver * const kpktDrv, boolean bEnable);

#endif /* __BLDC_UDRV_GTM_H_ */

