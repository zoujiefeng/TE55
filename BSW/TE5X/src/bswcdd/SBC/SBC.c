/**********************************************************************************************************************/
/* !Layer           : HAL                                                                                             */
/* !Component       : SBC                                                                                        */
/* !Description     : SBC safe supply device management                                                          */
/*                                                                                                                    */
/* !File            : SBC.c                                                                                      */
/* !Description     : Send the init frames for SBC configuration                                                 */
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
#include "Rte_ASW_NM.h"

#include "CanIf.h"
#include "CanSM.h"
#include "ComM.h"
#include "Dcm_ExternalServiceProcessing.h"

#include "Std_Types.h"
#include "Std_Limits.h"
#include "SPI.h"
#include "SBC.h"
#include "SBC_L.h"
#include "HtxTLF35584_reg.h"
#include "CanTrcv.h"
#include "CCU6.h"
#include "GCCU6.h"
#include "IOHAL.h"
#include "bswsrv.h"


extern volatile boolean ActivateCalled;
extern Std_ReturnType CanTrcv_GetOpMode_TJA1145( uint8 Transceiver,
                                        CanTrcv_TrcvModeType * OpMode );

#define SBC_START_SEC_CODE
#include "SBC_MemMap.h"

/* Byte sequence to be written to PROTCFG register to unlock the TLF: */
#define SAFEWDGEXT_TLF_UNLOCK_SEQU0          ( (uint8)0xABU )
#define SAFEWDGEXT_TLF_UNLOCK_SEQU1          ( (uint8)0xEFU )
#define SAFEWDGEXT_TLF_UNLOCK_SEQU2          ( (uint8)0x56U )
#define SAFEWDGEXT_TLF_UNLOCK_SEQU3          ( (uint8)0x12U )

/* Byte sequence to be written to PROTCFG register to lock the TLF: */
#define SAFEWDGEXT_TLF_LOCK_SEQU0            ( (uint8)0xDFU )
#define SAFEWDGEXT_TLF_LOCK_SEQU1            ( (uint8)0x34U )
#define SAFEWDGEXT_TLF_LOCK_SEQU2            ( (uint8)0xBEU )
#define SAFEWDGEXT_TLF_LOCK_SEQU3            ( (uint8)0xCAU )

#define SBC_u8DEBOUNCE_TIMES            (5)

enum
{
   eSBC_Init = 0,
   eSBC_CheckComStack,
   eSBC_UnderVolDiag,
   eSBC_CheckLDOState,
   eSBC_SetNoComReq,
   eSBC_SetTrcvSleepReq,
   eSBC_SetLDOCloseReq,
   eSBC_WaitNormal,
   eSBC_SetLDOOpenReq,
   eSBC_SetTrcvNormalReq,
   eSBC_PreEcuReset,
   eSBC_FaultState,
};

void SBC_vidCloseLDO(void);
void SBC_vidSwitchInit(uint8 type);
void SBC_vidOpenLDO(void);

static boolean SBC_bLDOStateIsChanged;
static uint16  SBC_u16InitWindowCnt;

