/******************************************************************************/
/* !Layer           : HAL                                                     */
/* !Component       : MCS                                                     */
/* !Description     : MCS Component                                           */
/*                                                                            */
/* !File            : MCS_VsiGtm.h                                            */
/* !Description     : Definition of data of GTM MCS                           */
/*                                                                            */
/* !Reference       :                                                         */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT invt  all rights reserved                                        */
/******************************************************************************/
/* MCS.1  / MCS_vidVsiGtmMcs0Init                                             */
/* MCS.2  / MCS_vidVsiGtmMcs0LoadCode                                         */
/* MCS.11 / MCS_VSIGTM_ENABLE_MCS                                             */
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "Std_Types.h"
#include "Std_Limits.h"
#include "MCS0.h"
#include "IfxGtm_reg.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/

#define MCS_IFX_GTM_BASE         ((uint8 *)&MODULE_GTM)
#define MCS_MCS0_RAM0_OFFSET     (0x38000)
#define MCS_GTM_MCS_SEL          (MCS_IFX_GTM_BASE + MCS_MCS0_RAM0_OFFSET)
#define MCS_GTM_MCS_MEM          (*(unsigned int *)MCS_GTM_MCS_SEL)

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define MCS_START_SEC_VAR_32BIT
#include "MCS_MemMap.h"

extern uint32* MCS_pu32VsiGtmTcalcValue;
extern uint32* MCS_pu32VsiGtmPosSampleTime;
extern uint32* MCS_pu32VsiGtmPosSampleTime2;
extern uint32* MCS_pu32ResGtmSyncPosDelay;
extern uint32* MCS_pu32ResGtmSyncPosDuty;
extern uint32* MCS_pu32ResGtmSyncPosDelay2;
extern uint32* MCS_pu32ResGtmSyncPosDuty2;
extern uint32* MCS_pu32ResGtmPwmExciteDelay;
extern uint32* MCS_pu32ResGtmPwmExciteDuty;

#define MCS_STOP_SEC_VAR_32BIT
#include "MCS_MemMap.h"

#define MCS_START_SEC_CONST_UNSPECIFIED
#include "MCS_MemMap.h"

extern const unsigned int MCS0_CH_INIT_RAM[];

#define MCS_STOP_SEC_CONST_UNSPECIFIED
#include "MCS_MemMap.h"

/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/

/******************************************************************************/
/*                                                                            */
/* !FuncName    : MCS_VSIGTM_ENABLE_MCS                                       */
/* !Description : This macro Enables the Ch0 of MSC0                          */
/* !Number      : MCS.11                                                      */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define MCS_VSIGTM_ENABLE_MCS()                                                \
do                                                                             \
{                                                                              \
   GTM_MCS0_CH0_CTRL.B.EN = 0x1;                                               \
   GTM_MCS0_CH4_CTRL.B.EN = 0x1;                                               \
}                                                                              \
while(0)

/******************************************************************************/
/*                                                                            */
/* !FuncName    : MCS_RESGTM_ENABLE_MCS                                       */
/* !Description : This macro Enables the Ch1 of MCS0                          */
/* !Number      : MCS.12                                                      */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define MCS_RESGTM_ENABLE_MCS()                                                \
do                                                                             \
{                                                                              \
   GTM_MCS0_CH0_CTRL.B.EN = 0x1;                                               \
   GTM_MCS0_CH1_CTRL.B.EN = 0x1;                                               \
}                                                                              \
while(0)

/******************************************************************************/
/*                                                                            */
/* !FuncName    : MCS_RESGTM_DISABLE_MCS                                      */
/* !Description : This macro Disables the Ch1 of MCS0                         */
/* !Number      : MCS.12                                                      */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define MCS_RESGTM_DISABLE_MCS()                                               \
do                                                                             \
{                                                                              \
   GTM_MCS0_CH1_CTRL.B.EN = 0x0;                                               \
}                                                                              \
while(0)

/******************************************************************************/
/*                                                                            */
/* !FuncName    : MCS_SAFEGTM_ENABLE_MCS                                      */
/* !Description : This macro Enables the Ch2 of MCS0                          */
/* !Number      : MCS.13                                                      */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define MCS_VSIGTM_SAFETREAT_ENABLE_MCS()                                      \
do                                                                             \
{                                                                              \
   GTM_MCS0_CH2_CTRL.B.EN = 0x1;                                               \
}                                                                              \
while(0)

/******************************************************************************/
/*                                                                            */
/* !FuncName    : MCS_SAFEGTM_ENABLE_MCS                                      */
/* !Description : This macro Enables the Ch2 of MCS0                          */
/* !Number      : MCS.14                                                      */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
#define MCS_VSIGTM_SAFETCALC_ENABLE_MCS()                                      \
do                                                                             \
{                                                                              \
   GTM_MCS0_CH3_CTRL.B.EN = 0x1;                                               \
}                                                                              \
while(0)

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define MCS_START_SEC_CODE
#include "MCS_MemMap.h"

void MCS_vidVsiGtmMcs0Init(void);
void MCS_vidVsiGtmMcs0LoadCode(void);

#define MCS_STOP_SEC_CODE
#include "MCS_MemMap.h"

/*------------------------------- end of file --------------------------------*/
