/*
 *                   ___====-_  _-====___
 *             _--^^^#####//      \\#####^^^--_
 *          _-^##########// (    ) \\##########^-_
 *         -############//  |\^^/|  \\############-
 *       _/############//   (@::@)   \############\_
 *      /#############((     \\//     ))#############\
 *     -###############\\    (oo)    //###############-
 *    -#################\\  / VV \  //#################-
 *   -###################\\/      \//###################-
 *  _#/|##########/\######(   /\   )######/\##########|\#_
 *  |/ |#/\#/\#/\/  \#/\##\  |  |  /##/\#/  \/\#/\#/\#| \|
 *  `  |/  V  V  `   V  \#\| |  | |/#/  V   '  V  V  \|  '
 *     `   `  `      `   / | |  | | \   '      '  '   '
 *                      (  | |  | |  )
 *                     __\ | |  | | /__
 *                    (vvv(VVV)(VVV)vvv)
 * 
 *      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * 
 *                神兽保佑            永无BUG
 */

/******************************************************************************/
/*                                                                            */
/* !Layer           : BSW                                                     */
/*                                                                            */
/* !Module          : BSW                                                     */
/* !Description     : BSW initialization                                      */
/*                                                                            */
/* !File            : BSWSRV.C                                                */
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
/* 1   / BSW_vidSetStayInBootReq                                              */
/* 2   / BSW_vidGetBootCompileTime                                            */
/* 3   / BSW_vidGetBootReqCanId                                               */
/* 4   / BSW_vidGetBootRspCanId                                               */
/* 5   / BSW_vidGetAppReqCanId                                                */
/* 6   / BSW_vidGetAppRspCanId                                                */
/* 7   / BSW_vidCCPReInitCheck10ms                                            */
/******************************************************************************/
/* SVN Information                                                            */
/* $Archive::                                                                $*/
/* $Revision::             $$Author::           $$Date::                     $*/
/******************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 ******************************************************************************/
#include "HtxTLF35584.h"
#include "Pwm_17_GtmCcu6.h" 
#include "CANSM.h"
#include "FBL_DataMPrvCfg.h"

#include "BSW.h"
#include "BSW_L.h"
#include "bswsrv.h"
#include "iohal.h"
#include "CCP.h"
#include "CCU6.h"
#include "GCCU6.h"
#include "FAIL.h"
#include "DSM.h"
#include "Crc.h"
#include "UcbSwap.h"
#include "EAS.h"
#include "UDS_DidDataUpdate.h"
#include "UDS_DidTypes.h"
#include "MAIN_FFUpdate.h"
#include "CDD_Types.h"
#include "FR_System.h"
#include "AB_DID_Shared.h"

#include "CAN01_DEF.h"
#include "CAN02_DEF.h"
#include "CAN03_DEF.h"
#include "MAIN_L.h"
#include "MAIN_Cfg.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
/* VSI ready check timeout minimal value : 8 * 20 = 160ms */
#define BSW_VSI_RDY_CHK_TIM_MIN    ((uint16)8)
/* VSI ready check timeout max value: 30*20 = 600ms */
#define BSW_VSI_RDY_CHK_TIM_MAX    ((uint16)30)

/* !Comment: MAIN MSG SELF CHECK STATUS DEFINE. */
#define BSW_MSG_SELFCHKSTS_NOERROR       ((uint8)0)
#define BSW_MSG_SELFCHKSTS_ERROR         ((uint8)1)
#define BSW_MSG_SELFCHKSTS_RESRV         ((uint8)2)
#define BSW_MSG_SELFCHKSTS_INVALID       ((uint8)3)

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
/* XXXX:Customer Code .Zhizi/JILI....... */
const uint8 BSW_kau8INVTBSWVersion[64]        = {"IFL550_DFSY5101_BSW_MGAOCU_TC387_R_10011"};

