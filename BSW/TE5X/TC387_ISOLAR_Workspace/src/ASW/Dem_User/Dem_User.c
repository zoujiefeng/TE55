

#include "Dem_Internal.h"
#include "Rte_Dem.h" /* For the callbacks */
#include "Dem_User.h" 

#include "FAULT_FF.h"
#include "FAULT.h"


#include "Dem_EnvDataElement.h"

#include "Dem_Events.h"
#include "Dem_EventStatus.h"
#include "Dem_EvMem.h"
#include "Dem_EvMemGen.h"
#include "Dem_Cfg_ExtPrototypes.h"
#include "Dem_Cfg_Events_DataStructures.h"

#include "Dem_PrjEnvDataElement.h"

#include "BSW.h"
#include "Dcm_Lcfg_DspUds.h"



#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"

Std_ReturnType DEM_DataServices_DemDataElementClass_1D03_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GTempCoolingFild;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GTempCoolingFild);
	
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D05_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GIu;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GIu);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D06_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GIv;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GIv);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D07_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GIw;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GIw);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D08_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GIGBTStatus;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GIGBTStatus);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D0A_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GHV_VoltageFild;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GHV_VoltageFild);
	
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D0B_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GMotTemp;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GMotTemp);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D0C_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GMecaSpeedRpm;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GMecaSpeedRpm);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D0E_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GIPUMode;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GIPUMode);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D0F_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GVCU_DCU_ModeReq;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GVCU_DCU_ModeReq);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D10_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GTempCmdBoard;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GTempCmdBoard);
	
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D11_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;
   uint8 u8TempArray[6] = {0};
   uint8 u8LocDataLen = 6;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GRMS_Cur_U;

	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[0];
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GRMS_Cur_V;
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[0];
	pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GRMS_Cur_W;
	u8TempArray[u8LocIndex++] = pu8LocTempPtr[1];
	u8TempArray[u8LocIndex] = pu8LocTempPtr[0];

   for(u8LocIndex = 0; u8LocIndex < u8LocDataLen; u8LocIndex++)
   {
      *Data++ = u8TempArray[u8LocIndex];
   }


	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D12_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GVCU_DCU_TorqSet;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GVCU_DCU_TorqSet);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D13_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GDC_Current;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GDC_Current);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D15_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GISGCurrentTorq;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GISGCurrentTorq);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D1A_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GBMS_HVBusVolt;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GBMS_HVBusVolt);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D1F_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GFTModeReq;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GFTModeReq);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D20_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GFT_AclState;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GFT_AclState);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D21_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GMaxMinTorqueDrtVect;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GMaxMinTorqueDrtVect);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D22_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GMecaTorqueMaxMin;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GMecaTorqueMaxMin);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D23_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GSinScaled;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GSinScaled);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D24_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GCosScaled;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GCosScaled);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D25_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GExcVoltageFild;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GExcVoltageFild);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D26_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GExcitationDiag;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GExcitationDiag);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D27_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GResolNext2ThetaRdByPi;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GResolNext2ThetaRdByPi);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D28_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GUM1dTgt;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GUM1dTgt);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D29_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GUM1qTgt;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GUM1qTgt);
	
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D2A_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GParkVoltageTgt;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GParkVoltageTgt);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D2B_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GiqLutTgt;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GiqLutTgt);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D2C_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GidLutTgt;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GidLutTgt);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D2D_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GidCorTgt;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GidCorTgt);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D2E_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.Gi0dqTgt3_1;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.Gi0dqTgt3_1);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D2F_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.Gi0dqTgt3_2;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.Gi0dqTgt3_2);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D30_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GI0dq3_1;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GI0dq3_1);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D31_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GI0dq3_2;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GI0dq3_2);
	
   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D32_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GTempDrvBoard;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GTempDrvBoard);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D33_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GTempIgbt;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GTempIgbt);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}

