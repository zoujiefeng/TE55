/*******************************************************************************
 ****DateTime 2025-06-24 15:43:57****
 ******************************************************************************/
#ifndef __FR_ECU_CALLOUT_H_
#define __FR_ECU_CALLOUT_H_

/*******************************************************************************
 ****Imported Standard Header Files****
 ******************************************************************************/
#include "MAIN_Cfg.h"

/*******************************************************************************
 ****Imported Project Header Files****
 ******************************************************************************/

#include "MAIN_MSG_AUTO_C.h"
#include "GMAIN_L.h"
#include "MAIN_tsk.h"
#include "GMAIN_tsk.h"
#include "BSW.h"
#include "BSW_L.h"
#include "CCU6_L.h"
#include "GCCU6_L.h"
#include "DSM.h"
#include "IOHAL.h"

#ifdef _PLATFORM_GEN_CODE_EMB_
    #include "SWC_FT.h"
    #include "SWC_FS.h"
#endif

/******************************************************************************
 **** Private Macro Definitions
 *****************************************************************************/
#define FR_CFG_BUF_REFRESH_PERMISSION   TRUE

/******************************************************************************
 **** Private Type Definitions
 *****************************************************************************/

/******************************************************************************
 **** Global Function Declarations
 *****************************************************************************/

/******************************************************************************
 **** Private Function Declarations
 *****************************************************************************/
/*User callback*/
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
   /*Do not delete this line*/
   FR_vidUpdateBufCtr();

   /* User code start line*/
   kptData->tTime.u16Year   = (uint16)MAIN_MSGu16IPK_Year;
   kptData->tTime.u8Month  = MAIN_MSGu8IPK_Month;
   kptData->tTime.u8Day    = MAIN_MSGu8IPK_Day;
   kptData->tTime.u8Hour   = MAIN_MSGu8IPK_Hour;
   kptData->tTime.u8Minute = MAIN_MSGu8IPK_Minute;
   kptData->tTime.u8Second = MAIN_MSGu8IPK_Second;

   kptData->u32Start2ErrTime_ms  = MAIN_u32RunTime_ms;
   kptData->u32FactoryRunTime_s  = MAIN_u32RunTime_s;
   /* User code end line*/
}
static void FR_vidGetUserHeadInfoCallout(const FR_UserHeadCfg * const kpktCfg)
{
   /*Do not delete this line*/
   FR_vidUpdateBufAddr();

   /* User code start line*/
   uint8 u8Index;
   for(u8Index = 0; u8Index < FR_SOFT_VERSION_SIZE; u8Index++)
   {
      FR_xUserHeadRamBlock.xHead.au8AppSwVersion[u8Index] = MAIN_u8UdsSwVerSup[u8Index];
   }
   for(u8Index = 0; u8Index < FR_MCU_FAULT_CODE_NUM; u8Index++)
   {
      FR_xUserHeadRamBlock.xHead.au8MCUFaultCode[u8Index] = MAIN_u8DEV_Fault[u8Index];
   }
   for(u8Index = 0; u8Index < FR_GCU_FAULT_CODE_NUM; u8Index++)
   {
      FR_xUserHeadRamBlock.xHead.au8GCUFaultCode[u8Index] = GMAIN_u8DEV_Fault[u8Index];
   }
   /* User code end line*/
}

static boolean FR_bUpdateReqIsAllowedCallout(void)
{
   boolean bReqIsAllowed = TRUE;
   /* User code start line*/
   bReqIsAllowed = BSW_bGetBswReadySts();
   /* User code end line*/
   return bReqIsAllowed;
}

static boolean FR_bFaultIsOccurredCallout(void)
{
   boolean bFaultIsOccurred = FALSE;

   /* User code start line*/
   if(DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_GCU) >= 4)
   {
      bFaultIsOccurred = TRUE;
   }
   else if(DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_MCU) >= 4)
   {
      bFaultIsOccurred = TRUE;
   }
   else
   {
      bFaultIsOccurred = FALSE;
   }
   /* User code end line*/
   return bFaultIsOccurred;
}

static boolean FR_bExtStoreCondIsMetCallout(boolean * const kpbBufRefreshCmd)
{
   boolean bConditionIsMet = TRUE;

   /* User code start line*/
   if(FALSE)
   {
      bConditionIsMet = FALSE;
      *kpbBufRefreshCmd = FR_CFG_BUF_REFRESH_PERMISSION;
   }
   /* User code end line*/
   return bConditionIsMet ;
}

