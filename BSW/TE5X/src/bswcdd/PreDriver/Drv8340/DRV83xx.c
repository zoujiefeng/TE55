/**************************************************************************
 * @file        global.c
 * @author      MDBU Software Team
 * @brief       global functions used for application
 * @note        Copyright (c) 2016 Texas Instruments Incorporated.
 *              All rights reserved.
 ******************************************************************************/
 
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "DRV83xx.h"
#include "DRV83xx_HAL.h"

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline void DRV83xx_vidCacheTrigBitReset(void);
static inline uint16 DRV83xx_u16Cache2Reg(uint8 address);
static inline void DRV83xx_vidReg2Cache(uint8 address, uint16 regValue);
static inline uint32 DRV83xx_u32CalcWriteFrame(uint32 regAddr, uint32 data);
static inline uint32 DRV83xx_u32CalcReadFrame(uint32 regAddr);
static inline void DRV83xx_vidTrigSpiTx(void);
/* Fault Indicator */
static boolean DRV83xx_bGetFaultStatus(void);
static boolean DRV83xx_bGetGateDriverStatus(void);
static boolean DRV83xx_bGetChargePumpUVStatus(void);
static boolean DRV83xx_bGetUVLockoutStatus(void);
static boolean DRV83xx_bGetOverCurStatus(void);
static boolean DRV83xx_bGetOverTempWarningStatus(void);
static boolean DRV83xx_bGetOverTempShutdownStatus(void);
static boolean DRV83xx_bGetOpenLoadOrShortStatus(void);
static boolean DRV83xx_bGetPhaseAShortGndStatus(void);
static boolean DRV83xx_bGetPhaseAShortBatStatus(void);
static boolean DRV83xx_bGetPhaseAOpenLoadStatus(void);
static boolean DRV83xx_bGetPhaseAGateDriverLowSideStatus(void);
static boolean DRV83xx_bGetPhaseAGateDriverHighSideStatus(void);
static boolean DRV83xx_bGetPhaseAVdsOverCurLowSideStatus(void);
static boolean DRV83xx_bGetPhaseAVdsOverCurHighSideStatus(void);
static boolean DRV83xx_bGetPhaseBShortGndStatus(void);
static boolean DRV83xx_bGetPhaseBShortBatStatus(void);
static boolean DRV83xx_bGetPhaseBOpenLoadStatus(void);
static boolean DRV83xx_bGetPhaseBGateDriverLowSideStatus(void);
static boolean DRV83xx_bGetPhaseBGateDriverHighSideStatus(void);
static boolean DRV83xx_bGetPhaseBVdsOverCurLowSideStatus(void);
static boolean DRV83xx_bGetPhaseBVdsOverCurHighSideStatus(void);
static boolean DRV83xx_bGetPhaseCShortGndStatus(void);
static boolean DRV83xx_bGetPhaseCShortBatStatus(void);
static boolean DRV83xx_bGetPhaseCOpenLoadStatus(void);
static boolean DRV83xx_bGetPhaseCGateDriverLowSideStatus(void);
static boolean DRV83xx_bGetPhaseCGateDriverHighSideStatus(void);
static boolean DRV83xx_bGetPhaseCVdsOverCurLowSideStatus(void);


/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
REG_MAP_Obj Reg_Map_Cache[eSPI_MAX_REG_NUM];
REG_MAP_Obj Reg_Map_CfgBuf[eSPI_MAX_REG_NUM];

DRV_Control_Obj DRV_Control;

uint16 Register_Counter;

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/
const uint16 DRV8343S_Idrive_RegData[NUMCONFIG_IDRIVE_VALUES] = {DRV8343S_IdriveP_MODE0, DRV8343S_IdriveP_MODE1, DRV8343S_IdriveP_MODE2, DRV8343S_IdriveP_MODE3,
                                                           DRV8343S_IdriveP_MODE4, DRV8343S_IdriveP_MODE5, DRV8343S_IdriveP_MODE6, DRV8343S_IdriveP_MODE7,
                                                           DRV8343S_IdriveP_MODE8, DRV8343S_IdriveP_MODE9, DRV8343S_IdriveP_MODE10, DRV8343S_IdriveP_MODE11,
                                                           DRV8343S_IdriveP_MODE12, DRV8343S_IdriveP_MODE13, DRV8343S_IdriveP_MODE14, DRV8343S_IdriveP_MODE15 };

