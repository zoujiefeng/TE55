# 1 "bswcdd\\UDS\\UDS_DidCallbackWrite.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\UDS\\UDS_DidCallbackWrite.c"
# 12 "bswcdd\\UDS\\UDS_DidCallbackWrite.c"
# 1 "bswcdd\\UDS\\UDS_DidCallback.h" 1
# 15 "bswcdd\\UDS\\UDS_DidCallback.h"
# 1 "bswcdd\\UDS\\UDS_DidTypes.h" 1
# 11 "bswcdd\\UDS\\UDS_DidTypes.h"
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
# 16 "bswcdd\\UDS\\UDS_DidCallback.h" 2
# 25 "bswcdd\\UDS\\UDS_DidCallback.h"
extern void UDS_vidCallbackPreRead_F10A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F10A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F187(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F187(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F18A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F18A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F18B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F18B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F18C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F18C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F190(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F190(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F1B7(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F1B7(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_F19A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPostRead_F19A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);

extern void UDS_vidCallbackPreRead_0x0B01(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0B0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D10(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A_1(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A_2(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A_3(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2A_4(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0D2B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E01(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x0E0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D10(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A_1(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A_2(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A_3(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2A_4(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1D2B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E01(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x1E0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0C_1(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0C_2(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D23(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D24(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D27(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2D28(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x2E0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0C_1(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0C_2(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D23(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D24(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D27(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3D28(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x3E0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D01(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D02(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D03(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D04(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D05(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D06(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D07(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D08(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D09(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D0F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D10(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D11(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D12(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D13(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D14(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D15(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D16(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D17(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D18(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D19(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1A(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1B(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1C(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1D(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1E(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D1F(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D20(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D21(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D22(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D23(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D24(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D25(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreRead_0x4D26(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);



extern void UDS_vidCallbackPreWrite_0x0E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
extern void UDS_vidCallbackPreWrite_0x1E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data);
# 13 "bswcdd\\UDS\\UDS_DidCallbackWrite.c" 2



# 1 ".\\output\\inc/MAIN_tsk.h" 1
# 1 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h" 1
# 37 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h" 2
# 55 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h"
# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 56 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h" 2

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h" 2






# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h" 2
extern boolean MAIN_bAscFlag;
extern boolean MAIN_bESMStarted;
extern boolean MAIN_bVSIStarted;
extern boolean MAIN_bComDisableFlg;
extern uint16 MAIN_u16Core0Cnt1;
extern uint16 MAIN_u16Core0Cnt2;
extern uint16 MAIN_u16Core0Cnt5;
extern uint16 MAIN_u16Core0Cnt10;
extern uint16 MAIN_u16Core0Cnt100;
extern uint16 MAIN_u16Core0Cnt200;
extern uint16 MAIN_u16PWMPeriodVal;
extern volatile sint32 MAIN_as32OCTrimNvm[( 5 )];
extern uint32 Core0_u32ModReqStartTime;
extern uint32 Core0_u32ModReqStopTime;
extern uint32 Core0_u32ModReqTotalTime;
extern uint32 Core0_Asw100msStartTime;
extern uint32 Core0_Asw100msStopTime;
extern uint32 Core0_Asw100msTotalTime;
extern uint32 Core0_Asw10msStartTime;
extern uint32 Core0_Asw10msStopTime;
extern uint32 Core0_Asw10msTotalTime;
extern uint32 Core0_Bsw100msStartTime;
extern uint32 Core0_Bsw100msStopTime;
extern uint32 Core0_Bsw100msTotalTime;
extern uint32 Core0_Bsw10msStartTime;
extern uint32 Core0_Bsw10msStopTime;
extern uint32 Core0_Bsw10msTotalTime;
extern uint32 Core0_Bsw1msStartTime;
extern uint32 Core0_Bsw1msStopTime;
extern uint32 Core0_Bsw1msTotalTime;
extern uint32 Core0_Bsw50msStartTime;
extern uint32 Core0_Bsw50msStopTime;
extern uint32 Core0_Bsw50msTotalTime;
extern uint32 MAIN_startTime;
extern uint32 MAIN_EndTime;
extern uint32 MAIN_TotalTime;
extern uint32 Core1_Asw10msStartTime;
extern uint32 Core1_Asw10msStopTime;
extern uint32 Core1_Asw10msTotalTime;
extern uint32 Core1_Asw1msStartTime;
extern uint32 Core1_Asw1msStopTime;
extern uint32 Core1_Asw1msTotalTime;
extern uint32 Core1_Bsw10msStartTime;
extern uint32 Core1_Bsw10msStopTime;
extern uint32 Core1_Bsw10msTotalTime;
extern uint32 Core1_PositionStartTime;
extern uint32 Core1_PositionStopTime;
extern uint32 Core1_PositionTotalTime;
extern uint32 Core2_Asw10msStartTime;
extern uint32 Core2_Asw10msStopTime;
extern uint32 Core2_Asw10msTotalTime;
extern uint32 Core2_Asw1msStartTime;
extern uint32 Core2_Asw1msStopTime;
extern uint32 Core2_Asw1msTotalTime;
extern uint32 Core2_Bsw10msStartTime;
extern uint32 Core2_Bsw10msStopTime;
extern uint32 Core2_Bsw10msTotalTime;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 124 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h" 2





void MAIN_TaskInit(void);
boolean MAIN_bInitOcTrimData(void);
boolean MAIN_bChkOcCondition(void);
boolean MAIN_bSetSaforiAutophsAngC(const uint16);
float MAIN_f32GetAutophsingAngle(void);
void MAIN_vidPositionTreatment(void);
void MAIN_vidVSITreatment(void);
extern void MAIN_vidOcDataRestore(void);
boolean MAIN_vidGetProgCondition(void);
# 2 ".\\output\\inc/MAIN_tsk.h" 2
# 17 "bswcdd\\UDS\\UDS_DidCallbackWrite.c" 2
# 1 ".\\output\\inc/GMAIN_tsk.h" 1
# 1 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h" 1
# 37 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h" 2
# 55 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h"
# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 56 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h" 2

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 88 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 2
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h" 2






# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h" 2
extern boolean GMAIN_bAscFlag;
extern boolean GMAIN_bESMStarted;
extern boolean GMAIN_bVSIStarted;
extern boolean GMAIN_ESMGo2StartupIEvent;
extern uint16 GMAIN_u16Core0Cnt5;
extern uint16 GMAIN_u16Core1Cnt1;
extern uint16 GMAIN_u16Core0Cnt100;
extern uint16 GMAIN_u16Core2Cnt10;
extern uint16 GMAIN_u16PWMPeriodVal;
extern volatile sint32 GMAIN_as32OCTrimNvm[( 5 )];
extern uint32 GMAIN_startTime;
extern uint32 GMAIN_EndTime;
extern uint32 GMAIN_TotalTime;
extern uint32 GCore1_PositionStartTime;
extern uint32 GCore1_PositionStopTime;
extern uint32 GCore1_PositionTotalTime;

# 1 ".\\output\\inc/MAIN_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\main\\MAIN_MemMap.h" 1
# 2 ".\\output\\inc/MAIN_MemMap.h" 2
# 83 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h" 2





void GMAIN_TaskInit(void);
boolean GMAIN_bInitOcTrimData(void);
boolean GMAIN_bChkOcCondition(void);
boolean GMAIN_bSetSaforiAutophsAngC(const uint16);
boolean GMAIN_bSetSimensAutophsAngC(const uint16);
float GMAIN_f32GetAutophsingAngle(void);
void GMAIN_vidPositionTreatment(void);
void GMAIN_vidVSITreatment(void);
extern void GMAIN_vidOcDataRestore(void);
boolean GMAIN_vidGetProgCondition(void);
# 2 ".\\output\\inc/GMAIN_tsk.h" 2
# 18 "bswcdd\\UDS\\UDS_DidCallbackWrite.c" 2
# 29 "bswcdd\\UDS\\UDS_DidCallbackWrite.c"
void UDS_vidCallbackPreWrite_0x0E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data)
{

   uint16 u16LocAutophsAngle;

   u16LocAutophsAngle = (uint16)(Data[0] << 8) + (uint16)(Data[1]);
   (void)MAIN_bSetSaforiAutophsAngC((const uint16)u16LocAutophsAngle);

}

void UDS_vidCallbackPreWrite_0x1E00(const UDS_tDidCfgType * const kpktCfg, uint8 * Data)
{

   uint16 u16LocAutophsAngle;

   u16LocAutophsAngle = (uint16)(Data[0] << 8) + (uint16)(Data[1]);
   (void)GMAIN_bSetSaforiAutophsAngC((const uint16)u16LocAutophsAngle);

}
