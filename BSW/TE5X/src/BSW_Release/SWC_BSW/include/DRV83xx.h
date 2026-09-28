/**************************************************************************
 * @file        DRV8343.h
 * @author      MDBU Software Team
 * @date        13th Novemeber 2017
 * @brief       This file defines all the functions and data structures used for accessing DRV8343 registers
 * @note        Copyright (c) 2017 Texas Instruments Incorporated.
 *              All rights reserved.
 ******************************************************************************/

#ifndef DRV8343_H_
#define DRV8343_H_

#include "Std_Types.h"

#define NUMCONFIG_IDRIVE_VALUES                 16       // Defines the number of configurable Idrive values for the DRv83xxS Devices
#define NUMCONFIG_TDRIVE_VALUES                 4       // Defines the number of configurable Idrive values for the DRv83xxS Devices

/*************** Idrive & Tdrive Configuration Settings ****************/
#define GATE_TO_DRAIN_CHARGE        8.7      // Set the gate to drain charge of the FET used on the EVM in uC
#define RISE_TIME                   100     // Select the Maximum Rise time desired for the FET in nano seconds
#define FALL_TIME                   50     // Select the Maximum Fall time desired for the FET in nano Seconds

#define SPI_READ_CMD     0x00008000
#define SPI_WRITE_CMD    0x00000000
#define SPI_ADDR_OFFSET  8
#define SPU_DATA_OFFSET  0

/*************************************************************
* drv8343 Analog Subsystem SPI REGISTER ADDRESS
*************************************************************/
enum{
   eSPI_REG_FAULT_STAT = 0x00,
   eSPI_REG_DIAG_STAT_A,
   eSPI_REG_DIAG_STAT_B,
   eSPI_REG_DIAG_STAT_C,
   eSPI_REG_DRV_CTRL_1,
   eSPI_REG_DRV_CTRL_2,
   eSPI_REG_DRV_CTRL_3,
   eSPI_REG_DRV_CTRL_4,
   eSPI_REG_DRV_CTRL_5,
   eSPI_REG_DRV_CTRL_6,
   eSPI_REG_DRV_CTRL_7,
   eSPI_REG_DRV_CTRL_8,
   eSPI_REG_DRV_CTRL_9,
   eSPI_REG_DRV_CTRL_10,
   eSPI_REG_DRV_CTRL_11,
   eSPI_REG_DRV_CTRL_12,
   eSPI_REG_DRV_CTRL_13,
   eSPI_REG_DRV_CTRL_14,
   eSPI_MAX_REG_NUM
};

/* Analog Subsystem Instructions */
#define SPI_REG_FAULT_STAT      (0x00)         /*  */
#define SPI_REG_DIAG_STAT_A     (0x01)         /*  */
#define SPI_REG_DIAG_STAT_B     (0x02)         /*  */
#define SPI_REG_DIAG_STAT_C     (0x03)         /*  */
#define SPI_REG_DRV_CTRL_1      (0x04)         /*  */
#define SPI_REG_DRV_CTRL_2      (0x05)         /*  */
#define SPI_REG_DRV_CTRL_3      (0x06)         /*  */
#define SPI_REG_DRV_CTRL_4      (0x07)         /*  */
#define SPI_REG_DRV_CTRL_5      (0x08)         /*  */
#define SPI_REG_DRV_CTRL_6      (0x09)         /*  */
#define SPI_REG_DRV_CTRL_7      (0x0A)         /*  */
#define SPI_REG_DRV_CTRL_8      (0x0B)         /*  */
#define SPI_REG_DRV_CTRL_9      (0x0C)         /*  */
#define SPI_REG_DRV_CTRL_10     (0x0D)         /*  */
#define SPI_REG_DRV_CTRL_11     (0x0E)         /*  */
#define SPI_REG_DRV_CTRL_12     (0x0F)         /*  */
#define SPI_REG_DRV_CTRL_13     (0x10)         /*  */
#define SPI_REG_DRV_CTRL_14     (0x11)         /*  */

/* Analog Subsystem Instructions - Bit Definitions */
/* DRV8343S SPI REGISTER Masked Bit fields*/
/* SPI_REG_00 : SPI_REG_FAULT_STAT_MASK  */
#define DRV8343S_FAULT_MASK       (0x80)         /*  */
#define DRV8343S_GDF_MASK         (0x40)         /*  */
#define DRV8343S_CPUV_MASK        (0x20)         /*  */
#define DRV8343S_UVLO_MASK        (0x10)         /*  */
#define DRV8343S_OCP_MASK         (0x08)         /*  */
#define DRV8343S_OTW_MASK         (0x04)         /*  */
#define DRV8343S_OTSD_MASK        (0x02)         /*  */
#define DRV8343S_OL_SHT_MASK      (0x01)         /*  */

