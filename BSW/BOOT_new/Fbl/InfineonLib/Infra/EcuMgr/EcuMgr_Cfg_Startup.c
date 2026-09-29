/*********************************************************************************************************************
*
* Description:     EcuM module implementation 
* FileName:        EcuM_Cfg_Startup.c
* Company:         invt GmbH (www.invt.com)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright invt GmbH 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
UCN1HC          10/18/2020
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "EcuMgr_Cfg_Startup.h"
#include "EcuM.h"
#include "EcuMgr_CallOuts.h"
#include "EcuMgr_Cfg_DownloadTarget.h"
#include "Fee.h"
#include "Mcu.h"
#include "Irq.h"
#include "Can.h"
#include "Spi.h"
#include "TLF35584new.h"
#include "IfxScuRcu.h"
#include "IfxScuWdt.h"
#include "UcbSwap.h"

#include "FBL_WdgM.h"
/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 122] */
/**
  *Function name     :   EcuM_DriverInitZero
  *Description       :   This callout shall provide driver initialization and other hardware-related
  *                      startup activities for loading postbuild configuration data.
  *Parameter (in)    :   None
  *Parameter (inout) :   None
  *Parameter (out)   :   None
  *Return value      :   None
  *Remarks           :
  */
void EcuMgr_DriverInitZero(void)
{
  
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 123] */
/**
  *Function name     :   EcuM_DriverInitZero
  *Description       :   This callout shall provide driver initialization and other hardware-related
  *                      startup activities in case power on reset.
  *Parameter (in)    :   None
  *Parameter (inout) :   None
  *Parameter (out)   :   None
  *Return value      :   None
  *Remarks           :
  */
void EcuMgr_DriverInitOne(void)
{
     /*Initialize Mcu */
    Mcu_Init(&Mcu_Config);

    /* Need to do: EB Update, and remove this line */
    IfxScuRcu_configureResetRequestTrigger(IfxScuRcu_Trigger_sw, IfxScuRcu_ResetType_system);
    
    /*Initialize Mcu Clock*/
    (void)Mcu_InitClock((Mcu_ClockType)0);
    while (MCU_PLL_LOCKED != Mcu_GetPllStatus())
    {
        /* wait until all enabled PLLs are locked */
    }
    /* distribute the clock */
    Mcu_DistributePllClock();    /* PRQA S 3200 */ /* MISRA DEVIATION: Don't need return value because there is nothing we can do with it anyway. */
    /*Port initialization */
    Port_Init(&Port_Config);

    Spi_Init(&Spi_Config);
    
    /*Fls initialization */
    Fls_Init(&Fls_17_Dmu_Config);
    /*fee initialization */

    // Spi_SyncTransmit(SpiConf_SpiSequence_TLF35584_SEQ);

    /*Irq Initialization */
    IrqCan_Init();
    /*Initialize CAN*/
    Can_Init(&Can_17_McmCan_Config);
    /*Enable Can Interrupt in controller 0*/
    //Can_EnableControllerInterrupts(Can_17_McmCanConf_CanController_CANNODE_01);
    //Can_EnableControllerInterrupts(Can_17_McmCanConf_CanController_CANNODE_03);

    DISABLE();
    /* Initialize Watchdog feature */
    Fbl_WdgM_init();
    TLF35584_vidInit(TLF35584_u8CHIP_STEP_B);
}

boolean EcuMgr_bVerifySuccess = FALSE;

void EcuMgr_vidSetVerifySuccessFlag(void)
{
   EcuMgr_bVerifySuccess = TRUE;
}

void EcuMgr_vidClrVerifySuccessFlag(void)
{
   EcuMgr_bVerifySuccess = FALSE;
}

extern boolean DcmAppl_bUdsResetReq;
extern boolean FBL_BLSM_INVTProcessPassCheck;
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 124] */
void EcuMgr_PerformReset(void)
{
   if(FALSE == FBL_BLSM_INVTProcessPassCheck)
   {
      if(TRUE == EcuMgr_bVerifySuccess)
      {
         EcuMgr_bVerifySuccess = FALSE;
         (void)Swap_vidTriggerSwap();
      }
   }
   else
   {
      if((TRUE == EcuMgr_bVerifySuccess)
      && (TRUE == DcmAppl_bUdsResetReq))
      {
         EcuMgr_bVerifySuccess = FALSE;
         (void)Swap_vidTriggerSwap();
      }
   }
    
    Mcu_PerformReset();
}

#define WDG_RESET_TIME_MS(Val)    (uint32)(0xFFFFU - ((Val) * 100000U) / 16384U)

void EcuMgr_EnableWdg(void)
{
   IfxScuWdt_enableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
   IfxScuWdt_changeCpuWatchdogReload(IfxScuWdt_getCpuWatchdogPassword(), WDG_RESET_TIME_MS(10));
   IfxScuWdt_serviceCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
}

void EcuMgr_HwReset(void)
{
#if 0  /* SW triggers system reset. HW reset not used */
   uint32 ResetDelayTicks, BaseSTMTick, CurrSTMTick, DelayTickResolution;

   if(TRUE == bVerifySuccess)   
   {
      bVerifySuccess = FALSE;
      (void)Swap_vidTriggerSwap();
   }
   
   /* Call the reset rountine */
   /* Enable sbc wdg, but do not feed it, to create a hardware reset */
   TLF35584_vidResetActive();
   
   CurrSTMTick = Mcal_DelayGetTick();
   BaseSTMTick = CurrSTMTick;
   ResetDelayTicks = (uint32)500000000U;   /* Timeout 5s */
   while ((uint32)((CurrSTMTick - BaseSTMTick) & 0xFFFFFFFF) < ResetDelayTicks)
   {
      CurrSTMTick = Mcal_DelayGetTick();
   }
   /* If the hardware reset times out, reset the software */
   (void)EcuMgr_PerformReset();
#endif
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 125] */
void EcuMgr_JumpToApplication(void)
{
    void (*appStartAdd)(void);

    Fbl_WdgM_Disable();
    DISABLE();
    Can_DisableControllerInterrupts(CanConf_CanController_CANNODE_01);
    Can_DisableControllerInterrupts(CanConf_CanController_CANNODE_03);
  //convert to cached address plus offset from BMH
   appStartAdd = (void (*)(void))(ECUMGR_APPLICATION_REGION_START_ADDRESS + (uint32)0x8000);   /* PRQA S 0305, 0306 */ /* MISRA DEVIATION: Cast between a pointer to object or pointer to function and an integral type is necessary. */
    // appStartAdd = (void (*)(void))(ECUMGR_APPLICATION_REGION_START_ADDRESS);
    appStartAdd();
}
