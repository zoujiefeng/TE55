/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Mcal_Compiler.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "TPPC_Device.h"
#include "TPPC_ACMCalib.h"
#include "TPPC_ACMHal.h"
#include "MAIN_ACMErrProtect.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
/* !Comment: ASC function step. */
typedef enum
{
   TPPC_ASC_CLOSE = 0,
   TPPC_ASC_ONGOING,
   TPPC_ASC_EXIT,
   TPPC_ASC_EXIT_DELAY,
   TPPC_ASC_FINSH,
   TPPC_ASC_RECOVER,
   TPPC_ASC_OVER_TIME,
}TPPC_AscStepType;

/* !Comment: ASC type. */
enum
{
   TPPC_ASC_TYPE_UNDEF = 0,
   TPPC_ASC_TYPE_LOWSIDE,
   TPPC_ASC_TYPE_HIGHSIDE,
   TPPC_ASC_TYPE_ALLOFF
};

/* Motor Manager variable set */
typedef struct TPPC_tMotorMgrVarSet{
   uint16  TPPC_u16PwmModReq;
   uint16  TPPC_u16PowerOnDelay;
   boolean TPPC_bIsStart;
   boolean TPPC_bPwmOnGoingFlg;
   uint8   TPPC_u8PwmState;
}TPPC_tMotorMgrVarSet;

/* ASC Manager variable set */
typedef struct TPPC_tAscMgrVarSet{
   boolean TPPC_bHwFaultDcOvVolt;
   boolean TPPC_bHwFaultIgbt;
   boolean TPPC_bHwFaultIgbtH;
   boolean TPPC_bHwFaultIgbtL;
   boolean TPPC_bP5VHSFltFlg;
   boolean TPPC_bP5VLSFltFlg;
   boolean TPPC_bMotorSpdRdy;
   boolean TPPC_bClrFaultReq;
   uint8   TPPC_u8AscType;
   uint8   TPPC_u8AscStep;
   uint8   TPPC_u8AscRecoverCnt;
   uint16  TPPC_u16McuAscSttDelay;
}TPPC_tAscMgrVarSet;

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static TPPC_tMotorMgrVarSet TPPC_xMotorMgrVarSet_ACM;
static TPPC_tAscMgrVarSet   TPPC_xAscMgrVarSet_ACM;

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/* Function Switch */
#define TPPC_ASC_ENABLED                   (FALSE)
#define TPPC_MID_POINT_CHECK_ENABLED       (FALSE)
#define TPPC_PWM_DRV_CLK_CHECK_ENABLED     (FALSE)

#define TPPC_EMGCY_STOP_FAULT_LEVEL        (0x05u)

#define TPPC_xAscMgrVarSet    TPPC_xAscMgrVarSet_ACM
#define TPPC_xMotorMgrVarSet  TPPC_xMotorMgrVarSet_ACM

/******************************************************************************/
/****************** Motor State Manage Macro Definitions **********************/
/******************************************************************************/
/* !Comment: Bus key clock duty cycle physics value. */
#define TPPC_BUS_KEY_CLK_PHYS           (0.4f)
#define TPPC_BUS_KEY_MAX_CLK_PHYS       (1.0f)

/* !Comment: ASC state minimal period: 1000ms. */
#define TPPC_ASC_PERD_MIN           (1000)
/* !Comment: ASC state exit time: 1000ms. */
#define TPPC_ASC_EXIT_TIME          (1000)
/* !Comment: ASC DELAY for deadtime: 4us. */
#define TPPC_ASC_DEADTIME           (138)

/******************************************************************************/
/*********************** Mid Point Macro Definitions **************************/
/******************************************************************************/
/* !Comment: TPPC Middle point filter times, max less than buffer size. */
#define TPPC_MIDPOINT_FILT_TIME                  (5U)

#define TPPC_EXPOUTPUT_UVW_HIGH_BRIDGE_MASK      (0x15U)   /* 010101b */
#define TPPC_EXPOUTPUT_U_HIGH_BRIDGE_MASK        (0x01U)   /* 000001b */
#define TPPC_EXPOUTPUT_V_HIGH_BRIDGE_MASK        (0x04U)   /* 000100b */
#define TPPC_EXPOUTPUT_W_HIGH_BRIDGE_MASK        (0x10U)   /* 010000b */

