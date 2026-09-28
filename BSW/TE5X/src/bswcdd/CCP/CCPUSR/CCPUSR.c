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
/* CCPUSR_udtMemoryControlWriteRight                                                                                  */
/* CCPUSR_udtMemoryControlReadRight                                                                                   */
/* CCP_vidUsrIni                                                                                                      */
/* CCP_vidUsrNtfySsnTrmd                                                                                              */
/* CCP_vidUsrGetDevId                                                                                                 */
/* CCP_bUsrStnAdrChk                                                                                                  */
/* CCP_udtUsrReadMem                                                                                                  */
/* CCP_udtUsrReadMemSts                                                                                               */
/* CCP_udtUsrWrMem                                                                                                    */
/* CCP_udtUsrWrMemSts                                                                                                 */
/* CCP_vidUsrNtfyCalStoreSttChgd                                                                                      */
/* CCP_vidUsrGetAddlSts                                                                                               */
/* CCP_vidUsrGetSeed                                                                                                  */
/* CCP_udtUsrChkKey                                                                                                   */
/* CCP_udtUsrSelCalPage                                                                                               */
/* CCP_vidUsrGetAcvCalPage                                                                                            */
/* CCP_udtUsrBldCks                                                                                                   */
/* CCP_udtUsrBldCksSts                                                                                                */
/* CCP_udtUsrMove                                                                                                     */
/* CCP_udtUsrMoveSts                                                                                                  */
/* CCP_udtUsrClrMem                                                                                                   */
/* CCP_udtUsrProg                                                                                                     */
/* CCP_udtUsrProgSts                                                                                                  */
/* CCP_udtUsrClrMemSts                                                                                                */
/* CCPUSR_bDaqResuReqdGet                                                                                             */
/* CCPUSR_vidDaqResuAddlInfosRead                                                                                     */
/* CCPUSR_vidDaqResuAddlInfosSave                                                                                     */
/* CCPUSR_vidMainFunction                                                                                             */
/* CCPUSR_vidMainFunction_NvM                                                                                         */
/* CCPUSR_bDaqListSendEnable                                                                                          */
/* CCPUSR_DaqListSetEvent                                                                                             */
/**********************************************************************************************************************/

#include "Std_Types.h"
#include "CCP.h"
#include "CCP_L.h"
#include "CCP_Usr.h"
#include "CCPUSR.h"
#include "CCPUSR_Cfg.h"
#include "CCPUSR_Daq.h"
#include "CCPUSR_Typ.h"
#include "DEVHAL.h"
#include "DEVHAL_Def.h"
/* #include "SWFAIL.h" */
#include "CALUSR.h"

#if (  (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) \
    && (CCP_coDAQ_RESU_FEATURE == CCP_coACVD))
#include "NvMIf.h"
#include "NvM.h"
#endif

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
#ifndef CCP_coSLAVE_DEV_ID_USR
   #error CCP_coSLAVE_DEV_ID_USR not defined
#endif
#ifndef CCP_coSRV_UPLD_ASYNC_RESP
   #error CCP_coSRV_UPLD_ASYNC_RESP not defined
#endif
#ifndef CCP_coOPT_SRV_SHO_UPLD_ASYNC_RESP
   #error CCP_coOPT_SRV_SHO_UPLD_ASYNC_RESP not defined
#endif
#ifndef CCP_coSRV_DNLD_ASYNC_RESP
   #error CCP_coSRV_DNLD_ASYNC_RESP not defined
#endif
#ifndef CCP_coOPT_SRV_DNLD6_ASYNC_RESP
   #error CCP_coOPT_SRV_DNLD6_ASYNC_RESP not defined
#endif
#ifndef CCP_coOPT_SRV_SSN_STS
   #error CCP_coOPT_SRV_SSN_STS not defined
#endif
#ifndef CCP_coCAL_STORE_FEATURE
   #error CCP_coCAL_STORE_FEATURE not defined
#endif
#ifndef CCP_coADDL_STS
   #error CCP_coADDL_STS not defined
#endif
#ifndef CCP_coOPT_SRV_SEED_KEY
   #error CCP_coOPT_SRV_SEED_KEY not defined
#endif
#ifndef CCP_coOPT_SRV_CAL_PAGE
   #error CCP_coOPT_SRV_CAL_PAGE not defined
#endif
#ifndef CCP_coOPT_SRV_CKS
   #error CCP_coOPT_SRV_CKS not defined
#endif
#ifndef CCP_coOPT_SRV_CKS_ASYNC_RESP
   #error CCP_coOPT_SRV_CKS_ASYNC_RESP not defined
#endif
#ifndef CCP_coOPT_SRV_MOVE
   #error CCP_coOPT_SRV_MOVE not defined
