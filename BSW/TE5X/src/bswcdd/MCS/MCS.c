/******************************************************************************/
/* !Layer           : HAL                                                     */
/* !Component       : MCS                                                     */
/* !Description     : MCS Component                                           */
/*                                                                            */
/* !File            : MCS_VsiGtm.c                                            */
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
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID: %
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "Std_Types.h"
#include "Std_Limits.h"

#include "MCS.h"
//#include "VSI.h"
//#include "RES.h"
#include "IfxGtm_reg.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define MCS_START_SEC_VAR_32BIT
#include "MCS_MemMap.h"

uint32* MCS_pu32VsiGtmTcalcValue;
uint32* MCS_pu32VsiGtmPosSampleTime;
uint32* MCS_pu32VsiGtmPosSampleTime2;
uint32* MCS_pu32ResGtmPwmExciteDelay;
uint32* MCS_pu32ResGtmPwmExciteDuty;
uint32* MCS_pu32ResGtmSyncPosDelay;
uint32* MCS_pu32ResGtmSyncPosDuty;
uint32* MCS_pu32ResGtmSyncPosDelay2;
uint32* MCS_pu32ResGtmSyncPosDuty2;

#define MCS_STOP_SEC_VAR_32BIT
#include "MCS_MemMap.h"

/******************************************************************************/
/* FUNCTION DEFINITION                                                        */
/******************************************************************************/
#define MCS_START_SEC_CODE
#include "MCS_MemMap.h"
/******************************************************************************/
/* FUNCTIONS DECLARATION EXTERNAL DEFINITION                                  */
/******************************************************************************/
extern void GtmM_vidInitExcitionInternalLink(void);
/******************************************************************************/
/*                                                                            */
/* !FuncName    : MCS_vidVsiGtmMcs0Init                                       */
/* !Description : This function configures the MCS variables & initialisation */
/* !Number      : MCS.1                                                       */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                */
/******************************************************************************/
void MCS_vidVsiGtmMcs0Init(void)
{
   uint32 *u32LocalPmem = (uint32 *)&MCS_GTM_MCS_MEM;

   /* to be removed in case the compiler option is used */
   /* if COMPILER */
   MCS_vidVsiGtmMcs0LoadCode();
   /* end */

   MCS_pu32VsiGtmTcalcValue        = &u32LocalPmem[MCS0_var_a / 4U];
   MCS_pu32ResGtmSyncPosDelay2     = &u32LocalPmem[MCS0_var_b / 4U];
   MCS_pu32ResGtmSyncPosDuty2      = &u32LocalPmem[MCS0_var_c / 4U];
   MCS_pu32ResGtmSyncPosDelay      = &u32LocalPmem[MCS0_var_d / 4U];
   MCS_pu32ResGtmSyncPosDuty       = &u32LocalPmem[MCS0_var_e / 4U];
   MCS_pu32VsiGtmPosSampleTime2     = &u32LocalPmem[MCS0_var_f / 4U];
   MCS_pu32VsiGtmPosSampleTime    = &u32LocalPmem[MCS0_var_g / 4U];
   /* Load the Vsi calibration value */
   *MCS_pu32VsiGtmTcalcValue       = 410; //VSI_u32TimeoutTcalcC;

   MODULE_GTM.TBU.CHEN.U = 0x0000000A;
   MODULE_GTM.TIM[1].CH6.CTRL.B.ARU_EN = 0x01;
   MODULE_GTM.TIM[1].CH6.CTRL.B.ECNT_RESET = 0x01;
   MODULE_GTM.ATOM[0].CH5.RDADDR.U = 0x01FE0078; /* MCS0_WRADDR1 */
   MODULE_GTM.ATOM[0].CH5.CM0.U = 0x00;
   MODULE_GTM.ATOM[0].CH5.CM1.U = 0x00;
   MODULE_GTM.ATOM[0].CH5.SR0.U = 0x00;
   MODULE_GTM.ATOM[0].CH5.SR1.U = 0x00;
   MODULE_GTM.ATOM[0].AGC.ENDIS_STAT.U = 0x2<<10;
   MODULE_GTM.ATOM[0].AGC.OUTEN_STAT.U = 0x2<<10;
   MODULE_GTM.ATOM[0].AGC.GLB_CTRL.U = 0x2<<26;
   MODULE_GTM.ATOM[0].CH5.CTRL.U = 0x010008E9;

   MODULE_GTM.TIM[0].CH4.CTRL.B.ARU_EN = 0x01;
   MODULE_GTM.TIM[0].CH4.CTRL.B.ECNT_RESET = 0x01;
   MODULE_GTM.ATOM[1].CH5.RDADDR.U = 0x01FE0079; /* MCS0_WRADDR2 */
   MODULE_GTM.ATOM[1].CH5.CM0.U = 0x00;
   MODULE_GTM.ATOM[1].CH5.CM1.U = 0x00;
   MODULE_GTM.ATOM[1].CH5.SR0.U = 0x00;
   MODULE_GTM.ATOM[1].CH5.SR1.U = 0x00;
   MODULE_GTM.ATOM[1].AGC.ENDIS_STAT.U = 0x2<<10;  /* ATOM[i]_AGC_ENDIS_STAT */
   MODULE_GTM.ATOM[1].AGC.OUTEN_STAT.U = 0x2<<10;  /* ATOM[i]_AGC_ENDIS_CTRL */
   MODULE_GTM.ATOM[1].AGC.GLB_CTRL.U = 0x2<<26;    /* ATOMi_AGC_GLB_CTRL */
   MODULE_GTM.ATOM[1].CH5.CTRL.U = 0x010008E9;
   //MCS_RESGTM_ENABLE_MCS();
   GtmM_vidInitExcitionInternalLink();
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : MCS_vidVsiGtmMcs0LoadCode                                   */
/* !Description : This function loads the MCS code to MCS RAM                 */
/* !Number      : MCS.2                                                       */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                */
/******************************************************************************/
void MCS_vidVsiGtmMcs0LoadCode(void)
{
   uint16 u16LocalCount;
   uint32 *u32LocalPmem = (uint32 *)(&MCS_GTM_MCS_MEM);

   /*Write the assembler code to MCS0 RAM*/
   for (u16LocalCount = (uint16)UINT16_MIN;
        u16LocalCount < (uint16)(MCS0_CH_INIT_RAM_LEN);
        u16LocalCount += 1)
   {
      u32LocalPmem[u16LocalCount] = MCS0_CH_INIT_RAM[u16LocalCount];
   }
}

#define MCS_STOP_SEC_CODE
#include "MCS_MemMap.h"

/*------------------------------- end of file --------------------------------*/