/******************************************************************************/
/*********************** DTC Report Macro Definitions *************************/
/******************************************************************************/
/* !Comment: Oil pressure short vcc or gnd threshold. */
#define TPPC_OIL_PRESS_SHORT_VCC      (4050)
#define TPPC_OIL_PRESS_SHORT_GND      (50)

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void TPPC_vidInit(const TPPC_Device * const kpktDev);
static void TPPC_vidMotorStateMng(const TPPC_Device * const kpktDev);
static void TPPC_vidAscStateMng(const TPPC_Device * const kpktDev);
static void TPPC_vidAscEntry(const TPPC_Device * const kpktDev);
static void TPPC_vidSetPwmModReq(const uint16 u16PwmMod);
static void TPPC_vidSetClrFaultReq(boolean bClrFaultReq);
static void TPPC_vidSetMotorSpdRdyFlg(boolean bMotorSpdRdy);
static uint8 TPPC_u8GetPwmState(void);
static boolean TPPC_bGetPwmRuningFlg(void);
static boolean TPPC_bGetHwFaultIgbt(void);
static boolean TPPC_bGetHwFaultIgbtH(void);
static boolean TPPC_bGetHwFaultIgbtL(void);
static boolean TPPC_bGetAscisClose(void);
static boolean TPPC_bGetAscRecoverCondition(void);

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/
const TPPC_AppFunc TPPC_xACMAswFunc = {
   .vidInit              = TPPC_vidInit,
   .vidAscEntry          = TPPC_vidAscEntry,
   .vidMotorStateMng     = TPPC_vidMotorStateMng,
   .vidSetPwmModReq      = TPPC_vidSetPwmModReq,
   .vidSetClrFaultReq    = TPPC_vidSetClrFaultReq,
   .vidSetMotorSpdRdyFlg = TPPC_vidSetMotorSpdRdyFlg,
   .u8GetPwmState        = TPPC_u8GetPwmState,
   .bGetPwmRunFlag       = TPPC_bGetPwmRuningFlg,
   .bGetHwFaultIgbt      = TPPC_bGetHwFaultIgbt,
   .bGetHwFaultIgbtL     = TPPC_bGetHwFaultIgbtL,
   .bGetHwFaultIgbtH     = TPPC_bGetHwFaultIgbtH,
   .bGetAscisClose       = TPPC_bGetAscisClose,
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  TPPC_vidInit
 * Description      :  Sub module init
 * Input parameter  :  PTPPC_Device : Device
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/05/07       V2.0        Zyx        Create
 ***********************************************************************/
static void TPPC_vidInit(const TPPC_Device * const kpktDev)
{
   TPPC_xMotorMgrVarSet.TPPC_u16PwmModReq    = VSISRV_VSI_MODE_REQ_OFF;
   TPPC_xMotorMgrVarSet.TPPC_u16PowerOnDelay = 0;
   TPPC_xMotorMgrVarSet.TPPC_bPwmOnGoingFlg  = FALSE;
   TPPC_xMotorMgrVarSet.TPPC_u8PwmState      = VSISRV_SIGNAL_MODE_REQ_OFF;

   TPPC_xAscMgrVarSet.TPPC_bHwFaultDcOvVolt  = FALSE;
   TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbt      = FALSE;
   TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtH     = FALSE;
   TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtL     = FALSE;
   TPPC_xAscMgrVarSet.TPPC_bP5VHSFltFlg      = FALSE;
   TPPC_xAscMgrVarSet.TPPC_bP5VLSFltFlg      = FALSE;
   TPPC_xAscMgrVarSet.TPPC_bMotorSpdRdy      = FALSE;
   TPPC_xAscMgrVarSet.TPPC_bClrFaultReq      = FALSE;
   TPPC_xAscMgrVarSet.TPPC_u8AscType         = FALSE;
   TPPC_xAscMgrVarSet.TPPC_u8AscStep         = FALSE;
   TPPC_xAscMgrVarSet.TPPC_u8AscRecoverCnt   = FALSE;
   TPPC_xAscMgrVarSet.TPPC_u16McuAscSttDelay = FALSE;

   kpktDev->pktTimerDrv->vidIntHwInit(kpktDev->pktTimerDrv);
   kpktDev->pktTimerDrv->vidIntTrigEnable(kpktDev->pktTimerDrv, TRUE);

   TPPC_xMotorMgrVarSet.TPPC_bIsStart        = TRUE;
}

static void TPPC_vidSetClrFaultReq(boolean bClrFaultReq)
{
   TPPC_xAscMgrVarSet.TPPC_bClrFaultReq = bClrFaultReq;
}

/*********************************************************************
* 
* !Function    : TPPC_vidSetPwmModReq
* !Description : TPPC set PWM mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static void TPPC_vidSetPwmModReq(const uint16 u16PwmMod)
{
   TPPC_xMotorMgrVarSet.TPPC_u16PwmModReq = u16PwmMod;
}

/****************************************************************************************
* 
* !Function    : TPPC_vidSetMotorSpdRdyFlg
* !Description : Set Motor Speed ready flag, use as condition of exit ASC function.
* !input :   NONE 
* !output : NONE
*****************************************************************************************
* !LastAuthor  : Daniel
****************************************************************************************/
static void TPPC_vidSetMotorSpdRdyFlg(boolean bMotorSpdRdy)
{
   TPPC_xAscMgrVarSet.TPPC_bMotorSpdRdy = bMotorSpdRdy;
}

/*********************************************************************
* 
* !Function    : TPPC_u8GetPwmState
* !Description : GCCU6 return PWM mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static uint8 TPPC_u8GetPwmState(void)
{
   return TPPC_xMotorMgrVarSet.TPPC_u8PwmState;
}

/*********************************************************************
* 
* !Function    : TPPC_bGetPwmRuningFlg
* !Description : Get T12 PWM running flag.
* !input :   NONE 
* !output : TRUE: PWM ON; FALSE: PWM OFF.
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static boolean TPPC_bGetPwmRuningFlg(void)
{
   return TPPC_xMotorMgrVarSet.TPPC_bPwmOnGoingFlg;
}

/*********************************************************************
* 
* !Function    : TPPC_bGetAscisClose
* !Description : GCCU6 return TPPC_u8AscStep.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static boolean TPPC_bGetAscisClose(void)
{
   return (TPPC_ASC_CLOSE == TPPC_xAscMgrVarSet.TPPC_u8AscStep);
}

/*********************************************************************
* 
* !Function    : TPPC_vidMotorStateMng
* !Description : TPPC state machine management, schedule Task : 1ms
* !input :   NONE 
* !output : NONE
* !Comment : Delete FRecord fault permision recover
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static void TPPC_vidMotorStateMng(const TPPC_Device * const kpktDev)
{
   boolean bLocPwmOn = FALSE;

   TPPC_vidAscStateMng(kpktDev);

   switch(TPPC_xMotorMgrVarSet.TPPC_u16PwmModReq)
   {
      case VSISRV_VSI_MODE_REQ_OFF:
      {
         bLocPwmOn = FALSE;
         kpktDev->vidStartPwmOutput(kpktDev, bLocPwmOn);
         TPPC_vidEnaPwmDrv(bLocPwmOn);
         //TPPC_u8StartMidPotDetCnt = 0;

         /* !Comment: Indicate FT module Pwm is OFF. */
         TPPC_xMotorMgrVarSet.TPPC_bPwmOnGoingFlg = FALSE;
         TPPC_xMotorMgrVarSet.TPPC_u8PwmState = VSISRV_SIGNAL_MODE_REQ_OFF;
      }
      break;
      case VSISRV_VSI_MODE_REQ_INIT_CAL1:
      case VSISRV_VSI_MODE_REQ_INIT_CAL2:
      case VSISRV_VSI_MODE_REQ_INIT_CAL3:
      {
         bLocPwmOn = FALSE;
         kpktDev->vidStartPwmOutput(kpktDev, bLocPwmOn);
         TPPC_vidEnaPwmDrv(bLocPwmOn);
         //TPPC_u8StartMidPotDetCnt = 0;

         /* !Comment: Indicate FT module Pwm is OFF. */
         TPPC_xMotorMgrVarSet.TPPC_bPwmOnGoingFlg = FALSE;
         TPPC_xMotorMgrVarSet.TPPC_u8PwmState = VSISRV_SIGNAL_MODE_REQ_INIT;
      }
      break;
     
      case VSISRV_VSI_MODE_REQ_PWM_DIRECT:
      {
         if((TPPC_ASC_CLOSE == TPPC_xAscMgrVarSet.TPPC_u8AscStep) && (ACM_ASC_TYPE_NORMAL == MAIN_u8GetACMASCStep()))
         {
            bLocPwmOn = TRUE;
            kpktDev->vidStartPwmOutput(kpktDev, bLocPwmOn);
            TPPC_vidEnaPwmDrv(bLocPwmOn);
            /* !Comment: First PWM cycle do not monitor middle point fault. */
            //TPPC_u8StartMidPotDetCnt = 0;
            
            /* !Comment: Indicate FT module Pwm is ON. */
            TPPC_xMotorMgrVarSet.TPPC_bPwmOnGoingFlg = TRUE;
            TPPC_xMotorMgrVarSet.TPPC_u8PwmState = VSISRV_SIGNAL_MODE_REQ_PWM_DIRECT;
         }
      }
      break;
      
      default:
      {
         /* !Comment: No process. */
      }
      break;
   }
}