#endif
#ifndef CCP_coOPT_SRV_MOVE_ASYNC_RESP
   #error CCP_coOPT_SRV_MOVE_ASYNC_RESP not defined
#endif
#ifndef CCP_coOPT_SRV_PROG
   #error CCP_coOPT_SRV_PROG not defined
#endif
#ifndef CCP_coOPT_SRV_PROG_ASYNC_RESP
   #error CCP_coOPT_SRV_PROG_ASYNC_RESP not defined
#endif
#ifndef CCP_coOPT_SRV_CLR_MEM_ASYNC_RESP
   #error CCP_coOPT_SRV_CLR_MEM_ASYNC_RESP not defined
#endif

/**********************************************************************************************************************/
/* DEFINES                                                                                                            */
/**********************************************************************************************************************/
/* !Comment: Checksum size */
#define CCPUSR_u8CKS_SIZE 2

#define CCPUSR_DFLT_CALIB_PAGE_RAM_ADDR ( CCPUSR_DFLT_CALIB_PAGE_ADDR + CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_RAM \
                                        - CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_ROM)

extern unsigned int __const_begin[];
extern unsigned int __const_end[];

/**********************************************************************************************************************/
/* DATA DEFINITION                                                                                                    */
/**********************************************************************************************************************/
#define CCP_START_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"

boolean CCPUSR_bDaqListEnableEvent = FALSE;
uint8   CCPUSR_enuCalStoreStatus;
uint32  CCPUSR_u32ActivePageAddr;
uint32  CCPUSR_au32ReadOnlyMemoryZone[2*CCPUSR_NB_READ_ONLY_ZONE];

#define CCP_STOP_SEC_VAR_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* CONSTANTS DEFINITION                                                                                               */
/**********************************************************************************************************************/
#define CCP_START_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h"

#if (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD)
/* !Comment: Default value of CCPUSR_strDaqListDynCfg used by NvM manager */
const CCPUSR_tstrDaqListDynCfg CCPUSR_kstrDaqListDynCfgInin =
{
   {0},
# if (CCP_coDAQ_ELM_SIZE_MAX != CCP_coDAQ_ELM_SIZE_MAX_8_BITS)
   {0},
# endif /*(CCP_coDAQ_ELM_SIZE_MAX != CCP_coDAQ_ELM_SIZE_MAX_8_BITS) */
# if (CCP_coDAQ_RESU_FEATURE == CCP_coACVD)
   {0},
   {0},
   {0},
   {0},
   {0},
#  if (CCP_coDAQ_RESU_ADDL_INFOS == CCP_coACVD)
   {
      0
   }
#  endif /* (CCP_coDAQ_RESU_ADDL_INFOS == CCP_coACVD) */
# endif /* (CCP_coDAQ_RESU_FEATURE == CCP_coACVD) */
};
#endif /* (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) */

#define CCP_STOP_SEC_CONST_UNSPECIFIED
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* INTERNAL FUNCTIONS DEFINITION                                                                                      */
/**********************************************************************************************************************/
#define CCP_START_SEC_CODE
#include "CCP_MemMap.h"

/**********************************************************************************************************************/
/* !FuncName    : CCPUSR_udtMemoryControlWriteRight                                                                   */
/* !Description : Check if Write access is allowed for the memory range                                               */
/**********************************************************************************************************************/
static CCP_tudtCmdSts CCPUSR_udtMemoryControlWriteRight
(
   P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA) pu8SrcAddr,
   uint8                                  u8SizeOfData
)
{
   CCP_tudtCmdSts udtlocalStatus;
   uint16_least   u16LocalLoop;

   udtlocalStatus = CCP_udtCMD_STS_ACS_DENIED;

   for (u16LocalLoop = 0; u16LocalLoop < 2 * CCPUSR_NB_WRITABLE_ZONE; u16LocalLoop += 2)
   {
      if (  ((uint32)pu8SrcAddr >= CCPUSR_kau32WritableMemoryZone[u16LocalLoop])
         && ((uint32)pu8SrcAddr <= (CCPUSR_kau32WritableMemoryZone[u16LocalLoop + 1] - u8SizeOfData)))
      {
         udtlocalStatus = CCP_udtCMD_STS_NO_ERR;
      }
   }

   return (udtlocalStatus);
}

