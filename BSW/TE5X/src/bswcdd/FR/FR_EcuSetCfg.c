/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "FR_EcuSetCfg.h"
#include "FR_InputSystem.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  
/* MGTCU cfg */
#define FR_MGTCU_BLOCK_START_INDEX  DFM_MGTCU_FRECORD_A_BLOCK
#define FR_MGTCU_BLOCK_NUM          (1 + DFM_MGTCU_FRECORD_C_BLOCK - FR_MGTCU_BLOCK_START_INDEX)

/* DCAC cfg */
#define FR_DCAC_BLOCK_START_INDEX  DFM_MGTCU_FRECORD_D_BLOCK
#define FR_DCAC_BLOCK_NUM          (1 + DFM_MGTCU_FRECORD_F_BLOCK - FR_DCAC_BLOCK_START_INDEX)

/* PDU cfg */
#define FR_PDU_BLOCK_START_INDEX  DFM_MGTCU_FRECORD_G_BLOCK
#define FR_PDU_BLOCK_NUM          (1 + DFM_MGTCU_FRECORD_I_BLOCK - FR_PDU_BLOCK_START_INDEX)
/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static uint8         FR_au8BufState[eFR_ECU_MAX_NUM];
static FR_FixHead    FR_atFixHeadSet[eFR_ECU_MAX_NUM];
static FR_uLockState FR_auLockStateSet[eFR_ECU_MAX_NUM];

/*******************************************************************************
 ****  Global Constant Declarations
 ******************************************************************************/
#define FR_START_SEC_FIX_CFG_CONST_32
#include "FR_MemMap.h"
extern const FR_BankUserCfg FR_ktMGTCUBankUserCfg;
extern const FR_BankUserCfg FR_ktDCACBankUserCfg;
extern const FR_BankUserCfg FR_ktPDUBankUserCfg;
#define FR_STOP_SEC_FIX_CFG_CONST_32
#include "FR_MemMap.h"

/*******************************************************************************
 ****  Global Constant Definitions
 ******************************************************************************/
const FR_Cfg FR_aktEcuGroupCfg[eFR_ECU_MAX_NUM] = {
   {
      .u8NvmBlockNum   = FR_MGTCU_BLOCK_NUM,
      .u8NvmStartIndex = FR_MGTCU_BLOCK_START_INDEX,
      
      .pu8State        = &FR_au8BufState[eFR_MGTCU_INDEX],
      .ptFixHead       = &FR_atFixHeadSet[eFR_MGTCU_INDEX],
      .puLockState     = &FR_auLockStateSet[eFR_MGTCU_INDEX],
      
      .pktBankUserCfg  = &FR_ktMGTCUBankUserCfg
   },
   {
      .u8NvmBlockNum   = FR_DCAC_BLOCK_NUM,
      .u8NvmStartIndex = FR_DCAC_BLOCK_START_INDEX,
      
      .pu8State        = &FR_au8BufState[eFR_DCAC_INDEX],
      .ptFixHead       = &FR_atFixHeadSet[eFR_DCAC_INDEX],
      .puLockState     = &FR_auLockStateSet[eFR_DCAC_INDEX],
      
      .pktBankUserCfg  = &FR_ktDCACBankUserCfg
   },
   {
      .u8NvmBlockNum   = FR_PDU_BLOCK_NUM,
      .u8NvmStartIndex = FR_PDU_BLOCK_START_INDEX,
      
      .pu8State        = &FR_au8BufState[eFR_PDU_INDEX],
      .ptFixHead       = &FR_atFixHeadSet[eFR_PDU_INDEX],
      .puLockState     = &FR_auLockStateSet[eFR_PDU_INDEX],
      
      .pktBankUserCfg  = &FR_ktPDUBankUserCfg
   },
};

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void FR_vidEcuMainHandler(const uint8 ku8EcuID, const uint32 ku32Period)
{
   if(ku8EcuID < eFR_ECU_MAX_NUM)
   {
      FR_vidOpWrapFunc(&FR_aktEcuGroupCfg[ku8EcuID], ku32Period);
   }
}

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/




