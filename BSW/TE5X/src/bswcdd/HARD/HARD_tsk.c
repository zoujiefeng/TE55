/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Hard tests                                              */
/*                                                                            */
/* !File            : HARD_TSK.C                                              */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2010 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* HARD.TSK.1  / HARD_vidInit                                                 */
/* HARD.TSK.11 / HARD_vidIoTestIO                                             */
/* HARD.TSK.12 / HARD_vidPtgManager                                           */
/* HARD.TSK.13 / HARD_vidEsmReInit                                            */
/* HARD.TSK.14 / HARD_vidEsmNf                                                */
/* HARD.TSK.15 / HARD_vidEsmFt                                                */
/* HARD.TSK.17 / HARD_vidModManager                                           */
/* HARD.TSK.18 / HARD_vidConvertDecToPhys                                     */
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

#include "HARD_Io.h"
#include "HARD_Tab.h"
#include "HARD_Ptg.h"
#include "HARD_Esm.h"
//#include "HARD_Nm.h"
#include "hard_mod.h"

//#include "MATH_SC.H"
//#include "vsisrv.h"

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define HARD_START_SEC_CODE
#include "HARD_MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !Description : Initialises the HARD unit                                   */
/* !Trigger     : main_tsk (Init)                                             */
/* !Number      : HARD.TSK.1                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidInit(void)
{
   HARD_vidIoInit();
   HARD_vidPtgInit();
   HARD_vidEsmInit();
   HARD_vidModInit();
   //HARD_vidNmInit();
}

/*----------------------------------------------------------------------------*/
/* HARD_IO functions                                                          */
/*----------------------------------------------------------------------------*/

/******************************************************************************/
/*                                                                            */
/* !Description : Test analogic and digital IO                                */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.TSK.11                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidIoTestIO(void)
{
   HARD_vidIoReadAnaInput();
   HARD_vidIoReadDioInput();
   HARD_vidIoReadPwmInput();
   if(HARD_bDioWriteTestEna != FALSE)
   {
      HARD_vidIoWriteDioOutput();
   }
   else
   {
      
   }
}

/*----------------------------------------------------------------------------*/
/* HARD_PTG functions                                                         */
/*----------------------------------------------------------------------------*/

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test generation manager                               */
/* !Trigger     : main_tsk (PWM frequency)                                    */
/* !Number      : HARD.TSK.12                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                   */
/******************************************************************************/
void HARD_vidPtgManager(
                        sint16 *p_s16PwmUl,
                        sint16 *p_s16PwmVl,
                        sint16 *p_s16PwmWl,
                        uint8  *p_u8PwmUOn,
                        uint8  *p_u8PwmVOn,
                        uint8  *p_u8PwmWOn
                       )
{
   uint16 u16LocalPtgUSignalShift;
   uint16 u16LocalPtgVSignalShift;
   uint16 u16LocalPtgWSignalShift;

/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/
/* fixdt(1,16,14) */
/* Input [-32768, 32767] : [-1, 1[ */
/* Output[0     , 16384] : [0, 1[ into [-2, 2[ */
#define HARD_u16PtgPwmScaling(s16PwmValue) \
   (sint16)((sint32)(s16PwmValue / 4) + 8192)
/******************************************************************************/

   if (HARD_bPtgEnable != 0)
   {
      HARD_vidPtgCallTrigFunc(
                              &HARD_u16PtgRefSignalNbPeriode,
                              &HARD_u16PtgRefSignalTime,
                              &HARD_s16PtgRefSignalValue
                             );
                                          
      u16LocalPtgUSignalShift = 0;
      HARD_vidPtgCalculate(
                           &HARD_u16PtgUSignalNbPeriode,
                           &HARD_u16PtgUSignalTime,
                           &HARD_u16PtgRefSignalTime,
                           &HARD_s16PtgUSignalValue,
                           &HARD_bPtgUSignalEnable,
                           &u16LocalPtgUSignalShift,
                           &HARD_bPtgSignalsShiftControl
                          );
      *p_s16PwmUl = HARD_u16PtgPwmScaling(HARD_s16PtgUSignalValue);
      *p_u8PwmUOn = HARD_bPtgUSignalEnable;

      u16LocalPtgVSignalShift = HARD_u16PtgVSignalShiftC;  
      HARD_vidPtgCalculate(
                           &HARD_u16PtgVSignalNbPeriode,
                           &HARD_u16PtgVSignalTime,
                           &HARD_u16PtgRefSignalTime,
                           &HARD_s16PtgVSignalValue,
                           &HARD_bPtgVSignalEnable,
                           &u16LocalPtgVSignalShift,
                           &HARD_bPtgSignalsShiftControl
                          );
      *p_s16PwmVl = HARD_u16PtgPwmScaling(HARD_s16PtgVSignalValue);
      *p_u8PwmVOn = HARD_bPtgVSignalEnable;

      u16LocalPtgWSignalShift = (uint16)(HARD_u16PtgWSignalShiftC 
                                       + HARD_u16PtgVSignalShiftC); 
      HARD_vidPtgCalculate(
                           &HARD_u16PtgWSignalNbPeriode,
                           &HARD_u16PtgWSignalTime,
                           &HARD_u16PtgRefSignalTime,
                           &HARD_s16PtgWSignalValue,
                           &HARD_bPtgWSignalEnable,
                           &u16LocalPtgWSignalShift,
                           &HARD_bPtgSignalsShiftControl
                          );
      *p_s16PwmWl = HARD_u16PtgPwmScaling(HARD_s16PtgWSignalValue);
      *p_u8PwmWOn = HARD_bPtgWSignalEnable;

      HARD_bPtgSignalsShiftControl = 0;            
   }
   else
   {
      *p_u8PwmUOn = 0;
      *p_u8PwmVOn = 0;
      *p_u8PwmWOn = 0;
   }
}