/*************************************************************************
*
* !Runnable    : SBC_vidInit 
* !Trigger       : 
* !Description : Initi SBC variables.
* !Return:
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void SBC_vidInit(void)
{
   SBC_bDeintWdgCmd = FALSE;
   SBC_bWdgActvFlg = FALSE;
   SBC_bStdbyModReq = FALSE;
   SBC_u8MaxWdgErrCnt = 0;
   SBC_u8LDOManagerState = eSBC_Init;
   SBC_u8DebounceCount = 0;
   SBC_f32BatteryVoltage = 0;
   SBC_f32BkpVoltage = 0;
   SBC_bLDOStateIsChanged = FALSE;
   SBC_u16InitWindowCnt = 0;

   /* !Comment: SBC standby mode command sequence. */
   SBC_au8StdbyModCmdBuff[0] = TLF_REG_DEVCTRL | 0x40;
   SBC_au8StdbyModDataBuff[0] = 0X04; //0xEC;
   SBC_au8StdbyModCmdBuff[1] = TLF_REG_DEVCTRLN | 0x40;
   SBC_au8StdbyModDataBuff[1] = 0XFB; //0x13;

   SBC_au8CloseLDOCmdBuff[0]  = TLF_REG_DEVCTRL | 0x40;
   SBC_au8CloseLDODataBuff[0]  = 0xCA;
   SBC_au8CloseLDOCmdBuff[1]  = TLF_REG_DEVCTRLN | 0x40;
   SBC_au8CloseLDODataBuff[1]  = 0x35;
   
   SBC_au8OpenLDOCmdBuff[0]  = TLF_REG_DEVCTRL | 0x40;
   SBC_au8OpenLDODataBuff[0]  = 0xEA;
   SBC_au8OpenLDOCmdBuff[1]  = TLF_REG_DEVCTRLN | 0x40;
   SBC_au8OpenLDODataBuff[1]  = 0x15;

   SBC_au8InitModCmdBuff[0]  = TLF_REG_DEVCTRL | 0x40;
   SBC_au8InitModDataBuff[0]  = 0xEC;
   SBC_au8InitModCmdBuff[1]  = TLF_REG_DEVCTRLN | 0x40;
   SBC_au8InitModDataBuff[1]  = 0x13;
}

/**********************************************************************************************************************/
/* !FuncName    : SBC_bGetFaultClearFlgs                                                                              */
/* !Description : Return the flag that indicates the SBC faults are cleared when on power on process                  */
/*                                                                                                                    */
/* !LastAuthor  : R.LIU                                                                                               */
/**********************************************************************************************************************/
boolean SBC_bGetFaultClearFlgs(void)
{
   return TRUE;
}

/**********************************************************************************************************************/
/* !FuncName    : SBC_bGetFaultClearFlgs                                                                              */
/* !Description : Return the flag that indicates the SBC faults are cleared when on power on process                  */
/*                                                                                                                    */
/* !LastAuthor  : R.LIU                                                                                               */
/**********************************************************************************************************************/
boolean SBC_bIsSbcFautOccr(void)
{
   boolean Local_bFltSts = FALSE;

   return Local_bFltSts;
}

