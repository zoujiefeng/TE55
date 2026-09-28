
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "NvM.h"
#include "rba_BswSrv.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "UDS_DidModule.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define UDS_DID_GET_MIN_VAL(a, b)   ((a < b)? (a) : (b))

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
uint8 UDS_u8GetDIDData_LSB(const uint16 ku16CfgIdx, uint8 * Data);
uint8 UDS_u8GetDIDData_MSB(const uint16 ku16CfgIdx, uint8 * Data);
uint8 UDS_u8SetDIDData_LSB(const uint16 ku16CfgIdx, uint8 * Data);
uint8 UDS_u8SetDIDData_MSB(const uint16 ku16CfgIdx, uint8 * Data);
void  UDS_vidDIDDataHandle(const uint16 ku16CfgIdx, uint8 * Data, const UDS_eOpType keOpType);

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void UDS_vidDIDModuleInit(void)
{

}

void UDS_vidUpdateDidBuf(const uint16 ku16CfgIdx, const CDD_uCTablePtr kpxSrcVal, const UDS_eSrcDataType eDataType)
{
	const UDS_tDidCfgType *pktCfg = &UDS_katDidCfgSet[ku16CfgIdx];

	if(eUDS_DID_CONVERT_DISABLED == pktCfg->eConvertType)
	{
		(void)rba_BswSrv_MemCopy(pktCfg->au8DataBuf, kpxSrcVal.u32Ptr, UDS_DID_GET_MIN_VAL(pktCfg->u8BufSize, pktCfg->u8DidLength));
	}
	else
	{
		float32 f32SrcVal = 0.0f;
		switch(eDataType)
		{
			case eUDS_DID_SRC_DATA_TYPE_SINT32:
			{
				f32SrcVal = (float32)(*(kpxSrcVal.s32Ptr));
				break;
			}
			case eUDS_DID_SRC_DATA_TYPE_SINT8:
			{
				f32SrcVal = (float32)(*(kpxSrcVal.s8Ptr));
				break;
			}
			case eUDS_DID_SRC_DATA_TYPE_UINT8:
			{
				f32SrcVal = (float32)(*(kpxSrcVal.u8Ptr));
				break;
			}
			case eUDS_DID_SRC_DATA_TYPE_UINT16:
			{
				f32SrcVal = (float32)(*(kpxSrcVal.u16Ptr));
				break;
			}
			case eUDS_DID_SRC_DATA_TYPE_UINT32:
			{
				f32SrcVal = (float32)(*(kpxSrcVal.u32Ptr));
				break;
			}
			case eUDS_DID_SRC_DATA_TYPE_FLOAT32:
			{
				f32SrcVal = *(kpxSrcVal.f32Ptr);
				break;
			}
			case eUDS_DID_SRC_DATA_TYPE_DOUBLE:
			case eUDS_DID_SRC_DATA_TYPE_SHORT:
			case eUDS_DID_SRC_DATA_TYPE_LONG:
			default:
			{
				break;
			}
		}
		uint32 u32Val = (uint32)((f32SrcVal - pktCfg->f32Offset) / pktCfg->f32Factor);
		
		(void)rba_BswSrv_MemCopy(pktCfg->au8DataBuf, &u32Val, UDS_DID_GET_MIN_VAL(pktCfg->u8BufSize, pktCfg->u8DidLength));
	}
}

void UDS_vidReadDIDData(const uint16 ku16CfgIdx, uint8 * Data)
{
	uint8 *pu8DataPtr = Data;
	uint16 u16CurIdx  = ku16CfgIdx;

	const UDS_tDidCfgType *pktCfg = &UDS_katDidCfgSet[ku16CfgIdx];

	if(eUDS_DID_READ_DISABLED != pktCfg->eReadType)
	{
		do{
			if(u16CurIdx >= UDS_ku16DidCfgSetSize)
			{
				break;
			}

			pktCfg = &UDS_katDidCfgSet[u16CurIdx];

			if(NULL_PTR != pktCfg->vidCallbackPreRead)
			{
				pktCfg->vidCallbackPreRead(pktCfg, pu8DataPtr);
			}

			if(eUDS_DID_READ_HANDLE_BY_MODULE == pktCfg->eReadType)
			{
				UDS_vidDIDDataHandle(u16CurIdx, pu8DataPtr, eUDS_DID_OP_TYPE_READ);
			}

			if(NULL_PTR != pktCfg->vidCallbackPostRead)
			{
				pktCfg->vidCallbackPostRead(pktCfg, pu8DataPtr);
			}
			
			u16CurIdx++;
			pu8DataPtr = pu8DataPtr + UDS_DID_GET_MIN_VAL(pktCfg->u8BufSize, pktCfg->u8DidLength);
		}while(eUDS_DID_CFG_TABLE_IS_CONTINUE == pktCfg->eCfgTableEnd);
	}
}

