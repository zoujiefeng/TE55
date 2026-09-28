# 1 "bswcdd\\CCP\\SPY\\spy_daq.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\CCP\\SPY\\spy_daq.c"
# 32 "bswcdd\\CCP\\SPY\\spy_daq.c"
# 1 "bswcdd\\CCP\\SPY\\SPY.h" 1
# 37 "bswcdd\\CCP\\SPY\\SPY.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 38 "bswcdd\\CCP\\SPY\\SPY.h" 2
# 62 "bswcdd\\CCP\\SPY\\SPY.h"
boolean SPY_bPreTrigBufFilled(void);
boolean SPY_bWrOdt(uint8 u8ListIdx, uint16 u16FirstElmIdx, uint8 *pu8BufDst);
void SPY_vidDaqListStopd(uint8 u8ListIdx);
void SPY_vidDaqListTxInit(uint8 u8ListIdx, uint8 **ppu8DaqListElmAdr, uint16 u16FirstElmIdx, uint8 u8OdtLstIdx);
void SPY_vidInit(void);
void SPY_vidStopDataAcq(void);
void SPY_vidWrBuf(void);
# 33 "bswcdd\\CCP\\SPY\\spy_daq.c" 2
# 1 "bswcdd\\CCP\\SPY\\SPY_L.h" 1
# 37 "bswcdd\\CCP\\SPY\\SPY_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\CCP\\SPY\\SPY_L.h" 2
# 58 "bswcdd\\CCP\\SPY\\SPY_L.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 59 "bswcdd\\CCP\\SPY\\SPY_L.h" 2
extern boolean SPY_bBufFull;
extern uint16 SPY_u16DaqListFirstElmIdx;
extern uint16 SPY_u16NrOfElmsToTx;
extern uint16 SPY_u16PreTrigSmplIdx;
extern uint16 SPY_u16RmngSmplIdx;
extern uint16 SPY_u16SmplIdx;
extern uint16 SPY_u16TrigSmplIdx;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 68 "bswcdd\\CCP\\SPY\\SPY_L.h" 2
# 34 "bswcdd\\CCP\\SPY\\spy_daq.c" 2
# 1 "bswcdd\\CCP\\SPY\\spy_cfg.h" 1
# 32 "bswcdd\\CCP\\SPY\\spy_cfg.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 33 "bswcdd\\CCP\\SPY\\spy_cfg.h" 2
# 1 ".\\output\\inc/CCP_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Limits.h" 1
# 2 ".\\output\\inc/Std_Limits.h" 2
# 36 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 2
# 63 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h"
typedef uint8_least CCP_tudtCmdSts;

typedef uint8_least CCP_tudtState;
typedef uint8_least CCP_tudtCmdCode;

typedef CCP_tudtCmdSts (*CCP_tpfudtSrvFcn)(void);

typedef struct
{
   uint32 u32Adr;
   uint8 u8Extn;
}
CCP_tstrMta;

typedef struct
{
   uint8 u8NoOdt;
   uint8 u8FirstPid;

}
CCP_tstrDaqListStatCfg;



typedef struct
{
   boolean vbStopTx;
   boolean bLstOdtProcd;
   uint8 vu8TxSt;

   uint8 u8OdtLstIdx;

   boolean vbEvtSet;
   uint8 u8EveChn;

   uint8 vu8CfgChgdCtr;


   uint8 u8CfgChgdAckdCtr;

   uint8 vu8Mod;

   uint16 u16Ctr;
   uint16 u16Pslr;
}
CCP_tstrDaqListDynCfg;


typedef struct
{
   uint8 u8ListIdx;

   uint8 u8OdtIdx;

   uint8 u8ElmIdx;


}
CCP_tstrDaqListSeldElm;


typedef struct
{

   uint16 u16Dummy;
}
CCP_tstrIniPrms;
# 36 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2
# 126 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 127 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2