/*************************************************************************
*
* !Runnable    : SBC_vidSetDeinitWdgCmd 
* !Trigger       : 
* !Description : Set Deinit watchdog command
* !Parameter: bLocDeinitFlg: TRUE: do deinit; FALSE: do not deinit.
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void SBC_vidSetDeinitWdgCmd(const boolean bDeinitCmd)
{
   SBC_bDeintWdgCmd = bDeinitCmd;
}

/*************************************************************************
*
* !Runnable    : SBC_bGetDeinitWdgCmd 
* !Trigger       : 
* !Description : Get Deinit watchdog command
* !Return: TRUE: do deinit; FALSE: do not deinit.
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean SBC_bGetDeinitWdgCmd(void)
{
   return SBC_bDeintWdgCmd;
}

/*************************************************************************
*
* !Runnable    : SBC_vidSetWdgActvFinshFlg 
* !Trigger       : 
* !Description : Set watchdog finish active flag
* !Parameter: 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void SBC_vidSetWdgActvFinshFlg(void)
{
   SBC_bWdgActvFlg = TRUE;
}

/*************************************************************************
*
* !Runnable    : SBC_bGetWdgActvFinshFlg 
* !Trigger       : 
* !Description : Get watchdog finish active flag
* !Return: TRUE: finished; FALSE: not finished.
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean SBC_bGetWdgActvFinshFlg (void)
{
   return SBC_bWdgActvFlg;
}

/*************************************************************************
*
* !Runnable    : SBC_u8GetMaxWdgErrCnt 
* !Trigger       : 
* !Description : Get max watchdog error counter
* !Return: max watchdog error counter
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
uint8 SBC_u8GetMaxWdgErrCnt(void)
{
   return SBC_u8MaxWdgErrCnt;
}

/*************************************************************************
*
* !Runnable    : SBC_vidSetStdbyModCmd 
* !Trigger       : 
* !Description : Send SBC enter standby mode command
* !Parameter:  bStdbyModReq 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean SBC_vidSetStdbyModCmd(const boolean bStdbyModReq)
{
   SBC_bStdbyModReq = bStdbyModReq;
   return SBC_bSetUserCmdReq(SBC_USER_CMD_GOTO_STANDBY);
}

/*************************************************************************
*
* !Runnable    : SBC_bGetStdbyModReq 
* !Trigger       : 
* !Description : Get SBC standby mode request command
* !Return: TRUE: Enter; FALSE: not enter.
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean SBC_bGetStdbyModReq(void)
{
   return SBC_bStdbyModReq;
}

/*************************************************************************
*
* !Runnable    : SBC_vidSetStdbyModCmd 
* !Trigger       : 
* !Description : Send SBC enter standby mode command
* !Parameter:  bStdbyModReq 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean SBC_bSetUserCmdReq(const uint8 u8UserCmdReq)
{
   boolean bReturnVal = FALSE;
   if((SBC_USER_IDLE == SBC_u8UserCmdReq) || (SBC_USER_IDLE == u8UserCmdReq))
   {
      SBC_u8UserCmdReq = u8UserCmdReq;
      if(SBC_USER_IDLE == SBC_u8UserCmdReq)
      {
         SBC_bSpiOperateFlag = TRUE;
      }
      bReturnVal = TRUE;
   }

   return bReturnVal;
}

/*************************************************************************
*
* !Runnable    : SBC_bGetStdbyModReq 
* !Trigger       : 
* !Description : Get SBC standby mode request command
* !Return: TRUE: Enter; FALSE: not enter.
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
uint8 SBC_u8GetUserCmdReq(void)
{
   return SBC_u8UserCmdReq;
}

/*******************************************************************************
/* !FuncName    : SBC_vidCloseLDO                         
/* !Description : Disable LDO                 
/* !Param       : Delect input parameter                                           
/* !LastAuthor  : Zyx                                                            
/******************************************************************************/
void SBC_vidCloseLDO(void)
{
   if(TRUE == SBC_bSetUserCmdReq(SBC_USER_CMD_CLOSE_LDO))
   {
      SBC_bUserCmdSendFlag = TRUE;
      SBC_bSpiOperateFlag = FALSE;
   }
}

/******************************************************************************/
/* !FuncName    : SBC_vidSwitchInit                                                   
/* !Description : Disable LDO                  
/* !Param       : type Not Used                                             
/* !LastAuthor  : Zyx                                                     
/******************************************************************************/
void SBC_vidSwitchInit(uint8 type)
{
   if(TRUE == SBC_bSetUserCmdReq(SBC_USER_CMD_GOTO_INIT))
   {
      SBC_bUserCmdSendFlag = TRUE;
      SBC_bSpiOperateFlag = FALSE;
   }
}

/******************************************************************************/
/* !FuncName    : SBC_vidOpenLDO                                                                             
/* !Description : Enable LDO              
/* !Param       : Delete input parameter                                             
/* !LastAuthor  : Daniel                                                   
/******************************************************************************/
void SBC_vidOpenLDO(void)
{
   if(TRUE == SBC_bSetUserCmdReq(SBC_USER_CMD_OPEN_LDO))
   {
      SBC_bUserCmdSendFlag = TRUE;
      SBC_bSpiOperateFlag = FALSE;
   }
}

