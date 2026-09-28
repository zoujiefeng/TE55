/******************************************************************************/
/*                                                                            */
/* !Layer           : BSW                                                     */
/*                                                                            */
/* !Component       : RES                                                     */
/* !Description     : Resolver Control                                        */
/*                                                                            */
/* !Module          : RESBSL                                                  */
/* !Description     : Component API's (function declarations and macros)      */
/*                                                                            */
/* !File            : RESBSL.H                                                */
/*                                                                            */
/* !Scope           : Public                                                  */
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
/* RES.BSL.11 / RESBSL_vidEnable                                              */
/* RES.BSL.12 / RESBSL_vidDisable                                             */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::               $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#ifndef RESBSL_H
#define RESBSL_H

#include "RES_L.h"
#include "RES.h"
#include "RES_Cfg.h"

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/

#define RES_START_SEC_VAR_UNSPECIFIED
#include "RES_MemMap.h"

extern uint16 RES_u16VSICkreqPeriodCalib;
extern uint16 RES_u16SyncDelayCalib;
extern uint16 RES_u16SyncDelayCalib2;
extern uint16 RES_u16ExcitDelayCalib;
extern uint8  RES_u8ExcitDutyPercentCalib;
extern uint8  RES_u8SyncDutyPercentCalib;
extern uint8  RES_u8SyncDutyPercentCalib2;
extern uint8  RES_bGenerateSyncPosCalib;

#define RES_STOP_SEC_VAR_UNSPECIFIED
#include "RES_MemMap.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/

/******************************************************************************/
/*                                                                            */
/* !Description : Activates the RES unit                                      */
/* !Number      : RESBSL.11                                                   */
/* !Reference   : V01NT1100371.001                                            */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define RESBSL_vidEnable()                                                     \
   MCS_RESGTM_ENABLE_MCS()

/******************************************************************************/
/*                                                                            */
/* !Description : Deactivates the RES unit                                    */
/* !Number      : RESBSL.12                                                   */
/* !Reference   : V01NT1100371.001                                            */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define RESBSL_vidDisable()                                                    \
   MCS_RESGTM_DISABLE_MCS()

/******************************************************************************/
/*                                                                            */
/* !Description : Enables the Mcs channel that connect input SynchroPos       */
/*                signal event with the out Atom timer                        */
/* !Number      : RESBSL.13                                                   */
/* !Reference   : V01NT1100371.001                                            */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define RESBSL_vidControlCmdPins(                                              \
                                                                               \
   snSignal,    /* !Comment : Res Signal identifier                         */ \
                /* !Range   : EXCITE, SYNCPOS                               */ \
   snConfig     /* !Comment : Control of the pin                            */ \
                /* !Range   : ENALBE, DISABLE                               */ \
)                                                                              \
   Port_SetPinMode(RESBSL_snDIO_CMD_##snSignal, RESBSL_sn##snConfig##_CMD_PIN)

/******************************************************************************/
/*                                                                            */
/* !Description : Enables the Mcs channel that connect input SynchroPos       */
/*                signal event with the out Atom timer                        */
/* !Number      : RESBSL.13                                                   */
/* !Reference   : V01NT1100371.001                                            */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define RESBSL_vidDisnableSyncPos()                                            \
do                                                                             \
{                                                                              \
   Port_SetPinMode(RESBSL_snDIO_CMD_SYNCPOS, RESBSL_snPORT_ALT);               \
}                                                                              \
while(0);

/******************************************************************************/
/*                                                                            */
/* !Description : Gets the initial configuration control value from CFG file  */
/* !Number      : RESBSL.17                                                   */
/* !Reference   :                                                             */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                */
/******************************************************************************/
#define RESBSL_snGET_CFG_CONTROL_VALUE(                                        \
                                                                               \
   snSignal,    /* !Comment : Res Signal identifier                         */ \
                /* !Range   : EXCITE, SYNCPOS                               */ \
   snConfig     /* !Comment : Res Measurement Type identifier               */ \
                /* !Range   : DELAY, DUTY                                   */ \
)                                                                              \
   M1_RESBSL_snGET_CFG_CONTROL_VALUE(snSignal, snConfig)

   /* Internal macros */
   #define M1_RESBSL_snGET_CFG_CONTROL_VALUE(snSignal, snConfig)               \
      *RESBSL_sn##snSignal##_MCS_##snConfig##_PTR

