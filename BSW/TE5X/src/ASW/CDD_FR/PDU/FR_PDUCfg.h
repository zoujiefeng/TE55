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
#define FR_PDU_FAULT_CODE_NUM       16u


#define FR_RUN_TIME_BEFORE_FAULT_IN_SECOND	(0.20f)
#define FR_HEAD_USER_SIZE			(64u)   /*Multiple of 32*/

/* Description: Sampling period definition
 * Unit       : us
 * Note       : Order from smallest to largest
 */
#define FR_SAMPLE_PERIOD_1 10000
//#define FR_SAMPLE_PERIOD_2 1000
//#define FR_SAMPLE_PERIOD_3 10000

#define FR_tInputBuf     FR_tInputBuf_PDU

#define FR_NVM_BANK_SIZE     DFM_FAULT_RECORD_G_ROM_BLOCK_LEN

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef union FR_UserHead{
   uint8 au8Data[FR_HEAD_USER_SIZE];  /* Multiples of 32 */
   struct{
      uint8 au8AppSwVersion[FR_SOFT_VERSION_SIZE];
      uint8 au8PDUFaultCode[FR_PDU_FAULT_CODE_NUM];
   }xHead;
}FR_UserHead;

#ifdef FR_SAMPLE_PERIOD_1
   typedef struct{
       uint16 RCEVHCM_BatPos1VoltageFild;
       uint16 RCEVHCM_MainPosVoltage;
       uint16 RCEVHCM_BatHeatVoltage;
       uint16 RCEVHCM_SCUVoltage;

       uint16 RCEVHCM_HV1Voltage;
       uint16 RCEVHCM_HV2Voltage;       
       uint16 RCEVHCM_AuxPosVoltage;
       uint8  RCSMACS_PollingPrechgAclState;
       uint8  RCSMACS_MainPosAclState;

       uint8  RCSMACS_SCUAclState;
       uint8  RCSMACS_BatHeatAclState;       
       uint8  RCSMACS_EACAclState;
       uint8  RCSMACS_AuxPosAclState;
       uint8  RCSMACS_ExtendedAclState;
       uint8  RCSMACS_HV2AclState;
       uint8  RCSMACS_HV4AclState;
       uint8  RCSMACS_HV1AclState;

       uint8  RCSMACS_PreMainAclState;
       uint8  RCSMACS_MainPosFaultSts;
       uint8  RCSMACS_SCUFaultSts;
       uint8  RCSMACS_BatHeatFaultSts;
       uint8  RCSMACS_EACFaultSts;
       uint8  RCSMACS_AuxPosFaultSts;
       uint8  RCSMACS_ExtendedFaultSts;
       uint8  RCSMACS_HV2FaultSts;

       uint8  RCSMACS_HV4FaultSts;
       uint8  RCSMACS_HV1FaultSts;
       uint8  RCSMACS_PreMainFaultSts;

}FR_InputEvent1;
#define FR_FRAME_1_SIZE     (sizeof(FR_InputEvent1))
#endif


#ifdef FR_SAMPLE_PERIOD_2

#define FR_FRAME_2_SIZE     (sizeof(FR_InputEvent2))
#endif



#ifdef FR_SAMPLE_PERIOD_3
   typedef struct{

   }FR_InputEvent3;
#define FR_FRAME_3_SIZE     (sizeof(FR_InputEvent3))
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

