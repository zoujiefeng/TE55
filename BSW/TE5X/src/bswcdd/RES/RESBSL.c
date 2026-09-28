/******************************************************************************/
/*                                                                            */
/* !Layer           : BSW                                                     */
/*                                                                            */
/* !Component       : RES                                                     */
/* !Description     : Resolver Control                                        */
/*                                                                            */
/* !Module          : RESBSL                                                  */
/* !Description     : API of the RESBSL component                             */
/*                                                                            */
/* !File            : RESBSL_API.C                                            */
/*                                                                            */
/* !Target          : INFINEON TC265                                          */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2015 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* RES.BSL.1  / RESBSL_vidInit                                                */
/* RES.BSL.2  / RESBSL_vidStopExcitation                                      */
/* RES.BSL.3  / RESBSL_vidConfig                                              */
/* RES.BSL.4  / RESBSL_vidCheckCalibChange                                    */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::                     $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "RESBSL.h"
#include "MCS.h"
#include "Dio.h"
#include "Port.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

#define RES_START_SEC_VAR_UNSPECIFIED
#include "RES_MemMap.h"

uint16  RES_u16VSICkreqPeriodCalib;
uint16  RES_u16SyncDelayCalib;
uint16  RES_u16SyncDelayCalib2;
uint16  RES_u16ExcitDelayCalib;
uint8   RES_u8ExcitDutyPercentCalib;
uint8   RES_u8SyncDutyPercentCalib;
uint8   RES_u8SyncDutyPercentCalib2;
uint8   RES_bGenerateSyncPosCalib;

#define RES_STOP_SEC_VAR_UNSPECIFIED
#include "RES_MemMap.h"

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/

#define RES_START_SEC_CODE
#include "RES_MemMap.h"