/* BSW version info.  */
#define BSW_VER_START_SEC_VERSION_BSW_UNSPECIFIED
#include "BSW_VER_MemMap.h"
const uint8 BSW_kau8IntAppLength[4]        = {0x00, 0x2A, 0x80, 0x00};

/* Internal information. */
const uint8 BSW_kau8IntOfflineDate[4]      = {0x20, 0x19, 0x06, 0x19};
const uint8 BSW_kau8IntProductionLineId[4] = {0};
const uint8 BSW_kau8IntProjectId[8]        = {'4', 'H', 'D', '-', 'P'};
const uint8 BSW_kau8IntBswLibDate[6]       = {0x26, 0x09, 0x28, 0x13, 0x32, 0x35};
const uint8 BSW_kau8IntBswSvnRev[2]        = {0x00, 0x04};
const uint8 BSW_kau8IntBootSvnRev[2]       = {0x00, 0x05};
const uint8 BSW_kau8IntFpgaSvnRev[2]       = {0};
const uint8 BSW_kau8IntCpldSvnRev[2]       = {0};
const uint8 BSW_kau8IntHwSvnRev[2]         = {0};
const uint8 BSW_kau8IntAddlInfo[8]         = {0};
const uint8 BSW_kau8IntReqCanId[4]         = {0x00, 0x00, 0x07, 0xE3};
const uint8 BSW_kau8IntRspCanId[4]         = {0x00, 0x00, 0x07, 0xEB};

/* External information */
const uint8 BSW_kau8ExtSplyId[4]           = {'I', 'N', 'V', 'T'};
const uint8 BSW_kau8ExtCustId[2]           = {0x02};/* geely */
const uint8 BSW_kau8ExtProjectId[8]        = {'P', 'T', '1', '7', '0', '3'};
const uint8 BSW_kau8ExtVehicleType [8]     = {'G', 'E', 'E', 'L','Y'};
const uint8 BSW_kau8ExtRelsBswVer[8]       = {0x01,0x02,0x01,0x02,0x01,0x00};
const uint8 BSW_kau8ExtRelsFpgaVer[8]      = {0};
const uint8 BSW_kau8ExtRelsCPLDVer[8]      = {0};
const uint8 BSW_kau8ExtRelsHWVer[4]        = {0};
const uint8 BSW_kau8ExtRelsBootVer[8]      = {0x01,0x0E,0x01,0x01,0x01,0x00};
const uint8 BSW_kau8ExtAddlInfo[8]         = {0};

#define BSW_VER_STOP_SEC_VERSION_BSW_UNSPECIFIED
#include "BSW_VER_MemMap.h"

/* Boot version info.  */
#define BSW_BOOT_VER_START_SEC_VERSION_BSW_UNSPECIFIED
#include "BSW_VER_MemMap.h"
/* Boot Internal information. */
const uint8 BSW_kau8INVTBootVersion[64]        = {0};
const uint8 BSW_kau8BootIntOfflineDate[4]      = {0};
const uint8 BSW_kau8BootIntProductionLineId[4] = {0};
const uint8 BSW_kau8BootIntProjectId[8]        = {0};
const uint8 BSW_kau8BootIntBswLibDate[6]       = {0};
const uint8 BSW_kau8BootIntBswSvnRev[2]        = {0};
const uint8 BSW_kau8BootIntBootSvnRev[2]       = {0};
const uint8 BSW_kau8BootIntFpgaSvnRev[2]       = {0};
const uint8 BSW_kau8BootIntCpldSvnRev[2]       = {0};
const uint8 BSW_kau8BootIntHwSvnRev[2]         = {0};
const uint8 BSW_kau8BootIntAddlInfo[8]         = {0};
const uint8 BSW_kau8BootIntReqCanId[4]         = {0};
const uint8 BSW_kau8BootIntRspCanId[4]         = {0};

