#ifndef __UDS_DID_TYPES_H_
#define __UDS_DID_TYPES_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Private Type Declarations
 ******************************************************************************/
typedef struct UDS_tDidCfgType UDS_tDidCfgType;
typedef struct UDS_tDidDataConvertType UDS_tDidDataConvertType;

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef enum UDS_eOpType{
   eUDS_DID_OP_TYPE_READ = 0,
   eUDS_DID_OP_TYPE_WRITE
}UDS_eOpType;

typedef enum UDS_eByteOrderType{
   eUDS_DID_BYTE_ORDER_LSB = 0,
   eUDS_DID_BYTE_ORDER_MSB,
   eUDS_DID_BYTE_ORDER_UNDEF
}UDS_eByteOrderType;

typedef enum UDS_eCfgTableEndType{
   eUDS_DID_CFG_TABLE_IS_END = 0,
   eUDS_DID_CFG_TABLE_IS_CONTINUE,
   eUDS_DID_CFG_TABLE_UNDEF
}UDS_eCfgTableEndType;

typedef enum UDS_eReadType{
   eUDS_DID_READ_DISABLED = 0,
   eUDS_DID_READ_HANDLE_BY_USER,
   eUDS_DID_READ_HANDLE_BY_MODULE,
}UDS_eReadType;

typedef enum UDS_eWriteType{
   eUDS_DID_WRITE_DISABLED = 0,
   eUDS_DID_WRITE_HANDLE_BY_USER_NVM_ENABLED,
   eUDS_DID_WRITE_HANDLE_BY_MODULE_NVM_ENABLED,
   eUDS_DID_WRITE_HANDLE_BY_USER_NVM_DISABLED,
   eUDS_DID_WRITE_HANDLE_BY_MODULE_NVM_DISABLED,
   eUDS_DID_WRITE_HANDLE_BY_ASW_NVM_DISABLED,
}UDS_eWriteType;

typedef enum UDS_eConvertType{
   eUDS_DID_CONVERT_DISABLED = 0,
   eUDS_DID_CONVERT_BY_TRIGGER,
   eUDS_DID_CONVERT_BY_CYCLE,
}UDS_eConvertType;

typedef enum UDS_eSrcDataType{
   eUDS_DID_SRC_DATA_TYPE_UNDEF = 0,
   eUDS_DID_SRC_DATA_TYPE_SINT32,
   eUDS_DID_SRC_DATA_TYPE_SINT8,
   eUDS_DID_SRC_DATA_TYPE_FLOAT32,
   eUDS_DID_SRC_DATA_TYPE_DOUBLE,
   eUDS_DID_SRC_DATA_TYPE_SHORT,
   eUDS_DID_SRC_DATA_TYPE_LONG,
   eUDS_DID_SRC_DATA_TYPE_UINT8,
   eUDS_DID_SRC_DATA_TYPE_UINT16,
   eUDS_DID_SRC_DATA_TYPE_UINT32,
}UDS_eSrcDataType;

struct UDS_tDidDataConvertType{
   UDS_eConvertType     eConvertType;

   float32 f32Factor;
   float32 f32Offset;
};

struct UDS_tDidCfgType{
   uint16 u16DID;
   uint16 u16NvmBlockID;
   uint8  u8BufSize;
   uint8  u8DidLength;

   UDS_eByteOrderType   eByteOrder;
   UDS_eCfgTableEndType eCfgTableEnd;
   UDS_eReadType        eReadType;
   UDS_eWriteType       eWriteType;
   UDS_eConvertType     eConvertType;

   float32 f32Factor;
   float32 f32Offset;

   uint8  *au8DataBuf;
   void  (*vidCallbackPreRead)(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
   void  (*vidCallbackPostRead)(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);  /* CRC */
   void  (*vidCallbackPreWrite)(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
   void  (*vidCallbackPostWrite)(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);  /* CRC */
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define TYPE_ID(x) \
   (__builtin_types_compatible_p(typeof(x), sint32)    ? eUDS_DID_SRC_DATA_TYPE_SINT32 : \
   __builtin_types_compatible_p(typeof(x), sint8)      ? eUDS_DID_SRC_DATA_TYPE_SINT8 : \
   __builtin_types_compatible_p(typeof(x), float32)    ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : \
   __builtin_types_compatible_p(typeof(x), double)     ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : \
   __builtin_types_compatible_p(typeof(x), short)      ? eUDS_DID_SRC_DATA_TYPE_SHORT : \
   __builtin_types_compatible_p(typeof(x), long)       ? eUDS_DID_SRC_DATA_TYPE_LONG : \
   __builtin_types_compatible_p(typeof(x), uint8)      ? eUDS_DID_SRC_DATA_TYPE_UINT8 : \
   __builtin_types_compatible_p(typeof(x), uint16)     ? eUDS_DID_SRC_DATA_TYPE_UINT16 : \
   __builtin_types_compatible_p(typeof(x), uint32)     ? eUDS_DID_SRC_DATA_TYPE_UINT32 : \
   /* ... */ eUDS_DID_SRC_DATA_TYPE_UNDEF)

#endif /* __UDS_DID_TYPES_H_ */
/*-------------------------------- end of file -------------------------------*/