/*********************************************************************
* 
* !Function    : TPPC_bGetHwFaultIgbtH
* !Description : Get hardware fault pin value of IGBT H.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static boolean TPPC_bGetHwFaultIgbt(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocIsFaulty = FALSE;

   bLocIsFaulty = TPPC_bIGBTIsFaulty();

   if((TRUE == bLocIsFaulty)
   || (TRUE == TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbt))
   {
      bLocHwFaultResult = TRUE;
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }
   
   return bLocHwFaultResult;
}

/*********************************************************************
* 
* !Function    : TPPC_bGetHwFaultIgbtH
* !Description : Get hardware fault pin value of IGBT H.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static boolean TPPC_bGetHwFaultIgbtH(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocIsFaulty = FALSE;

   bLocIsFaulty = TPPC_bHighSideIGBTIsFaulty();

   if((TRUE == bLocIsFaulty)
   || (TRUE == TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtH))
   {
      bLocHwFaultResult = TRUE;
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }
   
   return bLocHwFaultResult;
}

/*********************************************************************
* 
* !Function    : TPPC_bGetHwFaultIgbtL
* !Description : Get hardware fault pin value of IGBT L.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static boolean TPPC_bGetHwFaultIgbtL(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocIsFaulty = FALSE;

   bLocIsFaulty = TPPC_bLowSideIGBTIsFaulty();

   if((TRUE == bLocIsFaulty)
   || (TRUE == TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtL))
   {
      bLocHwFaultResult = TRUE;
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }
   
   return bLocHwFaultResult;
}

/*********************************************************************
* 
* !Function    : TPPC_bGetHwFaultDcOvVolt
* !Description : Get hardware fault pin value of dclink over voltage.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static boolean TPPC_bGetHwFaultDcOvVolt(void)
{
   boolean bLocHwFaultResult = FALSE;
   boolean bLocIsFaulty = FALSE;

   bLocIsFaulty = TPPC_bHvDcIsOvVolt();

   if((TRUE == bLocIsFaulty)
   || (TRUE == TPPC_xAscMgrVarSet.TPPC_bHwFaultDcOvVolt))
   {
      bLocHwFaultResult = TRUE;
   }
   else
   {
      bLocHwFaultResult = FALSE;
   }
   
   return bLocHwFaultResult;
}

static void TPPC_vidAscStateMng(const TPPC_Device * const kpktDev)
{
   boolean bLocAkdEnaFlg = FALSE;

   /* !Comment: ASC state management. */
   switch (TPPC_xAscMgrVarSet.TPPC_u8AscStep)
   {
      case TPPC_ASC_CLOSE:
      {
      #if (TPPC_MID_POINT_CHECK_ENABLED == TRUE)
         if (TPPC_u16PwmMidPointErrCnt > TPPC_ku8PwmMidPointFaultC)
         {
            /*No fault by LiZhaoPo-20240425*/
            /*FaultDetection(BSW_HW_,  MIDPOINTFAULT  , TRUE);*/
         }
         else
         {
            if (FALSE == TPPC_xMotorMgrVarSet.TPPC_bPwmOnGoingFlg)
            {
               TPPC_u16PwmMidPointErrCnt = 0;
            }
            /*No fault by LiZhaoPo-20240425*/
            /*FaultDetection(BSW_HW_,  MIDPOINTFAULT  , FALSE);*/
         }
      #endif
         break;
      }

      case TPPC_ASC_ONGOING:
      {
         if(TPPC_xAscMgrVarSet.TPPC_u16McuAscSttDelay < TPPC_ASC_PERD_MIN)
         {
            TPPC_xAscMgrVarSet.TPPC_u16McuAscSttDelay++;
         }
         else
         {
            if (FALSE == TPPC_xAscMgrVarSet.TPPC_bMotorSpdRdy)
            {
               TPPC_xAscMgrVarSet.TPPC_u16McuAscSttDelay = 0;
               TPPC_xAscMgrVarSet.TPPC_u8AscStep = TPPC_ASC_EXIT;
            }
         }
         break;
      }

      case TPPC_ASC_EXIT:
      {
      #if (TPPC_ASC_ENABLED == TRUE)
         kpktDev->pktTimerDrv->vidPwmDisableImmediately(kpktDev->pktTimerDrv);
      #endif
         TPPC_xAscMgrVarSet.TPPC_u16McuAscSttDelay = 0;
         TPPC_xAscMgrVarSet.TPPC_u8AscStep = TPPC_ASC_EXIT_DELAY;
         break;
      }

      case TPPC_ASC_EXIT_DELAY:
      {
         if (TPPC_xAscMgrVarSet.TPPC_u16McuAscSttDelay < TPPC_ASC_EXIT_TIME)
         {
            TPPC_xAscMgrVarSet.TPPC_u16McuAscSttDelay++;
         }
         else
         {
            TPPC_xAscMgrVarSet.TPPC_u16McuAscSttDelay = 0;
            TPPC_xAscMgrVarSet.TPPC_u8AscStep = TPPC_ASC_FINSH;
         }
         break;
      }

      case TPPC_ASC_FINSH:
      {
         if (TPPC_xAscMgrVarSet.TPPC_u8AscRecoverCnt < TPPC_ku8AscRecoverCntMaxC)
         {
            bLocAkdEnaFlg = TPPC_bGetAscRecoverCondition();

            if (bLocAkdEnaFlg)
            {
               TPPC_xAscMgrVarSet.TPPC_u8AscRecoverCnt++;
               /*!Comment: Clear hardware fault flag */
               TPPC_xAscMgrVarSet.TPPC_bHwFaultDcOvVolt = FALSE;
               TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtH    = FALSE;
               TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtL    = FALSE;

            #if (TPPC_MID_POINT_CHECK_ENABLED == TRUE)
               TPPC_u16PwmMidPointErrCnt = 0;
               TPPC_u8StartMidPotDetCnt = 0;
            #endif
               
               TPPC_vidClearFaultInfo();

               TPPC_xAscMgrVarSet.TPPC_u8AscStep = TPPC_ASC_RECOVER;
            }
         }
         else
         {
            TPPC_xAscMgrVarSet.TPPC_u8AscStep = TPPC_ASC_OVER_TIME;
         }
         break;
      }

      case TPPC_ASC_RECOVER:
      {
         /* !Comment: Then jump to ASC Close state. */
         TPPC_xAscMgrVarSet.TPPC_u16McuAscSttDelay = 0;
         TPPC_xAscMgrVarSet.TPPC_u8AscStep = TPPC_ASC_CLOSE;
         break;
      }

      case TPPC_ASC_OVER_TIME:
      {
         /* !Comment: Wait Mcu excute active discharge and power off. */
         break;
      }
      
      default:
      {
         break;
      }
   }
}