const uint16 DRV8343S_Tdrive_RegData[NUMCONFIG_TDRIVE_VALUES] = {DRV8343S_Tdrive_MODE0, DRV8343S_Tdrive_MODE1, DRV8343S_Tdrive_MODE2, DRV8343S_Tdrive_MODE3};

const DRV83xx_FaultIndicateSet DRV83xx_FaultFuncSet = {
   DRV83xx_bGetFaultStatus,
   DRV83xx_bGetGateDriverStatus,
   DRV83xx_bGetChargePumpUVStatus,
   DRV83xx_bGetUVLockoutStatus,
   DRV83xx_bGetOverCurStatus,
   DRV83xx_bGetOverTempWarningStatus,
   DRV83xx_bGetOverTempShutdownStatus,
   DRV83xx_bGetOpenLoadOrShortStatus,
   DRV83xx_bGetPhaseAShortGndStatus,
   DRV83xx_bGetPhaseAShortBatStatus,
   DRV83xx_bGetPhaseAOpenLoadStatus,
   DRV83xx_bGetPhaseAGateDriverLowSideStatus,
   DRV83xx_bGetPhaseAGateDriverHighSideStatus,
   DRV83xx_bGetPhaseAVdsOverCurLowSideStatus,
   DRV83xx_bGetPhaseAVdsOverCurHighSideStatus,
   DRV83xx_bGetPhaseBShortGndStatus,
   DRV83xx_bGetPhaseBShortBatStatus,
   DRV83xx_bGetPhaseBOpenLoadStatus,
   DRV83xx_bGetPhaseBGateDriverLowSideStatus,
   DRV83xx_bGetPhaseBGateDriverHighSideStatus,
   DRV83xx_bGetPhaseBVdsOverCurLowSideStatus,
   DRV83xx_bGetPhaseBVdsOverCurHighSideStatus,
   DRV83xx_bGetPhaseCShortGndStatus,
   DRV83xx_bGetPhaseCShortBatStatus,
   DRV83xx_bGetPhaseCOpenLoadStatus,
   DRV83xx_bGetPhaseCGateDriverLowSideStatus,
   DRV83xx_bGetPhaseCGateDriverHighSideStatus,
   DRV83xx_bGetPhaseCVdsOverCurLowSideStatus
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/*function
 * DRV83xx_is_CSA_BI_DIR_Mode(void)
 * This function when called returns if the device is in Bidirectional CSA configuration or Uni Direction CSA configuration
 * */
uint8 DRV83xx_is_CSA_BI_DIR_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg(SPI_REG_DRV_CTRL_13);  // Read the Register cache that holds the CSA mode settings
   return (regValue & DRV8343S_VREF_DIV_MASK);          // Return if the Vref_div bit is High (Bi directional ) or ) (Uni Dirction)
}

/*function
 * DRV83xx_set_Six_PWM_Mode(void)
 * This function when called sets the mode to six PWM mode
 * */
void DRV83xx_set_Six_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg(SPI_REG_DRV_CTRL_1);
   regValue &= ~DRV8343S_PWM_MODE_MASK;                  // Six PWM Mode
   DRV83xx_vidReg2Cache(SPI_REG_DRV_CTRL_1, regValue);   // Write back the updated value to the cache
}

/*function
 * DRV83xx_set_One_PWM_Mode(void)
 * This function when called sets the mode to one PWM mode
 * */
