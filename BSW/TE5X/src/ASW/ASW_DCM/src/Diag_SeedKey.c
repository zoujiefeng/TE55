/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)
 *-----------------------------------------------------------------------------
 * Project :    ETAS Entry Platfrom
 * Component:  ASW_DCM
 * Description: Testcode for ASW_DCM
 * Version         Author:       Date               Update information
 * 1.0             HAD1HC        7-Nov-2018         Create software
 * 1.1             AGT1HC        19-Nov-2021        Update the Banner
 * 1.2             HAD1HC        04-Mar-2021        Update functions for new
 * 													DIAG requirements
 * 1.3             HAD1HC        13-Apr-2021        Update Memmap
 * 1.4             XHA3SGH       06-Aug-2021        Conifgure seed for warning removed
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************/

#include "Std_Types.h"
#include "rte_Type.h"
#include "rte.h"
#include "Dcm_Lcfg_DspUds.h"
#include "IfxStm_reg.h"
#include "UDS_NvM.h"


#define SWC_COMPARE_KEY_FAILED 11
#define CONTINUOUS_RESQUEST_RESPOND_SAME_SEED   TRUE

#define ASW_DCM_START_SEC_CONST_8
#include "ASW_DCM_MemMap.h"
/* Key values for Service 0x27 */
const uint8 DcmKey_L1[4] = {0x11,0x21,0x31,0x41};
const uint8 DcmKey_L2[4] = {0x12,0x22,0x32,0x42};
const uint8 DcmKey_L3[4] = {0x13,0x23,0x33,0x43};
const uint8 DcmKey_L5[4] = {0x14,0x24,0x34,0x44};
const uint8 DcmKey_L49[4] = {0x15,0x25,0x35,0x45};
#define ASW_DCM_STOP_SEC_CONST_8
#include "ASW_DCM_MemMap.h"

#if(TRUE == CONTINUOUS_RESQUEST_RESPOND_SAME_SEED)
static boolean GotSeedFlag = FALSE;
static uint8   LastDcmSeed[4] = {0};
#endif
uint8 DcmSeed[4] = {0x10,0x20,0x30,0x40};
static const uint32 UDS_ku32LocLevel01 = 0xB356A523;

#define ASW_DCM_START_SEC_VAR_8
#include "ASW_DCM_MemMap.h"
static uint8 keyLocal[4] = {0};
#define ASW_DCM_STOP_SEC_VAR_8
#include "ASW_DCM_MemMap.h"

#define ASW_DCM_START_SEC_CODE
#include "ASW_DCM_MemMap.h"
static void  _Acc_UdsDemoCalculateKey(uint8* key)
{
    const uint8 u8Coef[4] = {0x1B, 0x22, 0x3E, 0x41};
    uint8  i;
    /* uint8  u8Key[4]; */
    uint8  u8Temp;
    uint8  u8BitHigh = 0;   
    uint8  u8BitLow = 0;
    uint8  u8SeedTemp[4];

    /* Extract Seed */ 
    u8SeedTemp[0] = DcmSeed[0];
    u8SeedTemp[1] = DcmSeed[1];
    u8SeedTemp[2] = DcmSeed[2];
    u8SeedTemp[3] = DcmSeed[3];
 
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
 
    key[0] = u8SeedTemp[0];
    key[1] = u8SeedTemp[1];
    key[2] = u8SeedTemp[2];
    key[3] = u8SeedTemp[3];
}

FUNC(Std_ReturnType, ASW_DCM_CODE) CompareKey_L1(VAR(uint32,AUTOMATIC) KeyLen_32,P2CONST(uint8, AUTOMATIC, RTE_APPL_DATA) Key,VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) ErrorCode)
{

	Std_ReturnType retValue = RTE_E_OK;
	
	_Acc_UdsDemoCalculateKey(keyLocal);

	if ( ( Key[ 0 ] != keyLocal[ 0 ] ) || ( Key[ 1 ] != keyLocal[ 1 ] )||( Key[ 2 ] != keyLocal[ 2 ] ) || ( Key[ 3 ] != keyLocal[ 3 ] ) )
	{
		retValue = SWC_COMPARE_KEY_FAILED;
	}
	else
   {
#if(TRUE == CONTINUOUS_RESQUEST_RESPOND_SAME_SEED)
      GotSeedFlag = FALSE;
#else
      /* Do nothing. Key is correct. */
#endif
   }

	return ( RTE_E_OK );
}

FUNC(Std_ReturnType, ASW_DCM_CODE) GetSeed_L1(VAR(Dcm_SecLevelType,AUTOMATIC) SecLevel_u8,VAR(uint32,AUTOMATIC) Seedlen_u32,VAR(uint32,AUTOMATIC) AccDataRecsize_u32,P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) SecurityAccessDataRecord,P2VAR(uint8,AUTOMATIC,DCM_INTERN_DATA) Seed,VAR(Dcm_OpStatusType,AUTOMATIC) OpStatus,P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) ErrorCode)
		{
	Std_ReturnType retValue = RTE_E_OK;
   uint32 u32LocalSeedValue;

   u32LocalSeedValue = STM1_TIM0.U;
   u32LocalSeedValue ^= UDS_ku32LocLevel01;
   u32LocalSeedValue = ( u32LocalSeedValue << 7 ) | ( u32LocalSeedValue >> 24 );
#if(TRUE == CONTINUOUS_RESQUEST_RESPOND_SAME_SEED)
   LastDcmSeed[3] = DcmSeed[3];
   LastDcmSeed[2] = DcmSeed[2];
   LastDcmSeed[1] = DcmSeed[1];
   LastDcmSeed[0] = DcmSeed[0];
   if(TRUE == GotSeedFlag)
   {
      *Seed = LastDcmSeed[0];
      *(Seed+1) = LastDcmSeed[1];
      *(Seed+2) = LastDcmSeed[2];
      *(Seed+3) = LastDcmSeed[3];
   }
   else
   {
      DcmSeed[3] = (uint8)(u32LocalSeedValue & 0x000000FF);
      DcmSeed[2] = (uint8)((u32LocalSeedValue & 0x0000FF00) >> 8);
      DcmSeed[1] = (uint8)((u32LocalSeedValue & 0x00FF0000) >> 16);
      DcmSeed[0] = (uint8)((u32LocalSeedValue & 0xFF000000) >> 24);

      *Seed = DcmSeed[0];
      *(Seed+1) = DcmSeed[1];
      *(Seed+2) = DcmSeed[2];
      *(Seed+3) = DcmSeed[3];
      GotSeedFlag = TRUE;
   }
#else
   DcmSeed[3] = (uint8)(u32LocalSeedValue & 0x000000FF);
   DcmSeed[2] = (uint8)((u32LocalSeedValue & 0x0000FF00) >> 8);
   DcmSeed[1] = (uint8)((u32LocalSeedValue & 0x00FF0000) >> 16);
   DcmSeed[0] = (uint8)((u32LocalSeedValue & 0xFF000000) >> 24);

   *Seed = DcmSeed[0];
   *(Seed+1) = DcmSeed[1];
   *(Seed+2) = DcmSeed[2];
   *(Seed+3) = DcmSeed[3];
#endif

   return (retValue);
}

#define ASW_DCM_STOP_SEC_CODE
#include "ASW_DCM_MemMap.h"

