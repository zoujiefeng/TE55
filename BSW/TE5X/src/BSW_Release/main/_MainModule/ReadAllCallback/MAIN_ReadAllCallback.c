/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_ReadAllCallback.h"
#include "EnhancedResetLogger.h"

#include "MAIN_tsk.h"
#include "GMAIN_tsk.h"
#include "_MainModule.h"
#include "DFM.h"
#include "BSW.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  MAIN_vidReadAllCallback
 * Description      :  Called after the end of ReadAll. 
 *                  :  Initialize motor parameters
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/06/25	     V1.0	     Zyx	       Create
 ***********************************************************************/
void MAIN_vidReadAllCallback(void)
{
   boolean bLocOcDataValidFlag = FALSE;

   /* Read CalibData from DFlash */
   /* Read OcData from DFlash */
   DFM_vidReadAll();

   /* Read Mcu&Gcu NvM info */
   MAIN_OCT_vidGetOcTrimData();
   /* Init Mcu NvM info */
   MAIN_bInitOcTrimData();
   /* Init Mcu NvM info */
   GMAIN_bInitOcTrimData();

   MAIN_CAL_vidCheckAllCalibData();

   /* Zero-bit validity verification */
   bLocOcDataValidFlag = MAIN_OCT_bCheckOcTrimData(eMAIN_UNIT_MCU_INDEX);
   BSW_vidSetOcDataNotRatFlg(!(bLocOcDataValidFlag));
   if(FALSE == bLocOcDataValidFlag)
   {
      MAIN_OCT_vidRestoreOcBlockDefaults(eMAIN_UNIT_MCU_INDEX);
   }
   
   bLocOcDataValidFlag = MAIN_OCT_bCheckOcTrimData(eMAIN_UNIT_GCU_INDEX);
   GBSW_vidSetOcDataNotRatFlg(!(bLocOcDataValidFlag));
   if(FALSE == bLocOcDataValidFlag)
   {
      MAIN_OCT_vidRestoreOcBlockDefaults(eMAIN_UNIT_GCU_INDEX);
   }
   
   /* Read ESK NVM info */
   // EAS_vidInit();

   ERL_Init();
   BSW_vidReadAllCallback();
}