/**********************************************************************************************************************/
/* !FuncName    : CCPUSR_udtMemoryControlReadRight                                                                    */
/* !Description : Check if read access is allowed for the memory range                                                */
/* !LastAuthor  : daniel                                                                                              */
/**********************************************************************************************************************/
static CCP_tudtCmdSts CCPUSR_udtMemoryControlReadRight
(
   P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA) pu8SrcAddr,
   uint8                                  u8SizeOfData
)
{
   CCP_tudtCmdSts udtlocalStatus;
   uint16_least   u16LocalLoop;


   udtlocalStatus = CCP_udtCMD_STS_ACS_DENIED;

   for (u16LocalLoop = 0; u16LocalLoop < 2 * CCPUSR_NB_READ_ONLY_ZONE; u16LocalLoop += 2)
   {
      if (  ((uint32)pu8SrcAddr >= CCPUSR_au32ReadOnlyMemoryZone[u16LocalLoop])
         && ((uint32)pu8SrcAddr <= (CCPUSR_au32ReadOnlyMemoryZone[u16LocalLoop + 1] - u8SizeOfData)))
      {
         udtlocalStatus = CCP_udtCMD_STS_NO_ERR;
      }
   }

   if (   ((uint32)pu8SrcAddr >= (uint32)(&__const_begin)) 
       && ((uint32)pu8SrcAddr <= (uint32)((uint32)(&__const_end) - u8SizeOfData)))
   {
      udtlocalStatus = CCP_udtCMD_STS_NO_ERR;
   }

   /* If not found check in writeable memory -> writeable memory has read allowed access right too */
   if (udtlocalStatus != CCP_udtCMD_STS_NO_ERR)
   {
      udtlocalStatus = CCPUSR_udtMemoryControlWriteRight(pu8SrcAddr, u8SizeOfData);
   }

   return (udtlocalStatus);
}

#define CCP_STOP_SEC_CODE
#include "CCP_MemMap.h"


/**********************************************************************************************************************/
/* FUNCTIONS DEFINITION                                                                                               */
/**********************************************************************************************************************/
#define CCP_START_SEC_CODE
#include "CCP_MemMap.h"

/**********************************************************************************************************************/
/* !Description: CCP user initialisation                                                                              */
/* !LastAuthor  : daniel                                                                                              */
/**********************************************************************************************************************/
FUNC(void, CCP_USR_CODE) CCP_vidUsrIni(void)
{
   uint16 u16LocalIndex;
#if (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD)
   CCPUSR_vidDaqListIni();
#endif /* (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) */
   CCPUSR_enuCalStoreStatus = CCPUSR_CAL_STORE_INIT;
   
   CalUsr_bIsCalibUpdEna = FALSE;
   /* bLocIsCalDnEna = CALUsr_bIsCalDownldEnabled(); */
   if (1) // (bLocIsCalDnEna)
   {
       if (DEVHAL_bCheckEmulCard() == TRUE)
       {
          CCPUSR_u32ActivePageAddr = CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_RAM;
       }
       else
       {
         CCPUSR_u32ActivePageAddr = CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_ROM;
       }
   }
   else
   {
       CCPUSR_u32ActivePageAddr = CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_ROM;
   }
    
   for (u16LocalIndex = 0; u16LocalIndex < (2*CCPUSR_NB_READ_ONLY_ZONE); u16LocalIndex++)
   {
      CCPUSR_au32ReadOnlyMemoryZone[u16LocalIndex] = CCPUSR_kau32ReadOnlyMemoryZone[u16LocalIndex];
   }
}

/**********************************************************************************************************************/
/* !Description: Notify end of session                                                                                */
/**********************************************************************************************************************/
FUNC(void, CCP_USR_CODE) CCP_vidUsrNtfySsnTrmd(void)
{
}

#if (  (CCP_coSLAVE_DEV_ID_USR == CCP_coACVD) \
    || (  (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) \
       && (CCP_coDAQ_RESU_FEATURE == CCP_coACVD)))
   /*******************************************************************************************************************/
   /* !Description: Get device identification location and length                                                     */
   /*******************************************************************************************************************/
   FUNC(void, CCP_USR_CODE) CCP_vidUsrGetDevId
   (
      /* !Comment: Pointer to a buffer to store the identifier location                                               */
      P2VAR(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pstrMta,
      /* !Comment: Pointer to a buffer to store the identifier length                                                 */
      P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA)       pu8Len
   )
   {
# if (  (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) \
     && (CCP_coDAQ_RESU_FEATURE == CCP_coACVD))
      pstrMta->u32Adr = (uint32)(&CCPUSR_strDaqListDynCfg.au8ResuDevIdSsnCfgId[0]);
      pstrMta->u8Extn = 0;
      *pu8Len         = CCPUSR_u8DAQ_RESU_DEV_ID_SSN_CFG_ID_LEN;
# else
      #error Not implemented
# endif
   }
#endif /* (CCP_coSLAVE_DEV_ID_USR == CCP_coACVD) */