/* SPI_REG_01 : SPI_REG_DIAG_STAT_A_MASK */
#define DRV8343S_SA_OC_MASK      (0x80)         /*  */
#define DRV8343S_SHT_GND_A_MASK  (0x40)         /*  */
#define DRV8343S_SHT_BAT_A_MASK  (0x20)         /*  */
#define DRV8343S_OL_PH_A_MASK    (0x10)         /*  */
#define DRV8343S_VGS_LA_MASK     (0x08)         /*  */
#define DRV8343S_VGS_HA_MASK     (0x04)         /*  */
#define DRV8343S_VDS_LA_MASK     (0x02)         /*  */
#define DRV8343S_VDS_HA_MASK     (0x01)         /*  */

/* SPI_REG_02 : SPI_REG_DIAG_STAT_B_MASK */
#define DRV8343S_SB_OC_MASK      (0x80)         /*  */
#define DRV8343S_SHT_GND_B_MASK  (0x40)         /*  */
#define DRV8343S_SHT_BAT_B_MASK  (0x20)         /*  */
#define DRV8343S_OL_PH_B_MASK    (0x10)         /*  */
#define DRV8343S_VGS_LB_MASK     (0x08)         /*  */
#define DRV8343S_VGS_HB_MASK     (0x04)         /*  */
#define DRV8343S_VDS_LB_MASK     (0x02)         /*  */
#define DRV8343S_VDS_HB_MASK     (0x01)         /*  */

/* SPI_REG_03 : SPI_REG_DIAG_STAT_C_MASK */
#define DRV8343S_SC_OC_MASK      (0x80)         /*  */
#define DRV8343S_SHT_GND_C_MASK  (0x40)         /*  */
#define DRV8343S_SHT_BAT_C_MASK  (0x20)         /*  */
#define DRV8343S_OL_PH_C_MASK    (0x10)         /*  */
#define DRV8343S_VGS_LC_MASK     (0x08)         /*  */
#define DRV8343S_VGS_HC_MASK     (0x04)         /*  */
#define DRV8343S_VDS_LC_MASK     (0x02)         /*  */
#define DRV8343S_VDS_HC_MASK     (0x01)         /*  */

/* SPI_REG_04 : DRV_CTRL_REG_1_MASK */
#define DRV8343S_CLR_FLT_MASK      (0x80)         /*  */
#define DRV8343S_PWM_MODE_MASK     (0x70)         /*  */
#define DRV8343S_PWM_MODE_1x_MASK  (0x20)         /*  */
#define DRV8343S_BRIDGE_ABC_MODE_MASK  		(0x30)         /*  */
#define DRV8343S_BRIDGE_AB_FET_C_MODE_MASK  (0x40)         /*  */
#define DRV8343S_BRIDGE_BC_FET_A_MODE_MASK  (0x50)         /*  */
#define DRV8343S_BRIDGE_A_FET_BC_MODE_MASK  (0x60)         /*  */
#define DRV8343S_FET_ABC_MODE_MASK  		(0x70)         /*  */
#define DRV8343S_ONE_PWM_COM_MASK  (0x08)         /*  */
#define DRV8343S_ONE_PWM_DIR_MASK  (0x04)         /*  */
#define DRV8343S_ONE_PWM_BRK_MASK  (0x03)         /*  */


/* SPI_REG_05 : DRV_CTRL_REG_2_MASK */
#define DRV8343S_OTSD_MODE_MASK      (0x80)         /*  */
#define DRV8343S_OLP_SHTS_DLY_MASK   (0x60)         /*  */
#define DRV8343S_EN_SHT_TST_MASK     (0x10)         /*  */
#define DRV8343S_EN_OLP_MASK         (0x08)         /*  */
#define DRV8343S_EN_OLA_C_MASK       (0x04)         /*  */
#define DRV8343S_EN_OLA_B_MASK       (0x02)         /*  */
#define DRV8343S_EN_OLA_A_MASK       (0x01)         /*  */

/* SPI_REG_06 : DRV_CTRL_REG_3_MASK */
#define DRV8343S_IDRIVEP_LA_MASK     (0xF0)         /*  */
#define DRV8343S_IDRIVEP_HA_MASK     (0x0F)         /*  */

/* SPI_REG_07 : DRV_CTRL_REG_4_MASK */
#define DRV8343S_IDRIVEP_LB_MASK     (0xF0)         /*  */
#define DRV8343S_IDRIVEP_HB_MASK     (0x0F)         /*  */

