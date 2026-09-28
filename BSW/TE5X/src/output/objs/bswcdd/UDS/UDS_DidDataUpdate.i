# 1 "bswcdd\\UDS\\UDS_DidDataUpdate.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\UDS\\UDS_DidDataUpdate.c"
# 13 "bswcdd\\UDS\\UDS_DidDataUpdate.c"
# 1 "bswcdd\\UDS\\UDS_DidDataUpdate.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 8 "bswcdd\\UDS\\UDS_DidDataUpdate.h" 2




# 1 "bswcdd\\UDS\\UDS_DidModule.h" 1
# 11 "bswcdd\\UDS\\UDS_DidModule.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 "bswcdd\\UDS\\UDS_DidModule.h" 2
# 1 ".\\output\\inc/CDD_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 8 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h" 2
# 20 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h"
typedef enum{
   eCDD_WRITE_DONE = 0,
   eCDD_WRTIE_CONTINUE
}CDD_eTransState;

typedef enum{
   eCDD_PIN_LOW = 0,
   eCDD_PIN_HIGH
}CDD_ePinLevel;

typedef volatile union{
   uint8 *u8Ptr;
   uint16 *u16Ptr;
   uint32 *u32Ptr;
   uint64 *u64Ptr;
   sint8 *s8Ptr;
   sint16 *s16Ptr;
   sint32 *s32Ptr;
   sint64 *s64Ptr;
   float32 *f32Ptr;
   const float32 *kf32Ptr;
}CDD_uCTablePtr;

typedef struct CDD_tTransParam{
   CDD_eTransState eState;
   uint32 u32TransLen;
   uint32 u32TotalLen;
   CDD_uCTablePtr uSrcPtr;
   CDD_uCTablePtr uDestPtr;
}CDD_tTransParam;
# 2 ".\\output\\inc/CDD_Types.h" 2
# 13 "bswcdd\\UDS\\UDS_DidModule.h" 2
# 1 "bswcdd\\UDS\\UDS_DidCfg.h" 1
# 11 "bswcdd\\UDS\\UDS_DidCfg.h"
# 1 "bswcdd\\UDS\\UDS_DidTypes.h" 1
# 11 "bswcdd\\UDS\\UDS_DidTypes.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 "bswcdd\\UDS\\UDS_DidTypes.h" 2




typedef struct UDS_tDidCfgType UDS_tDidCfgType;
typedef struct UDS_tDidDataConvertType UDS_tDidDataConvertType;




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
   UDS_eConvertType eConvertType;

   float32 f32Factor;
   float32 f32Offset;
};

struct UDS_tDidCfgType{
   uint16 u16DID;
   uint16 u16NvmBlockID;
   uint8 u8BufSize;
   uint8 u8DidLength;

   UDS_eByteOrderType eByteOrder;
   UDS_eCfgTableEndType eCfgTableEnd;
   UDS_eReadType eReadType;
   UDS_eWriteType eWriteType;
   UDS_eConvertType eConvertType;

   float32 f32Factor;
   float32 f32Offset;