void UDS_vidWriteDIDData(const uint16 ku16CfgIdx, const uint8 * Data)
{
	uint8 *pu8DataPtr = Data;
	uint16 u16CurIdx  = ku16CfgIdx;

	const UDS_tDidCfgType *pktCfg = &UDS_katDidCfgSet[ku16CfgIdx];

	if(eUDS_DID_WRITE_DISABLED != pktCfg->eWriteType)
	{
		do{
			if(u16CurIdx >= UDS_ku16DidCfgSetSize)
			{
				break;
			}

			pktCfg = &UDS_katDidCfgSet[u16CurIdx];

			if(NULL_PTR != pktCfg->vidCallbackPreWrite)
			{
				pktCfg->vidCallbackPreWrite(pktCfg, pu8DataPtr);
			}

			if((eUDS_DID_WRITE_HANDLE_BY_MODULE_NVM_ENABLED  == pktCfg->eWriteType)
			|| (eUDS_DID_WRITE_HANDLE_BY_MODULE_NVM_DISABLED == pktCfg->eWriteType)
			|| (eUDS_DID_WRITE_HANDLE_BY_ASW_NVM_DISABLED    == pktCfg->eWriteType))
			{
				UDS_vidDIDDataHandle(u16CurIdx, pu8DataPtr, eUDS_DID_OP_TYPE_WRITE);
			}

			if(NULL_PTR != pktCfg->vidCallbackPostWrite)
			{
				pktCfg->vidCallbackPostWrite(pktCfg, pu8DataPtr);
			}
			
			u16CurIdx++;
			pu8DataPtr = pu8DataPtr + UDS_DID_GET_MIN_VAL(pktCfg->u8BufSize, pktCfg->u8DidLength);
		}while(eUDS_DID_CFG_TABLE_IS_CONTINUE == pktCfg->eCfgTableEnd);

		if((eUDS_DID_WRITE_HANDLE_BY_USER_NVM_ENABLED   == pktCfg->eWriteType)
		|| (eUDS_DID_WRITE_HANDLE_BY_MODULE_NVM_ENABLED == pktCfg->eWriteType))
		{
			NvM_SetRamBlockStatus(pktCfg->u16NvmBlockID, TRUE);
			NvM_WriteBlock(pktCfg->u16NvmBlockID, NULL_PTR);
		}
	}
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
uint8 UDS_u8GetDIDData_LSB(const uint16 ku16CfgIdx, uint8 * Data)
{
	uint8 u8ByteIdx;
	const UDS_tDidCfgType *pktCfg = &UDS_katDidCfgSet[ku16CfgIdx];
	uint8 u8Length = UDS_DID_GET_MIN_VAL(pktCfg->u8BufSize, pktCfg->u8DidLength);

	for(u8ByteIdx = 0; u8ByteIdx < u8Length; u8ByteIdx++)
	{
		*Data++ = pktCfg->au8DataBuf[u8ByteIdx];
	}

	return u8Length;
}

uint8 UDS_u8GetDIDData_MSB(const uint16 ku16CfgIdx, uint8 * Data)
{
	uint8 u8ByteIdx;
	const UDS_tDidCfgType *pktCfg = &UDS_katDidCfgSet[ku16CfgIdx];
	uint8 u8Length = UDS_DID_GET_MIN_VAL(pktCfg->u8BufSize, pktCfg->u8DidLength);

	for(u8ByteIdx = u8Length; u8ByteIdx > 0; u8ByteIdx--)
	{
		*Data++ = pktCfg->au8DataBuf[u8ByteIdx - 1];
	}

	return u8Length;
}

uint8 UDS_u8SetDIDData_LSB(const uint16 ku16CfgIdx, uint8 * Data)
{
	uint8 u8ByteIdx;
	const UDS_tDidCfgType *pktCfg = &UDS_katDidCfgSet[ku16CfgIdx];
	uint8 u8Length = UDS_DID_GET_MIN_VAL(pktCfg->u8BufSize, pktCfg->u8DidLength);

	for(u8ByteIdx = 0; u8ByteIdx < u8Length; u8ByteIdx++)
	{
		pktCfg->au8DataBuf[u8ByteIdx] = *Data++;
	}

	return u8Length;
}

uint8 UDS_u8SetDIDData_MSB(const uint16 ku16CfgIdx, uint8 * Data)
{
	uint8 u8ByteIdx;
	const UDS_tDidCfgType *pktCfg = &UDS_katDidCfgSet[ku16CfgIdx];
	uint8 u8Length = UDS_DID_GET_MIN_VAL(pktCfg->u8BufSize, pktCfg->u8DidLength);

	for(u8ByteIdx = u8Length; u8ByteIdx > 0; u8ByteIdx--)
	{
		pktCfg->au8DataBuf[u8ByteIdx - 1] = *Data++;
	}

	return u8Length;
}

void UDS_vidDIDDataHandle(const uint16 ku16CfgIdx, uint8 * Data, const UDS_eOpType keOpType)
{
	const UDS_tDidCfgType *pktCfg = &UDS_katDidCfgSet[ku16CfgIdx];

	/* 1. Copy Data to Read Buf */
	switch(pktCfg->eByteOrder)
	{
		case eUDS_DID_BYTE_ORDER_LSB:
		{
			if(eUDS_DID_OP_TYPE_READ == keOpType)
			{
				(void)UDS_u8GetDIDData_LSB(ku16CfgIdx, Data);
			}
			else if(eUDS_DID_OP_TYPE_WRITE == keOpType)
			{
				(void)UDS_u8SetDIDData_LSB(ku16CfgIdx, Data);
			}
			break;
		}
		case eUDS_DID_BYTE_ORDER_MSB:
		{
			if(eUDS_DID_OP_TYPE_READ == keOpType)
			{
				(void)UDS_u8GetDIDData_MSB(ku16CfgIdx, Data);
			}
			else if(eUDS_DID_OP_TYPE_WRITE == keOpType)
			{
				(void)UDS_u8SetDIDData_MSB(ku16CfgIdx, Data);
			}
			break;
		}
		default:
		{
			break;
		}
	}
}

/*-------------------------------- end of file -------------------------------*/