/* SPI_REG_08 : DRV_CTRL_REG_5_MASK */
#define DRV8343S_IDRIVEP_LC_MASK     (0xF0)         /*  */
#define DRV8343S_IDRIVEP_HC_MASK     (0x0F)         /*  */

/* SPI_REG_09 : DRV_CTRL_REG_6_MASK */
#define DRV8343S_VDS_LVL_LA_MASK     (0xF0)         /*  */
#define DRV8343S_VDS_LVL_HA_MASK     (0x0F)         /*  */

/* SPI_REG_0A : DRV_CTRL_REG_7_MASK */
#define DRV8343S_VDS_LVL_LB_MASK     (0xF0)         /*  */
#define DRV8343S_VDS_LVL_HB_MASK     (0x0F)         /*  */

/* SPI_REG_0B : DRV_CTRL_REG_8_MASK */
#define DRV8343S_VDS_LVL_LC_MASK     (0xF0)         /*  */
#define DRV8343S_VDS_LVL_HC_MASK     (0x0F)         /*  */

/* SPI_REG_0C : DRV_CTRL_REG_9_MASK  */
#define DRV8343S_COAST_MASK       (0x80)         /*  */
#define DRV8343S_TRETRY_MASK      (0x60)         /*  */
#define DRV8343S_DEAD_TIME_MASK   (0x18)         /*  */
#define DRV8343S_TDRIVE_MAX_MASK  (0x04)         /*  */
#define DRV8343S_TDRIVE_MASK	  (0x03)         /*  */

/* SPI_REG_0D : DRV_CTRL_REG_10_MASK  */
#define DRV8343S_LOCK_MASK       (0xE0)         /*  */
#define DRV8343S_DIS_CPUV_MASK   (0x10)         /*  */
#define DRV8343S_DIS_GDF_MASK    (0x08)         /*  */
#define DRV8343S_OCP_DEG_MASK    (0x07)         /*  */

/* SPI_REG_0E : DRV_CTRL_REG_11_MASK  */
#define DRV8343S_RSVD_REG_10_MASK  (0x80)         /*  */
#define DRV8343S_OTW_REP_MASK      (0x40)         /*  */
#define DRV8343S_CBC_MASK          (0x20)         /*  */
#define DRV8343S_DIS_VDS_C_MASK    (0x10)         /*  */
#define DRV8343S_DIS_VDS_B_MASK    (0x08)         /*  */
#define DRV8343S_DIS_VDS_A_MASK    (0x04)         /*  */
#define DRV8343S_OCP_MODE_MASK     (0x03)         /*  */

/* SPI_REG_0F : DRV_CTRL_REG_12_MASK  */
#define DRV8343S_LS_REF_MASK       (0x80)         /*  */
#define DRV8343S_CSA_FET_MASK      (0x40)         /*  */
#define DRV8343S_CSA_GAIN_C_MASK   (0x30)         /*  */
#define DRV8343S_CSA_GAIN_B_MASK   (0x0C)         /*  */
#define DRV8343S_CSA_GAIN_A_MASK   (0x03)         /*  */

/* SPI_REG_10 : DRV_CTRL_REG_13_MASK  */
#define DRV8343S_CAL_MODE_MASK      (0x80)         /*  */
#define DRV8343S_VREF_DIV_MASK      (0x40)         /*  */
#define DRV8343S_SEN_LVL_C_MASK     (0x30)         /*  */
#define DRV8343S_SEN_LVL_B_MASK     (0x0C)         /*  */
#define DRV8343S_SEN_LVL_A_MASK     (0x03)         /*  */

/* SPI_REG_11 : DRV_CTRL_REG_14_MASK  */
#define DRV8343S_RSVD_REG_14_MASK    (0xC0)         /*  */
#define DRV8343S_DIS_SEN_C_MASK      (0x20)         /*  */
#define DRV8343S_DIS_SEN_B_MASK      (0x10)         /*  */
#define DRV8343S_DIS_SEN_A_MASK      (0x08)         /*  */
#define DRV8343S_CSA_CAL_C_MASK      (0x04)         /*  */
#define DRV8343S_CSA_CAL_B_MASK      (0x02)         /*  */
#define DRV8343S_CSA_CAL_A_MASK      (0x01)         /*  */

/* DRV8343S SPI REGISTER Default Values*/

