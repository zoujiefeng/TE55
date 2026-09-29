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

#include "bswsrv.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define APP_BT_SHARED_RAM_START_ADDR         0x7010FC00

/* Stay in boot */
#define APP_BT_SHARED_STAYINBOOT_REQ_ADDR    APP_BT_SHARED_RAM_START_ADDR
#define APP_BT_SHARED_STAYINBOOT_REQ_SIZE    0x10u
/* Active swap */
#define APP_BT_SHARED_SWAP_REQ_ADDR          (APP_BT_SHARED_STAYINBOOT_REQ_ADDR + APP_BT_SHARED_STAYINBOOT_REQ_SIZE)
#define APP_BT_SHARED_SWAP_REQ_SIZE          0x10u

/* Seesion Change */
#define APP_BT_SHARED_SESSIONCHANGE_REQ_ADDR (APP_BT_SHARED_SWAP_REQ_ADDR + APP_BT_SHARED_SWAP_REQ_SIZE)
#define APP_BT_SHARED_SESSIONCHANGE_REQ_SIZE 0x10u

/* Req Chan */
#define APP_BT_SHARED_REQCHAN_REQ_ADDR       (APP_BT_SHARED_SESSIONCHANGE_REQ_ADDR + APP_BT_SHARED_SESSIONCHANGE_REQ_SIZE)
#define APP_BT_SHARED_REQCHAN_REQ_SIZE       0x04u

typedef struct APP_ConstBswVerInfo{
   /* External information */
   const uint8 BSW_kau8ExtAddlInfo[8];
   const uint8 BSW_kau8ExtRelsBootVer[8];
   const uint8 BSW_kau8ExtRelsHWVer[4];
   const uint8 BSW_kau8ExtRelsCPLDVer[8];
   const uint8 BSW_kau8ExtRelsFpgaVer[8];
   const uint8 BSW_kau8ExtRelsBswVer[8];
   const uint8 BSW_kau8ExtVehicleType [8];
   const uint8 BSW_kau8ExtProjectId[8];
   const uint8 BSW_kau8ExtCustId[2];
   const uint8 BSW_kau8ExtSplyId[4];

   const uint8 BSW_kau8IntRspCanId[4];
   const uint8 BSW_kau8IntReqCanId[4];
   const uint8 BSW_kau8IntAddlInfo[8];
   const uint8 BSW_kau8IntHwSvnRev[2];
   const uint8 BSW_kau8IntCpldSvnRev[2];
   const uint8 BSW_kau8IntFpgaSvnRev[2];
   const uint8 BSW_kau8IntBootSvnRev[2];
   const uint8 BSW_kau8IntBswSvnRev[2];
   const uint8 BSW_kau8IntBswLibDate[6];
   const uint8 BSW_kau8IntProjectId[8];
   const uint8 BSW_kau8IntProductionLineId[4];
   const uint8 BSW_kau8IntOfflineDate[4];
   
   const uint8 BSW_kau8IntAppLength[4];
}APP_ConstBswVerInfo;


/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
/* Addr: 0x80026A00 */
/* BSW version info.  */
/* Internal information. */
__attribute__((section(".BSW_FIX.CONST_8BIT.23"))) const uint8 BSW_kau8INVTBootVersion[64]        = {"IFL550_DFSY5101_BOOT_MCU_TC387_R_10005"};
__attribute__((section(".BSW_FIX.CONST_8BIT.22"))) const uint8 BSW_kau8BootIntOfflineDate[4]      = {0x20, 0x19, 0x06, 0x19};
__attribute__((section(".BSW_FIX.CONST_8BIT.21"))) const uint8 BSW_kau8BootIntProductionLineId[4] = {0};
__attribute__((section(".BSW_FIX.CONST_8BIT.20"))) const uint8 BSW_kau8BootIntProjectId[8]        = {'P', 'T', '1', '7', '0', '3'};
__attribute__((section(".BSW_FIX.CONST_8BIT.19"))) const uint8 BSW_kau8BootIntBswLibDate[6]       = {0x26, 0x09, 0x29, 0x17, 0x59, 0x12};
__attribute__((section(".BSW_FIX.CONST_8BIT.18"))) const uint8 BSW_kau8BootIntBswSvnRev[2]        = {0x00, 0x04};
__attribute__((section(".BSW_FIX.CONST_8BIT.17"))) const uint8 BSW_kau8BootIntBootSvnRev[2]       = {0x00, 0x05};
__attribute__((section(".BSW_FIX.CONST_8BIT.16"))) const uint8 BSW_kau8BootIntFpgaSvnRev[2]       = {0};
__attribute__((section(".BSW_FIX.CONST_8BIT.15"))) const uint8 BSW_kau8BootIntCpldSvnRev[2]       = {0};
__attribute__((section(".BSW_FIX.CONST_8BIT.14"))) const uint8 BSW_kau8BootIntHwSvnRev[2]         = {0};
__attribute__((section(".BSW_FIX.CONST_8BIT.13"))) const uint8 BSW_kau8BootIntAddlInfo[8]         = {0};
__attribute__((section(".BSW_FIX.CONST_8BIT.12"))) const uint8 BSW_kau8BootIntReqCanId[4]         = {0x00, 0x00, 0x07, 0xE3};
__attribute__((section(".BSW_FIX.CONST_8BIT.11"))) const uint8 BSW_kau8BootIntRspCanId[4]         = {0x00, 0x00, 0x07, 0xEB};

