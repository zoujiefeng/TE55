#ifndef __BLDC_GENE_FUNC_H_
#define __BLDC_GENE_FUNC_H_


/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/*!Comment : BLDC Motor direction control. */
#define BLDC_DIR_FORWARD            (0x00)
#define BLDC_DIR_BACKWARD           (0x01)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct BLDC_Device BLDC_Device;
typedef struct BLDC_GeneModule BLDC_GeneModule;

/* !Comment: BLDC Duty mode. */
enum BLDC_DUTY_STATE{
   BLDC_DUTY_CLOSE = 0,
   BLDC_DUTY_REVRSE,
   BLDC_DUTY_BRAKE,
   BLDC_DUTY_SWDIR,
   BLDC_DUTY_GOING
};

/* BLDC_u8ExpOutput field definition
 * Bit0 : PWM1A(U High) PWM output state
 * Bit1 : PWM1B(U Low) PWM output state
 * Bit2 : PWM2A(V High) PWM output state
 * Bit3 : PWM2B(V Low) PWM output state
 * Bit4 : PWM3A(W High) PWM output state
 * Bit5 : PWM3B(W Low) PWM output state
 * Bit6 : Not used
 * Bit7 : Not used
struct BLDC_u8ExpOutput{
   uint8 PWM1AState : 1;
   uint8 PWM1BState : 1;
   uint8 PWM2AState : 1;
   uint8 PWM2BState : 1;
   uint8 PWM3AState : 1;
   uint8 PWM3BState : 1;
   uint8 Reserved0  : 1;
   uint8 Reserved1  : 1;
};
 */
typedef struct BLDC_HallCtrlTable{
   uint8 BLDC_u8CurHall;
   uint8 BLDC_u8ExpHall;
   uint8 BLDC_u8ExpOutput;
}BLDC_HallCtrlTable;

/* PWM control variable set */
typedef struct BLDC_PwmCtrlVarSet{
   uint16  BLDC_u16DutyDelayCnt;
   uint8   BLDC_u8PrevDirSts;
   uint8   BLDC_u8CurDirSts;
   uint8   BLDC_u8DutyModeStt;
   uint8   BLDC_u8DutyHoldTicks;
   float32 BLDC_f32CurCycleDuty;
}BLDC_PwmCtrlVarSet;

/* Hall phase control variable set */
typedef struct BLDC_HallCtrlVarSet{
   uint8 BLDC_u8CurHallStt;
   uint8 BLDC_u8ConfirmDirSts;
   uint8 BLDC_u8WrCurHallStt;
   uint8 BLDC_u8WrExpOutput;
}BLDC_HallCtrlVarSet;

struct BLDC_GeneModule{
   BLDC_PwmCtrlVarSet  *PwmCtrlVar;
   BLDC_HallCtrlVarSet *HallCtrlVar;

   void  (*vidDebug)(void);
   void  (*vidModuleInit)(const BLDC_Device * const kpktDev);
   uint8 (*u8GetHallState)(const BLDC_Device * const kpktDev);
   void  (*vidChgHallPattern)(const BLDC_Device * const kpktDev);
   void  (*vidSetPwmBcDuty)(const BLDC_Device * const kpktDev, const float32 f32Duty);
   void  (*vidStartRotation)(const BLDC_Device * const kpktDev, const uint8 u8BldcDir);

   /* Public */
   uint8 (*u8GetHallStt)(const BLDC_Device * const kpktDev);
   uint8 (*u8GetCurDirSts)(const BLDC_Device * const kpktDev);
   uint8 (*u8GetDutyModeStt)(const BLDC_Device * const kpktDev);
};

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/
extern const BLDC_HallCtrlTable BLDC_au8BackwardTable[6];
extern const BLDC_HallCtrlTable BLDC_au8ForwardTable[6];
extern const BLDC_GeneModule BLDC_xGeneModule;

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* __BLDC_GENE_FUNC_H_ */

