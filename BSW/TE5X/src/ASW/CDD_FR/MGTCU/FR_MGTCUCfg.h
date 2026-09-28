/*******************************************************************************
 ****DateTime 2025-07-11 15:03:59****
 ******************************************************************************/
#ifndef __FR_ECU_CFG_H_
#define __FR_ECU_CFG_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "DFM_Cfg.h"
#include "FR_Cfg.h"
#include "FR_PublicTypes.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  
#define FR_SOFT_VERSION_SIZE		21u
#define FR_MCU_FAULT_CODE_NUM     16u
#define FR_GCU_FAULT_CODE_NUM     16u

#define FR_RUN_TIME_BEFORE_FAULT_IN_SECOND	(0.035f)
#define FR_HEAD_USER_SIZE			(64u)   /*Multiple of 32*/

/* Description: Sampling period definition
 * Unit       : us
 * Note       : Order from smallest to largest
 */
#define FR_SAMPLE_PERIOD_1 100
#define FR_SAMPLE_PERIOD_2 1000
#define FR_SAMPLE_PERIOD_3 10000

#define FR_tInputBuf     FR_tInputBuf_MGTCU

#define FR_NVM_BANK_SIZE     DFM_FAULT_RECORD_A_ROM_BLOCK_LEN

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef union FR_UserHead{
   uint8 au8Data[FR_HEAD_USER_SIZE];  /* Multiples of 32 */
   struct{
      uint8 au8AppSwVersion[FR_SOFT_VERSION_SIZE];
      uint8 au8MCUFaultCode[FR_MCU_FAULT_CODE_NUM];
      uint8 au8GCUFaultCode[FR_GCU_FAULT_CODE_NUM];
   }xHead;
}FR_UserHead;

#ifdef FR_SAMPLE_PERIOD_1
   typedef struct{
      uint16 FTMTLCS_Iu : 12;
      uint16 FTMTLCS_Iv : 12;
      uint16 FTMTLCS_Iw : 12;
      uint16 SD_ResolverSinCos2_U16_1 : 12;
      uint16 SD_ResolverSinCos2_U16_2 : 12;
      uint8 VSI_AscStep : 4;

      uint16 GFTMTLCS_Iu : 12;
      uint16 GFTMTLCS_Iv : 12;
      uint16 GFTMTLCS_Iw : 12;
      uint16 GSD_ResolverSinCos2_U16_1 : 12;
      uint16 GSD_ResolverSinCos2_U16_2 : 12;
      uint8 GVSI_AscStep : 4;

      uint16 GFT_Iuvw3_U;
      uint16 GFT_Iuvw3_V;
      uint16 GFT_Iuvw3_W;
      uint8 FTCIVDC_DutyCycleU;
      uint8 FTCIVDC_DutyCycleV;

      uint8 FTCIVDC_DutyCycleW;
      uint8 GFTCIVDC_DutyCycleU;
      uint8 GFTCIVDC_DutyCycleV;
      uint8 GFTCIVDC_DutyCycleW;
      uint8 GCCU6_bHwFaultIgbtH : 1;
      uint8 GCCU6_bHwFaultIgbtL : 1;
      uint8 GCCU6_bHwFaultDcOvVolt : 1;
      uint8 GCCU6_bHwFaultOvcU : 1;
      uint8 GCCU6_bHwFaultOvcV : 1;
      uint8 GCCU6_bHwFaultOvcW : 1;
      uint8 GMAIN_bSoftOvCurrPhsUFlg : 1;
      uint8 GMAIN_bSoftOvCurrPhsVFlg : 1;
      uint8 GMAIN_bSoftOvCurrPhsWFlg : 1;
   }FR_InputEvent1;
#define FR_FRAME_1_SIZE  (sizeof(FR_InputEvent1))
#endif

