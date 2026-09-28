/*
 * This is Ioc.h, auto-generated for:
 *   Project: EcuC_Hardware_Partition_EcucValues
 *   Target:  TriCoreHighTec
 *   Variant: TC38x
 *   Version: 5.0.27
 *   [$UKS 1359] [$UKS 1334] [$UKS 1454]
 */
#ifndef OS_IOC_H
#define OS_IOC_H
/* -- Start expansion of <OsIoc.h> -- */
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, IocRead*, IocWrite*, IocSend*, IocRec*) */
#include "Rte_Type.h"

#define IOC_E_OK        RTE_E_OK         /* [$UKS 1360] */
#define IOC_E_NOK       RTE_E_NOK        /* [$UKS 1361] */
#define IOC_E_LIMIT     RTE_E_LIMIT      /* [$UKS 1362] */
#define IOC_E_LOST_DATA RTE_E_LOST_DATA  /* [$UKS 1363] */
#define IOC_E_NO_DATA   RTE_E_NO_DATA    /* [$UKS 1364] */

/* IOC internal data */

typedef struct {
  Os_Lockable Os_IocLock_Rte_Rx_000000;
  Os_Lockable Os_IocLock_Rte_Rx_000001;
} Os_IocLockDataType;


/* ------------------------------------------------- */
/* [MISRA 2012 Rule 20.1] */ /*lint -save -estring(9019, *) */
#define OS_START_SEC_CODE
#include "Os_MemMap.h" /* [MISRA 2012 Dir 4.10] */ /*lint !e537 !e451 */
/*lint -restore */
extern FUNC(Std_ReturnType, OS_CODE) IocWrite_Rte_Rx_000000(const Array100ByteDataElement *value); /* Only callable from: OsApplication_Core0 (Trusted on core 0) */
extern FUNC(Std_ReturnType, OS_CODE) IocRead_Rte_Rx_000000(Array100ByteDataElement *value); /* Only callable from: OsApplication_Core1 (Trusted on core 1) */
extern FUNC(Std_ReturnType, OS_CODE) IocWrite_Rte_Rx_000001(const Array100ByteDataElement *value); /* Only callable from: OsApplication_Core1 (Trusted on core 1) */
extern FUNC(Std_ReturnType, OS_CODE) IocRead_Rte_Rx_000001(Array100ByteDataElement *value); /* Only callable from: OsApplication_Core0 (Trusted on core 0) */
extern FUNC(void, OS_CODE) Os_ioc_memcpy(void *dest, const void *source, uint32 length);
extern FUNC(void, OS_CODE) IocInit(void); /* [$UKS 2223] */
/* [MISRA 2012 Rule 20.1] */ /*lint -save -estring(9019, *) */
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h" /* [MISRA 2012 Dir 4.10] */ /*lint !e537 !e451 */
/*lint -restore */
/* ------------------------------------------------- */
/* [MISRA 2012 Rule 20.1] */ /*lint -save -estring(9019, *) */
#define OS_START_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Os_MemMap.h" /* [MISRA 2012 Dir 4.10] */ /*lint !e537 !e451 */
/*lint -restore */
extern VAR(Array100ByteDataElement, OS_VAR_NO_INIT) Os_Ioc_Rte_Rx_000000;
extern VAR(Array100ByteDataElement, OS_VAR_NO_INIT) Os_Ioc_Rte_Rx_000001;
extern OS_VOLATILE VAR(Os_Lockable, OS_VAR_NO_INIT) Os_lock_iocaccess;
extern VAR(Os_IocLockDataType, OS_VAR_NO_INIT) Os_IocLockData;
/* [MISRA 2012 Rule 20.1] */ /*lint -save -estring(9019, *) */
#define OS_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Os_MemMap.h" /* [MISRA 2012 Dir 4.10] */ /*lint !e537 !e451 */
/*lint -restore */

/* -- End expansion of <OsIoc.h> -- */
#endif /* OS_IOC_H */
