#ifndef __PRE_DRIVER_H_
#define __PRE_DRIVER_H_


/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "PreDrv_Cfg.h"
#include "TLE9180.h"
#include "DRV8340.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions (User Config)
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
void PreDrv_vidInit(void)
{
   TLE9180_vidInit();
   /* DRV8340_vidModuleInit(); */
}
#if 0
void PreDrv_vidInit(const void* ConfigPtr)
{
    uint8 u8DrvIdx;
    
#if(CANTRCV_VARIANT != CANTRCV_VARIANT_PRECOMPILE)
   if(ConfigPtr != NULL_PTR)
   {
#else
       (void)ConfigPtr;
#endif

       CanTrcv_Prv_InitState_b = TRUE;    /* TRUE: init */

        // Loop over all CanTrcv
       for(u8DrvIdx = 0; u8DrvIdx < CANTRCV_CFG_NUMBER_OF_CANTRCV; u8DrvIdx++)
       {
           if(CANTRCV_FCTP_ST[u8DrvIdx].Init != NULL_PTR)
           {
               CANTRCV_FCTP_ST[u8DrvIdx].Init((uint8)u8DrvIdx);
           }
        }
#if (CANTRCV_VARIANT != CANTRCV_VARIANT_PRECOMPILE)
    }
    else
    {
    }
#endif
}
#endif
void PreDrv_vidMainFunction(void)
{
   TLE9180_vidMainFunction();
   /* DRV8340_vidMainFunction(); */
}

boolean PreDrv_bIsWorkNormal(void)
{
   return DRV8340_bIsWorkModeNormal();
}


#endif /* __PRE_DRIVER_H_ */

/*-------------------------------- end of file -------------------------------*/
