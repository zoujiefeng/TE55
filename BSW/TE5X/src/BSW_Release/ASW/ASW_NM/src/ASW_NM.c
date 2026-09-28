/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)         
 *-----------------------------------------------------------------------------
 * Project :    ETAS Entry Platfrom
 * Component:  ASW_NM
 * Description: Testcode for ASW_NM
 * Version         Author        Date               Update information
 * 1.0             AGT1HC        14-Jun-2019        Create software
 * 1.1             AGT1HC        19-Nov-2021        Update the Banner
 * 1.2             HAD1HC        13-Apr-2021        Update Memmap
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************/

#include "Rte_ASW_NM.h"
#include "ComStack_Types.h"
#include "NmStack_Types.h"
#include "Rte_ComM_Type.h"
#include "Nm.h"
#include "ASW_NM.h"
#include "EcuM.h"
#include "Can_Cfg.h"
#include "Can.h"
#include "CanIf.h"
#include "CanIf_Types.h"
#include "Com_Cfg_SymbolicNames.h"
#include "IOHAL.h"
#include "STFSRV.h"
#include "BSW.h"
#include "Can_GeneralTypes.h"
#include "CanTrcv_Cfg.h"
#include "ComM_EcuMBswM.h"

#define FULFILLED 1

typedef enum{
   NO_REASON =0,
   KL15_WU,
   NMMSG_WU,
} WU_SRC_t;

boolean nm_repeat_st = FALSE;
boolean ASWNM_bBusSleep = FALSE;
uint16 ASWNM_u16Kl15Sts = FALSE;
boolean ASWNM_bStayAwake = FALSE;
boolean ASWNM_bFullComSts = TRUE;
uint16 ASWNM_u16AfterRunDelayTimes = 0;
uint8 ASWNM_u8CurrentState = 0;
uint8 Received_NM_Flag = FALSE;
uint8 ASWNM_u8OpState = ASW_NM_STATE_INIT;
uint8 ASWNM_u8REState = 0;

#define ASW_NM_START_SEC_VAR_INIT_UNSPECIFIED
#include "ASW_NM_MemMap.h"
static WU_SRC_t wakeup_reason = NO_REASON;
Nm_Test_t Nm_Test[NM_NUMBER_OF_CHANNELS];
#define ASW_NM_STOP_SEC_VAR_INIT_UNSPECIFIED
#include "ASW_NM_MemMap.h"

#define ASW_NM_START_SEC_VAR_INIT_8
#include "ASW_NM_MemMap.h"
/* static uint8 checkNMreceived =FALSE; */
#define ASW_NM_STOP_SEC_VAR_INIT_8
#include "ASW_NM_MemMap.h"

#define ASW_NM_START_SEC_CODE
#include "ASW_NM_MemMap.h"
void setUserData(NetworkHandleType NetworkHandle);
#define ASW_NM_STOP_SEC_CODE
#include "ASW_NM_MemMap.h"


#define ASW_NM_START_SEC_CODE
#include "ASW_NM_MemMap.h"
boolean ASWNM_bGetStayAwakeReq(void)
{
   boolean bLocKL15Sts;
   boolean bStayAwakeSts;
   
   // bLocKL15Sts = (boolean)IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
   bLocKL15Sts =((IOHAL_u16Read_CH_DIO_IN_M_KEY_ON() != 0U) || (IOHAL_u16Read_CH_DIO_IN_M_CHG_ON() != 0U));
#if (1 == CANNM_ENABLE)
   if((bLocKL15Sts != 0) || (ASWNM_bStayAwake != FALSE))
   {
      bStayAwakeSts = TRUE;
   }
   else
   {
      bStayAwakeSts = FALSE;
   }
#else
   if(bLocKL15Sts != 0)
   {
      bStayAwakeSts = TRUE;
   }
   else
   {
      bStayAwakeSts = FALSE;
   }
#endif

   return bStayAwakeSts;
}

boolean ASWNM_bGetFullComSts(void)
{
   return ASWNM_bFullComSts;
}

#define ASW_NM_STOP_SEC_CODE
#include "ASW_NM_MemMap.h"

enum{
   ASW_NM_INIT_STATE = 0,
   ASW_NM_NORMAL_STATE
};