#if (CCP_coSLAVE_STN_ADR_USR == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: check the received station address                                                                */
   /*******************************************************************************************************************/
   /* !Comment: check the received station address valid(TRUE) or not(FALSE)                                          */
   FUNC(boolean, CCP_USR_CODE) CCP_bUsrStnAdrChk
   (
      /* !Comment: Service requesting to check the Station Address                                                    */
      /* !Range  : CCP_u8USR_SRV_CNCT, CCP_u8USR_SRV_DCNCT, CCP_u8USR_SRV_TEST (guaranted by caller)                  */
      uint8 u8UsrSrv,
      /* !Comment: the station address received                                                                       */
      uint16 u16StnAdr
   )
   {
      #error Not implemented
   }
#endif /* (CCP_coSLAVE_STN_ADR_USR == CCP_coACVD) */

/**********************************************************************************************************************/
/* !Description: Read data at a specified location                                                                    */
/**********************************************************************************************************************/
/* !Comment: Status of the request                                                                                    */
/* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_ACS_DENIED                                                         */
FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrReadMem
(
   /* !Comment: Service requesting to read data                                                                       */
   /* !Range  : CCP_u8USR_SRV_SHO_UPLD, CCP_u8USR_SRV_UPLD                                                            */
   /*           (guaranted by caller)                                                                                 */
   uint8                                          u8UsrSrv,
   /* !Comment: Location of data                                                                                      */
   P2CONST(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pkstrMta,
   /* !Comment: Pointer to a buffer to store the data                                                                 */
   P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA)         pu8Data,
   /* !Comment: Size of the data to read                                                                              */
   /* !Unit   : Byte                                                                                                  */
   uint8                                          u8DataSize
)
{
   uint8_least                            u8LocalIdx;
   P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA) pu8Src;
   CCP_tudtCmdSts                         udtLocalStatus;


   COMPILER_UNUSED_PARAMETER(u8UsrSrv);

   pu8Src = (P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA))pkstrMta->u32Adr;

   udtLocalStatus = CCPUSR_udtMemoryControlReadRight(pu8Src, u8DataSize);
   if (udtLocalStatus == CCP_udtCMD_STS_NO_ERR)
   {
      for (u8LocalIdx = 0; u8LocalIdx < u8DataSize; u8LocalIdx++)
      {
         *pu8Data = *pu8Src;
         pu8Data++;
         pu8Src++;
      }
   }
   return(udtLocalStatus);
}

#if (  (CCP_coSRV_UPLD_ASYNC_RESP == CCP_coACVD) \
    || (CCP_coOPT_SRV_SHO_UPLD_ASYNC_RESP == CCP_coACVD))
   /*******************************************************************************************************************/
   /* !Description: Request status for asynchronous data upload                                                       */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND                                                        */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrReadMemSts
   (
      /* !Comment: Pointer to a buffer to store the data                                                              */
      P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA) pu8Data
   )
   {
      #error Not implemented
   }
#endif /* (  (CCP_coSRV_UPLD_ASYNC_RESP == CCP_coACVD)          */
       /* || (CCP_coOPT_SRV_SHO_UPLD_ASYNC_RESP == CCP_coACVD)) */

/**********************************************************************************************************************/
/* !Description: Writes data at a specified location                                                                  */
/* !LastAuthor  : daniel                                                                                              */
/**********************************************************************************************************************/
/* !Comment: Status of the request                                                                                    */
/* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_ACS_DENIED                                                         */
FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrWrMem
(
   /* !Comment: Service requesting to write data                                                                      */
   /* !Range  : CCP_u8USR_SRV_DNLD6, CCP_u8USR_SRV_DNLD                                                               */
   /*           (guaranted by caller)                                                                                 */
   uint8                                          u8UsrSrv,
   /* !Comment: Destination of data                                                                                   */
   P2CONST(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pkstrMta,
   /* !Comment: Pointer to the data                                                                                   */
   P2CONST(uint8, AUTOMATIC, CCP_APPL_DATA)       pku8Data,
   /* !Comment: Size of the data to write                                                                             */
   /* !Unit   : Byte                                                                                                  */
   uint8                                          u8DataSize
)
{
   uint32                                 u32LocAddr;
   uint8_least                            u8LocIdx;
   P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA) pu8LocDst;
   CCP_tudtCmdSts                         udtLocalStatus;


   COMPILER_UNUSED_PARAMETER(u8UsrSrv);

   u32LocAddr = pkstrMta->u32Adr;

   /* Allow the download only if Calibration are in RAM */
   /* CCPUSR_u32ActivePageAddr can becomes = to CCPUSR_DFLT_CALIB_PAGE_RAM_ADDR on devaid only */
   if (CCPUSR_u32ActivePageAddr == CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_RAM)
   {
      /* TODO: For best maintainability, address shall be provided by linker */
      if (  (u32LocAddr >= (uint32)CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_ROM)
         && (u32LocAddr < ((uint32)CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_ROM + CCPUSR_CALIBRATION_SIZE)) )
      {
         u32LocAddr = (u32LocAddr - CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_ROM)
                                               + CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_RAM;
      }
      else if(   (u32LocAddr >= (uint32)CCPUSR_CALUSR_START_ADDR_IN_ROM)
                && (u32LocAddr < ((uint32)CCPUSR_CALUSR_START_ADDR_IN_ROM + CCPUSR_CALUSR_SIZE) ) )
      {
         u32LocAddr = (u32LocAddr - CCPUSR_CALUSR_START_ADDR_IN_ROM)
                                                + CCPUSR_CALUSR_START_ADDR_IN_RAM;
      }
      else
      {
         /* !Comment: No process. */
      }
   }

   pu8LocDst = (P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA))u32LocAddr;

   udtLocalStatus = CCPUSR_udtMemoryControlWriteRight(pu8LocDst, u8DataSize);
   if (udtLocalStatus == CCP_udtCMD_STS_NO_ERR)
   {
      for (u8LocIdx = 0; u8LocIdx < u8DataSize; u8LocIdx++)
      {
         *pu8LocDst = *pku8Data;
         pku8Data++;
         pu8LocDst++;
      }
      
      if (CCPUSR_u32ActivePageAddr == CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_RAM)
      {
         /* Data cache shall be invalidated for the 3 cores  */
         DEVHAL_vidInvalidateDataCache();
      }
   }
   return(udtLocalStatus);
}