uint32 RES_u32ExcDelay = 0;
/******************************************************************************/
/*                                                                            */
/* !FuncName    : RESBSL_vidInit                                              */
/* !Description : Initializes the RES BSL unit                                */
/* !Number      : RES.BSL.1                                                   */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void RESBSL_vidInit(void)
{
   RESBSL_vidEnable();
   RESBSL_vidConfig(RES_u16VSICkreqPeriodDefC);
   GRESBSL_vidConfig(RES_u16VSICkreqPeriodDefC);
#if 0
   RESBSL_vidControlCmdPins(EXCITE, ENABLE);

   if (RES_bGenerateSyncPosC != FALSE)
   {
      RESBSL_vidControlCmdPins(SYNCPOS, ENABLE);
   }
   else
   {
      RESBSL_vidControlCmdPins(SYNCPOS, DISABLE);
   }
#endif
   /* Check Calib Change */
   RES_u16VSICkreqPeriodCalib   = RES_u16VSICkreqPeriodDefC; 
   RES_u16ExcitDelayCalib       = RES_u16ExcitDelayC;
   RES_u16SyncDelayCalib        = RES_u16SyncDelayC; 
   RES_u16SyncDelayCalib2        = RES_u16SyncDelay2C; 
   RES_u8ExcitDutyPercentCalib  = RES_u8ExcitDutyPercentC;
   RES_u8SyncDutyPercentCalib   = RES_u8SyncDutyPercentC;
   RES_u8SyncDutyPercentCalib2   = RES_u8SyncDutyPercent2C;
   RES_bGenerateSyncPosCalib    = RES_bGenerateSyncPosC;
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : RESBSL_vidStopExcitation                                    */
/* !Description : Stop excitation (ISR)                                       */
/* !Number      : RES.BSL.2                                                   */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                */
/******************************************************************************/
void RESBSL_vidStopExcitation(void)
{
   RESBSL_vidDisable();
   /*RESBSL_vidControlCmdPins(EXCITE, DISABLE);*/
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : RESBSL_vidConfig                                            */
/* !Description : RES BSL timing configuration                                */
/* !Number      : RES.BSL.3                                                   */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                */
/******************************************************************************/
void RESBSL_vidConfig(uint16 CkreqPeriod)
{
    uint16  u16LocCkreqPeriod;
    uint8   u8LocSyncDutyPercent;
    uint16  u16LocSyncDutyVal;
    uint16  u16LocSyncDelayVal;

    /* The Main VSI period */
    u16LocCkreqPeriod      = CkreqPeriod;

    /* Load SyncroPos signal's parameters (Delay, Duty)                       */
    u8LocSyncDutyPercent = RES_u8SyncDutyPercentC;
    u16LocSyncDelayVal   = RES_u16SyncDelayC;

    /* Check Delay Boundaries of the SyncPos signal                           */
    RESBSL_vidCHECK_BOUNDARIES(SYNCPOS, DELAY, u16LocSyncDelayVal);

    /* Check Duty Boundaries of the SyncPos signal                            */
    RESBSL_vidCHECK_BOUNDARIES(SYNCPOS, DUTY, u8LocSyncDutyPercent);
    u16LocSyncDutyVal = (uint16)( (uint32) u8LocSyncDutyPercent
                                   * u16LocCkreqPeriod / 100);
    /* Set Duty/Delay values                                                  */
    RESBSL_vidSET_DELAY(SYNCPOS, u16LocSyncDelayVal);
    RESBSL_vidSET_DUTY_CYCLE(SYNCPOS, u16LocSyncDutyVal);
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : GRESBSL_vidConfig                                            */
/* !Description : RES BSL timing configuration                                */
/* !Number      : RES.BSL.3                                                   */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void GRESBSL_vidConfig(uint16 CkreqPeriod)
{
    uint16  u16LocCkreqPeriod;
    uint8   u8LocSyncDutyPercent;
    uint16  u16LocSyncDutyVal;
    uint16  u16LocSyncDelayVal;

    /* The Main VSI period */
    u16LocCkreqPeriod      = CkreqPeriod;

    /* Load SyncroPos signal's parameters (Delay, Duty)                       */
    u8LocSyncDutyPercent = RES_u8SyncDutyPercent2C;
    u16LocSyncDelayVal   = RES_u16SyncDelay2C;

    /* Check Delay Boundaries of the SyncPos signal                           */
    RESBSL_vidCHECK_BOUNDARIES(SYNCPOS2, DELAY, u16LocSyncDelayVal);

    /* Check Duty Boundaries of the SyncPos signal                            */
    RESBSL_vidCHECK_BOUNDARIES(SYNCPOS2, DUTY, u8LocSyncDutyPercent);
    u16LocSyncDutyVal = (uint16)( (uint32) u8LocSyncDutyPercent
                                   * u16LocCkreqPeriod / 100);
    /* Set Duty/Delay values                                                  */
    RESBSL_vidSET_DELAY(SYNCPOS2, u16LocSyncDelayVal);
    RESBSL_vidSET_DUTY_CYCLE(SYNCPOS2, u16LocSyncDutyVal);
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : RESBSL_vidCheckCalibChange                                  */
/* !Description : Check if calibrations are changed during run time           */
/* !Number      : RES.BSL.4                                                   */
/* !Reference   : NONE                                                        */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void RESBSL_vidCheckCalibChange(void)
{
   /* RES_u16VSICkreqPeriodDefC */
   /* RES_u16ExcitDelayC        */
   /* RES_u8ExcitDutyPercentC   */
   /* RES_u8SyncDutyPercentC    */
   /* RES_u16SyncDelayC         */
   if (  (RES_u16VSICkreqPeriodCalib   != RES_u16VSICkreqPeriodDefC)
      || (RES_u16ExcitDelayCalib       != RES_u16ExcitDelayC       )
      || (RES_u16SyncDelayCalib        != RES_u16SyncDelayC        )
      || (RES_u16SyncDelayCalib2        != RES_u16SyncDelay2C      )
      || (RES_u8ExcitDutyPercentCalib  != RES_u8ExcitDutyPercentC  )
      || (RES_u8SyncDutyPercentCalib   != RES_u8SyncDutyPercentC   )
      || (RES_u8SyncDutyPercentCalib2   != RES_u8SyncDutyPercent2C )
      )
   {
      RESBSL_vidConfig(RES_u16VSICkreqPeriodDefC);
      GRESBSL_vidConfig(RES_u16VSICkreqPeriodDefC);
   }
   #if 0
   /* RES_bGenerateSyncPosC     */
   if (RES_bGenerateSyncPosCalib != RES_bGenerateSyncPosC)
   {
       if (RES_bGenerateSyncPosC != FALSE)
       {
           RESBSL_vidControlCmdPins(SYNCPOS, ENABLE);
       }
       else
       {
           RESBSL_vidControlCmdPins(SYNCPOS, DISABLE);
       }
   }
   #endif
   RES_bGenerateSyncPosCalib    = RES_bGenerateSyncPosC;
   RES_u16ExcitDelayCalib       = RES_u16ExcitDelayC;
   RES_u8ExcitDutyPercentCalib  = RES_u8ExcitDutyPercentC;
   RES_u16VSICkreqPeriodCalib   = RES_u16VSICkreqPeriodDefC;
   RES_u16SyncDelayCalib        = RES_u16SyncDelayC;
   RES_u8SyncDutyPercentCalib   = RES_u8SyncDutyPercentC;
   RES_u16SyncDelayCalib2        = RES_u16SyncDelay2C;
   RES_u8SyncDutyPercentCalib2   = RES_u8SyncDutyPercent2C;
}

#define RES_STOP_SEC_CODE
#include "RES_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