/* External information */
__attribute__((section(".BSW_FIX.CONST_8BIT.10"))) const uint8 BSW_kau8BootExtSplyId[4]           = {'I', 'N', 'V', 'T'};
__attribute__((section(".BSW_FIX.CONST_8BIT.09"))) const uint8 BSW_kau8BootExtCustId[2]           = {0x02};/* geely */
__attribute__((section(".BSW_FIX.CONST_8BIT.08"))) const uint8 BSW_kau8BootExtProjectId[8]        = {'P', 'T', '1', '7', '0', '3'};
__attribute__((section(".BSW_FIX.CONST_8BIT.07"))) const uint8 BSW_kau8BootExtVehicleType [8]     = {'G', 'E', 'E', 'L','Y'};
__attribute__((section(".BSW_FIX.CONST_8BIT.06"))) const uint8 BSW_kau8BootExtRelsBswVer[8]       = {0x01,0x02,0x01,0x02,0x01,0x00};
__attribute__((section(".BSW_FIX.CONST_8BIT.05"))) const uint8 BSW_kau8BootExtRelsFpgaVer[8]      = {0};
__attribute__((section(".BSW_FIX.CONST_8BIT.04"))) const uint8 BSW_kau8BootExtRelsCPLDVer[8]      = {0};
__attribute__((section(".BSW_FIX.CONST_8BIT.03"))) const uint8 BSW_kau8BootExtRelsHWVer[4]        = {0};
__attribute__((section(".BSW_FIX.CONST_8BIT.02"))) const uint8 BSW_kau8BootExtRelsBootVer[8]      = {0x01,0x0E,0x01,0x01,0x01,0x00};
__attribute__((section(".BSW_FIX.CONST_8BIT.01"))) const uint8 BSW_kau8BootExtAddlInfo[8]         = {0};

const uint8 StayInBootRefArray[16] = {"StayInBoot"};
const uint8 ActiveSwapRefArray[16] = {"ActiveSwap"};
const uint8 ExtFromProgRefArray[16] = {"ExtFromProg"};
const uint8 DefFromBootRefArray[16] = {"DefFromBoot"};


volatile APP_ConstBswVerInfo *VerInfoPtr = (APP_ConstBswVerInfo *)0x801f9000;

/* Comment: Startup code clears ram, can not define an array to share data - Zyx */
#if 0
   #if 0
      #pragma noclear
      __attribute__((section(".APP_BT_SHRAED"))) uint8 StayInBootArray[8];
      #pragma clear
   #else
      /* uint8 StayInBootArray[8] __at(0x7010FC00); */
   #endif
#endif

#if 1
uint8 BSW_vidReadBswVerInfo(void)
{
   uint8 u8Date;
   
   u8Date = VerInfoPtr->BSW_kau8IntBswLibDate[0];

   if(u8Date == 1)
   {
      u8Date = 1;
   }
   else
   {
      u8Date = 2;
   }

   return u8Date;
}
#endif

void BSW_vidSetExtFromProgFlag(void)
{
   uint8 u8Index = 0;
   uint8 * ExtFromProgArray = (uint8*)APP_BT_SHARED_SESSIONCHANGE_REQ_ADDR;

   for(u8Index = 0; u8Index < APP_BT_SHARED_SESSIONCHANGE_REQ_SIZE; u8Index++)
   {
      ExtFromProgArray[u8Index] = ExtFromProgRefArray[u8Index];
   }
}