void DRV83xx_set_One_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg(SPI_REG_DRV_CTRL_1);

   regValue &= ~DRV8343S_PWM_MODE_MASK;
   regValue |= DRV8343S_PWM_MODE_1x_MASK;
   DRV83xx_vidReg2Cache(SPI_REG_DRV_CTRL_1, regValue);   // Write back the updated value to the cache
}

/*function
 * DRV83xx_set_IND_ABC_PWM_Mode(void)
 * This function when called sets the mode to one PWM mode
 * */
void DRV83xx_set_IND_ABC_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg(SPI_REG_DRV_CTRL_1);

   regValue &= ~DRV8343S_PWM_MODE_MASK;
   regValue |= DRV8343S_BRIDGE_ABC_MODE_MASK;
   DRV83xx_vidReg2Cache(SPI_REG_DRV_CTRL_1, regValue);   // Write back the updated value to the cache
}

/*function
 * DRV83xx_set_IND_BRIDGE_AB_FET_C_PWM_Mode(void)
 * This function when called sets the mode to one PWM mode
 * */
void DRV83xx_set_IND_AB_FET_C_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg(SPI_REG_DRV_CTRL_1);

   regValue &= ~DRV8343S_PWM_MODE_MASK;
   regValue |= DRV8343S_BRIDGE_AB_FET_C_MODE_MASK;
   DRV83xx_vidReg2Cache(SPI_REG_DRV_CTRL_1, regValue);   // Write back the updated value to the cache
}

/*function
 * DRV83xx_set_IND_BC_FET_A_PWM_Mode(void)
 * This function when called sets the mode to one PWM mode
 * */
void DRV83xx_set_IND_BC_FET_A_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg(SPI_REG_DRV_CTRL_1);

   regValue &= ~DRV8343S_PWM_MODE_MASK;
   regValue |= DRV8343S_BRIDGE_BC_FET_A_MODE_MASK;
   DRV83xx_vidReg2Cache(SPI_REG_DRV_CTRL_1, regValue);   // Write back the updated value to the cache
}

/*function
 * DRV83xx_set_IND_A_FET_BC_PWM_Mode(void)
 * This function when called sets the mode to one PWM mode
 * */
void DRV83xx_set_IND_A_FET_BC_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg(SPI_REG_DRV_CTRL_1);

   regValue &= ~DRV8343S_PWM_MODE_MASK;
   regValue |= DRV8343S_BRIDGE_A_FET_BC_MODE_MASK;
   DRV83xx_vidReg2Cache(SPI_REG_DRV_CTRL_1, regValue);   // Write back the updated value to the cache
}

/*function
 * DRV83xx_set_FET_ABC_PWM_Mode(void)
 * This function when called sets the mode to one PWM mode
 * */
void DRV83xx_set_FET_ABC_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg(SPI_REG_DRV_CTRL_1);

   regValue &= ~DRV8343S_PWM_MODE_MASK;
   regValue |= DRV8343S_FET_ABC_MODE_MASK;
   DRV83xx_vidReg2Cache(SPI_REG_DRV_CTRL_1, regValue);   // Write back the updated value to the cache
}

/*function
 * DRV83xx_Start_OLP_Test(void)
 * This function when called clears the Fault bit by which all the warnings and faults are cleared
 * */
void DRV83xx_vidStartOLPTest(void)
{
   Reg_Map_Cache[SPI_REG_DRV_CTRL_2].DRV_CTRL_IC2.B.DCI2_EN_OLP = 1;
}

void DRV83xx_vidStartShortTest(void)
{
   Reg_Map_Cache[SPI_REG_DRV_CTRL_2].DRV_CTRL_IC2.B.DCI2_EN_SHT_TST = 1;
}

void DRV83xx_vidEnableGateDrv(void)
{
   Reg_Map_Cache[SPI_REG_DRV_CTRL_9].DRV_CTRL_IC9.B.DCI9_COAST = 0;
}

void DRV83xx_vidDisableGateDrv(void)
{
   Reg_Map_Cache[SPI_REG_DRV_CTRL_9].DRV_CTRL_IC9.B.DCI9_COAST = 1;
}

