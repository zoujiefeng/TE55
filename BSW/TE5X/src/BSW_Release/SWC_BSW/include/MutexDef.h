#ifndef __MUTEXDEF_H_
#define __MUTEXDEF_H_

#include "IfxCpu.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define MUTEX_LOCK_MANAGED_BY_PTR_ARRAY   0
#define MUTEX_LOCK_MANAGED_BY_VAR_ARRAY   1


#define MUTEX_LOCK_VAR_CFG  MUTEX_LOCK_MANAGED_BY_PTR_ARRAY

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/
extern IfxCpu_mutexLock MAIN_Asc0_Lock;
extern IfxCpu_mutexLock GMAIN_Asc0_Lock;

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
typedef enum MUTEX_LOCK_OPERATION_TYPE{
   MUTEX_GET_LOCK = 0,
   MUTEX_RELEASE_LOCK
}MUTEX_LOCK_OPERATION_TYPE;

typedef enum MUTEX_LOCK_INDEX{
   MUTEX_ESM_AND_DFLASH_INDEX = 0,
   MUTEX_NVM_AND_DFLASH_INDEX,
   MUTEX_MEMIF_AND_DFLASH_INDEX,
   MUTEX_DFLASH_MULTI_CORE_INDEX,
   MUTEX_MAX_LOCK_NUM
}MUTEX_LOCK_INDEX;

/*******************************************************************************
 ****  Exported Function Declarations
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
void Mutex_vLockInit(void);

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
boolean Mutex_bGrabSpecifiedLock(MUTEX_LOCK_INDEX eLockIndex, MUTEX_LOCK_OPERATION_TYPE eOperation);

/**********************************************************************
 * Function name    :  Mutex_bGrabNvmLock
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static inline boolean Mutex_bGetLock(IfxCpu_mutexLock *lock)
{
   return IfxCpu_acquireMutex(lock);
}

/**********************************************************************
 * Function name    :  Mutex_bGrabNvmLock
 * Description      :  
 * Input parameter  :  
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2021/09/24       V1.0        Zyx        Create
 ***********************************************************************/ 
static inline void Mutex_vReleaseLock(IfxCpu_mutexLock *lock)
{
   IfxCpu_releaseMutex(lock);
}

#endif /* __MUTEXDEF_H_ */