#ifdef FR_SAMPLE_PERIOD_1
static inline void FR_vidGetEventCallout_1(const uint32 ku32IndexInBuf)
{
     /* User code start line */
#ifdef _PLATFORM_GEN_CODE_EMB_
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].FTMTLCS_Iu = (uint16)(FTMTLCS_Iuvw3[0] + 2000);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].FTMTLCS_Iv = (uint16)(FTMTLCS_Iuvw3[1] + 2000);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].FTMTLCS_Iw = (uint16)(FTMTLCS_Iuvw3[2] + 2000);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].SD_ResolverSinCos2_U16_1 = (uint16)(SD_ResolverSinCos2_U16[0]);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].SD_ResolverSinCos2_U16_2 = (uint16)(SD_ResolverSinCos2_U16[1]);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].VSI_AscStep = (uint8)(CCU6_u8McuAscSttStep);

    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GFTMTLCS_Iu = (uint16)(GFTMTLCS_Iuvw3[0] + 2000);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GFTMTLCS_Iv = (uint16)(GFTMTLCS_Iuvw3[1] + 2000);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GFTMTLCS_Iw = (uint16)(GFTMTLCS_Iuvw3[2] + 2000);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GSD_ResolverSinCos2_U16_1 = (uint16)(GSD_ResolverSinCos2_U16[0]);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GSD_ResolverSinCos2_U16_2 = (uint16)(GSD_ResolverSinCos2_U16[1]);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GVSI_AscStep = (uint8)(GCCU6_u8McuAscSttStep);

    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GFT_Iuvw3_U = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_CURRENT_U_GCU());
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GFT_Iuvw3_V = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_CURRENT_V_GCU());
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GFT_Iuvw3_W = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_CURRENT_W_GCU());
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].FTCIVDC_DutyCycleU = (uint8)((FTCIVDC_DutyCycle3[2] + 1)*100);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].FTCIVDC_DutyCycleV = (uint8)((FTCIVDC_DutyCycle3[1] + 1)*100);

    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].FTCIVDC_DutyCycleW = (uint8)((FTCIVDC_DutyCycle3[0] + 1)*100);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GFTCIVDC_DutyCycleU = (uint8)((GFTCIVDC_DutyCycle3[2] + 1)*100);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GFTCIVDC_DutyCycleV = (uint8)((GFTCIVDC_DutyCycle3[1] + 1)*100);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GFTCIVDC_DutyCycleW = (uint8)((GFTCIVDC_DutyCycle3[0] + 1)*100);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GCCU6_bHwFaultIgbtH = (uint8)(GCCU6_bHwFaultIgbtH);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GCCU6_bHwFaultIgbtL = (uint8)(GCCU6_bHwFaultIgbtL);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GCCU6_bHwFaultDcOvVolt = (uint8)(GCCU6_bHwFaultDcOvVolt);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GCCU6_bHwFaultOvcU = (uint8)(GCCU6_bHwFaultOvcU);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GCCU6_bHwFaultOvcV = (uint8)(GCCU6_bHwFaultOvcV);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GCCU6_bHwFaultOvcW = (uint8)(GCCU6_bHwFaultOvcW);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GMAIN_bSoftOvCurrPhsUFlg = (uint8)(GMAIN_bSoftOvCurrPhsUFlg);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GMAIN_bSoftOvCurrPhsVFlg = (uint8)(GMAIN_bSoftOvCurrPhsVFlg);
    FR_tInputBuf.tSet.atBuf1[ku32IndexInBuf].GMAIN_bSoftOvCurrPhsWFlg = (uint8)(GMAIN_bSoftOvCurrPhsWFlg);

#endif
     /* User code end line */
}
#endif