Std_ReturnType DEM_DataServices_DemDataElementClass_1D34_ReadData(uint8 * Data)
{
	Std_ReturnType retValue = RTE_E_OK;
   uint8 u8LocIndex = 0;

   P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) pu8LocTempPtr = (P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA))&FAULT_FF_Frame_FF1.Item.GEstimTempSecFild;
   uint8 u8LocDataLen = sizeof(FAULT_FF_Frame_FF1.Item.GEstimTempSecFild);

   for(u8LocIndex = u8LocDataLen; u8LocIndex > 0; u8LocIndex--)
   {
      *Data++ = *(pu8LocTempPtr + u8LocIndex - 1);
   }

	return retValue;
}





Std_ReturnType DataServices_R_0470_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntBswLibDate) / sizeof(BSW_kau8IntBswLibDate[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntBswLibDate[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_0471_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntOfflineDate) / sizeof(BSW_kau8IntOfflineDate[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntOfflineDate[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_0472_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntProductionLineId) / sizeof(BSW_kau8IntProductionLineId[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntProductionLineId[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_0473_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntProjectId) / sizeof(BSW_kau8IntProjectId[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntProjectId[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_0474_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntBswSvnRev) / sizeof(BSW_kau8IntBswSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntBswSvnRev[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_0475_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntBootSvnRev) / sizeof(BSW_kau8IntBootSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntBootSvnRev[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_0476_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntFpgaSvnRev) / sizeof(BSW_kau8IntFpgaSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntFpgaSvnRev[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_0477_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntCpldSvnRev) / sizeof(BSW_kau8IntCpldSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntCpldSvnRev[u8Index];
	}

	return retValue;
}


Std_ReturnType DataServices_R_0478_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntHwSvnRev) / sizeof(BSW_kau8IntHwSvnRev[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntHwSvnRev[u8Index];
	}

	return retValue;
}

Std_ReturnType DataServices_R_0479_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
	uint8 u8Index = 0;
	Std_ReturnType retValue = RTE_E_OK;

	for(u8Index = 0; u8Index < (sizeof(BSW_kau8IntAddlInfo) / sizeof(BSW_kau8IntAddlInfo[0])); u8Index++)
	{
		*Data++ = BSW_kau8IntAddlInfo[u8Index];
	}

	return retValue;
}






Std_ReturnType DataServices_RW_1E00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data)
{
   Std_ReturnType rtn;
   float f32AutophsAng;
   uint16 u16LocAutophsAngle;
   uint8 u8LocAngle[2] = {0};
   uint8 u8LocCrcTemp = 0;
   
   f32AutophsAng = GMAIN_f32GetAutophsingAngle();
   u16LocAutophsAngle = (uint16)f32AutophsAng;
   
   u8LocAngle[0] = (uint8)( (u16LocAutophsAngle >> 8) & 0x00FF);
   u8LocAngle[1] = (uint8)(u16LocAutophsAngle & 0x00FF);
   u8LocCrcTemp = Crc_CalcCRC8_MAXIM(u8LocAngle, 0x00, 2);

   *Data++ = (uint8)( (u16LocAutophsAngle >> 8) & 0x00FF);
   *Data++ = (uint8)(u16LocAutophsAngle & 0x00FF);
   *Data++ = u8LocCrcTemp;
   rtn = ((Std_ReturnType)RTE_E_OK);

   return rtn;
}


Std_ReturnType DataServices_RW_1E00_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   uint16 u16LocAutophsAngle;
   uint8 u8LocCrcTemp = 0;

   u8LocCrcTemp = Crc_CalcCRC8_MAXIM(&Data[0], 0x00, 2);

   if(u8LocCrcTemp == Data[2])
   {
      u16LocAutophsAngle = (uint16)(Data[0] << 8) + (uint16)(Data[1]);
      GMAIN_bSetSaforiAutophsAngC((const uint16)u16LocAutophsAngle);
      rtn = ((Std_ReturnType)RTE_E_OK);
   }
   else
   {
      rtn = ((Std_ReturnType)RTE_E_INVALID);
   }

   return rtn;
}




#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"