/* SPI_REG_00 : SPI_REG_FAULT_STAT  */
#define DRV8343S_FAULT       (0x00)         /*  */
#define DRV8343S_GDF         (0x00)         /*  */
#define DRV8343S_CPUV        (0x00)         /*  */
#define DRV8343S_UVLO        (0x00)         /*  */
#define DRV8343S_OCP         (0x00)         /*  */
#define DRV8343S_OTW         (0x00)         /*  */
#define DRV8343S_OTSD        (0x00)         /*  */
#define DRV8343S_OL_SHT      (0x00)         /*  */

/* SPI_REG_01 : SPI_REG_DIAG_STAT_A */
#define DRV8343S_SA_OC      (0x00)         /*  */
#define DRV8343S_SHT_GND_A  (0x00)         /*  */
#define DRV8343S_SHT_BAT_A  (0x00)         /*  */
#define DRV8343S_OL_PH_A    (0x00)         /*  */
#define DRV8343S_VGS_LA     (0x00)         /*  */
#define DRV8343S_VGS_HA     (0x00)         /*  */
#define DRV8343S_VDS_LA     (0x00)         /*  */
#define DRV8343S_VDS_HA     (0x00)         /*  */


/* SPI_REG_02 : SPI_REG_DIAG_STAT_B */
#define DRV8343S_SB_OC      (0x00)         /*  */
#define DRV8343S_SHT_GND_B  (0x00)         /*  */
#define DRV8343S_SHT_BAT_B  (0x00)         /*  */
#define DRV8343S_OL_PH_B    (0x00)         /*  */
#define DRV8343S_VGS_LB     (0x00)         /*  */
#define DRV8343S_VGS_HB     (0x00)         /*  */
#define DRV8343S_VDS_LB     (0x00)         /*  */
#define DRV8343S_VDS_HB     (0x00)         /*  */


/* SPI_REG_03 : SPI_REG_DIAG_STAT_C */
#define DRV8343S_SC_OC      (0x00)         /*  */
#define DRV8343S_SHT_GND_C  (0x00)         /*  */
#define DRV8343S_SHT_BAT_C  (0x00)         /*  */
#define DRV8343S_OL_PH_C    (0x00)         /*  */
#define DRV8343S_VGS_LC     (0x00)         /*  */
#define DRV8343S_VGS_HC     (0x00)         /*  */
#define DRV8343S_VDS_LC     (0x00)         /*  */
#define DRV8343S_VDS_HC     (0x00)         /*  */

/* SPI_REG_04 : DRV_CTRL_REG_1 */
#define DRV8343S_CLR_FLT      (0x00)         /*  */
#define DRV8343S_PWM_MODE     (0x00)         /*  */
#define DRV8343S_ONE_PWM_COM  (0x00)         /*  */
#define DRV8343S_ONE_PWM_DIR  (0x00)         /*  */
#define DRV8343S_ONE_PWM_BRK  (0x00)         /*  */

/* SPI_REG_05 : DRV_CTRL_REG_2 */
#define DRV8343S_OTSD_MODE      (0x00)         /*  */
#define DRV8343S_OLP_SHTS_DLY   (0x02)         /*  */
#define DRV8343S_EN_SHT_TST     (0x00)         /*  */
#define DRV8343S_EN_OLP         (0x00)         /*  */
#define DRV8343S_EN_OLA_C       (0x00)         /*  */
#define DRV8343S_EN_OLA_B       (0x00)         /*  */
#define DRV8343S_EN_OLA_A       (0x00)         /*  */

/* SPI_REG_06 : DRV_CTRL_REG_3 */
#define DRV8343S_IDRIVEP_LA     (0x0F)         /*  */
#define DRV8343S_IDRIVEP_HA     (0x0F)         /*  */

/* SPI_REG_07 : DRV_CTRL_REG_4 */
#define DRV8343S_IDRIVEP_LB     (0x0F)         /*  */
#define DRV8343S_IDRIVEP_HB     (0x0F)         /*  */


/* SPI_REG_08 : DRV_CTRL_REG_5 */
#define DRV8343S_IDRIVEP_LC     (0x0F)         /*  */
#define DRV8343S_IDRIVEP_HC     (0x0F)         /*  */

/* SPI_REG_09 : DRV_CTRL_REG_6 */
#define DRV8343S_VDS_LVL_LA     (0x08)         /*  */
#define DRV8343S_VDS_LVL_HA     (0x08)         /*  */

/* SPI_REG_0A : DRV_CTRL_REG_7 */
#define DRV8343S_VDS_LVL_LB     (0x08)         /*  */
#define DRV8343S_VDS_LVL_HB     (0x08)         /*  */

/* SPI_REG_0B : DRV_CTRL_REG_8 */
#define DRV8343S_VDS_LVL_LC     (0x08)         /*  */
#define DRV8343S_VDS_LVL_HC     (0x08)         /*  */

