
#include "Adc.h"
#include "VADC.h"


boolean VADC_bConvStartedCore0 = FALSE;
boolean VADC_bConvStartedCore1 = FALSE;
boolean VADC_bConvStartedCore2 = FALSE;
boolean VADC_bConvStartedCore3 = FALSE;
boolean VADC_bSwConvStartCore1 = FALSE;
boolean VADC_bSwConvStartCore3 = FALSE;
uint16 VADC_u16StartCounterCore0 = 0;
uint16 VADC_u16StartCounterCore1 = 0;
uint16 VADC_u16StartCounterCore2 = 0;
uint16 VADC_u16StartCounterCore3 = 0;

uint16 VADC_u16GroupBuffer0[16] = {0};
uint16 VADC_u16GroupBuffer1[16] = {0};
uint16 VADC_u16GroupBuffer2[16] = {0};
uint16 VADC_u16GroupBuffer3[16] = {0};
uint16 VADC_u16GroupBuffer3_1[16] = {0};
uint16 VADC_u16GroupBuffer4[16] = {0};
uint16 VADC_u16GroupBuffer8[16] = {0};
uint16 VADC_u16GroupBuffer8_2[16] = {0};
uint16 VADC_u16GroupBuffer10[16] = {0};
uint16 VADC_u16GroupBuffer11[16] = {0};

#define VADC_START_SEC_CODE
#include "VADC_MemMap.h"

void VADC_vidTreatment(void)
{
   uint32 lCoreId;

   lCoreId = Mcal_GetCpuIndex();
   if(lCoreId == 0)
   {
      if(VADC_bSwConvStartCore1 == FALSE)
      {
         VADC_bSwConvStartCore1 = TRUE;
         Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup_10);
         Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup_11);
      }
      else
      {
         Adc_StartGroupConversionSimple(AdcConf_AdcGroup_AdcGroup_10);
         Adc_StartGroupConversionSimple(AdcConf_AdcGroup_AdcGroup_11);
      }
   }
   else if(lCoreId == 2)
   {
      Adc_StartGroupConversion(AdcConf_AdcGroup_SWGroup_3);
   }
   else if(lCoreId == 3)
   {
      if(VADC_bSwConvStartCore3 == FALSE)
      {
         VADC_bSwConvStartCore3 = TRUE;
         //Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup_4);
         Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup_8);
      }
      else
      {
         //Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup_4);
         Adc_StartGroupConversion(AdcConf_AdcGroup_AdcGroup_8);
      }
   }
}

void VADC_vidMainFunction(void)
{
   uint32 lCoreId;

   lCoreId = Mcal_GetCpuIndex();

   if(lCoreId == 0)
   {
      if(VADC_bConvStartedCore0 == FALSE)
      {
         VADC_u16StartCounterCore0++;
         if(VADC_u16StartCounterCore0 >= 1)
         {
            
            Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup_1, &VADC_u16GroupBuffer1[0]);

            Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup_1);
            Adc_EnableHardwareTrigger(AdcConf_AdcGroup_AdcGroup_1);

            Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup_10, &VADC_u16GroupBuffer10[0]);
            Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup_11, &VADC_u16GroupBuffer11[0]);

            VADC_bConvStartedCore0 = TRUE;
         }
      }
      else
      {
      }
   }
   else if(lCoreId == 1)
   {
      if(VADC_bConvStartedCore1 == FALSE)
      {
         VADC_u16StartCounterCore1++;
         if(VADC_u16StartCounterCore1 >= 1)
         {
            Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup_0, &VADC_u16GroupBuffer0[0]);
            
            Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup_0);
            Adc_EnableHardwareTrigger(AdcConf_AdcGroup_AdcGroup_0);

            Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup_2, &VADC_u16GroupBuffer2[0]);

            Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup_2);
            Adc_EnableHardwareTrigger(AdcConf_AdcGroup_AdcGroup_2);
            
            VADC_bConvStartedCore1 = TRUE;
         }
         else
         {
         }
      }
   }
   else if(lCoreId == 2)
   {
      if(VADC_bConvStartedCore2 == FALSE)
      {
         VADC_u16StartCounterCore2++;
         if(VADC_u16StartCounterCore2 >= 1)
         {
            Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup_3, &VADC_u16GroupBuffer3[0]);
            Adc_SetupResultBuffer(AdcConf_AdcGroup_SWGroup_3, &VADC_u16GroupBuffer3_1[0]);

            Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup_3);
            Adc_EnableHardwareTrigger(AdcConf_AdcGroup_AdcGroup_3);
            
            Adc_EnableGroupNotification(AdcConf_AdcGroup_SWGroup_3);

            VADC_bConvStartedCore2 = TRUE;
         }
      }
      else
      {
      }
   }
   else if(lCoreId == 3)
   {
      if(VADC_bConvStartedCore3 == FALSE)
      {
         VADC_u16StartCounterCore3++;
         if(VADC_u16StartCounterCore3 >= 1)
         {
            
            Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup_8,&VADC_u16GroupBuffer8[0]);
            Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup_8);

            //Adc_SetupResultBuffer(AdcConf_AdcGroup_AdcGroup_4,&VADC_u16GroupBuffer4[0]);
            //Adc_EnableGroupNotification(AdcConf_AdcGroup_AdcGroup_4);

            Adc_SetupResultBuffer(AdcConf_AdcGroup_HwTrigGroup,&VADC_u16GroupBuffer8_2[0]);
            
            Adc_EnableGroupNotification(AdcConf_AdcGroup_HwTrigGroup);
            Adc_EnableHardwareTrigger(AdcConf_AdcGroup_HwTrigGroup);

            VADC_bConvStartedCore3 = TRUE;
         }
      }
      else
      {
      }
   }
}

#define VADC_STOP_SEC_CODE
#include "VADC_MemMap.h"

