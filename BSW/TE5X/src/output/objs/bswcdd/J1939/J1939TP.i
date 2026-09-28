# 1 "bswcdd\\J1939\\J1939TP.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\J1939\\J1939TP.c"
# 9 "bswcdd\\J1939\\J1939TP.c"
# 1 "bswcdd\\J1939\\J1939TP.h" 1






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
# 8 "bswcdd\\J1939\\J1939TP.h" 2
# 23 "bswcdd\\J1939\\J1939TP.h"
typedef struct J1939_FaultCfg{
   uint16 u16FMI;
   uint16 u16SPNIdx;
   uint32 u32SPN;
}J1939_FaultCfg;

typedef struct J1939_EcuVarSet{
   uint8 u8TxFrameCnt;
   uint8 u8PackFrameNum;
   uint8 u8TgtMainState;
   uint8 u8CurMainState;
   uint8 u8CurFaultNum;
   uint16 u16TaskCnt;
}J1939_EcuVarSet;

typedef struct J1939_EcuCfg
{
   uint16 u16SPNNum;
   uint8 u8FillByte;

   uint8 *pau8SPNBuf;
   uint32 *pau32StateBuf;

   uint8 *pau8DM1TxBuf;
   uint8 *pau8BAMTxBuf;
   uint8 *pau8TPDTTxBuf;

   J1939_EcuVarSet *ptVarSet;

   void (*vidSPNBufInit)(void);
   void (*vidSendDM1)(void);
   void (*vidSendBAM)(void);
   void (*vidSendTPDT)(void);
}J1939_EcuCfg;




extern void J1939_vidSPNHandler(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg);
extern void J1939_vidMainFunction(const J1939_EcuCfg * const kpktEcuCfg);
void J1939_vidDM1_Periodic_Send_Ctr_Func( boolean Sta ) ;
# 10 "bswcdd\\J1939\\J1939TP.c" 2
# 18 "bswcdd\\J1939\\J1939TP.c"
enum{
   eJ1939_IDLE = 0,
   eJ1939_SEND_FIRST_FRAME,
   eJ1939_SEND_FIRST_CONSECUTIVE_FRAME,
   eJ1939_CONSECUTIVE_FRAME_DELAY,
   eJ1939_SEND_CONSECUTIVE_FRAME,
   eJ1939_DM1_DELAY,
   eJ1939_INVALID_STATE,
};

enum{
   eJ1939_NO_TROUBLE_CODE = 0,
   eJ1939_SF_TROUBLE_CODE_NO,
   eJ1939_MF_TROUBLE_CODE_NO_THLD
};