void DRV83xx_vidControlInit(void)
{
   uint8 u8localCur;
   DRV_Control.Idrive_Min_Value = (GATE_TO_DRAIN_CHARGE * 1000 / RISE_TIME);     // The Idrive calculation Can be seen in datasheet
   DRV_Control.Tdrive_Max_Value = (2 * MAX(RISE_TIME,FALL_TIME));                 // The Tdrive value is calculated based on datasheet , For DRv83xxS devices Tdrive is twice of Rise time/ Fall time

   for(DRV_Control.Register_Counter = 0; DRV_Control.Register_Counter < NUMCONFIG_IDRIVE_VALUES ; DRV_Control.Register_Counter++)
   {
      if(DRV_Control.Idrive_Min_Value >= DRV8343S_Idrive_RegData[DRV_Control.Register_Counter])
      {
         DRV_Control.Idrive_Setting = DRV_Control.Register_Counter;
      }
   }
   for(DRV_Control.Register_Counter = 0; DRV_Control.Register_Counter < NUMCONFIG_TDRIVE_VALUES ; DRV_Control.Register_Counter++)
   {
      if(DRV_Control.Tdrive_Max_Value >= DRV8343S_Tdrive_RegData[DRV_Control.Register_Counter])
      {
         DRV_Control.Tdrive_Setting = DRV_Control.Register_Counter;
      }
   }
   
   u8localCur = DRV83xx_u8GetDriverCur();
   /* Max I Driver */
   DRV_Control.Idrive_Setting = u8localCur;
}

