/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "ADS1115.h"
#include "ADS1115_Calib.h"
#include "IfxSrc_reg.h"

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
// #define ADS1115_USECOMP (1)//for test


/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void ADS1115_vidReloadConfig(void);
static void ADS1115_vidLoadUserConfig(void);

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
enum {
    eADS1115_CFG_PX_FRAME_INDEX = 0,
    eADS1115_CFG_HIGH_FRAME_INDEX,
    eADS1115_CFG_LOW_FRAME_INDEX,

    eADS1115_CFG_FRAME_MAX_NO
};

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
ADS1115_RegMap ADS1115_axConfig[eADS1115_CFG_FRAME_MAX_NO];

uint8 ADS1115_CurrentPx = ADS1115_RESULT_PX;
uint8 ADS1115_InitConfigSuccess = 0;
uint8 ADS1115_Success = 0;//for test

uint8 Local_au8Result[2];

// uint32 ADS1115_PassCount = 0;//for test
#if ADS1115_USECOMP
ADS1115_thresh ADS1115_xLoThresh = 
{
    .B.Px = ADS1115_LO_THRESH_PX,

    .B.thresh_H = (uint8)(((0x8000) & 0xFF00) >> 8),
    .B.thresh_L = (uint8)((0x8000) & 0x00FF)
};

ADS1115_thresh ADS1115_xHiThresh = 
{
    .B.Px = ADS1115_HI_THRESH_PX,

    .B.thresh_H = (uint8)(((0x7FFF) & 0xFF00) >> 8),
    .B.thresh_L = (uint8)((0x7FFF) & 0x00FF)
};
#endif
/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
//Write ADS1115 Config. Change Px to 01
I2c_ErrorType ADS1115_WriteConfig(void)
{
    I2c_ErrorType Returnvalue;

    ADS1115_vidReloadConfig();
    ADS1115_vidLoadUserConfig();

    Returnvalue = I2c_SyncWrite(0, &(ADS1115_axConfig[eADS1115_CFG_PX_FRAME_INDEX].U), eADS1115_CFG_FRAME_MAX_NO, ADS1115_ADDRESS);
    if(Returnvalue == I2C_NO_ERR)
    {
        // ADS1115_Success = 1;
        // ADS1115_PassCount++;
        ADS1115_CurrentPx = ADS1115_CONFIG_PX;
    }
    return Returnvalue;
}

#if 0
//Write high or low threshold. Change Px to 10 or 11
I2c_ErrorType ADS1115_WriteThreshold(ADS1115_thresh *xThresh)
{
    I2c_ErrorType Returnvalue;

    Returnvalue = I2c_SyncWrite(0, &xThresh->U8[0], 3, ADS1115_ADDRESS);
    if(Returnvalue == I2C_NO_ERR)
    {
        ADS1115_CurrentPx = xThresh->B.Px;
    }
    return Returnvalue;
}
#endif

// Read Result from 00. Auto change Px to 00
I2c_ErrorType ADS1115_ReadResult(uint16 *ResultPtr)
{
    I2c_ErrorType Returnvalue;
    uint8 Local_u8Px; 
    if(ADS1115_RESULT_PX != ADS1115_CurrentPx)
    {
        Local_u8Px = ADS1115_RESULT_PX;
        Returnvalue = I2c_SyncWrite(0, &Local_u8Px, 1, ADS1115_ADDRESS);
        ADS1115_Success = Returnvalue;
        if(Returnvalue == I2C_NO_ERR)
        {
            ADS1115_CurrentPx = ADS1115_RESULT_PX;
            // ADS1115_Success = I2C_NO_ERR;
            // ADS1115_PassCount++;
        }
        else
        {
            // ADS1115_Success = Returnvalue;
            return Returnvalue;
        }
    }

    Returnvalue = I2c_SyncRead(0, &Local_au8Result[0], 2, ADS1115_ADDRESS);
    ADS1115_Success = Returnvalue;
    if(Returnvalue == I2C_NO_ERR)
    {
        // ADS1115_Success = 1;
        // ADS1115_PassCount++;
        *ResultPtr = ((uint16)Local_au8Result[0] << 8) + (uint16)Local_au8Result[1];
    }
    else
    {
        // ADS1115_Success = 0;
    }

    return Returnvalue;
}