/******************************************************************************/
/*                                                                            */
/* !Description : Sets the delay value of the signal "snSignal"               */
/* !Number      : RESBSL.17                                                   */
/* !Reference   :                                                             */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define RESBSL_vidSET_DELAY(                                                   \
                                                                               \
   snSignal , /* !Comment : ResSignal identifier                            */ \
              /* !Range   : EXCITE, SYNCPOS                                 */ \
   udtValue   /* !Comment : Delay value                                     */ \
)                                                                              \
   M1_RESBSL_vidSET_DELAY(RESBSL_p32GET_MCS_DELAY_PTR(snSignal), udtValue, snSignal)

   /* Internal macros */
   #define M1_RESBSL_vidSET_DELAY(snMcsPtr, udtValue, snSignal)                \
      M2_RESBSL_vidSET_DELAY(snMcsPtr,RESBSL_u16GET_ACTUAL_DELAY(udtValue,     \
                                                                 snSignal))

   #define M2_RESBSL_vidSET_DELAY(snMcsPtr, udtActValue)                       \
      M3_RESBSL_vidSET_DELAY(snMcsPtr, udtActValue)

   #define M3_RESBSL_vidSET_DELAY(snMcsPtr, udtActValue)                       \
      (*snMcsPtr) = (udtActValue)

/******************************************************************************/
/*                                                                            */
/* !Description : Sets the duty cycle value of the signal "snSignal"          */
/* !Number      : RESBSL.17                                                   */
/* !Reference   :                                                             */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                */
/******************************************************************************/
#define RESBSL_vidSET_DUTY_CYCLE(                                              \
                                                                               \
   snSignal , /* !Comment : ResSignal identifier                            */ \
              /* !Range   : EXCITE, SYNCPOS                                 */ \
   udtValue   /* !Comment : Duty cycle value                                */ \
)                                                                              \
   M1_RESBSL_vidSET_DUTY_CYCLE(RESBSL_p32GET_MCS_DUTY_PTR(snSignal), udtValue)

   /* Internal macros */
   #define M1_RESBSL_vidSET_DUTY_CYCLE(snMcsPtr, udtValue)                     \
      (*snMcsPtr) = (udtValue)

/******************************************************************************/
/*                                                                            */
/* !Description : Check the duty or delay value of the signal "snSignal"      */
/* !Number      : RESBSL.17                                                   */
/* !Reference   :                                                             */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define RESBSL_vidCHECK_BOUNDARIES(                                            \
                                                                               \
   snSignal,    /* !Comment : Res Signal identifier                         */ \
                /* !Range   : EXCITE, SYNCPOS                               */ \
   snConfig,    /* !Comment : Res Measurement Type identifier               */ \
                /* !Range   : DELAY, DUTY                                   */ \
   udtVariable  /* !Comment : variable name                                 */ \
)                                                                              \
   M1_RESBSL_vidCHECK_BOUNDARIES(snSignal##_##snConfig, udtVariable)

   /* Internal macros */
   #define M1_RESBSL_vidCHECK_BOUNDARIES(snSignalType, udtVariable)            \
     if (udtVariable <= RESBSL_udtMINIMUM_##snSignalType)                      \
     {                                                                         \
        udtVariable = RESBSL_udtMINIMUM_##snSignalType;                        \
     }                                                                         \
     else if (udtVariable >= RESBSL_udtMAXIMUM_##snSignalType)                 \
     {                                                                         \
        udtVariable = RESBSL_udtMAXIMUM_##snSignalType;                        \
     }

/******************************************************************************/
/*                                                                            */
/* !Description : Gets the symbolic name of the MCS delay pointer             */
/* !Number      : RESBSL.18                                                   */
/* !Reference   :                                                             */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define RESBSL_p32GET_MCS_DELAY_PTR(snSignal)                                  \
   RESBSL_sn##snSignal##_MCS_DELAY_PTR

/******************************************************************************/
/*                                                                            */
/* !Description : Gets the symbolic name of the MCS duty pointer              */
/* !Number      : RESBSL.18                                                   */
/* !Reference   :                                                             */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define RESBSL_p32GET_MCS_DUTY_PTR(snSignal)                                   \
   RESBSL_sn##snSignal##_MCS_DUTY_PTR

/******************************************************************************/
/*                                                                            */
/* !Description : Subtract the Round Trip time consumed in ARU                */
/* !Number      : RESBSL.18                                                   */
/* !Reference   :                                                             */
/* !Trace_To    :                                                             */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define RESBSL_u16GET_ACTUAL_DELAY(                                            \
                                                                               \
   udtValue,    /* !Comment : Value of total delay                          */ \
   snSignal     /* !Comment : Res Signal identifier                         */ \
                /* !Range   : EXCITE, SYNCPOS                               */ \
)                                                                              \
   M1_RESBSL_u16GET_ACTUAL_DELAY(udtValue, RESBSL_sn##snSignal##_ARU_ROUND_TRIP_TIME)

   /* Internal macros */
   #define M1_RESBSL_u16GET_ACTUAL_DELAY(udtValue, udtAruTime)                 \
   (udtValue) - (udtAruTime)

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

void RESBSL_vidInit(void);
void RESBSL_vidStopExcitation(void);
void RESBSL_vidConfig(uint16 CkreqPeriod);
void RESBSL_vidCheckCalibChange(void);
void GRESBSL_vidConfig(uint16 CkreqPeriod);

#endif /* RESBSL_H */

/*-------------------------------- end of file -------------------------------*/
