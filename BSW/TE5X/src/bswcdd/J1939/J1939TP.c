#if 1
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "J1939TP.h"

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
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
   eJ1939_SF_TROUBLE_CODE_NO,        /* Single frame */
   eJ1939_MF_TROUBLE_CODE_NO_THLD
};

enum{
   eJ1939_CF_SEND_STATE_END = 0,
   eJ1939_CF_SEND_STATE_CONTINUE,
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define J1939_CF_DELAY_TIMES          (6u)      /* 6 * 10 = 60ms */
#define J1939_DM1_DELAY_TIMES         (100u)    /* 100 * 10 = 1000ms */

/*******************************************************************************
 ****  Exported Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline uint8   J1939_u8GetTgtMainState(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint8   J1939_u8GetCurMainState(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint16  J1939_u16GetTaskCnt(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint8   J1939_u8GetTxFrameCnt(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint8   J1939_u8GetPackFrameNum(const J1939_EcuCfg * const kpktEcuCfg);
static inline uint8   J1939_u8GetCurFaultNum(const J1939_EcuCfg * const kpktEcuCfg);
static inline void    J1939_vidSendDM1(const J1939_EcuCfg * const kpktEcuCfg);
static inline void    J1939_vidSendBAM(const J1939_EcuCfg * const kpktEcuCfg);
static inline void    J1939_vidSendFirstTPDT(const J1939_EcuCfg * const kpktEcuCfg);
static inline void    J1939_vidSendFollowTPDT(const J1939_EcuCfg * const kpktEcuCfg, uint8 * const kpu8State);
static inline void    J1939_vidTrigCFDelay(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8TgtState);
static inline void    J1939_vidSetTgtMainState(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8State);
static inline void    J1939_vidSetCurMainState(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8State);
static inline void    J1939_vidSetTaskCnt(const J1939_EcuCfg * const kpktEcuCfg, const uint16 ku16TaskCnt);
static inline void    J1939_vidSetTxFrameCnt(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8TxFrameCnt);
static inline void    J1939_vidSetPackFrameNum(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8PackFrameNum);
static inline void    J1939_vidSetCurFaultNum(const J1939_EcuCfg * const kpktEcuCfg, const uint8 ku8CurFaultNum);

static inline boolean J1939_bSpnIsValid(const J1939_FaultCfg * const kpktFaultCfg);
static inline boolean J1939_bSpnIsLogged(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg);
static inline void    J1939_vidSetSpnLogged(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg);
static inline void    J1939_vidClrSpnLogged(const J1939_EcuCfg * const kpktEcuCfg);
static inline void    J1939_vidSPNBufInit(const J1939_EcuCfg * const kpktEcuCfg);
static inline void J1939_DM1_Buff_Deal(const J1939_EcuCfg * const kpktEcuCfg, uint8 Nums) ;

/*******************************************************************************
 **** Private Variable Definitions
 ******************************************************************************/
static boolean gs_bDM1_Periodic_Send_En = FALSE ;

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void J1939_vidSPNHandler(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg)
{
   boolean bIsLogged;
   boolean bIsValid;
   uint16  u16FMI;
   uint32  u32SPN;
   uint8   u8CurFaultNum  = J1939_u8GetCurFaultNum(kpktEcuCfg);
   uint8   u8CurMainState = J1939_u8GetCurMainState(kpktEcuCfg);

   /* 1. Polling all faults for the specified ECU */
   if(eJ1939_IDLE == u8CurMainState)
   {
      bIsValid = J1939_bSpnIsValid(kpktFaultCfg);

      if(TRUE == bIsValid)
      {
         bIsLogged = J1939_bSpnIsLogged(kpktEcuCfg, kpktFaultCfg);
         if(FALSE == bIsLogged)
         {
            J1939_vidSetSpnLogged(kpktEcuCfg, kpktFaultCfg);
            u32SPN = kpktFaultCfg->u32SPN;
            u16FMI = kpktFaultCfg->u16FMI;

            if (u8CurFaultNum < J1939_BAM_FAULT_MAX_NO)
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
   uint16 u16TaskCnt     = J1939_u16GetTaskCnt(kpktEcuCfg);
   uint8  u8CurFaultNum  = J1939_u8GetCurFaultNum(kpktEcuCfg);
   uint8  u8CurMainState = J1939_u8GetCurMainState(kpktEcuCfg);
   uint8  u8CFSendState;

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
         if( (eJ1939_SF_TROUBLE_CODE_NO == u8CurFaultNum) || ((eJ1939_NO_TROUBLE_CODE == u8CurFaultNum)&&(gs_bDM1_Periodic_Send_En == TRUE)) )
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
      case eJ1939_SEND_FIRST_CONSECUTIVE_FRAME:   /* Invalid code */
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
         if(u16TaskCnt >= J1939_DM1_DELAY_TIMES)
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
      if(0 == (u16TaskCnt % J1939_CF_DELAY_TIMES))
      {
         J1939_vidSetCurMainState(kpktEcuCfg, J1939_u8GetTgtMainState(kpktEcuCfg));
         J1939_vidSetTgtMainState(kpktEcuCfg, eJ1939_INVALID_STATE);
      }
   }
}

/**
 * @FuncName: J1939_vidDM1_Periodic_Send_Ctr_Func
 * @Description:  Control the conditions for periodic transmission of J1939-DM1 messages
 * @Author: Wx
 * @Date: 2026-04-26 09:37:34
 * @LastEditTime: 
 * @param {boolean} Sta
 */
void J1939_vidDM1_Periodic_Send_Ctr_Func( boolean Sta )
{
   gs_bDM1_Periodic_Send_En = Sta ;
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static inline void J1939_vidSPNBufInit(const J1939_EcuCfg * const kpktEcuCfg)
{
   kpktEcuCfg->vidSPNBufInit();
}

static inline boolean J1939_bSpnIsValid(const J1939_FaultCfg * const kpktFaultCfg)
{
   boolean bIsValid  = TRUE;
   uint16  u16SpnIdx  = kpktFaultCfg->u16SPNIdx;

   if(0xFFFFu == u16SpnIdx)
   {
      bIsValid = FALSE;
   }

   return bIsValid;
}

static inline boolean J1939_bSpnIsLogged(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg)
{
   boolean bIsLogged  = FALSE;
   uint16  u16SpnIdx  = kpktFaultCfg->u16SPNIdx;
   uint8   u8Group    = (uint8)(u16SpnIdx / J1939_STATE_VAR_BIT_SIZE);
   uint8   u8GroupIdx = (uint8)(u16SpnIdx % J1939_STATE_VAR_BIT_SIZE);

   if((kpktEcuCfg->pau32StateBuf[u8Group] & (0x00000001u << u8GroupIdx)) == (0x00000001u << u8GroupIdx))
   {
      bIsLogged = TRUE;
   }

   return bIsLogged;
}

static inline void J1939_vidSetSpnLogged(const J1939_EcuCfg * const kpktEcuCfg, const J1939_FaultCfg * const kpktFaultCfg)
{
   uint16  u16SpnIdx  = kpktFaultCfg->u16SPNIdx;
   uint8   u8Group    = (uint8)(u16SpnIdx / J1939_STATE_VAR_BIT_SIZE);
   uint8   u8GroupIdx = (uint8)(u16SpnIdx % J1939_STATE_VAR_BIT_SIZE);

   kpktEcuCfg->pau32StateBuf[u8Group] |= (0x00000001u << u8GroupIdx);
}

static inline void J1939_vidClrSpnLogged(const J1939_EcuCfg * const kpktEcuCfg)
{
   uint16  u16SpnNo    = kpktEcuCfg->u16SPNNum;
   uint8   u8GroupSize = (uint8)(u16SpnNo / J1939_STATE_VAR_BIT_SIZE) + 1;
   uint8   u8Index;

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
   /* First frame : FrameCtr = 1.
    *               StartIndex = 0,
    *               Length 5 Bytes,
    *               EndIndex = 4.
    */
   kpktEcuCfg->pau8TPDTTxBuf[0] = 0x01;
   kpktEcuCfg->pau8TPDTTxBuf[1] = 0; //LampStatus;
   kpktEcuCfg->pau8TPDTTxBuf[2] = 0; //LampStatus;
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
   uint8  u8Index, u8SPNBufIndex;
   uint8  u8TxFrameCnt   = J1939_u8GetTxFrameCnt(kpktEcuCfg);
   uint8  u8PackFrameNum = J1939_u8GetPackFrameNum(kpktEcuCfg);

   u8TxFrameCnt++;
   kpktEcuCfg->pau8TPDTTxBuf[0] = u8TxFrameCnt;

   for(u8Index = 1; u8Index < 8; u8Index++)
   {
      /* SPNBufIndex  = (FrameCtr - 2) * 7 + 4 + u8Index; (u8Index : 1 ~ 7)
       * Second frame : FrameCtr   = 2.
       *                StartIndex = (2 - 2) * 7 + 4 + 1 = 5.
       *                EndIndex   = (2 - 2) * 7 + 4 + 7 = 11.
       * Third frame  : FrameCtr   = 3.
       *                StartIndex = (3 - 2) * 7 + 4 + 1 = 12.
       *                EndIndex   = (3 - 2) * 7 + 4 + 7 = 18.
       */
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
   uint8  u8CurFaultNum  = J1939_u8GetCurFaultNum(kpktEcuCfg);
   uint16 u16MessageLen  = ((uint16)u8CurFaultNum * J1939_FAULT_CODE_SIZE) + J1939_LAMP_STATUS_SIZE;
   uint8  u8PackFrameNum;
   uint32 u32PGN = 65226; /*PGN:65226 -> FECA*/

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
      // Single-frame fault code transmission 
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
      else  // Fault-free state transmission 
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
   else // Handling of abnormal function calls
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

#endif

