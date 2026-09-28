/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Com.h"
#include "Com_Cbk.h"
#include "CAN01_DEF.h"

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"
/****************************************************************************
 *
 * !FuncName    : BSW_Calculate_CheckSum
 * !Description : Calculate the value of the CAN signal after verification
 * !Input       :
 * !Reference   : NONE
 *****************************************************************************
 * !LastAuthor  : zzx
 *****************************************************************************/
static uint8 BSW_Calculate_CheckSum(const uint8 *pData, 
                                          uint8 Size, 
                                          uint32 messageID , 
                                          uint8 u8_RCnt)
{
   uint8 Checksum = 0u;
   uint8 Ret = 0u;
   uint32 messageIdBytes[4];
   uint8 i;

    messageIdBytes[0] = (messageID >> 24) & 0xFF;
    messageIdBytes[1] = (messageID >> 16) & 0xFF;
    messageIdBytes[2] = (messageID >> 8) & 0xFF;
    messageIdBytes[3] = messageID & 0xFF;

   if (pData != 0u)
   {
      while (Size > 0u)
      {
         Size--;
         Checksum = Checksum + pData[Size];
      }

      Checksum = (u8_RCnt & 0x0F) + Checksum;

      for(i = 0; i < 4; i++)
      {
         Checksum = Checksum + messageIdBytes[i];
      }

      Checksum = (Checksum >> 4) + Checksum; 
      Ret = Checksum & 0x0F;
   }

   return Ret;
}

/********************************************
*
* !FuncName   : Bsw_IPduCallout
* !Description :  Valid Rx message
*
********************************************/
boolean Bsw_IPduCallout_CanNodeNum_01_Rx_05(PduIdType id, const PduInfoType * ptr)
{
   uint8 u8Checksum = 0;
   uint8 u8LocRcTmp = 0;
   uint32 u32MsgID = 0x18FF9C27;
   uint8 u8_RCnt = 0;

   u8_RCnt  = ((ptr->SduDataPtr[7]) & 0xF0) >> 4 ;                 /* Get message RC */
   if(TRUE == CAN01_bE2ERxValidC)
   {
      u8Checksum = BSW_Calculate_CheckSum(ptr->SduDataPtr,7,u32MsgID,u8_RCnt); /* When RC is normal, the CheckSum is calculated */
      if((((ptr->SduDataPtr[7]) & 0x0F) >> 4 ) == u8Checksum)
      {
         CAN01_bCsumErrFlag_SGRx5Req = FALSE;
         CAN01_u8Rx5RcErrCnt = 0;
      }
      else
      {
         /* !Comment: Checksum error counter over time. value = 1~5. */
         if (CAN01_u8Rx5CsumErrCnt < (CAN01_u8ChecksumErrThdC - 1))
         {
            CAN01_u8Rx5CsumErrCnt++;
         }
         else
         {
            CAN01_bCsumErrFlag_SGRx5Req = TRUE;
            CAN01_bRcCsErrFlagReq = TRUE;
         }
      }

      /* !Comment: Rolling counter diagnostic. */
      CAN01_u8Rx5RollingCod = u8_RCnt;
      /* !What value to & depends on signal bits of Counter's. */
      u8LocRcTmp = (CAN01_u8Rx5RcLast + 1) & 0x0F;
      if(CAN01_u8Rx5RollingCod == CAN01_u8Rx5RcLast)
      {
         CAN01_u8Rx5RcErrCnt = 0;
         if(CAN01_u8Rx5RcUnchangedErrCnt < (CAN01_u8RCUnchgErrThdC - 1))
         {
            CAN01_u8Rx5RcUnchangedErrCnt++;
         }
         else
         {
            CAN01_bRcErrFlag_SGRx5Req = TRUE;
            CAN01_bRcCsErrFlagReq = TRUE;
         }
      }
      else if (CAN01_u8Rx5RollingCod != u8LocRcTmp )
      {
         CAN01_u8Rx5RcUnchangedErrCnt = 0;
         if (CAN01_u8Rx5RcErrCnt < (CAN01_u8RcJumpErrThdC - 1))
         {
            CAN01_u8Rx5RcErrCnt++;
         }
         else
         {
            CAN01_bRcErrFlag_SGRx5Req = TRUE;
            CAN01_bRcCsErrFlagReq = TRUE;
         }
      }
      else
      {
         CAN01_u8Rx5RcErrCnt = 0;
         CAN01_u8Rx5RcUnchangedErrCnt = 0;
         CAN01_bRcErrFlag_SGRx5Req = FALSE;
      }

      CAN01_u8Rx5RcLast = CAN01_u8Rx5RollingCod;
   }
   else
   {
      CAN01_bRcErrFlag_SGRx5Req  = TRUE;
      CAN01_bRcCsErrFlagReq      = TRUE;
   }
   return TRUE;
}

