# 1 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.c"
# 9 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.c"
# 1 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.h" 1







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
# 9 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.h" 2
# 21 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.h"
typedef enum MAIN_PDUC_KMState{
   eMAIN_PDUC_KM_STATE_OPEN = 0,
   eMAIN_PDUC_KM_STATE_CLOSE,

   eMAIN_PDUC_KM_STATE_UNDEF
}MAIN_PDUC_KMState;
# 47 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.h"
extern void MAIN_PDUC_vidMainFunction(void);
extern void MAIN_PDUC_vidCtrl_K1_KCF_XJCQ1(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_K2_KCF_XJCQ2(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_K3_KCF_XJCQ3(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_K4_KCF_XJCQ4(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM5_KC1Z(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM7_KC2Z(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM9_KC3Z(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM11_KC4Z(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM6_KC1F(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM8_KC2F(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM10_KC3F(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM12_KC4F(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM13_SZ1(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM14_XGLFZ(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM15_ZXFZ(MAIN_PDUC_KMState eKMState);
# 10 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.c" 2
# 1 ".\\output\\inc/PortMux.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h" 1



# 1 ".\\output\\inc/Std_types.h" 1
# 5 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h" 2

typedef enum{
    ePMux_DIOInputMux1 = 0,
    ePMux_DIOInputMux2,
    ePMux_DIOInputMux3,
    ePMUX_ANInputMux1,
    ePMUX_ANInputMux2,
    ePMUX_ANInputMux3,
    ePMUX_ANInputMux4,
    ePMUX_ANInputMux5,
    ePMUX_ANInputMux6,
    ePMUX_ANInputMux7,
    ePMUX_ANInputMux8,
    ePMUX_ANInputMux9,
    ePMUX_ANInputMux10,
    ePMUX_ANInputMux11,
    ePMUX_ANInputMux12,
    ePMUX_InputMuxMaxNum,
}PMux_InputMuxIndex;

typedef enum {
    ePMUX_DIO0_MUX1 = (0 | (ePMux_DIOInputMux1 << 4)),
    ePMUX_DIO1_MUX1,
    ePMUX_DIO2_MUX1,
    ePMUX_DIO3_MUX1,
    ePMUX_DIO4_MUX1,
    ePMUX_DIO5_MUX1,
    ePMUX_DIO6_MUX1,
    ePMUX_DIO7_MUX1,
    ePMUX_DIOInputMux1MaxChannelNum
}PMux_DIOInputMux1;

typedef enum {
    ePMUX_DIO0_MUX2 = (0 | (ePMux_DIOInputMux2 << 4)),
    ePMUX_DIO1_MUX2,
    ePMUX_DIO2_MUX2,
    ePMUX_DIO3_MUX2,
    ePMUX_DIO4_MUX2,
    ePMUX_DIO5_MUX2,
    ePMUX_DIO6_MUX2,
    ePMUX_DIO7_MUX2,
    ePMUX_DIOInputMux2MaxChannelNum
}PMux_DIOInputMux2;

typedef enum {
    ePMUX_DIO0_MUX3 = (0 | (ePMux_DIOInputMux3 << 4)),
    ePMUX_DIO1_MUX3,
    ePMUX_DIO2_MUX3,
    ePMUX_DIO3_MUX3,
    ePMUX_DIO4_MUX3,
    ePMUX_DIO5_MUX3,
    ePMUX_DIO6_MUX3,
    ePMUX_DIO7_MUX3,
    ePMUX_DIOInputMux3MaxChannelNum
}PMux_DIOInputMux3;

typedef enum {
    ePMUX_AN0_MUX1 = (0 | (ePMUX_ANInputMux1 << 4)),
    ePMUX_AN1_MUX1,
    ePMUX_AN2_MUX1,
    ePMUX_AN3_MUX1,
    ePMUX_AN4_MUX1,
    ePMUX_AN5_MUX1,
    ePMUX_AN6_MUX1,
    ePMUX_AN7_MUX1,
    ePMUX_ANInputMux1MaxChannelNum
}PMux_ANInputMux1;

typedef enum {
    ePMUX_AN0_MUX2 = (0 | (ePMUX_ANInputMux2 << 4)),
    ePMUX_AN1_MUX2,
    ePMUX_AN2_MUX2,
    ePMUX_AN3_MUX2,
    ePMUX_AN4_MUX2,
    ePMUX_AN5_MUX2,
    ePMUX_AN6_MUX2,
    ePMUX_AN7_MUX2,
    ePMux_ANInputMux2MaxChannelNum
}PMux_ANInputMux2;

typedef enum {
    ePMUX_AN0_MUX3 = (0 | (ePMUX_ANInputMux3 << 4)),
    ePMUX_AN1_MUX3,
    ePMUX_AN2_MUX3,
    ePMUX_AN3_MUX3,
    ePMUX_AN4_MUX3,
    ePMUX_AN5_MUX3,
    ePMUX_AN6_MUX3,
    ePMUX_AN7_MUX3,
    ePMux_ANInputMux3MaxChannelNum
}PMux_ANInputMux3;

typedef enum {
    ePMUX_AN0_MUX4 = (0 | (ePMUX_ANInputMux4 << 4)),
    ePMUX_AN1_MUX4,
    ePMUX_AN2_MUX4,
    ePMUX_AN3_MUX4,
    ePMUX_AN4_MUX4,
    ePMUX_AN5_MUX4,
    ePMUX_AN6_MUX4,
    ePMUX_AN7_MUX4,
    ePMux_ANInputMux4MaxChannelNum
}PMux_ANInputMux4;

typedef enum {
    ePMUX_AN0_MUX5 = (0 | (ePMUX_ANInputMux5 << 4)),
    ePMUX_AN1_MUX5,
    ePMUX_AN2_MUX5,
    ePMUX_AN3_MUX5,
    ePMUX_AN4_MUX5,
    ePMUX_AN5_MUX5,
    ePMUX_AN6_MUX5,
    ePMUX_AN7_MUX5,
    ePMux_ANInputMux5MaxChannelNum
}PMux_ANInputMux5;

typedef enum {
    ePMUX_AN0_MUX6 = (0 | (ePMUX_ANInputMux6 << 4)),
    ePMUX_AN1_MUX6,
    ePMUX_AN2_MUX6,
    ePMUX_AN3_MUX6,
    ePMUX_AN4_MUX6,
    ePMUX_AN5_MUX6,
    ePMUX_AN6_MUX6,
    ePMUX_AN7_MUX6,
    ePMux_ANInputMux6MaxChannelNum
}PMux_ANInputMux6;

typedef enum {
    ePMUX_AN0_MUX7 = (0 | (ePMUX_ANInputMux7 << 4)),
    ePMUX_AN1_MUX7,
    ePMUX_AN2_MUX7,
    ePMUX_AN3_MUX7,
    ePMUX_AN4_MUX7,
    ePMUX_AN5_MUX7,
    ePMUX_AN6_MUX7,
    ePMUX_AN7_MUX7,
    ePMux_ANInputMux7MaxChannelNum
}PMux_ANInputMux7;

typedef enum {
    ePMUX_AN0_MUX8 = (0 | (ePMUX_ANInputMux8 << 4)),
    ePMUX_AN1_MUX8,
    ePMUX_AN2_MUX8,
    ePMUX_AN3_MUX8,
    ePMUX_AN4_MUX8,
    ePMUX_AN5_MUX8,
    ePMUX_AN6_MUX8,
    ePMUX_AN7_MUX8,
    ePMux_ANInputMux8MaxChannelNum
}PMux_ANInputMux8;

typedef enum {
    ePMUX_AN0_MUX9 = (0 | (ePMUX_ANInputMux9 << 4)),
    ePMUX_AN1_MUX9,
    ePMUX_AN2_MUX9,
    ePMUX_AN3_MUX9,
    ePMUX_AN4_MUX9,
    ePMUX_AN5_MUX9,
    ePMUX_AN6_MUX9,
    ePMUX_AN7_MUX9,
    ePMux_ANInputMux9MaxChannelNum
}PMux_ANInputMux9;

typedef enum {
    ePMUX_AN0_MUX10 = (0 | (ePMUX_ANInputMux10 << 4)),
    ePMUX_AN1_MUX10,
    ePMUX_AN2_MUX10,
    ePMUX_AN3_MUX10,
    ePMUX_AN4_MUX10,
    ePMUX_AN5_MUX10,
    ePMUX_AN6_MUX10,
    ePMUX_AN7_MUX10,
    ePMux_ANInputMux10MaxChannelNum
}PMux_ANInputMux10;

typedef enum {
    ePMUX_AN0_MUX11 = (0 | (ePMUX_ANInputMux11 << 4)),
    ePMUX_AN1_MUX11,
    ePMUX_AN2_MUX11,
    ePMUX_AN3_MUX11,
    ePMUX_AN4_MUX11,
    ePMUX_AN5_MUX11,
    ePMUX_AN6_MUX11,
    ePMUX_AN7_MUX11,
    ePMux_ANInputMux11MaxChannelNum
}PMux_ANInputMux11;

typedef enum {
    ePMUX_AN0_MUX12 = (0 | (ePMUX_ANInputMux12 << 4)),
    ePMUX_AN1_MUX12,
    ePMUX_AN2_MUX12,
    ePMUX_AN3_MUX12,
    ePMUX_AN4_MUX12,
    ePMUX_AN5_MUX12,
    ePMUX_AN6_MUX12,
    ePMUX_AN7_MUX12,
    ePMux_ANInputMux12MaxChannelNum
}PMux_ANInputMux12;

enum{
    ePMUX_SHIFT_REG_1 = 0,
    ePMUX_SHIFT_REG_2,
    ePMUX_SHIFT_REG_3,

    ePMUX_SHIFT_REG_MAX_NO,
};


extern void PMux_vidMainFunction(const uint8 ku8MuxIndex);
extern uint16 PMux_u16GetInputVal(const uint8 ku8DataIndex);
extern void PMux_vidShiftOutMultiBytes(const uint8 const * kpku8Data, const uint8 ku8Bytes, const uint8 ku8SRID);

extern void PMux_vidMuxHandler_1(void);
extern void PMux_vidMuxHandler_2(void);
extern void PMux_vidMuxHandler_Group3(void);
# 2 ".\\output\\inc/PortMux.h" 2
# 11 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.c" 2
# 19 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.c"
typedef struct MAIN_PDUC_KMCtrlByte0{
    uint8 bK1_KCF_XJCQ1 : 1;
    uint8 bK2_KCF_XJCQ2 : 1;
    uint8 bK3_KCF_XJCQ3 : 1;
    uint8 bK4_KCF_XJCQ4 : 1;
    uint8 bKM5_KC1Z : 1;
    uint8 bKM7_KC2Z : 1;
    uint8 bKM9_KC3Z : 1;
    uint8 bKM11_KC4Z : 1;
}MAIN_PDUC_KMCtrlByte0;

typedef struct MAIN_PDUC_KMCtrlByte1{
    uint8 bKM6_KC1F : 1;
    uint8 bKM8_KC2F : 1;
    uint8 bKM10_KC3F : 1;
    uint8 bKM12_KC4F : 1;
    uint8 bKM13_SZ1 : 1;
    uint8 bKM14_XGLFZ : 1;
    uint8 bKM15_ZXFZ : 1;
    uint8 bReserved : 1;
}MAIN_PDUC_KMCtrlByte1;

typedef union MAIN_PDUC_KMCtrlMap{
   uint8 U;
   MAIN_PDUC_KMCtrlByte0 u8CtrlByte0;
   MAIN_PDUC_KMCtrlByte1 u8CtrlByte1;
}MAIN_PDUC_KMCtrlMap;

enum{
   eMAIN_PDUC_CTRL_BYTE_0 = 0,
   eMAIN_PDUC_CTRL_BYTE_1,

   eMAIN_PDUC_CTRL_MAX_NO
};
# 73 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.c"
static MAIN_PDUC_KMCtrlMap MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_MAX_NO] = {{.U = 0}};
# 82 "main\\_MainModule\\PduCtrl\\MAIN_PduCtrl.c"
void MAIN_PDUC_vidCtrl_K1_KCF_XJCQ1(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bK1_KCF_XJCQ1 = bState;
}

void MAIN_PDUC_vidCtrl_K2_KCF_XJCQ2(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bK2_KCF_XJCQ2 = bState;
}

void MAIN_PDUC_vidCtrl_K3_KCF_XJCQ3(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bK3_KCF_XJCQ3 = bState;
}

void MAIN_PDUC_vidCtrl_K4_KCF_XJCQ4(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bK4_KCF_XJCQ4 = bState;
}

void MAIN_PDUC_vidCtrl_KM5_KC1Z(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bKM5_KC1Z = bState;
}

void MAIN_PDUC_vidCtrl_KM7_KC2Z(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bKM7_KC2Z = bState;
}

void MAIN_PDUC_vidCtrl_KM9_KC3Z(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bKM9_KC3Z = bState;
}

void MAIN_PDUC_vidCtrl_KM11_KC4Z(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bKM11_KC4Z = bState;
}

void MAIN_PDUC_vidCtrl_KM6_KC1F(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM6_KC1F = bState;
}

void MAIN_PDUC_vidCtrl_KM8_KC2F(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM8_KC2F = bState;
}

void MAIN_PDUC_vidCtrl_KM10_KC3F(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM10_KC3F = bState;
}

void MAIN_PDUC_vidCtrl_KM12_KC4F(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM12_KC4F = bState;
}

void MAIN_PDUC_vidCtrl_KM13_SZ1(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM13_SZ1 = bState;
}

void MAIN_PDUC_vidCtrl_KM14_XGLFZ(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM14_XGLFZ = bState;
}

void MAIN_PDUC_vidCtrl_KM15_ZXFZ(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? (1 != 0) : (0 != 0);
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM15_ZXFZ = bState;
}

void MAIN_PDUC_vidMainFunction(void)
{
   PMux_vidShiftOutMultiBytes(&(MAIN_PDUC_au8KMCtrlMap[0].U), eMAIN_PDUC_CTRL_MAX_NO, ePMUX_SHIFT_REG_2);
}
