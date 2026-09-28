/***************************************************************************************************
 * Component : OverlayManager.c
 * Date      : Mar 15 2019
 * Version   : 1.0
 * Description  : This module implements the overlay functions.
 *
 **************************************************************************************************/

/**********************************************************************************************************************
 * INCLUDES
 *********************************************************************************************************************/
#include "McalLib.h"
#include "Xcp_Priv.h"
#include "OverlayManager.h"

const OVC_tstBlockConfig OVC_cstCfg[OVC_BLOCKNUM_CFG] = {
   {   
      .u32TargetFlashAddr = (uint32)CALFLASH_START_ADDR,
      .u32OverlayRamAddr = (uint32)CALRAM_START_ADDR,
      .eBlockNum = IfxCpu_OverlayBlock_0,
      .eOverlayBlockSize = IfxCpu_OverlayAddressMask_32KB,
      .eOverlayRedirectRegion = IfxCpu_OverlayMemorySelect_core1DsprPspr,
      .u8EnableCore = (0 
                    | (1 << OVC_CORE3) 
                    | (1 << OVC_CORE2) 
                    | (1 << OVC_CORE1) 
                    | (1 << OVC_CORE0))
   },
#if (OVC_BLOCKNUM_CFG >= 2)   
   {
      .u32TargetFlashAddr = (uint32)TCU_CALFLASH_START_ADDR,
      .u32OverlayRamAddr = (uint32)TCU_CALRAM_START_ADDR,
      .eBlockNum = IfxCpu_OverlayBlock_1,
      .eOverlayBlockSize = IfxCpu_OverlayAddressMask_32KB,
      .eOverlayRedirectRegion = IfxCpu_OverlayMemorySelect_core1DsprPspr,
      .u8EnableCore = (0 
                    | (1 << OVC_CORE3) 
                    | (1 << OVC_CORE2) 
                    | (1 << OVC_CORE1) 
                    | (1 << OVC_CORE0))
   }
#endif
};

static uint8 OVC_u8InitDown = 0;
static uint8 OVC_u8EnableCores = 0;

#define OVERLAY_M_CORE_MASK     (0x0FU)
#define OVC_ENABLE_VAL          (0x03050000U)
#define OVC_DISABLE_VAL         (0x03060000U)

/**********************************************************************************************************************
 *  OverlayManager
 *********************************************************************************************************************/
/*! Init function for overlay.
 *   
 *  \param [in]  none
 *  \param [out] none
 *  \return     1
 *  \retval     //
 *  \note       .
 *********************************************************************************************************************/
