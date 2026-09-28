/**********************************************************************************************************************/
/* !Layer           : SRVL                                                                                            */
/* !Component       : CCPUSR                                                                                          */
/* !Description     : Project specific part of the CCP                                                                */
/*                                                                                                                    */
/* !File            : CCPUSR.h                                                                                        */
/* !Description     : CCPUSR management                                                                               */
/*                                                                                                                    */
/* !Reference       :                                                                                                 */
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

#ifndef CCPUSR_H
#define CCPUSR_H

#include "Std_Types.h"
#include "CCPUSR_Cfg.h"
#include "CCPUSR_Daq.h" 

/**********************************************************************************************************************/
/* DEFINES                                                                                                            */
/**********************************************************************************************************************/
#define CCPUSR_CAL_STORE_INIT           1U
#define CCPUSR_CAL_STORE_REQUESTED      2U
#define CCPUSR_CAL_STORE_WAIT_CONDITION 4U
#define CCPUSR_CAL_STORE_CONDITION_OK   8U


/**********************************************************************************************************************/
/* DATA DECLARATION                                                                                                   */
/**********************************************************************************************************************/

#define CCP_START_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"

extern uint8 CCPUSR_enuCalStoreStatus;
extern uint32 CCPUSR_au32ReadOnlyMemoryZone[2*CCPUSR_NB_READ_ONLY_ZONE];
#define CCP_STOP_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* CONSTANTS DECLARATION                                                                                              */
/**********************************************************************************************************************/
#define CCP_START_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h"

extern const uint32                                  CCPUSR_kau32WritableMemoryZone[2*CCPUSR_NB_WRITABLE_ZONE];
extern const uint32                                  CCPUSR_kau32ReadOnlyMemoryZone[2*CCPUSR_NB_READ_ONLY_ZONE];
#if (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD)
   extern CONST(CCPUSR_tstrDaqListDynCfg, CCP_CONST) CCPUSR_kstrDaqListDynCfgInin;
#endif 

#define CCP_STOP_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* FUNCTIONS DECLARATION                                                                                              */
/**********************************************************************************************************************/
#define CCP_START_SEC_CODE
#include "CCP_MemMap.h"

extern void CCPUSR_vidRxIndication(PduIdType RxPduId, PduInfoType *PduInfoPtr);
FUNC(void, CCP_USR_CODE) CCPUSR_vidMainFunction(void);
#if (CCP_coDAQ_RESU_FEATURE == CCP_coACVD)  
   extern FUNC(void, CCP_USR_CODE) CCPUSR_bDaqListSendEnable(void);
#endif /* (CCP_coDAQ_RESU_FEATURE == CCP_coACVD) */

#if (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD)  
   extern FUNC(void, CCP_USR_CODE) CCPUSR_DaqListSetEvent(uint8 u8EveChn);
#endif /* (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) */

#if (  (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) \
    && (CCP_coDAQ_RESU_FEATURE == CCP_coACVD))
   extern FUNC(void, CCP_USR_CODE) CCPUSR_vidMainFunction_NvM(void);
#endif    

#define CCP_STOP_SEC_CODE
#include "CCP_MemMap.h"

#endif /* CCPUSR_H */

/*---------------------------------------------------- end of file ---------------------------------------------------*/
