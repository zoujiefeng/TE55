/**********************************************************************************************************************/
/* !Layer           : SRVL                                                                                            */
/* !Component       : CCPUSR                                                                                          */
/* !Description     : Project specific part of the CCP                                                                */
/*                                                                                                                    */
/* !File            : CCPUSR_Daq.h                                                                                    */
/* !Description     : CCPUSR DAQ list management                                                                      */
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

#ifndef CCPUSR_DAQ_H
#define CCPUSR_DAQ_H

#include "Std_Types.h"
#include "CCP_Typ.h"
#include "CCP_Cfg.h"
#include "CCPUSR_Co.h"
#include "CCPUSR_Typ.h"

/**********************************************************************************************************************/
/* Check that Conditional Compilation options are defined                                                             */
/**********************************************************************************************************************/
#ifndef CCP_coACVD
   #error CCP_coACVD not defined
#endif
#ifndef CCP_coOPT_SRV_DAQ_LIST
   #error CCP_coOPT_SRV_DAQ_LIST not defined
#endif
#ifndef CCP_coDAQ_ELM_SIZE_MAX
   #error CCP_coDAQ_ELM_SIZE_MAX not defined
#endif
#ifndef CCP_coDAQ_ELM_SIZE_MAX_8_BITS
   #error CCP_coDAQ_ELM_SIZE_MAX_8_BITS not defined
#endif
#ifndef CCP_coDAQ_RESU_FEATURE
   #error CCP_coDAQ_RESU_FEATURE not defined
#endif
#ifndef CCP_coDAQ_RESU_ADDL_INFOS
   #error CCP_coDAQ_RESU_ADDL_INFOS not defined
#endif

/**********************************************************************************************************************/
/* DEFINES                                                                                                            */
/**********************************************************************************************************************/
#define CCPUSR_u8DAQ_RESU_DEV_ID_SSN_CFG_ID_LEN 18
#define CCPUSR_vidASSERT(eval1,eval2) \
   typedef uint8 CCPUSRWrongsize[((eval1+4)>(eval2))?-1:1]
/* if CCP_u8SLAVE_DEV_ID_LEN + 4 > 18 we get error of compilation error: size of array 'CCPUSRWrongsize' is negative */
CCPUSR_vidASSERT(CCP_u8SLAVE_DEV_ID_LEN, CCPUSR_u8DAQ_RESU_DEV_ID_SSN_CFG_ID_LEN);


/**********************************************************************************************************************/
/* TYPEDEF                                                                                                            */
/**********************************************************************************************************************/
#if (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD)
typedef struct
{
   P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA) apu8DaqListElmAdr[CCP_u16DAQ_NO_ELMS];
# if (CCP_coDAQ_ELM_SIZE_MAX != CCP_coDAQ_ELM_SIZE_MAX_8_BITS)
   uint8 au8DaqListElmSize[CCP_u16DAQ_NO_ELMS];
# endif
# if (CCP_coDAQ_RESU_FEATURE == CCP_coACVD)
   uint16 u16ResuPslr[CCP_u8DAQ_NO_LISTS];
   uint8  u8ResuMod[CCP_u8DAQ_NO_LISTS];
   uint8  u8ResuOdtLstIdx[CCP_u8DAQ_NO_LISTS];
   uint8  u8ResuEveChn[CCP_u8DAQ_NO_LISTS];
   uint8  au8ResuDevIdSsnCfgId[CCPUSR_u8DAQ_RESU_DEV_ID_SSN_CFG_ID_LEN];
#  if (CCP_coDAQ_RESU_ADDL_INFOS == CCP_coACVD)
   CCPUSR_tstrResuAddlInfos strResuAddlInfos;
#  endif
# endif
}
CCPUSR_tstrDaqListDynCfg;
#endif

typedef union
{
   uint8  au8Data[4];
   uint32 u32Data;
}
CCP_tuniCopyData;


/**********************************************************************************************************************/
/* DATA DECLARATION                                                                                                   */
/**********************************************************************************************************************/
#define CCP_START_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"

#if (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD)
extern CCPUSR_tstrDaqListDynCfg CCPUSR_strDaqListDynCfg;

# if (CCP_coDAQ_RESU_FEATURE == CCP_coACVD)
extern boolean CCPUSR_bDaqResuReqd;
extern boolean CCPUSR_bDaqResuSttUpdtd;
# endif
#endif

#define CCP_STOP_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* FUNCTIONS DECLARATION                                                                                              */
/**********************************************************************************************************************/
#define CCP_START_SEC_CODE
#include "CCP_MemMap.h"

#if (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD)
FUNC(void, CCP_USR_CODE) CCPUSR_vidDaqListIni(void);
FUNC(void, CCP_USR_CODE) CCPUSR_vidSendDaqMessage(uint8 u8DaqId, const uint8 aku8Data[8]);
# if (CCP_coDAQ_RESU_FEATURE == CCP_coACVD)
FUNC(boolean, CCP_USR_CODE) CCPUSR_bDaqResuReqdGet(void);
#  if (CCP_coDAQ_RESU_ADDL_INFOS == CCP_coACVD)
FUNC(void, CCP_USR_CODE) CCPUSR_vidDaqResuAddlInfosRead
(
   P2CONST(CCPUSR_tstrResuAddlInfos, AUTOMATIC, CCP_APPL_DATA) pkstrResuAddlInfos
);
FUNC(void, CCP_USR_CODE) CCPUSR_vidDaqResuAddlInfosSave
(
   P2VAR(CCPUSR_tstrResuAddlInfos, AUTOMATIC, CCP_APPL_DATA) pstrResuAddlInfos
);
#  endif
# endif
#endif /* (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) */

#define CCP_STOP_SEC_CODE
#include "CCP_MemMap.h"

#endif /* CCPUSR_DAQ_H */

/*---------------------------------------------------- end of file ---------------------------------------------------*/
