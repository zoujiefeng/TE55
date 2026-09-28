#include "MutexDef.h"

/*******************************************************************************
 ****  Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define MUTEX_LOCK_ARRAY_SIZE    MUTEX_MAX_LOCK_NUM

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/
IfxCpu_mutexLock MAIN_Asc0_Lock;
IfxCpu_mutexLock GMAIN_Asc0_Lock;

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
#if (MUTEX_LOCK_VAR_CFG == MUTEX_LOCK_MANAGED_BY_PTR_ARRAY)   
   static IfxCpu_mutexLock MAIN_mutexEsmOrDflash_Lock;
   static IfxCpu_mutexLock MAIN_mutexNvmOrDflash_Lock;
   static IfxCpu_mutexLock MAIN_mutexMemIfOrDflash_Lock;
   static IfxCpu_mutexLock MAIN_mutexDflashMultiCore_Lock;

   static IfxCpu_mutexLock * Mutex_xMutexLockSet[MUTEX_LOCK_ARRAY_SIZE] = {0};
   
   #define MUTEX_SPECIFIED_LOCK(eLockIndex)     Mutex_xMutexLockSet[eLockIndex]
#elif (MUTEX_LOCK_VAR_CFG == MUTEX_LOCK_MANAGED_BY_VAR_ARRAY)
   static IfxCpu_mutexLock   Mutex_xMutexLockSet[MUTEX_LOCK_ARRAY_SIZE] = {0};

   #define MUTEX_SPECIFIED_LOCK(eLockIndex)    &Mutex_xMutexLockSet[eLockIndex]
#else
   
#endif

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  Mutex_vLockInit
 * Description      :  Spin lock init function
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
void Mutex_vLockInit(void)
{
#if (MUTEX_LOCK_VAR_CFG == MUTEX_LOCK_MANAGED_BY_PTR_ARRAY)   
   Mutex_xMutexLockSet[MUTEX_ESM_AND_DFLASH_INDEX]    = &MAIN_mutexEsmOrDflash_Lock;
   Mutex_xMutexLockSet[MUTEX_NVM_AND_DFLASH_INDEX]    = &MAIN_mutexNvmOrDflash_Lock;
   Mutex_xMutexLockSet[MUTEX_MEMIF_AND_DFLASH_INDEX]  = &MAIN_mutexMemIfOrDflash_Lock;
   Mutex_xMutexLockSet[MUTEX_DFLASH_MULTI_CORE_INDEX] = &MAIN_mutexDflashMultiCore_Lock;
#endif
}

/**********************************************************************
 * Function name    :  Mutex_bGrabSpecifiedLock
 * Description      :  Spin lock operation function
 * Input parameter  :  eLockIndex - Lock label   bOperation - Get or release lock
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
boolean Mutex_bGrabSpecifiedLock(MUTEX_LOCK_INDEX eLockIndex, MUTEX_LOCK_OPERATION_TYPE eOperation)
{
   boolean bReturnVal = FALSE;

   switch(eOperation)
   {
      case MUTEX_GET_LOCK:
      {
         bReturnVal = Mutex_bGetLock(MUTEX_SPECIFIED_LOCK(eLockIndex));
         break;
      }
      case MUTEX_RELEASE_LOCK:
      {
         Mutex_vReleaseLock(MUTEX_SPECIFIED_LOCK(eLockIndex));
         bReturnVal = TRUE;
         break;
      }
      default:
      {
         break;
      }
   }

   return bReturnVal;
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/






