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
void UDS_vidCallbackPreRead_0x0E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data)
{
/* User Code Block Start */
   float f32AutophsAng;
   uint16 u16LocAutophsAngle;

   f32AutophsAng = MAIN_f32GetAutophsingAngle();
   u16LocAutophsAngle = (uint16)f32AutophsAng;
   
   *Data++ = (uint8)( (u16LocAutophsAngle >> 8) & 0x00FF);
   *Data++ = (uint8)(u16LocAutophsAngle & 0x00FF);
/* User Code Block End */
}

void UDS_vidCallbackPreRead_0x1E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data)
{
/* User Code Block Start */
   float f32AutophsAng;
   uint16 u16LocAutophsAngle;

   f32AutophsAng = GMAIN_f32GetAutophsingAngle();
   u16LocAutophsAngle = (uint16)f32AutophsAng;
   
   *Data++ = (uint8)( (u16LocAutophsAngle >> 8) & 0x00FF);
   *Data++ = (uint8)(u16LocAutophsAngle & 0x00FF);
/* User Code Block End */
}

/*-------------------------------- end of file -------------------------------*/
