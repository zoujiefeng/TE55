/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Dcm.h"
#include "bswsrv.h"
#include "UcbSwap.h"
#include "BSW.h"
#include "MAIN_L.h"
#include "UDS_Nvm.h"
#include "MAIN_tsk.h"
#include "GMAIN_tsk.h"
#include "GMAIN_L.h"
#include "FAULT_FF.h"

#include "MAIN_OCTrim.h"
#include "UDS_DidModule.h"

#include "EnhancedResetLogger.h"


/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/


/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Private Variable Declarations
 ******************************************************************************/


/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/


/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
Std_ReturnType Dcm_DataServices_ReturnControlToECU (Dcm_NegativeResponseCodeType * ErrorCode)
{
	return E_OK;
}

Std_ReturnType Dcm_DataServices_FreezeCurrentState (Dcm_NegativeResponseCodeType * ErrorCode)
{
	return E_OK;
}

Std_ReturnType Dcm_DataServices_ResetToDefault (Dcm_NegativeResponseCodeType * ErrorCode)
{
	return E_OK;
}

Std_ReturnType Dcm_DataServices_ShortTermAdjustment (const uint8 * ControlStateInfo,Dcm_NegativeResponseCodeType * ErrorCode)
{
	return E_OK;
}

Std_ReturnType Dcm_DataServices_ReadData (uint8 * Data)
{
	return E_OK;
}

Std_ReturnType DcmDspData_BootTime_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	BSW_vidGetBootCompileTime(Data);
	return E_OK;
}

Std_ReturnType DcmDspData_ActiveBank_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	*Data = Swap_u8GetActiveBank();
	return E_OK;
}

Std_ReturnType DcmDspData_BootReqCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	BSW_vidGetBootReqCanId(Data);
	return E_OK;
}

Std_ReturnType DcmDspData_BootRspCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	BSW_vidGetBootRspCanId(Data);
	return E_OK;
}

Std_ReturnType DcmDspData_AppReqCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	BSW_vidGetAppReqCanId(Data);
	return E_OK;
}

Std_ReturnType DcmDspData_AppRspCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	BSW_vidGetAppRspCanId(Data);
	return E_OK;
}

