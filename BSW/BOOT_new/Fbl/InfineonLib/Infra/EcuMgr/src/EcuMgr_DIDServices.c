/*********************************************************************************************************************
*
* Description:     DID services in ECU
* FileName:        EcuMgr_DIDServices.c
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
RHT2HC          11/10/2020
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "EcuMgr_Utils.h"
#include "Fbl_DataM.h"
#include "EcuMgr_Cfg_DownloadTarget.h"
/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/
typedef union{
	uint8 au8Buf[200];
	struct{
		uint8 au8DataBuf_0xF187[13];
		uint8 au8DataBuf_0xF18A[10];
		uint8 au8DataBuf_0xF18B[4];
		uint8 au8DataBuf_0xF18C[14];
		uint8 au8DataBuf_0xF190[17];
		uint8 au8DataBuf_0xF193[6];
		uint8 au8DataBuf_0xF195[6];
		uint8 au8DataBuf_0xF19A[8];
		uint8 au8DataBuf_0xF1B7[7];
	}tBuf;
}EcuMgr_AppBootShareBlock;

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/
static uint8 EcuMgr_DID_FingerPrintInfor[NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock];
/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Global Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 103] */
/**
 * @brief: Store Finger Printer information
 *
 * @return Std_ReturnType
 * 							- E_OK: Date is valid
 * 							- E_NOT_OK: Date is invalid
 */
Std_ReturnType EcuMgr_DIDService_StoreFingerPrintInfor(const uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 idx = 0;

	/* Check the date format is valid or not */
	// retVal = EcuMgr_Util_IsDateFormatValid(data, ECUMGR_UTIL_LEN_OF_YYMMDD_FORMAT);

	/* Store Finger print information */
	// if(retVal == E_OK)
	{
		for(idx = 0; idx < sizeof(EcuMgr_DID_FingerPrintInfor); ++idx)
		{
			EcuMgr_DID_FingerPrintInfor[idx] = data[idx];
		}
	}
	retVal = E_OK;

	return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 104] */
/**
 * @brief: Write Finger Printer information to Non-Volatile memory
 *
 * @return Std_ReturnType
 * 							- E_OK: Successfully
 * 							- E_NOT_OK: Fail
 */
Std_ReturnType EcuMgr_DIDService_WriteFingerPrintInfor(uint32 blockID)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint8 fingerPrintData[NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock];
	uint32 idx = 0;

	//retVal = FBL_DataM_ReadNvmFingerprint(fingerPrintData);
	//if(E_OK == retVal)
	{
		for(idx = 0; idx < NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock; ++idx)
		{
			fingerPrintData[idx] = EcuMgr_DID_FingerPrintInfor[idx];	/* PRQA S 4391*/
		}

		(void)FBL_DataM_WriteNvmFingerprint((const uint8*)fingerPrintData);
	}

	return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 105] */
/**
 * @brief: Read Finger Printer information to Non-Volatile memory
 *
 * @return Std_ReturnType
 * 							- E_OK: Successfully
 * 							- E_NOT_OK: Fail
 */
Std_ReturnType EcuMgr_DIDService_ReadFingerPrintInfor(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint8 fingerPrintData[NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock] = {0};
	uint32 blkIdx = 0;
	uint32 fpIdx = 0;

	retVal = FBL_DataM_ReadNvmFingerprint(fingerPrintData);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < NVM_CFG_NV_BLOCK_LENGTH_NV_FingerprintBlock; blkIdx++)
		{
			*data++ = fingerPrintData[blkIdx];
		}
	}

	return retVal;
}

Std_ReturnType EcuMgr_DIDService_Read0xF187(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 blkIdx = 0;
	
	EcuMgr_AppBootShareBlock tDidNvmBlock;

	retVal = FBL_DataM_ReadNvmReserveForBoot_01((uint8 *)&tDidNvmBlock.au8Buf[0]);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < sizeof(tDidNvmBlock.tBuf.au8DataBuf_0xF187); blkIdx++)
		{
			*data++ = tDidNvmBlock.tBuf.au8DataBuf_0xF187[blkIdx];
		}
	}

	return retVal;
}

Std_ReturnType EcuMgr_DIDService_Read0xF18A(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 blkIdx = 0;
	
	EcuMgr_AppBootShareBlock tDidNvmBlock;

	retVal = FBL_DataM_ReadNvmReserveForBoot_01((uint8 *)&tDidNvmBlock.au8Buf[0]);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < sizeof(tDidNvmBlock.tBuf.au8DataBuf_0xF18A); blkIdx++)
		{
			*data++ = tDidNvmBlock.tBuf.au8DataBuf_0xF18A[blkIdx];
		}
	}

	return retVal;
}

