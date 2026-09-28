
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "TPPC.h"
#include "TPPC_Device.h"

/******************************************************************************/
/* CALIBRATIONS DEFINITION                                                    */
/******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/* !Comment: TPPC Power on delay 100ms, wait for power on of current measure borad */
#define TPPC_PO_DELAY      (10U)

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
#define  TPPC_START_CODE_FAST_CPU3_SECTION
#include "TPPC_MemMap.h"
/**********************************************************************
 * Function name    :  TPPC_vidInit
 * Description      :  Sub module init
 * Input parameter  :  PTPPC_Device : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
void TPPCDev_vidInit(const uint8 ku8DevID)
{
   TPPC_axDeviceSet[ku8DevID].pktAppFunc->vidInit(&TPPC_axDeviceSet[ku8DevID]);
   TPPC_axDeviceSet[ku8DevID].vidModuleInit(&TPPC_axDeviceSet[ku8DevID]);
}

void TPPCDev_vidAscEntry(const uint8 ku8DevID)
{
   TPPC_axDeviceSet[ku8DevID].pktAppFunc->vidAscEntry(&TPPC_axDeviceSet[ku8DevID]);
}

void TPPCDev_vidStartTimer(const uint8 ku8DevID)
{
   TPPC_axDeviceSet[ku8DevID].vidStartTimer(&TPPC_axDeviceSet[ku8DevID], TRUE);
}

void TPPCDev_vidStopPwmOutput(const uint8 ku8DevID)
{
   TPPC_axDeviceSet[ku8DevID].vidStartPwmOutput(&TPPC_axDeviceSet[ku8DevID], FALSE);
}

void TPPCDev_vidMotorStateMng(const uint8 ku8DevID)
{
   TPPC_axDeviceSet[ku8DevID].pktAppFunc->vidMotorStateMng(&TPPC_axDeviceSet[ku8DevID]);
}

void TPPCDev_vidSetPwmModReq(const uint8 ku8DevID, const uint16 u16PwmMod)
{
   TPPC_axDeviceSet[ku8DevID].pktAppFunc->vidSetPwmModReq(u16PwmMod);
}

void TPPCDev_vidSetClrFaultReq(const uint8 ku8DevID, const boolean bClrFaultReq)
{
   TPPC_axDeviceSet[ku8DevID].pktAppFunc->vidSetClrFaultReq(bClrFaultReq);
}

void TPPCDev_vidSetMotorSpdRdyFlg(const uint8 ku8DevID, const boolean bMotorSpdRdy)
{
   TPPC_axDeviceSet[ku8DevID].pktAppFunc->vidSetMotorSpdRdyFlg(bMotorSpdRdy);
}

uint8 TPPCDev_u8GetPwmState(const uint8 ku8DevID)
{
   return TPPC_axDeviceSet[ku8DevID].pktAppFunc->u8GetPwmState();
}

boolean TPPCDev_bGetPwmRunFlag(const uint8 ku8DevID)
{
   return TPPC_axDeviceSet[ku8DevID].pktAppFunc->bGetPwmRunFlag();
}

boolean TPPCDev_bGetHwFaultIgbt(const uint8 ku8DevID)
{
   return TPPC_axDeviceSet[ku8DevID].pktAppFunc->bGetHwFaultIgbt();
}

boolean TPPCDev_bGetHwFaultIgbtL(const uint8 ku8DevID)
{
   return TPPC_axDeviceSet[ku8DevID].pktAppFunc->bGetHwFaultIgbtL();
}

boolean TPPCDev_bGetHwFaultIgbtH(const uint8 ku8DevID)
{
   return TPPC_axDeviceSet[ku8DevID].pktAppFunc->bGetHwFaultIgbtH();
}

boolean TPPCDev_bGetAscisClose(const uint8 ku8DevID)
{
   return TPPC_axDeviceSet[ku8DevID].pktAppFunc->bGetAscisClose();
}

/*****************************************************************************
*
* !Runnable    : TPPC_vidDiagnosticMng
* !Trigger       : PWM interrupt
* !Description : TPPC diagnostic management. 
* !Input: 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void TPPCDev_vidSetPwmBcDuty(const uint8 ku8DevID, float32 f32DutyU, float32 f32DutyV, float32 f32DutyW)
{
   TPPC_axDeviceSet[ku8DevID].vidSetPwmBcDuty(&TPPC_axDeviceSet[ku8DevID], f32DutyU, f32DutyV, f32DutyW);
}

/*****************************************************************************
*
* !Runnable    : TPPC_vidDiagnosticMng
* !Trigger       : PWM interrupt
* !Description : TPPC diagnostic management. 
* !Input: 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void TPPCDev_vidSetPwmFreq(const uint8 ku8DevID, float32 f32Freq)
{
   TPPC_axDeviceSet[ku8DevID].vidSetPwmFreq(&TPPC_axDeviceSet[ku8DevID], f32Freq);
}

#define  TPPC_STOP_CODE_FAST_CPU3_SECTION
#include "TPPC_MemMap.h"

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/