void DRV83xx_vidRegisterInit(void)
{
   uint8 u8RegNum = 0;
   
   // Set Register 0x00
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_FAULT  = DRV8343S_FAULT;
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_GDF    = DRV8343S_GDF;
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_CPUV   = DRV8343S_CPUV;
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_UVLO   = DRV8343S_UVLO;
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_OCP    = DRV8343S_OCP;
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_OTW    = DRV8343S_OTW;
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_OTSD   = DRV8343S_OTSD;
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_OL_SHT = DRV8343S_OL_SHT;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x01
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_FAULT     = DRV8343S_SA_OC;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_SA_OC     = DRV8343S_SHT_GND_A;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_SHT_BAT_A = DRV8343S_SHT_BAT_A;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_OL_PH_A   = DRV8343S_OL_PH_A;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_VGS_LA    = DRV8343S_VGS_LA;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_VGS_HA    = DRV8343S_VGS_HA;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_VDS_LA    = DRV8343S_VDS_LA;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_VDS_HA    = DRV8343S_VDS_HA;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x02
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_FAULT     = DRV8343S_SB_OC;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_SB_OC     = DRV8343S_SHT_GND_B;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_SHT_BAT_B = DRV8343S_SHT_BAT_B;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_OL_PH_B   = DRV8343S_OL_PH_B;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_VGS_LB    = DRV8343S_VGS_LB;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_VGS_HB    = DRV8343S_VGS_HB;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_VDS_LB    = DRV8343S_VDS_LB;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_VDS_HB    = DRV8343S_VDS_HB;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x03
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_FAULT     = DRV8343S_SC_OC;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_SC_OC     = DRV8343S_SHT_GND_C;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_SHT_BAT_C = DRV8343S_SHT_BAT_C;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_OL_PH_C   = DRV8343S_OL_PH_C;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_VGS_LC    = DRV8343S_VGS_LC;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_VGS_HC    = DRV8343S_VGS_HC;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_VDS_LC    = DRV8343S_VDS_LC;
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_VDS_HC    = DRV8343S_VDS_HC;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x04
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_CLR_FLT     = DRV8343S_CLR_FLT;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_PWM_MODE    = DRV8343S_PWM_MODE;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_ONE_PWM_COM = DRV8343S_ONE_PWM_COM;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_ONE_PWM_DIR = DRV8343S_ONE_PWM_DIR;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_ONE_PWM_BRK = DRV8343S_ONE_PWM_BRK;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x05
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_OTSD_MODE    = DRV8343S_OTSD_MODE;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_OLP_SHTS_DLY = DRV8343S_OLP_SHTS_DLY;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_SHT_TST   = 0;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_OLP       = DRV8343S_EN_OLP;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_OLA_C     = DRV8343S_EN_OLA_C;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_OLA_B     = DRV8343S_EN_OLA_B;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_OLA_A     = DRV8343S_EN_OLA_A;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   Reg_Map_CfgBuf[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_SHT_TST  = 0;
   u8RegNum++;

   // Set Register 0x06
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC3.B.DCI3_IDRIVEP_LA = DRV_Control.Idrive_Setting;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC3.B.DCI3_IDRIVEP_HA = DRV_Control.Idrive_Setting;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x07
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC4.B.DCI4_IDRIVEP_LB = DRV_Control.Idrive_Setting;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC4.B.DCI4_IDRIVEP_HB = DRV_Control.Idrive_Setting;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x08
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC5.B.DCI5_IDRIVEP_LC = DRV_Control.Idrive_Setting;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC5.B.DCI5_IDRIVEP_HC = DRV_Control.Idrive_Setting;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x09
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC6.B.DCI6_VDS_LA = DRV8343S_VDS_LVL_LA;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC6.B.DCI6_VDS_HA = DRV8343S_VDS_LVL_HA;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x0A
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC7.B.DCI7_VDS_LB = DRV8343S_VDS_LVL_LB;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC7.B.DCI7_VDS_HB = DRV8343S_VDS_LVL_HB;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Set Register 0x0B
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC8.B.DCI8_VDS_LC = DRV8343S_VDS_LVL_LC;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC8.B.DCI8_VDS_HC = DRV8343S_VDS_LVL_HC;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;
   
   // Read Register 0x0C
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_COAST      = DRV8343S_COAST;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_TRETRY     = DRV8343S_TRETRY;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_DEAD_TIME  = DRV8343S_DEAD_TIME;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_TDRIVE_MAX = DRV8343S_TDRIVE_MAX;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_TDRIVE     = DRV_Control.Tdrive_Setting;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Read Register 0x0D
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC10.B.DCI10_LOCK     = DRV8343S_LOCK;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC10.B.DCI10_DIS_CPUV = DRV8343S_DIS_CPUV;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC10.B.DCI10_DIS_GDF  = DRV8343S_DIS_GDF;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC10.B.DCI10_OCP_DEG  = DRV8343S_OCP_DEG;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Read Register 0x0E
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_RSVD_REG_10 = DRV8343S_RSVD_REG_10;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_OTW_REP     = DRV8343S_OTW_REP;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_CBC         = DRV8343S_CBC;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_DIS_VDS_C   = DRV8343S_DIS_VDS_C;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_DIS_VDS_B   = DRV8343S_DIS_VDS_B;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_DIS_VDS_A   = DRV8343S_DIS_VDS_A;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_OCP_MODE    = DRV8343S_OCP_MODE;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Read Register 0x0F
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_LS_REF     = DRV8343S_LS_REF;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_CSA_FET    = DRV8343S_CSA_FET;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_CSA_GAIN_C = DRV8343S_CSA_GAIN_C;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_CSA_GAIN_B = DRV8343S_CSA_GAIN_B;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_CSA_GAIN_A = DRV8343S_CSA_GAIN_A;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Read Register 0x10
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_CAL_MODE  = DRV8343S_CAL_MODE;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_VREF_DIV  = DRV8343S_VREF_DIV;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_SEN_LVL_C = DRV8343S_SEN_LVL_C;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_SEN_LVL_B = DRV8343S_SEN_LVL_B;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_SEN_LVL_A = DRV8343S_SEN_LVL_A;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;

   // Read Register 0x11
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_RSVD_REG_14 = DRV8343S_RSVD_REG_14;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_DIS_SEN_C   = DRV8343S_DIS_SEN_C;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_DIS_SEN_B   = DRV8343S_DIS_SEN_B;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_DIS_SEN_A   = DRV8343S_DIS_SEN_A;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_CSA_CAL_C   = DRV8343S_CSA_CAL_C;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_CSA_CAL_B   = DRV8343S_CSA_CAL_B;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_CSA_CAL_A   = DRV8343S_CSA_CAL_A;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
}

void DRV83xx_vidRestoreCfgRegs(void)
{
   uint8 u8Index;
   
   for(u8Index = 0; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      Reg_Map_Cache[u8Index].U = Reg_Map_CfgBuf[u8Index].U;
   }
}

boolean DRV83xx_bCfgIsNormal(void)
{
   uint8 u8Index;
   boolean bCheckRet = TRUE;

   for(u8Index = eSPI_REG_DRV_CTRL_1; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      if(Reg_Map_CfgBuf[u8Index].U != Reg_Map_Cache[u8Index].U)
      {
         bCheckRet = FALSE;
         break;
      }
   }

   return bCheckRet;
}

/*function
 * DRV83xx_regRestoreFromCache()
 * Restores the device register values by rewriting them with the cached values.
 * */
void DRV83xx_vidWriteRegs(void)
{
   uint8 u8Index = 0;
   
   /* Write all the cached register values to the device */
   for(u8Index = 0; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      DRV83xxHAL_xRegMapTxBuf[u8Index] = DRV83xx_u32CalcWriteFrame(u8Index,  Reg_Map_Cache[u8Index].U);
   }
   
   DRV83xx_vidTrigSpiTx();
}

/*function
 * DRV83xx_regRestoreFromCache()
 * Restores the device register values by rewriting them with the cached values.
 * */
void DRV83xx_vidReadRegs(void)
{
   uint8 u8Index = 0;
   
   /* Write all the cached register values to the device */
   for(u8Index = 0; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      DRV83xxHAL_xRegMapTxBuf[u8Index] = DRV83xx_u32CalcReadFrame(u8Index);
   }
   
   DRV83xx_vidTrigSpiTx();
}

/*function
 * DRV83xx_regRestoreFromCache()
 * Restores the device register values by rewriting them with the cached values.
 * */
void DRV83xx_vidCacheRestoreFromReg(void)
{
   uint8 u8Index = 0;
   
   /* Write all the cached register values to the device */
   for(u8Index = 0; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      Reg_Map_Cache[u8Index].U = (uint8)(DRV83xxHAL_xRegMapRxBuf[u8Index] & 0x000000FF);
   }

   DRV83xx_vidCacheTrigBitReset();
}

/*function
 * DRV83xx_ClearFault_Status(void)
 * This function when called clears the Fault bit by which all the warnings and faults are cleared
 * */
void DRV83xx_vidClearFaultStatus(void)
{
   Reg_Map_Cache[SPI_REG_DRV_CTRL_1].DRV_CTRL_IC1.B.DCI1_CLR_FLT = 1;
}

void DVR83xx_vidGetFaultRegsVal(uint8 * const pu8FaultRegsCache)
{
   pu8FaultRegsCache[0] = Reg_Map_Cache[0].U;
   pu8FaultRegsCache[1] = Reg_Map_Cache[1].U;
   pu8FaultRegsCache[2] = Reg_Map_Cache[2].U;
   pu8FaultRegsCache[3] = Reg_Map_Cache[3].U;
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static inline void DRV83xx_vidCacheTrigBitReset(void)
{
   Reg_Map_Cache[SPI_REG_DRV_CTRL_1].DRV_CTRL_IC1.B.DCI1_CLR_FLT = 0;
   Reg_Map_Cache[SPI_REG_DRV_CTRL_2].DRV_CTRL_IC2.B.DCI2_EN_OLP = 0;
}

/*function
 * DRV83xx_CacheToReg(uint8 address)
 * Caches the device register value in the firmware
 * */
static inline uint16 DRV83xx_u16Cache2Reg(uint8 address)
{
   uint16 regValue;

   regValue = (uint16)Reg_Map_Cache[address].U;
   
   return regValue;
}

/*function
 * DRV83xx_regToCache(uint8 address)
 * Caches the device register value in the firmware
 * */
static inline void DRV83xx_vidReg2Cache(uint8 address, uint16 regValue)
{
   Reg_Map_Cache[address].U = (uint8)regValue;
}

static inline uint32 DRV83xx_u32CalcWriteFrame(uint32 regAddr, uint32 data)
{
   return (0 | SPI_WRITE_CMD | (regAddr << SPI_ADDR_OFFSET) | data);
}

static inline uint32 DRV83xx_u32CalcReadFrame(uint32 regAddr)
{
   return (0 | SPI_READ_CMD | (regAddr << SPI_ADDR_OFFSET));
}

static inline void DRV83xx_vidTrigSpiTx(void)
{
   DRV83xxHAL_vidSpiWrite(eSPI_MAX_REG_NUM);
}

static boolean DRV83xx_bGetFaultStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_FAULT_STAT].U & DRV8343S_FAULT_MASK) != 0);
}