/* Boot External information */
const uint8 BSW_kau8BootExtSplyId[4]           = {0};
const uint8 BSW_kau8BootExtCustId[2]           = {0};
const uint8 BSW_kau8BootExtProjectId[8]        = {0};
const uint8 BSW_kau8BootExtVehicleType [8]     = {0};
const uint8 BSW_kau8BootExtRelsBswVer[8]       = {0};
const uint8 BSW_kau8BootExtRelsFpgaVer[8]      = {0};
const uint8 BSW_kau8BootExtRelsCPLDVer[8]      = {0};
const uint8 BSW_kau8BootExtRelsHWVer[4]        = {0};
const uint8 BSW_kau8BootExtRelsBootVer[8]      = {0};
const uint8 BSW_kau8BootExtAddlInfo[8]         = {0};

#define BSW_BOOT_VER_STOP_SEC_VERSION_BSW_UNSPECIFIED
#include "BSW_VER_MemMap.h"

/* Stay In Boot */
const uint8 StayInBootRefArray[16]  = {"StayInBoot"};
const uint8 ExtFromProgRefArray[16] = {"ExtFromProg"};
const uint8 DefFromBootRefArray[16] = {"DefFromBoot"};
const uint8 ActiveSwapRefArray[16]  = {"ActiveSwap"};


__attribute__((section(".APP_BT_SHRAED04"))) uint8 BSW_au8ReqChan[4] = {0};
__attribute__((section(".APP_BT_SHRAED03"))) uint8 BSW_au8SessionChange[16] = {0};
__attribute__((section(".APP_BT_SHRAED02"))) uint8 BSW_au8ActiveSwap[16] = {0};
__attribute__((section(".APP_BT_SHRAED01"))) uint8 BSW_au8StayInBoot[16] = {0};

static void BSW_vidPwrOnWaitVsiRdy(void) ;
static void BSW_vidCCPReInitCheck10ms(void) ;

boolean BSW_bCheckExtFromProgState(void)
{
   boolean bRetVal = TRUE;
   uint8 u8Index = 0;
   
   for(u8Index = 0; u8Index < sizeof(ExtFromProgRefArray); u8Index++)
   {
      if(BSW_au8SessionChange[u8Index] != ExtFromProgRefArray[u8Index])
      {
         bRetVal = FALSE;
         break;
      }
   }

   return bRetVal;
}

void BSW_vidClearExtFromProgState(void)
{
   uint8 u8Index = 0;
   
   for(u8Index = 0; u8Index < sizeof(BSW_au8SessionChange); u8Index++)
   {
      BSW_au8SessionChange[u8Index] = 0;
   }
}

boolean BSW_bCheckDefFromBootState(void)
{
   boolean bRetVal = TRUE;
   uint8 u8Index = 0;
   
   for(u8Index = 0; u8Index < sizeof(DefFromBootRefArray); u8Index++)
   {
      if(BSW_au8SessionChange[u8Index] != DefFromBootRefArray[u8Index])
      {
         bRetVal = FALSE;
         break;
      }
   }

   return bRetVal;
}

void BSW_vidClearDefFromBootState(void)
{
   uint8 u8Index = 0;
   
   for(u8Index = 0; u8Index < sizeof(BSW_au8SessionChange); u8Index++)
   {
      BSW_au8SessionChange[u8Index] = 0;
   }
}

void BSW_vidSetStayInBootReq(void)
{
   uint8 u8Index = 0;
   
   for(u8Index = 0; u8Index < sizeof(BSW_au8StayInBoot); u8Index++)
   {
      BSW_au8StayInBoot[u8Index] = StayInBootRefArray[u8Index];
   }
}

void BSW_vidSetActiveSwapReq(void)
{
   uint8 u8Index = 0;
   
   for(u8Index = 0; u8Index < sizeof(BSW_au8ActiveSwap); u8Index++)
   {
      BSW_au8ActiveSwap[u8Index] = ActiveSwapRefArray[u8Index];
   }
}

