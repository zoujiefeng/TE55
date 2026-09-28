#ifndef __TPPC_DEVICE_TYPE_H_
#define __TPPC_DEVICE_TYPE_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct TPPC_Duty        TPPC_Duty;
typedef struct TPPC_Device      TPPC_Device;
typedef struct TPPC_AppFunc     TPPC_AppFunc;
typedef struct TPPC_GeneVarSet  TPPC_GeneVarSet;
typedef struct TPPC_GeneModule  TPPC_GeneModule;
typedef struct TPPC_TimerDriver TPPC_TimerDriver;

struct TPPC_Duty{
   float32 f32Duty1;
   float32 f32Duty2;
   float32 f32Duty3;
};

struct TPPC_TimerDriver{
   void        *pvCommDrv;           /* Common hardware driver, CCU6 or GTM */
   const void  *pkvCfgHandle;        /* pwm state list */

   void (*vidIntHwInit)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidIntTrigEnable)(const TPPC_TimerDriver * const kpktDrv, boolean bEnable);
   void (*vidStartTimer)(const TPPC_TimerDriver * const kpktDrv, boolean bStartCmd);

   void (*vidTrigLowAsc)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidTrigHighAsc)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidPwmEnable)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidPwmDisable)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidPwmDisableImmediately)(const TPPC_TimerDriver * const kpktDrv);
   void (*vidSetPwmOutState)(const TPPC_TimerDriver * const kpktDrv, uint8 u8Dir, uint8 u8Index);
   void (*vidSetPwmDuty)(const TPPC_TimerDriver * const kpktDrv, const TPPC_Duty *const kpktDuty);
   void (*vidSetPwmFreq)(const TPPC_TimerDriver * const kpktDrv, float32 f32Freq);
   void (*vidSetSingleChPhase)(const TPPC_TimerDriver * const kpktDrv, float32 f32Freq, uint8 u8ChIndex);
};

struct TPPC_AppFunc{
   void    (*vidInit)(const TPPC_Device * const kpktDev);
   void    (*vidAscEntry)(const TPPC_Device * const kpktDev);
   void    (*vidMotorStateMng)(const TPPC_Device * const kpktDev);
   void    (*vidSetPwmModReq)(const uint16 u16PwmMod);
   void    (*vidSetClrFaultReq)(boolean bClrFaultReq);
   void    (*vidSetMotorSpdRdyFlg)(boolean bMotorSpdRdy);
   uint8   (*u8GetPwmState)(void);
   boolean (*bGetPwmRunFlag)(void);
   boolean (*bGetHwFaultIgbt)(void);
   boolean (*bGetHwFaultIgbtL)(void);
   boolean (*bGetHwFaultIgbtH)(void);
   boolean (*bGetAscisClose)(void);
};

struct TPPC_Device{
   uint8                    u8DeviceID;

   const TPPC_AppFunc       *pktAppFunc;
   const TPPC_TimerDriver   *pktTimerDrv;          /* Timer driver */

   void  (*vidDebug)(void);
   void  (*vidModuleInit)(const TPPC_Device * const kpktDev);
   void  (*vidStartPwmOutput)(const TPPC_Device * const kpktDev, boolean bStartCmd);
   void  (*vidStartTimer)(const TPPC_Device * const kpktDev, boolean bStartCmd);
   void  (*vidSetPwmBcDuty)(const TPPC_Device * const kpktDev, float32 f32DutyU, float32 f32DutyV, float32 f32DutyW);
   void  (*vidSetPwmFreq)(const TPPC_Device * const kpktDev, float32 f32Freq);
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

#endif /* __TPPC_DEVICE_TYPE_H_ */