   uint8 *au8DataBuf;
   void (*vidCallbackPreRead)(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
   void (*vidCallbackPostRead)(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
   void (*vidCallbackPreWrite)(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
   void (*vidCallbackPostWrite)(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
};
# 12 "bswcdd\\UDS\\UDS_DidCfg.h" 2




enum{
   eUDS_DID_CFG_IDX_0xD000 = 0,
   eUDS_DID_CFG_IDX_0xD001,
   eUDS_DID_CFG_IDX_0xD002,
   eUDS_DID_CFG_IDX_0xD003,
   eUDS_DID_CFG_IDX_0xD004,
   eUDS_DID_CFG_IDX_0xD005,
   eUDS_DID_CFG_IDX_0x0B20,
   eUDS_DID_CFG_IDX_0x0B21,
   eUDS_DID_CFG_IDX_0x0B22,
   eUDS_DID_CFG_IDX_0x0B23,
   eUDS_DID_CFG_IDX_0xD007,
   eUDS_DID_CFG_IDX_0xD008,
   eUDS_DID_CFG_IDX_0xD009,
   eUDS_DID_CFG_IDX_0xD010,
   eUDS_DID_CFG_IDX_0xD011,
   eUDS_DID_CFG_IDX_0xD012,
   eUDS_DID_CFG_IDX_0xD013,
   eUDS_DID_CFG_IDX_0xD014,
   eUDS_DID_CFG_IDX_0xD015,
   eUDS_DID_CFG_IDX_0xD016,
   eUDS_DID_CFG_IDX_0xD017,
   eUDS_DID_CFG_IDX_0xD018,
   eUDS_DID_CFG_IDX_0xD019,


   eUDS_DID_CFG_IDX_0xD020,
   eUDS_DID_CFG_IDX_0xD021,
   eUDS_DID_CFG_IDX_0xD022,
   eUDS_DID_CFG_IDX_0xD023,
   eUDS_DID_CFG_IDX_0xD024,
   eUDS_DID_CFG_IDX_0xD025,
   eUDS_DID_CFG_IDX_0xD026,
   eUDS_DID_CFG_IDX_0xD027,
   eUDS_DID_CFG_IDX_0xD028,
   eUDS_DID_CFG_IDX_0xD029,
   eUDS_DID_CFG_IDX_0xD030,
   eUDS_DID_CFG_IDX_0xD031,
   eUDS_DID_CFG_IDX_0xD032,
   eUDS_DID_CFG_IDX_0xD033,
   eUDS_DID_CFG_IDX_0xD034,
   eUDS_DID_CFG_IDX_0xD035,
   eUDS_DID_CFG_IDX_0xD036,
   eUDS_DID_CFG_IDX_0xD037,
   eUDS_DID_CFG_IDX_0xD038,
   eUDS_DID_CFG_IDX_0xD039,
   eUDS_DID_CFG_IDX_0xD040,
   eUDS_DID_CFG_IDX_0xD041,
   eUDS_DID_CFG_IDX_0xD042,
   eUDS_DID_CFG_IDX_0xD043,
   eUDS_DID_CFG_IDX_0xD044,
   eUDS_DID_CFG_IDX_0xD045,
   eUDS_DID_CFG_IDX_0xD046,
   eUDS_DID_CFG_IDX_0xD047,
   eUDS_DID_CFG_IDX_0xD048,
   eUDS_DID_CFG_IDX_0xD049,
   eUDS_DID_CFG_IDX_0x0D2A_1,
   eUDS_DID_CFG_IDX_0x0D2A_2,
   eUDS_DID_CFG_IDX_0x0D2A_3,
   eUDS_DID_CFG_IDX_0x0D2A_4,
   eUDS_DID_CFG_IDX_0x0D2B,
   eUDS_DID_CFG_IDX_0x0E00,
   eUDS_DID_CFG_IDX_0x0E01,
   eUDS_DID_CFG_IDX_0x0E02,
   eUDS_DID_CFG_IDX_0x0E03,
   eUDS_DID_CFG_IDX_0x0E04,
   eUDS_DID_CFG_IDX_0x0E05,
   eUDS_DID_CFG_IDX_0x0E06,
   eUDS_DID_CFG_IDX_0x0E07,
   eUDS_DID_CFG_IDX_0x0E08,
   eUDS_DID_CFG_IDX_0x0E09,
   eUDS_DID_CFG_IDX_0x0E0A,
   eUDS_DID_CFG_IDX_0x0E0B,
   eUDS_DID_CFG_IDX_0x0E0C,
   eUDS_DID_CFG_IDX_0x0E0D,
   eUDS_DID_CFG_IDX_0x0E0E,
   eUDS_DID_CFG_IDX_0x0E0F,
   eUDS_DID_CFG_IDX_0x1D00,
   eUDS_DID_CFG_IDX_0x1D01,
   eUDS_DID_CFG_IDX_0x1D02,
   eUDS_DID_CFG_IDX_0x1D03,
   eUDS_DID_CFG_IDX_0x1D04,
   eUDS_DID_CFG_IDX_0x1D05,
   eUDS_DID_CFG_IDX_0x1D06,
   eUDS_DID_CFG_IDX_0x1D07,
   eUDS_DID_CFG_IDX_0x1D08,
   eUDS_DID_CFG_IDX_0x1D09,
   eUDS_DID_CFG_IDX_0x1D0A,
   eUDS_DID_CFG_IDX_0x1D0B,
   eUDS_DID_CFG_IDX_0x1D0C,
   eUDS_DID_CFG_IDX_0x1D0C_1,
   eUDS_DID_CFG_IDX_0x1D0C_2,
   eUDS_DID_CFG_IDX_0x1D0D,
   eUDS_DID_CFG_IDX_0x1D0E,
   eUDS_DID_CFG_IDX_0x1D0F,
   eUDS_DID_CFG_IDX_0x1D10,
   eUDS_DID_CFG_IDX_0x1D11,
   eUDS_DID_CFG_IDX_0x1D12,
   eUDS_DID_CFG_IDX_0x1D13,
   eUDS_DID_CFG_IDX_0x1D14,
   eUDS_DID_CFG_IDX_0x1D15,
   eUDS_DID_CFG_IDX_0x1D16,
   eUDS_DID_CFG_IDX_0x1D17,
   eUDS_DID_CFG_IDX_0x1D18,
   eUDS_DID_CFG_IDX_0x1D19,
   eUDS_DID_CFG_IDX_0x1D1A,
   eUDS_DID_CFG_IDX_0x1D1B,
   eUDS_DID_CFG_IDX_0x1D1C,
   eUDS_DID_CFG_IDX_0x1D1D,
   eUDS_DID_CFG_IDX_0x1D1E,
   eUDS_DID_CFG_IDX_0x1D1F,
   eUDS_DID_CFG_IDX_0x1D20,
   eUDS_DID_CFG_IDX_0x1D21,
   eUDS_DID_CFG_IDX_0x1D22,
   eUDS_DID_CFG_IDX_0x1D23,
   eUDS_DID_CFG_IDX_0x1D24,
   eUDS_DID_CFG_IDX_0x1D25,
   eUDS_DID_CFG_IDX_0x1D26,
   eUDS_DID_CFG_IDX_0x1D27,
   eUDS_DID_CFG_IDX_0x1D28,
   eUDS_DID_CFG_IDX_0x1D29,
   eUDS_DID_CFG_IDX_0x1D2A,
   eUDS_DID_CFG_IDX_0x1D2A_1,
   eUDS_DID_CFG_IDX_0x1D2A_2,
   eUDS_DID_CFG_IDX_0x1D2A_3,
   eUDS_DID_CFG_IDX_0x1D2A_4,
   eUDS_DID_CFG_IDX_0x1D2B,
   eUDS_DID_CFG_IDX_0x1E00,
   eUDS_DID_CFG_IDX_0x1E01,
   eUDS_DID_CFG_IDX_0x1E02,
   eUDS_DID_CFG_IDX_0x1E03,
   eUDS_DID_CFG_IDX_0x1E04,
   eUDS_DID_CFG_IDX_0x1E05,
   eUDS_DID_CFG_IDX_0x1E06,
   eUDS_DID_CFG_IDX_0x1E07,
   eUDS_DID_CFG_IDX_0x1E08,
   eUDS_DID_CFG_IDX_0x1E09,
   eUDS_DID_CFG_IDX_0x1E0A,
   eUDS_DID_CFG_IDX_0x1E0B,
   eUDS_DID_CFG_IDX_0x1E0C,
   eUDS_DID_CFG_IDX_0x1E0D,
   eUDS_DID_CFG_IDX_0x1E0E,
   eUDS_DID_CFG_IDX_0x1E0F,
   eUDS_DID_CFG_IDX_0x2D02,
   eUDS_DID_CFG_IDX_0x2D03,
   eUDS_DID_CFG_IDX_0x2D04,
   eUDS_DID_CFG_IDX_0x2D05,
   eUDS_DID_CFG_IDX_0x2D06,
   eUDS_DID_CFG_IDX_0x2D07,
   eUDS_DID_CFG_IDX_0x2D08,
   eUDS_DID_CFG_IDX_0x2D09,
   eUDS_DID_CFG_IDX_0x2D0A,
   eUDS_DID_CFG_IDX_0x2D0C,
   eUDS_DID_CFG_IDX_0x2D0C_1,
   eUDS_DID_CFG_IDX_0x2D0C_2,
   eUDS_DID_CFG_IDX_0x2D0D,
   eUDS_DID_CFG_IDX_0x2D0E,
   eUDS_DID_CFG_IDX_0x2D11,
   eUDS_DID_CFG_IDX_0x2D12,
   eUDS_DID_CFG_IDX_0x2D13,
   eUDS_DID_CFG_IDX_0x2D14,
   eUDS_DID_CFG_IDX_0x2D15,
   eUDS_DID_CFG_IDX_0x2D1C,
   eUDS_DID_CFG_IDX_0x2D1D,
   eUDS_DID_CFG_IDX_0x2D1E,
   eUDS_DID_CFG_IDX_0x2D1F,
   eUDS_DID_CFG_IDX_0x2D20,
   eUDS_DID_CFG_IDX_0x2D21,
   eUDS_DID_CFG_IDX_0x2D22,
   eUDS_DID_CFG_IDX_0x2D23,
   eUDS_DID_CFG_IDX_0x2D24,
   eUDS_DID_CFG_IDX_0x2D25,
   eUDS_DID_CFG_IDX_0x2D26,
   eUDS_DID_CFG_IDX_0x2D27,
   eUDS_DID_CFG_IDX_0x2D28,
   eUDS_DID_CFG_IDX_0x2E02,
   eUDS_DID_CFG_IDX_0x2E03,
   eUDS_DID_CFG_IDX_0x2E04,
   eUDS_DID_CFG_IDX_0x2E05,
   eUDS_DID_CFG_IDX_0x2E06,
   eUDS_DID_CFG_IDX_0x2E07,
   eUDS_DID_CFG_IDX_0x2E08,
   eUDS_DID_CFG_IDX_0x2E09,
   eUDS_DID_CFG_IDX_0x2E0A,
   eUDS_DID_CFG_IDX_0x2E0B,
   eUDS_DID_CFG_IDX_0x2E0C,
   eUDS_DID_CFG_IDX_0x2E0D,
   eUDS_DID_CFG_IDX_0x2E0E,
   eUDS_DID_CFG_IDX_0x2E0F,
   eUDS_DID_CFG_IDX_0x3D02,
   eUDS_DID_CFG_IDX_0x3D03,
   eUDS_DID_CFG_IDX_0x3D04,
   eUDS_DID_CFG_IDX_0x3D05,
   eUDS_DID_CFG_IDX_0x3D06,
   eUDS_DID_CFG_IDX_0x3D07,
   eUDS_DID_CFG_IDX_0x3D08,
   eUDS_DID_CFG_IDX_0x3D09,
   eUDS_DID_CFG_IDX_0x3D0A,
   eUDS_DID_CFG_IDX_0x3D0C,
   eUDS_DID_CFG_IDX_0x3D0C_1,
   eUDS_DID_CFG_IDX_0x3D0C_2,
   eUDS_DID_CFG_IDX_0x3D0D,
   eUDS_DID_CFG_IDX_0x3D0E,
   eUDS_DID_CFG_IDX_0x3D11,
   eUDS_DID_CFG_IDX_0x3D12,
   eUDS_DID_CFG_IDX_0x3D13,
   eUDS_DID_CFG_IDX_0x3D14,
   eUDS_DID_CFG_IDX_0x3D15,
   eUDS_DID_CFG_IDX_0x3D1C,
   eUDS_DID_CFG_IDX_0x3D1D,
   eUDS_DID_CFG_IDX_0x3D1E,
   eUDS_DID_CFG_IDX_0x3D1F,
   eUDS_DID_CFG_IDX_0x3D20,
   eUDS_DID_CFG_IDX_0x3D21,
   eUDS_DID_CFG_IDX_0x3D22,
   eUDS_DID_CFG_IDX_0x3D23,
   eUDS_DID_CFG_IDX_0x3D24,
   eUDS_DID_CFG_IDX_0x3D25,
   eUDS_DID_CFG_IDX_0x3D26,
   eUDS_DID_CFG_IDX_0x3D27,
   eUDS_DID_CFG_IDX_0x3D28,
   eUDS_DID_CFG_IDX_0x3E02,
   eUDS_DID_CFG_IDX_0x3E03,
   eUDS_DID_CFG_IDX_0x3E04,
   eUDS_DID_CFG_IDX_0x3E05,
   eUDS_DID_CFG_IDX_0x3E06,
   eUDS_DID_CFG_IDX_0x3E07,
   eUDS_DID_CFG_IDX_0x3E08,
   eUDS_DID_CFG_IDX_0x3E09,
   eUDS_DID_CFG_IDX_0x3E0A,
   eUDS_DID_CFG_IDX_0x3E0B,
   eUDS_DID_CFG_IDX_0x3E0C,
   eUDS_DID_CFG_IDX_0x3E0D,
   eUDS_DID_CFG_IDX_0x3E0E,
   eUDS_DID_CFG_IDX_0x3E0F,
   eUDS_DID_CFG_IDX_0x4D00,
   eUDS_DID_CFG_IDX_0x4D01,
   eUDS_DID_CFG_IDX_0x4D02,
   eUDS_DID_CFG_IDX_0x4D03,
   eUDS_DID_CFG_IDX_0x4D04,
   eUDS_DID_CFG_IDX_0x4D05,
   eUDS_DID_CFG_IDX_0x4D06,
   eUDS_DID_CFG_IDX_0x4D07,
   eUDS_DID_CFG_IDX_0x4D08,
   eUDS_DID_CFG_IDX_0x4D09,
   eUDS_DID_CFG_IDX_0x4D0A,
   eUDS_DID_CFG_IDX_0x4D0B,
   eUDS_DID_CFG_IDX_0x4D0C,
   eUDS_DID_CFG_IDX_0x4D0D,
   eUDS_DID_CFG_IDX_0x4D0E,
   eUDS_DID_CFG_IDX_0x4D0F,
   eUDS_DID_CFG_IDX_0x4D10,
   eUDS_DID_CFG_IDX_0x4D11,
   eUDS_DID_CFG_IDX_0x4D12,
   eUDS_DID_CFG_IDX_0x4D13,
   eUDS_DID_CFG_IDX_0x4D14,
   eUDS_DID_CFG_IDX_0x4D15,
   eUDS_DID_CFG_IDX_0x4D16,
   eUDS_DID_CFG_IDX_0x4D17,
   eUDS_DID_CFG_IDX_0x4D18,
   eUDS_DID_CFG_IDX_0x4D19,
   eUDS_DID_CFG_IDX_0x4D1A,
   eUDS_DID_CFG_IDX_0x4D1B,
   eUDS_DID_CFG_IDX_0x4D1C,
   eUDS_DID_CFG_IDX_0x4D1D,
   eUDS_DID_CFG_IDX_0x4D1E,
   eUDS_DID_CFG_IDX_0x4D1F,
   eUDS_DID_CFG_IDX_0x4D20,
   eUDS_DID_CFG_IDX_0x4D21,
   eUDS_DID_CFG_IDX_0x4D22,
   eUDS_DID_CFG_IDX_0x4D23,
   eUDS_DID_CFG_IDX_0x4D24,
   eUDS_DID_CFG_IDX_0x4D25,
   eUDS_DID_CFG_IDX_0x4D26,
   eUDS_DID_CFG_IDX_0x4D27,
   eUDS_DID_CFG_IDX_0x4D28,
   eUDS_DID_CFG_IDX_0x4D29,
   eUDS_DID_CFG_IDX_0x4D2A,
   eUDS_DID_CFG_IDX_0x4D2B,
   eUDS_DID_CFG_IDX_0x4D2C,
   eUDS_DID_CFG_IDX_0x4D2D,
   eUDS_DID_CFG_IDX_0x4D2E,
   eUDS_DID_CFG_IDX_0x4D2F,
   eUDS_DID_CFG_IDX_0x4D30,
   eUDS_DID_CFG_IDX_0x4D31,
   eUDS_DID_CFG_IDX_0x4D32,
   eUDS_DID_CFG_IDX_0x4D33,
   eUDS_DID_CFG_IDX_0x4D34,
   eUDS_DID_CFG_IDX_0x4D35,
   eUDS_DID_CFG_IDX_0x4D36,
   eUDS_DID_CFG_IDX_0x4D37,
   eUDS_DID_CFG_IDX_0x4D38,
   eUDS_DID_CFG_IDX_0x4D39,
   eUDS_DID_CFG_IDX_0x4D3A,
   eUDS_DID_CFG_IDX_0x4D3B,
   eUDS_DID_CFG_IDX_0x4D3C,
   eUDS_DID_CFG_IDX_0x4D3D,
   eUDS_DID_CFG_IDX_0xDF20,
   eUDS_DID_CFG_IDX_0xDF21,
   eUDS_DID_CFG_IDX_0xDF23,
   eUDS_DID_CFG_IDX_0xDF29,
   eUDS_DID_CFG_IDX_0xDF2A,
   eUDS_DID_CFG_IDX_0xDF2C,
   eUDS_DID_CFG_IDX_0xDFEA,
   eUDS_DID_CFG_IDX_0xDFEB,
   eUDS_DID_CFG_IDX_0xDFEC,
   eUDS_DID_CFG_IDX_0xDFED,
   eUDS_DID_CFG_IDX_0xF18A,
   eUDS_DID_CFG_IDX_0xF197,
   eUDS_DID_CFG_IDX_0xF187,
   eUDS_DID_CFG_IDX_0xF188,
   eUDS_DID_CFG_IDX_0xF191,
   eUDS_DID_CFG_IDX_0xF193,
   eUDS_DID_CFG_IDX_0xF189,
   eUDS_DID_CFG_IDX_0xF190,
   eUDS_DID_CFG_IDX_0xB303,
   eUDS_DID_CFG_IDX_0xF18C,
   eUDS_DID_CFG_IDX_0xF1E0,

   eUDS_DID_CFG_MAX_NO
};




extern const uint16 UDS_ku16DidCfgSetSize;
extern const UDS_tDidCfgType UDS_katDidCfgSet[eUDS_DID_CFG_MAX_NO];
# 14 "bswcdd\\UDS\\UDS_DidModule.h" 2




extern void UDS_vidDIDModuleInit(void);
extern void UDS_vidReadDIDData(const uint16 ku16CfgIdx, uint8 * Data);
extern void UDS_vidWriteDIDData(const uint16 ku16CfgIdx, const uint8 * Data);
extern void UDS_vidUpdateDidBuf(const uint16 ku16CfgIdx, const CDD_uCTablePtr kpxSrcVal, const UDS_eSrcDataType eDataType);
# 13 "bswcdd\\UDS\\UDS_DidDataUpdate.h" 2
# 34 "bswcdd\\UDS\\UDS_DidDataUpdate.h"
extern void UDS_vidFrazeFrameInit(void);

extern void UDS_vidUpdateDidData_0xF187(const uint8 * pku8Data);
extern void UDS_vidUpdateDidData_0xF18A(const uint8 * pku8Data);
extern void UDS_vidUpdateDidData_0xF18B(const uint8 * pku8Data);
extern void UDS_vidUpdateDidData_0xF193(const uint8 * pku8Data);
extern void UDS_vidUpdateDidData_0xF195(const uint8 * pku8Data);
extern void UDS_vidUpdateDidData_0xF19A(const uint8 * pku8Data);

extern void UDS_vidUpdateDidData_0xD000(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD001(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD002(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD003(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD004(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD005(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);

extern void UDS_vidUpdateDidData_0xD007(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD008(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD009(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD010(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD011(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD012(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD013(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD014(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD015(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD016(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD017(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD018(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD019(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);


extern void UDS_vidUpdateDidData_0xD020(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD021(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD022(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD023(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD024(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD025(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD026(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD027(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD028(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD029(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD030(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD031(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD032(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD033(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD034(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD035(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD036(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD037(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD038(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD039(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD040(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD041(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD042(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD043(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD044(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD045(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD046(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD047(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD048(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xD049(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x0D2A_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x0D2A_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x0D2A_3(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x0D2A_4(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x0D2B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D00(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D01(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D02(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D03(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D04(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D05(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D06(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D07(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D08(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D09(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D0A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D0B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D0C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D0C_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D0C_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D0D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D0E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D0F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D10(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D11(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D12(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D13(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D14(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D15(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D16(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D17(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D18(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D19(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D1A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D1B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D1C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D1D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D1E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D1F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D22(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D24(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D25(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D26(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D27(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D28(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D29(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D2A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D2A_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D2A_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D2A_3(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D2A_4(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x1D2B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D02(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D03(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D04(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D05(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D06(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D07(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D08(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D09(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D0A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D0C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D0C_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D0C_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D0D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D0E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D11(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D12(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D13(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D14(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D15(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D1C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D1D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D1E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D1F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D22(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D24(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D25(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D26(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D27(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x2D28(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D02(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D03(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D04(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D05(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D06(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D07(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D08(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D09(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D0A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D0C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D0C_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D0C_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D0D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D0E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D11(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D12(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D13(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D14(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D15(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D1C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D1D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D1E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D1F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D22(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D24(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D25(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D26(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D27(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x3D28(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D00(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D01(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D02(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D03(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D04(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D05(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D06(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D07(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D08(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D09(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D0A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D0B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D0C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D0D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D0E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D0F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D10(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D11(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D12(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D13(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D14(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D15(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D16(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D17(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D18(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D19(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D1A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D1B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D1C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D1D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D1E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D1F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D22(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D24(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D25(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D26(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D27(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D28(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D29(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D2A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D2B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D2C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D2D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D2E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D2F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D30(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D31(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D32(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D33(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D34(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D35(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D36(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D37(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D38(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D39(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D3A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D3B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D3C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0x4D3D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xDF20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xDF21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xDF23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xDF29(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xDF2A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
extern void UDS_vidUpdateDidData_0xDF2C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType);
# 14 "bswcdd\\UDS\\UDS_DidDataUpdate.c" 2
# 26 "bswcdd\\UDS\\UDS_DidDataUpdate.c"
void UDS_vidUpdateDidData_0xF18A(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF18A, pku8Data);
}

void UDS_vidUpdateDidData_0xF197(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF197, pku8Data);
}

void UDS_vidUpdateDidData_0xF187(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF187, pku8Data);
}

void UDS_vidUpdateDidData_0xF188(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF188, pku8Data);
}

void UDS_vidUpdateDidData_0xF191(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF191, pku8Data);
}

void UDS_vidUpdateDidData_0xF193(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF193, pku8Data);
}

void UDS_vidUpdateDidData_0xF189(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF189, pku8Data);
}

void UDS_vidUpdateDidData_0xF190(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF190, pku8Data);
}

void UDS_vidUpdateDidData_0xB303(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xB303, pku8Data);
}

void UDS_vidUpdateDidData_0xF18C(const uint8 * pku8Data)
{
   UDS_vidWriteDIDData(eUDS_DID_CFG_IDX_0xF18C, pku8Data);
}

void UDS_vidUpdateDidData_0xD000(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD000, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD001(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD001, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD002(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD002, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD003(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD003, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD004(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD004, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD005(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD005, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x0B20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x0B20, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x0B21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x0B21, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x0B22(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x0B22, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x0B23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x0B23, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD007(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD007, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD008(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD008, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD009(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD009, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD010(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD010, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD011(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD011, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD012(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD012, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD013(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD013, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD014(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD014, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD015(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD015, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD016(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD016, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD017(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD017, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD018(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD018, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD019(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD019, kxSrcVal, eDataType);
}
# 203 "bswcdd\\UDS\\UDS_DidDataUpdate.c"
void UDS_vidUpdateDidData_0xD020(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD020, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD021(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD021, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD022(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD022, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD023(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD023, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD024(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD024, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD025(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD025, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD026(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD026, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD027(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD027, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD028(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD028, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD029(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD029, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD030(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD030, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD031(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD031, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD032(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD032, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD033(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD033, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD034(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD034, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD035(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD035, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD036(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD036, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD037(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD037, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD038(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD038, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD039(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD039, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD040(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD040, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD041(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD041, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD042(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD042, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD043(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD043, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD044(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD044, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD045(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD045, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD046(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD046, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD047(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD047, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD048(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD048, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xD049(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xD049, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x0D2A_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x0D2A_1, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x0D2A_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x0D2A_2, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x0D2A_3(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x0D2A_3, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x0D2A_4(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x0D2A_4, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x0D2B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x0D2B, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D00(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D00, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D01(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D01, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D02(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D02, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D03(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D03, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D04(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D04, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D05(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D05, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D06(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D06, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D07(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D07, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D08(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D08, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D09(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D09, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D0A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D0A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D0B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D0B, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D0C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D0C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D0C_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D0C_1, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D0C_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D0C_2, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D0D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D0D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D0E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D0E, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D0F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D0F, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D10(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D10, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D11(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D11, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D12(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D12, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D13(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D13, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D14(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D14, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D15(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D15, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D16(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D16, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D17(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D17, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D18(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D18, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D19(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D19, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D1A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D1A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D1B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D1B, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D1C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D1C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D1D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D1D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D1E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D1E, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D1F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D1F, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D20, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D21, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D22(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D22, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D23, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D24(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D24, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D25(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D25, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D26(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D26, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D27(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D27, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D28(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D28, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D29(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D29, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D2A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D2A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D2A_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D2A_1, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D2A_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D2A_2, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D2A_3(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D2A_3, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D2A_4(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D2A_4, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x1D2B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x1D2B, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D02(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D02, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D03(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D03, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D04(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D04, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D05(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D05, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D06(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D06, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D07(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D07, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D08(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D08, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D09(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D09, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D0A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D0A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D0C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D0C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D0C_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D0C_1, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D0C_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D0C_2, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D0D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D0D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D0E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D0E, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D11(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D11, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D12(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D12, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D13(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D13, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D14(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D14, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D15(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D15, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D1C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D1C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D1D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D1D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D1E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D1E, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D1F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D1F, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D20, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D21, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D22(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D22, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D23, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D24(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D24, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D25(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D25, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D26(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D26, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D27(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D27, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x2D28(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x2D28, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D02(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D02, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D03(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D03, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D04(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D04, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D05(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D05, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D06(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D06, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D07(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D07, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D08(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D08, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D09(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D09, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D0A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D0A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D0C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D0C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D0C_1(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D0C_1, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D0C_2(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D0C_2, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D0D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D0D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D0E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D0E, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D11(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D11, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D12(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D12, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D13(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D13, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D14(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D14, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D15(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D15, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D1C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D1C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D1D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D1D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D1E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D1E, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D1F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D1F, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D20, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D21, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D22(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D22, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D23, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D24(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D24, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D25(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D25, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D26(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D26, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D27(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D27, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x3D28(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x3D28, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D00(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D00, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D01(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D01, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D02(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D02, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D03(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D03, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D04(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D04, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D05(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D05, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D06(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D06, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D07(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D07, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D08(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D08, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D09(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D09, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D0A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D0A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D0B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D0B, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D0C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D0C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D0D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D0D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D0E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D0E, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D0F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D0F, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D10(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D10, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D11(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D11, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D12(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D12, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D13(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D13, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D14(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D14, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D15(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D15, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D16(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D16, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D17(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D17, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D18(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D18, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D19(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D19, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D1A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D1A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D1B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D1B, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D1C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D1C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D1D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D1D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D1E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D1E, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D1F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D1F, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D20, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D21, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D22(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D22, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D23, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D24(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D24, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D25(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D25, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D26(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D26, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D27(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D27, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D28(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D28, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D29(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D29, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D2A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D2A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D2B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D2B, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D2C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D2C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D2D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D2D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D2E(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D2E, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D2F(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D2F, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D30(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D30, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D31(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D31, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D32(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D32, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D33(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D33, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D34(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D34, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D35(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D35, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D36(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D36, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D37(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D37, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D38(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D38, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D39(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D39, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D3A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D3A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D3B(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D3B, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D3C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D3C, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0x4D3D(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0x4D3D, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xDF20(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xDF20, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xDF21(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xDF21, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xDF23(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xDF23, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xDF29(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xDF29, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xDF2A(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xDF2A, kxSrcVal, eDataType);
}

void UDS_vidUpdateDidData_0xDF2C(const CDD_uCTablePtr kxSrcVal, const UDS_eSrcDataType eDataType)
{
   (void)UDS_vidUpdateDidBuf(eUDS_DID_CFG_IDX_0xDF2C, kxSrcVal, eDataType);
}



void UDS_vidFrazeFrameInit(void)
{
   float32 f32InitVal = 0.0f;

   UDS_vidUpdateDidData_0xD000((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD001((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD002((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD003((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD004((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD005((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));

   UDS_vidUpdateDidData_0xD007((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD008((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD009((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD010((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD011((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD012((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD013((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD014((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD015((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD016((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD017((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD018((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD019((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));


   UDS_vidUpdateDidData_0xD020((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD021((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD022((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD023((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD024((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD025((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD026((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD027((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD028((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD029((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD030((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD031((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD032((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD033((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD034((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD035((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD036((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD037((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD038((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD039((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD040((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD041((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD042((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD043((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD044((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD045((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD046((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD047((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD048((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xD049((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x0D2A_1((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x0D2A_2((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x0D2A_3((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x0D2A_4((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x0D2B((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D00((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D01((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D02((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D03((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D04((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D05((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D06((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D07((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D08((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D09((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D0A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D0B((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D0C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D0C_1((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D0C_2((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D0D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D0E((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D0F((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D10((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D11((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D12((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D13((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D14((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D15((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D16((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D17((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D18((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D19((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D1A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D1B((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D1C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D1D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D1E((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D1F((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D20((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D21((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D22((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D23((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D24((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D25((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D26((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D27((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D28((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D29((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D2A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D2A_1((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D2A_2((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D2A_3((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D2A_4((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x1D2B((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D02((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D03((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D04((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D05((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D06((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D07((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D08((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D09((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D0A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D0C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D0C_1((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D0C_2((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D0D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D0E((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D11((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D12((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D13((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D14((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D15((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D1C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D1D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D1E((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D1F((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D20((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D21((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D22((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D23((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D24((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D25((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D26((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D27((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x2D28((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D02((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D03((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D04((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D05((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D06((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D07((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D08((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D09((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D0A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D0C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D0C_1((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D0C_2((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D0D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D0E((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D11((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D12((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D13((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D14((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D15((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D1C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D1D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D1E((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D1F((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D20((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D21((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D22((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D23((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D24((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D25((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D26((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D27((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x3D28((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D00((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D01((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D02((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D03((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D04((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D05((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D06((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D07((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D08((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D09((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D0A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D0B((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D0C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D0D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D0E((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D0F((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D10((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D11((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D12((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D13((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D14((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D15((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D16((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D17((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D18((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D19((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D1A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D1B((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D1C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D1D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D1E((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D1F((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D20((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D21((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D22((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D23((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D24((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D25((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D26((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D27((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D28((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D29((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D2A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D2B((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D2C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D2D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D2E((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D2F((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D30((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D31((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D32((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D33((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D34((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D35((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D36((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D37((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D38((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D39((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D3A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D3B((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D3C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0x4D3D((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xDF20((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xDF21((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xDF23((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xDF29((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xDF2A((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
   UDS_vidUpdateDidData_0xDF2C((CDD_uCTablePtr)&f32InitVal, (__builtin_types_compatible_p(typeof(f32InitVal), sint32) ? eUDS_DID_SRC_DATA_TYPE_SINT32 : __builtin_types_compatible_p(typeof(f32InitVal), sint8) ? eUDS_DID_SRC_DATA_TYPE_SINT8 : __builtin_types_compatible_p(typeof(f32InitVal), float32) ? eUDS_DID_SRC_DATA_TYPE_FLOAT32 : __builtin_types_compatible_p(typeof(f32InitVal), double) ? eUDS_DID_SRC_DATA_TYPE_DOUBLE : __builtin_types_compatible_p(typeof(f32InitVal), short) ? eUDS_DID_SRC_DATA_TYPE_SHORT : __builtin_types_compatible_p(typeof(f32InitVal), long) ? eUDS_DID_SRC_DATA_TYPE_LONG : __builtin_types_compatible_p(typeof(f32InitVal), uint8) ? eUDS_DID_SRC_DATA_TYPE_UINT8 : __builtin_types_compatible_p(typeof(f32InitVal), uint16) ? eUDS_DID_SRC_DATA_TYPE_UINT16 : __builtin_types_compatible_p(typeof(f32InitVal), uint32) ? eUDS_DID_SRC_DATA_TYPE_UINT32 : eUDS_DID_SRC_DATA_TYPE_UNDEF));
}
