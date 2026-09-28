/**********************************************************************************************************************/
/* !Layer           : SRV                                                                                             */
/*                                                                                                                    */
/* !Component       : SPY                                                                                             */
/*                                                                                                                    */
/* !Module          : SPY_Daq                                                                                         */
/* !Description     : SPY functions                                                                                   */
/*                                                                                                                    */
/* !File            : spy_daq.c                                                                                       */
/*                                                                                                                    */
/* !Target          : All                                                                                             */
/*                                                                                                                    */
/* Coding language  : C                                                                                               */
/*                                                                                                                    */
/* COPYRIGHT invt  all rights reserved                                                                                */
/**********************************************************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 **********************************************************************************************************************/
/* DAQ.1 / SPY_vidInit                                                                                                */
/* DAQ.2 / SPY_vidDaqListTxInit                                                                                       */
/* DAQ.3 / SPY_bWrOdt                                                                                                 */
/* DAQ.4 / SPY_vidDaqListStopd                                                                                        */
/* DAQ.5 / SPY_vidWrBuf                                                                                               */
/* DAQ.6 / SPY_vidStopDataAcq                                                                                         */
/* DAQ.7 / SPY_bPreTrigBufFilled                                                                                      */
/**********************************************************************************************************************/

#include "SPY.h"
#include "SPY_L.h"
#include "spy_cfg.h"

/**********************************************************************************************************************/
/* DEFINES DEFINITION                                                                                                 */
/**********************************************************************************************************************/
#define SPY_u16NR_OF_SMPLS      SPY_MAX_QTY_DATA
#define SPY_u16NR_OF_RMNG_SMPLS SPY_MAX_QTY_DATA_POST_EVENT


/**********************************************************************************************************************/
/* VARIABLES DEFINITION                                                                                               */
/**********************************************************************************************************************/
#define SPY_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

uint8   SPY_au8Smpls[SPY_MAX_QTY_DATA][SPY_NB_SGN];
uint8 **SPY_ppu8DaqListElmAdr;

#define SPY_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"


/**********************************************************************************************************************/
/* FUNCTIONS DEFINITION                                                                                               */
/**********************************************************************************************************************/
#define SPY_START_SEC_CODE
#include "MemMap.h"

/*********************************************** <AUTO_FUNCTION_HEADER> ***********************************************/
/*                                                                                                                    */
/* !FuncName    : SPY_vidInit                                                                                         */
/*                                                                                                                    */
/* !Description : Initialisation of SPY module                                                                        */
/* !Number      : 1                                                                                                   */
/* !Reference   : NONE                                                                                                */
/*                                                                                                                    */
/* !Trace_To    : NONE                                                                                                */
/*                                                                                                                    */
/********************************************** </AUTO_FUNCTION_HEADER> ***********************************************/
/* !LastAuthor  :                                                                                                     */
/********************************************* <AUTO_FUNCTION_PROTOTYPE> **********************************************/
void SPY_vidInit(void)
{
   SPY_u16NrOfElmsToTx       = 0;
   SPY_u16DaqListFirstElmIdx = 0;
   SPY_ppu8DaqListElmAdr     = NULL_PTR;
   SPY_u16SmplIdx            = SPY_u16NR_OF_SMPLS;
   SPY_u16PreTrigSmplIdx     = 0;
   SPY_u16RmngSmplIdx        = SPY_u16NR_OF_RMNG_SMPLS;
   SPY_u16TrigSmplIdx        = 0;
   SPY_bBufFull              = FALSE;
}

/*********************************************** <AUTO_FUNCTION_HEADER> ***********************************************/
/*                                                                                                                    */
/* !FuncName    : SPY_vidDaqListTxInit                                                                                */
/*                                                                                                                    */
/* !Description : Initialisation of DAQ parameters for SPY module                                                     */
/* !Number      : 2                                                                                                   */
/* !Reference   : NONE                                                                                                */
/*                                                                                                                    */
/* !Trace_To    : NONE                                                                                                */
/*                                                                                                                    */
/********************************************** </AUTO_FUNCTION_HEADER> ***********************************************/
/* !LastAuthor  :                                                                                                     */
/********************************************* <AUTO_FUNCTION_PROTOTYPE> **********************************************/
void SPY_vidDaqListTxInit(uint8 u8ListIdx, uint8 **ppu8DaqListElmAdr, uint16 u16FirstElmIdx, uint8 u8OdtLstIdx)
{
   if (u8ListIdx == SPY_DAQ_LIST)
   {
      SPY_u16DaqListFirstElmIdx = u16FirstElmIdx;
      SPY_ppu8DaqListElmAdr     = &ppu8DaqListElmAdr[u16FirstElmIdx];
      SPY_u16NrOfElmsToTx       = (u8OdtLstIdx + 1) * 7;
   }
}