boolean Bsw_IPduCallout_CanNodeNum_01_Rx_06(PduIdType id, const PduInfoType * ptr)
{
   uint8 u8Checksum = 0;
   uint8 u8LocRcTmp = 0;
   uint32 u32MsgID = 0x0CFF8D27;
   uint8 u8_RCnt = 0;

   u8_RCnt  = ((ptr->SduDataPtr[7]) & 0xF0) >> 4 ;                 /* Get message RC */
   if(TRUE == CAN01_bE2ERxValidC)
   {
      u8Checksum = BSW_Calculate_CheckSum(ptr->SduDataPtr,7,u32MsgID,u8_RCnt); /* When RC is normal, the CheckSum is calculated */
      if((((ptr->SduDataPtr[7]) & 0x0F) >> 4 ) == u8Checksum)
      {
         CAN01_bCsumErrFlag_SGRx6Req = FALSE;
         CAN01_u8Rx6RcErrCnt = 0;
      }
      else
      {
         /* !Comment: Checksum error counter over time. value = 1~5. */
         if (CAN01_u8Rx6CsumErrCnt < (CAN01_u8ChecksumErrThdC - 1))
         {
            CAN01_u8Rx6CsumErrCnt++;
         }
         else
         {
            CAN01_bCsumErrFlag_SGRx6Req = TRUE;
            CAN01_bRcCsErrFlagReq = TRUE;
         }
      }

      /* !Comment: Rolling counter diagnostic. */
      CAN01_u8Rx6RollingCod = u8_RCnt;
      /* !What value to & depends on signal bits of Counter's. */
      u8LocRcTmp = (CAN01_u8Rx6RcLast + 1) & 0x0F;
      if(CAN01_u8Rx6RollingCod == CAN01_u8Rx6RcLast)
      {
         CAN01_u8Rx6RcErrCnt = 0;
         if(CAN01_u8Rx6RcUnchangedErrCnt < (CAN01_u8RCUnchgErrThdC - 1))
         {
            CAN01_u8Rx6RcUnchangedErrCnt++;
         }
         else
         {
            CAN01_bRcErrFlag_SGRx6Req = TRUE;
            CAN01_bRcCsErrFlagReq = TRUE;
         }
      }
      else if (CAN01_u8Rx6RollingCod != u8LocRcTmp )
      {
         CAN01_u8Rx6RcUnchangedErrCnt = 0;
         if (CAN01_u8Rx6RcErrCnt < (CAN01_u8RcJumpErrThdC - 1))
         {
            CAN01_u8Rx6RcErrCnt++;
         }
         else
         {
            CAN01_bRcErrFlag_SGRx6Req = TRUE;
            CAN01_bRcCsErrFlagReq = TRUE;
         }
      }
      else
      {
         CAN01_u8Rx6RcErrCnt = 0;
         CAN01_u8Rx6RcUnchangedErrCnt = 0;
         CAN01_bRcErrFlag_SGRx6Req = FALSE;
      }

      CAN01_u8Rx6RcLast = CAN01_u8Rx6RollingCod;
   }
   else
   {
      CAN01_bRcErrFlag_SGRx6Req  = TRUE;
      CAN01_bRcCsErrFlagReq      = TRUE;
   }
   return TRUE;
}

boolean Bsw_IPduCallout_CanNodeNum_01_Rx_08(PduIdType id, const PduInfoType * ptr)
{
   uint8 u8Checksum = 0;
   uint8 u8LocRcTmp = 0;
   uint32 u32MsgID = 0x0CFF9027;
   uint8 u8_RCnt = 0;

   u8_RCnt  = ((ptr->SduDataPtr[7]) & 0xF0) >> 4 ;                 /* Get message RC */
   if(TRUE == CAN01_bE2ERxValidC)
   {
      u8Checksum = BSW_Calculate_CheckSum(ptr->SduDataPtr,7,u32MsgID,u8_RCnt); /* When RC is normal, the CheckSum is calculated */
      if((((ptr->SduDataPtr[7]) & 0x0F) >> 4 ) == u8Checksum)
      {
         CAN01_bCsumErrFlag_SGRx8Req = FALSE;
         CAN01_u8Rx8RcErrCnt = 0;
      }
      else
      {
         /* !Comment: Checksum error counter over time. value = 1~5. */
         if (CAN01_u8Rx8CsumErrCnt < (CAN01_u8ChecksumErrThdC - 1))
         {
            CAN01_u8Rx8CsumErrCnt++;
         }
         else
         {
            CAN01_bCsumErrFlag_SGRx8Req = TRUE;
            CAN01_bRcCsErrFlagReq = TRUE;
         }
      }

      /* !Comment: Rolling counter diagnostic. */
      CAN01_u8Rx8RollingCod = u8_RCnt;
      /* !What value to & depends on signal bits of Counter's. */
      u8LocRcTmp = (CAN01_u8Rx8RcLast + 1) & 0x0F;
      if(CAN01_u8Rx8RollingCod == CAN01_u8Rx8RcLast)
      {
         CAN01_u8Rx8RcErrCnt = 0;
         if(CAN01_u8Rx8RcUnchangedErrCnt < (CAN01_u8RCUnchgErrThdC - 1))
         {
            CAN01_u8Rx8RcUnchangedErrCnt++;
         }
         else
         {
            CAN01_bRcErrFlag_SGRx8Req = TRUE;
            CAN01_bRcCsErrFlagReq = TRUE;
         }
      }
      else if (CAN01_u8Rx8RollingCod != u8LocRcTmp )
      {
         CAN01_u8Rx8RcUnchangedErrCnt = 0;
         if (CAN01_u8Rx8RcErrCnt < (CAN01_u8RcJumpErrThdC - 1))
         {
            CAN01_u8Rx8RcErrCnt++;
         }
         else
         {
            CAN01_bRcErrFlag_SGRx8Req = TRUE;
            CAN01_bRcCsErrFlagReq = TRUE;
         }
      }
      else
      {
         CAN01_u8Rx8RcErrCnt = 0;
         CAN01_u8Rx8RcUnchangedErrCnt = 0;
         CAN01_bRcErrFlag_SGRx8Req = FALSE;
      }

      CAN01_u8Rx8RcLast = CAN01_u8Rx8RollingCod;
   }
   else
   {
      CAN01_bRcErrFlag_SGRx8Req  = TRUE;
      CAN01_bRcCsErrFlagReq      = TRUE;
   }
   return TRUE;
}
#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