#if (  (CCP_coSRV_DNLD_ASYNC_RESP == CCP_coACVD) \
    || (CCP_coOPT_SRV_DNLD6_ASYNC_RESP == CCP_coACVD))
   /*******************************************************************************************************************/
   /* !Description: Request status for asynchronous data download                                                     */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND                                                        */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrWrMemSts(void)
   {
      #error Not implemented
   }
#endif /* (  (CCP_coSRV_DNLD_ASYNC_RESP == CCP_coACVD)       */
       /* || (CCP_coOPT_SRV_DNLD6_ASYNC_RESP == CCP_coACVD)) */

#if (CCP_coOPT_SRV_SSN_STS == CCP_coACVD)
   #if (CCP_coCAL_STORE_FEATURE == CCP_coACVD)
      /****************************************************************************************************************/
      /* !Description: Request to store calibration                                                                   */
      /****************************************************************************************************************/
      FUNC(void, CCP_USR_CODE) CCP_vidUsrNtfyCalStoreSttChgd
      (
         /* !Comment: State of Calibration Store bit (TRUE: request to store calibrations)                            */
         boolean bCalStoreStt
      )
      {
         if (bCalStoreStt == TRUE)
         {
            CCPUSR_enuCalStoreStatus = CCPUSR_CAL_STORE_REQUESTED;
         }
         else
         {
            CCPUSR_enuCalStoreStatus = CCPUSR_CAL_STORE_INIT;
         }
      }
   #endif /* (CCP_coCAL_STORE_FEATURE == CCP_coACVD) */

   #if (CCP_coADDL_STS == CCP_coACVD)
      /****************************************************************************************************************/
      /* !Description: Read additional session status information                                                     */
      /****************************************************************************************************************/
      FUNC(void, CCP_USR_CODE) CCP_vidUsrGetAddlSts
      (
         /* !Comment: Pointer to a buffer to store the status qualifier                                               */
         P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA) pu8StsQualifier,
         /* !Comment: Pointer to a 3 bytes buffer to store the information                                            */
         P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA) pu8Sts
      )
      {
         #error Not implemented
      }
   #endif /* (CCP_coADDL_STS == CCP_coACVD) */
#endif /* (CCP_coOPT_SRV_SSN_STS == CCP_coACVD) */

#if (CCP_coOPT_SRV_SEED_KEY == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: Request of a seed to unlock a resource                                                            */
   /*******************************************************************************************************************/
   FUNC(void, CCP_USR_CODE) CCP_vidUsrGetSeed
   (
      /* !Comment: Resource identifier                                                                                */
      /* !Range  : CCP_u8CAL_RES, CCP_u8DAQ_RES, CCP_u8PGM_RES                                                        */
      /*           (guaranted by caller)                                                                              */
      uint8 u8Res,
      /* !Comment: Pointer to a buffer to store the seed                                                              */
      uint8 au8Key[4]
   )
   {
      #error Not implemented
   }

   /*******************************************************************************************************************/
   /* !Description: Check key to unlock a resource                                                                    */
   /*******************************************************************************************************************/
   /* !Comment: Status of the check                                                                                   */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_ACS_LOCKD                                                       */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrChkKey
   (
      /* !Comment: Resource identifier                                                                                */
      /* !Range  : CCP_u8CAL_RES, CCP_u8DAQ_RES, CCP_u8PGM_RES                                                        */
      /*           (guaranted by caller)                                                                              */
      uint8       u8Res,
      /* !Comment: Key to check                                                                                       */
      const uint8 aku8Key[6]
   )
   {
      #error Not implemented
   }