/* SPI_REG_0C : DRV_CTRL_REG_9  */
#define DRV8343S_COAST       (0x00)         /*  */
#define DRV8343S_TRETRY      (0x01)         /*  */
#define DRV8343S_DEAD_TIME   (0x01)         /*  */
#define DRV8343S_TDRIVE_MAX  (0x01)         /*  */
#define DRV8343S_TDRIVE	     (0x03)         /*  */

/* SPI_REG_0D : DRV_CTRL_REG_10  */
#define DRV8343S_LOCK       (0x03)         /*  */
#define DRV8343S_DIS_CPUV   (0x00)         /*  */
#define DRV8343S_DIS_GDF    (0x00)         /*  */
#define DRV8343S_OCP_DEG    (0x01)         /*  */

/* SPI_REG_0E : DRV_CTRL_REG_11  */
#define DRV8343S_RSVD_REG_10  (0x00)         /*  */
#define DRV8343S_OTW_REP      (0x00)         /*  */
#define DRV8343S_CBC          (0x00)         /*  */
#define DRV8343S_DIS_VDS_C    (0x00)         /*  */
#define DRV8343S_DIS_VDS_B    (0x00)         /*  */
#define DRV8343S_DIS_VDS_A    (0x00)         /*  */
#define DRV8343S_OCP_MODE     (0x00)         /*  */

/* SPI_REG_0F : DRV_CTRL_REG_12  */
#define DRV8343S_LS_REF       (0x00)         /*  */
#define DRV8343S_CSA_FET      (0x00)         /*  */
#define DRV8343S_CSA_GAIN_C   (0x02)         /*  */
#define DRV8343S_CSA_GAIN_B   (0x02)         /*  */
#define DRV8343S_CSA_GAIN_A   (0x02)         /*  */

/* SPI_REG_10 : DRV_CTRL_REG_13  */
#define DRV8343S_CAL_MODE      (0x00)         /*  */
#define DRV8343S_VREF_DIV      (0x01)         /*  */
#define DRV8343S_SEN_LVL_C     (0x03)         /*  */
#define DRV8343S_SEN_LVL_B     (0x03)         /*  */
#define DRV8343S_SEN_LVL_A     (0x03)         /*  */

/* SPI_REG_11 : DRV_CTRL_REG_14  */
#define DRV8343S_RSVD_REG_14    (0x00)         /*  */
#define DRV8343S_DIS_SEN_C      (0x00)         /*  */
#define DRV8343S_DIS_SEN_B      (0x00)         /*  */
#define DRV8343S_DIS_SEN_A      (0x00)         /*  */
#define DRV8343S_CSA_CAL_C      (0x00)         /*  */
#define DRV8343S_CSA_CAL_B      (0x00)         /*  */
#define DRV8343S_CSA_CAL_A      (0x00)         /*  */

typedef boolean (*FaultIndicateFuncPtr) (void);

typedef struct DRV83xx_FaultIndicateSet{
   FaultIndicateFuncPtr bGetAllFaultStatus;
   FaultIndicateFuncPtr bGetGateDriverStatus;
   FaultIndicateFuncPtr bGetChargePumpUVStatus;
   FaultIndicateFuncPtr bGetUVLockoutStatus;
   FaultIndicateFuncPtr bGetOverCurStatus;
   FaultIndicateFuncPtr bGetOverTempWarningStatus;
   FaultIndicateFuncPtr bGetOverTempShutdownStatus;
   FaultIndicateFuncPtr bGetOpenLoadOrShortStatus;
   FaultIndicateFuncPtr bGetPhaseAShortGndStatus;
   FaultIndicateFuncPtr bGetPhaseAShortBatStatus;
   FaultIndicateFuncPtr bGetPhaseAOpenLoadStatus;
   FaultIndicateFuncPtr bGetPhaseAGateDriverLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseAGateDriverHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseAVdsOverCurLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseAVdsOverCurHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseBShortGndStatus;
   FaultIndicateFuncPtr bGetPhaseBShortBatStatus;
   FaultIndicateFuncPtr bGetPhaseBOpenLoadStatus;
   FaultIndicateFuncPtr bGetPhaseBGateDriverLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseBGateDriverHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseBVdsOverCurLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseBVdsOverCurHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseCShortGndStatus;
   FaultIndicateFuncPtr bGetPhaseCShortBatStatus;
   FaultIndicateFuncPtr bGetPhaseCOpenLoadStatus;
   FaultIndicateFuncPtr bGetPhaseCGateDriverLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseCGateDriverHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseCVdsOverCurLowSideStatus;
}DRV83xx_FaultIndicateSet;