/*********************************************** <AUTO_FUNCTION_HEADER> ***********************************************/
/*                                                                                                                    */
/* !FuncName    : SPY_bWrOdt                                                                                          */
/*                                                                                                                    */
/* !Description : Sends data from the buffer SPY_au8Smpls                                                             */
/* !Number      : 3                                                                                                   */
/* !Reference   : NONE                                                                                                */
/*                                                                                                                    */
/* !Trace_To    : NONE                                                                                                */
/*                                                                                                                    */
/********************************************** </AUTO_FUNCTION_HEADER> ***********************************************/
/* !LastAuthor  :                                                                                                     */
/********************************************* <AUTO_FUNCTION_PROTOTYPE> **********************************************/
boolean SPY_bWrOdt(uint8 u8ListIdx, uint16 u16FirstElmIdx, uint8 *pu8BufDst)
{
   boolean      bLocWrDone;
   uint16_least u16LocTrigSmplIdx;
   uint16_least u16LocSmplIdx;
   uint16_least u16LocElmAdrIdx;
   uint8      * pu8LocalBufSrc;


   bLocWrDone = FALSE;
   if (  (u8ListIdx == SPY_DAQ_LIST)
      && (SPY_bBufFull == TRUE))
   {
      u16LocTrigSmplIdx = SPY_u16TrigSmplIdx;
      if (u16LocTrigSmplIdx >= SPY_u16NR_OF_SMPLS)
      {
         u16LocTrigSmplIdx = 0;
      }
      u16LocElmAdrIdx = u16FirstElmIdx - SPY_u16DaqListFirstElmIdx;
      pu8LocalBufSrc  = &SPY_au8Smpls[u16LocTrigSmplIdx][u16LocElmAdrIdx];

      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst   = *pu8LocalBufSrc;

      if ((u16LocElmAdrIdx + 7) >= SPY_u16NrOfElmsToTx)
      {
         u16LocTrigSmplIdx++;
         SPY_u16TrigSmplIdx = u16LocTrigSmplIdx;

         u16LocSmplIdx  = SPY_u16SmplIdx + 1;
         SPY_u16SmplIdx = u16LocSmplIdx; /* Shall be updated before setting SPY_bBufFull in case */
                                         /* this function is preempted by SPY_vidWrBuf           */
         if (u16LocSmplIdx >= SPY_u16NR_OF_SMPLS)
         {
            SPY_bBufFull          = FALSE;
            SPY_u16PreTrigSmplIdx = 0;
         }
      }

      bLocWrDone = TRUE;
   }
   return(bLocWrDone);
}

/*********************************************** <AUTO_FUNCTION_HEADER> ***********************************************/
/*                                                                                                                    */
/* !FuncName    : SPY_vidDaqListStopd                                                                                 */
/*                                                                                                                    */
/* !Description : Stops SPY module                                                                                    */
/* !Number      : 4                                                                                                   */
/* !Reference   : NONE                                                                                                */
/*                                                                                                                    */
/* !Trace_To    : NONE                                                                                                */
/*                                                                                                                    */
/********************************************** </AUTO_FUNCTION_HEADER> ***********************************************/
/* !LastAuthor  :                                                                                                     */
/********************************************* <AUTO_FUNCTION_PROTOTYPE> **********************************************/
void SPY_vidDaqListStopd(uint8 u8ListIdx)
{
   if (u8ListIdx == SPY_DAQ_LIST)
   {
      SPY_u16NrOfElmsToTx = 0;
      SPY_bBufFull        = FALSE;
   }
}

