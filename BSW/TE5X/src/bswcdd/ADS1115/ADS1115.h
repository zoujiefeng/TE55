#ifndef __ADS1115_H_
#define __ADS1115_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "I2c.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
#define ADS1115_ADDRESS      ((uint8)0x48U) //ADDR-GND :01001000b
#define ADS1115_USECOMP      (0)

#define ADS1115_RESULT_PX    ((uint8)0U)
#define ADS1115_CONFIG_PX    ((uint8)1U)
#define ADS1115_LO_THRESH_PX ((uint8)2U)
#define ADS1115_HI_THRESH_PX ((uint8)3U)

#define ADS1115_CFG_OS_INIT               ((uint8)0U)
#define ADS1115_CFG_OS_START              ((uint8)1U)

#define ADS1115_CFG_MUX_A0A1              ((uint8)0U)//default
#define ADS1115_CFG_MUX_A0GND             ((uint8)4U)//default

#define ADS1115_CFG_PGA_2048              ((uint8)2U)//default
#define ADS1115_CFG_PGA_4096              ((uint8)1U)

#define ADS1115_CFG_MODE_CC               ((uint8)0U)//Continuous conversion
#define ADS1115_CFG_MODE_SS               ((uint8)1U)//Single-shot default

#define ADS1115_CFG_DR_128                ((uint8)4U)//default

#define ADS1115_CFG_COMP_MODE_TRADITIONAL ((uint8)0U)//default

#define ADS1115_CFG_COMP_POL_LOW          ((uint8)0U)//default

#define ADS1115_CFG_COMP_LAT_NOLATCH      ((uint8)0U)//default

#define ADS1115_CFG_COMP_QUE_DISABLE      ((uint8)3U)//default

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef uint8 ADS1115_Px;

typedef union ADS1115_CfgRegH{
    uint8 U;
    struct{
        uint8 MODE:1;
        uint8 PGA:3;
        uint8 MUX:3;
        uint8 OS:1;
    }B;
}ADS1115_CfgRegH;

typedef union ADS1115_CfgRegL{
    uint8 U;
    struct{
        uint8 COMP_QUE:2;
        uint8 COMP_LAT:1;
        uint8 COMP_POL:1;
        uint8 COMP_MODE:1;
        uint8 DR:3;
    }B;
}ADS1115_CfgRegL;

typedef union ADS1115_ThreshRegH{
    uint8 U;
    struct{
        uint8 u8Byte;
    }B;
}ADS1115_ThreshRegH;

typedef union ADS1115_ThreshRegL{
    uint8 U;
    struct{
        uint8 u8Byte;
    }B;
}ADS1115_ThreshRegL;

typedef union ADS1115_RegMap{
    uint8              U;
    ADS1115_Px         Px;
    ADS1115_CfgRegH    tCfgRegH;
    ADS1115_CfgRegL    tCfgRegL;
    ADS1115_ThreshRegH tThreshRegH;
    ADS1115_ThreshRegL tThreshRegL;
}ADS1115_RegMap;

/*******************************************************************************
 ****  Private Enum Type Definitions
 ******************************************************************************/
enum ADS1115_PxDefinition{
    eADS1115_RESULT_PX = 0,
    eADS1115_CONFIG_PX,
    eADS1115_LO_THRESH_PX,
    eADS1115_HI_THRESH_PX
};

enum ADS1115_InputMuxCfg{
    eADS1115_CFG_MUX_A0A1 = 0,
    eADS1115_CFG_MUX_A0A3,
    eADS1115_CFG_MUX_A1A3,
    eADS1115_CFG_MUX_A2A3,
    eADS1115_CFG_MUX_A0GND,
    eADS1115_CFG_MUX_A1GND,
    eADS1115_CFG_MUX_A2GND,
    eADS1115_CFG_MUX_A3GND,
};

enum ADS1115_PGACfg{
    eADS1115_CFG_PGA_FSR_6_144 = 0,
    eADS1115_CFG_PGA_FSR_4_096,
    eADS1115_CFG_PGA_FSR_2_048,
    eADS1115_CFG_PGA_FSR_1_024,
    eADS1115_CFG_PGA_FSR_0_512,
    eADS1115_CFG_PGA_FSR_0_256_1,
    eADS1115_CFG_PGA_FSR_0_256_2,
    eADS1115_CFG_PGA_FSR_0_256_3,
};

enum ADS1115_SPSCfg{
    eADS1115_CFG_DR_8_SPS = 0,
    eADS1115_CFG_DR_16_SPS,
    eADS1115_CFG_DR_32_SPS,
    eADS1115_CFG_DR_64_SPS,
    eADS1115_CFG_DR_128_SPS,
    eADS1115_CFG_DR_250_SPS,
    eADS1115_CFG_DR_475_SPS,
    eADS1115_CFG_DR_860_SPS,
};

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
#define ADS1115_DEFAULT_CFG_OS              (0u)
#define ADS1115_DEFAULT_CFG_MUX             (eADS1115_CFG_MUX_A0A1)
#define ADS1115_DEFAULT_CFG_PGA             (eADS1115_CFG_PGA_FSR_2_048)
#define ADS1115_DEFAULT_CFG_MODE            (0x00u)
#define ADS1115_DEFAULT_CFG_DR              (eADS1115_CFG_DR_860_SPS)
#define	ADS1115_DEFAULT_CFG_COMP_MODE       (0u)
#define ADS1115_DEFAULT_CFG_COMP_POL        (0u)
#define ADS1115_DEFAULT_CFG_COMP_LAT        (0u)
#define ADS1115_DEFAULT_CFG_COMP_QUE        (0x03u)

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern I2c_ErrorType ADS1115_ContinuousRead(uint16 *ResultPtr);

#endif
