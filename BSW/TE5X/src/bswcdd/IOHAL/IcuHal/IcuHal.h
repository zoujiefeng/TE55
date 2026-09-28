#ifndef _ICU_H_
#define _ICU_H_


#include "Std_Types.h"
#include "Std_Limits.h"
#include "IOHAL_Cfg_I.h"
#include "Icu_17_TimerIp.h"
#include "Icu_17_TimerIp_Cfg.h"


/*Internal variables declare*/
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2;
extern float32 Icu_f32Cycle_AN_VOL_DCLINK_EPS;
extern float32 Icu_f32Cycle_AN_VOL_DCLINK_ACM;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1;
extern float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1;
extern float32 Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W;
extern float32 Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V;
extern float32 Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W;
extern float32 Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V;
/*External variables declare*/


/*Internal functions declare*/
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2(void);
float32 Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS(void);
float32 Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1(void);
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1(void);

/*External functions declare*/
extern void Icu_vidGetDutyCycle(void);


#endif