enum{
   eJ1939_CF_SEND_STATE_END = 0,
   eJ1939_CF_SEND_STATE_CONTINUE,
};
# 60 "bswcdd\\J1939\\J1939TP.c"
static inline uint8 J1939_u8GetTgtMainState(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint8 J1939_u8GetCurMainState(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint16 J1939_u16GetTaskCnt(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint8 J1939_u8GetTxFrameCnt(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint8 J1939_u8GetPackFrameNum(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint8 J1939_u8GetCurFaultNum(const J1939_EcuCfg * const kpktEcuCfg);
static inline void J1939_vidSendDM1(const J1939_EcuCfg * const kpktEcuCfg);
static inline void J1939_vidSendBAM(const J1939_EcuCfg * const kpktEcuCfg);
static inline void J1939_vidSendFirstTPDT(const J1939_EcuCfg * const kpktEcuCfg);
static inline void J1939_vidSendFollowTPDT(const J1939_EcuCfg * const kpktEcuCfg, uint8 * const kpu8State);
static inline void J1939_vidTrigCFDelay(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8TgtState);
static inline void J1939_vidSetTgtMainState(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8State);
static inline void J1939_vidSetCurMainState(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8State);
static inline void J1939_vidSetTaskCnt(const J1939_EcuCfg * const kpktEcuCfg, const uint16 ku16TaskCnt);
static inline void J1939_vidSetTxFrameCnt(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8TxFrameCnt);
static inline void J1939_vidSetPackFrameNum(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8PackFrameNum);
static inline void J1939_vidSetCurFaultNum(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8CurFaultNum);

static inline boolean J1939_bSpnIsValid(const J1939_FaultCfg * const kpktFaultCfg);
static inline boolean J1939_bSpnIsLogged(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg);
static inline void J1939_vidSetSpnLogged(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg);
static inline void J1939_vidClrSpnLogged(const J1939_EcuCfg * const kpktEcuCfg);
static inline void J1939_vidSPNBufInit(const J1939_EcuCfg * const kpktEcuCfg);
static inline void J1939_DM1_Buff_Deal(const J1939_EcuCfg * const kpktEcuCfg, uint8 Nums) ;




static boolean gs_bDM1_Periodic_Send_En = (0 != 0) ;




void J1939_vidSPNHandler(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg)
{
   boolean bIsLogged;
   boolean bIsValid;
   uint16 u16FMI;
   uint32 u32SPN;
   uint8 u8CurFaultNum = J1939_u8GetCurFaultNum(kpktEcuCfg);
   uint8 u8CurMainState = J1939_u8GetCurMainState(kpktEcuCfg);


   if(eJ1939_IDLE == u8CurMainState)
   {
      bIsValid = J1939_bSpnIsValid(kpktFaultCfg);

      if((1 != 0) == bIsValid)
      {
         bIsLogged = J1939_bSpnIsLogged(kpktEcuCfg, kpktFaultCfg);
         if((0 != 0) == bIsLogged)
         {
            J1939_vidSetSpnLogged(kpktEcuCfg, kpktFaultCfg);
            u32SPN = kpktFaultCfg->u32SPN;
            u16FMI = kpktFaultCfg->u16FMI;

            if (u8CurFaultNum < 10)
            {
               kpktEcuCfg->pau8SPNBuf[u8CurFaultNum * 4 + 0] = (uint8)(u32SPN & 0xFF);
               kpktEcuCfg->pau8SPNBuf[u8CurFaultNum * 4 + 1] = (uint8)((u32SPN >> 8) & 0xFF);
               kpktEcuCfg->pau8SPNBuf[u8CurFaultNum * 4 + 2] = (uint8)(u16FMI + (((u32SPN >> 16) & 0x7) << 5));
               kpktEcuCfg->pau8SPNBuf[u8CurFaultNum * 4 + 3] = 1;

               J1939_vidSetCurFaultNum(kpktEcuCfg, (u8CurFaultNum + 1));
            }
         }
      }
   }
}

void J1939_vidMainFunction(const J1939_EcuCfg * const kpktEcuCfg)
{
   uint16 u16TaskCnt = J1939_u16GetTaskCnt(kpktEcuCfg);
   uint8 u8CurFaultNum = J1939_u8GetCurFaultNum(kpktEcuCfg);
   uint8 u8CurMainState = J1939_u8GetCurMainState(kpktEcuCfg);
   uint8 u8CFSendState;

   J1939_vidSetTaskCnt(kpktEcuCfg, (u16TaskCnt + 1));

   switch(u8CurMainState)
   {
      case eJ1939_IDLE:
      {
         J1939_vidSetCurMainState(kpktEcuCfg, eJ1939_SEND_FIRST_FRAME);
         break;
      }
      case eJ1939_SEND_FIRST_FRAME:
      {
         if( (eJ1939_SF_TROUBLE_CODE_NO == u8CurFaultNum) || ((eJ1939_NO_TROUBLE_CODE == u8CurFaultNum)&&(gs_bDM1_Periodic_Send_En == (1 != 0))) )
         {
            J1939_DM1_Buff_Deal(kpktEcuCfg, u8CurFaultNum) ;
            J1939_vidSendDM1(kpktEcuCfg);
            J1939_vidSetCurMainState(kpktEcuCfg, eJ1939_DM1_DELAY);
         }
         else if( u8CurFaultNum > eJ1939_SF_TROUBLE_CODE_NO )
         {
            J1939_vidSendBAM(kpktEcuCfg);
            J1939_vidSendFirstTPDT(kpktEcuCfg);
            J1939_vidTrigCFDelay(kpktEcuCfg, eJ1939_SEND_CONSECUTIVE_FRAME);
         }
         else
         {
            J1939_vidSetCurMainState(kpktEcuCfg, eJ1939_IDLE);
         }
         break;
      }
      case eJ1939_SEND_FIRST_CONSECUTIVE_FRAME:
      {
         J1939_vidSendFirstTPDT(kpktEcuCfg);
         J1939_vidTrigCFDelay(kpktEcuCfg, eJ1939_SEND_CONSECUTIVE_FRAME);
         break;
      }
      case eJ1939_SEND_CONSECUTIVE_FRAME:
      {
         J1939_vidSendFollowTPDT(kpktEcuCfg, &u8CFSendState);
         if(eJ1939_CF_SEND_STATE_END == u8CFSendState)
         {
            J1939_vidSetCurMainState(kpktEcuCfg, eJ1939_DM1_DELAY);
         }
         else
         {
            J1939_vidTrigCFDelay(kpktEcuCfg, eJ1939_SEND_CONSECUTIVE_FRAME);
         }
         break;
      }
      case eJ1939_DM1_DELAY:
      {
         u16TaskCnt = J1939_u16GetTaskCnt(kpktEcuCfg);
         if(u16TaskCnt >= (100u))
         {
            J1939_vidSPNBufInit(kpktEcuCfg);
            J1939_vidClrSpnLogged(kpktEcuCfg);
            J1939_vidSetTaskCnt(kpktEcuCfg, 0);
            J1939_vidSetCurFaultNum(kpktEcuCfg, 0);
            J1939_vidSetCurMainState(kpktEcuCfg, eJ1939_IDLE);
         }
         break;
      }
      default:
      {
         break;
      }
   }

   u8CurMainState = J1939_u8GetCurMainState(kpktEcuCfg);
   if(eJ1939_CONSECUTIVE_FRAME_DELAY == u8CurMainState)
   {
      if(0 == (u16TaskCnt % (6u)))
      {
         J1939_vidSetCurMainState(kpktEcuCfg, J1939_u8GetTgtMainState(kpktEcuCfg));
         J1939_vidSetTgtMainState(kpktEcuCfg, eJ1939_INVALID_STATE);
      }
   }
}
# 223 "bswcdd\\J1939\\J1939TP.c"
void J1939_vidDM1_Periodic_Send_Ctr_Func( boolean Sta )
{
   gs_bDM1_Periodic_Send_En = Sta ;
}




static inline void J1939_vidSPNBufInit(const J1939_EcuCfg * const kpktEcuCfg)
{
   kpktEcuCfg->vidSPNBufInit();
}

static inline boolean J1939_bSpnIsValid(const J1939_FaultCfg * const kpktFaultCfg)
{
   boolean bIsValid = (1 != 0);
   uint16 u16SpnIdx = kpktFaultCfg->u16SPNIdx;

   if(0xFFFFu == u16SpnIdx)
   {
      bIsValid = (0 != 0);
   }

   return bIsValid;
}

static inline boolean J1939_bSpnIsLogged(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg)
{
   boolean bIsLogged = (0 != 0);
   uint16 u16SpnIdx = kpktFaultCfg->u16SPNIdx;
   uint8 u8Group = (uint8)(u16SpnIdx / (sizeof(uint32) * 8));
   uint8 u8GroupIdx = (uint8)(u16SpnIdx % (sizeof(uint32) * 8));

   if((kpktEcuCfg->pau32StateBuf[u8Group] & (0x00000001u << u8GroupIdx)) == (0x00000001u << u8GroupIdx))
   {
      bIsLogged = (1 != 0);
   }

   return bIsLogged;
}

static inline void J1939_vidSetSpnLogged(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg)
{
   uint16 u16SpnIdx = kpktFaultCfg->u16SPNIdx;
   uint8 u8Group = (uint8)(u16SpnIdx / (sizeof(uint32) * 8));
   uint8 u8GroupIdx = (uint8)(u16SpnIdx % (sizeof(uint32) * 8));

   kpktEcuCfg->pau32StateBuf[u8Group] |= (0x00000001u << u8GroupIdx);
}

static inline void J1939_vidClrSpnLogged(const J1939_EcuCfg * const kpktEcuCfg)
{
   uint16 u16SpnNo = kpktEcuCfg->u16SPNNum;
   uint8 u8GroupSize = (uint8)(u16SpnNo / (sizeof(uint32) * 8)) + 1;
   uint8 u8Index;

   for(u8Index = 0; u8Index < u8GroupSize; u8Index++)
   {
      kpktEcuCfg->pau32StateBuf[u8Index] = 0;
   }
}

static inline void J1939_vidTrigCFDelay(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8TgtState)
{
   J1939_vidSetTgtMainState(kpktEcuCfg, ku8TgtState);
   J1939_vidSetCurMainState(kpktEcuCfg, eJ1939_CONSECUTIVE_FRAME_DELAY);
}

static inline void J1939_vidSetTgtMainState(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8State)
{
   kpktEcuCfg->ptVarSet->u8TgtMainState = ku8State;
}

static inline uint8 J1939_u8GetTgtMainState(const J1939_EcuCfg * const kpktEcuCfg)
{
   return kpktEcuCfg->ptVarSet->u8TgtMainState;
}

static inline uint8 J1939_u8GetCurMainState(const J1939_EcuCfg * const kpktEcuCfg)
{
   return kpktEcuCfg->ptVarSet->u8CurMainState;
}

static inline void J1939_vidSetCurMainState(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8State)
{
   kpktEcuCfg->ptVarSet->u8CurMainState = ku8State;
}

static inline uint16 J1939_u16GetTaskCnt(const J1939_EcuCfg * const kpktEcuCfg)
{
   return kpktEcuCfg->ptVarSet->u16TaskCnt;
}

static inline void J1939_vidSetTaskCnt(const J1939_EcuCfg * const kpktEcuCfg, const uint16 ku16TaskCnt)
{
   kpktEcuCfg->ptVarSet->u16TaskCnt = ku16TaskCnt;
}

static inline uint8 J1939_u8GetTxFrameCnt(const J1939_EcuCfg * const kpktEcuCfg)
{
   return kpktEcuCfg->ptVarSet->u8TxFrameCnt;
}

static inline void J1939_vidSetTxFrameCnt(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8TxFrameCnt)
{
   kpktEcuCfg->ptVarSet->u8TxFrameCnt = ku8TxFrameCnt;
}

static inline uint8 J1939_u8GetPackFrameNum(const J1939_EcuCfg * const kpktEcuCfg)
{
   return kpktEcuCfg->ptVarSet->u8PackFrameNum;
}

static inline void J1939_vidSetPackFrameNum(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8PackFrameNum)
{
   kpktEcuCfg->ptVarSet->u8PackFrameNum = ku8PackFrameNum;
}

static inline uint8 J1939_u8GetCurFaultNum(const J1939_EcuCfg * const kpktEcuCfg)
{
   return kpktEcuCfg->ptVarSet->u8CurFaultNum;
}

static inline void J1939_vidSetCurFaultNum(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8CurFaultNum)
{
   kpktEcuCfg->ptVarSet->u8CurFaultNum = ku8CurFaultNum;
}

static inline void J1939_vidSendFirstTPDT(const J1939_EcuCfg * const kpktEcuCfg)
{





   kpktEcuCfg->pau8TPDTTxBuf[0] = 0x01;
   kpktEcuCfg->pau8TPDTTxBuf[1] = 0;
   kpktEcuCfg->pau8TPDTTxBuf[2] = 0;
   kpktEcuCfg->pau8TPDTTxBuf[3] = kpktEcuCfg->pau8SPNBuf[0];
   kpktEcuCfg->pau8TPDTTxBuf[4] = kpktEcuCfg->pau8SPNBuf[1];
   kpktEcuCfg->pau8TPDTTxBuf[5] = kpktEcuCfg->pau8SPNBuf[2];
   kpktEcuCfg->pau8TPDTTxBuf[6] = kpktEcuCfg->pau8SPNBuf[3];
   kpktEcuCfg->pau8TPDTTxBuf[7] = kpktEcuCfg->pau8SPNBuf[4];

   kpktEcuCfg->vidSendTPDT();
   J1939_vidSetTxFrameCnt(kpktEcuCfg, 0x01);
}

static inline void J1939_vidSendFollowTPDT(const J1939_EcuCfg * const kpktEcuCfg, uint8 * const kpu8State)
{
   uint8 u8Index, u8SPNBufIndex;
   uint8 u8TxFrameCnt = J1939_u8GetTxFrameCnt(kpktEcuCfg);
   uint8 u8PackFrameNum = J1939_u8GetPackFrameNum(kpktEcuCfg);

   u8TxFrameCnt++;
   kpktEcuCfg->pau8TPDTTxBuf[0] = u8TxFrameCnt;

   for(u8Index = 1; u8Index < 8; u8Index++)
   {
# 390 "bswcdd\\J1939\\J1939TP.c"
      u8SPNBufIndex = (u8TxFrameCnt - 2) * 7 + 4 + u8Index;
      kpktEcuCfg->pau8TPDTTxBuf[u8Index] = kpktEcuCfg->pau8SPNBuf[u8SPNBufIndex];
   }

   if(u8PackFrameNum == u8TxFrameCnt)
   {
      *kpu8State = eJ1939_CF_SEND_STATE_END;
   }
   else
   {
      *kpu8State = eJ1939_CF_SEND_STATE_CONTINUE;
   }

   kpktEcuCfg->vidSendTPDT();
   J1939_vidSetTxFrameCnt(kpktEcuCfg, u8TxFrameCnt);
}

static inline void J1939_vidSendDM1(const J1939_EcuCfg * const kpktEcuCfg)
{
   kpktEcuCfg->vidSendDM1();
}

static inline void J1939_vidSendBAM(const J1939_EcuCfg * const kpktEcuCfg)
{
   uint8 u8CurFaultNum = J1939_u8GetCurFaultNum(kpktEcuCfg);
   uint16 u16MessageLen = ((uint16)u8CurFaultNum * 4) + 2;
   uint8 u8PackFrameNum;
   uint32 u32PGN = 65226;

   if (u16MessageLen % 7 == 0)
   {
      u8PackFrameNum = u16MessageLen / 7;
   }
   else
   {
      u8PackFrameNum = (u16MessageLen / 7) + 1;
   }

   J1939_vidSetPackFrameNum(kpktEcuCfg, u8PackFrameNum);

   kpktEcuCfg->pau8BAMTxBuf[0] = 0x20;
   kpktEcuCfg->pau8BAMTxBuf[1] = (uint8)u16MessageLen;
   kpktEcuCfg->pau8BAMTxBuf[2] = (uint8)(u16MessageLen >> 8);
   kpktEcuCfg->pau8BAMTxBuf[3] = u8PackFrameNum;
   kpktEcuCfg->pau8BAMTxBuf[4] = kpktEcuCfg->u8FillByte;
   kpktEcuCfg->pau8BAMTxBuf[5] = (uint8)(u32PGN);
   kpktEcuCfg->pau8BAMTxBuf[6] = (uint8)(u32PGN >> 8);
   kpktEcuCfg->pau8BAMTxBuf[7] = (uint8)(u32PGN >> 16);

   kpktEcuCfg->vidSendBAM();
}

static inline void J1939_DM1_Buff_Deal(const J1939_EcuCfg * const kpktEcuCfg, uint8 Nums)
{
   uint8 Fill_Val = kpktEcuCfg->u8FillByte ;
   if( Nums < eJ1939_MF_TROUBLE_CODE_NO_THLD )
   {

      if( Nums == eJ1939_SF_TROUBLE_CODE_NO )
      {
         kpktEcuCfg->pau8DM1TxBuf[0] = Fill_Val;
         kpktEcuCfg->pau8DM1TxBuf[1] = Fill_Val;
         kpktEcuCfg->pau8DM1TxBuf[2] = kpktEcuCfg->pau8SPNBuf[0];
         kpktEcuCfg->pau8DM1TxBuf[3] = kpktEcuCfg->pau8SPNBuf[1];
         kpktEcuCfg->pau8DM1TxBuf[4] = kpktEcuCfg->pau8SPNBuf[2];
         kpktEcuCfg->pau8DM1TxBuf[5] = kpktEcuCfg->pau8SPNBuf[3];
         kpktEcuCfg->pau8DM1TxBuf[6] = Fill_Val;
         kpktEcuCfg->pau8DM1TxBuf[7] = Fill_Val;
      }
      else
      {
         kpktEcuCfg->pau8DM1TxBuf[0] = 0x00u;
         kpktEcuCfg->pau8DM1TxBuf[1] = Fill_Val ;
         kpktEcuCfg->pau8DM1TxBuf[2] = 0x00u;
         kpktEcuCfg->pau8DM1TxBuf[3] = 0x00u;
         kpktEcuCfg->pau8DM1TxBuf[4] = 0x00u;
         kpktEcuCfg->pau8DM1TxBuf[5] = 0x00u;
         kpktEcuCfg->pau8DM1TxBuf[6] = Fill_Val;
         kpktEcuCfg->pau8DM1TxBuf[7] = Fill_Val;
      }
   }
   else
   {
      kpktEcuCfg->pau8DM1TxBuf[0] = 0x5Au ;
      kpktEcuCfg->pau8DM1TxBuf[1] = 0x5Au ;
      kpktEcuCfg->pau8DM1TxBuf[2] = 0x5Au ;
      kpktEcuCfg->pau8DM1TxBuf[3] = 0x5Au ;
      kpktEcuCfg->pau8DM1TxBuf[4] = 0x5Au ;
      kpktEcuCfg->pau8DM1TxBuf[5] = 0x5Au ;
      kpktEcuCfg->pau8DM1TxBuf[6] = 0x5Au ;
      kpktEcuCfg->pau8DM1TxBuf[7] = 0x5Au ;
   }
}
