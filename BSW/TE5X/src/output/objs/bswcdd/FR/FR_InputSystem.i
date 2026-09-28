# 1 "bswcdd\\FR\\FR_InputSystem.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\FR\\FR_InputSystem.c"
# 9 "bswcdd\\FR\\FR_InputSystem.c"
# 1 "bswcdd\\FR\\FR_InputSystem.h" 1
# 11 "bswcdd\\FR\\FR_InputSystem.h"
# 1 "bswcdd\\FR\\FR_Types.h" 1






# 1 "bswcdd\\FR\\FR_PublicTypes.h" 1






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
# 8 "bswcdd\\FR\\FR_PublicTypes.h" 2
# 20 "bswcdd\\FR\\FR_PublicTypes.h"
typedef struct FR_tTimestamp{
   uint16 u16Year;
   uint8 u8Month;
   uint8 u8Day;
   uint8 u8Hour;
   uint8 u8Minute;
   uint8 u8Second;
}FR_tTimestamp;

typedef struct FR_tExtDataOfFixHead{
   FR_tTimestamp tTime;
   uint32 u32Start2ErrTime_ms;
   uint32 u32FactoryRunTime_s;
}FR_tExtDataOfFixHead;

typedef struct FR_BufIndex{
   volatile uint32 u32BufAddr;
   volatile uint32 u32W;
   volatile uint32 u32R;
   uint32 u32BufCtr;
}FR_BufIndex;

typedef struct FR_BufCfg{
   uint8 u8BufId;
   uint16 u16FPS;
   uint16 u16EventNum;
   uint16 u16EventSize;
   uint16 u16Period_us;

   void (*vidGetEvent)(const uint32 ku32IndexInBuf);
}FR_BufCfg;

typedef struct FR_UserHeadCfg{
   void * pvUserBlockHandle;
   uint16 u16UserBlockSizeByByte;
   uint16 u16HeadSize;
}FR_UserHeadCfg;

typedef struct FR_BankUserIf{
   void (*vidGetUserHeadInfo)(const FR_UserHeadCfg * const kpktCfg);
   void (*vidGetExtDataOfFixHead)(FR_tExtDataOfFixHead * const kptData);
   boolean (*bFaultIsOccurred)(void);
   boolean (*bExtStoreCondIsMet)(boolean * const kpbResetCmd);
   boolean (*bUpdateReqIsAllowed)(void);
}FR_BankUserIf;

typedef struct FR_BankUserCfg{
   uint8 u8BufNum;
   uint16 u16BufTotalSize;
   float32 f32RunTimeBeforeFault_S;

   void *pvInputBuf;
   FR_BufIndex *patIndexSet;

   const FR_BufCfg *pktBufCfgSet;
   const FR_BankUserIf *pktBankUserIf;
   const FR_UserHeadCfg *pktUserHeadCfg;
}FR_BankUserCfg;
# 8 "bswcdd\\FR\\FR_Types.h" 2
# 32 "bswcdd\\FR\\FR_Types.h"
typedef union FR_uLockState{
   uint8 u8State;
   struct{
      uint8 bInitState : 1;
      uint8 bTriggerState : 1;
      uint8 bTriggerAcceptState : 1;
      uint8 bFullState : 1;
      uint8 bStoredState : 1;
      uint8 bProcessedState : 1;
      uint8 bAbnormalResetState : 1;
      uint8 bIsBusyState : 1;
   }tState;
}FR_uLockState, *PFR_uLockState;

typedef union FR_FixHead{
   uint8 au8Data[32];
   struct{
      uint16 u16Version;
      uint8 u8BlockCtr;

      FR_tExtDataOfFixHead tExtData;
   }tHead;
}FR_FixHead, *PFR_FixHead;

