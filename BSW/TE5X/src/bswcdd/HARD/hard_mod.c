/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Pre defined functional modes sequences                  */
/*                                                                            */
/* !File            : hard_mod.c                                              */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2011 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* HARD_MOD.1  / HARD_vidModInit                                              */
/* HARD_MOD.2  / HARD_vidModSeq1Init                                          */
/* HARD_MOD.3  / HARD_vidModSeq1Func                                          */
/* HARD_MOD.4  / HARD_vidModSeq2Init                                          */
/* HARD_MOD.5  / HARD_vidModSeq2Func                                          */
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

#include "Std_Types.h"
#include "HARD.h"
#include "HARD_L.h"

#include "hard_mod.h"
//#include "HARD_Esm.h"

#include "iohal.h"
#include "resbsl.h"
//#include "vsisrv.h"
//#include "esmsrv.h"

//#include "MATH_FIL.H"

//#include "MAIN.h"

#include "CCU6.h"
#include "GCCU6.h"

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define HARD_START_SEC_VAR_UNSPECIFIED
#include "HARD_MemMap.h"

uint8 HARD_ModSeq1InitState;
uint8 HARD_ModSeq1FuncState;

uint8 HARD_ModSeq2InitState;
uint8 HARD_ModSeq2FuncState;

#define HARD_STOP_SEC_VAR_UNSPECIFIED
#include "HARD_MemMap.h"

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define HARD_START_SEC_CODE
#include "HARD_MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : Initialises HARD Pre defined functional modes sequences     */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.MOD.1                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidModInit(void)
{
   HARD_ModSeq1InitState   = HARD_MOD_STATE_1;
   HARD_ModSeq1FuncState   = HARD_MOD_STATE_1;
   HARD_bModSeq1InitOn     = 0;
   HARD_bModSeq1FuncOn     = 0;

   HARD_ModSeq2InitState   = HARD_MOD_STATE_1;
   HARD_ModSeq2FuncState   = HARD_MOD_STATE_1;
   HARD_bModSeq2InitOn     = 0;
   HARD_bModSeq2FuncOn     = 0;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Hard mode #1 : Initialization stage                         */
/*              : Test CEM traction (20/10/2015)                              */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.MOD.2                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidModSeq1Init(boolean *flagOn)
{
   boolean bLocalFlag;

   bLocalFlag = *flagOn;

   if (bLocalFlag == 0)
   {
/* -------------------------------------------------------------------------- */
/* - STEP_0 :                                                                 */
/* -------------------------------------------------------------------------- */
      HARD_ModSeq1InitState = HARD_MOD_STATE_1;
   }
   else
   {
      switch (HARD_ModSeq1InitState)
      {
         case HARD_MOD_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STEP_1 : IO       : ENA_HT_HS off ENA_HT_LS off                          */
/* -------------------------------------------------------------------------- */
/* -        : FPGA VSI : RatioFreq /1, MCU, SwitchType MLI_T                  */
/* -------------------------------------------------------------------------- */
/* -        : FPGA VSI : PwmUl/rOn = 0/0, PwmVl/rOn = 0/0, PwmWl/rOn = 0/0    */
/* -        : FPGA VSI : Download VSI_CAL1                                    */
/* -------------------------------------------------------------------------- */
/* -        : RES      : Reconfig. RES excitation to PWM Freq. value          */
/* -------------------------------------------------------------------------- */
            /*IOHAL_vidWrite_CH_DIO_OUT_M_ENA_HT_HS(DIO_HAL_ON);*//*WRITE_IO_BLOCK_BY_LZJ*/
            /*IOHAL_vidWrite_CH_DIO_OUT_M_ENA_HT_LS(DIO_HAL_ON);*//*WRITE_IO_BLOCK_BY_LZJ*/

            //MAIN_VSITxsPwmUlOn = 0;
            //MAIN_VSITxsPwmVlOn = 0;
            //MAIN_VSITxsPwmWlOn = 0;

            CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_OFF); // VSISRV_VSI_MODE_REQ_INIT_CAL1
            //RESBSL_vidConfig((uint16)((VSISRV_GetSignalTxPwmFreq()) / 2));

            HARD_ModSeq1InitState = HARD_MOD_STATE_2;
            break;

         case HARD_MOD_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STEP_2 : HARD Ptg enable, Shift control enable                           */
/* -------------------------------------------------------------------------- */
/* -        : FPGA VSI : Check Download VSI_CAL1 OK                           */
/* -------------------------------------------------------------------------- */
            HARD_bPtgEnable              = 1;
            HARD_bPtgSignalsShiftControl = 1;

            HARD_ModSeq1InitState = HARD_MOD_STATE_3;
            break;

         case HARD_MOD_STATE_3:
            HARD_ModSeq1InitState = HARD_MOD_STATE_4;
            break;

         case HARD_MOD_STATE_4:
//Daniel //             if (MAIN_VSITxaFaultAEmergencyStop == 0)
            {
               HARD_ModSeq1InitState = HARD_MOD_STATE_READY;
            }
            break;

         case HARD_MOD_STATE_READY:
            bLocalFlag = 0;
            break;

         default:
            break;
      }
   }
   *flagOn = bLocalFlag;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Hard mode #1 : Functional stage                             */
/*              : Test CEM traction (20/10/2015)                              */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.MOD.3                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidModSeq1Func(boolean *flagOn)
{
   boolean bLocalFlag;

   bLocalFlag = *flagOn;

   if (bLocalFlag == 0)
   {
/* -------------------------------------------------------------------------- */
/* - STEP_0 :                                                                 */
/* -------------------------------------------------------------------------- */
      HARD_ModSeq1FuncState = HARD_MOD_STATE_1;
   }
   else
   {
      switch (HARD_ModSeq1FuncState)
      {
         case HARD_MOD_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STEP_1 : FPGA VSI : Mode = PWM_DIRECT                                    */
/* -------------------------------------------------------------------------- */
/* -        : FPGA VSI : PwmUl/rOn = 1/1, PwmVl/rOn = 1/1, PwmWl/rOn = 1/1    */
/* -------------------------------------------------------------------------- */
/* - STEP_1 : IO       : ENA_HT_HS on ENA_HT_LS on                            */
/* -------------------------------------------------------------------------- */
            CCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_PWM_DIRECT);
            //MAIN_VSITxsPwmUlOn = 1;
            //MAIN_VSITxsPwmVlOn = 1;
            //MAIN_VSITxsPwmWlOn = 1;
            /*IOHAL_vidWrite_CH_DIO_OUT_M_ENA_HT_HS(DIO_HAL_OFF);*//*WRITE_IO_BLOCK_BY_LZJ*/
            /*IOHAL_vidWrite_CH_DIO_OUT_M_ENA_HT_LS(DIO_HAL_OFF);*//*WRITE_IO_BLOCK_BY_LZJ*/

            HARD_ModSeq1FuncState = HARD_MOD_STATE_2;
            break;

         case HARD_MOD_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STEP_2 :                                                                 */
/* -------------------------------------------------------------------------- */
            HARD_ModSeq1FuncState = HARD_MOD_STATE_3;
            break;

         case HARD_MOD_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STEP_3 :                                                                 */
/* -------------------------------------------------------------------------- */
            HARD_ModSeq1FuncState = HARD_MOD_STATE_4;
            break;

         case HARD_MOD_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STEP_4 :                                                                 */
/* -------------------------------------------------------------------------- */
            HARD_ModSeq1FuncState = HARD_MOD_STATE_READY;
            break;

         case HARD_MOD_STATE_READY:
            bLocalFlag = 0;
            break;

         default:
            break;
      }

   }
   *flagOn = bLocalFlag;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Hard mode #2 : Initialization stage                         */
/*              : Test XX (XX/XX/XXXX)                                        */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.MOD.4                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidModSeq2Init(boolean *flagOn)
{
   boolean bLocalFlag;

   bLocalFlag = *flagOn;

   if (bLocalFlag == 0)
   {
/* -------------------------------------------------------------------------- */
/* - STEP_0 :                                                                 */
/* -------------------------------------------------------------------------- */
      HARD_ModSeq2InitState = HARD_MOD_STATE_1;
   }
   else
   {
      switch (HARD_ModSeq2InitState)
      {
         case HARD_MOD_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STEP_1 :                                                                 */
/* -------------------------------------------------------------------------- */
            GCCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_OFF);
            HARD_ModSeq2InitState = HARD_MOD_STATE_2;
            break;

         case HARD_MOD_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STEP_2 :                                                                 */
/* -------------------------------------------------------------------------- */
            HARD_bPtgEnable              = 1;
            HARD_bPtgSignalsShiftControl = 1;
            HARD_ModSeq2InitState = HARD_MOD_STATE_3;
            break;

         case HARD_MOD_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STEP_3 :                                                                 */
/* -------------------------------------------------------------------------- */

            HARD_ModSeq2InitState = HARD_MOD_STATE_4;
            break;

         case HARD_MOD_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STEP_4 :                                                                 */
/* -------------------------------------------------------------------------- */

            HARD_ModSeq2InitState = HARD_MOD_STATE_5;
            break;

         case HARD_MOD_STATE_5:
/* -------------------------------------------------------------------------- */
/* - STEP_5 :                                                                 */
/* -------------------------------------------------------------------------- */

            HARD_ModSeq2InitState = HARD_MOD_STATE_6;
            break;

         case HARD_MOD_STATE_6:
/* -------------------------------------------------------------------------- */
/* - STEP_6 :                                                                 */
/* -------------------------------------------------------------------------- */

            HARD_ModSeq2InitState = HARD_MOD_STATE_7;
            break;

         case HARD_MOD_STATE_7:
/* -------------------------------------------------------------------------- */
/* - STEP_7 :                                                                 */
/* -------------------------------------------------------------------------- */

            HARD_ModSeq2InitState = HARD_MOD_STATE_READY;
            break;

         case HARD_MOD_STATE_READY:
            bLocalFlag = 0;
            break;

         default:
            break;
      }
   }
   *flagOn = bLocalFlag;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Hard mode #2 : Functional stage                             */
/*              : Test XX (XX/XX/XXXX)                                        */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.MOD.5                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidModSeq2Func(boolean *flagOn)
{
   boolean bLocalFlag;

   bLocalFlag = *flagOn;

   if (bLocalFlag == 0)
   {
/* -------------------------------------------------------------------------- */
/* - STEP_0 :                                                                 */
/* -------------------------------------------------------------------------- */
      HARD_ModSeq2FuncState = HARD_MOD_STATE_1;
   }
   else
   {
      switch (HARD_ModSeq2FuncState)
      {
         case HARD_MOD_STATE_1:
/* -------------------------------------------------------------------------- */
/* - STEP_1 :                                                                 */
/* -------------------------------------------------------------------------- */
            GCCU6_vidSetPwmModReq(VSISRV_VSI_MODE_REQ_PWM_DIRECT);
            HARD_ModSeq2FuncState = HARD_MOD_STATE_2;
            break;

         case HARD_MOD_STATE_2:
/* -------------------------------------------------------------------------- */
/* - STEP_2 :                                                                 */
/* -------------------------------------------------------------------------- */

            HARD_ModSeq2FuncState = HARD_MOD_STATE_3;
            break;

         case HARD_MOD_STATE_3:
/* -------------------------------------------------------------------------- */
/* - STEP_3 :                                                                 */
/* -------------------------------------------------------------------------- */

            HARD_ModSeq2FuncState = HARD_MOD_STATE_4;
            break;

         case HARD_MOD_STATE_4:
/* -------------------------------------------------------------------------- */
/* - STEP_4 : MAIN     : Bench VSIWriteData restored                          */
/* -------------------------------------------------------------------------- */

            HARD_ModSeq2FuncState = HARD_MOD_STATE_READY;
            break;

         case HARD_MOD_STATE_READY:
            bLocalFlag = 0;
            break;

         default:
            break;
      }

   }
   *flagOn = bLocalFlag;
}

#define HARD_STOP_SEC_CODE
#include "HARD_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