typedef union FLT_STAT_Obj   // All the objects of Fault status have the prefix of "FSO"
{
   uint8 U;
   struct{
      uint8 FSO_OL_SHT : 1;     // bit 0
      uint8 FSO_OTSD   : 1;     // bit 1
      uint8 FSO_OTW    : 1;     // bit 2
      uint8 FSO_OCP    : 1;     // bit 3
      uint8 FSO_UVLO   : 1;     // bit 4
      uint8 FSO_CPUV   : 1;     // bit 5
      uint8 FSO_GDF    : 1;     // bit 6
      uint8 FSO_FAULT  : 1;     // bit 7
   }B;
} FLT_STAT_Obj;


typedef union DIAG_STAT_A_Obj   // All the objects of Diagnosis statu for Phase A have the prefix of "DSA"
{
   uint8 U;
   struct{
      uint8 DSA_VDS_HA    : 1;     // bit 0
      uint8 DSA_VDS_LA    : 1;     // bit 1
      uint8 DSA_VGS_HA    : 1;     // bit 2
      uint8 DSA_VGS_LA    : 1;     // bit 3
      uint8 DSA_OL_PH_A   : 1;     // bit 4
      uint8 DSA_SHT_BAT_A : 1;     // bit 5
      uint8 DSA_SA_OC     : 1;     // bit 6
      uint8 DSA_FAULT     : 1;     // bit 7
   }B;
} DIAG_STAT_A_Obj;


typedef union DIAG_STAT_B_Obj   // All the objects of Diagnosis statu for Phase B have the prefix of "DSB"
{
   uint8 U;
   struct{
      uint8 DSB_VDS_HB    : 1;     // bit 0
      uint8 DSB_VDS_LB    : 1;     // bit 1
      uint8 DSB_VGS_HB    : 1;     // bit 2
      uint8 DSB_VGS_LB    : 1;     // bit 3
      uint8 DSB_OL_PH_B   : 1;     // bit 4
      uint8 DSB_SHT_BAT_B : 1;     // bit 5
      uint8 DSB_SB_OC     : 1;     // bit 6
      uint8 DSB_FAULT     : 1;     // bit 7
   }B;
} DIAG_STAT_B_Obj;

typedef union DIAG_STAT_C_Obj   // All the objects of Diagnosis statu for Phase C have the prefix of "DSC"
{
   uint8 U;
   struct{
      uint8 DSC_VDS_HC    : 1;     // bit 0
      uint8 DSC_VDS_LC    : 1;     // bit 1
      uint8 DSC_VGS_HC    : 1;     // bit 2
      uint8 DSC_VGS_LC    : 1;     // bit 3
      uint8 DSC_OL_PH_C   : 1;     // bit 4
      uint8 DSC_SHT_BAT_C : 1;     // bit 5
      uint8 DSC_SC_OC     : 1;     // bit 6
      uint8 DSC_FAULT     : 1;     // bit 7
   }B;
} DIAG_STAT_C_Obj;

typedef union DRV_CTRL_IC1_Obj   // All the objects of DRV Control register IC1 has prefix of "DCI1"
{
   uint8 U;
   struct{
      uint8 DCI1_ONE_PWM_BRK : 2;      // bit 1 : 0
      uint8 DCI1_ONE_PWM_DIR : 1;      // bit 2
      uint8 DCI1_ONE_PWM_COM : 1;      // bit 3
      uint8 DCI1_PWM_MODE    : 3;      // bit 6 : 4
      uint8 DCI1_CLR_FLT     : 1;      // bit 7
   }B;
} DRV_CTRL_IC1_Obj;

typedef union DRV_CTRL_IC2_Obj   // All the objects of DRV Control register IC2 has prefix of "DCI2"
{
   uint8 U;
   struct{
      uint8 DCI2_EN_OLA_A     : 1;      // bit 0
      uint8 DCI2_EN_OLA_B     : 1;      // bit 1
      uint8 DCI2_EN_OLA_C     : 1;      // bit 2
      uint8 DCI2_EN_OLP       : 1;      // bit 3
      uint8 DCI2_EN_SHT_TST   : 1;      // bit 4
      uint8 DCI2_OLP_SHTS_DLY : 2;      // bit 6 : 5
      uint8 DCI2_OTSD_MODE    : 1;      // bit 7
   }B;
} DRV_CTRL_IC2_Obj;

typedef union DRV_CTRL_IC3_Obj   // All the objects of DRV Control register IC3 has prefix of "DCI3"
{
   uint8 U;
   struct{
      uint8 DCI3_IDRIVEP_HA : 4;         // bit 3 : 0
      uint8 DCI3_IDRIVEP_LA : 4;         // bit 7 : 4
   }B;
} DRV_CTRL_IC3_Obj;

