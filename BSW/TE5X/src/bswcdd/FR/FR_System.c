/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "FR_Hal.h"
#include "FR_System.h"
#include "FR_EcuSetCfg.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef enum{
   FR_EVENT_WRITE_IDLE = 0,
   FR_EVENT_WRITE_ONGOING
}FR_EventWriteState;
   
typedef enum{
   FR_GEN_HEAD = 0,
   FR_WRITE_FIX_HEAD,
   FR_WRITE_BUF_INDEX,
   FR_WRITE_USER_HEAD
}FR_HeadWriteState;
   
typedef enum{
   FR_CMD_IDLE_STATE = 0,
   FR_CMD_EXE_STATE  = 0x55,
   FR_CMD_ACCEPT_STATE = 0xAA,
}FR_CmdState;
   
typedef enum{
   FR_GET_OLD_BLOCK_ID = 0,
   FR_SET_ERASE_CMD,
   FR_WRITE_NEW_BLOCK_HEAD,
   FR_WRITE_EVENT,
   FR_WRITE_END
}FR_MainWriteState;
   
typedef enum{
   FR_IDLE = 0,
   FR_PARSE_CMD,
   FR_WRITE_ONGOING,
   FR_MEM_CLEAR_ONGOING,
   FR_WRITE_EXIT_DELAY,
   FR_ERASE_EXIT_DELAY,
   FR_CMD_EXE_END
}FR_MainState;

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint32 FR_u32OpTimeoutCtr;
static uint32 FR_u32EraseDelayCtr;
static uint8  FR_u8ClearReq;
static FR_StateMSet FR_xStateSet;

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline void    FR_vidResetToutCtr(void);
static inline boolean FR_bGetStroePermission(const FR_Cfg * const kpktCfg);
static inline void    FR_vidResetStateMachine(void);
static inline void    FR_vidClearBufBusyState(const FR_Cfg * const kpktCfg);
static inline void    FR_vidStoredCallout(const FR_Cfg * const kpktCfg);
static inline void    FR_vidGenHeadCallout(const FR_Cfg * const kpktCfg);
static inline void    FR_vidSetValidBlockCtr(const FR_Cfg * const kpktCfg, const uint8 ku8Ctr);
static inline boolean FR_bClearNvm(void);
static inline void    FR_vidEraseDelayHandle(void);
static inline const FR_Cfg *FR_kptGetValidEcuCfg(void);

static uint8   FR_u8GetOldBlock(const FR_Cfg * const kpktCfg);
static boolean FR_bWriteHead(const FR_Cfg * const kpktCfg);
static boolean FR_bWriteEvent(const FR_Cfg * const kpktCfg, const uint8 ku8BlockIndex);
static boolean FR_bMainWriteFunction(const FR_Cfg * const kpktCfg);

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  FR_vidModuleInit
 * Description      :  1. Module init
 *                     2. Initialize the state machine
 *                     3. Initialize the buffer state
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/10/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void FR_vidModuleInit(void)
{
   uint8 u8Index;
   
   FR_u32EraseDelayCtr = 0;
   FR_u8ClearReq = FR_CMD_IDLE_STATE;
   FR_xStateSet.u8MainState = FR_IDLE;

   FR_vidResetToutCtr();
   FR_vidResetStateMachine();

   for(u8Index = 0; u8Index < eFR_ECU_MAX_NUM; u8Index++)
   {
      FR_aktEcuGroupCfg[u8Index].ptFixHead->tHead.u16Version = 0x1000;
      FR_vidInitInputBufState(&FR_aktEcuGroupCfg[u8Index]);
   }
}

/**********************************************************************
 * Function name    :  FR_vidTrigClearNvm
 * Description      :  1. Clear fault data
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/10/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void FR_vidTrigClearNvm(void)
{
   FR_u32EraseDelayCtr = 2000;       /* Delay 2S */
   FR_u8ClearReq       = FR_CMD_ACCEPT_STATE;
}

