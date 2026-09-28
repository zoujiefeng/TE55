/**********************************************************************************************************************/
/* !Layer               :HAL                                                                                          */
/* !Component     :TJA1145                                                                                            */
/* !Description     : TJA1145 safe supply device management                                                           */
/*                                                                                                                    */
/* !File            : TJA1145.c                                                                                       */
/* !Description     : Send the init frames for TJA1145 configuration                                                  */
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
 
#include "TLE9180_HAL.h"
#include "iohal.h"
#include "Dio.h"
#include "BSW.h"
#include "BLDC.h"

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
 
/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define TLE9180_START_SEC_CODE
#include "TLE9180_MemMap.h"
boolean TLE9180_bHalBatIsNormal(void)
{
   uint16  u16AdVal;
   boolean bIsNormal = FALSE;

   /* Get Battery Voltage */
   // u16AdVal = IOHAL_u16Read_CH_ADC_IN_AN_P12V_BATT_2();
   TLE9180_f32BatteryVoltage = ((float32)u16AdVal * 0.0124) + 0.1336;
   
   if(TLE9180_f32BatteryVoltage >= TLE9180_kf32BatteryVolValidThrdC)
   {
      bIsNormal = TRUE;
   }

   return bIsNormal;
}

boolean TLE9180_bHalSysIsReady(void)
{
   boolean bTcuReadySts;

   bTcuReadySts = BSW_bGetBswReadySts();

   return bTcuReadySts;
}

boolean TLE9180_bHalPwmIsReady(void)
{
   boolean bPwmReadySts;

   bPwmReadySts = BLDC_bPwmIsReady();

   return bPwmReadySts;
}

boolean TLE9180_bHalICIsNormal(void)
{
   boolean bICIsNormal;
   uint16 u16LocTempVal;
   
   // u16LocTempVal = IOHAL_u16Read_CH_DIO_IN_CLU_ERR_FAULT();
   bICIsNormal   = (u16LocTempVal != 0x00)? TRUE : FALSE;

   return bICIsNormal;
}

void TLE9180_vidHalWriteEnaPin(const CDD_ePinLevel kePinLevel)
{
   /* Dio_WriteChannel(DioConf_DioChannel_M_CLU_ENA, kePinLevel); */
}

void TLE9180_vidHalWriteSoffPin(const CDD_ePinLevel kePinLevel)
{
   /* Dio_WriteChannel(DioConf_DioChannel_PREDRV_TLE9180_SOFF_0, kePinLevel); */
}

void TLE9180_vidHalWriteInhPin(const CDD_ePinLevel kePinLevel)
{
   /* Dio_WriteChannel(DioConf_DioChannel_PREDRV_TLE9180_INH_0, kePinLevel); */
}

#define TLE9180_STOP_SEC_CODE
#include "TLE9180_MemMap.h"

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
#define TLE9180_START_SEC_CODE
#include "TLE9180_MemMap.h"

#define TLE9180_STOP_SEC_CODE
#include "TLE9180_MemMap.h"

/*--------------------------------------------------- END OF FILE ----------------------------------------------------*/