//Just change Px
I2c_ErrorType ADS1115_WriteInPx(uint8 TargetPx)
{
    I2c_ErrorType Returnvalue;
    Returnvalue = I2c_SyncWrite(0, &TargetPx, 1, ADS1115_ADDRESS);
    if(Returnvalue == I2C_NO_ERR)
    {
        ADS1115_CurrentPx = TargetPx;
    }
    return Returnvalue;
}

//Read from current Px
I2c_ErrorType ADS1115_ReadFromPx(uint16 *ResultPtr)
{
    I2c_ErrorType Returnvalue;
    uint8 Local_au8Result[2];

    Returnvalue = I2c_SyncRead(0, &Local_au8Result[0], 2, ADS1115_ADDRESS);

    if(Returnvalue == I2C_NO_ERR)
    {
        *ResultPtr = ((uint16)Local_au8Result[0] << 8) + (uint16)Local_au8Result[1];
    }

    return Returnvalue;
}

I2c_ErrorType ADS1115_ContinuousRead(uint16 *ResultPtr)
{
    I2c_ErrorType Returnvalue;
    if(0 == ADS1115_InitConfigSuccess)
    {
        Returnvalue = ADS1115_WriteConfig();
        if(Returnvalue == I2C_NO_ERR)
        {
            ADS1115_InitConfigSuccess = 1;
        }
        return I2C_IS_BUSY;
    }
    else
    {
        Returnvalue = ADS1115_ReadResult(ResultPtr);
        return Returnvalue;
    }
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static void ADS1115_vidReloadConfig(void)
{
    ADS1115_axConfig[eADS1115_CFG_PX_FRAME_INDEX].U = eADS1115_CONFIG_PX;

    ADS1115_axConfig[eADS1115_CFG_HIGH_FRAME_INDEX].tCfgRegH.B.MODE     = ADS1115_DEFAULT_CFG_MODE;
    ADS1115_axConfig[eADS1115_CFG_HIGH_FRAME_INDEX].tCfgRegH.B.PGA      = ADS1115_DEFAULT_CFG_PGA;
    ADS1115_axConfig[eADS1115_CFG_HIGH_FRAME_INDEX].tCfgRegH.B.MUX      = ADS1115_DEFAULT_CFG_MUX;
    ADS1115_axConfig[eADS1115_CFG_HIGH_FRAME_INDEX].tCfgRegH.B.OS       = ADS1115_DEFAULT_CFG_OS;

    ADS1115_axConfig[eADS1115_CFG_LOW_FRAME_INDEX].tCfgRegL.B.COMP_QUE  = ADS1115_DEFAULT_CFG_COMP_QUE;
    ADS1115_axConfig[eADS1115_CFG_LOW_FRAME_INDEX].tCfgRegL.B.COMP_LAT  = ADS1115_DEFAULT_CFG_COMP_LAT;
    ADS1115_axConfig[eADS1115_CFG_LOW_FRAME_INDEX].tCfgRegL.B.COMP_POL  = ADS1115_DEFAULT_CFG_COMP_POL;
    ADS1115_axConfig[eADS1115_CFG_LOW_FRAME_INDEX].tCfgRegL.B.COMP_MODE = ADS1115_DEFAULT_CFG_COMP_MODE;
    ADS1115_axConfig[eADS1115_CFG_LOW_FRAME_INDEX].tCfgRegL.B.DR        = ADS1115_DEFAULT_CFG_DR;
}

static void ADS1115_vidLoadUserConfig(void)
{
    ADS1115_axConfig[eADS1115_CFG_HIGH_FRAME_INDEX].tCfgRegH.B.PGA      = ADS1115_u8UserCfg_PGAC;
    ADS1115_axConfig[eADS1115_CFG_HIGH_FRAME_INDEX].tCfgRegH.B.MUX      = ADS1115_u8UserCfg_MUXC;

    ADS1115_axConfig[eADS1115_CFG_LOW_FRAME_INDEX].tCfgRegL.B.DR        = ADS1115_u8UserCfg_DRC;
}