/*********************************************************************
* 
* !Function    : TPPC_vidAscEntry
* !Description : Set MCU enter ASC mode.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static void TPPC_vidAscEntry(const TPPC_Device * const kpktDev)
{
   boolean bLocIsFaulty = FALSE;

   if (TPPC_xMotorMgrVarSet.TPPC_bIsStart)
   {
      /*Indicate MCU or GCU entered ASC*/
      //IOHAL_vidWrite_CH_DIO_OUT_M_MCU_ASC_STATE_MCU(TRUE);

      /* !Comment: Indicate FT module Pwm is OFF. */
      TPPC_xMotorMgrVarSet.TPPC_bPwmOnGoingFlg = FALSE;
      
      if(TPPC_ASC_CLOSE == TPPC_xAscMgrVarSet.TPPC_u8AscStep)
      {
         TPPC_xAscMgrVarSet.TPPC_u8AscStep = TPPC_ASC_ONGOING;
         kpktDev->pktTimerDrv->vidPwmDisableImmediately(kpktDev->pktTimerDrv);

         /* !Comment: Read hardware fault pin value. */
         bLocIsFaulty = TPPC_bIGBTIsFaulty();
         if (TRUE == bLocIsFaulty)
         {
            TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbt = TRUE;
         }
         
         bLocIsFaulty = TPPC_bHighSideIGBTIsFaulty();
         if (TRUE == bLocIsFaulty)
         {
            TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtH = TRUE;
         }
         
         bLocIsFaulty = TPPC_bLowSideIGBTIsFaulty();
         if (TRUE == bLocIsFaulty)
         {
            TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtL = TRUE;
         }

      #if (TPPC_ASC_ENABLED == TRUE)
         /* !Comment: Keep ALL IGBTs closed time over 4us. */
         TPPC_vidWait(TPPC_ASC_DEADTIME);

         if (TPPC_ASC_TYPE_UNDEF == TPPC_xAscMgrVarSet.TPPC_u8AscType)
         {
            if(((TRUE == TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtH) && (TRUE == TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtL))
            || ((TRUE == TPPC_xAscMgrVarSet.TPPC_bP5VHSFltFlg) && (TRUE == TPPC_xAscMgrVarSet.TPPC_bP5VLSFltFlg)))
            {
               TPPC_xAscMgrVarSet.TPPC_u8AscType = TPPC_ASC_TYPE_ALLOFF;
            }
            else if((TRUE == TPPC_xAscMgrVarSet.TPPC_bHwFaultIgbtL)
                 || (TRUE == TPPC_xAscMgrVarSet.TPPC_bP5VLSFltFlg))    //(TRUE == TPPC_bIgbtHighSideShort) ||
            {
               TPPC_xAscMgrVarSet.TPPC_u8AscType = TPPC_ASC_TYPE_HIGHSIDE;
            }
            else
            {
               TPPC_xAscMgrVarSet.TPPC_u8AscType = TPPC_ASC_TYPE_LOWSIDE;
            }
         }

         if (TPPC_ASC_TYPE_HIGHSIDE == TPPC_xAscMgrVarSet.TPPC_u8AscType)
         {
            kpktDev->pktTimerDrv->vidTrigHighAsc(kpktDev->pktTimerDrv);
         }
         else if (TPPC_ASC_TYPE_LOWSIDE == TPPC_xAscMgrVarSet.TPPC_u8AscType)
         {
            kpktDev->pktTimerDrv->vidTrigLowAsc(kpktDev->pktTimerDrv);
         }
         else
         {
            kpktDev->pktTimerDrv->vidPwmDisableImmediately(kpktDev->pktTimerDrv);
         }
      #endif
      }
   }
}
/*********************************************************************
* 
* !Function    : TPPC_bGetAscRecoverCondition
* !Description : return flag which enable MCU recover from ASC state.
* !input :   NONE 
* !output : NONE
**********************************************************************
* !LastAuthor  : Daniel
**********************************************************************/
static boolean TPPC_bGetAscRecoverCondition(void)
{
   boolean bLocAkdEnaFlg = TRUE;
   boolean bLocIsFaulty  = FALSE;
   uint8 u8LocFaultLevel = 0;
   
   u8LocFaultLevel = TPPC_u8GetFaultLevel();
   if(u8LocFaultLevel >= TPPC_EMGCY_STOP_FAULT_LEVEL)
   {
      /* Fault level >= Stop*/
      bLocAkdEnaFlg = FALSE;
   }

   if(TRUE == bLocAkdEnaFlg)
   {
      bLocIsFaulty = TPPC_bHighSideIGBTIsFaulty();
      if(TRUE == bLocIsFaulty)
      {
         /* IGBT high error */
         bLocAkdEnaFlg = FALSE;
      }
   }

   if(TRUE == bLocAkdEnaFlg)
   {
      bLocIsFaulty = TPPC_bLowSideIGBTIsFaulty();
      if(TRUE == bLocIsFaulty)
      {
         /* IGBT low error */
         bLocAkdEnaFlg = FALSE;
      }
   }

   if(TRUE == bLocAkdEnaFlg)
   {
      bLocIsFaulty = TPPC_bIGBTIsFaulty();
      if(TRUE == bLocIsFaulty)
      {
         /* IGBT low error */
         bLocAkdEnaFlg = FALSE;
      }
   }

   if(TRUE == bLocAkdEnaFlg)
   {
      if(VSISRV_SIGNAL_MODE_REQ_OFF != TPPC_xMotorMgrVarSet.TPPC_u8PwmState) 
      {
         /* PWM open */
         bLocAkdEnaFlg = FALSE;
      }
   }

   if(TRUE == bLocAkdEnaFlg)
   {
      if(FALSE == TPPC_xAscMgrVarSet.TPPC_bClrFaultReq)
      {
         /* ASW not request */
         bLocAkdEnaFlg = FALSE;
      }
   }

   return bLocAkdEnaFlg;
}