#endif /* (CCP_coOPT_SRV_SEED_KEY == CCP_coACVD) */

#if (CCP_coOPT_SRV_CAL_PAGE == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: Select a calibration page                                                                         */
   /* !LastAuthor  : daniel                                                                                           */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_ACS_DENIED                                                      */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrSelCalPage
   (
      /* !Comment: Location of calibration page                                                                       */
      P2CONST(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pkstrMta
   )
   {
      CCP_tudtCmdSts udtReturnCode;

      udtReturnCode = CCP_udtCMD_STS_NO_ERR;
      if (0) //(DEVHAL_bCheckEmulCard() == TRUE)
      {
         if (pkstrMta->u32Adr == CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_ROM)
         {
            CCPUSR_u32ActivePageAddr = CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_ROM;
            udtReturnCode = CCP_udtCMD_STS_NO_ERR;
         }
         else
         {
            if (pkstrMta->u32Adr == CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_RAM)
            {
               CCPUSR_u32ActivePageAddr = CCPUSR_START_ADDRESS_OF_CALIBRATION_IN_RAM;
               udtReturnCode = CCP_udtCMD_STS_NO_ERR;
            }
            /* else the page address is not good and we answer access denied */
         }
      }
      return(udtReturnCode);
   }

   /*******************************************************************************************************************/
   /* !Description: Get start address of current active calibration page                                              */
   /*******************************************************************************************************************/
   FUNC(void, CCP_USR_CODE) CCP_vidUsrGetAcvCalPage
   (
      /* !Comment: Pointer to a buffer to store the page location                                                     */
      P2VAR(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pstrMta
   )
   {

      pstrMta->u32Adr = CCPUSR_u32ActivePageAddr;
      pstrMta->u8Extn = CCPUSR_DFLT_CALIB_PAGE_EXTN;
   }
#endif /* (CCP_coOPT_SRV_CAL_PAGE == CCP_coACVD) */

#if (CCP_coOPT_SRV_CKS == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: Request to build checksum                                                                         */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND, CCP_udtCMD_STS_ACS_DENIED                             */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrBldCks
   (
      /* !Comment: Start address for checksum calculation                                                             */
      P2CONST(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pkstrMta,
      /* !Comment: Block size                                                                                         */
      /* !Unit   : Byte                                                                                               */
      uint32                                         u32BlkSize,
      /* !Comment: Pointer to a buffer to store the checksum size                                                     */
      /* !Range  : Checksum size between 1 and 4                                                                      */
      /* !Unit   : Byte                                                                                               */
      P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA)         pu8CksSize,
      /* !Comment: Pointer to a buffer to store the calculated checksum (buffer is aligned on a 4-byte boundary)      */
      uint8                                          au8CksData[4]
   )
   {
      uint32                                  u32LocalIdx;
      P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA)  pu8Data;
      uint16                                  u16LocalChecksum;
      P2VAR(uint16, AUTOMATIC, CCP_APPL_DATA) pu16Cks;


      u16LocalChecksum = 0;
      pu8Data          = (P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA))pkstrMta->u32Adr;
      for (u32LocalIdx = 0; u32LocalIdx < u32BlkSize; u32LocalIdx++)
      {
         u16LocalChecksum += *pu8Data;
         pu8Data++;
      }
      pu16Cks     = (P2VAR(uint16, AUTOMATIC, CCP_APPL_DATA))&au8CksData[0];
      *pu16Cks    = u16LocalChecksum;
      *pu8CksSize = CCPUSR_u8CKS_SIZE;
      return (CCP_udtCMD_STS_NO_ERR);
   }
#endif /* (CCP_coOPT_SRV_CKS == CCP_coACVD) */

#if (CCP_coOPT_SRV_CKS_ASYNC_RESP == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: Request status and checksum for asynchronous checksum                                             */
   /*               build                                                                                             */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND                                                        */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrBldCksSts
   (
      /* !Comment: Pointer to a buffer to store the checksum size                                                     */
      /* !Range  : Checksum size between 1 and 4                                                                      */
      /* !Unit   : Byte                                                                                               */
      P2VAR(uint8, AUTOMATIC, CCP_APPL_DATA) pu8CksSize,
      /* !Comment: Pointer to a buffer to store the calculated checksum (buffer is aligned on a 4-byte boundary)      */
      uint8                                  au8CksData[4]
   )
   {
      #error Not implemented
   }
