/**********************************************************************************************************************/
/* !Layer           : SRVL                                                                                            */
/* !Component       : CCPUSR                                                                                          */
/* !Description     : CCPUSR Component                                                                                */
/*                                                                                                                    */
/* !File            : CCPUSR_Cfg.c                                                                                    */
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

#include "Std_Types.h"
#include "ComStack_Types.h"
#include "CanIf.h"
#include "CCP.h"
#include "CCPUSR_Canif.h"
#include "CCPUSR_Cfg.h"
#include "Ccp_Cbk.h"

/**********************************************************************************************************************/
/* CONSTANTS DEFINITION                                                                                               */
/**********************************************************************************************************************/
#define CCP_START_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h"

/* !Comment: PDU ID for DTO */
CONST(PduIdType, CCP_CONST) CCPUSR_kaudtDtoMsgID[CCPUSR_u8NR_OF_CANIF_IDS_SETS] =
{
   CanIf_CCP_DTO
};

/* !Comment: PDU ID for all DAQ lists */
CONST(PduIdType, CCP_CONST) CCPUSR_kaudtDaqMsgID[CCPUSR_u8NR_OF_CANIF_IDS_SETS][CCP_u8DAQ_NO_LISTS] =
{
   {
      CanIf_CCP_FAST,
      CanIf_CCP_SPY,
      CanIf_CCP_SLOW
   }
};

const uint32 CCPUSR_kau32WritableMemoryZone[2*CCPUSR_NB_WRITABLE_ZONE] =
{
   0x40000000,0x40017FFF, /* RAM_CPU3 */
   0x50000000,0x50017FFF, /* RAM_CPU2 */
   0x60000000,0x6003BFFF, /* RAM_CPU1 */
   0x70000000,0x7003BFFF, /* RAM_CPU0 */
   0xB0000000,0xB0008000, /* LOCAL_RAM */
   /* 0xBF000000,0xBF100000,*/ /* EMEM */
   /* 0xF0000000,0xFF120000,*/ /* REGISTERS */
   0x80060000,0x80067FFF, /* RAM_CALIB */
   0x80058000,0x8005FFFF, /* CALIB_USER */
};

const uint32 CCPUSR_kau32ReadOnlyMemoryZone[2*CCPUSR_NB_READ_ONLY_ZONE] =
{
   0x80058000,0x80067FFF, /* ROM_CALIB */
   0xAF000000,0xAF04FFFF, /* CONSTANT */
   /* 0x801FFF00,0x801FFFFF,*/ /* VERSION */
};

#define CCP_STOP_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* DATA DEFINITION                                                                                                    */
/**********************************************************************************************************************/
#define CCP_START_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"


#define CCP_STOP_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* FUNCTIONS DEFINITION                                                                                               */
/**********************************************************************************************************************/
#define CCP_START_SEC_CODE
#include "CCP_MemMap.h"

void CCPUSR_vidTxConfirmation_DAQ_BASE_FAST(PduIdType TxPduId)
{
   /* No need to check PDU ID because this interface is called only on the */
   /* TX confirmation of the specific DAQ List PDU (CANIF configuration)   */
   COMPILER_UNUSED_PARAMETER(TxPduId);

   CCP_vidDaqListTxMgr(CCP_u8DAQ_LST_DAQ_BASE_FAST);
}

void CCPUSR_vidTxConfirmation_DAQ_SPY(PduIdType TxPduId)
{
   /* No need to check PDU ID because this interface is called only on the */
   /* TX confirmation of the specific DAQ List PDU (CANIF configuration)   */
   COMPILER_UNUSED_PARAMETER(TxPduId);

   CCP_vidDaqListTxMgr(CCP_u8DAQ_LST_DAQ_SPY);
}

void CCPUSR_vidTxConfirmation_DAQ_SLOW(PduIdType TxPduId)
{
   /* No need to check PDU ID because this interface is called only on the */
   /* TX confirmation of the specific DAQ List PDU (CANIF configuration)   */
   COMPILER_UNUSED_PARAMETER(TxPduId);

   CCP_vidDaqListTxMgr(CCP_u8DAQ_LST_DAQ_SLOW);
}


#define CCP_STOP_SEC_CODE
#include "CCP_MemMap.h"

/*---------------------------------------------------- end of file ---------------------------------------------------*/
