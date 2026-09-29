/*********************************************************************************************************************
*
* Description:     Os_Tasks module implementation
* FileName:        Os_Tasks.c
* Company:         INVT (www.invt.com.cn)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright INVT 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
* FIF5MI        22/02/2018      First Version.
**********************************************************************************************************************/

/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "Os_Tasks.h"
#include "CanIf.h"
#include "CanTp.h"
#include "Can.h"
#include "Dcm.h"
#include "CanSM.h"
#include "BLSM.h"
#include "Fls.h"
#include "SchM_Dcm.h"
#include "Fee.h"
#include "CanTrcv.h"

#include "FBL_BootM.h"
#include "FBL_DataM.h"
#include "EcuMgr.h"
#include "Sleep.h"
#include "FBL_WdgM.h"
#include "Fls_17_Dmu.h"
#include "SBL_Flash.h"
#include "Dio.h"
#include "UcbSwap.h"
/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/


/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/


/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Variables
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/


/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Function Name:     OsTask_100uS
* Return Value:      None
* Parameters List:   None
* Description:       100us Task.
*********************************************************************************************************************/
TASK(OsTask_100us)
{
    /* -- 100 us Task -- */
    Can_17_McmCan_MainFunction_Write();
    Can_17_McmCan_MainFunction_Read();
    Can_17_McmCan_MainFunction_BusOff();
}

/*********************************************************************************************************************
* Function Name:     OsTask_1ms
* Return Value:      None
* Parameters List:   None
* Description:       1ms Task.
*********************************************************************************************************************/
TASK(OsTask_1ms)
{
    /* -- 1 ms Task -- */
    Test_NvM_Blocks_MainFunction();
    CanTp_MainFunction();
    NvM_MainFunction();
    Fee_MainFunction();
    Fls_17_Dmu_MainFunction();
    EcuMgr_DownloadTargetMainFunction();
	Fbl_WdgM_Mainfunction();
}

/*********************************************************************************************************************
* Function Name:     OsTask_5ms
* Return Value:      None
* Parameters List:   None
* Description:       5ms Task.
*********************************************************************************************************************/
TASK(OsTask_5ms)
{
    /* -- 5 ms Task -- */
    Dcm_MainFunction();
    Fbl_DataM_MainFunction();
}

/*********************************************************************************************************************
* Function Name:     OsTask_10ms
* Return Value:      None
* Parameters List:   None
* Description:       10ms Task.
*********************************************************************************************************************/


TASK(OsTask_10ms)
{
    /* -- 10 ms Task -- */
    Fbl_BootM_MainFunction();
    BLSM_MainFunction();
    CanSM_MainFunction();
    CanTrcv_MainFunction();
}

/*********************************************************************************************************************
* Function Name:     OsTask_20ms
* Return Value:      None
* Parameters List:   None
* Description:       20ms Task.
*********************************************************************************************************************/
volatile uint8 SBL_TEST = 0;
extern uint32 scratchBuf[];
TASK(OsTask_20ms)
{
   static boolean Loc_bLedState = FALSE;
   static uint8 Loc_u8LedCnt = 0;

    /* -- 20 ms Task -- */
    // Sleep_MonitorMainFunction();
	if(SBL_TEST == 1)
	{
		SBL_FlashInit(&FlashParam);
		SBL_TEST = 0;
	}
	if(SBL_TEST == 2)
	{
		FlashParam.address = 0xaf008000;
		FlashParam.length = 0x4000;
		SBL_FlashErase(&FlashParam);
		SBL_TEST = 0;
	}
	else if(SBL_TEST == 3)
	{
		FlashParam.data = (uint8 *)scratchBuf;
		DISABLE();
		SBL_FlashWrite(&FlashParam);
		ENABLE();
		SBL_TEST = 0;
	}

   Loc_u8LedCnt++;
   if(Loc_u8LedCnt >= 100)
   {
      Loc_bLedState = !Loc_bLedState;
      Loc_u8LedCnt = 0;
      Dio_WriteChannel(DioConf_DioChannel_MCU_STATE_LED, Loc_bLedState);
   }
}