/**********************************************************************
 * Function name    :  FR_vidMainFunction
 * Description      :  1. The ECU's NVM request processing state machine
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
void FR_vidMainFunction(void)
{
   static uint32 FR_u32ExitTimeCtr   = 0;
   static const FR_Cfg * pktValidCfg = NULL_PTR;

   boolean bOpResult = FALSE;

   switch(FR_xStateSet.u8MainState)
   {
      case FR_IDLE:
      {
         /* 1. Erase delay handle */
         FR_vidEraseDelayHandle();

         /* 2. Get valid ECU cfg handler */         
         if(FR_CMD_EXE_STATE == FR_u8ClearReq)
         {
            FR_xStateSet.u8MainState = FR_MEM_CLEAR_ONGOING;
         }
         else
         {
            pktValidCfg = FR_kptGetValidEcuCfg();
            if(NULL_PTR != pktValidCfg)
            {
               FR_xStateSet.u8MainState = FR_WRITE_ONGOING;
            }
         }
         break;
      }
      case FR_MEM_CLEAR_ONGOING:
      {
         bOpResult = FR_bClearNvm();
         if(TRUE == bOpResult)
         {
            FR_u32ExitTimeCtr = 100;
            FR_xStateSet.u8MainState = FR_ERASE_EXIT_DELAY;
            FR_u8ClearReq = FR_CMD_IDLE_STATE;
         }
         break;
      }
      case FR_WRITE_ONGOING:
      {
         bOpResult = FR_bMainWriteFunction(pktValidCfg);
         if(TRUE == bOpResult)
         {
            FR_u32ExitTimeCtr = 50;
            FR_xStateSet.u8MainState = FR_WRITE_EXIT_DELAY;
         }
         break;
      }
      case FR_WRITE_EXIT_DELAY:
      {
         if(FR_u32ExitTimeCtr > 0)
         {
            FR_u32ExitTimeCtr--;
            FR_vidResetToutCtr();
         }
         else
         {
            FR_vidClearBufBusyState(pktValidCfg);
            FR_xStateSet.u8MainState = FR_IDLE;
            pktValidCfg = NULL_PTR;
         }
         break;
      }
      case FR_ERASE_EXIT_DELAY:
      {
         if(FR_u32ExitTimeCtr > 0)
         {
            FR_u32ExitTimeCtr--;
            FR_vidResetToutCtr();
         }
         else
         {
            FR_xStateSet.u8MainState = FR_IDLE;
            pktValidCfg = NULL_PTR;
         }
         break;
      }
      default:
      {
         FR_xStateSet.u8MainState = FR_IDLE;
         break;
      }
   }

   if(FR_IDLE != FR_xStateSet.u8MainState)
   {
      if(FR_u32OpTimeoutCtr < FR_ERROR_TIMEOUT)
      {
         FR_u32OpTimeoutCtr++;
      }
      else
      {
         if(NULL_PTR != pktValidCfg)
         {
            FR_vidStoredCallout(pktValidCfg);
            FR_vidClearBufBusyState(pktValidCfg);
         }
         FR_xStateSet.u8MainState = FR_IDLE;
      }
   }
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  FR_vidClearBufBusyState
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/11/16       V1.0        Zyx        Create
 ***********************************************************************/ 
static inline void FR_vidClearBufBusyState(const FR_Cfg * const kpktCfg)
{
   uint8 u8BitMask = FR_BUFFER_BUSY_STATUS_BITMASK;
   FR_vidClearBitBufferStatus(kpktCfg, u8BitMask);
}

/**********************************************************************
 * Function name    :  FR_vidResetToutCtr
 * Description      :  1. Reset timeout count
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/10/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static inline void FR_vidResetToutCtr(void)
{
   FR_u32OpTimeoutCtr = 0;
}

/**********************************************************************
 * Function name    :  FR_bGetStroePermission
 * Description      :  1. Scan buffer state
 *                     2. Check the user-defined storage conditions for the current ECU
 * Input parameter  :  kpktCfg : ECU configuration handle
 * Output parameter :  No
 * return           :  boolean : Storage enabled state
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline boolean FR_bGetStroePermission(const FR_Cfg * const kpktCfg)
{
   boolean bOpResult;
   boolean bResetCmd   = FALSE;
   boolean bReturnFlag = FALSE;
   uint8   u8BitMask   = ~(0xFF << kpktCfg->pktBankUserCfg->u8BufNum);

   bOpResult = (FR_u8GetFullState(kpktCfg, u8BitMask) == u8BitMask);

   /* VCU timeout, No installation on the vehicle, can not store */
   if(TRUE == bOpResult)
   {
      bReturnFlag = kpktCfg->pktBankUserCfg->pktBankUserIf->bExtStoreCondIsMet(&bResetCmd);
      if((FALSE == bReturnFlag)
      && (TRUE  == bResetCmd))
      {
         FR_vidStoredCallout(kpktCfg);
         FR_vidClearBufBusyState(kpktCfg);
      }
   }

   return bReturnFlag;
}