/**********************************************************************
 * Function name    :  BSW_vidGetBootCompileTime
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/03/04	     V1.0	     Zyx	       Create
 ***********************************************************************/
__attribute__ ((optimize("O0"))) void BSW_vidGetINVTBootVersion(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   const uint8* pku8DataPtr = &BSW_kau8INVTBootVersion[0];

   for(u8Index = 0; u8Index < sizeof(BSW_kau8INVTBootVersion); u8Index++)
   {
      pu8Data[u8Index] = pku8DataPtr[u8Index];
   }
}

/**********************************************************************
 * Function name    :  BSW_vidGetBootCompileTime
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/03/04	     V1.0	     Zyx	       Create
 ***********************************************************************/
__attribute__ ((optimize("O0"))) void BSW_vidGetBootCompileTime(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   const uint8* pku8DataPtr = &BSW_kau8BootIntBswLibDate[0];

   for(u8Index = 0; u8Index < sizeof(BSW_kau8BootIntBswLibDate); u8Index++)
   {
      pu8Data[u8Index] = pku8DataPtr[u8Index];
   }
}

/**********************************************************************
 * Function name    :  BSW_vidGetBootReqCanId
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/03/04	     V1.0	     Zyx	       Create
 ***********************************************************************/
__attribute__ ((optimize("O0"))) void BSW_vidGetBootReqCanId(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   const uint8* pku8DataPtr = &BSW_kau8BootIntReqCanId[0];

   for(u8Index = 0; u8Index < sizeof(BSW_kau8BootIntReqCanId); u8Index++)
   {
      pu8Data[u8Index] = pku8DataPtr[u8Index];
   }
}

/**********************************************************************
 * Function name    :  BSW_vidGetBootRspCanId
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/03/04	     V1.0	     Zyx	       Create
 ***********************************************************************/
__attribute__ ((optimize("O0"))) void BSW_vidGetBootRspCanId(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   const uint8* pku8DataPtr = &BSW_kau8BootIntRspCanId[0];

   for(u8Index = 0; u8Index < sizeof(BSW_kau8BootIntRspCanId); u8Index++)
   {
      pu8Data[u8Index] = pku8DataPtr[u8Index];
   }
}

/**********************************************************************
 * Function name    :  BSW_vidGetAppReqCanId
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/03/04	     V1.0	     Zyx	       Create
 ***********************************************************************/
__attribute__ ((optimize("O0"))) void BSW_vidGetAppReqCanId(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   const uint8* pku8DataPtr = &BSW_kau8IntReqCanId[0];

   for(u8Index = 0; u8Index < sizeof(BSW_kau8IntReqCanId); u8Index++)
   {
      pu8Data[u8Index] = pku8DataPtr[u8Index];
   }
}

/**********************************************************************
 * Function name    :  BSW_vidGetAppRspCanId
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/03/04	     V1.0	     Zyx	       Create
 ***********************************************************************/