void Overlay_Init(void)
{
/* The calibration size is 32KB,
	 * Flash CAL: 0x8006_0000H - 0x8006_7FFFH, 32KB
	 * Ram CAL  : 0x6002_0000H - 0x6002_7FFFH, 32KB
	 */

	/* The calibration size is 32KB
	 * Here 1 overlay blocks are configured
	 * Block 0: size 32KB
	 */

   uint8 u8BlockIndex = 0;
   uint8 u8CoreIndex = 0;
   uint8 u8TotalCoreEnable = 0;
   
   uint8 u8CoreEnableTmp = 0;
   uint8 u8BlockNumTemp = (uint8)IfxCpu_OverlayBlock_0;
   Ifx_CPU * OVC_ptCPUTempPtr = NULL_PTR;

	Overlay_Sync();

   if(OVC_u8InitDown != 1)
   {
      for(u8BlockIndex = 0; u8BlockIndex < OVC_BLOCKNUM_CFG; u8BlockIndex++)
      {
         u8BlockNumTemp = OVC_cstCfg[u8BlockIndex].eBlockNum;
         
         for(u8CoreIndex = 0; u8CoreIndex < OVC_CORENUM_CFG; u8CoreIndex++)
         {
            u8CoreEnableTmp = OVC_cstCfg[u8BlockIndex].u8EnableCore;
            /* Logging the id of core which is enabled overlay function */
            u8TotalCoreEnable |= u8CoreEnableTmp;
            
            if(u8CoreEnableTmp & (1 << u8CoreIndex))
            {
               switch(u8CoreIndex)
               {
                  case 0:
                     OVC_ptCPUTempPtr = &MODULE_CPU0;
                     break;
                  case 1:
                     OVC_ptCPUTempPtr = &MODULE_CPU1;
                     break;
                  case 2:
                     OVC_ptCPUTempPtr = &MODULE_CPU2;
                     break;
                  case 3:
                     OVC_ptCPUTempPtr = &MODULE_CPU3;
                     break;
                  default:
                     OVC_ptCPUTempPtr = NULL_PTR;
                     break;
               }
      
               if(OVC_ptCPUTempPtr != NULL_PTR)
               {         
                  OVC_ptCPUTempPtr->OSEL.U |= (uint32)(1 << u8BlockNumTemp);
                  OVC_ptCPUTempPtr->BLK[u8BlockNumTemp].RABR.B.OMEM   = (uint32)(OVC_cstCfg[u8BlockIndex].eOverlayRedirectRegion);
                  OVC_ptCPUTempPtr->BLK[u8BlockNumTemp].RABR.B.OBASE  = CONVET_TO_OBASE_Addr(OVC_cstCfg[u8BlockIndex].u32OverlayRamAddr);
                  OVC_ptCPUTempPtr->BLK[u8BlockNumTemp].OTAR.B.TBASE  = CONVET_TO_TBASE_Addr(OVC_cstCfg[u8BlockIndex].u32TargetFlashAddr);
                  OVC_ptCPUTempPtr->BLK[u8BlockNumTemp].OMASK.B.OMASK = (uint32)(OVC_cstCfg[u8BlockIndex].eOverlayBlockSize);
               }          
            }
         }
      }  
      
      Mcal_WriteSafetyEndInitProtReg(&SCU_OVCENABLE, (uint32)u8TotalCoreEnable);    /*SCU_OVCENABLE.B.OVENx = 1, OVC is enable on CPUx*/
      
      Mcal_WriteSafetyEndInitProtReg(&SCU_OVCCON, (OVC_ENABLE_VAL | u8TotalCoreEnable));
      OVC_u8EnableCores = u8TotalCoreEnable;
      OVC_u8InitDown = 1;
   }
}


void Overlay_Enable(void)
{
   uint32 u32RegVal = OVC_u8EnableCores | OVC_ENABLE_VAL;

	/* XcpApp_CurrentCalPage is WORKING_CAL_PAGE; */
	//SCU_OVCCON.U = 0x00050007;//Overlay Start, OVSTRT = 0
	Mcal_WriteSafetyEndInitProtReg(&SCU_OVCCON, u32RegVal);
   __dsync();
}

void Overlay_Disable(void)
{
   uint32 u32RegVal = OVC_u8EnableCores | OVC_DISABLE_VAL;
   
	/* XcpApp_CurrentCalPage is REFERENCE_CAL_PAGE; */
	//SCU_OVCCON.U = 0x00060007; //Overlay Stop, OVSTP = 1
	Mcal_WriteSafetyEndInitProtReg(&SCU_OVCCON, u32RegVal);
	__dsync();
}

/*******************************************************************************
  Function name     :   Overlay_CheckEnabled

  Description       :
  Parameter         :   *enabled
  Return value      :   none

*******************************************************************************/
void Overlay_CheckEnabled(boolean *enabled)
{
    boolean overlay_enabled = FALSE;
    Ifx_CPU * OVC_ptCPUTempPtr;

    OVC_ptCPUTempPtr = &MODULE_CPU0;
#if 0
    if (SCU_OVCCON.U == 0x00050007)
    {
        overlay_enabled = TRUE;
    }
#endif
    if((OVC_ptCPUTempPtr->BLK[0].RABR.B.OVEN != 0) && (OVC_ptCPUTempPtr->BLK[1].RABR.B.OVEN))
    {
      overlay_enabled = TRUE;
    }
    
    *enabled = overlay_enabled;
}

/*******************************************************************************
  Function name     :   OverlayMem_Sync

  Description       :
  Parameter         :   none
  Return value      :   none

*******************************************************************************/
void Overlay_Sync(void)
{
    Xcp_MemCopy((uint32*)CALRAM_START_ADDR,
                (uint32*)CALFLASH_START_ADDR,
                CAL_MEM_SIZE);
    
    Xcp_MemCopy((uint32*)TCU_CALRAM_START_ADDR,
                (uint32*)TCU_CALFLASH_START_ADDR,
                TCU_CAL_MEM_SIZE); 
}

/**********************************************************************************************************************
 *  END OF FILE: *.c
 *********************************************************************************************************************/