/******************************************************************************/
/* !FuncName    : SBC_bUnderVoltageManager                                       
/* !Description :                   
/* !Param       :                                                                        
/* !LastAuthor  : Zyx                                                       
/******************************************************************************/
FUNC(boolean, SBC_CODE) SBC_bUnderVoltageManager(void)
{
   boolean bTJA1145NeedToInit = FALSE;
   boolean bLocPwmOngoingFlag = FALSE;
   boolean bLocGPwmOngoingFlag = FALSE;
   boolean bLocOtherCheckFail = FALSE;
   boolean bLocEsmPoDnReady = FALSE;
   float32 f32LocBatValAd = 0;
   float32 f32LocBkpVolAd = 0;
   uint8 u8LocCCU6State = 0;
   uint8 u8LocGCCU6State = 0;

   bTJA1145NeedToInit = FALSE;
   CanTrcv_TrcvModeType CurMode = CANTRCV_TRCVMODE_NORMAL; 

   /* Get Battery Voltage */
   f32LocBatValAd = SBCHal_f32GetBatteryVol();

   // f32LocBkpVolAd = (float32)IOHAL_u16Read_CH_ADC_IN_P16V_MULTI();
   // SBC_f32BkpVoltage = (f32LocBkpVolAd * 0.00696f) + 0.6f;
   /* Get PWM run state */
   bLocPwmOngoingFlag = CCU6_bGetPwmRuningFlg();
   u8LocCCU6State = CCU6_u8GetPwmState();
   bLocGPwmOngoingFlag = GCCU6_bGetPwmRuningFlg();
   u8LocGCCU6State = GCCU6_u8GetPwmState();
   bLocOtherCheckFail = SBC_bCheckOutputStt();
   bLocEsmPoDnReady = ESMSRV_bGetPoDnReadyFlg();

   switch(SBC_u8LDOManagerState)
   {
      case eSBC_Init:
      {
         if(SBC_u16InitWindowCnt < 40)
         {
            SBC_u16InitWindowCnt++;
         }
         else
         {
            SBC_u8LDOManagerState = eSBC_CheckComStack;
            BSW_vidClearComNormalFlag();
         }
      }
      break;

      case eSBC_CheckComStack:
      {
         if(SBC_u16InitWindowCnt < 100)
         {
            boolean bComIsNoraml;
            CanIf_ControllerModeType eCtrlType;
            CanSM_BusOffRecoveryStateType_ten eBORType;
            CanSM_NetworkModeStateType_ten eNWModeType;
            ComM_StateType eComMType;

            bComIsNoraml = BSW_bComIsNormal();
            CanIf_GetControllerMode(0, &eCtrlType);
            CanSM_GetBusoff_Substate(0, &eBORType);
            CanSM_GetNetworkMode_Substate(0, &eNWModeType);
            ComM_GetState(0, &eComMType);

            SBC_u16InitWindowCnt++;

            if((FALSE == bComIsNoraml)
            && (COMM_FULL_COM_NETWORK_REQUESTED == eComMType)
            && ((CANIF_CS_STARTED != eCtrlType)
            || (CANSM_BSM_S_FULLCOM != eNWModeType)))
            {
               if(SBC_u8DebounceCount < SBC_u8DEBOUNCE_TIMES)
               {
                  SBC_u8DebounceCount++;
               }
               else
               {
                  SBC_u8DebounceCount = 0;
                  //SBC_u8LDOManagerState = eSBC_PreEcuReset;
               }
            }
         }
         else
         {
            SBC_u8LDOManagerState = eSBC_UnderVolDiag;
         }
      }
      break;

      /* Waiting For The Undervoltage Event */
      case eSBC_UnderVolDiag:
      {
         SBC_bLDOStateIsChanged = FALSE;

         if ( (FALSE == bLocPwmOngoingFlag) &&
              (VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT != u8LocCCU6State) &&
              (FALSE == bLocGPwmOngoingFlag) &&
              (GVSISRV_SIGNAL_MODE_REQ_PWM_DIRECT != u8LocGCCU6State) &&
              (FALSE == bLocEsmPoDnReady) 
               )
         {
            /* Check Battery Voltage */
            if( (f32LocBatValAd >= SBC_f32UnderVolLowThresholdC) &&
               (f32LocBatValAd <= SBC_f32UnderVolHighThresholdC) )
            {
               if(SBC_u8DebounceCount < SBC_u8DEBOUNCE_TIMES)
               {
                  SBC_u8DebounceCount++;
               }
               else
               {
                  /* Clear Err Counter */
                  SBC_u8DebounceCount = 0;
                  /* Event Occurs, Ready To Disable LDO */
                  SBC_u8LDOManagerState = eSBC_CheckLDOState;
               }
            }
            else if (TRUE == bLocOtherCheckFail)
            {
               /* Clear Err Counter */
               SBC_u8DebounceCount = 0;
               /* Event Occurs, Ready To Disable LDO */
               SBC_bLDOStateIsChanged = TRUE;
               SBC_u8LDOManagerState = eSBC_SetNoComReq;
            }
            else
            {
               SBC_u8DebounceCount = 0;
            }
         }
         else
         {
            SBC_u8DebounceCount = 0;
         }
      }
      break;

      case eSBC_CheckLDOState:
      {
         if(0 == SBC_u16IntUvTimCnt)
         {
            SBC_bLDOStateIsChanged = FALSE;
            SBC_u8LDOManagerState = eSBC_SetNoComReq;
         }
         else if(TRUE == bLocOtherCheckFail)
         {
            SBC_bLDOStateIsChanged = TRUE;
            SBC_u8LDOManagerState = eSBC_SetNoComReq;
         }
         else
         {
            /* The voltage of the LDO is unstable and needs to be eliminated */
         }
      }
      break;

      case eSBC_SetNoComReq:
      {
         Rte_Write_PP_BswMArbitration_BswM_MRP_Network_uint8(RTE_MODE_ComMMode_COMM_NO_COMMUNICATION);
         if(TRUE == SBC_bLDOStateIsChanged)
         {
            SBC_u8LDOManagerState = eSBC_SetTrcvSleepReq;
         }
         else
         {
            SBC_u8LDOManagerState = eSBC_WaitNormal;
         }
      }
      break;

      case eSBC_SetTrcvSleepReq:
      {
         CanTrcv_SetOpMode(SpiConf_SpiChannel_CAN_Trcv_Tja1145, CANTRCV_TRCVMODE_SLEEP);
         SBC_u8LDOManagerState = eSBC_SetLDOCloseReq;
      }
      break;

      case eSBC_SetLDOCloseReq:
      {
         /* Disable LDO */
         if(FALSE == SBC_bUserCmdSendFlag)
         {
            SBC_vidCloseLDO();
         }
         
         /* Check Spi Running Result */
         if(SBC_bSpiOperateFlag)
         {
            /* Wait For Normal Event Occurs */
            SBC_u8LDOManagerState = eSBC_WaitNormal;
            SBC_u8DebounceCount = 0;
            SBC_bUserCmdSendFlag = FALSE;
         }
      }
      break;

      /* Waiting The Voltage return To Normal */
      case eSBC_WaitNormal:
      {
         /* Check Battery Voltage */
         if(f32LocBatValAd >= SBC_f32RecoverThresholdC)
         {
            if(SBC_u8DebounceCount < SBC_u8DEBOUNCE_TIMES)
            {
               SBC_u8DebounceCount++;
            }
            else
            {
               Rte_Write_PP_BswMArbitration_BswM_MRP_Network_uint8(RTE_MODE_ComMMode_COMM_FULL_COMMUNICATION);

               if(TRUE == SBC_bLDOStateIsChanged)
               {
                  /* Event Occurs */
                  SBC_u8LDOManagerState = eSBC_SetLDOOpenReq;
               }
               else
               {
                  SBC_u8LDOManagerState = eSBC_UnderVolDiag;
               }

               /* Clear Err Counter */
               SBC_u8DebounceCount = 0;
            }
         }
         else
         {
            SBC_u8DebounceCount = 0;
         }
      }
      break;

      case eSBC_SetLDOOpenReq:
      {
         /* Enable LDO */
         if(FALSE == SBC_bUserCmdSendFlag)
         {
            SBC_vidOpenLDO();
         }
         
         /* Check Spi Running Result */
         if(SBC_bSpiOperateFlag)
         {
            /* Ready To Disable Wdg */
            SBC_u8LDOManagerState = eSBC_SetTrcvNormalReq;
            SBC_bUserCmdSendFlag = FALSE;
         }
      }
      break;

      /* Enable LDO Success, Init TJA1145 */
      case eSBC_SetTrcvNormalReq:
      {
         /* Set TJA1145 Init Flag */
         bTJA1145NeedToInit = TRUE;

         CanTrcv_GetOpMode_TJA1145(SpiConf_SpiChannel_CAN_Trcv_Tja1145, &CurMode);
         if(CurMode == CANTRCV_TRCVMODE_NORMAL)
         {
            SBC_u8LDOManagerState = eSBC_UnderVolDiag;
         }
         else
         {
            CanTrcv_SetOpMode(SpiConf_SpiChannel_CAN_Trcv_Tja1145, CANTRCV_TRCVMODE_NORMAL);
         }
      }
      break;
      
      case eSBC_PreEcuReset:
      {
         if(f32LocBatValAd >= SBC_f32RecoverThresholdC)
         {
            if(SBC_u8DebounceCount < SBC_u8DEBOUNCE_TIMES)
            {
               SBC_u8DebounceCount++;
            }
            else
            {
               MCU_vSetResetCmd();
               SBC_u8LDOManagerState = eSBC_FaultState;
            }
         }
      }
      break;

      case eSBC_FaultState:
      {
      }
      break;

      default:
      {
         SBC_u8LDOManagerState = eSBC_UnderVolDiag;
      }
      break;
   }

   return bTJA1145NeedToInit;
}