#ifdef FR_SAMPLE_PERIOD_2
   typedef struct{
      uint16 FT_ResloverThetaRdSuiPi_F32;
      uint16 FTCMTCS_i0dqTgt3_1;
      uint16 FTCMTCS_i0dqTgt3_2;
      uint16 FTCMRPC_I0dq3_1;

      uint16 FTCMRPC_I0dq3_2;
      uint16 FTCMCCS_UdqNorm;
      uint16 FTCMTCS_idCorTgt;
      uint16 FSEVBHV_Voltage;

      uint16 FTCMTCS_ParkVoltageTgt;
      uint16 FSTCGTC_TorqueTgt;
      uint16 FTCMTCS_ElecTorqueTgt;
      uint16 FTCMTCS_ElecTorqueMaxMin_1;

      uint16 FTCMTCS_ElecTorqueMaxMin_2;
      uint16 GFT_ResloverThetaRdSuiPi_F32;
      uint16 GFTCMTCS_i0dqTgt3_1;
      uint16 GFTCMTCS_i0dqTgt3_2;

      uint16 GFTCMRPC_I0dq3_1;
      uint16 GFTCMRPC_I0dq3_2;
      uint16 GFTCMCCS_UdqNorm;
      uint16 GFTCMTCS_idCorTgt;

      uint16 GFSEVBHV_Voltage;
      uint16 GFTCMTCS_ParkVoltageTgt;
      uint16 GFSTCGTC_TorqueTgt;
      uint16 GFTCMTCS_ElecTorqueTgt;

      uint16 GFTCMTCS_ElecTorqueMaxMin_1;
      uint16 GFTCMTCS_ElecTorqueMaxMin_2;
      uint8 GFSSMACS_AclState;
      uint8 GFTSMACS_AclState;
      uint8 FSSMACS_AclState;
      uint8 FTSMACS_AclState;

      uint16 SDMTMEP_SinScaled : 12;
      uint16 SDMTMEP_CosScaled : 12;
      uint16 GSDMTMEP_SinScaled : 12;
      uint16 GSDMTMEP_CosScaled : 12;
      uint16 GFS_UbatHV_U16 : 12;
   }FR_InputEvent2;
#define FR_FRAME_2_SIZE  (sizeof(FR_InputEvent2))
#endif

#ifdef FR_SAMPLE_PERIOD_3
   typedef struct{
      uint16 BSW_u16RawVolt15VRdc : 12;
      uint16 BSW_u16RawVoltDclinkFIL : 12;
      uint16 BSW_u16RawVolP5VHS : 12;
      uint16 BSW_u16RawVolP5VLS : 12;
      uint16 BSW_u16RawVolP9VMulti : 12;
      uint8 MAIN_u8IgbtLowFltCnt : 4;

      uint16 BSW_u16RawVolP5VREF : 12;
      uint16 BSW_u16RawVolSnsSup1 : 12;
      uint16 BSW_u16RawVolSnsSup2 : 12;
      uint16 BSW_u16RawVolP5VBT : 12;
      uint16 BSW_u16RawVolP5VRefProt : 12;
      uint8 MAIN_u8IgbtHighFltCnt : 4;

      uint8 FaultFailureLevel;
      uint8 FSEVBLV_Voltage;
      uint8 FSMTMTA_TempWindingMax;
      uint8 FSEVETA_TempIgbt;
      uint8 FTEVEIT_EstimTempSecFild;
      uint16 MAIN_u16PWMPeriodVal;

      uint16 SDMTMEP_MecaSpeedRpm;
      uint16 FTCMTTC_RealMecaTorqueTgt;
      uint16 SD_AutoPhasingAngle_F32;
      uint16 MAIN_MSGf32VCU_ReqGCUTrq;

      uint16 MAIN_MSGf32VCU_ReqMCUTrq;
      uint8 GFSEVBLV_Voltage;
      uint8 GMAIN_u8IgbtLowFltCnt : 4;
      uint8 GMAIN_u8IgbtHighFltCnt : 4;
      uint8 GFaultFailureLevel;
      uint8 GFSMTMTA_TempWindingMax;
      uint8 GFSEVETA_TempIgbt;
      uint8 GFTEVEIT_EstimTempSecFild;

      uint16 GMAIN_u16PWMPeriodVal;
      uint16 GSDMTMEP_MecaSpeedRpm;
      uint16 GFTCMTTC_RealMecaTorqueTgt;
      uint16 GSD_AutoPhasingAngle_F32;

      uint16 MAIN_f32CpuLoadCore2;
      uint16 MAIN_f32CpuLoadCore1;
      uint16 MAIN_f32CpuLoadCore0;
   }FR_InputEvent3;
#define FR_FRAME_3_SIZE  (sizeof(FR_InputEvent3))
#endif

#include "FR_MacroDef.h"

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Declarations
 ******************************************************************************/

#endif /* __FR_ECU_CFG_H_ */