/**********************************************************************
 * Function name    :  FR_vidResetStateMachine
 * Description      :  1. Reset each state machine
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidResetStateMachine(void)
{
   FR_xStateSet.u8EventWriteState = FR_EVENT_WRITE_IDLE;
   FR_xStateSet.u8HeadWriteState  = FR_GEN_HEAD;
   FR_xStateSet.u8FRStoreState    = FR_GET_OLD_BLOCK_ID;
}

/**********************************************************************
 * Function name    :  FR_vidStoredCallout
 * Description      :  Mark data end ptr
 * Input parameter  :  kpktCfg : ECU configuration handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidStoredCallout(const FR_Cfg * const kpktCfg)
{
   uint8 u8BitMask = FR_BUFFER_TRIGGER_ACCEPT_STATUS_BITMASK;

   /* Set saved state */
   FR_vidResetStateMachine();

   FR_vidClearBitBufferStatus(kpktCfg, u8BitMask);

   u8BitMask = ~(0xFF << kpktCfg->pktBankUserCfg->u8BufNum);
   FR_vidClearFullState(kpktCfg, u8BitMask);
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  kpktCfg : ECU configuration handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidGenHeadCallout(const FR_Cfg * const kpktCfg)
{
   /* Gen head */   
   kpktCfg->pktBankUserCfg->pktBankUserIf->vidGetUserHeadInfo(kpktCfg->pktBankUserCfg->pktUserHeadCfg);
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  kpktCfg : ECU configuration handle
 *                     ku8Ctr  : Serial number of the block to be written
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidSetValidBlockCtr(const FR_Cfg * const kpktCfg, const uint8 ku8Ctr)
{
   kpktCfg->ptFixHead->tHead.u8BlockCtr = ku8Ctr;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  kpktCfg : ECU configuration handle
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static uint8 FR_u8GetOldBlock(const FR_Cfg * const kpktCfg)
{
   uint8 u8CurBlockCtr   = 0;
   uint8 u8LastBlockCtr  = 0;
   uint8 u8Index         = 0;
   uint8 u8BlockID       = kpktCfg->u8NvmStartIndex;
   uint8 u8ObjBlockIndex = FR_INVALID_BLOCK_CTR;
   
   FR_vidSetValidBlockCtr(kpktCfg, u8ObjBlockIndex);

#if (FALSE == FR_MEM_FULL_CHECK_ENABLE)
   boolean bIsSecTravelsal = FALSE;
#endif
   while(u8Index < kpktCfg->u8NvmBlockNum)
   {
      u8CurBlockCtr = FR_u8HalReadBlockCtr(u8BlockID + u8Index);
   
      if(FR_INVALID_BLOCK_CTR != u8CurBlockCtr)
      {
         /* Block data invalid */
         if(0 == u8CurBlockCtr)
         {
            /* Block ctr table :
             * |1|2|3|0|0|
             * 
             */
            FR_vidSetValidBlockCtr(kpktCfg, u8LastBlockCtr + 1);
            u8ObjBlockIndex = u8BlockID + u8Index;
            break;
         }
#if (FALSE == FR_MEM_FULL_CHECK_ENABLE)
         if(u8LastBlockCtr > u8CurBlockCtr)
         {
            /* Block ctr table :
             * |6|7|3|4|5|
             * 
             */
            /* Update next counter */
            FR_vidSetValidBlockCtr(kpktCfg, u8LastBlockCtr + 1);
            u8ObjBlockIndex = u8BlockID + u8Index;
            break;
         }
#endif
         u8LastBlockCtr = u8CurBlockCtr;
      }
      /* Update block index */
      u8Index++;

#if (FALSE == FR_MEM_FULL_CHECK_ENABLE)
      if((kpktCfg->u8NvmBlockNum == u8Index)
      || (FALSE == bIsSecTravelsal))
      {
         /* Block ctr table :
          * |1|2|3|4|5|
          * On the first traversal, the historical count is always greater than the current count, so a second traversal is required.
          */
         bIsSecTravelsal = TRUE;
         u8Index = 0;
      }
#endif
   }
   
   return u8ObjBlockIndex;
}

/**********************************************************************
 * Function name    :  FR_vSetEndPtr
 * Description      :  Mark data end ptr
 * Input parameter  :  kpktCfg : ECU configuration handle
 * Output parameter :  No
 * return           :  bWrtieDoneFlag :
 *                                TRUE: Head write success
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean FR_bWriteHead(const FR_Cfg * const kpktCfg)
{
   uint8   u8OpState;
   boolean bOpResult    = FALSE;
   boolean bIsWriteDone = FALSE;

   switch(FR_xStateSet.u8HeadWriteState)
   {
      case FR_GEN_HEAD:
      {
         FR_vidResetToutCtr();
         FR_vidGenHeadCallout(kpktCfg);
         FR_xStateSet.u8HeadWriteState = FR_WRITE_FIX_HEAD;
         break;
      }
      case FR_WRITE_FIX_HEAD:
      {
         bOpResult = FR_bHalWriteFixHead((const uint8 *)kpktCfg->ptFixHead);
         
         if(TRUE == bOpResult)
         {
            FR_vidResetToutCtr();
            FR_xStateSet.u8HeadWriteState = FR_WRITE_BUF_INDEX;
         }
         break;
      }
      case FR_WRITE_BUF_INDEX:
      {
         bOpResult = FR_bHalWriteBufIndex(kpktCfg->pktBankUserCfg, &u8OpState);

         if(TRUE == bOpResult)
         {
            FR_vidResetToutCtr();
            if(eFR_HAL_WRTIE_DONE == u8OpState)
            {
               FR_xStateSet.u8HeadWriteState = FR_WRITE_USER_HEAD;
            }
         }
         break;
      }
      case FR_WRITE_USER_HEAD:
      {
         bOpResult = FR_bHalWriteUserHead(kpktCfg->pktBankUserCfg, &u8OpState);
         
         if(TRUE == bOpResult)
         {
            FR_vidResetToutCtr();
            if(eFR_HAL_WRTIE_DONE == u8OpState)
            {
               bIsWriteDone = TRUE;
               FR_xStateSet.u8HeadWriteState = FR_GEN_HEAD;
            }
         }
         break;
      }
      default:
      {
         bIsWriteDone = TRUE;
         FR_xStateSet.u8HeadWriteState = FR_GEN_HEAD;
         break;
      }
   }
   
   return bIsWriteDone;
}

/**********************************************************************
 * Function name    :  FR_bWriteEvent
 * Description      :  1. Write event buffer
 * Input parameter  :  kpktCfg : ECU configuration handle
 *                     ku8BlockIndex : 
 * Output parameter :  No
 * return           :  boolean : Write result
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean FR_bWriteEvent(const FR_Cfg * const kpktCfg, const uint8 ku8BlockIndex)
{
   uint8   u8OpState;
   boolean bOpResult    = FALSE;
   boolean bIsWriteDone = FALSE;
   
   switch (FR_xStateSet.u8EventWriteState)
   {
      case FR_EVENT_WRITE_IDLE:
      {
         FR_vidResetToutCtr();
         FR_xStateSet.u8EventWriteState = FR_EVENT_WRITE_ONGOING;
         break;
      }
      case FR_EVENT_WRITE_ONGOING:
      {
         bOpResult = FR_bHalWriteEvent(kpktCfg->pktBankUserCfg, &u8OpState);

         if(TRUE == bOpResult)
         {
            FR_vidResetToutCtr();
            if(eFR_HAL_WRTIE_DONE == u8OpState)
            {
               FR_xStateSet.u8EventWriteState = FR_EVENT_WRITE_IDLE;
            }
         }
         break;
      }
      default:
      {
         FR_xStateSet.u8EventWriteState = FR_EVENT_WRITE_IDLE;
         break;
      }
   }

   if(FR_EVENT_WRITE_IDLE == FR_xStateSet.u8EventWriteState)
   {
      bIsWriteDone = TRUE;
   }

   return bIsWriteDone;
}

/**********************************************************************
 * Function name    :  FR_bMainWriteFunction
 * Description      :  1. NVM write handler
 * Input parameter  :  kpktCfg : ECU configuration handle
 * Output parameter :  No
 * return           :  boolean : Write result
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static boolean FR_bMainWriteFunction(const FR_Cfg * const kpktCfg)
{
   static uint8 u8BlockIndex = 0;
   boolean bOpResult    = FALSE;
   boolean bIsWriteDone = FALSE;
   
   switch(FR_xStateSet.u8FRStoreState)
   {
      /* 1. Get old block */
      case FR_GET_OLD_BLOCK_ID:
      {
         u8BlockIndex = FR_u8GetOldBlock(kpktCfg);

         if(FR_INVALID_BLOCK_CTR != u8BlockIndex)
         {
            FR_xStateSet.u8FRStoreState = FR_SET_ERASE_CMD;
            FR_vidResetToutCtr();
         }
         else
         {   
            /* Full not allow to write Dflash */
            bIsWriteDone = TRUE;
            FR_vidStoredCallout(kpktCfg);
         }
         break;
      }
      /* 2. Trigger erase */
      case FR_SET_ERASE_CMD:
      {
#if (FALSE == FR_MEM_FULL_CHECK_ENABLE)
         bOpResult = FR_bHalClaerNvmBlock(kpktCfg->pktBankUserCfg, u8BlockIndex);   
         if(TRUE == bOpResult)
#else
         FR_vidHalUpdateCmd(kpktCfg->pktBankUserCfg, u8BlockIndex);
#endif
         {
            FR_xStateSet.u8FRStoreState = FR_WRITE_EVENT;
            FR_vidResetToutCtr();
         }
         break;
      }
      /* 3. Write flash */
      case FR_WRITE_EVENT:
      {
         bOpResult = FR_bWriteEvent(kpktCfg, u8BlockIndex);
         if(TRUE == bOpResult)
         {
            FR_xStateSet.u8FRStoreState = FR_WRITE_NEW_BLOCK_HEAD;
         }
         break;
      }
      /* 4. Generate and write new block header */
      case FR_WRITE_NEW_BLOCK_HEAD:
      {
         bOpResult = FR_bWriteHead(kpktCfg);
         if(TRUE == bOpResult)
         {
            FR_vidStoredCallout(kpktCfg);
            FR_xStateSet.u8FRStoreState = FR_WRITE_END;
         }
         break;
      }
      case FR_WRITE_END:
      {
         bIsWriteDone = TRUE;
         FR_vidResetStateMachine();
         break;
      }
      default:
      {
         break;
      }
   }   

   return bIsWriteDone;
}