static uint8 TPPC_u8GetIGBTStatus(void)
{
#if (TPPC_ASC_ENABLED == TRUE)
   uint8 u8ReturnVal = 0;
   switch (TPPC_xAscMgrVarSet.TPPC_u8McuAscSttStep)
   {
      case TPPC_ASC_CLOSE:
      {
         u8ReturnVal = 2;  /* Normal */
      }
      break;

      case TPPC_ASC_ONGOING:
      {
         u8ReturnVal = 0;  /* ASC */
      }
      break;

      case TPPC_ASC_EXIT:
      case TPPC_ASC_EXIT_DELAY:
      case TPPC_ASC_FINSH:
      case TPPC_ASC_RECOVER:
      case TPPC_ASC_OVER_TIME:
      {
         u8ReturnVal = 3;  /* Free wheel */
      }
      break;
      default:
      {
         u8ReturnVal = 2;  /* Normal */
      }
      break;
   }

   return u8ReturnVal;
#endif
}

/*****************************************************************************
*
* !Runnable    : TPPC_vidPwmDrvClkDiag
* !Trigger       : 10MS Task
* !Description : Driver board clk signal diagnostic
* 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
static void TPPC_vidPwmDrvClkDiag(void)
{
#if (TPPC_PWM_DRV_CLK_CHECK_ENABLED == TRUE)
   boolean bLocBswReadySts = FALSE;
   uint16 u16LocKeyOn = 0;
   
   bLocBswReadySts = BSW_bGetBswReadySts(); 
   u16LocKeyOn = (uint16)IOHAL_u16Read_CH_DIO_IN_M_KEY_ON();
   
   if ( (TRUE == bLocBswReadySts) && (TRUE == TPPC_bIsTPPCStart) && (u16LocKeyOn > 0) )
   {
      Icu_17_TimerIp_ValueType       udtLocPeriodRaw;
      Icu_17_TimerIp_ValueType       udtLocActiveDurationRaw;
#if 0 /* TODO: To be checked */
      Icu_17_TimerIp_DutyCycleType   strLocPeriodAndActiveTime;
      Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_CLK_HS,
                                    &strLocPeriodAndActiveTime);
      udtLocPeriodRaw  = strLocPeriodAndActiveTime.PeriodTime;
      udtLocActiveDurationRaw = strLocPeriodAndActiveTime.ActiveTime;