__attribute__ ((optimize("O0"))) void BSW_vidGetAppRspCanId(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   const uint8* pku8DataPtr = &BSW_kau8IntRspCanId[0];

   for(u8Index = 0; u8Index < sizeof(BSW_kau8IntRspCanId); u8Index++)
   {
      pu8Data[u8Index] = pku8DataPtr[u8Index];
   }
}

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"
/******************************************************************************/
/*                                                                            */
/* !FuncName    : BSW_vidInit                                                 */
/* !Trigger     : Init                                                        */
/* !Description :                                                             */
/* !Number      : 1                                                           */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                             */
/******************************************************************************/
void BSW_vidInit(void)
{
   Swap_Init();

   CAN01_vidInit();
   CAN02_vidInit();
   CAN03_vidInit();

   J1939_vidDM1_Periodic_Send_Ctr_Func( _MAIN_J1939_DM1_NOERR_TX_SW_ ) ;
   
/*----------------------------------------------------------------------------*/
/* VSI Init                                                                   */
/*----------------------------------------------------------------------------*/
   //BSW_vidInitVSICounters();
   BSW_u32VSICounterCkreq     = 0;
   GBSW_u32VSICounterCkreq    = 0;
   ABSW_u32VSICounterCkreq    = 0;
   OBSW_u32VSICounterCkreq    = 0;

/*----------------------------------------------------------------------------*/
/* Busoff Init                                                                */
/*----------------------------------------------------------------------------*/
   BSW_u8CAN0BusOffCounter = 0;
   BSW_u8CAN1BusOffCounter = 0;
   BSW_u8CAN2BusOffCounter = 0;
   BSW_u8CAN3BusOffCounter = 0;

   BSW_bComIsNormalFlg = 0;
   BSW_bVsiReadySts           = FALSE;
   BSW_u8SelfChkErr           = BSW_MSG_SELFCHKSTS_INVALID;
   BSW_u16VsiReadyDelay       = 0;
   BSW_u16SelfChkDelay        = 0;
   BSW_bOCDataNotRation       = FALSE;
   GBSW_bOCDataNotRation      = FALSE;
/*----------------------------------------------------------------------------*/
   BSW_u16RawVolt15VRdc      = 0;
   BSW_u16RawVolP5VREF       = 0;
   BSW_u16RawVolP5VHS        = 0;
   BSW_u16RawVolP5VLS        = 0;
   BSW_u16RawVolP5VBT        = 0;
   BSW_u16RawVolP5VCOM       = 0;
   BSW_u16RawVolP9VMulti     = 0;
   BSW_bMKeyOnStatus         = FALSE;
   /* Program flow monitor variable init */
   BSW_u8ProgFlowSeed01     = HTXWDGIF_SAFEWDG_SEED_NOTVALID;
   BSW_bProgFlowNewCycFlg01 = FALSE;
   BSW_bProgFlowEnd01       = FALSE;
}

/**
 * @FuncName: BSW_vidReadAllCallback
 * @Description:  Used to initialize the NVM data that needs to be written
 * @Author: Wx
 * @Date: 2026-06-18 15:06:47
 * @LastEditTime: 
 */
void BSW_vidReadAllCallback(void)
{
   AB_vidSharedDidInitFunc() ;
}

/**
 * @FuncName: BSW_vidUpdata_SysTime_Func
 * @Description:Update system operation time  
 * @Author: Wx
 * @Date: 2026-05-31 13:05:42
 * @LastEditTime: 
 */
static void BSW_vidUpdata_SysTime_Func(void)
{
   MAIN_vidGetSystemRunTime() ;    // Real-time update of system operation time - 2026-5-31 Wx
}

/**
 * @FuncName: BSW_vidUpdata_DID_Data_Func
 * @Description:    Update the dynamic data of BSW-DID
 * @Author: Wx
 * @Date: 2026-05-31 13:06:27
 * @LastEditTime: 
 */
