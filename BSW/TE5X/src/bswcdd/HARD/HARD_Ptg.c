/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Pulse test generation                                   */
/*                                                                            */
/* !File            : HARD_PTG.C                                              */
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
/* HARD.PTG.1   / HARD_vidPtgInit                                             */
/* HARD.PTG.2   / HARD_vidPtgCalculate                                        */
/* HARD.PTG.3   / HARD_vidPtgCallTrigFunc                                     */
/* HARD.PTG.11  / HARD_vidPtgPulse                                            */
/* HARD.PTG.12  / HARD_vidPtgSinus                                            */
/* HARD.PTG.13  / HARD_vidPtgCosinus                                          */
/* HARD.PTG.14  / HARD_vidPtgTriangle                                         */
/* HARD.PTG.15  / HARD_vidPtgSquare                                           */
/* HARD.PTG.16  / HARD_vidPtgContinuous                                       */
/* HARD.PTG.17  / HARD_vidPtgSimu                                             */
/* HARD.PTG.18  / HARD_vidPtgDisjunction                                      */
/* HARD.PTG.19  / HARD_vidPtgFree                                             */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive:   P:/VE_Onduleur_Gen2_Sofraci/LOG/70_SubProject/Archives/GEN2_SWA_BSWSH72/hard_ptg.c_v  $ */
/* $Revision::   1.4       $$Author::           $$Date::   22 Oct 2012 $*/
/******************************************************************************/

#include "Std_Types.h"
#include "HARD.h"
#include "HARD_L.h"

#include "HARD_Tab.h"
#include "HARD_Ptg.h"
#include "MATH_TRI.H"

