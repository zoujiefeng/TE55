/******************************************************************************/
/*                                                                            */
/* !Layer           : CALUSR                                                  */
/*                                                                            */
/* !Module          : CALUSR                                                  */
/* !Description     : CALUSR handler                                          */
/*                                                                            */
/* !File            : CALUSR_L.C                                              */
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
/* 0.1 / CALUSR_vidSchedulerInit                                              */
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
#include "Std_Types.h"
#include "CALUSR_L.h"
#include "CALUSR.h"
#include "CCPUSR_CFG.h"
/* #include "Wdg_Add_On.h" */
#include "IOHAL_Cfg_I.h"
#include "Crc.h"

/******************************************************************************/
/* DEFINES                                                                    */
/******************************************************************************/
#define CALUSR_VALID_LENGTH              (1024)
#define CALUSR_CAL_DNL_ENAMSKA           (0xAAAAAAAA)
#define CALUSR_CAL_DNL_ENAMSKB           (0xBBBBBBBB)
#define CALUSR_CAL_CRC_ADDR              (CCPUSR_CALUSR_START_ADDR_IN_ROM + CCPUSR_CALUSR_SIZE - 4)

/******************************************************************************/
/* DATA DEFINITION                                                            */
/******************************************************************************/
#define CALUSR_START_SEC_VAR_UNSPECIFIED
#include "CALUSR_MemMap.h"

#define CALUSR_STOP_SEC_VAR_UNSPECIFIED
#include "CALUSR_MemMap.h"

/******************************************************************************/
/* Gloable data DECLARATION                                                   */
/******************************************************************************/

/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define CALUSR_START_SEC_CODE
#include "CALUSR_MemMap.h"


/******************************************************************************/
/*                                                                            */
/* !FuncName    : CalUsr_vidInit                                              */
/* !Trigger     : Init                                                        */
/* !Description : This function is launched at the init of the OS             */
/* !Number      : 1                                                           */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                      */
/******************************************************************************/
void CalUsr_vidInit(void)
{
   uint32 u32LocCalUsrCRCAddr;
   uint32* pu32LocDst;

   u32LocCalUsrCRCAddr         = CALUSR_CAL_CRC_ADDR;
   pu32LocDst                         = (uint32*)(u32LocCalUsrCRCAddr);
   CalUsr_u32PODataCRC        = *pu32LocDst;
   CalUsr_u32POCalibDnEnaMskA = CalUsr_ku32CalibUpdEnaMskA;
   CalUsr_u32POCalibDnEnaMskB = CalUsr_ku32CalibUpdEnaMskB;
   CalUsr_u32ChkDataCrc       = 0;
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : CalUsr_bVerifyCalData                                       */
/* !Trigger     : 100ms                                                       */
/* !Description : Check whether all user's calibration data is correct or not */
/* !Number      : 2                                                           */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                      */
/******************************************************************************/
boolean CalUsr_bVerifyCalData(void)
{
   boolean bLocIsCalVerifyOK = FALSE;
   uint32 u32LocChkCRC = 0;
   uint32 u32LocSaveCRC = 0;
   uint32 u32LocCalUsrStartAddr;
   uint32 u32LocCalUsrCRCAddr;
   uint8* pu8LocDst;
   uint32* pu32LocCrc;

   u32LocCalUsrStartAddr = CCPUSR_CALUSR_START_ADDR_IN_ROM;
   pu8LocDst             = (uint8*)u32LocCalUsrStartAddr;

   if (  (CALUSR_CAL_DNL_ENAMSKA == CalUsr_u32POCalibDnEnaMskA)
      && (CALUSR_CAL_DNL_ENAMSKB == CalUsr_u32POCalibDnEnaMskB))
   {
      if (CCPUSR_CALUSR_SIZE > (CALUSR_VALID_LENGTH + 2))
      {
         /* Wdg_vidRefreshWatchdog(); */
         u32LocChkCRC         = Crc_CalculateCRC32( pu8LocDst, CALUSR_VALID_LENGTH, 0xFFFFFFFFU, TRUE);
         CalUsr_u32ChkDataCrc = u32LocChkCRC;
         
         u32LocCalUsrCRCAddr   = CALUSR_CAL_CRC_ADDR;
         pu32LocCrc                  = (uint32*)(u32LocCalUsrCRCAddr);
         u32LocSaveCRC           = *pu32LocCrc;

         if (0xFFFFFFFF != u32LocChkCRC)
         {
            if (u32LocChkCRC == u32LocSaveCRC)
            {
               bLocIsCalVerifyOK = TRUE;
            }
            else
            {
               bLocIsCalVerifyOK = FALSE;
            }
         }
         else
         {
            bLocIsCalVerifyOK = FALSE;
         }
      }
      else
      {
         bLocIsCalVerifyOK = FALSE;
      }
   }
   else
   {
      bLocIsCalVerifyOK = FALSE;
   }
   
   return bLocIsCalVerifyOK;
}

/******************************************************************************/
/*                                                                            */
/* !FuncName    : CALUsr_bIsCalDownldEnabled                                  */
/* !Trigger     :                                                             */
/* !Description : Monitor user's Calibration data                             */
/* !Number      : 4                                                           */
/* !Reference   : NONE                                                        */
/*                                                                            */
/******************************************************************************/
/* !LastAuthor  : Daniel                                                      */
/******************************************************************************/
boolean CALUsr_bIsCalDownldEnabled(void)
{
   boolean bLocIsDnEna;


   if (  (CALUSR_CAL_DNL_ENAMSKA == CalUsr_ku32CalibUpdEnaMskA)
      && (CALUSR_CAL_DNL_ENAMSKB == CalUsr_ku32CalibUpdEnaMskB))
   {
      bLocIsDnEna = TRUE;
   }
   else
   {
      bLocIsDnEna = FALSE;
   }
   CalUsr_bIsCalibUpdEna = bLocIsDnEna;

   return bLocIsDnEna;
}

#define CALUSR_STOP_SEC_CODE
#include "CALUSR_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