static void BSW_vidUpdata_DID_Data_Func(void)
{
   /* For updating dynamic data DID at the underlying level - 2026/6/10 Wx*/
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : BSW_vidCCPReInitCheck10ms                                   */
/* !Trigger     : 10ms                                                        */
/* !Description : This function is launched at the 10msTask of the Core0      */
/* !Number      : 2                                                           */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  :                                                     */
/******************************************************************************/
static void BSW_vidCCPReInitCheck10ms(void)
{
   /* Glable observed variable periodic reflash */
   BSW_u8CAN0BusOffCounter = CANSM_GetBusoffCnt(BSW_CANNODE0_e);
   BSW_u8CAN1BusOffCounter = CANSM_GetBusoffCnt(BSW_CANNODE1_e);
   BSW_u8CAN2BusOffCounter = CANSM_GetBusoffCnt(BSW_CANNODE2_e);
   BSW_u8CAN3BusOffCounter = CANSM_GetBusoffCnt(BSW_CANNODE3_e);
   BSW_u16RawVolP5VBT      = IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE();
   BSW_u16RawVolP5VCOM     = IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE();
   BSW_u16RawVolP5VREF     = IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF();
   BSW_u16RawVolt15VRdc    = IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC();
   BSW_u16RawVolP5VLS      = IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE();
   BSW_u16RawVolP5VHS      = IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE();
   // BSW_u16RawVolP9VMulti   = IOHAL_u16Read_CH_ADC_IN_AN_PSUP_P9V_MULTI();
}

/*************************************************************************
*
* !Runnable    : BSW_vidPwrOnWaitVsiRdy 
* !Trigger       : 
* !Description : Power on check delay
* 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
static void BSW_vidPwrOnWaitVsiRdy(void)
{
   uint8 u8LocFaultLevel_MCU;
   uint8 u8LocFaultLevel_GCU;
   uint16 u16VsiRdyChkTimout;

   if(FALSE == BSW_bVsiReadySts)
   {               
      if(BSW_ku16VSIRdyChkTimoutC > BSW_VSI_RDY_CHK_TIM_MAX)
      {
         u16VsiRdyChkTimout = BSW_VSI_RDY_CHK_TIM_MAX;
      }
      else if(BSW_ku16VSIRdyChkTimoutC < BSW_VSI_RDY_CHK_TIM_MIN)
      {
         u16VsiRdyChkTimout = BSW_VSI_RDY_CHK_TIM_MIN;
      }
      else
      {
         u16VsiRdyChkTimout = BSW_ku16VSIRdyChkTimoutC;
      }
      u16VsiRdyChkTimout <<= 1;
      
      if (BSW_u16VsiReadyDelay < u16VsiRdyChkTimout)
      {
         BSW_u16VsiReadyDelay++;
      }
      else
      {
         /* !Comment : Enable PWM Trap function. */
         CCU6_vidEnaTrapPinFunc();
         GCCU6_vidEnaTrapPinFunc();
         /* !Comment: Start APP fault detection. */
         FAIL_vidEnableEmbFltCheck();

         BSW_bVsiReadySts = TRUE;
      }
   }
   else
   {
      if (BSW_u16SelfChkDelay < 5)
      {
         BSW_u16SelfChkDelay++;
         
         u8LocFaultLevel_MCU = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_MCU);
         u8LocFaultLevel_GCU = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_GCU);
         
         if((u8LocFaultLevel_MCU >= DSM_FAULT_LEVEL_EMRG_STOP) 
         || (u8LocFaultLevel_GCU >= DSM_FAULT_LEVEL_EMRG_STOP))
         {
            BSW_u8SelfChkErr = BSW_MSG_SELFCHKSTS_ERROR;
         }
         else
         {
            BSW_u8SelfChkErr = BSW_MSG_SELFCHKSTS_NOERROR;
         }
      }
      else
      {
         /* !Comment: No process. */
      }
   }
}

/**
 * @FuncName: BSW_vid1ms_Func
 * @Description:  BSW 1ms Preiod Func
 * @Author: Wx
 * @Date: 2026-05-31 13:07:14
 * @LastEditTime: 
 */
void BSW_vidCORE0_1ms_Head_Func(void)
{
   Stp_vidCore0Runable1ms();
   Icu_vidGetDutyCycle();
   ComHal_vidMsgMainfunction();
   BSW_vidUpdata_SysTime_Func();

   if (MAIN_HARDBenchOnC != 0)
   {
      HARD_vidIoTestIO();
      CCU6_vidSetPwmHlDuty(MAIN_f32PWMDutyUPhys, MAIN_f32PWMDutyVPhys, MAIN_f32PWMDutyWPhys);
   }
}