#endif

      TPPC_u32DrvClkHsPerdRaw = udtLocPeriodRaw;
      TPPC_u32DrvClkHsDutyRaw = udtLocActiveDurationRaw;

      if (TPPC_u32DrvClkHsPerdRaw > 0)
      {
         TPPC_f32DrvClkHsDuty = (float32)( (float32)TPPC_u32DrvClkHsDutyRaw / (float32)TPPC_u32DrvClkHsPerdRaw);

         if(TPPC_kbDrvBdClkEnaC)
         {
            if ( (TPPC_f32DrvClkHsDuty < TPPC_f32DrvClkDutyThdLowC) || (TPPC_f32DrvClkHsDuty > TPPC_f32DrvClkDutyThdHighC) )
            {
               FaultDetection(BSW_HW_, DRVCLKFLTHS  , TRUE);
            }
            else
            {
               FaultDetection(BSW_HW_, DRVCLKFLTHS  , FALSE);
            }
         }
         else
         {
            FaultDetection(BSW_HW_, DRVCLKFLTHS  , FALSE);
         }
      }
      else
      {
         /* !Comment: No process. */
      }
#if 0
      Icu_17_TimerIp_GetDutyCycleValues(IcuConf_IcuChannel_M_CLK_LS,
                                    &strLocPeriodAndActiveTime);
      udtLocPeriodRaw  = strLocPeriodAndActiveTime.PeriodTime;
      udtLocActiveDurationRaw = strLocPeriodAndActiveTime.ActiveTime;
