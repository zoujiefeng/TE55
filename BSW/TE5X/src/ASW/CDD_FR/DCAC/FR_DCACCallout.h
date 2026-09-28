/*******************************************************************************
 ****DateTime 2025-07-15 15:16:03****
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
#include "MAIN_AcuL.h"
#include "MAIN_OcuL.h"
#include "MAIN_AcuTsk.h"
#include "MAIN_OcuTsk.h"
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
   // kptData->tTime.u16Year  = (uint16)MAIN_MSGf32MP5_TBOX_Time_Year;
   // kptData->tTime.u8Month  = MAIN_MSGu8MP5_TBOX_Time_Month;
   // kptData->tTime.u8Day    = MAIN_MSGu8MP5_TBOX_Time_Date;
   // kptData->tTime.u8Hour   = MAIN_MSGu8MP5_TBOX_Time_Hour;
   // kptData->tTime.u8Minute = MAIN_MSGu8MP5_TBOX_Time_Minute;
   // kptData->tTime.u8Second = MAIN_MSGu8MP5_TBOX_Time_Second;

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

   for(u8Index = 0; u8Index < FR_ACU_FAULT_CODE_NUM; u8Index++)
   {
      FR_xUserHeadRamBlock.xHead.au8ACUFaultCode[u8Index] = AMAIN_u8DEV_Fault[u8Index];
   }

   for(u8Index = 0; u8Index < FR_OCU_FAULT_CODE_NUM; u8Index++)
   {
      FR_xUserHeadRamBlock.xHead.au8OCUFaultCode[u8Index] = OMAIN_u8DEV_Fault[u8Index];
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
   if(DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_ACU) >= 4)
   {
      bFaultIsOccurred = TRUE;
   }
   else if(DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_OCU) >= 4)
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
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AFTMTLCS_Iu = (uint16)(AFTMTLCS_Iuvw3[0] + 2000);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AFTMTLCS_Iv = (uint16)(AFTMTLCS_Iuvw3[1] + 2000);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AFTMTLCS_Iw = (uint16)(AFTMTLCS_Iuvw3[2] + 2000);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OFTMTLCS_Iu = (uint16)(OFTMTLCS_Iuvw3[0] + 2000);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OFTMTLCS_Iv = (uint16)(OFTMTLCS_Iuvw3[1] + 2000);

   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OFTMTLCS_Iw = (uint16)(OFTMTLCS_Iuvw3[2] + 2000);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AFTCIVDC_DutyCycleU = (uint8)((AFTCIVDC_DutyCycle3[0] + 1)*100);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AFTCIVDC_DutyCycleV = (uint8)((AFTCIVDC_DutyCycle3[1] + 1)*100);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AFTCIVDC_DutyCycleW = (uint8)((AFTCIVDC_DutyCycle3[2] + 1)*100);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OFTCIVDC_DutyCycleU = (uint8)((OFTCIVDC_DutyCycle3[0] + 1)*100);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OFTCIVDC_DutyCycleV = (uint8)((OFTCIVDC_DutyCycle3[1] + 1)*100);
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OFTCIVDC_DutyCycleW = (uint8)((OFTCIVDC_DutyCycle3[2] + 1)*100);

   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AMAIN_bSoftOvCurrPhsUFlg = (uint8)(MAIN_bGetAcuSoftOvcFlag_U());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AMAIN_bSoftOvCurrPhsVFlg = (uint8)(MAIN_bGetAcuSoftOvcFlag_V());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AMAIN_bSoftOvCurrPhsWFlg = (uint8)(MAIN_bGetAcuSoftOvcFlag_W());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AMAIN_bSoftOvBhvFlg = (uint8)(MAIN_bGetAcuSoftOvBhvFlag());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AMAIN_bIgbtLowIsFlt = (uint8)(MAIN_bGetAcuIgbtLSFaultFlag());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].AMAIN_bIgbtHighIsFlt = (uint8)(MAIN_bGetAcuIgbtHSFaultFlag());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OMAIN_bSoftOvCurrPhsUFlg = (uint8)(MAIN_bGetOcuSoftOvcFlag_U());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OMAIN_bSoftOvCurrPhsVFlg = (uint8)(MAIN_bGetOcuSoftOvcFlag_V());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OMAIN_bSoftOvCurrPhsWFlg = (uint8)(MAIN_bGetOcuSoftOvcFlag_W());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OMAIN_bSoftOvBhvFlg = (uint8)(MAIN_bGetOcuSoftOvBhvFlag());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OMAIN_bIgbtLowIsFlt = (uint8)(MAIN_bGetOcuIgbtLSFaultFlag());
   FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].OMAIN_bIgbtHighIsFlt = (uint8)(MAIN_bGetOcuIgbtHSFaultFlag());
#endif
   /* User code end line */
}
#endif