void BSW_vidSetDefFromBootFlag(void)
{
   uint8 u8Index = 0;
   uint8 * DefFromBootArray = (uint8*)APP_BT_SHARED_SESSIONCHANGE_REQ_ADDR;

   for(u8Index = 0; u8Index < APP_BT_SHARED_SESSIONCHANGE_REQ_SIZE; u8Index++)
   {
      DefFromBootArray[u8Index] = DefFromBootRefArray[u8Index];
   }
}

boolean BSW_bCheckStayInBootState(void)
{
   boolean bRetVal = TRUE;
   uint8 u8Index = 0;
   uint8 * StayInBootArray = (uint8*)APP_BT_SHARED_STAYINBOOT_REQ_ADDR;
   
   for(u8Index = 0; u8Index < APP_BT_SHARED_STAYINBOOT_REQ_SIZE; u8Index++)
   {
      if(StayInBootArray[u8Index] != StayInBootRefArray[u8Index])
      {
         bRetVal = FALSE;
         break;
      }
   }

   return bRetVal;
}

void BSW_vidClearStayInBootReq(void)
{
   uint8 u8Index = 0;
   uint8 * StayInBootArray = (uint8*)APP_BT_SHARED_STAYINBOOT_REQ_ADDR;
   
   //u8Index = BSW_vidReadBswVerInfo();
   
   for(u8Index = 0; u8Index < APP_BT_SHARED_STAYINBOOT_REQ_SIZE; u8Index++)
   {
      StayInBootArray[u8Index] = 0;
   }
}

boolean BSW_bCheckSwapReqState(void)
{
   boolean bRetVal = TRUE;
   uint8 u8Index = 0;
   uint8 * ActiveSwapArray = (uint8*)APP_BT_SHARED_SWAP_REQ_ADDR;
   
   for(u8Index = 0; u8Index < APP_BT_SHARED_SWAP_REQ_SIZE; u8Index++)
   {
      if(ActiveSwapArray[u8Index] != ActiveSwapRefArray[u8Index])
      {
         bRetVal = FALSE;
         break;
      }
   }

   return bRetVal;
}

void BSW_vidClearSwapReq(void)
{
   uint8 u8Index = 0;
   uint8 * ActiveSwapArray = (uint8*)APP_BT_SHARED_SWAP_REQ_ADDR;
   
   for(u8Index = 0; u8Index < APP_BT_SHARED_SWAP_REQ_SIZE; u8Index++)
   {
      ActiveSwapArray[u8Index] = 0;
   }
}

uint8 BSW_bCheckChanReqState(void)
{
   /* A total of four bytes. Only one byte is read. */
   uint8 ChanNum = *(uint8*)APP_BT_SHARED_REQCHAN_REQ_ADDR;

   return ChanNum;
}

void BSW_vidGetINVTBootVersion(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   for(u8Index = 0; u8Index < sizeof(BSW_kau8INVTBootVersion); u8Index++)
   {
      pu8Data[u8Index] = BSW_kau8INVTBootVersion[u8Index];
   }
}

void BSW_vidGetBootCompileTime(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   for(u8Index = 0; u8Index < sizeof(BSW_kau8BootIntBswLibDate); u8Index++)
   {
      pu8Data[u8Index] = BSW_kau8BootIntBswLibDate[u8Index];
   }
}

void BSW_vidGetBootReqCanId(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   for(u8Index = 0; u8Index < sizeof(BSW_kau8BootIntReqCanId); u8Index++)
   {
      pu8Data[u8Index] = BSW_kau8BootIntReqCanId[u8Index];
   }
}

void BSW_vidGetBootRspCanId(uint8 *pu8Data)
{
   uint8 u8Index = 0;
   for(u8Index = 0; u8Index < sizeof(BSW_kau8BootIntRspCanId); u8Index++)
   {
      pu8Data[u8Index] = BSW_kau8BootIntRspCanId[u8Index];
   }
}

uint32 BSW_u32GetAppLength(void)
{
   uint32 u32Length;
   uint32 u32Temp;
   uint8 *pu8LengthPtr = VerInfoPtr->BSW_kau8IntAppLength;

   u32Temp = pu8LengthPtr[0];
   u32Length = 0 | (u32Temp << 24);

   u32Temp = pu8LengthPtr[1];
   u32Length |= (u32Temp << 16);
   
   u32Temp = pu8LengthPtr[2];
   u32Length |= (u32Temp << 8);
   
   u32Temp = pu8LengthPtr[3];
   u32Length |= u32Temp;

   return u32Length;
}

/*-------------------------------- end of file -------------------------------*/
