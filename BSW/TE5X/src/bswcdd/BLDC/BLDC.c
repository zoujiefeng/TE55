
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "BLDC.h"
#include "BLDC_Device.h"

/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  BLDC_vidInit
 * Description      :  Sub module init
 * Input parameter  :  PBLDC_Device : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
void BLDCDev_vidInit(const uint8 ku8DevID)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidInit();
   BLDC_axDeviceSet[ku8DevID].ptGeneModule->vidModuleInit(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidMotorStateMng(const uint8 ku8DevID)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidMotorStateMng(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidMotPosPwmMng(const uint8 ku8DevID)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidMotPosPwmMng(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidGetPosSigPerd(const uint8 ku8DevID, uint32* pu32PosSigPerd)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidGetPosSigPerd(pu32PosSigPerd);
}

void BLDCDev_vidGetPositionDuty(const uint8 ku8DevID, float32* pf32PosDuty)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidGetPositionDuty(pf32PosDuty);
}

/*****************************************************************************
*
* !Runnable    : BLDC_vidDiagnosticMng
* !Trigger       : PWM interrupt
* !Description : BLDC diagnostic management. 
* !Input: 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void BLDCDev_vidHallDiagMainfunction(const uint8 ku8DevID, const uint8 u8CurHallStt)
{
   BLDC_axDeviceSet[ku8DevID].ptAppFunc->vidHallDiagMainfunction(&BLDC_axDeviceSet[ku8DevID], u8CurHallStt);
}

uint8 BLDCDev_u8GetHallStt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptGeneModule->u8GetHallState(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidChgHallPattern(const uint8 ku8DevID)
{
   BLDC_axDeviceSet[ku8DevID].ptGeneModule->vidChgHallPattern(&BLDC_axDeviceSet[ku8DevID]);
}

void BLDCDev_vidSetPwmBcDuty(const uint8 ku8DevID, const float32 f32Duty)
{
   BLDC_axDeviceSet[ku8DevID].ptGeneModule->vidSetPwmBcDuty(&BLDC_axDeviceSet[ku8DevID], f32Duty);
}


uint8 BLDCDev_u8GetHallState(const uint8 ku8DevID)
{ 
   return BLDC_axDeviceSet[ku8DevID].ptGeneModule->u8GetHallStt(&BLDC_axDeviceSet[ku8DevID]);
}

uint8 BLDCDev_u8GetCurDirSts(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptGeneModule->u8GetCurDirSts(&BLDC_axDeviceSet[ku8DevID]);
}

uint8 BLDCDev_u8GetDutyModeStt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptGeneModule->u8GetDutyModeStt(&BLDC_axDeviceSet[ku8DevID]);
}

boolean BLDCDev_bGetHallUndefFlt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetHallUndefFlt();
}

boolean BLDCDev_bGetHallInvalidFlt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetHallInvalidFlt();
}

boolean BLDCDev_bGetP5vAD2SOverVolFlt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetP5vAD2SOverVolFlt();
}

boolean BLDCDev_bGetP5vAD2SUnderVolFlt(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetP5vAD2SUnderVolFlt();
}

boolean BLDCDev_bGetUvwShortGnd(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetUvwShortGnd();
}

boolean BLDCDev_bGetUvwShortVs(const uint8 ku8DevID)
{
   return BLDC_axDeviceSet[ku8DevID].ptAppFunc->bGetUvwShortVs();
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/



