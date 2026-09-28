
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_MuxFuncCfg.h"
#include "MAIN_MFC_Calib.h"
#include "PortMux.h"

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct MAIN_MFC_CfgByte0{
    uint8 bMotMcu_1_PT100Ena  : 1;
    uint8 bMotMcu_1_PT1000Ena : 1;
    uint8 bMotMcu_2_PT100Ena  : 1;
    uint8 bMotMcu_2_PT1000Ena : 1;
    uint8 bMotEPS_PT100Ena    : 1;
    uint8 bMotEPS_PT1000Ena   : 1;
    uint8 bMotACM_PT100Ena    : 1;
    uint8 bMotACM_PT1000Ena   : 1;
}MAIN_MFC_CfgByte0;

typedef struct MAIN_MFC_CfgByte1{
    uint8 bCanBEna  : 1;
    uint8 bCanCEna  : 1;
    uint8 bCanDEna  : 1;
    uint8 bCanFEna  : 1;
    uint8 bCanEEna  : 1;
    uint8 bCanAEna  : 1;
    uint8 bDcAcEna  : 1;
    uint8 bReserved : 1;
}MAIN_MFC_CfgByte1;

typedef union MAIN_MFC_CfgMap
{
   uint8 U;
   MAIN_MFC_CfgByte0   u8CfgByte0;
   MAIN_MFC_CfgByte1   u8CfgByte1;
}MAIN_MFC_CfgMap;

enum{
   eMAIN_MFC_CFG_BYTE_0 = 0,  /* MSB */
   eMAIN_MFC_CFG_BYTE_1,

   eMAIN_MFC_MAX_CFG_NO
};

enum{
   eMAIN_MFC_CFG_PT100_ENA_BIT = 0,
   eMAIN_MFC_CFG_PT1000_ENA_BIT
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define MAIN_MFC_CHECK_CFG_BIT(u8Cfg, u8BitPosi)   ((u8Cfg & (0x01 << u8BitPosi)) == (0x01 << u8BitPosi))

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
static MAIN_MFC_CfgMap MAIN_MFC_au8CfgMap[eMAIN_MFC_MAX_CFG_NO] = {{.U = 0}};

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static void MAIN_MFC_vidFunctionCfgReload(void);

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void MAIN_MFC_vidModuleInit(void)
{
   MAIN_MFC_vidFunctionCfgReload();
   PMux_vidShiftOutMultiBytes(&(MAIN_MFC_au8CfgMap[0].U), eMAIN_MFC_MAX_CFG_NO, ePMUX_SHIFT_REG_1);
}

void MAIN_MFC_vidModuleReinit(void)
{
   static boolean bReinitDone = FALSE;

   if(TRUE == MAIN_MFC_bTestEnaC)
   {
      if(FALSE == bReinitDone)
      {
         bReinitDone = TRUE;
         MAIN_MFC_vidModuleInit();
      }
   }
   else
   {
      bReinitDone = FALSE;
   }
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static void MAIN_MFC_vidFunctionCfgReload(void)
{
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_0].u8CfgByte0.bMotACM_PT100Ena    = MAIN_MFC_CHECK_CFG_BIT(MAIN_MFC_u8TempSensorCfgC_ACM, eMAIN_MFC_CFG_PT100_ENA_BIT);
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_0].u8CfgByte0.bMotACM_PT1000Ena   = MAIN_MFC_CHECK_CFG_BIT(MAIN_MFC_u8TempSensorCfgC_ACM, eMAIN_MFC_CFG_PT1000_ENA_BIT);
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_0].u8CfgByte0.bMotEPS_PT100Ena    = MAIN_MFC_CHECK_CFG_BIT(MAIN_MFC_u8TempSensorCfgC_EPS, eMAIN_MFC_CFG_PT100_ENA_BIT);
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_0].u8CfgByte0.bMotEPS_PT1000Ena   = MAIN_MFC_CHECK_CFG_BIT(MAIN_MFC_u8TempSensorCfgC_EPS, eMAIN_MFC_CFG_PT1000_ENA_BIT);
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_0].u8CfgByte0.bMotMcu_1_PT100Ena  = MAIN_MFC_CHECK_CFG_BIT(MAIN_MFC_u8TempSensorCfgC_MCU1, eMAIN_MFC_CFG_PT100_ENA_BIT);
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_0].u8CfgByte0.bMotMcu_1_PT1000Ena = MAIN_MFC_CHECK_CFG_BIT(MAIN_MFC_u8TempSensorCfgC_MCU1, eMAIN_MFC_CFG_PT1000_ENA_BIT);
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_0].u8CfgByte0.bMotMcu_2_PT100Ena  = MAIN_MFC_CHECK_CFG_BIT(MAIN_MFC_u8TempSensorCfgC_MCU2, eMAIN_MFC_CFG_PT100_ENA_BIT);
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_0].u8CfgByte0.bMotMcu_2_PT1000Ena = MAIN_MFC_CHECK_CFG_BIT(MAIN_MFC_u8TempSensorCfgC_MCU2, eMAIN_MFC_CFG_PT1000_ENA_BIT);

   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_1].u8CfgByte1.bCanAEna = !MAIN_MFC_bCanAEnaC;
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_1].u8CfgByte1.bCanBEna = !MAIN_MFC_bCanBEnaC;
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_1].u8CfgByte1.bCanCEna = !MAIN_MFC_bCanCEnaC;
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_1].u8CfgByte1.bCanDEna = !MAIN_MFC_bCanDEnaC;
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_1].u8CfgByte1.bCanEEna = !MAIN_MFC_bCanEEnaC;
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_1].u8CfgByte1.bCanFEna = !MAIN_MFC_bCanFEnaC;
   MAIN_MFC_au8CfgMap[eMAIN_MFC_CFG_BYTE_1].u8CfgByte1.bDcAcEna = !MAIN_MFC_bDcAcEnaC;
}