#ifdef FR_SAMPLE_PERIOD_2
static inline void FR_vidGetEventCallout_2(const uint32 ku32IndexInBuf)
{
     /* User code start line */
#ifdef _PLATFORM_GEN_CODE_EMB_
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FT_ResloverThetaRdSuiPi_F32 = (uint16)((FT_ResloverThetaRdSuiPi_F32 + 4)*1000);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMTCS_i0dqTgt3_1 = (uint16)(FTCMTCS_i0dqTgt3[1] + 5000);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMTCS_i0dqTgt3_2 = (uint16)(FTCMTCS_i0dqTgt3[2] + 5000);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMRPC_I0dq3_1 = (uint16)(FTCMRPC_I0dq3[1] + 5000);

    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMRPC_I0dq3_2 = (uint16)(FTCMRPC_I0dq3[2] + 5000);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMCCS_UdqNorm = (uint16)(FTCMCCS_UdqNorm);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMTCS_idCorTgt = (uint16)(FTCMTCS_idCorTgt + 5000);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FSEVBHV_Voltage = (uint16)(FSEVBHV_VoltageFild);

    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMTCS_ParkVoltageTgt = (uint16)((FTCMTCS_ParkVoltageTgt)*10);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FSTCGTC_TorqueTgt = (uint16)((FSTCGTC_TorqueTgt + 1500)*10);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMTCS_ElecTorqueTgt = (uint16)((FTCMTCS_ElecTorqueTgt + 1500)*10);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMTCS_ElecTorqueMaxMin_1 = (uint16)((FTCMTCS_ElecTorqueMaxMin[0])*10);

    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTCMTCS_ElecTorqueMaxMin_2 = (uint16)((FTCMTCS_ElecTorqueMaxMin[1] + 1500)*10);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFT_ResloverThetaRdSuiPi_F32 = (uint16)((GFT_ResloverThetaRdSuiPi_F32 + 4)*1000);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMTCS_i0dqTgt3_1 = (uint16)(GFTCMTCS_i0dqTgt3[1] + 5000);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMTCS_i0dqTgt3_2 = (uint16)(GFTCMTCS_i0dqTgt3[2] + 5000);

    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMRPC_I0dq3_1 = (uint16)(GFTCMRPC_I0dq3[1] + 5000);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMRPC_I0dq3_2 = (uint16)(GFTCMRPC_I0dq3[2] + 5000);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMCCS_UdqNorm = (uint16)(GFTCMCCS_UdqNorm);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMTCS_idCorTgt = (uint16)(GFTCMTCS_idCorTgt + 5000);

    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFSEVBHV_Voltage = (uint16)(GFSEVBHV_VoltageFild);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMTCS_ParkVoltageTgt = (uint16)((GFTCMTCS_ParkVoltageTgt)*10);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFSTCGTC_TorqueTgt = (uint16)((GFSTCGTC_TorqueTgt + 1500)*10);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMTCS_ElecTorqueTgt = (uint16)((GFTCMTCS_ElecTorqueTgt + 1500)*10);

    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMTCS_ElecTorqueMaxMin_1 = (uint16)((GFTCMTCS_ElecTorqueMaxMin[0])*10);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTCMTCS_ElecTorqueMaxMin_2 = (uint16)((GFTCMTCS_ElecTorqueMaxMin[1] + 1500)*10);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFSSMACS_AclState = (uint8)(GFSSMACS_AclState);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFTSMACS_AclState = (uint8)(GFTSMACS_AclState);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FSSMACS_AclState = (uint8)(FSSMACS_AclState);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].FTSMACS_AclState = (uint8)(FTSMACS_AclState);

    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].SDMTMEP_SinScaled = (uint16)(SDMTMEP_SinScaled);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].SDMTMEP_CosScaled = (uint16)(SDMTMEP_CosScaled);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GSDMTMEP_SinScaled = (uint16)(GSDMTMEP_SinScaled);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GSDMTMEP_CosScaled = (uint16)(GSDMTMEP_CosScaled);
    FR_tInputBuf.tSet.atBuf2[ku32IndexInBuf].GFS_UbatHV_U16 = (uint16)(GFS_UbatHV_U16);

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
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVoltDclinkFIL = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV_MCU());
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VHS = (uint16)(BSW_u16RawVolP5VHS);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VLS = (uint16)(BSW_u16RawVolP5VLS);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP16VMulti = (uint16)(BSW_u16RawVolP16VMulti);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_u8IgbtLowFltCnt = (uint8)(MAIN_u8IgbtLowFltCnt);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VREF = (uint16)(BSW_u16RawVolP5VREF);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolSnsSup1 = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_P5V_BT_AD2S());
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolSnsSup2 = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_P5V_GATEWAY());
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VBT = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_P5V_BT());
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].BSW_u16RawVolP5VRefProt = (uint16)(IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF());
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_u8IgbtHighFltCnt = (uint8)(MAIN_u8IgbtHighFltCnt);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].FaultFailureLevel = (uint8)(DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_MCU));
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].FSEVBLV_Voltage = (uint8)((FSEVBLV_Voltage)*5);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].FSMTMTA_TempWindingMax = (uint8)(FSMTMTA_TempWindingMax + 50);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].FSEVETA_TempIgbt = (uint8)(FSEVETA_TempIgbt + 50);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].FTEVEIT_EstimTempSecFild = (uint8)(FTEVEIT_EstimTempSecFild + 50);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_u16PWMPeriodVal = (uint16)(MAIN_u16PWMPeriodVal);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].SDMTMEP_MecaSpeedRpm = (uint16)(SDMTMEP_MecaSpeedRpm + 20000);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].FTCMTTC_RealMecaTorqueTgt = (uint16)((FTCMTTC_RealMecaTorqueTgt + 3000)*10);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].SD_AutoPhasingAngle_F32 = (uint16)((SD_AutoPhasingAngle_F32 + 3)*10000);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGf32VCU_ReqGCUTrq = (uint16)(MAIN_MSGf32VCU_ReqGCUTrq + 1024);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGf32VCU_ReqMCUTrq = (uint16)(MAIN_MSGf32VCU_ReqMCUTrq + 1024);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GFSEVBLV_Voltage = (uint8)((GFSEVBLV_Voltage)*5);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_u8IgbtLowFltCnt = (uint8)(GMAIN_u8IgbtLowFltCnt);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_u8IgbtHighFltCnt = (uint8)(GMAIN_u8IgbtHighFltCnt);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GFaultFailureLevel = (uint8)(DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_GCU));
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GFSMTMTA_TempWindingMax = (uint8)(GFSMTMTA_TempWindingMax + 50);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GFSEVETA_TempIgbt = (uint8)(GFSEVETA_TempIgbt + 50);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GFTEVEIT_EstimTempSecFild = (uint8)(GFTEVEIT_EstimTempSecFild + 50);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_u16PWMPeriodVal = (uint16)(GMAIN_u16PWMPeriodVal);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GSDMTMEP_MecaSpeedRpm = (uint16)(GSDMTMEP_MecaSpeedRpm + 20000);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GFTCMTTC_RealMecaTorqueTgt = (uint16)((GFTCMTTC_RealMecaTorqueTgt + 3000)*10);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GSD_AutoPhasingAngle_F32 = (uint16)((GSD_AutoPhasingAngle_F32 + 3)*10000);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_f32CpuLoadCore2 = (uint16)(MAIN_f32CpuLoadCore2);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_f32CpuLoadCore1 = (uint16)(MAIN_f32CpuLoadCore1);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_f32CpuLoadCore0 = (uint16)(MAIN_f32CpuLoadCore0);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault0 = (uint8)(MAIN_MSGu8DEV_Fault0);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault1 = (uint8)(MAIN_MSGu8DEV_Fault1);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault2 = (uint8)(MAIN_MSGu8DEV_Fault2);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault3 = (uint8)(MAIN_MSGu8DEV_Fault3);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault4 = (uint8)(MAIN_MSGu8DEV_Fault4);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault5 = (uint8)(MAIN_MSGu8DEV_Fault5);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault6 = (uint8)(MAIN_MSGu8DEV_Fault6);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault7 = (uint8)(MAIN_MSGu8DEV_Fault7);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault8 = (uint8)(MAIN_MSGu8DEV_Fault8);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault9 = (uint8)(MAIN_MSGu8DEV_Fault9);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault10 = (uint8)(MAIN_MSGu8DEV_Fault10);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault11 = (uint8)(MAIN_MSGu8DEV_Fault11);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault12 = (uint8)(MAIN_MSGu8DEV_Fault12);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault13 = (uint8)(MAIN_MSGu8DEV_Fault13);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault14 = (uint8)(MAIN_MSGu8DEV_Fault14);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].MAIN_MSGu8DEV_Fault15 = (uint8)(MAIN_MSGu8DEV_Fault15);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault0 = (uint8)(GMAIN_MSGu8DEV_Fault0);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault1 = (uint8)(GMAIN_MSGu8DEV_Fault1);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault2 = (uint8)(GMAIN_MSGu8DEV_Fault2);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault3 = (uint8)(GMAIN_MSGu8DEV_Fault3);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault4 = (uint8)(GMAIN_MSGu8DEV_Fault4);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault5 = (uint8)(GMAIN_MSGu8DEV_Fault5);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault6 = (uint8)(GMAIN_MSGu8DEV_Fault6);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault7 = (uint8)(GMAIN_MSGu8DEV_Fault7);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault8 = (uint8)(GMAIN_MSGu8DEV_Fault8);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault9 = (uint8)(GMAIN_MSGu8DEV_Fault9);

    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault10 = (uint8)(GMAIN_MSGu8DEV_Fault10);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault11 = (uint8)(GMAIN_MSGu8DEV_Fault11);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault12 = (uint8)(GMAIN_MSGu8DEV_Fault12);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault13 = (uint8)(GMAIN_MSGu8DEV_Fault13);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault14 = (uint8)(GMAIN_MSGu8DEV_Fault14);
    FR_tInputBuf.tSet.atBuf3[ku32IndexInBuf].GMAIN_MSGu8DEV_Fault15 = (uint8)(GMAIN_MSGu8DEV_Fault15);

#endif
     /* User code end line */
}
#endif


/*******************************************************************************
 **** Private Variable Declarations
 ******************************************************************************/

#endif /* __FR_ECU_CALLOUT_H_ */