/**********************************************************************
 * Function name    :  FR_bClearNvm
 * Description      :  1. Erases all ECU NVM storage blocks
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  boolean : Erase result
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline boolean FR_bClearNvm(void)
{
   static uint8 u8BlockIndex = 0;
   uint8 u8BlockIndexLast = u8BlockIndex;
   boolean bIsClrDone = FR_bHalClearAllNvmBlock(&u8BlockIndex);

   if(TRUE == bIsClrDone)
   {
      u8BlockIndex = 0;
   }
   else if (u8BlockIndexLast != u8BlockIndex)
   {
      FR_vidResetToutCtr();
   }

   return bIsClrDone;
}

/**********************************************************************
 * Function name    :  FR_vidEraseDelayHandle
 * Description      :  1. Erases the delay handler function
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline void FR_vidEraseDelayHandle(void)
{
   if(FR_CMD_ACCEPT_STATE == FR_u8ClearReq)
   {
      if(FR_u32EraseDelayCtr > 0)
      {
         FR_u32EraseDelayCtr--;
      }
      else
      {
         FR_u8ClearReq = FR_CMD_EXE_STATE;
      }
   }
}

/**********************************************************************
 * Function name    :  FR_kptGetValidEcuCfg
 * Description      :  1. Gets the ECU configuration handle that has triggered the NVM request
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  const FR_Cfg * : The ECU configuration handle that triggers the NVM request
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/10/24	     V1.0	     Zyx	       Create
 ***********************************************************************/ 
static inline const FR_Cfg *FR_kptGetValidEcuCfg(void)
{
   uint8 u8Index;
   const FR_Cfg * ptCfg       = NULL_PTR;
   const FR_Cfg * pktValidCfg = NULL_PTR;

   for(u8Index = 0; u8Index < eFR_ECU_MAX_NUM; u8Index++)
   {
      ptCfg = &FR_aktEcuGroupCfg[u8Index];
      if(FR_bGetStroePermission(ptCfg))
      {
         pktValidCfg = ptCfg;
         break;
      }
   }

   return pktValidCfg;
}

