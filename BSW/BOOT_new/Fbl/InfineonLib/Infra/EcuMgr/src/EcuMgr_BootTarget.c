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
#include "AES128.h"
/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/
#define  CONTINUOUS_RESQUEST_RESPOND_SAME_SEED   TRUE

#if(TRUE == CONTINUOUS_RESQUEST_RESPOND_SAME_SEED)
static boolean GotSeedFlag = FALSE;
static uint8   LastsecurityAccessSeed[ECUMGR_SEED_SIZE] = {0};
#endif
static uint8 securityAccessSeed[ECUMGR_SEED_SIZE] = {0};

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 101] */

/* ??:?????????????? */
static uint32 prng_state = 0x12345678U;       /* PRNG ?? */
static uint32 call_counter = 0;     /* ????? */
static uint32 xorshift32_update(uint32 x);

/* ??:??? Xorshift32 ???? */
static uint32 xorshift32_update(uint32 x)
{
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    return x;
}

Std_ReturnType EcuMgr_GetSeed(    uint32 seedLen,
                                    uint32 accDataRecSize,		/* PRQA S 3206 */
                                    uint8 *securityAccessDataRecord,	/* PRQA S 3206 */
                                    uint8 *seed)
{
   Std_ReturnType ret = E_NOT_OK;
   uint32 randvalue = GET_SYSTEM_TIMER();	/* PRQA S 0303 */ /* Read the value at Register */
   uint32 index;
   uint32 temp_rng;  // ?????
   uint32 byte_idx = 0;

   if(ECUMGR_SEED_SIZE == seedLen)
   {
      /* ?????? */
      call_counter++;
      prng_state ^= randvalue;
      prng_state ^= call_counter;

      // ===================== ????:??16????? =====================
      // ??4?,????4??,??16????
      for(index = 0; index < 4; index++)
      {
          // ?????
          prng_state = xorshift32_update(prng_state);
          temp_rng = prng_state;

          // ??4???
          securityAccessSeed[byte_idx++] = (uint8)(temp_rng >> 0U)  & 0xFFU;
          securityAccessSeed[byte_idx++] = (uint8)(temp_rng >> 8U)  & 0xFFU;
          securityAccessSeed[byte_idx++] = (uint8)(temp_rng >> 16U) & 0xFFU;
          securityAccessSeed[byte_idx++] = (uint8)(temp_rng >> 24U) & 0xFFU;
      }
      // ====================================================================

#if(TRUE == CONTINUOUS_RESQUEST_RESPOND_SAME_SEED)
      for(index = 0; index < seedLen; index++)
      {
         LastsecurityAccessSeed[index] = securityAccessSeed[index];
         if(TRUE == GotSeedFlag)
         {
            seed[index] = LastsecurityAccessSeed[index];
         }
         else
         {
            seed[index] = securityAccessSeed[index];
         }
      }
#else
      for(index = 0; index < seedLen; index++)
      {
         seed[index] = securityAccessSeed[index];
      }
#endif

#if(TRUE == CONTINUOUS_RESQUEST_RESPOND_SAME_SEED)
      GotSeedFlag = TRUE;
#endif
      ret = E_OK;
   }

   return ret;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 102] */
Std_ReturnType EcuMgr_CompareKey(uint32 keyLen, const uint8 *key)
{
{
	Std_ReturnType retValue = E_OK;
	
   const uint8 secure_key[16] = {0x45, 0x11, 0x77, 0x1E, 0x6A, 0xE5, 0x35, 0x77, 0x27, 0xDD, 0xC5, 0x87, 0x3B, 0x36, 0x25, 0xA3};

   uint8 ecu_calc_key[16] = {0};

   UDS27_CalcUnlockKey(securityAccessSeed, secure_key, ecu_calc_key);

   if(UDS27_CheckKey(ecu_calc_key, key) == 1U)
   {
      retValue = E_OK;
   }
   else
   {
      retValue = E_NOT_OK;
   }

	return ( retValue );
}
}