/**********************************************************************
 * Function name    :  SBC_bCheckOutputStt
 * Description      :  check other state which need reconfigure SBC.
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author    Operation
 * --------------------------------------------------------------------
 * 2023/12/22      V1.0       Daniel      Create
 ***********************************************************************/ 
FUNC(boolean, SBC_CODE) SBC_bCheckOutputStt(void)
{
   boolean bLocOtherSttFailFlg = FALSE;
   boolean bLocVcuTout = FALSE;
      
   SBC_u16P5vComRaw     = SBCHal_u16GetAdVal_P5VCom();
   SBC_u16P5vAD2SRaw    = SBCHal_u16GetAdVal_P5VAD2S();
   SBC_u16GatewayRaw    = SBCHal_u16GetAdVal_P5VGateway();
   SBC_u16MainSupRaw    = SBCHal_u16GetAdVal_P5VBt();
   SBC_u16P5vRefProtRaw = SBCHal_u16GetAdVal_P5VRef();

   if((SBC_u16P5vComRaw     < SBC_ku16IntUnderVoltThdC)
   || (SBC_u16GatewayRaw    < SBC_ku16IntUnderVoltThdC)
   || (SBC_u16MainSupRaw    < SBC_ku16IntUnderVoltThdC)
   || (SBC_u16P5vAD2SRaw    < SBC_ku16IntUnderVoltThdC)
   || (SBC_u16P5vRefProtRaw < SBC_ku16IntUnderVoltThdC))
   {
      if (SBC_u16IntUvTimCnt < SBC_ku16IntUvTimoutC)
      {
         SBC_u16IntUvTimCnt++;
         bLocOtherSttFailFlg = FALSE;
      }
      else
      {
         bLocOtherSttFailFlg = TRUE;
         SBC_u16OtherAbnormCnt++;
      }
   }
   else
   {
      bLocOtherSttFailFlg = FALSE;
      SBC_u16IntUvTimCnt = 0;
   }

   SBC_bOtherSttFailFlg = bLocOtherSttFailFlg;

   return bLocOtherSttFailFlg;
}

#define SBC_STOP_SEC_CODE
#include "SBC_MemMap.h"

/*--------------------------------------------------- END OF FILE ----------------------------------------------------*/
