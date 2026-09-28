#include "IcuHal.h"


float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2 = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2 = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2 = 0.0f;
float32 Icu_f32Cycle_AN_VOL_DCLINK_EPS   = 0.0f;
float32 Icu_f32Cycle_AN_VOL_DCLINK_ACM   = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1 = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1 = 0.0f;
float32 Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1 = 0.0f;

float32 Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W = 0.0f;
float32 Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V = 0.0f;
float32 Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W = 0.0f;
float32 Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V = 0.0f;

static float32 Icu_f32CalcChannelCycle(const Icu_17_TimerIp_ChannelType Channel);

/*********************************************************************
*
* !FuncName   : Icu_f32CalculateCycle
* !Description : Calculate duty cycle of channels
*
* !Date          Version      Author         Operation
* --------------------------------------------------------------------
* 2025/03/20      V1.0         Lzj             Create
**********************************************************************/
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2(void)
{
   Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_U_2, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2(void)
{
   Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_V_2, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2(void)
{
   Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_W_2, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS(void)
{
   Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_AN_VOL_DCLINK_EPS, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM(void)
{
   Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_AN_VOL_DCLINK_ACM, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1(void)
{
   Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_W_1, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1(void)
{
   Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_V_1, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}
float32 Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1(void)
{
   Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_TEMP_MEAS_MOD_U_1, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}

/*********************************************************************
*
* !FuncName   : Icu_vidGetDutyCycle
* !Description : Get duty cycle of channels
*
* !Date          Version      Author         Operation
* --------------------------------------------------------------------
* 2025/03/20      V1.0         Lzj             Create
**********************************************************************/
void Icu_vidGetDutyCycle(void)
{
   Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_2();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_2();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_2();
   Icu_f32Cycle_AN_VOL_DCLINK_EPS   = Icu_f32CalculateCycle_AN_VOL_DCLINK_EPS();
   Icu_f32Cycle_AN_VOL_DCLINK_ACM   = Icu_f32CalculateCycle_AN_VOL_DCLINK_ACM();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_W_1();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_V_1();
   Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1 = Icu_f32CalculateCycle_M_TEMP_MEAS_MOD_U_1();

   Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W = Icu_f32CalcChannelCycle(IcuConf_IcuChannel_M_EPS_TEMP_MEAS_MOD_W);
   Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V = Icu_f32CalcChannelCycle(IcuConf_IcuChannel_M_EPS_TEMP_MEAS_MOD_V);
   Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W = Icu_f32CalcChannelCycle(IcuConf_IcuChannel_M_ACM_TEMP_MEAS_MOD_W);
   Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V = Icu_f32CalcChannelCycle(IcuConf_IcuChannel_M_ACM_TEMP_MEAS_MOD_V);
}

static float32 Icu_f32CalcChannelCycle(const Icu_17_TimerIp_ChannelType Channel)
{
   Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
   float32 f32LocDutyCycle = 0.0f;

   Icu_17_TimerIp_GetDutyCycleValues(Channel, &strLocPeriodAndActiveTime);
   if(strLocPeriodAndActiveTime.PeriodTime != 0)
   {
      f32LocDutyCycle = (float32)((float32)strLocPeriodAndActiveTime.ActiveTime / (float32)strLocPeriodAndActiveTime.PeriodTime);
   }
   else
   {
      f32LocDutyCycle = 0.0f;
   }

   return f32LocDutyCycle;
}