typedef struct FR_Cfg{
   uint8 u8NvmBlockNum;
   uint8 u8NvmStartIndex;

   uint8 *pu8State;
   PFR_FixHead ptFixHead;
   PFR_uLockState puLockState;

   const FR_BankUserCfg *pktBankUserCfg;
}FR_Cfg;

typedef const FR_Cfg KFR_Cfg;
typedef KFR_Cfg * PKFR_Cfg;
# 12 "bswcdd\\FR\\FR_InputSystem.h" 2
# 1 "bswcdd\\FR\\FR_Assert.h" 1
# 13 "bswcdd\\FR\\FR_InputSystem.h" 2
# 21 "bswcdd\\FR\\FR_InputSystem.h"
extern void FR_vidInitInputBufState(const FR_Cfg * const kpktCfg);
extern void FR_vidOpWrapFunc(const FR_Cfg * const kpktCfg, const uint32 ku32Period);




static inline void FR_vidSetBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask);
static inline void FR_vidClearBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask);
static inline uint8 FR_u8GetBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask);
# 44 "bswcdd\\FR\\FR_InputSystem.h"
static inline void FR_vidSetBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   ;
   ;

   kpktCfg->puLockState->u8State |= ku8BitMask;
}
# 62 "bswcdd\\FR\\FR_InputSystem.h"
static inline void FR_vidClearBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   ;
   ;

   kpktCfg->puLockState->u8State &= ~ku8BitMask;
}
# 80 "bswcdd\\FR\\FR_InputSystem.h"
static inline uint8 FR_u8GetBitBufferStatus(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   ;
   ;

   return (kpktCfg->puLockState->u8State & ku8BitMask);
}
# 98 "bswcdd\\FR\\FR_InputSystem.h"
static inline void FR_vidSetFullState(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   ;
   ;

   *(kpktCfg->pu8State) |= ku8BitMask;
}
# 116 "bswcdd\\FR\\FR_InputSystem.h"
static inline void FR_vidClearFullState(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   ;
   ;

   *(kpktCfg->pu8State) &= ~ku8BitMask;
}
# 134 "bswcdd\\FR\\FR_InputSystem.h"
static inline uint8 FR_u8GetFullState(const FR_Cfg * const kpktCfg, const uint8 ku8BitMask)
{
   ;
   ;

   return (*(kpktCfg->pu8State) & ku8BitMask);
}
# 10 "bswcdd\\FR\\FR_InputSystem.c" 2
# 20 "bswcdd\\FR\\FR_InputSystem.c"
static void FR_vidEndPtrHandle(const FR_Cfg * const kpktCfg);
static void FR_vidBufLockHandle(const FR_Cfg * const kpktCfg);
static void FR_vidPutInputEvent(const FR_Cfg * const kpktCfg, const uint8 ku8CfgIndex);
static boolean FR_bUpdateReqIsAllowed(const FR_Cfg * const kpktCfg);
static inline void FR_vidInitBufIndex(const FR_Cfg * const kpktCfg);
static inline void FR_vidSetEndPtr(FR_BufIndex * const kptIndex, const uint32 ku32EndPosition);
static inline uint8 FR_u8GetCfgIndex(const FR_Cfg * const kpktCfg, const uint32 ku32Period);
# 49 "bswcdd\\FR\\FR_InputSystem.c"
void FR_vidInitInputBufState(const FR_Cfg * const kpktCfg)
{
   FR_vidInitBufIndex(kpktCfg);
   FR_vidClearFullState(kpktCfg, 0xFF);
   FR_vidClearBitBufferStatus(kpktCfg, 0xFF);
   FR_vidSetBitBufferStatus(kpktCfg, 0x01);
}
# 67 "bswcdd\\FR\\FR_InputSystem.c"
void FR_vidOpWrapFunc(const FR_Cfg * const kpktCfg, const uint32 ku32Period)
{
   boolean bUpdateIsAllowed;
   uint8 u8CfgIndex;

   u8CfgIndex = FR_u8GetCfgIndex(kpktCfg, ku32Period);


   if(u8CfgIndex == 0xFF)
   {

   }
   else
   {
      if(0 == u8CfgIndex)
      {
         FR_vidBufLockHandle(kpktCfg);
      }


      bUpdateIsAllowed = FR_bUpdateReqIsAllowed(kpktCfg);
      if((1 != 0) == bUpdateIsAllowed)
      {

         FR_vidPutInputEvent(kpktCfg, u8CfgIndex);
      }
   }
}
# 109 "bswcdd\\FR\\FR_InputSystem.c"
static inline uint8 FR_u8GetCfgIndex(const FR_Cfg * const kpktCfg, const uint32 ku32Period)
{
   uint8 u8Index;
   uint8 u8ValidCfgIndex = 0xFF;

   for(u8Index = 0; u8Index < kpktCfg->pktBankUserCfg->u8BufNum; u8Index++)
   {
      if(kpktCfg->pktBankUserCfg->pktBufCfgSet[u8Index].u16Period_us == ku32Period)
      {
         u8ValidCfgIndex = u8Index;
         break;
      }
   }

   return u8ValidCfgIndex;
}
# 136 "bswcdd\\FR\\FR_InputSystem.c"
static inline void FR_vidSetEndPtr(FR_BufIndex * const kptIndex, const uint32 ku32EndPosition)
{
   ;

   kptIndex->u32R = ku32EndPosition;
}
# 153 "bswcdd\\FR\\FR_InputSystem.c"
static void FR_vidEndPtrHandle(const FR_Cfg * const kpktCfg)
{
   uint8 u8BitMask;
   uint8 u8BufIndex;
   uint16 u16FPS;
   uint32 u32BeforeLen;
   uint32 u32WritePtr;

   FR_BufIndex * ptIndex;
   const FR_BufCfg * pktBufCfg;

   ;
   ;

   for(u8BufIndex = 0; u8BufIndex < kpktCfg->pktBankUserCfg->u8BufNum; u8BufIndex++)
   {
      pktBufCfg = &(kpktCfg->pktBankUserCfg->pktBufCfgSet[u8BufIndex]);
      ptIndex = &(kpktCfg->pktBankUserCfg->patIndexSet[u8BufIndex]);

      ;
      ;

      u16FPS = pktBufCfg->u16FPS;
      u32BeforeLen = (uint32)(kpktCfg->pktBankUserCfg->f32RunTimeBeforeFault_S * u16FPS);
      u32WritePtr = ptIndex->u32W;


      if(u32BeforeLen > pktBufCfg->u16EventNum)
      {

         u8BitMask = 1 << u8BufIndex;
         FR_vidSetFullState(kpktCfg, u8BitMask);
         FR_vidSetEndPtr(ptIndex, (u32WritePtr + 1) % pktBufCfg->u16EventNum);
      }
      else
      {

         if(u32WritePtr >= u32BeforeLen)
         {

            FR_vidSetEndPtr(ptIndex, (u32WritePtr - u32BeforeLen) % pktBufCfg->u16EventNum);
         }
         else
         {

            FR_vidSetEndPtr(ptIndex, (pktBufCfg->u16EventNum - u32BeforeLen + u32WritePtr) % pktBufCfg->u16EventNum);
         }
      }
   }
}
# 214 "bswcdd\\FR\\FR_InputSystem.c"
static inline void FR_vidInitBufIndex(const FR_Cfg * const kpktCfg)
{
   uint8 u8BufIndex;

   FR_BufIndex * ptIndex;

   ;

   for(u8BufIndex = 0; u8BufIndex < kpktCfg->pktBankUserCfg->u8BufNum; u8BufIndex++)
   {
      ;
      ;

      ptIndex = &(kpktCfg->pktBankUserCfg->patIndexSet[u8BufIndex]);

      ;

      ptIndex->u32W = 0;
      ptIndex->u32R = 0;
   }
}
# 246 "bswcdd\\FR\\FR_InputSystem.c"
static boolean FR_bUpdateReqIsAllowed(const FR_Cfg * const kpktCfg)
{
   boolean bReturnVal = (0 != 0);
   uint8 u8Status;
   uint8 u8BitMask;

   ;

   u8BitMask = 0x01;
   u8Status = FR_u8GetBitBufferStatus(kpktCfg, u8BitMask);

   if(0x01 == u8Status)
   {

      bReturnVal = (1 != 0);
   }

   if((1 != 0) == bReturnVal)
   {
      ;
      ;

      if(((void *)0) != kpktCfg->pktBankUserCfg->pktBankUserIf->bUpdateReqIsAllowed)
      {
         bReturnVal = kpktCfg->pktBankUserCfg->pktBankUserIf->bUpdateReqIsAllowed();
      }
   }

 return bReturnVal;
}
# 287 "bswcdd\\FR\\FR_InputSystem.c"
static void FR_vidBufLockHandle(const FR_Cfg * const kpktCfg)
{
   uint8 u8BitMask;
   boolean bFaultIsOccurred;

   ;
   ;
   ;
   ;

   bFaultIsOccurred = kpktCfg->pktBankUserCfg->pktBankUserIf->bFaultIsOccurred();


   if((1 != 0) == bFaultIsOccurred)
   {

      u8BitMask = 0x02 | 0x01;
      if(FR_u8GetBitBufferStatus(kpktCfg, u8BitMask) == 0x01)
      {

         u8BitMask = 0x02;
         FR_vidSetBitBufferStatus(kpktCfg, u8BitMask);

         u8BitMask = 0x04 | 0x80;
         if(FR_u8GetBitBufferStatus(kpktCfg, u8BitMask) == 0)
         {
            FR_vidEndPtrHandle(kpktCfg);
            FR_vidSetBitBufferStatus(kpktCfg, u8BitMask);
            kpktCfg->pktBankUserCfg->pktBankUserIf->vidGetExtDataOfFixHead(&(kpktCfg->ptFixHead->tHead.tExtData));
         }
      }
      else
      {

      }
   }
   else
   {

      u8BitMask = 0x02;
      FR_vidClearBitBufferStatus(kpktCfg, u8BitMask);
   }
}
# 341 "bswcdd\\FR\\FR_InputSystem.c"
static void FR_vidPutInputEvent(const FR_Cfg * const kpktCfg, const uint8 ku8CfgIndex)
{
   uint8 u8BitMask;
   uint32 u32NextPostion;

   FR_BufIndex *ptIndex;
   const FR_BufCfg *pktBufCfg;
   const FR_BankUserCfg *pktBankUserCfg;


   u8BitMask = 1 << ku8CfgIndex;
   if(FR_u8GetFullState(kpktCfg, u8BitMask) == 0)
   {
      ;
      pktBankUserCfg = kpktCfg->pktBankUserCfg;

      ;
      ;
      ;
      ptIndex = &(pktBankUserCfg->patIndexSet[ku8CfgIndex]);
      pktBufCfg = &(pktBankUserCfg->pktBufCfgSet[ku8CfgIndex]);

      ;
      ;


      pktBufCfg->vidGetEvent(ptIndex->u32W);


      u32NextPostion = (ptIndex->u32W + 1) % pktBufCfg->u16EventNum;


      u8BitMask = 0x04;
      if(FR_u8GetBitBufferStatus(kpktCfg, u8BitMask) == u8BitMask)
      {

         if(u32NextPostion == ptIndex->u32R)
         {

            u8BitMask = 1 << ku8CfgIndex;
            FR_vidSetFullState(kpktCfg, u8BitMask);
         }
         else
         {

            ptIndex->u32W = u32NextPostion;
         }
      }
      else
      {

         ptIndex->u32W = u32NextPostion;
      }
   }
}
