/**********************************************************************************************************************/
/* !Layer           : HAL                                                                                             */
/* !Component       : SBC                                                                                        */
/* !Description     : SBC safe supply device management                                                          */
/*                                                                                                                    */
/* !File            : SBC.c                                                                                      */
/* !Description     : Send the init frames for SBC configuration                                                 */
/*                                                                                                                    */
/* !Reference       :                                                                                                 */
/*                                                                                                                    */
/* Coding language  : C                                                                                               */
/*                                                                                                                    */
/* COPYRIGHT invt  all rights reserved                                                                                */
/**********************************************************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 **********************************************************************************************************************/
#include "SBC.h"
#include "IOHAL.h"
#include "PortMux.h"

uint16 SBCHal_u16GetAdVal_P5VCom(void)
{
   return PMux_u16GetInputVal(ePMUX_AN2_MUX11);
}

uint16 SBCHal_u16GetAdVal_P5VGateway(void)
{
   return PMux_u16GetInputVal(ePMUX_AN1_MUX11);
}

uint16 SBCHal_u16GetAdVal_P5VBt(void)
{
   return PMux_u16GetInputVal(ePMUX_AN3_MUX11);
}

uint16 SBCHal_u16GetAdVal_P5VRef(void)
{
   return IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF();
}

uint16 SBCHal_u16GetAdVal_P5VAD2S(void)
{
   return IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S();
}

float32 SBCHal_f32GetBatteryVol(void)
{
   uint16  u16LocAdcRaw = 0;
   float32 f32LocBatValAd = 0.0f;

   u16LocAdcRaw = IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE();
   f32LocBatValAd = (float32)u16LocAdcRaw;

   SBC_f32BatteryVoltage = (f32LocBatValAd * 0.0159f) + 0.003f;

   return SBC_f32BatteryVoltage;
}

/*--------------------------------------------------- END OF FILE ----------------------------------------------------*/