extern const uint8 CCP_kaudtDevId[sizeof("A5H_BSWTC26")];


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2
# 2 ".\\output\\inc/CCP_Cfg.h" 2
# 34 "bswcdd\\CCP\\SPY\\spy_cfg.h" 2
# 57 "bswcdd\\CCP\\SPY\\spy_cfg.h"
extern uint8 SPY_ValueArray[(200 + 200)][12 * 7];
# 35 "bswcdd\\CCP\\SPY\\spy_daq.c" 2
# 47 "bswcdd\\CCP\\SPY\\spy_daq.c"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 48 "bswcdd\\CCP\\SPY\\spy_daq.c" 2

uint8 SPY_au8Smpls[(200 + 200)][12 * 7];
uint8 **SPY_ppu8DaqListElmAdr;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 54 "bswcdd\\CCP\\SPY\\spy_daq.c" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 61 "bswcdd\\CCP\\SPY\\spy_daq.c" 2
# 75 "bswcdd\\CCP\\SPY\\spy_daq.c"
void SPY_vidInit(void)
{
   SPY_u16NrOfElmsToTx = 0;
   SPY_u16DaqListFirstElmIdx = 0;
   SPY_ppu8DaqListElmAdr = ((void *)0);
   SPY_u16SmplIdx = (200 + 200);
   SPY_u16PreTrigSmplIdx = 0;
   SPY_u16RmngSmplIdx = 200;
   SPY_u16TrigSmplIdx = 0;
   SPY_bBufFull = (0 != 0);
}
# 100 "bswcdd\\CCP\\SPY\\spy_daq.c"
void SPY_vidDaqListTxInit(uint8 u8ListIdx, uint8 **ppu8DaqListElmAdr, uint16 u16FirstElmIdx, uint8 u8OdtLstIdx)
{
   if (u8ListIdx == 1)
   {
      SPY_u16DaqListFirstElmIdx = u16FirstElmIdx;
      SPY_ppu8DaqListElmAdr = &ppu8DaqListElmAdr[u16FirstElmIdx];
      SPY_u16NrOfElmsToTx = (u8OdtLstIdx + 1) * 7;
   }
}
# 123 "bswcdd\\CCP\\SPY\\spy_daq.c"
boolean SPY_bWrOdt(uint8 u8ListIdx, uint16 u16FirstElmIdx, uint8 *pu8BufDst)
{
   boolean bLocWrDone;
   uint16_least u16LocTrigSmplIdx;
   uint16_least u16LocSmplIdx;
   uint16_least u16LocElmAdrIdx;
   uint8 * pu8LocalBufSrc;


   bLocWrDone = (0 != 0);
   if ( (u8ListIdx == 1)
      && (SPY_bBufFull == (1 != 0)))
   {
      u16LocTrigSmplIdx = SPY_u16TrigSmplIdx;
      if (u16LocTrigSmplIdx >= (200 + 200))
      {
         u16LocTrigSmplIdx = 0;
      }
      u16LocElmAdrIdx = u16FirstElmIdx - SPY_u16DaqListFirstElmIdx;
      pu8LocalBufSrc = &SPY_au8Smpls[u16LocTrigSmplIdx][u16LocElmAdrIdx];

      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst++ = *pu8LocalBufSrc++;
      *pu8BufDst = *pu8LocalBufSrc;

      if ((u16LocElmAdrIdx + 7) >= SPY_u16NrOfElmsToTx)
      {
         u16LocTrigSmplIdx++;
         SPY_u16TrigSmplIdx = u16LocTrigSmplIdx;

         u16LocSmplIdx = SPY_u16SmplIdx + 1;
         SPY_u16SmplIdx = u16LocSmplIdx;

         if (u16LocSmplIdx >= (200 + 200))
         {
            SPY_bBufFull = (0 != 0);
            SPY_u16PreTrigSmplIdx = 0;
         }
      }

      bLocWrDone = (1 != 0);
   }
   return(bLocWrDone);
}
# 185 "bswcdd\\CCP\\SPY\\spy_daq.c"
void SPY_vidDaqListStopd(uint8 u8ListIdx)
{
   if (u8ListIdx == 1)
   {
      SPY_u16NrOfElmsToTx = 0;
      SPY_bBufFull = (0 != 0);
   }
}
# 207 "bswcdd\\CCP\\SPY\\spy_daq.c"
void SPY_vidWrBuf(void)
{
   uint16_least u16LocSmplIdx;
   uint16_least u16LocIdx;
   uint16_least u16LocPreTrigSmplIdx;
   uint16_least u16LocRmngSmplIdx;
   uint16_least u16LocNrOfElms;
   uint8 * pu8Dest;
   uint8 ** ppu8Src;


   u16LocSmplIdx = SPY_u16SmplIdx;
   u16LocNrOfElms = SPY_u16NrOfElmsToTx;
   if ( (u16LocNrOfElms != 0)
      && (SPY_bBufFull == (0 != 0)))
   {
      if (u16LocSmplIdx >= (200 + 200))
      {
         u16LocSmplIdx = 0;
      }

      pu8Dest = &SPY_au8Smpls[u16LocSmplIdx][0];
      ppu8Src = &SPY_ppu8DaqListElmAdr[0];
      u16LocIdx = (u16LocNrOfElms + 7) >> 3;

      u16LocSmplIdx++;
      SPY_u16SmplIdx = u16LocSmplIdx;

      switch(u16LocNrOfElms & 7)
      {
         case 0: do { *pu8Dest++ = **ppu8Src++;
         case 7: *pu8Dest++ = **ppu8Src++;
         case 6: *pu8Dest++ = **ppu8Src++;
         case 5: *pu8Dest++ = **ppu8Src++;
         case 4: *pu8Dest++ = **ppu8Src++;
         case 3: *pu8Dest++ = **ppu8Src++;
         case 2: *pu8Dest++ = **ppu8Src++;
         case 1: *pu8Dest++ = **ppu8Src++;
                    } while(--u16LocIdx > 0);
      }

      u16LocPreTrigSmplIdx = SPY_u16PreTrigSmplIdx;
      if (u16LocPreTrigSmplIdx < ((200 + 200) - 200))
      {
         SPY_u16PreTrigSmplIdx = u16LocPreTrigSmplIdx + 1;
      }

      u16LocRmngSmplIdx = SPY_u16RmngSmplIdx;
      if (u16LocRmngSmplIdx < 200)
      {
         u16LocRmngSmplIdx++;
         if (u16LocRmngSmplIdx >= 200)
         {
            SPY_u16TrigSmplIdx = u16LocSmplIdx;
            SPY_u16SmplIdx = 0;
            SPY_bBufFull = (1 != 0);

         }
         SPY_u16RmngSmplIdx = u16LocRmngSmplIdx;

      }
   }
}
# 286 "bswcdd\\CCP\\SPY\\spy_daq.c"
void SPY_vidStopDataAcq(void)
{
   if ( (SPY_bBufFull == (0 != 0))
      && (SPY_u16RmngSmplIdx >= 200)
      && (SPY_u16PreTrigSmplIdx >= ((200 + 200) - 200)))
   {
      SPY_u16RmngSmplIdx = 0;
   }
}
# 310 "bswcdd\\CCP\\SPY\\spy_daq.c"
boolean SPY_bPreTrigBufFilled(void)
{
   boolean bLocPreTrigBufFilled;


   bLocPreTrigBufFilled = (0 != 0);
   if ( (SPY_bBufFull == (0 != 0))
      && (SPY_u16PreTrigSmplIdx >= ((200 + 200) - 200)))
   {
      bLocPreTrigBufFilled = (1 != 0);
   }
   return(bLocPreTrigBufFilled);
}


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 326 "bswcdd\\CCP\\SPY\\spy_daq.c" 2