#endif /* (CCP_coOPT_SRV_CKS_ASYNC_RESP == CCP_coACVD) */

#if (CCP_coOPT_SRV_MOVE == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: Request to move data                                                                              */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND, CCP_udtCMD_STS_ACS_DENIED                             */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrMove
   (
      /* !Comment: Source address                                                                                     */
      P2CONST(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pkstrMtaSrc,
      /* !Comment: Destination address                                                                                */
      P2CONST(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pkstrMtaDst,
      /* !Comment: Block size                                                                                         */
      /* !Unit   : Byte                                                                                               */
      uint32                                         u32BlkSize
   )
   {
      #error Not implemented
   }
#endif /* (CCP_coOPT_SRV_MOVE == CCP_coACVD) */

#if (CCP_coOPT_SRV_MOVE_ASYNC_RESP == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: Request status for asynchronous data moving                                                       */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND                                                        */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrMoveSts(void)
   {
      #error Not implemented
   }
#endif /* (CCP_coOPT_SRV_MOVE_ASYNC_RESP == CCP_coACVD) */

#if (CCP_coOPT_SRV_PROG == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: Request to clear non-volatile memory                                                              */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND, CCP_udtCMD_STS_ACS_DENIED                             */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrClrMem
   (
      /* !Comment: Start address of block to erase                                                                    */
      P2CONST(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pkstrMta,
      /* !Comment: Block size                                                                                         */
      /* !Unit   : Byte                                                                                               */
      uint32                                         u32BlkSize
   )
   {
      #error Not implemented
   }

   /*******************************************************************************************************************/
   /* !Description: Request to write data in non-volatile memory                                                      */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND, CCP_udtCMD_STS_ACS_DENIED                             */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrProg
   (
      /* !Comment: Service requesting to write data                                                                   */
      /* !Range  : CCP_u8USR_SRV_PROG6, CCP_u8USR_SRV_PROG                                                            */
      /*           (guaranted by caller)                                                                              */
      uint8                                          u8UsrSrv,
      /* !Comment: Destination address                                                                                */
      P2CONST(CCP_tstrMta, AUTOMATIC, CCP_APPL_DATA) pkstrMta,
      /* !Comment: Pointer to the data                                                                                */
      P2CONST(uint8, AUTOMATIC, CCP_APPL_DATA)       pku8Data,
      /* !Comment: Data size                                                                                          */
      /* !Unit   : Byte                                                                                               */
      uint8                                          u8DataSize
   )
   {
      #error Not implemented
   }
#endif /* (CCP_coOPT_SRV_PROG == CCP_coACVD) */

#if (CCP_coOPT_SRV_PROG_ASYNC_RESP == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: Request status for asynchronous data write in non-volatile memory                                 */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND                                                        */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrProgSts(void)
   {
      #error Not implemented
   }
#endif /* (CCP_coOPT_SRV_PROG_ASYNC_RESP == CCP_coACVD) */

#if (CCP_coOPT_SRV_CLR_MEM_ASYNC_RESP == CCP_coACVD)
   /*******************************************************************************************************************/
   /* !Description: Request status for asynchronous data clear of non-volatile memory                                 */
   /*******************************************************************************************************************/
   /* !Comment: Status of the request                                                                                 */
   /* !Range  : CCP_udtCMD_STS_NO_ERR, CCP_udtCMD_STS_RESP_PND                                                        */
   FUNC(CCP_tudtCmdSts, CCP_USR_CODE) CCP_udtUsrClrMemSts(void)
   {
      #error Not implemented
   }
#endif /* (CCP_coOPT_SRV_CLR_MEM_ASYNC_RESP == CCP_coACVD) */

/**********************************************************************************************************************/
/* !Description: Restore DAQ lists configuration                                                                      */
/**********************************************************************************************************************/
#if (  (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) \
    && (CCP_coDAQ_RESU_FEATURE == CCP_coACVD))
FUNC(boolean, CCP_USR_CODE) CCPUSR_bDaqResuReqdGet(void)
{
   NvM_RequestResultType udtLocalNvMResult;

   (void)NvMIf_GetErrorStatus(NvM_BLOCK_CCP_DAQLIST_RESUME_INFO, &udtLocalNvMResult);

   return((udtLocalNvMResult == NVM_REQ_OK) ? TRUE : FALSE);
}
#endif

#if (  (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) \
    && (CCP_coDAQ_RESU_FEATURE == CCP_coACVD) \
    && (CCP_coDAQ_RESU_ADDL_INFOS == CCP_coACVD))
/**********************************************************************************************************************/
/* !Description: Restore additional information from Resume storage                                                   */
/**********************************************************************************************************************/
FUNC(void, CCP_USR_CODE) CCPUSR_vidDaqResuAddlInfosRead
(
   P2CONST(CCPUSR_tstrResuAddlInfos, AUTOMATIC, CCP_APPL_DATA) pkstrResuAddlInfos
)
{
   CCPUSR_bSenderIsDevaid = pkstrResuAddlInfos->bSenderIsDevaid;
}

/**********************************************************************************************************************/
/* !Description: Save additional information to Resume storage                                                        */
/**********************************************************************************************************************/
FUNC(void, CCP_USR_CODE) CCPUSR_vidDaqResuAddlInfosSave
(
   P2VAR(CCPUSR_tstrResuAddlInfos, AUTOMATIC, CCP_APPL_DATA) pstrResuAddlInfos
)
{
   pstrResuAddlInfos->bSenderIsDevaid = CCPUSR_bSenderIsDevaid;
}
#endif

/**********************************************************************************************************************/
/* !Description: CCP user main function                                                                               */
/* !LastAuthor  : daniel                                                                                              */
/**********************************************************************************************************************/
FUNC(void, CCP_USR_CODE) CCPUSR_vidMainFunction(void)
{
   uint8 u8LocalCheckEngineState;

   if (DEVHAL_bCheckEmulCard() == TRUE)
   {
      if (CCPUSR_enuCalStoreStatus == CCPUSR_CAL_STORE_WAIT_CONDITION)
      {
         DEVHAL_udtCheckEngineState();
         u8LocalCheckEngineState = DEVHAL_u8CheckEngineState;
         switch (u8LocalCheckEngineState)
         {
            case DEVHAL_u8ENG_STATE_AUTHORISED:
               CCPUSR_enuCalStoreStatus = CCPUSR_CAL_STORE_CONDITION_OK;
               break;
               
            case DEVHAL_u8ENG_STATE_DENIED:
               CCPUSR_enuCalStoreStatus = CCPUSR_CAL_STORE_INIT;

               /* !Comment: Patch PR PTS_149479 to be able to take into account new STORE request after a previous    */
               /*           one has been denied                                                                       */
               CCP_u8SsnSts &= (uint8)(~CCP_u8STORE_REQ);
               break;

            case DEVHAL_u8ENG_STATE_IN_PROGRESS:
               break;

            default:
               CCPUSR_enuCalStoreStatus = CCPUSR_CAL_STORE_INIT;

               /* !Comment: Patch PR PTS_149479 to be able to take into account new STORE request after a previous    */
               /*           one has been denied                                                                       */
               CCP_u8SsnSts &= (uint8)(~CCP_u8STORE_REQ);
               /* SWFAIL_vidSoftwareErrorHook(); */
               break;
         }
      }
   }
}

/**********************************************************************************************************************/
/* !Description: CCP user main function Write DAQ List                                                                */
/**********************************************************************************************************************/
#if (  (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) \
    && (CCP_coDAQ_RESU_FEATURE == CCP_coACVD))