#define ASW_NM_START_SEC_CODE
#include "ASW_NM_MemMap.h"
FUNC (void, ASW_NM_CODE) RE_ASW_NM_func/* return value & FctID */
(
      void
)
{
   uint8  NetworkHandle = 0; //only CANNM available
   uint16 u16LocKl15Sts = FALSE;
   //Set wakeup reason for byte2 of NM message
   switch(ASWNM_u8REState)
   {
      case ASW_NM_INIT_STATE:
      {
#if (1 == CANNM_ENABLE)
         u16LocKl15Sts = (boolean)IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
         if ((EcuM_GetValidatedWakeupEvents() == EcuMConf_EcuMWakeupSource_ECUM_WKSOURCE_KL15) || (u16LocKl15Sts != 0))
         {
            wakeup_reason = KL15_WU;
         }
         else
         {
            if (EcuM_GetValidatedWakeupEvents() == EcuMConf_EcuMWakeupSource_ECUM_WKSOURCE_CANMSG)
            {
               wakeup_reason = NMMSG_WU;
            }
            else
            {
               wakeup_reason = NO_REASON;
            }
         }
#else
         wakeup_reason = KL15_WU;
#endif
         ASWNM_u8REState = ASW_NM_NORMAL_STATE;
         break;
      }
      case ASW_NM_NORMAL_STATE:
      {
         if ((wakeup_reason == NO_REASON)&&(Nm_Test[NetworkHandle].nm_CurrentState == NM_STATE_REPEAT_MESSAGE))
         {
            shutdown_b = 1;      //if wakeup by non NM msg, then, go to shut down
         }
         else
         {
         }
         ASWNM_u8REState = ASW_NM_NORMAL_STATE;
         break;
      }
   }

#if (1 == CANNM_ENABLE)
   if((FALSE == BSW_bMKeyOnStatus) && (TRUE == ESM_bAfterrunFin))
   {
      if(ASWNM_u16AfterRunDelayTimes < 10)
      {
         ASWNM_u16AfterRunDelayTimes++;
      }
      else
      {
         ASWNM_u16Kl15Sts = FALSE;
      }
   }
   else
   {
      ASWNM_u16Kl15Sts = TRUE;
      ASWNM_u16AfterRunDelayTimes = 0;
   }
#else
   ASWNM_u16Kl15Sts = TRUE;
#endif

   switch(ASWNM_u8OpState)
   {
      case ASW_NM_STATE_INIT: 
      {
         if(wakeup_reason == KL15_WU)
         {
            Rte_Write_PP_BswMArbitration_BswM_MRP_Network_uint8(RTE_MODE_ComMMode_COMM_FULL_COMMUNICATION);
            ASWNM_bFullComSts = TRUE;
            ASWNM_u8OpState = ASW_NM_STATE_NORMAL_ACTIVE;
         }

         if(wakeup_reason == NMMSG_WU)
         {
            ComM_EcuM_WakeUpIndication(0);
            ASWNM_bFullComSts = TRUE;
            ASWNM_u8OpState = ASW_NM_STATE_NORMAL_PASSIVE;
         }
      }
      break;

      case ASW_NM_STATE_NORMAL_ACTIVE: 
      {
         if(!ASWNM_u16Kl15Sts)
         {
            Rte_Write_PP_BswMArbitration_BswM_MRP_Network_uint8(RTE_MODE_ComMMode_COMM_NO_COMMUNICATION);
            ASWNM_bFullComSts = FALSE;
            ASWNM_u8OpState = ASW_NM_STATE_SLEEP;
         }
      }
      break;

      case ASW_NM_STATE_NORMAL_PASSIVE: 
      {
         if(ASWNM_u16Kl15Sts)
         {
            Rte_Write_PP_BswMArbitration_BswM_MRP_Network_uint8(RTE_MODE_ComMMode_COMM_FULL_COMMUNICATION);
            ASWNM_bFullComSts = TRUE;
            ASWNM_u8OpState = ASW_NM_STATE_NORMAL_ACTIVE;
         }
         
         if(!ASWNM_u16Kl15Sts)
         {
            Rte_Write_PP_BswMArbitration_BswM_MRP_Network_uint8(RTE_MODE_ComMMode_COMM_NO_COMMUNICATION);
            ASWNM_bFullComSts = FALSE;
            ASWNM_u8OpState = ASW_NM_STATE_SLEEP;
         }
      }
      break;

      case ASW_NM_STATE_SLEEP: 
      {
         if(ASWNM_u16Kl15Sts)
         {
            Rte_Write_PP_BswMArbitration_BswM_MRP_Network_uint8(RTE_MODE_ComMMode_COMM_FULL_COMMUNICATION);
            ASWNM_bFullComSts = TRUE;
            ASWNM_u8OpState = ASW_NM_STATE_NORMAL_ACTIVE;
         }
      }
      break;

      default:
      {}
      break;

      if(Nm_Test[0].IsNmReceived)
      {
            Nm_GetUserData(0,(uint8*)(Nm_Test[0].nm_rx_data));
            //Nm_Test[index_chanel].IsNmReceived = 0;
      }
   }
}
#define ASW_NM_STOP_SEC_CODE
#include "ASW_NM_MemMap.h"
#define ASW_NM_START_SEC_CODE
#include "ASW_NM_MemMap.h"
extern FUNC(void, NM_CODE) Nm_RxIndicationCallback(CONST(NetworkHandleType, AUTOMATIC)   NetworkHandle )
{
   Received_NM_Flag = TRUE;
   if (NetworkHandle < NM_NUMBER_OF_CHANNELS)
   {
      Nm_Test[NetworkHandle].IsNmReceived = TRUE;
   }
}
#define ASW_NM_STOP_SEC_CODE
#include "ASW_NM_MemMap.h"
#define ASW_NM_START_SEC_CODE
#include "ASW_NM_MemMap.h"