/******************************************************************************/
/*                                                                            */
/* !Description : Initialises HARD Pulse test generation                      */
/* !Trigger     : hard_tsk                                                    */
/* !Number      : HARD.PTG.1                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                   */
/******************************************************************************/
void HARD_vidPtgInit(void)
{
/* Timer reference */
   HARD_u16PtgRefSignalNbPeriode = 65535;
   HARD_u16PtgRefSignalTime      = 0;
   HARD_s16PtgRefSignalValue     = 0;
   HARD_bPtgSignalsShiftControl  = 1;            
   
/* PtgU */
   HARD_u16PtgUSignalNbPeriode   = 65535;
   HARD_u16PtgUSignalTime        = 0;
   HARD_s16PtgUSignalValue       = 0;
   HARD_bPtgUSignalEnable        = 1;
   
/* PtgV */
   HARD_u16PtgVSignalNbPeriode   = 65535;
   HARD_u16PtgVSignalTime        = 0;
   HARD_s16PtgVSignalValue       = 0;
   HARD_bPtgVSignalEnable        = 1;
   
/* PtgW */
   HARD_u16PtgWSignalNbPeriode   = 65535;
   HARD_u16PtgWSignalTime        = 0;
   HARD_s16PtgWSignalValue       = 0;
   HARD_bPtgWSignalEnable        = 1;
   
/* general parameters */
   HARD_PtgModeTest              = HARD_PTG_SINUS_MODE;
   HARD_bPtgEnable               = 0;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test calculate                                        */
/* !Trigger     : hard_tsk                                                    */
/* !Number      : HARD.PTG.2                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                   */
/******************************************************************************/
void HARD_vidPtgCalculate(
                          uint16  *p_u16NbPeriode,
                          uint16  *p_u16Time,
                          uint16  *p_u16RefTime,
                          sint16  *p_s16Value,
                          boolean *p_bEnable,
                          uint16  *p_u16Shift,
                          boolean *p_bShiftControl
                         )
{
   if (*p_u16NbPeriode != 0)
   {
      if (*p_bShiftControl != 0)
      {
         *p_u16Time = (uint16)(*p_u16RefTime - *p_u16Shift);
      }

      HARD_vidPtgCallTrigFunc(
                              p_u16NbPeriode,
                              p_u16Time,
                              p_s16Value
                             );
      *p_bEnable = 1;
   }
   else
   {
      *p_u16Time       = 0;
      *p_s16Value      = 0;
      *p_bEnable       = 0;
      *p_u16Shift      = 0;
      *p_bShiftControl = 0;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test call trig functions                              */
/* !Trigger     : hard_tsk                                                    */
/* !Number      : HARD.PTG.3                                                  */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgCallTrigFunc(
                             uint16 *p_u16NbPeriode,
                             uint16 *p_u16Time,
                             sint16 *p_s16Value
                            ) 
{
   switch (HARD_PtgModeTest)
   {
      case HARD_PTG_PULSE_MODE:
         HARD_vidPtgPulse(
                          p_u16NbPeriode,
                          p_u16Time,
                          p_s16Value
                         );
         break;

      case HARD_PTG_SINUS_MODE:
         HARD_vidPtgSinus(
                          p_u16NbPeriode,
                          p_u16Time,
                          p_s16Value
                         );
         break;

//<<      case HARD_PTG_COSINUS_MODE:
//<<         HARD_vidPtgCosinus(
//<<                           p_u16NbPeriode,
//<<                           p_u16Time,
//<<                           p_s16Value
//<<                           );
//<<         break;

      case HARD_PTG_TRIANGLE_MODE:
         HARD_vidPtgTriangle(
                             p_u16NbPeriode,
                             p_s16Value
                            );
         break;

      case HARD_PTG_SQUARE_MODE:
         HARD_vidPtgSquare(
                           p_u16NbPeriode,
                           p_u16Time,
                           p_s16Value
                          );
         break;

      case HARD_PTG_CONTINUOUS_MODE:
         HARD_vidPtgContinuous(p_s16Value);
         break;

      case HARD_PTG_PROFIL_MODE:
         HARD_vidPtgSimu(
                         p_u16Time,
                         p_s16Value
                        );
         break;

      case HARD_PTG_DISJUNCTION_MODE:
         HARD_vidPtgDisjunction(
                                p_u16NbPeriode,
                                p_u16Time,
                                p_s16Value
                               );
         break;

      case HARD_PTG_LOOP_NB_MODE:
         HARD_vidPtgFree(
                         p_u16NbPeriode,
                         p_u16Time,
                         p_s16Value
                        );
         break;
   }
}

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test : Pulse generation                               */
/* !Number      : HARD.PTG.11                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgPulse(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;
 uint16 u16LocalPulseDutyCycle;
 sint32 s32LocalValue;

   u16LocalNbRequest = *pu16NbRequest;
   u16LocalTime      = *pu16Time;
   s32LocalValue     = *ps16Value;

   u16LocalPulseDutyCycle = HARDPTG_u16PulseDutyCycleC;
   if (u16LocalPulseDutyCycle == 0)
   {
      u16LocalPulseDutyCycle = 1;
   }

   if (u16LocalNbRequest != 0)
   { 
      u16LocalTime++;

      if (u16LocalTime <= (HARDPTG_u32FrequenceC / u16LocalPulseDutyCycle))
      {
         s32LocalValue = ((sint32)(HARDPTG_s16AmplitudeC) << 1 ) - 32768 + (sint32)(HARDPTG_s16OffsetC);
      }
      else
      {
         s32LocalValue = ((sint32)(HARDPTG_s16OffsetC) - (sint32)32768);
           
         if(u16LocalTime >= HARDPTG_u32FrequenceC )
         {
            u16LocalTime = 0;

            if ( u16LocalNbRequest != 65535 )
            {
               u16LocalNbRequest--;
            }
         }
      }

      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
         else
         {
            s32LocalValue = s32LocalValue;
         } 
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
      u16LocalTime  = (sint16)0;
   }

   *pu16NbRequest = u16LocalNbRequest;
   *pu16Time      = u16LocalTime;
   *ps16Value     = (sint16)s32LocalValue;
} 

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test : Sinus generation                               */
/* !Number      : HARD.PTG.12                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgSinus(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;
 sint32 s32LocalValue;

 sint16 s16LocalSinus;
 uint16 u16LocalRatio;
 
   u16LocalNbRequest = *pu16NbRequest;
   u16LocalTime      = *pu16Time;
   s32LocalValue     = *ps16Value;

   if (u16LocalNbRequest != 0)
   { 
      if (HARDPTG_u32FrequenceC != 0)
      {
         u16LocalRatio = (uint16)((uint32)65535 / HARDPTG_u32FrequenceC);         
         if (u16LocalRatio > 16384)
         {
            u16LocalRatio = 16384; 
         }
      }
      else
      {
         u16LocalRatio = 16384;
      }

      if ((sint32)((sint32)u16LocalTime + u16LocalRatio) > 65535)      
      {
         if (u16LocalNbRequest != 65535)
         {
            u16LocalNbRequest--;
         }
      }
      u16LocalTime  = (uint16)(u16LocalTime + u16LocalRatio);
      s16LocalSinus = MathSinus(u16LocalTime);
      s32LocalValue = (((sint32)s16LocalSinus * HARDPTG_s16AmplitudeC) >> 15);
      s32LocalValue = s32LocalValue + HARDPTG_s16OffsetC;

      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
      u16LocalTime  = (sint16)0;
   }
   *pu16NbRequest = u16LocalNbRequest;
   *pu16Time      = u16LocalTime;
   *ps16Value     = (sint16)s32LocalValue;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test : Cosinus generation                             */
/* !Number      : HARD.PTG.13                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgCosinus(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;
 sint32 s32LocalValue;

 sint16 s16LocalSinus;
 uint16 u16LocalRatio;
 
   u16LocalNbRequest = *pu16NbRequest;
   u16LocalTime      = *pu16Time;
   s32LocalValue     = *ps16Value;

   if (u16LocalNbRequest != 0)
   { 
      if (HARDPTG_u32FrequenceC != 0)
      {
         u16LocalRatio = (uint16)((uint32)65535 / HARDPTG_u32FrequenceC);
         if (u16LocalRatio > 16384)
         {
            u16LocalRatio = 16384; 
         }
      }
      else
      {
         u16LocalRatio = 16384;
      }

      if ((sint32)((sint32)u16LocalTime + u16LocalRatio) > 65535)
      {
         if (u16LocalNbRequest != 65535)
         {
            u16LocalNbRequest--;
         }
      }
      u16LocalTime  = (uint16)(u16LocalTime + u16LocalRatio);
      s16LocalSinus = MathCosinus(u16LocalTime);
      s32LocalValue = (((sint32)s16LocalSinus * HARDPTG_s16AmplitudeC) >> 15);
      s32LocalValue = s32LocalValue + HARDPTG_s16OffsetC;

      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
      u16LocalTime  = (sint16)0;
   }
   *pu16NbRequest = u16LocalNbRequest;
   *pu16Time      = u16LocalTime;
   *ps16Value     = (sint16)s32LocalValue;
}
 
/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test : Triangle generation                            */
/* !Number      : HARD.PTG.14                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgTriangle(uint16* pu16NbRequest, sint16 *ps16Value)
{
 uint16 u16LocalNbRequest;
 sint32 s32LocalValue;
 sint32 s32LocalSlewRate;

   u16LocalNbRequest = *pu16NbRequest;
   s32LocalValue     = (sint32)(*ps16Value) - HARDPTG_s16OffsetC;
   /* slewrate = %/T */
   if (HARDPTG_u32FrequenceC != 0)
   {
      s32LocalSlewRate = HARDPTG_s16SlewRateC / HARDPTG_u32FrequenceC;
   }
   else
   {
      s32LocalSlewRate = HARDPTG_s16SlewRateC;
   }
   
   if (u16LocalNbRequest != 0)
   { 
      if (HARDPTG_s16AmplitudeC < 0)
      {
         s32LocalValue = s32LocalValue - s32LocalSlewRate;
         if (s32LocalValue < HARDPTG_s16AmplitudeC)
         {
            s32LocalValue = 0;
            if (u16LocalNbRequest != 65535)
            {
               u16LocalNbRequest--;
            }
            s32LocalValue = (2 * s32LocalValue) + HARDPTG_s16OffsetC + 32767;
         }
      }
      else
      {
         s32LocalValue = s32LocalValue + s32LocalSlewRate;
         if (s32LocalValue > HARDPTG_s16AmplitudeC)
         {
            s32LocalValue = 0;
            if (u16LocalNbRequest != 65535)
            {
               u16LocalNbRequest--;
            }
            s32LocalValue = (2 * s32LocalValue) + HARDPTG_s16OffsetC - 32767;
         }
      }
      
      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
   }
   *pu16NbRequest = u16LocalNbRequest;
   *ps16Value     = (sint16)s32LocalValue;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test : Square generation                              */
/* !Number      : HARD.PTG.15                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgSquare(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;
 sint32 s32LocalValue;

   u16LocalNbRequest = *pu16NbRequest;
   u16LocalTime      = *pu16Time;
   s32LocalValue     = *ps16Value;

   if (u16LocalNbRequest != 0)
   { 
      u16LocalTime++;

      if (u16LocalTime <= (HARDPTG_u32FrequenceC / 2))
      {
         s32LocalValue = ((sint32)(HARDPTG_s16OffsetC << 1) - (sint32)32768) + HARDPTG_s16AmplitudeC;
      }
      else
      {
         if (u16LocalTime < HARDPTG_u32FrequenceC)
         {
            s32LocalValue = ((sint32)(HARDPTG_s16OffsetC << 1) - (sint32)32768) - HARDPTG_s16AmplitudeC;
         }
         else
         {
            s32LocalValue = ((sint32)(HARDPTG_s16OffsetC << 1) - (sint32)32768) - HARDPTG_s16AmplitudeC;

            u16LocalTime = 0;

            if (u16LocalNbRequest != 65535) 
            {
               u16LocalNbRequest--;
            }
         }
      }

      if (s32LocalValue > 32767)
      {
         s32LocalValue = 32767;
      }
      else
      {
         if (s32LocalValue < -32768)
         {
            s32LocalValue = -32768;
         }
         else
         {
            s32LocalValue = s32LocalValue;
         } 
      }
   }
   else
   {
      s32LocalValue = (sint32)0;
      u16LocalTime  = (sint16)0;
   }
   *pu16NbRequest = u16LocalNbRequest;
   *pu16Time      = u16LocalTime;
   *ps16Value     = (sint16)s32LocalValue;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test : Continuous generation                          */
/* !Number      : HARD.PTG.16                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgContinuous(sint16 *ps16Value)
{
 sint16 s16LocalValue;

//<<   if (HARDPTG_s16ContinuousRequestC > 32767)
//<<   {
//<<      s16LocalValue = 32767;
//<<   }
//<<   else
//<<   {
      if (HARDPTG_s16ContinuousRequestC < -32767)
      {
         s16LocalValue = -32767;
      }
      else
      {
         s16LocalValue = HARDPTG_s16ContinuousRequestC;
      }
//<<   }
   *ps16Value = s16LocalValue;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test : Simulation by table generation                 */
/* !Number      : HARD.PTG.17                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgSimu(uint16 *pu16Time, sint16 *ps16Value)
{
 uint16 u16LocalValue;

   u16LocalValue = *pu16Time;

   *ps16Value  = HARDPTG_s16HardProfilSimu[u16LocalValue];
   u16LocalValue++;

   if (u16LocalValue > 255)
   {
      u16LocalValue = 0;
   }
   *pu16Time = u16LocalValue;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test : Disjunction generation                         */
/* !Number      : HARD.PTG.18                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgDisjunction(uint16 *pu16Nbrequest, uint16 *pu16Time, sint16 *ps16Value)
{ 
 sint32 s32LocalConsigne;
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;

   u16LocalTime      = *pu16Time;
   u16LocalNbRequest = *pu16Nbrequest;   

   s32LocalConsigne = ((sint32)(HARDPTG_s16AmplitudeC << 1)) - 32768;
   
   if (u16LocalNbRequest != 0)
   {
      if (u16LocalTime != 0)
      {
         if (s32LocalConsigne > 32767)
         {
            s32LocalConsigne = 32767;
         }
         else
         {
            if (s32LocalConsigne < -32767)
            {
               s32LocalConsigne = -32767;
            }
         }
         u16LocalTime--;
      }
      else
      {
         if (u16LocalNbRequest != 65535)
         {
            u16LocalNbRequest--;
         }
         s32LocalConsigne = 0;
      }
   }
   else
   {
      s32LocalConsigne = 0;
   }
   *pu16Nbrequest = u16LocalNbRequest;
   *pu16Time      = u16LocalTime;
   *ps16Value     = (sint16)s32LocalConsigne;
}

/******************************************************************************/
/*                                                                            */
/* !Description : Pulse test : Free generation                                */
/* !Number      : HARD.PTG.19                                                 */
/* !Reference   : V01NT1101813.001                                            */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                    */
/******************************************************************************/
void HARD_vidPtgFree(uint16 *pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value)
{
 sint32 s32LocalConsigne;
 uint16 u16LocalTime;
 uint16 u16LocalNbRequest;

   u16LocalTime      = *pu16Time;
   u16LocalNbRequest = *pu16NbRequest;   

   s32LocalConsigne = ((sint32)HARDPTG_s16AmplitudeC << 1) - 32767;

   if (u16LocalNbRequest != 0)
   {
      if (s32LocalConsigne > 32767)
      {
         s32LocalConsigne = 32767;
      }
      else
      {
         if (s32LocalConsigne < -32767)
         {
            s32LocalConsigne = -32767;
         }
      }
      u16LocalNbRequest--;
   }
   else
   {
      s32LocalConsigne = 0;
   }
   *pu16NbRequest = u16LocalNbRequest;   
   *pu16Time      = u16LocalTime;
   *ps16Value     = (sint16)s32LocalConsigne;
}

/*-------------------------------- end of file -------------------------------*/