typedef union DRV_CTRL_IC4_Obj   // All the objects of DRV Control register IC4 has prefix of "DCI3"
{
   uint8 U;
   struct{
      uint8 DCI4_IDRIVEP_HB : 4;         // bit 3 : 0
      uint8 DCI4_IDRIVEP_LB : 4;         // bit 7 : 4
   }B;
} DRV_CTRL_IC4_Obj;

typedef union DRV_CTRL_IC5_Obj   // All the objects of DRV Control register IC5 has prefix of "DCI3"
{
   uint8 U;
   struct{
      uint8 DCI5_IDRIVEP_HC : 4;         // bit 3 : 0
      uint8 DCI5_IDRIVEP_LC : 4;         // bit 7 : 4
   }B;
} DRV_CTRL_IC5_Obj;

typedef union DRV_CTRL_IC6_Obj   // All the objects of DRV Control register IC6 has prefix of "DCI6"
{
   uint8 U;
   struct{
      uint8 DCI6_VDS_HA : 4;       // bit 3 : 0
      uint8 DCI6_VDS_LA : 4;       // bit 7 : 4
   }B;
} DRV_CTRL_IC6_Obj;
typedef union DRV_CTRL_IC7_Obj   // All the objects of DRV Control register IC6 has prefix of "DCI7"
{
   uint8 U;
   struct{
      uint8 DCI7_VDS_HB : 4;       // bit 3 : 0
      uint8 DCI7_VDS_LB : 4;       // bit 7 : 4
   }B;
} DRV_CTRL_IC7_Obj;
typedef union DRV_CTRL_IC8_Obj   // All the objects of DRV Control register IC6 has prefix of "DCI8"
{
   uint8 U;
   struct{
      uint8 DCI8_VDS_HC : 4;       // bit 3 : 0
      uint8 DCI8_VDS_LC : 4;       // bit 7 : 4
   }B;
} DRV_CTRL_IC8_Obj;
typedef union DRV_CTRL_IC9_Obj   // All the objects of DRV Control register IC9 has prefix of "DCI6"
{
   uint8 U;
   struct{
      uint8 DCI9_TDRIVE     : 2;    // bit 1 : 0
      uint8 DCI9_TDRIVE_MAX : 1;    // bit 2
      uint8 DCI9_DEAD_TIME  : 2;    // bit 4 : 3
      uint8 DCI9_TRETRY     : 2;    // bit 6 : 5
      uint8 DCI9_COAST      : 1;    // bit 7
   }B;
} DRV_CTRL_IC9_Obj;

typedef union DRV_CTRL_IC10_Obj   // All the objects of DRV Control register IC10 has prefix of "DCI10"
{
   uint8 U;
   struct{
      uint8 DCI10_OCP_DEG  : 3;     // bit 2 : 0
      uint8 DCI10_DIS_GDF  : 1;     // bit 3
      uint8 DCI10_DIS_CPUV : 1;     // bit 4
      uint8 DCI10_LOCK     : 2;     // bit 7 : 5
   }B;
} DRV_CTRL_IC10_Obj;

typedef union DRV_CTRL_IC11_Obj   // All the objects of DRV Control register IC11 has prefix of "DCI11"
{
   uint8 U;
   struct{
      uint8 DCI11_OCP_MODE    : 2;    // bit 1 : 0
      uint8 DCI11_DIS_VDS_A   : 1;    // bit 2
      uint8 DCI11_DIS_VDS_B   : 1;    // bit 3
      uint8 DCI11_DIS_VDS_C   : 1;    // bit 4
      uint8 DCI11_CBC         : 1;    // bit 5
      uint8 DCI11_OTW_REP     : 1;    // bit 6
      uint8 DCI11_RSVD_REG_10 : 1;    // bit 7
   }B;
} DRV_CTRL_IC11_Obj;

typedef union DRV_CTRL_IC12_Obj   // All the objects of DRV Control register IC12 has prefix of "DCI9"
{
   uint8 U;
   struct{
      uint8 DCI12_CSA_GAIN_A : 2;    // bit 1 : 0
      uint8 DCI12_CSA_GAIN_B : 2;    // bit 3 : 2
      uint8 DCI12_CSA_GAIN_C : 2;    // bit 5 : 4
      uint8 DCI12_CSA_FET    : 1;    // bit 6
      uint8 DCI12_LS_REF     : 1;    // bit 7
   }B;
} DRV_CTRL_IC12_Obj;