#endif
      TPPC_u32DrvClkLsPerdRaw = udtLocPeriodRaw;
      TPPC_u32DrvClkLsDutyRaw = udtLocActiveDurationRaw;
      
      if (TPPC_u32DrvClkLsPerdRaw > 0)
      {
         TPPC_f32DrvClkLsDuty = (float32)( (float32)TPPC_u32DrvClkLsDutyRaw / (float32)TPPC_u32DrvClkLsPerdRaw);

         if(TPPC_kbDrvBdClkEnaC)
         {
            if ( (TPPC_f32DrvClkLsDuty < TPPC_f32DrvClkDutyThdLowC) || (TPPC_f32DrvClkLsDuty > TPPC_f32DrvClkDutyThdHighC) )
            {
               FaultDetection(BSW_HW_, DRVCLKFLTLS  , TRUE);
            }
            else
            {
               FaultDetection(BSW_HW_, DRVCLKFLTLS  , FALSE);
            }
         }
         else
         {
            FaultDetection(BSW_HW_, DRVCLKFLTLS  , FALSE);
         }
      }
      else
      {
         /* !Comment: No process. */
      }
   }
#endif
}

static void TPPC_vidGetDutyForMPC(const TPPC_Device * const kpktDev)
{
#if (TPPC_MID_POINT_CHECK_ENABLED == TRUE)
   /* !Comment: Record Duty for middle point diagnose. */
   TPPC_f32PwmDutyPhysUZ = f32DutyU;
   TPPC_f32PwmDutyPhysVZ = f32DutyV;
   TPPC_f32PwmDutyPhysWZ = f32DutyW;
#endif
}

