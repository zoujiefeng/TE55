/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "PortMux.h"
#include "IOHAL.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct PMux_InputMuxCfg PMux_InputMuxCfg;

struct PMux_InputMuxCfg{
    boolean bIsSlaveMux;        /* Active control of the address line is not allowed */
    uint8   u8BufLength;

    uint8  *pu8CurrentAddr;
    uint16 *pu16InputDataBuf;

    void (*vidAddrLineCtrl_A)(uint16 u16Level);
    void (*vidAddrLineCtrl_B)(uint16 u16Level);
    void (*vidAddrLineCtrl_C)(uint16 u16Level);   /* Low Bit */

    uint16 (*u16ReadInputVal)(void);
};

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint8  PMux_au8AddrSet[ePMUX_InputMuxMaxNum] = {0};
static uint16 PMux_au16DataBuf[ePMUX_InputMuxMaxNum][8] = {{0}};

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/
static const PMux_InputMuxCfg PMux_atInputMuxCfgSet[] = {
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_DIOInputMux1MaxChannelNum & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMux_DIOInputMux1]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMux_DIOInputMux1][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_DIOInputMux2MaxChannelNum & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMux_DIOInputMux2]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMux_DIOInputMux2][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2
    },
    {
        .bIsSlaveMux       = FALSE,
        .u8BufLength       = (ePMUX_DIOInputMux3MaxChannelNum & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMux_DIOInputMux3]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMux_DIOInputMux3][0]),

        .vidAddrLineCtrl_A = IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A,
        .vidAddrLineCtrl_B = IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B,
        .vidAddrLineCtrl_C = IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C,

        .u16ReadInputVal   = IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3
    },
    {
        .bIsSlaveMux       = FALSE,
        .u8BufLength       = (ePMUX_ANInputMux1 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux1]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux1][0]),

        .vidAddrLineCtrl_A = IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A,
        .vidAddrLineCtrl_B = IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B,
        .vidAddrLineCtrl_C = IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux2 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux2]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux2][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux3 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux3]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux3][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux4 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux4]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux4][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4
    },
    {
        .bIsSlaveMux       = FALSE,
        .u8BufLength       = (ePMUX_ANInputMux5 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux5]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux5][0]),

        .vidAddrLineCtrl_A = IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A,
        .vidAddrLineCtrl_B = IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B,
        .vidAddrLineCtrl_C = IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux6 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux6]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux6][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux7 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux7]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux7][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux8 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux8]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux8][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux9 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux9]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux9][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux10 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux10]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux10][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux11 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux11]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux11][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11
    },
    {
        .bIsSlaveMux       = TRUE,
        .u8BufLength       = (ePMUX_ANInputMux12 & 0x0F),

        .pu8CurrentAddr    = &(PMux_au8AddrSet[ePMUX_ANInputMux12]),
        .pu16InputDataBuf  = &(PMux_au16DataBuf[ePMUX_ANInputMux12][0]),

        .vidAddrLineCtrl_A = NULL_PTR,
        .vidAddrLineCtrl_B = NULL_PTR,
        .vidAddrLineCtrl_C = NULL_PTR,

        .u16ReadInputVal   = IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12
    },
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
uint8 PMux_u8CheckCfg(void)
{
    uint8 u8LocCfgNum = sizeof(PMux_atInputMuxCfgSet) / sizeof(PMux_InputMuxCfg);

    if(ePMUX_InputMuxMaxNum != u8LocCfgNum)
    {
        /* Error */
        return 1;
    }

    for(u8LocCfgNum = 0; u8LocCfgNum < ePMUX_InputMuxMaxNum; u8LocCfgNum++)
    {
        if(FALSE == PMux_atInputMuxCfgSet[u8LocCfgNum].bIsSlaveMux)
        {
            if((NULL_PTR == PMux_atInputMuxCfgSet[u8LocCfgNum].vidAddrLineCtrl_A)
            || (NULL_PTR == PMux_atInputMuxCfgSet[u8LocCfgNum].vidAddrLineCtrl_B)
            || (NULL_PTR == PMux_atInputMuxCfgSet[u8LocCfgNum].vidAddrLineCtrl_C))
            {
                /* Error */
                return 2;
            }
        }
    }

    return 0;
}

void PMux_vidMainFunction(const uint8 ku8MuxIndex)
{
    boolean bLocPinLevel = FALSE;
    uint8 u8LocCurAddr = *(PMux_atInputMuxCfgSet[ku8MuxIndex].pu8CurrentAddr);
    uint8 u8LocNextAddr = u8LocCurAddr + 1;

    if(u8LocNextAddr >= 8)
    {
        u8LocNextAddr = 0;
    }

    /*  */
    PMux_atInputMuxCfgSet[ku8MuxIndex].pu16InputDataBuf[u8LocCurAddr] = PMux_atInputMuxCfgSet[ku8MuxIndex].u16ReadInputVal();

    /*  */
    if(FALSE == PMux_atInputMuxCfgSet[ku8MuxIndex].bIsSlaveMux)
    {
        bLocPinLevel = (0x01 == (u8LocNextAddr & 0x01));
        PMux_atInputMuxCfgSet[ku8MuxIndex].vidAddrLineCtrl_A(bLocPinLevel);
        bLocPinLevel = (0x02 == (u8LocNextAddr & 0x02));
        PMux_atInputMuxCfgSet[ku8MuxIndex].vidAddrLineCtrl_B(bLocPinLevel);
        bLocPinLevel = (0x04 == (u8LocNextAddr & 0x04));
        PMux_atInputMuxCfgSet[ku8MuxIndex].vidAddrLineCtrl_C(bLocPinLevel);
    }
    else
    {
        /* Active control of the address line is not allowed */
    }

    *(PMux_atInputMuxCfgSet[ku8MuxIndex].pu8CurrentAddr) = u8LocNextAddr;
}