/**
 * @FuncName: BSW_vidCORE0_1ms_Tail_Func
 * @Description:  BSW 1ms Preiod Tail Func
 * @Author: Wx
 * @Date: 2026-08-11 17:00:42
 * @LastEditTime: 
 */
void BSW_vidCORE0_1ms_Tail_Func(void)
{
   CCU6_vidMotorStateMng();
   FAIL_vidFailDetection_1ms();
   FR_vidEcuMainHandler(eFR_MGTCU_INDEX, 1000);
   FR_vidMainFunction();
   DFM_vidMainFunction();
}


/**
 * @FuncName: BSW_vidCORE0_10ms_Head_Func
 * @Description:  BSW 10ms Preiod Head Func
 * @Author: Wx
 * @Date: 2026-05-31 13:07:50
 * @LastEditTime: 
 */
void BSW_vidCORE0_10ms_Head_Func(void)
{
   VADC_vidMainFunction();
   BSW_vidPwrOnWaitVsiRdy() ;
   BSW_vidUpdata_DID_Data_Func() ;

   if (MAIN_HARDBenchOnC != 0)
   {
      HARD_vidModManager();
   }
}

/**
 * @FuncName: BSW_vidCORE0_10ms_Tail_Func
 * @Description:  BSW 10ms Preiod Tail Func
 * @Author: Wx
 * @Date: 2026-08-11 17:04:01
 * @LastEditTime: 
 */
void BSW_vidCORE0_10ms_Tail_Func(void)
{
   FAIL_vidFailDetection_10ms();
   BSW_vidCCPReInitCheck10ms();
   FR_vidEcuMainHandler(eFR_MGTCU_INDEX, 10000);
}

/**
 * @FuncName: BSW_vidCORE0_100ms_Func
 * @Description:  BSW 100ms Preiod Func
 * @Author: Wx
 * @Date: 2026-06-10 15:16:58
 * @LastEditTime: 
 */
void BSW_vidCORE0_100ms_Func(void)
{
   /* CCP calibration function state machine */
   CCPUSR_vidMainFunction();
   /* 100ms DTC fault detection */   
   FAIL_vidFailDetection_100ms();
}

/**
 * @FuncName: BSW_vidCORE1_1ms_Func
 * @Description:  BSW 1ms Preiod Func
 * @Author: Wx
 * @Date: 2026-06-10 15:22:26
 * @LastEditTime: 
 */
void BSW_vidCORE1_1ms_Func(void)
{
   Stp_vidCore1Runable1ms();
}

/**
 * @FuncName: BSW_vidCORE1_10ms_Func
 * @Description:  BSW 10ms Preiod Func
 * @Author: Wx
 * @Date: 2026-06-10 15:24:18
 * @LastEditTime: 
 */
void BSW_vidCORE1_10ms_Func(void)
{
   VADC_vidMainFunction();
}

/*****************************************************************************
*
* !Runnable    : BSW_bGetBswReadySts 
* !Trigger       : 
* !Description : Read Bsw Power on check finish flag.
* 
******************************************************************************
* !LastAuthor  : JLIU
******************************************************************************/
boolean BSW_bGetBswReadySts(void)
{   
   return BSW_bVsiReadySts;
}

