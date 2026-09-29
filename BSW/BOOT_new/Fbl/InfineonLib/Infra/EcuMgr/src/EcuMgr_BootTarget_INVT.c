/*********************************************************************************************************************
*
* Description:     EcuM module implementation 
* FileName:        EcuM_BootTarget.c
* Company:         invt GmbH (www.invt.com)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright invt GmbH 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
UCN1HC          10/18/2020
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "EcuM.h"
#include "EcuMgr_cfg_BootTarget.h"
#include "Os_Port.h"
/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/
static uint8 securityAccessSeed_INVT[ECUMGR_SEED_SIZE_INVT] = {0};

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
Std_ReturnType EcuMgr_GetSeed_INVT(    uint32 seedLen,
                                    uint32 accDataRecSize,		/* PRQA S 3206 */
                                    uint8 *securityAccessDataRecord,	/* PRQA S 3206 */
                                    uint8 *seed)
{
    Std_ReturnType ret = E_NOT_OK;
    uint32 randvalue = GET_SYSTEM_TIMER();	/* PRQA S 0303 */ /* Read the value at Register */
    uint32 index;
    /*Get seed value*/
    if(ECUMGR_SEED_SIZE_INVT == seedLen)
    {
        for(index = 0; index < seedLen; index++)
        {
            securityAccessSeed_INVT[index]    = (uint8)((randvalue >> (index * 8U))) & 0xFFU;
            seed[index]             = securityAccessSeed_INVT[index];
        }
        ret = E_OK;
    }
    else
    {
        /*nothing todo - return E_NOT_OK */
    }
    return ret;
}

Std_ReturnType EcuMgr_CompareKey_INVT(uint32 keyLen, const uint8 *key)
{
   Std_ReturnType ret = E_OK;
   const uint8 u8Coef[4] = {0x1B, 0x22, 0x3E, 0x41};
   uint8  i;
   uint32 u32LocalKey = 0;
   uint8  u8Temp;
   uint8  u8BitHigh = 0;
   uint8  u8BitLow = 0;
   uint8  u8SeedTemp[4];

   /* Extract Seed */ 
   u8SeedTemp[0] = (unsigned char)securityAccessSeed_INVT[0];
   u8SeedTemp[1] = (unsigned char)securityAccessSeed_INVT[1];
   u8SeedTemp[2] = (unsigned char)securityAccessSeed_INVT[2];
   u8SeedTemp[3] = (unsigned char)securityAccessSeed_INVT[3];

   /* Single Byte Opreation */
   for(i = 0; i < 4; i++)
   {
      /* Cycle Right Shift */
      u8Temp = ((u8SeedTemp[i] & 0x07) << 5);
      u8SeedTemp[i] = (u8SeedTemp[i] >> 3) | u8Temp;

      /* Bit Change, Every 2 Bits */
      u8BitHigh = (u8SeedTemp[i] & 0xAA) >> 1;
      u8BitLow = (u8SeedTemp[i] & 0x55) << 1;

      u8SeedTemp[i] = u8BitHigh | u8BitLow;
   }
   
   /* Double Bytes Opreation */
   for(i = 0; i < 2; i++)
   {
      u8Temp = (u8SeedTemp[i * 2] & 0xE0) >> 5;
   
      u8SeedTemp[i * 2] = ((u8SeedTemp[i * 2] & 0x1F) << 3) | ((u8SeedTemp[i * 2 + 1] & 0xE0) >> 5);
      u8SeedTemp[i * 2 + 1] = (u8SeedTemp[i * 2 + 1] << 3) | u8Temp;
   }

   /* XOR Const Val */
   for(i = 0; i < 4; i++)
   {
      u8SeedTemp[i] ^= u8Coef[i];
   }

   /* Reverse Every Bit */
   for(i = 0; i < 4; i++)
   {
      u8SeedTemp[i] ^= 0xFF;
   }

   u32LocalKey = 0 | (u8SeedTemp[0] << 24)
                   | (u8SeedTemp[1] << 16)
                   | (u8SeedTemp[2] << 8)
                   | (u8SeedTemp[3]);
                   

    for(i = 0; i < ECUMGR_KEY_SIZE_INVT; i++)
    {
        if(key[i] != u8SeedTemp[i])
        {
            ret = E_NOT_OK;
            break;
        }
        else
        {
            /*Do nothing*/
        }
    }
 
    return ret;

}
