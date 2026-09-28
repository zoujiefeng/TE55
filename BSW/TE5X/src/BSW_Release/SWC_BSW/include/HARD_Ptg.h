/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Pulse test generation                                   */
/*                                                                            */
/* !File            : HARD_PTG.H                                              */
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
/* SVN Information                                                           */
/* $Archive:   P:/VE_Onduleur_Gen2_Sofraci/LOG/70_SubProject/Archives/GEN2_SWA_BSWSH72/hard_ptg.h_v  $ */
/* $Revision::   1.4       $$Author::           $$Date::   31 Jan 2012 $*/
/******************************************************************************/

#ifndef HARD_PTG_H
#define HARD_PTG_H

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
void HARD_vidPtgInit(void);
void HARD_vidPtgCalculate(
                          uint16  *p_u16NbPeriode,
                          uint16  *p_u16Time,
                          uint16  *p_u16RefTime,
                          sint16  *p_s16Value,
                          boolean *p_bEnable,
                          uint16  *p_u16Shift,
                          boolean *p_bShiftControl
                         );
void HARD_vidPtgCallTrigFunc(
                             uint16 *p_u16NbPeriode,
                             uint16 *p_u16Time,
                             sint16 *p_s16Value
                            );

void HARD_vidPtgPulse(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgSinus(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgCosinus(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgTriangle(uint16* pu16NbRequest, sint16 *ps16Value);
void HARD_vidPtgSquare(uint16* pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgContinuous(sint16 *ps16Value);
void HARD_vidPtgSimu(uint16 *pu16Time,sint16 *ps16Value);
void HARD_vidPtgDisjunction(uint16 *pu16Nbrequest, uint16 *pu16Time, sint16 *ps16Value);
void HARD_vidPtgFree(uint16 *pu16NbRequest, uint16 *pu16Time, sint16 *ps16Value);

#endif /* HARD_PTG_H */

/*-------------------------------- end of file -------------------------------*/
