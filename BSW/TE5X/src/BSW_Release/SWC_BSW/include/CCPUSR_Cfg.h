/**********************************************************************************************************************/
/* !Layer           : SRVL                                                                                            */
/* !Component       : CCPUSR                                                                                          */
/* !Description     : CCPUSR Component                                                                                */
/*                                                                                                                    */
/* !File            : CCPUSR_Cfg.h                                                                                    */
/* !Description     : Configuration of the user part                                                                  */
/*                                                                                                                    */
/* !Reference       :                                                                                                 */
/*                                                                                                                    */
/* Coding language  : OIL                                                                                             */
/*                                                                                                                    */
/* COPYRIGHT invt  all rights reserved                                                                                */
/**********************************************************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 **********************************************************************************************************************/
/* Generated on 11/09/22, 19:32:08 by Genecode v2.6.0.0                                                               */
/**********************************************************************************************************************/

#ifndef CCPUSR_CFG_H
#define CCPUSR_CFG_H

#include "Std_Types.h"
#include "ComStack_Types.h"
#include "CCP_Cfg.h"


/**********************************************************************************************************************/
/* DEFINES                                                                                                            */
/**********************************************************************************************************************/
#define CCPUSR_u8NR_OF_CANIF_IDS_SETS 1

#define CCPUSR_DFLT_CALIB_PAGE_ADDR 0x80060000
#define CCPUSR_DFLT_CALIB_PAGE_EXTN 0

#define CCPUSR_NB_WRITABLE_ZONE 7
#define CCPUSR_NB_READ_ONLY_ZONE 2

/* Calibration areas infos */
#define CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_ROM 0x80058000
#define CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_RAM 0x60018000
#define CCPUSR_CALIBRATION_SIZE                    0x10000

/* Calibration user areas infos */
#define CCPUSR_CALUSR_START_ADDR_IN_ROM            0x80058000
#define CCPUSR_CALUSR_START_ADDR_IN_RAM            0x60018000
#define CCPUSR_CALUSR_SIZE                         0x8000

/* !Comment: data acquisition method (whole list or per ODT)                  */
#define CCP_coDAQ_FILL_WHOLE_LIST CCP_coACVD


/**********************************************************************************************************************/
/* MACRO FUNCTIONS                                                                                                    */
/**********************************************************************************************************************/
#define CCPUSR_udtGET_PDU_IDS_SET_IDX() \
   0


/**********************************************************************************************************************/
/* CONSTANTS DECLARATION                                                                                              */
/**********************************************************************************************************************/
#define CCP_START_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h"

/* !Comment: PDU ID for DTO */
extern CONST(PduIdType, CCP_CONST) CCPUSR_kaudtDtoMsgID[CCPUSR_u8NR_OF_CANIF_IDS_SETS];

/* !Comment: PDU ID for all DAQ lists */
extern CONST(PduIdType, CCP_CONST) CCPUSR_kaudtDaqMsgID[CCPUSR_u8NR_OF_CANIF_IDS_SETS][CCP_u8DAQ_NO_LISTS];

#define CCP_STOP_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* DATA DECLARATION                                                                                                   */
/**********************************************************************************************************************/
#define CCP_START_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"


#define CCP_STOP_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* FUNCTIONS DECLARATION                                                                                              */
/**********************************************************************************************************************/
#define CCP_START_SEC_CODE
#include "CCP_MemMap.h"

void CCPUSR_vidTxConfirmation_DAQ_BASE_FAST(PduIdType TxPduId);
void CCPUSR_vidTxConfirmation_DAQ_SPY(PduIdType TxPduId);
void CCPUSR_vidTxConfirmation_DAQ_SLOW(PduIdType TxPduId);

#define CCP_STOP_SEC_CODE
#include "CCP_MemMap.h"

#endif /* CCPUSR_CFG_H */

/*---------------------------------------------------- end of file ---------------------------------------------------*/