FUNC(void, CCP_USR_CODE) CCPUSR_vidMainFunction_NvM(void)
{
   if (DEVHAL_bCheckEmulCard() == TRUE)
   {
      if (CCPUSR_bDaqResuSttUpdtd == TRUE)
      {
         CCPUSR_bDaqResuSttUpdtd = FALSE;
         if (CCPUSR_bDaqResuReqd == TRUE)
         {
            (void)NvMIf_WritePRAMBlock(NvM_BLOCK_CCP_DAQLIST_RESUME_INFO);
         }
         else
         {
            (void)NvMIf_InvalidateNvBlock(NvM_BLOCK_CCP_DAQLIST_RESUME_INFO);
         }
      }
   }
}
#endif

/**********************************************************************************************************************/
/* !Description: CCP user main function                                                                               */
/**********************************************************************************************************************/
#if (CCP_coDAQ_RESU_FEATURE == CCP_coACVD)
   FUNC(void, CCP_USR_CODE) CCPUSR_bDaqListSendEnable(void)
   {
      CCPUSR_bDaqListEnableEvent = TRUE;
   }
#endif /* (CCP_coDAQ_RESU_FEATURE == CCP_coACVD) */

/**********************************************************************************************************************/
/* !Description: CCP user main function                                                                               */
/**********************************************************************************************************************/
#if (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD)
   FUNC(void, CCP_USR_CODE) CCPUSR_DaqListSetEvent(uint8 u8EveChn)
   {
      if ( CCPUSR_bDaqListEnableEvent == TRUE )
      {
         CCP_vidDaqListSetEvent (u8EveChn);
      }
   }
#endif /* (CCP_coOPT_SRV_DAQ_LIST == CCP_coACVD) */

#define CCP_STOP_SEC_CODE
#include "CCP_MemMap.h"

/*---------------------------------------------------- end of file ---------------------------------------------------*/
