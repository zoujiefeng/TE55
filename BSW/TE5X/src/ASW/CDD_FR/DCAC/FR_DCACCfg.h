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
#define FR_ACU_FAULT_CODE_NUM     16u
#define FR_OCU_FAULT_CODE_NUM     16u

#define FR_RUN_TIME_BEFORE_FAULT_IN_SECOND	(0.035f)
#define FR_HEAD_USER_SIZE			(64u)   /*Multiple of 32*/

/* Description: Sampling period definition
 * Unit       : us
 * Note       : Order from smallest to largest
 */
#define FR_SAMPLE_PERIOD_1 166
#define FR_SAMPLE_PERIOD_2 1000
#define FR_SAMPLE_PERIOD_3 10000

#define FR_tInputBuf     FR_tInputBuf_DCAC

#define FR_NVM_BANK_SIZE     DFM_FAULT_RECORD_D_ROM_BLOCK_LEN

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef union FR_UserHead{
   uint8 au8Data[FR_HEAD_USER_SIZE];  /* Multiples of 32 */
   struct{
      uint8 au8AppSwVersion[FR_SOFT_VERSION_SIZE];
      uint8 au8ACUFaultCode[FR_ACU_FAULT_CODE_NUM];
      uint8 au8OCUFaultCode[FR_OCU_FAULT_CODE_NUM];
   }xHead;
}FR_UserHead;

#ifdef FR_SAMPLE_PERIOD_1
   typedef struct{
       uint16 AFTMTLCS_Iu : 12;
       uint16 AFTMTLCS_Iv : 12;
       uint16 AFTMTLCS_Iw : 12;
       uint16 OFTMTLCS_Iu : 12;
       uint16 OFTMTLCS_Iv : 12;

       uint16 OFTMTLCS_Iw : 12;
       uint8 AFTCIVDC_DutyCycleU;
       uint8 AFTCIVDC_DutyCycleV;
       uint8 AFTCIVDC_DutyCycleW;
       uint8 OFTCIVDC_DutyCycleU;
       uint8 OFTCIVDC_DutyCycleV;
       uint8 OFTCIVDC_DutyCycleW;

       uint8 AMAIN_bSoftOvCurrPhsUFlg : 1;
       uint8 AMAIN_bSoftOvCurrPhsVFlg : 1;
       uint8 AMAIN_bSoftOvCurrPhsWFlg : 1;
       uint8 AMAIN_bSoftOvBhvFlg : 1;
       uint8 AMAIN_bIgbtLowIsFlt : 1;
       uint8 AMAIN_bIgbtHighIsFlt : 1;
       uint8 OMAIN_bSoftOvCurrPhsUFlg : 1;
       uint8 OMAIN_bSoftOvCurrPhsVFlg : 1;
       uint8 OMAIN_bSoftOvCurrPhsWFlg : 1;
       uint8 OMAIN_bSoftOvBhvFlg : 1;
       uint8 OMAIN_bIgbtLowIsFlt : 1;
       uint8 OMAIN_bIgbtHighIsFlt : 1;
   }FR_InputEvent1;
#  define FR_FRAME_1_SIZE     (sizeof(FR_InputEvent1))
#endif

#ifdef FR_SAMPLE_PERIOD_2
   typedef struct{
       uint16 AFTCMTCS_i0dqTgt3_1;
       uint16 AFTCMTCS_i0dqTgt3_2;
       uint16 AFTCMRPC_I0dq3_1;
       uint16 AFTCMRPC_I0dq3_2;

       uint16 AFTCMCCS_UdqNorm;
       uint16 AFTCMTCS_idCorTgt;
       uint16 AFSEVBHV_Voltage;
       uint16 AFTSLOBS_ActEleThetaRd;

       uint16 OFTCMTCS_i0dqTgt3_1;
       uint16 OFTCMTCS_i0dqTgt3_2;
       uint16 OFTCMRPC_I0dq3_1;
       uint16 OFTCMRPC_I0dq3_2;

       uint16 OFTCMCCS_UdqNorm;
       uint16 OFTCMTCS_idCorTgt;
       uint16 OFSEVBHV_Voltage;
       uint16 OFTSLOBS_ActEleThetaRd;

       uint8 AFSSMACS_AclState;
       uint8 AFTSMACS_AclState;
       uint8 OFSSMACS_AclState;
       uint8 OFTSMACS_AclState;
   }FR_InputEvent2;
#  define FR_FRAME_2_SIZE     (sizeof(FR_InputEvent2))
#endif

#ifdef FR_SAMPLE_PERIOD_3
   typedef struct{
       uint16 BSW_u16RawVolt15VRdc : 12;
       uint16 BSW_u16RawVoltDclinkFIL : 12;
       uint16 BSW_u16RawVolP5VHS : 12;
       uint16 BSW_u16RawVolP5VLS : 12;
       uint16 BSW_u16RawVolP9VMulti : 12;

       uint16 BSW_u16RawVolP5VREF : 12;
       uint16 BSW_u16RawVolSnsSup1 : 12;
       uint16 BSW_u16RawVolSnsSup2 : 12;
       uint16 BSW_u16RawVolP5VBT : 12;
       uint16 BSW_u16RawVolP5VRefProt : 12;

       uint8 AFaultFailureLevel;
       uint8 FSEVBLV_Voltage;
       uint8 AFSMTMTA_TempWindingMax;
       uint8 AFSEVETA_TempIgbt;
       uint16 AFTCMTCS_ParkVoltageTgt;
       uint16 AFTMTSEP_MecaSpeedRpm;

       uint16 AFS_SpdSet_F32;
       uint16 OFS_SpdSet_F32;
       uint8 OFSSMACS_AclState;
       uint8 OFTSMACS_AclState;
       uint8 OFSMTMTA_TempWindingMax;
       uint8 OFSEVETA_TempIgbt;

       uint16 OFTCMTCS_ParkVoltageTgt;
       uint16 OFTMTSEP_MecaSpeedRpm;
       uint8 OFaultFailureLevel;
       uint8 RCEVHCM_KM1VoltageFild;
       uint8 RCEVHCM_KM2VoltageFild;
       uint8 RCEVHCM_KM3VoltageFild;

       uint8 RCEVHCM_KM4VoltageFild;
       uint8 RCEVHCM_KM5VoltageFild;
       uint8 RCEVHCM_KM6VoltageFild;
       uint8 RCEVHCM_KM14VoltageFild;
       uint8 RCEVHCM_KM7VoltageFild;
       uint8 RCEVHCM_KM16VoltageFild;
       uint8 RCEVHCM_KM8VoltageFild;
       uint8 RCEVHCM_KM9VoltageFild;

       uint16 MAIN_f32CpuLoadCore2;
       uint16 MAIN_f32CpuLoadCore1;
       uint16 MAIN_f32CpuLoadCore0;
   }FR_InputEvent3;
#  define FR_FRAME_3_SIZE     (sizeof(FR_InputEvent3))
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