static void TPPC_vidMidPointCheck(const TPPC_Device * const kpktDev)
{
#if (TPPC_MID_POINT_CHECK_ENABLED == TRUE)
   boolean bLocMidPointErrFlg = FALSE;

   /* !Comment: Middle point check. */
   if (TPPC_xMotorMgrVarSet.TPPC_bPwmOnGoingFlg)
   {
      if (TPPC_u8StartMidPotDetCnt < TPPC_ku8PwmMidPotStartDelayC)
      {
         TPPC_u8StartMidPotDetCnt++;
      }
         
      /*TPPC_bPwmMidPointU = (boolean)IOHAL_u16Read_CH_DIO_IN_M_MID_POINT_U_MCU();
      TPPC_bPwmMidPointV = (boolean)IOHAL_u16Read_CH_DIO_IN_M_MID_POINT_V_MCU();
      TPPC_bPwmMidPointW = (boolean)IOHAL_u16Read_CH_DIO_IN_M_MID_POINT_U_MCU();*/
      
      if ( TPPC_bT12ZeroMatchFlg )
      {
         if (TPPC_f32PwmDutyPhysUZ <= TPPC_kf32MidPointDutyLC)
         {
            if (TPPC_bPwmMidPointU)
            {
               bLocMidPointErrFlg = TRUE;
               TPPC_bIgbtHighSideShort = TRUE;
            }
         }

         if (TPPC_f32PwmDutyPhysVZ <= TPPC_kf32MidPointDutyLC)
         {
            if (TPPC_bPwmMidPointV)
            {
               bLocMidPointErrFlg = TRUE;
               TPPC_bIgbtHighSideShort = TRUE;
            }
         }

         if (TPPC_f32PwmDutyPhysWZ <= TPPC_kf32MidPointDutyLC)
         {
            if (TPPC_bPwmMidPointW)
            {
               bLocMidPointErrFlg = TRUE;
               TPPC_bIgbtHighSideShort = TRUE;
            }
         }
      }
      else
      {
         if (TPPC_f32PwmDutyPhysUZ >= TPPC_kf32MidPointDutyHC)
         {
            if (FALSE == TPPC_bPwmMidPointU)
            {
               bLocMidPointErrFlg = TRUE;
               TPPC_bIgbtLowSideShort = TRUE;
            }
         }

         if (TPPC_f32PwmDutyPhysVZ >= TPPC_kf32MidPointDutyHC)
         {
            if (FALSE == TPPC_bPwmMidPointV)
            {
               bLocMidPointErrFlg = TRUE;
               TPPC_bIgbtLowSideShort = TRUE;
            }
         }

         if (TPPC_f32PwmDutyPhysWZ >= TPPC_kf32MidPointDutyHC)
         {
            if (FALSE == TPPC_bPwmMidPointW)
            {
               bLocMidPointErrFlg = TRUE;
               TPPC_bIgbtLowSideShort = TRUE;
            }
         }
      }
   }

   if (TPPC_u8StartMidPotDetCnt >= TPPC_ku8PwmMidPotStartDelayC)
   {
      if (TPPC_f32HighVolPhys >= TPPC_MIDPOINT_DIAG_HV_THRD)
      {
         if (bLocMidPointErrFlg)
         {
            if (TPPC_u16PwmMidPointErrCnt < 0xFFFF)
            {
               TPPC_u16PwmMidPointErrCnt++;
            }
         }
         else
         {
            if (TPPC_u16PwmMidPointErrCnt > 0)
            {
               TPPC_u16PwmMidPointErrCnt--;
            }
         }
      }
   }
#endif
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

