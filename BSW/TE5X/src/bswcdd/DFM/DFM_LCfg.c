
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "DFM_Cfg.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/    

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static DFM_VarSet DFM_atBlockVarSet[DFM_MAX_BLOCK_NO] = {{0}};

/*******************************************************************************
 ****  Global Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Constant Definitions
 ******************************************************************************/
const DFM_Block DFM_Blocks[DFM_MAX_BLOCK_NO] = {
   {
      .u32BlockID         = DFM_OC_TRIM_BLOCK,
      .u32RomBlockAddress = DFM_OC_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_OC_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_OC_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_OC_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_OC_TRIM_BLOCK]
   },
   {
      .u32BlockID         = DFM_CUR_CAL_BLOCK,
      .u32RomBlockAddress = DFM_CURCAL_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_CURCAL_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_CURCAL_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_CURCAL_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_CUR_CAL_BLOCK]
   },
   {
      .u32BlockID         = DFM_MGTCU_FRECORD_A_BLOCK,
      .u32RomBlockAddress = DFM_FAULT_RECORD_A_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_FAULT_RECORD_A_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_FAULT_RECORD_A_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_FAULT_RECORD_A_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_MGTCU_FRECORD_A_BLOCK]
   },
   {
      .u32BlockID         = DFM_MGTCU_FRECORD_B_BLOCK,
      .u32RomBlockAddress = DFM_FAULT_RECORD_B_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_FAULT_RECORD_B_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_FAULT_RECORD_B_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_FAULT_RECORD_B_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_MGTCU_FRECORD_B_BLOCK]
   },
   {
      .u32BlockID         = DFM_MGTCU_FRECORD_C_BLOCK,
      .u32RomBlockAddress = DFM_FAULT_RECORD_C_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_FAULT_RECORD_C_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_FAULT_RECORD_C_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_FAULT_RECORD_C_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_MGTCU_FRECORD_C_BLOCK]
   },
   {
      .u32BlockID         = DFM_MGTCU_FRECORD_D_BLOCK,
      .u32RomBlockAddress = DFM_FAULT_RECORD_D_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_FAULT_RECORD_D_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_FAULT_RECORD_D_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_FAULT_RECORD_D_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_MGTCU_FRECORD_D_BLOCK]
   },
   {
      .u32BlockID         = DFM_MGTCU_FRECORD_E_BLOCK,
      .u32RomBlockAddress = DFM_FAULT_RECORD_E_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_FAULT_RECORD_E_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_FAULT_RECORD_E_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_FAULT_RECORD_E_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_MGTCU_FRECORD_E_BLOCK]
   },
   {
      .u32BlockID         = DFM_MGTCU_FRECORD_F_BLOCK,
      .u32RomBlockAddress = DFM_FAULT_RECORD_F_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_FAULT_RECORD_F_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_FAULT_RECORD_F_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_FAULT_RECORD_F_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_MGTCU_FRECORD_F_BLOCK]
   },
   {
      .u32BlockID         = DFM_MGTCU_FRECORD_G_BLOCK,
      .u32RomBlockAddress = DFM_FAULT_RECORD_G_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_FAULT_RECORD_G_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_FAULT_RECORD_G_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_FAULT_RECORD_G_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_MGTCU_FRECORD_G_BLOCK]
   },
   {
      .u32BlockID         = DFM_MGTCU_FRECORD_H_BLOCK,
      .u32RomBlockAddress = DFM_FAULT_RECORD_H_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_FAULT_RECORD_H_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_FAULT_RECORD_H_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_FAULT_RECORD_H_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_MGTCU_FRECORD_H_BLOCK]
   },
   {
      .u32BlockID         = DFM_MGTCU_FRECORD_I_BLOCK,
      .u32RomBlockAddress = DFM_FAULT_RECORD_I_ROM_BLOCK_ADDR,
      .u32RamBlockAddress = (uint32)DFM_FAULT_RECORD_I_RAM_BLOCK_ADDR,
      .u32RamBlockLength  = DFM_FAULT_RECORD_I_RAM_BLOCK_LEN,
      .u32RomBlockLength  = DFM_FAULT_RECORD_I_ROM_BLOCK_LEN,

      .ptVarSet           = &DFM_atBlockVarSet[DFM_MGTCU_FRECORD_I_BLOCK]
   },
};

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

