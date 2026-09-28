/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
/* AUTOSAR Header Files */
/* User Code Block Start */

/* User Code Block End */

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "UDS_DidCallback.h"

/* User Header Files */
/* User Code Block Start */
#include "MAIN_tsk.h"
#include "GMAIN_tsk.h"


/* User Code Block End */

/*******************************************************************************
 ****  Global Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void UDS_vidCallbackPreWrite_0x0E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data)
{
/* User Code Block Start */
   uint16 u16LocAutophsAngle;

   u16LocAutophsAngle = (uint16)(Data[0] << 8) + (uint16)(Data[1]);
   (void)MAIN_bSetSaforiAutophsAngC((const uint16)u16LocAutophsAngle);
/* User Code Block End */
}

void UDS_vidCallbackPreWrite_0x1E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data)
{
/* User Code Block Start */
   uint16 u16LocAutophsAngle;

   u16LocAutophsAngle = (uint16)(Data[0] << 8) + (uint16)(Data[1]);
   (void)GMAIN_bSetSaforiAutophsAngC((const uint16)u16LocAutophsAngle);
/* User Code Block End */
}

/*-------------------------------- end of file -------------------------------*/
