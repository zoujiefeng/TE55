#ifndef __BLDC_DEVICE_TYPE_H_
#define __BLDC_DEVICE_TYPE_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "BLDC_GeneFunc.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
   
/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct BLDC_TimerDriver BLDC_TimerDriver;
typedef struct BLDC_AppFunc BLDC_AppFunc;
typedef struct BLDC_Device BLDC_Device;

struct BLDC_TimerDriver{
   void        *pvCommDrv;           /* Common hardware driver, CCU6 or GTM */
   const void  *pkvCfgHandle;        /* pwm state list */

   void (*vidIntHwInit)(const BLDC_TimerDriver * const kpktDrv);
   void (*vidIntTrigEnable)(const BLDC_TimerDriver * const kpktDrv, boolean bEnable);

   void (*vidPwmDisable)(const BLDC_TimerDriver * const kpktDrv);
   void (*vidSetPwmOutState)(const BLDC_TimerDriver * const kpktDrv, uint8 u8Dir, uint8 u8Index);
   void (*vidSetPwmDuty)(const BLDC_TimerDriver * const kpktDrv, float32 f32Duty);
   void (*vidSetPwmFreq)(const BLDC_TimerDriver * const kpktDrv, float32 f32Freq);
   void (*vidSetSingleChPhase)(const BLDC_TimerDriver * const kpktDrv, float32 f32Freq, uint8 u8ChIndex);
};

typedef struct BLDC_HalModule{
   const void *pvApi;
   uint16    (*u16IOReadHall_1)(void);
   uint16    (*u16IOReadHall_2)(void);
   uint16    (*u16IOReadHall_3)(void);
}BLDC_HalModule;

struct BLDC_AppFunc{
   void (*vidInit)(void);
   void (*vidMotPosPwmMng)(const BLDC_Device * const kpktDev);
   void (*vidMotorStateMng)(const BLDC_Device * const kpktDev);
   void (*vidGetPosSigPerd)(uint32* pu32PosSigPerd);
   void (*vidGetPositionDuty)(float32* pf32PosDuty);
   void (*vidHallDiagMainfunction)(const BLDC_Device * const kpktDev, const uint8 u8CurHallStt);

   /* Public */
   boolean (*bGetHallUndefFlt)(void);
   boolean (*bGetHallInvalidFlt)(void);
   boolean (*bGetP5vAD2SOverVolFlt)(void);
   boolean (*bGetP5vAD2SUnderVolFlt)(void);
   boolean (*bGetUvwShortGnd)(void);
   boolean (*bGetUvwShortVs)(void);
};

struct BLDC_Device{
   uint8                   u8DeviceID;

   const BLDC_AppFunc     *ptAppFunc;
   const BLDC_HalModule   *ptHalModule;         /* External hardware interface. PORT / ADC */
   const BLDC_TimerDriver *ptTimerDrv;          /* MCU Timer driver */
   const BLDC_GeneModule  *ptGeneModule;
};

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

#endif /* __BLDC_DEVICE_TYPE_H_ */

