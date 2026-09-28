/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : HARD                                                    */
/*                                                                            */
/* !Module          : HARD                                                    */
/* !Description     : Pre defined functional modes sequences                  */
/*                                                                            */
/* !File            : HARD_MOD.H                                              */
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
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::               $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#ifndef HARD_MOD_H
#define HARD_MOD_H

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/*----------------------------------------------------------------------------*/
/* ModSeq*State values                                                        */
/*----------------------------------------------------------------------------*/
#define HARD_MOD_STATE_1                  0x01
#define HARD_MOD_STATE_2                  0x02
#define HARD_MOD_STATE_3                  0x04
#define HARD_MOD_STATE_4                  0x08
#define HARD_MOD_STATE_5                  0x10
#define HARD_MOD_STATE_6                  0x20
#define HARD_MOD_STATE_7                  0x40
#define HARD_MOD_STATE_READY              0x80

/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
extern uint8 HARD_ModSeq1InitState;
extern uint8 HARD_ModSeq1FuncState;

extern uint8 HARD_ModSeq2InitState;
extern uint8 HARD_ModSeq2FuncState;

/******************************************************************************/
/* DEFINES MACROS                                                             */
/******************************************************************************/

/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
void HARD_vidModInit(void);

void HARD_vidModSeq1Init(boolean *flagOn);
void HARD_vidModSeq1Func(boolean *flagOn);

void HARD_vidModSeq2Init(boolean *flagOn);
void HARD_vidModSeq2Func(boolean *flagOn);

#endif /* HARD_MOD_H */

/*-------------------------------- end of file -------------------------------*/