Std_ReturnType DataServices_R_IntBswLibDate_0410_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntBswLibDate) / sizeof(BSW_kau8IntBswLibDate[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntBswLibDate[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_IntOfflineDate_0411_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntOfflineDate) / sizeof(BSW_kau8IntOfflineDate[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntOfflineDate[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_IntProductionLineId_0412_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntProductionLineId) / sizeof(BSW_kau8IntProductionLineId[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntProductionLineId[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_IntProjectId_0413_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntProjectId) / sizeof(BSW_kau8IntProjectId[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntProjectId[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_IntBswSvnRev_0414_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntBswSvnRev) / sizeof(BSW_kau8IntBswSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntBswSvnRev[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_IntBootSvnRev_0415_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntBootSvnRev) / sizeof(BSW_kau8IntBootSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntBootSvnRev[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_IntFpgaSvnRev_0416_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntFpgaSvnRev) / sizeof(BSW_kau8IntFpgaSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntFpgaSvnRev[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_IntCpldSvnRev_0417_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntCpldSvnRev) / sizeof(BSW_kau8IntCpldSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntCpldSvnRev[u8Index];
	}

	return retValue;
}


Std_ReturnType DataServices_R_IntHwSvnRev_0418_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntHwSvnRev) / sizeof(BSW_kau8IntHwSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntHwSvnRev[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_IntAddlInfo_0419_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntAddlInfo) / sizeof(BSW_kau8IntAddlInfo[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntAddlInfo[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_ResetLog_0420_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	static uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	ERL_vidReadLogByIndex(u8Index++, Data);

	return retValue;
}

Std_ReturnType DataServices_R_SuppHwVer_F193_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;
	
	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsSupplHwVersion) / sizeof(MAIN_u8UdsSupplHwVersion[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsSupplHwVersion[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_SuppSwVer_F195_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(MAIN_u8UdsSwVerSup) / sizeof(MAIN_u8UdsSwVerSup[0])); u8Index++)
	{
		*Data++ = MAIN_u8UdsSwVerSup[u8Index];
	}
	
	return retValue;
}


Std_ReturnType DataServices_R_D000_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD000, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D001_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD001, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D002_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD002, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D003_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD003, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D004_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD004, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D005_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD005, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0B20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0B20, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_0B21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0B21, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_0B22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0B22, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_0B23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0B23, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_D007_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD007, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D008_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD008, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D009_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD009, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D010_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD010, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D011_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD011, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D012_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD012, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D013_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD013, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D014_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD014, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D015_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD015, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D016_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD016, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D017_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD017, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D018_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD018, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D019_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD019, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D020_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD020, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D021_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD021, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D022_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD022, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D023_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD023, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D024_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD024, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D025_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD025, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D026_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD026, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D027_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD027, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D028_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD028, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D029_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD029, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D030_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD030, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D031_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD031, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D032_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD032, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D033_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD033, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D034_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD034, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D035_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD035, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D036_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD036, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D037_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD037, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D038_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD038, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D039_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD039, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D040_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD040, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D041_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD041, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D042_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD042, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D043_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD043, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D044_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD044, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D045_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD045, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D046_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD046, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D047_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD047, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D048_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD048, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_D049_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xD049, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0D2B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0D2B, Data);

   return E_OK;
}

Std_ReturnType DataServices_RW_0E00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E00, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E01, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E02, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E03, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E04, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E05, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E06, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E07, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E08, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E09, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E0A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E0B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E0C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E0D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E0E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_0E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x0E0F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D00, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D01, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D02, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D03, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D04, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D05, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D06, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D07, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D08, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D09, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D0A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D0B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D0C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D0D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D0E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D0F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D10_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D10, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D11, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D12, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D13, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D14, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D15, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D16_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D16, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D17_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D17, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D18_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D18, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D19_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D19, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D1A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D1A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D1B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D1B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D1C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D1D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D1E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D1F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D20, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D21, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D22, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D23, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D24, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D25, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D26, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D27, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D28, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D29_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D29, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D2A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D2A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1D2B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1D2B, Data);

   return E_OK;
}

Std_ReturnType DataServices_RW_1E00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E00, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E01, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E02, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E03, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E04, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E05, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E06, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E07, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E08, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E09, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E0A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E0B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E0C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E0D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E0E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_1E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x1E0F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D02, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D03, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D04, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D05, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D06, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D07, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D08, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D09, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D0A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D0C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D0D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D0E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D11, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D12, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D13, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D14, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D15, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D1C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D1D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D1E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D1F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D20, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D21, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D22, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D23, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D24, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D25, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D26, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D27, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2D28, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E02, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E03, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E04, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E05, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E06, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E07, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E08, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E09, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E0A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E0B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E0C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E0D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E0E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_2E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x2E0F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D02, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D03, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D04, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D05, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D06, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D07, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D08, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D09, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D0A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D0C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D0D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D0E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D11, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D12, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D13, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D14, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D15, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D1C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D1D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D1E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D1F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D20, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D21, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D22, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D23, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D24, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D25, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D26, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D27, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3D28, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E02, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E03, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E04, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E05, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E06, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E07, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E08, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E09, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E0A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E0B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E0C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E0D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E0E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_3E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x3E0F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D00, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D01, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D02, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D03, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D04, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D05, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D06, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D07, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D08, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D09, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D0A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D0B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D0C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D0D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D0E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D0F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D10_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D10, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D11, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D12, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D13, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D14, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D15, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D16_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D16, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D17_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D17, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D18_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D18, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D19_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D19, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D1A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D1A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D1B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D1B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D1C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D1D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D1E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D1F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D20, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D21, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D22, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D23, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D24, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D25, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D26, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D27, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D28, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D29_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D29, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D2A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D2A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D2B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D2B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D2C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D2C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D2D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D2D, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D2E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D2E, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D2F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D2F, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D30_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D30, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D31_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D31, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D32_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D32, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D33_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D33, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D34_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D34, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D35_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D35, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D36_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D36, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D37_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D37, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D38_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D38, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D39_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D39, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D3A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D3A, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D3B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D3B, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D3C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D3C, Data);

   return E_OK;
}

Std_ReturnType DataServices_R_4D3D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0x4D3D, Data);

   return E_OK;
}


Std_ReturnType DataServices_R_DFEA_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xDFEA, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_DFEB_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xDFEB, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_DFEC_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xDFEC, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_DFED_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xDFED, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F18A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF18A, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F197_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF197, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F187_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF187, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F188_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF188, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F191_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF191, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F193_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF193, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F189_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF189, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F190_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF190, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_B303_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xB303, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F18C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF18C, Data);

	return E_OK;
}

Std_ReturnType DataServices_R_F1E0_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	UDS_vidReadDIDData(eUDS_DID_CFG_IDX_0xF1E0, Data);

	return E_OK;
}