/*----------------------------------------------------------------------------*/
/* HARD_ESM functions                                                         */
/*----------------------------------------------------------------------------*/

/******************************************************************************/
/*                                                                            */
/* !Description : Re initialises HARD Test Ecu State Manager                  */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.TSK.13                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidEsmReInit(void)
{
   HARD_vidEsmInit();
}

/******************************************************************************/
/*                                                                            */
/* !Description : HARD Test Ecu State Manager by NF emulated                  */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.TSK.14                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidEsmNf(void)
{
   if (HARD_EsmNfStateAut != 0)
   {
      HARD_vidEsmStfManagerNf(HARD_EsmNfState);
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : HARD Test Ecu State Manager by FT emulated                  */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.TSK.15                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidEsmFt(void)
{
   if (HARD_EsmFtStateAut != 0)
   {
      HARD_vidEsmStfManagerFt(HARD_EsmFtState);
   }
}


/*----------------------------------------------------------------------------*/
/* HARD_MOD functions                                                         */
/*----------------------------------------------------------------------------*/

/******************************************************************************/
/*                                                                            */
/* !Description : Pre defined functional modes sequences manager              */
/* !Trigger     : main_tsk (10 ms)                                            */
/* !Number      : HARD.TSK.17                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void HARD_vidModManager(void)
{
/*----------------------------------------------------------------------------*/
/* Hard mode #1                                                               */
/*----------------------------------------------------------------------------*/
   HARD_vidModSeq1Init(&HARD_bModSeq1InitOn);
   if (HARD_bModSeq1InitOn == 0)
   {
      HARD_vidModSeq1Func(&HARD_bModSeq1FuncOn);
   }
/*----------------------------------------------------------------------------*/
/* Hard mode #2                                                               */
/*----------------------------------------------------------------------------*/
   HARD_vidModSeq2Init(&HARD_bModSeq2InitOn);
   if (HARD_bModSeq2InitOn == 0)
   {
      HARD_vidModSeq2Func(&HARD_bModSeq2FuncOn);
   }
}
#if 0
/*----------------------------------------------------------------------------*/
/* HARD conversions dec to Phys                                               */
/*----------------------------------------------------------------------------*/

/******************************************************************************/
/*                                                                            */
/* !Description : Convert Temp dec -> phys °C                                 */
/*              : VSI Temp IgbtL, IgbtR, CtrlBd, DrvBdL, DrvBdR               */
/* !Trigger     : main_tsk                                                    */
/* !Number      : HARD.TSK.18                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                   */
/******************************************************************************/
void HARD_vidConvertDecToPhys(void)
{
   uint16 u16LocalSiteInterp;

/*----------------------------------------------------------------------------*/
/* Temperature (5k NTC table)                                                 */
/*----------------------------------------------------------------------------*/
/*------------------------------------*/
/* Analog VSI                         */
/*------------------------------------*/
   u16LocalSiteInterp = MathCalcBkptU16(&HARD_u16VsiTemp5kNTCBkptC[0],
                                        VSISRV_GetSignalTempIgbt_U(),
                                        (HARD_CARTO_SIZE_TEMP_5KNTC - 1)
                                       );
   HARD_u8VSIRxaTempIgbtPhys = MathInterp1dU8(&HARD_u8VsiTemp5kNTCC[0],
                                              u16LocalSiteInterp
                                              );

/*----------------------------------------------------------------------------*/
/* Temperature (CTN table)                                                    */
/*----------------------------------------------------------------------------*/
/*------------------------------------*/
/* Analog VSI                         */
/*------------------------------------*/

/*------------------------------------*/
/* Analog Micro AN10                  */
/*------------------------------------*/
   u16LocalSiteInterp = MathCalcBkptU16(&HARD_u16VsiTempCTNBkptC[0],
                                        HARD_u16Adc0An10_CTN_BOARD2,
                                        (HARD_CARTO_SIZE_TEMP_CTN - 1)
                                       );
   HARD_u16Adc0An10_CTN_BOARD2Phys = MathInterp1dU8(&HARD_u8VsiTempCTNC[0],
                                                   u16LocalSiteInterp
                                                  );

/*----------------------------------------------------------------------------*/
/* Temperature (NTC table MOT)                                                */
/*----------------------------------------------------------------------------*/
/*------------------------------------*/
/* Analog Micro AN3                   */
/*------------------------------------*/
   u16LocalSiteInterp = MathCalcBkptU16(&HARD_u16VsiTempNTCMotBkptC[0],
                                        HARD_u16Adc0An03_CTP_MOT1_F,
                                        (HARD_CARTO_SIZE_TEMP_NTC_MOT - 1)
                                       );
   HARD_u16Adc0An03_CTP_MOT1_FPhys = MathInterp1dU16(&HARD_u16VsiTempNTCMotC[0],
                                                     u16LocalSiteInterp
                                                    );

/*------------------------------------*/
/* Analog Micro AN4                   */
/*------------------------------------*/
   u16LocalSiteInterp = MathCalcBkptU16(&HARD_u16VsiTempNTCMotBkptC[0],
                                        HARD_u16Adc0An04_CTP_MOT2_F,
                                        (HARD_CARTO_SIZE_TEMP_NTC_MOT - 1)
                                       );
   HARD_u16Adc0An04_CTP_MOT2_FPhys = MathInterp1dU16(&HARD_u16VsiTempNTCMotC[0],
                                                     u16LocalSiteInterp
                                                    );

/*----------------------------------------------------------------------------*/
/* Temperature (CTP table)                                                    */
/*----------------------------------------------------------------------------*/
/*------------------------------------*/
/* Analog Micro AN8                   */
/*------------------------------------*/
   u16LocalSiteInterp = MathCalcBkptU16(&HARD_u16TempCTPBkptC[0],
                                        HARD_u16Adc0An08_CTP_COOLING,
                                        (HARD_CARTO_SIZE_TEMP_CTP - 1)
                                       );
   HARD_u16Adc0An08_CTP_COOLINGPhys = MathInterp1dU8(&HARD_u8TempCTPC[0],
                                                      u16LocalSiteInterp
                                                     );
}


void HARD_vidNmManager(void)
{
   HARD_vidNmTask1ms();
}
#endif
#define HARD_STOP_SEC_CODE
#include "HARD_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
