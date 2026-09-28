/*******************************************************************************
 ****DateTime 2025-07-11 15:03:59****
 ******************************************************************************/
#ifndef __FR_ECU_CALLOUT_H_
#define __FR_ECU_CALLOUT_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "MAIN_Cfg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_MSG_Auto_Can01_L.h"
#include "GMAIN_L.h"
#include "MAIN_tsk.h"
#include "GMAIN_tsk.h"
#include "MAIN_PduTsk.h"
#include "BSW.h"
#include "BSW_L.h"
#include "CCU6_L.h"
#include "GCCU6_L.h"
#include "DSM.h"
#include "IOHAL.h"
#include "PortMux.h"

#ifdef _PLATFORM_GEN_CODE_EMB_
    #include "SWC_FT.h"
    #include "SWC_FS.h"
#endif

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  
#define FR_CFG_BUF_REFRESH_PERMISSION   TRUE

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
/* User callback */
static void FR_vidGetExtDataOfFixHead(FR_tExtDataOfFixHead * const kptData);
static void FR_vidGetUserHeadInfoCallout(const FR_UserHeadCfg * const kpktCfg);
static boolean FR_bUpdateReqIsAllowedCallout(void);
static boolean FR_bFaultIsOccurredCallout(void);
static boolean FR_bExtStoreCondIsMetCallout(boolean * const kpbBufRefreshCmd);

#ifdef FR_SAMPLE_PERIOD_1
static inline void FR_vidGetEventCallout_1(const uint32 ku32IndexInBuf);
#endif
#ifdef FR_SAMPLE_PERIOD_2
static inline void FR_vidGetEventCallout_2(const uint32 ku32IndexInBuf);
#endif
#ifdef FR_SAMPLE_PERIOD_3
static inline void FR_vidGetEventCallout_3(const uint32 ku32IndexInBuf);
#endif

/******************************************************************************
 **** Private Function Definitions
 *****************************************************************************/
static void FR_vidGetExtDataOfFixHead(FR_tExtDataOfFixHead * const kptData)
{
   /* Do not delete this line */
   FR_vidUpdateBufCtr();

   /* User code start line */

   kptData->u32Start2ErrTime_ms  = MAIN_u32GetRunTime_ms();
   kptData->u32FactoryRunTime_s  = MAIN_u32GetFactoryRunTime_s();
   /* User code end line */
}

static void FR_vidGetUserHeadInfoCallout(const FR_UserHeadCfg * const kpktCfg)
{
   /* Do not delete this line */
   FR_vidUpdateBufAddr();

   /* User code start line */
   uint8 u8Index;
   for(u8Index = 0; u8Index < FR_SOFT_VERSION_SIZE; u8Index++)
   {
      FR_xUserHeadRamBlock.xHead.au8AppSwVersion[u8Index] = MAIN_u8UdsSwVerSup[u8Index];
   }
   for(u8Index = 0; u8Index < FR_PDU_FAULT_CODE_NUM; u8Index++)
   {
      FR_xUserHeadRamBlock.xHead.au8PDUFaultCode[u8Index] = MAIN_u8DEV_Fault[u8Index];
   }
   /* User code end line */
}

static boolean FR_bUpdateReqIsAllowedCallout(void)
{
   boolean bReqIsAllowed = TRUE;
   /* User code start line */
   bReqIsAllowed = BSW_bGetBswReadySts();
   /* User code end line */
   return bReqIsAllowed;
}

static boolean FR_bFaultIsOccurredCallout(void)
{
   boolean bFaultIsOccurred = FALSE;

   /* User code start line */
   if(DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_PDU) >= 3)
   {
      bFaultIsOccurred = TRUE;
   }
   else
   {
      bFaultIsOccurred = FALSE;
   }
   /* User code end line */
   return bFaultIsOccurred;
}

static boolean FR_bExtStoreCondIsMetCallout(boolean * const kpbBufRefreshCmd)
{
   boolean bConditionIsMet = TRUE;

   /* User code start line */
   if(FALSE)
   {
      bConditionIsMet   = FALSE;
      *kpbBufRefreshCmd = FR_CFG_BUF_REFRESH_PERMISSION;
   }
   /* User code end line */
   return bConditionIsMet;
}


#ifdef FR_SAMPLE_PERIOD_1
static inline void FR_vidGetEventCallout_1(const uint32 ku32IndexInBuf)
{
   /* User code start line */
#ifdef _PLATFORM_GEN_CODE_EMB_

   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCEVHCM_BatPos1VoltageFild  = (uint16)(RCEVHCM_BatPos1VoltageFild);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCEVHCM_MainPosVoltage      = (uint16)(RCEVHCM_MainPosVoltage);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCEVHCM_BatHeatVoltage      = (uint16)(RCEVHCM_BatHeatVoltage);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCEVHCM_SCUVoltage          = (uint16)(RCEVHCM_SCUVoltage);

   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCEVHCM_HV1Voltage           = (uint16)(RCEVHCM_HV1Voltage);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCEVHCM_HV2Voltage           = (uint16)(RCEVHCM_HV2Voltage);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCEVHCM_AuxPosVoltage        = (uint16)(RCEVHCM_AuxPosVoltage);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_PollingPrechgAclState   =(uint8)(RCSMACS_PollingPrechgAclState);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_MainPosAclState         =(uint8)(RCSMACS_MainPosAclState);

   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_SCUAclState         =(uint8)(RCSMACS_SCUAclState);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_BatHeatAclState     =(uint8)(RCSMACS_BatHeatAclState);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_EACAclState         =(uint8)(RCSMACS_EACAclState);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_AuxPosAclState      =(uint8)(RCSMACS_AuxPosAclState);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_ExtendedAclState    =(uint8)(RCSMACS_ExtendedAclState);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_HV2AclState         =(uint8)(RCSMACS_HV2AclState);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_HV4AclState         =(uint8)(RCSMACS_HV4AclState);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_HV1AclState         =(uint8)(RCSMACS_HV1AclState);

   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_PreMainAclState     =(uint8)(RCSMACS_PreMainAclState);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_MainPosFaultSts     =(uint8)(RCSMACS_MainPosFaultSts);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_SCUFaultSts         =(uint8)(RCSMACS_SCUFaultSts);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_BatHeatFaultSts     =(uint8)(RCSMACS_BatHeatFaultSts);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_EACFaultSts         =(uint8)(RCSMACS_EACFaultSts);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_AuxPosFaultSts      =(uint8)(RCSMACS_AuxPosFaultSts);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_ExtendedFaultSts    =(uint8)(RCSMACS_ExtendedFaultSts);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_HV2FaultSts         =(uint8)(RCSMACS_HV2FaultSts);

   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_HV4FaultSts         =(uint8)(RCSMACS_HV4FaultSts);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_HV1FaultSts         =(uint8)(RCSMACS_HV1FaultSts);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].RCSMACS_PreMainFaultSts     =(uint8)(RCSMACS_PreMainFaultSts);


#endif

}
#endif

#ifdef FR_SAMPLE_PERIOD_2
static inline void FR_vidGetEventCallout_2(const uint32 ku32IndexInBuf)
{
   /* User code start line */
#ifdef _PLATFORM_GEN_CODE_EMB_

#endif

}
#endif


#ifdef FR_SAMPLE_PERIOD_3
static inline void FR_vidGetEventCallout_3(const uint32 ku32IndexInBuf)
{

#ifdef _PLATFORM_GEN_CODE_EMB_

#endif

}
#endif

/*******************************************************************************
 ****  Private Variable Declarations
 ******************************************************************************/

#endif /* __FR_ECU_CALLOUT_H_ */