uint16 PMux_u16GetInputVal(const uint8 ku8DataIndex)
{
    uint8 u8LocMuxIndex  = ((ku8DataIndex & 0xF0) >> 4);
    uint8 u8LocDataIndex = ((ku8DataIndex & 0x0F));

    uint16 u16LocInputVal = 0;

    u16LocInputVal = PMux_atInputMuxCfgSet[u8LocMuxIndex].pu16InputDataBuf[u8LocDataIndex];

    return u16LocInputVal;
}

void PMux_vidMuxHandler_1(void)
{
}

void PMux_vidMuxHandler_2(void)
{
    PMux_vidMainFunction(ePMUX_ANInputMux5);
    PMux_vidMainFunction(ePMUX_ANInputMux6);
    PMux_vidMainFunction(ePMUX_ANInputMux7);
    PMux_vidMainFunction(ePMUX_ANInputMux8);
    PMux_vidMainFunction(ePMUX_ANInputMux9);
    PMux_vidMainFunction(ePMUX_ANInputMux10);
    PMux_vidMainFunction(ePMUX_ANInputMux11);
    PMux_vidMainFunction(ePMUX_ANInputMux12);
}

void PMux_vidMuxHandler_Group3(void)
{
    /* Group 1 */
    PMux_vidMainFunction(ePMUX_ANInputMux2);
    PMux_vidMainFunction(ePMUX_ANInputMux3);
    PMux_vidMainFunction(ePMUX_ANInputMux4);
    PMux_vidMainFunction(ePMux_DIOInputMux1);
    PMux_vidMainFunction(ePMux_DIOInputMux2);
    PMux_vidMainFunction(ePMUX_ANInputMux1);  /* Master AN Mux */

    /* Group 2 */
    PMux_vidMainFunction(ePMux_DIOInputMux3); /* Master DIO Mux */
}

/******************************************************************************/
/********************************  HC595  *************************************/
/******************************************************************************/
typedef struct PMux_ShiftRegCfg{
    void (*vidDataPinCtrl)(uint16 u16Level);
    void (*vidSclkPinCtrl)(uint16 u16Level);
    void (*vidLatchPinCtrl)(uint16 u16Level);
}PMux_ShiftRegCfg;

static const PMux_ShiftRegCfg PMux_atShiftRegCfgSet[] = {
    {
        .vidDataPinCtrl  = IOHAL_vidWrite_CH_DIO_OUT_M_SER,
        .vidSclkPinCtrl  = IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK,
        .vidLatchPinCtrl = IOHAL_vidWrite_CH_DIO_OUT_M_RCLK,
    },
    {
        .vidDataPinCtrl  = IOHAL_vidWrite_CH_DIO_OUT_M_SER_2,
        .vidSclkPinCtrl  = IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2,
        .vidLatchPinCtrl = IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2,
    },
    {
        .vidDataPinCtrl  = IOHAL_vidWrite_CH_DIO_OUT_M_SER_3,
        .vidSclkPinCtrl  = IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3,
        .vidLatchPinCtrl = IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3,
    },
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define PMUX_PUSLE_DELAY_TIME     (138)  /* 4us */

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void PMux_vidWait(uint32 time);

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void PMux_vidShiftOutMultiBytes(const uint8 const * kpku8Data, const uint8 ku8Bytes, const uint8 ku8SRID)
{
    uint8 u8CurByte;
    sint8 s8ByteIndex;
    sint8 s8BitIndex;

    for(s8ByteIndex = ku8Bytes - 1; s8ByteIndex >= 0; s8ByteIndex--)
    {
        u8CurByte = kpku8Data[s8ByteIndex];

        for(s8BitIndex = 7; s8BitIndex >= 0; s8BitIndex--)
        {
            if(u8CurByte & (1 << s8BitIndex)) 
            {
                PMux_atShiftRegCfgSet[ku8SRID].vidDataPinCtrl(1);
            }
            else
            {
                PMux_atShiftRegCfgSet[ku8SRID].vidDataPinCtrl(0);
            }

            PMux_vidWait(PMUX_PUSLE_DELAY_TIME);

            PMux_atShiftRegCfgSet[ku8SRID].vidSclkPinCtrl(1);
            PMux_vidWait(PMUX_PUSLE_DELAY_TIME);
            PMux_atShiftRegCfgSet[ku8SRID].vidSclkPinCtrl(0);
            PMux_vidWait(PMUX_PUSLE_DELAY_TIME);
        }
    }

    PMux_atShiftRegCfgSet[ku8SRID].vidLatchPinCtrl(1);
    PMux_vidWait(PMUX_PUSLE_DELAY_TIME);
    PMux_atShiftRegCfgSet[ku8SRID].vidLatchPinCtrl(0);
    PMux_vidWait(PMUX_PUSLE_DELAY_TIME);
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static void PMux_vidWait(uint32 time)
{
   volatile uint32 localu32Counter;

   localu32Counter = time;
   while(localu32Counter > 0)
   {
      localu32Counter--;
   }
}