/*********************************************** <AUTO_FUNCTION_HEADER> ***********************************************/
/*                                                                                                                    */
/* !FuncName    : SPY_vidWrBuf                                                                                        */
/*                                                                                                                    */
/* !Description : Stores data to buffer SPY_au8Smpls                                                                  */
/* !Number      : 5                                                                                                   */
/* !Reference   : NONE                                                                                                */
/*                                                                                                                    */
/* !Trace_To    : NONE                                                                                                */
/*                                                                                                                    */
/********************************************** </AUTO_FUNCTION_HEADER> ***********************************************/
/* !LastAuthor  :                                                                                                     */
/********************************************* <AUTO_FUNCTION_PROTOTYPE> **********************************************/
void SPY_vidWrBuf(void)
{
   uint16_least u16LocSmplIdx;
   uint16_least u16LocIdx;
   uint16_least u16LocPreTrigSmplIdx;
   uint16_least u16LocRmngSmplIdx;
   uint16_least u16LocNrOfElms;
   uint8      * pu8Dest;
   uint8     ** ppu8Src;


   u16LocSmplIdx  = SPY_u16SmplIdx;
   u16LocNrOfElms = SPY_u16NrOfElmsToTx;
   if (  (u16LocNrOfElms != 0)
      && (SPY_bBufFull == FALSE))
   {
      if (u16LocSmplIdx >= SPY_u16NR_OF_SMPLS)
      {
         u16LocSmplIdx = 0;
      }

      pu8Dest   = &SPY_au8Smpls[u16LocSmplIdx][0];
      ppu8Src   = &SPY_ppu8DaqListElmAdr[0];
      u16LocIdx = (u16LocNrOfElms + 7) >> 3;

      u16LocSmplIdx++;
      SPY_u16SmplIdx = u16LocSmplIdx;

      switch(u16LocNrOfElms & 7)
      {
         case 0: do {  *pu8Dest++ = **ppu8Src++;
         case 7:       *pu8Dest++ = **ppu8Src++;
         case 6:       *pu8Dest++ = **ppu8Src++;
         case 5:       *pu8Dest++ = **ppu8Src++;
         case 4:       *pu8Dest++ = **ppu8Src++;
         case 3:       *pu8Dest++ = **ppu8Src++;
         case 2:       *pu8Dest++ = **ppu8Src++;
         case 1:       *pu8Dest++ = **ppu8Src++;
                    } while(--u16LocIdx > 0);
      }

      u16LocPreTrigSmplIdx = SPY_u16PreTrigSmplIdx;
      if (u16LocPreTrigSmplIdx < (SPY_u16NR_OF_SMPLS - SPY_u16NR_OF_RMNG_SMPLS))
      {
         SPY_u16PreTrigSmplIdx = u16LocPreTrigSmplIdx + 1;
      }

      u16LocRmngSmplIdx = SPY_u16RmngSmplIdx;
      if (u16LocRmngSmplIdx < SPY_u16NR_OF_RMNG_SMPLS)
      {
         u16LocRmngSmplIdx++;
         if (u16LocRmngSmplIdx >= SPY_u16NR_OF_RMNG_SMPLS)
         {
            SPY_u16TrigSmplIdx = u16LocSmplIdx;
            SPY_u16SmplIdx     = 0;
            SPY_bBufFull       = TRUE; /* Shall be done after setting SPY_u16TrigSmplIdx & SPY_u16SmplIdx */
                                       /* to avoid issue if SPY_bWrOdt preempts this function             */
         }
         SPY_u16RmngSmplIdx = u16LocRmngSmplIdx; /* Shall be done after setting SPY_bBufFull to avoid  */
                                                 /* issue if SPY_vidStopDataAcq preempts this function */
      }
   }
}

/*********************************************** <AUTO_FUNCTION_HEADER> ***********************************************/
/*                                                                                                                    */
/* !FuncName    : SPY_vidStopDataAcq                                                                                  */
/*                                                                                                                    */
/* !Description : Requests to stop SPY acquisition (it will stop after acquiring remaining samples).                  */
/*                Stop is authorized after the "pre-trigger buffer" is filled (guarantees the consistency of the      */
/*                buffer                                                                                              */
/* !Number      : 6                                                                                                   */
/* !Reference   : NONE                                                                                                */
/*                                                                                                                    */
/* !Trace_To    : NONE                                                                                                */
/*                                                                                                                    */
/********************************************** </AUTO_FUNCTION_HEADER> ***********************************************/
/* !LastAuthor  :                                                                                                     */
/********************************************* <AUTO_FUNCTION_PROTOTYPE> **********************************************/
void SPY_vidStopDataAcq(void)
{
   if (  (SPY_bBufFull == FALSE)
      && (SPY_u16RmngSmplIdx >= SPY_u16NR_OF_RMNG_SMPLS)
      && (SPY_u16PreTrigSmplIdx >= (SPY_u16NR_OF_SMPLS - SPY_u16NR_OF_RMNG_SMPLS)))
   {
      SPY_u16RmngSmplIdx = 0;
   }
}

/*********************************************** <AUTO_FUNCTION_HEADER> ***********************************************/
/*                                                                                                                    */
/* !FuncName    : SPY_bPreTrigBufFilled                                                                               */
/*                                                                                                                    */
/* !Description : Indicates if the pre-trigger buffer is filled. Allows to do continuous acquisition without the need */
/*                for a trigger to stop the acquisition.                                                              */
/* !Number      : 7                                                                                                   */
/* !Reference   : NONE                                                                                                */
/*                                                                                                                    */
/* !Trace_To    : NONE                                                                                                */
/*                                                                                                                    */
/********************************************** </AUTO_FUNCTION_HEADER> ***********************************************/
/* !LastAuthor  :                                                                                                     */
/********************************************* <AUTO_FUNCTION_PROTOTYPE> **********************************************/
boolean SPY_bPreTrigBufFilled(void)
{
   boolean bLocPreTrigBufFilled;


   bLocPreTrigBufFilled = FALSE;
   if (  (SPY_bBufFull == FALSE)
      && (SPY_u16PreTrigSmplIdx >= (SPY_u16NR_OF_SMPLS - SPY_u16NR_OF_RMNG_SMPLS)))
   {
      bLocPreTrigBufFilled = TRUE;
   }
   return(bLocPreTrigBufFilled);
}

#define SPY_STOP_SEC_CODE
#include "MemMap.h"

/*---------------------------------------------------- end of file ---------------------------------------------------*/
