
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_PduCtrl.h"
#include "PortMux.h"

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct MAIN_PDUC_KMCtrlByte0{
    uint8 bK1_KCF_XJCQ1 : 1;
    uint8 bK2_KCF_XJCQ2 : 1;
    uint8 bK3_KCF_XJCQ3 : 1;
    uint8 bK4_KCF_XJCQ4 : 1;
    uint8 bKM5_KC1Z     : 1;
    uint8 bKM7_KC2Z     : 1;
    uint8 bKM9_KC3Z     : 1;
    uint8 bKM11_KC4Z    : 1;
}MAIN_PDUC_KMCtrlByte0;

typedef struct MAIN_PDUC_KMCtrlByte1{
    uint8 bKM6_KC1F    : 1;
    uint8 bKM8_KC2F    : 1;
    uint8 bKM10_KC3F   : 1;
    uint8 bKM12_KC4F   : 1;
    uint8 bKM13_SZ1    : 1;
    uint8 bKM14_XGLFZ  : 1;
    uint8 bKM15_ZXFZ   : 1;
    uint8 bReserved    : 1;
}MAIN_PDUC_KMCtrlByte1;

typedef union MAIN_PDUC_KMCtrlMap{
   uint8 U;
   MAIN_PDUC_KMCtrlByte0   u8CtrlByte0;
   MAIN_PDUC_KMCtrlByte1   u8CtrlByte1;
}MAIN_PDUC_KMCtrlMap;

enum{
   eMAIN_PDUC_CTRL_BYTE_0 = 0,  /* MSB */
   eMAIN_PDUC_CTRL_BYTE_1,

   eMAIN_PDUC_CTRL_MAX_NO
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 **** Private Variable Definitions
 ******************************************************************************/
static MAIN_PDUC_KMCtrlMap MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_MAX_NO] = {{.U = 0}};

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void MAIN_PDUC_vidCtrl_K1_KCF_XJCQ1(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bK1_KCF_XJCQ1 = bState;
}

void MAIN_PDUC_vidCtrl_K2_KCF_XJCQ2(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bK2_KCF_XJCQ2 = bState;
}

void MAIN_PDUC_vidCtrl_K3_KCF_XJCQ3(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bK3_KCF_XJCQ3 = bState;
}

void MAIN_PDUC_vidCtrl_K4_KCF_XJCQ4(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bK4_KCF_XJCQ4 = bState;
}

void MAIN_PDUC_vidCtrl_KM5_KC1Z(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bKM5_KC1Z = bState;
}

void MAIN_PDUC_vidCtrl_KM7_KC2Z(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bKM7_KC2Z = bState;
}

void MAIN_PDUC_vidCtrl_KM9_KC3Z(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bKM9_KC3Z = bState;
}

void MAIN_PDUC_vidCtrl_KM11_KC4Z(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_0].u8CtrlByte0.bKM11_KC4Z = bState;
}

void MAIN_PDUC_vidCtrl_KM6_KC1F(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM6_KC1F = bState;
}

void MAIN_PDUC_vidCtrl_KM8_KC2F(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM8_KC2F = bState;
}

void MAIN_PDUC_vidCtrl_KM10_KC3F(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM10_KC3F = bState;
}

void MAIN_PDUC_vidCtrl_KM12_KC4F(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM12_KC4F = bState;
}

void MAIN_PDUC_vidCtrl_KM13_SZ1(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM13_SZ1 = bState;
}

void MAIN_PDUC_vidCtrl_KM14_XGLFZ(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM14_XGLFZ = bState;
}

void MAIN_PDUC_vidCtrl_KM15_ZXFZ(MAIN_PDUC_KMState eKMState)
{
   boolean bState = (eMAIN_PDUC_KM_STATE_CLOSE == eKMState) ? TRUE : FALSE;
   MAIN_PDUC_au8KMCtrlMap[eMAIN_PDUC_CTRL_BYTE_1].u8CtrlByte1.bKM15_ZXFZ = bState;
}

void MAIN_PDUC_vidMainFunction(void)
{
   PMux_vidShiftOutMultiBytes(&(MAIN_PDUC_au8KMCtrlMap[0].U), eMAIN_PDUC_CTRL_MAX_NO, ePMUX_SHIFT_REG_2);
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