#ifdef FR_SAMPLE_PERIOD_2
static inline void FR_vidGetEventCallout_2(const uint32 ku32IndexInBuf)
{
   /* User code start line */
#ifdef _PLATFORM_GEN_CODE_EMB_
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFTCMTCS_i0dqTgt3_1 = (uint16)(AFTCMTCS_i0dqTgt3[1] + 5000);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFTCMTCS_i0dqTgt3_2 = (uint16)(AFTCMTCS_i0dqTgt3[2] + 5000);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFTCMRPC_I0dq3_1 = (uint16)(AFTCMRPC_I0dq3[1] + 5000);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFTCMRPC_I0dq3_2 = (uint16)(AFTCMRPC_I0dq3[2] + 5000);

   //FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFTCMCCS_UdqNorm = (uint16)(AFTCMCCS_UdqNorm + 5000);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFTCMTCS_idCorTgt = (uint16)(AFTCMTCS_idCorTgt);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFSEVBHV_Voltage = (uint16)(AFSEVBHV_VoltageFild);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFTSLOBS_ActEleThetaRd = (uint16)(AFTSLOBS_ActEleThetaRd);

   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFTCMTCS_i0dqTgt3_1 = (uint16)(OFTCMTCS_i0dqTgt3[1] + 5000);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFTCMTCS_i0dqTgt3_2 = (uint16)(OFTCMTCS_i0dqTgt3[2] + 5000);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFTCMRPC_I0dq3_1 = (uint16)(OFTCMRPC_I0dq3[1] + 5000);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFTCMRPC_I0dq3_2 = (uint16)(OFTCMRPC_I0dq3[2] + 5000);

   //FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFTCMCCS_UdqNorm = (uint16)(OFTCMCCS_UdqNorm + 5000);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFTCMTCS_idCorTgt = (uint16)(OFTCMTCS_idCorTgt);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFSEVBHV_Voltage = (uint16)(OFSEVBHV_VoltageFild);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFTSLOBS_ActEleThetaRd = (uint16)(OFTSLOBS_ActEleThetaRd);

   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFSSMACS_AclState = (uint8)(AFSSMACS_AclState);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].AFTSMACS_AclState = (uint8)(AFTSMACS_AclState);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFSSMACS_AclState = (uint8)(OFSSMACS_AclState);
   FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].OFTSMACS_AclState = (uint8)(OFTSMACS_AclState);
#endif
   /* User code end line */
}
#endif

#ifdef FR_SAMPLE_PERIOD_3
static inline void FR_vidGetEventCallout_3(const uint32 ku32IndexInBuf)
{
   /* User code start line */
#ifdef _PLATFORM_GEN_CODE_EMB_
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolt15VRdc = (uint16)(BSW_u16RawVolt15VRdc);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVoltDclinkFIL = (uint16)(IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM() * 100);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VHS = (uint16)(BSW_u16RawVolP5VHS);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VLS = (uint16)(BSW_u16RawVolP5VLS);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP9VMulti = (uint16)(BSW_u16RawVolP9VMulti);

   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VREF = (uint16)(BSW_u16RawVolP5VREF);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolSnsSup1 = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S());
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolSnsSup2 = (uint16)(PMux_u16GetInputVal(ePMUX_P5VGateway_VolSample));
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VBT = (uint16)(PMux_u16GetInputVal(ePMUX_P5VBt_VolSample));
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VRefProt = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF());

   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].AFaultFailureLevel = (uint8)(DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_ACU));
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].FSEVBLV_Voltage = (uint8)((FSEVBLV_Voltage)*5);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].AFSMTMTA_TempWindingMax = (uint8)(AFSMTMTA_TempWindingMax + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].AFSEVETA_TempIgbt = (uint8)(AFSEVETA_TempIgbt + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].AFTCMTCS_ParkVoltageTgt = (uint16)((AFTCMTCS_ParkVoltageTgt)*10);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].AFTMTSEP_MecaSpeedRpm = (uint16)(AFTMTSEP_MecaSpeedRpm + 20000);

   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].AFS_SpdSet_F32 = (uint16)(AFS_SpdSet_F32 + 3000);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].OFS_SpdSet_F32 = (uint16)(OFS_SpdSet_F32 + 3000);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].OFSSMACS_AclState = (uint8)(OFSSMACS_AclState);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].OFTSMACS_AclState = (uint8)(OFTSMACS_AclState);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].OFSMTMTA_TempWindingMax = (uint8)(OFSMTMTA_TempWindingMax + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].OFSEVETA_TempIgbt = (uint8)(OFSEVETA_TempIgbt + 50);

   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].OFTCMTCS_ParkVoltageTgt = (uint16)((OFTCMTCS_ParkVoltageTgt)*10);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].OFTMTSEP_MecaSpeedRpm = (uint16)(OFTMTSEP_MecaSpeedRpm + 20000);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].OFaultFailureLevel = (uint8)(DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_OCU));
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM1VoltageFild = (uint8)(RCEVHCM_KM1VoltageFild + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM2VoltageFild = (uint8)(RCEVHCM_KM2VoltageFild + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM3VoltageFild = (uint8)(RCEVHCM_KM3VoltageFild + 50);

   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM4VoltageFild = (uint8)(RCEVHCM_KM4VoltageFild + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM5VoltageFild = (uint8)(RCEVHCM_KM5VoltageFild + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM6VoltageFild = (uint8)(RCEVHCM_KM6VoltageFild + 50);
   //FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM14VoltageFild = (uint8)(RCEVHCM_KM14VoltageFild + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM7VoltageFild = (uint8)(RCEVHCM_KM7VoltageFild + 50);
   //FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM16VoltageFild = (uint8)(RCEVHCM_KM16VoltageFild + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM8VoltageFild = (uint8)(RCEVHCM_KM8VoltageFild + 50);
   FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].RCEVHCM_KM9VoltageFild = (uint8)(RCEVHCM_KM9VoltageFild + 50);

   //FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_f32CpuLoadCore2 = (uint16)(MAIN_f32CpuLoadCore2);
   //FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_f32CpuLoadCore1 = (uint16)(MAIN_f32CpuLoadCore1);
   //FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_f32CpuLoadCore0 = (uint16)(MAIN_f32CpuLoadCore0);
#endif
   /* User code end line */
}
#endif

/*******************************************************************************
 ****  Private Variable Declarations
 ******************************************************************************/

#endif /* __FR_ECU_CALLOUT_H_ */