/*****************************************************************************
*
* !Runnable    : BSW_u8GetSelfChkErrSts 
* !Trigger       : 
* !Description : Read power on self check error status.
* 
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
uint8 BSW_u8GetSelfChkErrSts(void)
{
   return BSW_u8SelfChkErr;
}

/******************************************************************************
*  
* !FuncName    : BSW_vidSetOcDataNotRatFlg  
* !Description : 
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void BSW_vidSetOcDataNotRatFlg(const boolean bOcDataNotRation)
{
   BSW_bOCDataNotRation = bOcDataNotRation;
}

void GBSW_vidSetOcDataNotRatFlg(const boolean bOcDataNotRation)
{
   GBSW_bOCDataNotRation = bOcDataNotRation;
}

/******************************************************************************
*  
* !FuncName    : BSW_vidProgFlowMon01
* !Description : Program flow monitor of sequence 01
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void BSW_vidProgFlowMon01(const uint32 u32TstSignature, const boolean bLastSignFlg)
{
   /* Get seed from watchdog, first core to request, will set it */
   if (BSW_u8ProgFlowSeed01 == HTXWDGIF_SAFEWDG_SEED_NOTVALID)
   {
      BSW_bProgFlowNewCycFlg01 = FALSE;
      BSW_bProgFlowEnd01 = FALSE;
   }
   else
   {
      if (FALSE == BSW_bProgFlowEnd01)
      {
         if (FALSE == BSW_bProgFlowNewCycFlg01)
         {
            BSW_bProgFlowNewCycFlg01 = TRUE;
            BSW_u32ProgFlowSign01 = CRC32(0, (uint32)BSW_u8ProgFlowSeed01);
            BSW_u32ProgFlowSign01 = CRC32(BSW_u32ProgFlowSign01, u32TstSignature);
         }
         else
         {
            BSW_u32ProgFlowSign01 = CRC32(BSW_u32ProgFlowSign01, u32TstSignature);
         }
      }

      if (bLastSignFlg)
      {
         BSW_bProgFlowEnd01 = TRUE;
      }
   }
}

/******************************************************************************
*  
* !FuncName    : BSW_u32GetProgFlowSign01
* !Description : Get Program flow monitor sequence 01 signature result
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
uint32 BSW_u32GetProgFlowSign01(void)
{
   return BSW_u32ProgFlowSign01;
}

/******************************************************************************
*  
* !FuncName    : BSW_vidSetProgFlowSeed
* !Description : Set Program flow monitor seed
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void BSW_vidSetProgFlowSeed(const uint8 u8Seed)
{
   BSW_u8ProgFlowSeed01 = u8Seed;
}

/******************************************************************************
*  
* !FuncName    : BSW_bComIsNormal
* !Description : 
* 
* !Task: Any Task
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
boolean BSW_bComIsNormal(void)
{
   return BSW_bComIsNormalFlg;
}

/******************************************************************************
*  
* !FuncName    : BSW_vidClearComNormalFlag
* !Description : 
* 
* !Task: Any Task
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
void BSW_vidClearComNormalFlag(void)
{
   BSW_bComIsNormalFlg = 0;
}

void BSW_vidSetOCPThreshold(uint8 u8Index, float32 f32Duty)
{
   switch(u8Index)
   {
      case 0:
      {
         Pwm_17_GtmCcu6_SetDutyCycle(Pwm_17_GtmCcu6Conf_PwmChannel_M_CURRENT_OCP_MCU1, (f32Duty * 32768u));
         break;
      }
      case 1:
      {
         Pwm_17_GtmCcu6_SetDutyCycle(Pwm_17_GtmCcu6Conf_PwmChannel_M_CURRENT_OCP_MCU2, (f32Duty * 32768u));
         break;
      }
      default:
      {
         break;
      }
   }
}

void BSW_vidSetChanReqState(uint8 Chan)
{
   BSW_au8ReqChan[0] = Chan;
}

/**
 * @FuncName: BSW_bGetProgCondition
 * @Description: Obtain the programming condition status
 * @Author: Wx
 * @Date: 2026-07-20 15:39:06
 * @LastEditTime: 
 */
boolean BSW_bGetProgCondition( void )
{
    boolean Ret = TRUE ;
    boolean Sta1 = FALSE ;
    boolean Sta2 = FALSE ;

    Sta1 = MAIN_vidGetProgCondition() ;
    Sta2 = GMAIN_vidGetProgCondition() ;

    if( (Sta1 == FALSE) || (Sta2 == FALSE) )
    {
        Ret = FALSE ;
    }

    return Ret ;
}


#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