Std_ReturnType EcuMgr_DIDService_Read0xF18B(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 blkIdx = 0;
	
	EcuMgr_AppBootShareBlock tDidNvmBlock;

	retVal = FBL_DataM_ReadNvmReserveForBoot_01((uint8 *)&tDidNvmBlock.au8Buf[0]);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < sizeof(tDidNvmBlock.tBuf.au8DataBuf_0xF18B); blkIdx++)
		{
			*data++ = tDidNvmBlock.tBuf.au8DataBuf_0xF18B[blkIdx];
		}
	}

	return retVal;
}

Std_ReturnType EcuMgr_DIDService_Read0xF18C(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 blkIdx = 0;
	
	EcuMgr_AppBootShareBlock tDidNvmBlock;

	retVal = FBL_DataM_ReadNvmReserveForBoot_01((uint8 *)&tDidNvmBlock.au8Buf[0]);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < sizeof(tDidNvmBlock.tBuf.au8DataBuf_0xF18C); blkIdx++)
		{
			*data++ = tDidNvmBlock.tBuf.au8DataBuf_0xF18C[blkIdx];
		}
	}

	return retVal;
}

Std_ReturnType EcuMgr_DIDService_Read0xF190(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 blkIdx = 0;
	
	EcuMgr_AppBootShareBlock tDidNvmBlock;

	retVal = FBL_DataM_ReadNvmReserveForBoot_01((uint8 *)&tDidNvmBlock.au8Buf[0]);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < sizeof(tDidNvmBlock.tBuf.au8DataBuf_0xF190); blkIdx++)
		{
			*data++ = tDidNvmBlock.tBuf.au8DataBuf_0xF190[blkIdx];
		}
	}

	return retVal;
}

Std_ReturnType EcuMgr_DIDService_Read0xF193(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 blkIdx = 0;
	
	EcuMgr_AppBootShareBlock tDidNvmBlock;

	retVal = FBL_DataM_ReadNvmReserveForBoot_01((uint8 *)&tDidNvmBlock.au8Buf[0]);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < sizeof(tDidNvmBlock.tBuf.au8DataBuf_0xF193); blkIdx++)
		{
			*data++ = tDidNvmBlock.tBuf.au8DataBuf_0xF193[blkIdx];
		}
	}

	return retVal;
}

Std_ReturnType EcuMgr_DIDService_Read0xF195(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 blkIdx = 0;
	
	EcuMgr_AppBootShareBlock tDidNvmBlock;

	retVal = FBL_DataM_ReadNvmReserveForBoot_01((uint8 *)&tDidNvmBlock.au8Buf[0]);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < sizeof(tDidNvmBlock.tBuf.au8DataBuf_0xF195); blkIdx++)
		{
			*data++ = tDidNvmBlock.tBuf.au8DataBuf_0xF195[blkIdx];
		}
	}

	return retVal;
}

Std_ReturnType EcuMgr_DIDService_Read0xF19A(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 blkIdx = 0;
	
	EcuMgr_AppBootShareBlock tDidNvmBlock;

	retVal = FBL_DataM_ReadNvmReserveForBoot_01((uint8 *)&tDidNvmBlock.au8Buf[0]);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < sizeof(tDidNvmBlock.tBuf.au8DataBuf_0xF19A); blkIdx++)
		{
			*data++ = tDidNvmBlock.tBuf.au8DataBuf_0xF19A[blkIdx];
		}
	}

	return retVal;
}

Std_ReturnType EcuMgr_DIDService_Read0xF1B7(uint8* data)
{
	Std_ReturnType retVal = E_NOT_OK;
	uint32 blkIdx = 0;
	
	EcuMgr_AppBootShareBlock tDidNvmBlock;

	retVal = FBL_DataM_ReadNvmReserveForBoot_01((uint8 *)&tDidNvmBlock.au8Buf[0]);

	if(retVal == E_OK)
	{
		for(blkIdx = 0; blkIdx < sizeof(tDidNvmBlock.tBuf.au8DataBuf_0xF1B7); blkIdx++)
		{
			*data++ = tDidNvmBlock.tBuf.au8DataBuf_0xF1B7[blkIdx];
		}
	}

	return retVal;
}

