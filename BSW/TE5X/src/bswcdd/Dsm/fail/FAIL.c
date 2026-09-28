/******************************************************************************/
/*                                                                            */
/* !Layer           : Application                                             */
/*                                                                            */
/* !Component       : FAIL                                                    */
/* !Description     : Application Gen2                                        */
/*                                                                            */
/* !Module          : FAIL                                                    */
/*                                                                            */
/* !File            : FAIL.c                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2014 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* 1  / FAIL_vidInit                                                          */
/* 2  / FAIL_vidInitVSICounters                                               */
/* 11 / FAIL_vidFailDetection_1ms                                             */
/* 12 / FAIL_vidFailDetection_10ms                                            */
/* 13 / FAIL_vidFailDetection_100ms                                           */
/* 14 / FAIL_vidFailDetection_1000ms                                          */
/* 21 / FAIL_vidFailDetection_VSI                                             */
/* 31 / FAIL_vidPowerDown                                                     */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::               $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/

#include "FAIL.h"
#include "FAIL_L.h"
#include "FAIL_Nvm.h"
#include "FAULT.h"
#include "FAULT_FF.h"
#include "BSW.h"
#include "esmsrv.h"
#include "iohal.h"
#include "DSM.h"
#include "Dsm_Typ.h"
#include "NVM.h"
#include "SBC.h"
#include "MAIN_L.h"
#include "GMAIN_L.h"
#include "CanSM.h"
#include "CCU6.h"
#include "GCCU6.h"
#include "ASW_NM.h"
#include "MAIN_MSG_Auto_Can01_L.h"
#include "TPPC.h"
#include "BSW_L.h"

#define T_COMLOST_DIAG_T_ENA   (350)  //3.5s
#define T_COMLOST_DIAG_V_ENA   (53)   //530ms

#define FAIL_BAT_VOLT_GAIN        (0.0159f)
#define FAIL_BAT_VOLT_OFFSET      (0.003f)

#ifdef __SYS_BACKUP_POWER_
#define FAIL_P16V_MULT_GAIN       (0.00696f)
#define FAIL_P16V_MULT_OFFSET     (0.6f)
#endif

#define LV_SYSTEM_VOLT_24V

#ifdef LV_SYSTEM_VOLT_24V

#define FAIL_COMLOST_DIAG_LOFF    (14.0f)
#define FAIL_COMLOST_DIAG_LON     (16.0f)
#define FAIL_COMLOST_DIAG_HON     (34.0f)
#define FAIL_COMLOST_DIAG_HOFF    (36.0f)
#else
#define FAIL_COMLOST_DIAG_LOFF    (8.4f)
#define FAIL_COMLOST_DIAG_LON     (9.5f)
#define FAIL_COMLOST_DIAG_HON     (15.0f)
#define FAIL_COMLOST_DIAG_HOFF    (16.0f)
#endif

/* Couter */
#define C_COMLOST_DIAG_BUSOFF  (5) //16V
/* Key On delay. */
#define T_COMLOST_KEY_ON_DELAY   (350)  //3.5s

/******************************************************************************/
/* LOCAL DATA DEFINITION                                                      */
/******************************************************************************/

#define MAIN_START_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

uint32 FAIL_u32VSICounterTimeoutCs;
uint32 FAIL_u32VSICounterTimeoutSyncPos;
uint32 FAIL_u32VSICounterTimeoutTCalc;

#ifdef __SYS_BACKUP_POWER_
static float32 FAIL_f32P16VMultVolt;
#endif
static float32 FAIL_f32LvBatVoltage;
static boolean FAIL_bDiagDisableFlg;
static uint8 FAIL_u8FaultDetMngStt;
static uint16 FAIL_u16FaultDetTimCnt;
static uint16 FAIL_u16LvBatVoltRaw;

#define MAIN_STOP_SEC_VAR_UNSPECIFIED
#include "MAIN_MemMap.h"

#define FAIL_START_SEC_CODE
#include "FAIL_MemMap.h"
static inline void FAIL_vidCalcBatVolt(void);
static void FAIL_vidFaultDetManagement(void);
#define FAIL_STOP_SEC_CODE
#include "FAIL_MemMap.h"

extern void UDS_vidFrazeFrameInit(void);