typedef union DRV_CTRL_IC13_Obj   // All the objects of DRV Control register IC13 has prefix of "DCI13"
{
   uint8 U;
   struct{
      uint8 DCI13_SEN_LVL_A : 2;    // bit 1 : 0
      uint8 DCI13_SEN_LVL_B : 2;    // bit 3 : 2
      uint8 DCI13_SEN_LVL_C : 2;    // bit 5 : 4
      uint8 DCI13_VREF_DIV  : 1;    // bit 6
      uint8 DCI13_CAL_MODE  : 1;    // bit 7
   }B;
} DRV_CTRL_IC13_Obj;

typedef union DRV_CTRL_IC14_Obj   // All the objects of DRV Control register IC14 has prefix of "DCI14"
{
   uint8 U;
   struct{
      uint8 DCI14_CSA_CAL_A   : 1;    // bit 0
      uint8 DCI14_CSA_CAL_B   : 1;    // bit 1
      uint8 DCI14_CSA_CAL_C   : 1;    // bit 2
      uint8 DCI14_DIS_SEN_A   : 1;    // bit 3
      uint8 DCI14_DIS_SEN_B   : 1;    // bit 4
      uint8 DCI14_DIS_SEN_C   : 1;    // bit 5
      uint8 DCI14_RSVD_REG_14 : 2;    // bit 7 : 6
   }B;
} DRV_CTRL_IC14_Obj;

typedef union REG_MAP_Obj
{
   uint8 U;
   FLT_STAT_Obj      FAULT_STAT;
   DIAG_STAT_A_Obj   DIAG_STAT_A;
   DIAG_STAT_B_Obj   DIAG_STAT_B;
   DIAG_STAT_C_Obj   DIAG_STAT_C;
   DRV_CTRL_IC1_Obj  DRV_CTRL_IC1;
   DRV_CTRL_IC2_Obj  DRV_CTRL_IC2;
   DRV_CTRL_IC3_Obj  DRV_CTRL_IC3;
   DRV_CTRL_IC4_Obj  DRV_CTRL_IC4;
   DRV_CTRL_IC5_Obj  DRV_CTRL_IC5;
   DRV_CTRL_IC6_Obj  DRV_CTRL_IC6;
   DRV_CTRL_IC7_Obj  DRV_CTRL_IC7;
   DRV_CTRL_IC8_Obj  DRV_CTRL_IC8;
   DRV_CTRL_IC9_Obj  DRV_CTRL_IC9;
   DRV_CTRL_IC10_Obj DRV_CTRL_IC10;
   DRV_CTRL_IC11_Obj DRV_CTRL_IC11;
   DRV_CTRL_IC12_Obj DRV_CTRL_IC12;
   DRV_CTRL_IC13_Obj DRV_CTRL_IC13;
   DRV_CTRL_IC14_Obj DRV_CTRL_IC14;
} REG_MAP_Obj;

typedef struct DRV_Control_Obj
{
   uint16 Idrive_Min_Value;  /* Indicates the IdriveP minimum value */
   uint16 Tdrive_Max_Value;   /* Indicates the IdriveP maximum value */
   uint16 Idrive_Setting;    /* Indicates the IdriveN maximum value */
   uint16 Tdrive_Setting;     /* Indicates the IdriveP Setting value */
   uint16 Register_Counter;
} DRV_Control_Obj;

/* DRV8343S IdriveP_HS/LS Config Values in mA */
#define DRV8343S_IdriveP_MODE0		1.5
#define DRV8343S_IdriveP_MODE1		3.5
#define DRV8343S_IdriveP_MODE2		5
#define DRV8343S_IdriveP_MODE3		10
#define DRV8343S_IdriveP_MODE4		15
#define DRV8343S_IdriveP_MODE5		50
#define DRV8343S_IdriveP_MODE6		60
#define DRV8343S_IdriveP_MODE7		65
#define DRV8343S_IdriveP_MODE8      200
#define DRV8343S_IdriveP_MODE9		210
#define DRV8343S_IdriveP_MODE10		260
#define DRV8343S_IdriveP_MODE11		265
#define DRV8343S_IdriveP_MODE12		735
#define DRV8343S_IdriveP_MODE13		800
#define DRV8343S_IdriveP_MODE14		935
#define DRV8343S_IdriveP_MODE15		1000


/* DRV8343S Tdrive_HS/LS Config Values in nS */
#define DRV8343S_Tdrive_MODE0		500
#define DRV8343S_Tdrive_MODE1		1000
#define DRV8343S_Tdrive_MODE2		2000
#define DRV8343S_Tdrive_MODE3		4000



/////////////////////////
#endif /*DRV8343_H_*/