void setUserData(NetworkHandleType NetworkHandle)
{
   Nm_Test[NetworkHandle].nm_tx_data[0] = nm_repeat_st;
   Nm_SetUserData(NetworkHandle, (const uint8*)Nm_Test[NetworkHandle].nm_tx_data);
}


FUNC(void, NM_CODE) Nm_StateChangeIndication(CONST(NetworkHandleType, AUTOMATIC)  NetworkHandle,
                                               CONST(Nm_StateType, AUTOMATIC)   nmPreviousState,
                                               CONST(Nm_StateType, AUTOMATIC)   nmCurrentState)
{
   ASWNM_u8CurrentState = nmCurrentState;
   if (NetworkHandle<NM_NUMBER_OF_CHANNELS)
   {
      Nm_Test[NetworkHandle].nm_PreviousState=nmPreviousState;
      Nm_Test[NetworkHandle].nm_CurrentState=nmCurrentState;
      switch (nmCurrentState)
      {
         case NM_STATE_BUS_SLEEP:
            if (nmPreviousState == NM_STATE_PREPARE_BUS_SLEEP)
            {
                  ASWNM_bStayAwake = FALSE;
            }
            break;
         case NM_STATE_NORMAL_OPERATION:
            nm_repeat_st = FALSE;
            setUserData(NetworkHandle);
            ASWNM_bStayAwake = TRUE;
            break;
         case NM_STATE_REPEAT_MESSAGE:
            nm_repeat_st = TRUE;
            setUserData(NetworkHandle);
            ASWNM_bStayAwake = TRUE;
            break;
         case NM_STATE_SYNCHRONIZE:
         case NM_STATE_READY_SLEEP:
         case NM_STATE_OFFLINE:
         case NM_STATE_PREPARE_BUS_SLEEP:
              ASWNM_bStayAwake = TRUE;
            break;

         default:
            break;
      }
   }
   else
   {
      /*do nothing*/
   }
}
#define ASW_NM_STOP_SEC_CODE
#include "ASW_NM_MemMap.h"
#define ASW_NM_START_SEC_CODE
#include "ASW_NM_MemMap.h"
extern FUNC(void, NM_CODE) TestNm_RemoteSleepCancellation(CONST(NetworkHandleType, AUTOMATIC)   NetworkHandle)
{

}
#define ASW_NM_STOP_SEC_CODE
#include "ASW_NM_MemMap.h"
#define ASW_NM_START_SEC_CODE
#include "ASW_NM_MemMap.h"
extern FUNC(void, NM_CODE) TestNm_RemoteSleepIndication(CONST(NetworkHandleType, AUTOMATIC)   NetworkHandle)
{

}
#define ASW_NM_STOP_SEC_CODE
#include "ASW_NM_MemMap.h"