/******************************************************************************/
/* FUNCTIONS DEFINITION                                                       */
/******************************************************************************/
#define FAIL_START_SEC_CODE
#include "FAIL_MemMap.h"

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidInit                                                */
/* !Description : Failure data init                                           */
/* !Number      : 1                                                           */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void FAIL_vidInit(void)
{
   FAIL_vidInitVSICounters();
   FAIL_vidDisableEmbFltCheck();

   FAIL_u8Can01BusoffCnt = 0;
   FAIL_bComLostDiagVEna = FALSE;
   FAIL_bComLostDiagVLow  = 0;
   FAIL_bComLostDiagVHigh = 0;
   FAIL_u16KeyOnValue = 0;
   FAIL_u16ComLostDiagVRecCnt = 0;
   FAIL_u16LvBatVoltRaw = 0;
   FAIL_bRstHotFlag        = 0;
   FAIL_u16TimestampIgnNvm = 0;
   FAIL_bCanErrChkDisabled = FALSE;
   FAIL_u16KeyOnDelay = 0;
   FAIL_f32LvBatVoltage = 12;
#ifdef __SYS_BACKUP_POWER_
   FAIL_f32P16VMultVolt = 12;
#endif
   FAIL_u8FaultDetMngStt = FAIL_enuFLTDET_IDLE;
   FAIL_u16FaultDetTimCnt = 0;
   FAIL_bDiagDisableFlg = FALSE;

   UDS_vidFrazeFrameInit();
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidInitVSICounters                                     */
/* !Description :                                                             */
/* !Number      : 2                                                           */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void FAIL_vidInitVSICounters(void)
{
   FAIL_u32VSICounterTimeoutCs      = 0;
   FAIL_u32VSICounterTimeoutSyncPos = 0;
   FAIL_u32VSICounterTimeoutTCalc   = 0;
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidPowerUp                                             */
/* !Description :                                                             */
/* !Number      : 10                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void FAIL_vidPowerUp(void)
{
   if (FAIL_bRstHotFlagNvm != 0)
   {
      FAIL_bRstHotFlag = 1;
      FAIL_u16RstHotCntNvm++;
   }
   FAIL_bRstHotFlagNvm = 1;
   FAIL_u16RstStartUpCntNvm++;
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidFailDetection_1ms                                   */
/* !Description :                                                             */
/* !Number      : 11                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void FAIL_vidFailDetection_1ms(void)
{
   boolean bBswReadySts = 0;
   uint8 u8LocFaultLevel = 0;

   bBswReadySts = BSW_bGetBswReadySts();
         
   if(FALSE != bBswReadySts)
   {
      FaultDetection(BSW_HW_,    FPGA_IGBT_H,   (boolean)(TRUE == CCU6_bGetHwFaultIgbtH() ) );
      FaultDetection(BSW_HW_,    FPGA_IGBT_L,   (boolean)(TRUE == CCU6_bGetHwFaultIgbtL() ) );

      u8LocFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_MCU);
      if (u8LocFaultLevel < DSM_FAULT_LEVEL_EMRG_STOP)
      {
         if((TRUE == MAIN_bSoftOvCurrPhsUFlg)
         || (TRUE == CCU6_bGetHwFaultOvcU()))
         {
            FaultDetection(BSW_HW_,    FPGA_OVERUNDERCURUI, TRUE);
         }
         else
         {
            FaultDetection(BSW_HW_,    FPGA_OVERUNDERCURUI, FALSE);
         }

         if((TRUE == MAIN_bSoftOvCurrPhsVFlg)
         || (TRUE == CCU6_bGetHwFaultOvcV()))
         {
            FaultDetection(BSW_HW_,    FPGA_OVERUNDERCURVI, TRUE);
         }
         else
         {
            FaultDetection(BSW_HW_,    FPGA_OVERUNDERCURVI, FALSE);
         }

         if((TRUE == MAIN_bSoftOvCurrPhsWFlg)
         || (TRUE == CCU6_bGetHwFaultOvcW()))
         {
            FaultDetection(BSW_HW_,    FPGA_OVERUNDERCURWI, TRUE);
         }
         else
         {
            FaultDetection(BSW_HW_,    FPGA_OVERUNDERCURWI, FALSE);
         }
      }
      else
      {
         /* !Comment: No process. */
      }
      
      /* !Comment: High voltage overvoltage fault. */
      FaultDetection(BSW_HW2_,   FPGA_OVERVOLTVBAT,   (boolean)(TRUE == CCU6_bGetHwFaultDcOvVolt() ) );
   }
   /*No fault by LiZhaoPo-20240514*/
  /*FaultDetection(BSW_HW_,    OCDATANOTRATIONAL,  (boolean)BSW_bOCDataNotRation);*/
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : GFAIL_vidFailDetection_1ms                                  */
/* !Description :                                                             */
/* !Number      : 11                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void GFAIL_vidFailDetection_1ms(void)
{
   boolean bBswReadySts = 0;
   uint8 u8LocFaultLevel = 0;

   bBswReadySts = BSW_bGetBswReadySts();
         
   if(FALSE != bBswReadySts)
   {
      FaultDetection(GBSW_HW_,    FPGA_IGBT_H,   (boolean)(TRUE == GCCU6_bGetHwFaultIgbtH() ) );
      FaultDetection(GBSW_HW_,    FPGA_IGBT_L,   (boolean)(TRUE == GCCU6_bGetHwFaultIgbtL() ) );

      u8LocFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_GCU);
      if (u8LocFaultLevel < DSM_FAULT_LEVEL_EMRG_STOP)
      {
         if((TRUE == GMAIN_bSoftOvCurrPhsUFlg)
         || (TRUE == GCCU6_bGetHwFaultOvcU()))
         {
            FaultDetection(GBSW_HW_,    FPGA_OVERUNDERCURUI, TRUE);
         }
         else
         {
            FaultDetection(GBSW_HW_,    FPGA_OVERUNDERCURUI, FALSE);
         }

         if((TRUE == GMAIN_bSoftOvCurrPhsVFlg)
         || (TRUE == GCCU6_bGetHwFaultOvcV()))
         {
            FaultDetection(GBSW_HW_,    FPGA_OVERUNDERCURVI, TRUE);
         }
         else
         {
            FaultDetection(GBSW_HW_,    FPGA_OVERUNDERCURVI, FALSE);
         }

         if((TRUE == GMAIN_bSoftOvCurrPhsWFlg)
         || (TRUE == GCCU6_bGetHwFaultOvcW()))
         {
            FaultDetection(GBSW_HW_,    FPGA_OVERUNDERCURWI, TRUE);
         }
         else
         {
            FaultDetection(GBSW_HW_,    FPGA_OVERUNDERCURWI, FALSE);
         }
      }
      else
      {
         /* !Comment: No process. */
      }

      /* !Comment: High voltage overvoltage fault. */
      FaultDetection(GBSW_HW2_,   FPGA_OVERVOLTVBAT,   (boolean)(TRUE == GCCU6_bGetHwFaultDcOvVolt() ) );
   }
   /*No fault by LiZhaoPo-20240514*/
   /*FaultDetection(GBSW_HW_,    OCDATANOTRATIONAL,  (boolean)GBSW_bOCDataNotRation);*/
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : AFAIL_vidFailDetection_1ms                                  */
/* !Description :                                                             */
/* !Number      : 11                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void AFAIL_vidFailDetection_1ms(void)
{
   boolean bBswReadySts = 0;
   uint8 u8LocFaultLevel = 0;

   bBswReadySts = BSW_bGetBswReadySts();
         
   if(FALSE != bBswReadySts)
   {
      FaultDetection(ABSW_HW_,    FPGA_IGBT_H,   (boolean)(TRUE == TPPCDev_bGetHwFaultIgbtH(eTPPC_DEV_GTM_ACM_INDEX) ) || (TRUE == MAIN_bGetACMASCEnableState()));
      FaultDetection(ABSW_HW_,    FPGA_IGBT_L,   (boolean)(TRUE == TPPCDev_bGetHwFaultIgbtL(eTPPC_DEV_GTM_ACM_INDEX) ) || (TRUE == MAIN_bGetACMASCEnableState()));

      u8LocFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_ACU);
      if (u8LocFaultLevel < DSM_FAULT_LEVEL_EMRG_STOP)
      {
         if ( TRUE == MAIN_bGetAcuSoftOvcFlag_U() )
         {
            FaultDetection(ABSW_HW_,    FPGA_OVERUNDERCURUI, TRUE);
         }
         else
         {
            FaultDetection(ABSW_HW_,    FPGA_OVERUNDERCURUI, FALSE);
         }

         if ( TRUE == MAIN_bGetAcuSoftOvcFlag_V() )
         {
            FaultDetection(ABSW_HW_,    FPGA_OVERUNDERCURVI, TRUE);
         }
         else
         {
            FaultDetection(ABSW_HW_,    FPGA_OVERUNDERCURVI, FALSE);
         }

         if ( TRUE == MAIN_bGetAcuSoftOvcFlag_W() )
         {
            FaultDetection(ABSW_HW_,    FPGA_OVERUNDERCURWI, TRUE);
         }
         else
         {
            FaultDetection(ABSW_HW_,    FPGA_OVERUNDERCURWI, FALSE);
         }
      }
      else
      {
         /* !Comment: No process. */
      }

      /* !Comment: High voltage overvoltage fault. */
      FaultDetection(ABSW_HW2_,   FPGA_OVERVOLTVBAT,   (boolean)(TRUE == MAIN_bGetAcuSoftOvBhvFlag() ) );
   }
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : OFAIL_vidFailDetection_1ms                                  */
/* !Description :                                                             */
/* !Number      : 11                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void OFAIL_vidFailDetection_1ms(void)
{
   boolean bBswReadySts = 0;
   uint8 u8LocFaultLevel = 0;

   bBswReadySts = BSW_bGetBswReadySts();
         
   if(FALSE != bBswReadySts)
   {
      FaultDetection(OBSW_HW_,    FPGA_IGBT_H,   (boolean)(TRUE == TPPCDev_bGetHwFaultIgbtH(eTPPC_DEV_GTM_EPS_INDEX) ) || (TRUE == MAIN_bGetEPSASCEnableState()) );
      FaultDetection(OBSW_HW_,    FPGA_IGBT_L,   (boolean)(TRUE == TPPCDev_bGetHwFaultIgbtL(eTPPC_DEV_GTM_EPS_INDEX) ) || (TRUE == MAIN_bGetEPSASCEnableState()) );

      u8LocFaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_OCU);
      if (u8LocFaultLevel < DSM_FAULT_LEVEL_EMRG_STOP)
      {
         if ( TRUE == MAIN_bGetOcuSoftOvcFlag_U() )
         {
            FaultDetection(OBSW_HW_,    FPGA_OVERUNDERCURUI, TRUE);
         }
         else
         {
            FaultDetection(OBSW_HW_,    FPGA_OVERUNDERCURUI, FALSE);
         }

         if ( TRUE == MAIN_bGetOcuSoftOvcFlag_V() )
         {
            FaultDetection(OBSW_HW_,    FPGA_OVERUNDERCURVI, TRUE);
         }
         else
         {
            FaultDetection(OBSW_HW_,    FPGA_OVERUNDERCURVI, FALSE);
         }

         if ( TRUE == MAIN_bGetOcuSoftOvcFlag_W() )
         {
            FaultDetection(OBSW_HW_,    FPGA_OVERUNDERCURWI, TRUE);
         }
         else
         {
            FaultDetection(OBSW_HW_,    FPGA_OVERUNDERCURWI, FALSE);
         }
      }
      else
      {
         /* !Comment: No process. */
      }

      /* !Comment: High voltage overvoltage fault. */
      FaultDetection(OBSW_HW2_,   FPGA_OVERVOLTVBAT,   (boolean)(TRUE == MAIN_bGetOcuSoftOvBhvFlag() ) );
   }
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidFailDetection_10ms                                  */
/* !Description :                                                             */
/* !Number      : 12                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void FAIL_vidFailDetection_10ms(void)
{
   boolean Loc_bFullComSts;

   Loc_bFullComSts = ASWNM_bGetFullComSts();
   FAIL_vidCalcBatVolt();
   FAIL_vidCheckBatVolt();
   FAIL_vidFaultDetManagement();

   FAIL_u8Can01BusoffCnt = CANSM_GetBusoffCnt(BSW_CANNODE1_e);   /* Zhengche CAN */
   if(FAIL_bCanErrCheckonC)
   {
      FAIL_u16KeyOnValue = IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
      
      if((FAIL_u16KeyOnValue != 0)&&(FAIL_bComLostDiagVEna != FALSE))
      {
         FaultDetection(BSW_COM_, BUSOFF_CAN1, (FAIL_u8Can01BusoffCnt >= C_COMLOST_DIAG_BUSOFF));
         FaultDetection(GBSW_COM_, BUSOFF_CAN1, (FAIL_u8Can01BusoffCnt >= C_COMLOST_DIAG_BUSOFF));
         FaultDetection(ABSW_COM_, BUSOFF_CAN1, (FAIL_u8Can01BusoffCnt >= C_COMLOST_DIAG_BUSOFF));
         FaultDetection(OBSW_COM_, BUSOFF_CAN1, (FAIL_u8Can01BusoffCnt >= C_COMLOST_DIAG_BUSOFF));
      }
      else
      {
         FaultDetection(BSW_COM_, BUSOFF_CAN1, FALSE);
         FaultDetection(GBSW_COM_, BUSOFF_CAN1, FALSE);
         FaultDetection(ABSW_COM_, BUSOFF_CAN1, FALSE);
         FaultDetection(OBSW_COM_, BUSOFF_CAN1, FALSE);
      }

      if(FALSE == FAIL_u16KeyOnValue)
      {
         FAIL_u16KeyOnDelay = 0;
      }
      else
      {
         if (FAIL_u16KeyOnDelay < T_COMLOST_KEY_ON_DELAY)
         {
            FAIL_u16KeyOnDelay++;
         }
         else
         {
            FAIL_u16KeyOnDelay = T_COMLOST_KEY_ON_DELAY;
         }
      }
      
      if((FAIL_bComLostDiagVEna != FALSE)
      && (FAIL_u8Can01BusoffCnt <= 1)
      && (FAIL_u16KeyOnDelay >= T_COMLOST_KEY_ON_DELAY)
      && (Loc_bFullComSts != FALSE))
      {
         FaultDetection(BSW_COM_,    TIMOUTRXVCU,   ComToutDet_bMCU1_CANTimeout_DetFun());
         FaultDetection(GBSW_COM_,   TIMOUTRXVCU,   ComToutDet_bMCU2_CANTimeout_DetFun());
         FaultDetection(ABSW_COM_,   TIMOUTRXVCU,   ComToutDet_bACM_CANTimeout_DetFun());
         FaultDetection(OBSW_COM_,   TIMOUTRXVCU,   ComToutDet_bEPS_CANTimeout_DetFun());
      }
      else
      {
         FaultDetection(BSW_COM_,    TIMOUTRXVCU,      FALSE);
         FaultDetection(GBSW_COM_,   TIMOUTRXVCU,      FALSE);
         FaultDetection(ABSW_COM_,   TIMOUTRXVCU,      FALSE);
         FaultDetection(OBSW_COM_,   TIMOUTRXVCU,      FALSE);
         
         /* FAIL_vidClearComLostFlg(); */
      }
   }
   else
   {
      FaultDetection(BSW_COM_,   TIMOUTRXVCU,      FALSE);
      FaultDetection(GBSW_COM_,   TIMOUTRXVCU,      FALSE);
      FaultDetection(ABSW_COM_,   TIMOUTRXVCU,      FALSE);
      FaultDetection(OBSW_COM_,   TIMOUTRXVCU,      FALSE);
      FaultDetection(BSW_COM_,  BUSOFF_CAN1, FALSE);
      FaultDetection(GBSW_COM_, BUSOFF_CAN1, FALSE);
      FaultDetection(ABSW_COM_, BUSOFF_CAN1, FALSE);
      FaultDetection(OBSW_COM_, BUSOFF_CAN1, FALSE);
   }
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidFailDetection_100ms                                 */
/* !Description :                                                             */
/* !Number      : 13                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void FAIL_vidFailDetection_100ms(void)
{
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidFailDetection_1000ms                                */
/* !Description :                                                             */
/* !Number      : 14                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void FAIL_vidFailDetection_1000ms(void)
{
   FAIL_u32TimestampLifeNvm++;
   FAIL_u16TimestampIgnNvm++;
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidPowerDown                                           */
/* !Description :                                                             */
/* !Number      : 31                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
void FAIL_vidPowerDown(void)
{
   FAIL_bRstHotFlagNvm = 0;
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidCheckBatVolt                                        */
/* !Description :                                                             */
/* !Number      : 31                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : RY.LIU                                                      */
/******************************************************************************/
void FAIL_vidCheckBatVolt(void)
{
   if(FAIL_f32LvBatVoltage <= FAIL_COMLOST_DIAG_LOFF)
   {
      /* Over the upper limit */
      FAIL_bComLostDiagVLow = TRUE;
      FAIL_bComLostDiagVEna = FALSE;
   }
   else if(FAIL_f32LvBatVoltage >= FAIL_COMLOST_DIAG_HOFF)
   {
      /* Below the Lower limit */
      FAIL_bComLostDiagVHigh = TRUE;
      FAIL_bComLostDiagVEna = FALSE;
   }
   else
   {
      /* Check last state */
      if(FAIL_bComLostDiagVLow != FALSE)
      {
         /* Voltage normal */
         if(FAIL_f32LvBatVoltage > FAIL_COMLOST_DIAG_LON)
         {
            FAIL_u16ComLostDiagVRecCnt++;
            if(FAIL_u16ComLostDiagVRecCnt >= T_COMLOST_DIAG_V_ENA)
            {
               FAIL_u16ComLostDiagVRecCnt = 0;
               FAIL_bComLostDiagVEna = TRUE;
               FAIL_bComLostDiagVLow = FALSE;
            }
         }
      }
      else if(FAIL_bComLostDiagVHigh != FALSE)
      {
         /* Voltage normal */
         if(FAIL_f32LvBatVoltage < FAIL_COMLOST_DIAG_HON)
         {
            FAIL_u16ComLostDiagVRecCnt++;
            if(FAIL_u16ComLostDiagVRecCnt >= T_COMLOST_DIAG_V_ENA)
            {
               FAIL_u16ComLostDiagVRecCnt = 0;
               FAIL_bComLostDiagVEna = TRUE;
               FAIL_bComLostDiagVHigh = FALSE;
            }
         }
      }
      else
      {
         FAIL_bComLostDiagVEna = TRUE;
      }
   }
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidDisableEmbFltCheck                                  */
/* !Description :                                                             */
/* !Number      : 32                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : RLIU                                                        */
/******************************************************************************/
void FAIL_vidDisableEmbFltCheck(void)
{
   FaultFunctionDisable(BSW_COM_);
   FaultFunctionDisable(BSW_HW2_);
   FaultFunctionDisable(BSW_HW_);
   FaultFunctionDisable(FSEVBHV_);
   FaultFunctionDisable(FSEVBLV_);
   FaultFunctionDisable(FSEVETA_);
   FaultFunctionDisable(FSEVETA_OVER);
   FaultFunctionDisable(FSEVETA_TEMP);
   FaultFunctionDisable(FSMTMTA_OVER);
   FaultFunctionDisable(FSMTMTA_TEMP);
   FaultFunctionDisable(FSMTRDG_);
   FaultFunctionDisable(FSSMACS_);
   FaultFunctionDisable(FTASBDS_);
   FaultFunctionDisable(FTASETP_);
   FaultFunctionDisable(FTASMTP_);
   FaultFunctionDisable(FTASOSP_);
   FaultFunctionDisable(FTCMSCS_);
   FaultFunctionDisable(FTCMTCS_);
   FaultFunctionDisable(FTEVEIT_);
   FaultFunctionDisable(FTMTLCS_);
   FaultFunctionDisable(SDMTMEP_);

   FaultFunctionDisable(GFSEVBHV_);
   FaultFunctionDisable(GFSEVBLV_);
   FaultFunctionDisable(GFTASBDS_);
   FaultFunctionDisable(GBSW_COM_);
   FaultFunctionDisable(GBSW_HW_);
   FaultFunctionDisable(GBSW_HW2_);
   FaultFunctionDisable(GFSEVETA_);
   FaultFunctionDisable(GFSEVETA_OVER);
   FaultFunctionDisable(GFSEVETA_TEMP);
   FaultFunctionDisable(GFSMTMTA_OVER);
   FaultFunctionDisable(GFSMTMTA_TEMP);
   FaultFunctionDisable(GFSMTRDG_);
   FaultFunctionDisable(GFSSMACS_);
   FaultFunctionDisable(GFTASBDS_);
   FaultFunctionDisable(GFTASETP_);
   FaultFunctionDisable(GFTASMTP_);
   FaultFunctionDisable(GFTASOSP_);
   FaultFunctionDisable(GFTCMTCS_);
   FaultFunctionDisable(GFTEVEIT_);
   FaultFunctionDisable(GFTMTLCS_);
   FaultFunctionDisable(GSDMTMEP_);
   FaultFunctionDisable(GFTCMSCS_);

   FaultFunctionDisable(ABSW_COM_);
   FaultFunctionDisable(ABSW_HW2_);
   FaultFunctionDisable(ABSW_HW_);
   FaultFunctionDisable(AFSEVBHV_);
   FaultFunctionDisable(AFSEVBLV_);
   FaultFunctionDisable(AFSEVETA_);
   FaultFunctionDisable(AFSEVETA_OVER);
   FaultFunctionDisable(AFSEVETA_TEMP);
   FaultFunctionDisable(AFSMTMTA_OVER);
   FaultFunctionDisable(AFSMTMTA_TEMP);
   FaultFunctionDisable(AFTASBDS_);
   FaultFunctionDisable(AFTASETP_);
   FaultFunctionDisable(AFTASMTP_);
   FaultFunctionDisable(AFTASOSP_);
   FaultFunctionDisable(AFTCMSCS_);
   FaultFunctionDisable(AFTCMTCS_);
   FaultFunctionDisable(AFTMTLCS_);
   FaultFunctionDisable(AFTSLOBS_);

   FaultFunctionDisable(OBSW_COM_);
   FaultFunctionDisable(OBSW_HW2_);
   FaultFunctionDisable(OBSW_HW_);
   FaultFunctionDisable(OFSEVBHV_);
   FaultFunctionDisable(OFSEVBLV_);
   FaultFunctionDisable(OFSEVETA_);
   FaultFunctionDisable(OFSEVETA_OVER);
   FaultFunctionDisable(OFSEVETA_TEMP);
   FaultFunctionDisable(OFSMTMTA_OVER);
   FaultFunctionDisable(OFSMTMTA_TEMP);
   FaultFunctionDisable(OFTASBDS_);
   FaultFunctionDisable(OFTASETP_);
   FaultFunctionDisable(OFTASMTP_);
   FaultFunctionDisable(OFTASOSP_);
   FaultFunctionDisable(OFTCMSCS_);
   FaultFunctionDisable(OFTCMTCS_);
   FaultFunctionDisable(OFTMTLCS_);
   FaultFunctionDisable(OFTSLOBS_);

   FaultFunctionDisable(RCEVETA_);
   FaultFunctionDisable(RCEVETA_OVERTEMP);
   FaultFunctionDisable(RCEVLCS_);
   FaultFunctionDisable(RCSMACS_);
   FaultFunctionDisable(RCSMACS_BATHEAT);
   FaultFunctionDisable(RCSMACS_EAC);
   FaultFunctionDisable(RCSMACS_MAINPOS);
   FaultFunctionDisable(RCSMACS_PREMAIN);
   FaultFunctionDisable(RCSMACS_SCU);
   FaultFunctionDisable(RCSMACS_FASTCHGNEG);
   FaultFunctionDisable(RCSMACS_FASTCHGPOS);
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidEnableEmbFltCheck                                   */
/* !Description :                                                             */
/* !Number      : 33                                                          */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : RLIU                                                        */
/******************************************************************************/
void FAIL_vidEnableEmbFltCheck(void)
{
   if(TRUE == FAIL_bErrCheckonC_ECU1)
   {
      FaultFunctionEnable(BSW_COM_);
      FaultFunctionEnable(BSW_HW2_);
      FaultFunctionEnable(BSW_HW_);
      FaultFunctionEnable(FSEVBHV_);
      FaultFunctionEnable(FSEVBLV_);
      FaultFunctionEnable(FSEVETA_);
      FaultFunctionEnable(FSEVETA_OVER);
      FaultFunctionEnable(FSEVETA_TEMP);
      FaultFunctionEnable(FSMTMTA_OVER);
      FaultFunctionEnable(FSMTMTA_TEMP);
      FaultFunctionEnable(FSMTRDG_);
      FaultFunctionEnable(FSSMACS_);
      FaultFunctionEnable(FTASBDS_);
      FaultFunctionEnable(FTASETP_);
      FaultFunctionEnable(FTASMTP_);
      FaultFunctionEnable(FTASOSP_);
      FaultFunctionEnable(FTCMSCS_);
      FaultFunctionEnable(FTCMTCS_);
      FaultFunctionEnable(FTEVEIT_);
      FaultFunctionEnable(FTMTLCS_);
      FaultFunctionEnable(SDMTMEP_);
   }/* No else */

   if(TRUE == FAIL_bErrCheckonC_ECU2)
   {
      FaultFunctionEnable(GFSEVBHV_);
      FaultFunctionEnable(GFSEVBLV_);
      FaultFunctionEnable(GFTASBDS_);
      FaultFunctionEnable(GBSW_COM_);
      FaultFunctionEnable(GBSW_HW_);
      FaultFunctionEnable(GBSW_HW2_);
      FaultFunctionEnable(GFSEVETA_);
      FaultFunctionEnable(GFSEVETA_OVER);
      FaultFunctionEnable(GFSEVETA_TEMP);
      FaultFunctionEnable(GFSMTMTA_OVER);
      FaultFunctionEnable(GFSMTMTA_TEMP);
      FaultFunctionEnable(GFSMTRDG_);
      FaultFunctionEnable(GFSSMACS_);
      FaultFunctionEnable(GFTASBDS_);
      FaultFunctionEnable(GFTASETP_);
      FaultFunctionEnable(GFTASMTP_);
      FaultFunctionEnable(GFTASOSP_);
      FaultFunctionEnable(GFTCMTCS_);
      FaultFunctionEnable(GFTEVEIT_);
      FaultFunctionEnable(GFTMTLCS_);
      FaultFunctionEnable(GSDMTMEP_);
      FaultFunctionEnable(GFTCMSCS_);
   }/* No else */

   if(TRUE == FAIL_bErrCheckonC_ECU3)
   {
      FaultFunctionEnable(ABSW_COM_);
      FaultFunctionEnable(ABSW_HW2_);
      FaultFunctionEnable(ABSW_HW_);
      FaultFunctionEnable(AFSEVBHV_);
      FaultFunctionEnable(AFSEVBLV_);
      FaultFunctionEnable(AFSEVETA_);
      FaultFunctionEnable(AFSEVETA_OVER);
      FaultFunctionEnable(AFSEVETA_TEMP);
      FaultFunctionEnable(AFSMTMTA_OVER);
      FaultFunctionEnable(AFSMTMTA_TEMP);
      FaultFunctionEnable(AFTASBDS_);
      FaultFunctionEnable(AFTASETP_);
      FaultFunctionEnable(AFTASMTP_);
      FaultFunctionEnable(AFTASOSP_);
      FaultFunctionEnable(AFTCMSCS_);
      FaultFunctionEnable(AFTCMTCS_);
      FaultFunctionEnable(AFTMTLCS_);
      FaultFunctionEnable(AFTSLOBS_);
   }/* No else */

   if(TRUE == FAIL_bErrCheckonC_ECU4)
   {
      FaultFunctionEnable(OBSW_COM_);
      FaultFunctionEnable(OBSW_HW2_);
      FaultFunctionEnable(OBSW_HW_);
      FaultFunctionEnable(OFSEVBHV_);
      FaultFunctionEnable(OFSEVBLV_);
      FaultFunctionEnable(OFSEVETA_);
      FaultFunctionEnable(OFSEVETA_OVER);
      FaultFunctionEnable(OFSEVETA_TEMP);
      FaultFunctionEnable(OFSMTMTA_OVER);
      FaultFunctionEnable(OFSMTMTA_TEMP);
      FaultFunctionEnable(OFTASBDS_);
      FaultFunctionEnable(OFTASETP_);
      FaultFunctionEnable(OFTASMTP_);
      FaultFunctionEnable(OFTASOSP_);
      FaultFunctionEnable(OFTCMSCS_);
      FaultFunctionEnable(OFTCMTCS_);
      FaultFunctionEnable(OFTMTLCS_);
      FaultFunctionEnable(OFTSLOBS_);
   }/* No else */

   if(TRUE == FAIL_bErrCheckonC_ECU5)
   {
      FaultFunctionEnable(RCEVETA_);
      FaultFunctionEnable(RCEVETA_OVERTEMP);
      FaultFunctionEnable(RCEVLCS_);
      FaultFunctionEnable(RCSMACS_);
      FaultFunctionEnable(RCSMACS_BATHEAT);
      FaultFunctionEnable(RCSMACS_EAC);
      FaultFunctionEnable(RCSMACS_MAINPOS);
      FaultFunctionEnable(RCSMACS_PREMAIN);
      FaultFunctionEnable(RCSMACS_SCU);
      FaultFunctionEnable(RCSMACS_FASTCHGNEG);
      FaultFunctionEnable(RCSMACS_FASTCHGPOS);
   }/* No else */
}

/*****************************************************************************
*
* !Runnable    : FAIL_vidClearComLostFlg
* !Trigger       : 
* !Description : Clear communication lost flag
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void FAIL_vidClearComLostFlg(void)
{

}

/*****************************************************************************
*
* !Runnable    : FAIL_vidCalcBatVoltage
* !Trigger     : 
* !Description : Clear communication lost flag
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
static inline void FAIL_vidCalcBatVolt(void)
{
   FAIL_u16LvBatVoltRaw = IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE();
   FAIL_f32LvBatVoltage = ((float32)FAIL_u16LvBatVoltRaw * FAIL_BAT_VOLT_GAIN) + FAIL_BAT_VOLT_OFFSET;

#ifdef __SYS_BACKUP_POWER_
   FAIL_u16P16VMultRaw = IOHAL_u16Read_CH_ADC_IN_P16V_MULTI();
   FAIL_f32P16VMultVolt = ((float32)FAIL_u16P16VMultRaw * FAIL_P16V_MULT_GAIN) + FAIL_P16V_MULT_OFFSET;
#endif
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : FAIL_vidFaultDetManagement                                 */
/* !Description :                                                             */
/* Task: 10ms                                                                 */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                     */
/******************************************************************************/
static void FAIL_vidFaultDetManagement(void)
{
   /* boolean bLocBswReadySts = FALSE; */
   boolean bLocPwmOngoingSts = FALSE;
   uint8 u8LocCCU6State = 0;
   boolean bLocGcuPwmOngoingSts = FALSE;
   uint8 u8LocGcuCCU6State = 0;
   
   /* bLocBswReadySts = BSW_bGetBswReadySts(); */
   bLocPwmOngoingSts = CCU6_bGetPwmRuningFlg();
   u8LocCCU6State = CCU6_u8GetPwmState();
   bLocGcuPwmOngoingSts = GCCU6_bGetPwmRuningFlg();
   u8LocGcuCCU6State = GCCU6_u8GetPwmState();
   
   switch(FAIL_u8FaultDetMngStt)
   {
      case FAIL_enuFLTDET_IDLE:
      {
         FAIL_bDiagDisableFlg = FALSE;
         
         if (1) /*(bLocBswReadySts)*/
         {
            FAIL_u8FaultDetMngStt = FAIL_enuFLTDET_STANDBY;
         }
      }
      break;

      case FAIL_enuFLTDET_STANDBY:
      {
         FAIL_bDiagDisableFlg = FALSE;
         
         if((FALSE == bLocPwmOngoingSts)
         && (VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT != u8LocCCU6State)
         && (FALSE == bLocGcuPwmOngoingSts)
         && (GVSISRV_SIGNAL_MODE_REQ_PWM_DIRECT != u8LocGcuCCU6State))
         {
            if((FAIL_f32LvBatVoltage <= FAIL_kf32DiagVoltOffLowC)
            || (FAIL_f32LvBatVoltage >= FAIL_kf32DiagVoltOffHighC))
            {
               if (FAIL_u16FaultDetTimCnt < FAIL_ku16UnderVolFiltTimC)
               {
                  FAIL_u16FaultDetTimCnt++;
               }
               else
               {
                  FAIL_u16FaultDetTimCnt = 0;
                  FAIL_u8FaultDetMngStt = FAIL_enuFLTDET_STOP_DIAG;
               }
            }
            else
            {
               FAIL_u16FaultDetTimCnt = 0;
            }
         }
         else
         {
            FAIL_u16FaultDetTimCnt = 0;
         }
      }
      break;

      case FAIL_enuFLTDET_STOP_DIAG:
      {
         FAIL_bDiagDisableFlg = TRUE;

         FAIL_vidDisableEmbFltCheck();

         /* !Comment: Clear fault and fault level once. */
         FaultClear(DSM_UNIT_MAP_MCU);
         FaultClear(DSM_UNIT_MAP_GCU);
         FaultClear(DSM_UNIT_MAP_ACU);
         FaultClear(DSM_UNIT_MAP_OCU);
         FaultClear(DSM_UNIT_MAP_PDU);
         
         FAIL_u16FaultDetTimCnt = 0;
         FAIL_u8FaultDetMngStt = FAIL_enuFLTDET_WAIT_RECV;
      }
      break;

      case FAIL_enuFLTDET_WAIT_RECV:
      {
         FAIL_bDiagDisableFlg = TRUE;
         
         if((FAIL_f32LvBatVoltage >= FAIL_kf32DiagVoltOnLowC)
         && (FAIL_f32LvBatVoltage <= FAIL_kf32DiagVoltOnHighC))
         {
            if (FAIL_u16FaultDetTimCnt < FAIL_ku16RcvVolFiltTimC)
            {
               FAIL_u16FaultDetTimCnt++;
            }
            else
            {
               FAIL_u16FaultDetTimCnt = 0;
               FAIL_u8FaultDetMngStt = FAIL_enuFLTDET_START_DIAG;
            }
         }
         else
         {
            FAIL_u16FaultDetTimCnt = 0;

            /* !Comment: If PWM ON, recover fault detection imediately. */
            if((TRUE == bLocPwmOngoingSts)
            || (VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT == u8LocCCU6State)
            || (TRUE == bLocGcuPwmOngoingSts)
            || (GVSISRV_SIGNAL_MODE_REQ_PWM_DIRECT == u8LocGcuCCU6State))
            {
               FAIL_u8FaultDetMngStt = FAIL_enuFLTDET_START_DIAG;
            }
         }
      }
      break;

      case FAIL_enuFLTDET_START_DIAG:
      {
         FAIL_vidEnableEmbFltCheck();
         
         FAIL_bDiagDisableFlg = FALSE;
         FAIL_u16FaultDetTimCnt = 0;
         FAIL_u8FaultDetMngStt = FAIL_enuFLTDET_STANDBY;
      }
      break;

      default:
      {
         FAIL_bDiagDisableFlg = FALSE;
         FAIL_u8FaultDetMngStt = FAIL_enuFLTDET_STANDBY;
      }
      break;
   }
}

#define FAIL_STOP_SEC_CODE
#include "FAIL_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