static boolean DRV83xx_bGetGateDriverStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_FAULT_STAT].U & DRV8343S_GDF_MASK) != 0);
}

static boolean DRV83xx_bGetChargePumpUVStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_FAULT_STAT].U & DRV8343S_CPUV_MASK) != 0);
}

static boolean DRV83xx_bGetUVLockoutStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_FAULT_STAT].U & DRV8343S_UVLO_MASK) != 0);
}

static boolean DRV83xx_bGetOverCurStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_FAULT_STAT].U & DRV8343S_OCP_MASK) != 0);
}

static boolean DRV83xx_bGetOverTempWarningStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_FAULT_STAT].U & DRV8343S_OTW_MASK) != 0);
}

static boolean DRV83xx_bGetOverTempShutdownStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_FAULT_STAT].U & DRV8343S_OTSD_MASK) != 0);
}

static boolean DRV83xx_bGetOpenLoadOrShortStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_FAULT_STAT].U & DRV8343S_OL_SHT_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseAShortGndStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_A].U & DRV8343S_SHT_GND_A_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseAShortBatStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_A].U & DRV8343S_SHT_BAT_A_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseAOpenLoadStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_A].U & DRV8343S_OL_PH_A_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseAGateDriverLowSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_A].U & DRV8343S_VGS_LA_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseAGateDriverHighSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_A].U & DRV8343S_VGS_HA_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseAVdsOverCurLowSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_A].U & DRV8343S_VDS_LA_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseAVdsOverCurHighSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_A].U & DRV8343S_VDS_HA_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseBShortGndStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_B].U & DRV8343S_SHT_GND_B_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseBShortBatStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_B].U & DRV8343S_SHT_BAT_B_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseBOpenLoadStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_B].U & DRV8343S_OL_PH_B_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseBGateDriverLowSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_B].U & DRV8343S_VGS_LB_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseBGateDriverHighSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_B].U & DRV8343S_VGS_HB_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseBVdsOverCurLowSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_B].U & DRV8343S_VDS_LB_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseBVdsOverCurHighSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_B].U & DRV8343S_VDS_HB_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseCShortGndStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_C].U & DRV8343S_SHT_GND_C_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseCShortBatStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_C].U & DRV8343S_SHT_BAT_C_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseCOpenLoadStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_C].U & DRV8343S_OL_PH_C_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseCGateDriverLowSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_C].U & DRV8343S_VGS_LC_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseCGateDriverHighSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_C].U & DRV8343S_VGS_HC_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseCVdsOverCurLowSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_C].U & DRV8343S_VDS_LC_MASK) != 0);
}

static boolean DRV83xx_bGetPhaseCVdsOverCurHighSideStatus(void)
{
   return ((Reg_Map_Cache[SPI_REG_DIAG_STAT_C].U & DRV8343S_VDS_HC_MASK) != 0);
}


