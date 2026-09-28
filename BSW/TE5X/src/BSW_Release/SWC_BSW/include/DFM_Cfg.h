#ifndef __DFM_CFG_H_
#define __DFM_CFG_H_


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_types.h"

#include "MAIN_OCTrim.h"
#include "MAIN_CalibData.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/
#define DFM_CORE0_Q_ENABLE  TRUE
#define DFM_CORE1_Q_ENABLE  TRUE
#define DFM_CORE2_Q_ENABLE  FALSE
#define DFM_CORE3_Q_ENABLE  FALSE
#define DFM_CORE4_Q_ENABLE  FALSE
#define DFM_CORE5_Q_ENABLE  FALSE


#define DFM_OC_ROM_BLOCK_ADDR   0xAF03F000
#define DFM_OC_ROM_BLOCK_LEN    0x1000        /* Align by 0x1000 bytes */
#define DFM_OC_RAM_BLOCK_ADDR   MAIN_u32FixOcDataBuf
#define DFM_OC_RAM_BLOCK_LEN    64            /* Align by 32 bytes */

#define DFM_CURCAL_ROM_BLOCK_ADDR   0xAF03E000
#define DFM_CURCAL_ROM_BLOCK_LEN    0x1000    /* Align by 0x1000 bytes */
#define DFM_CURCAL_RAM_BLOCK_ADDR   MAIN_au16CalibParamNvm
#define DFM_CURCAL_RAM_BLOCK_LEN    128       /* Align by 32 bytes */

#define DFM_FAULT_RECORD_A_ROM_BLOCK_ADDR   0xAF025000
#define DFM_FAULT_RECORD_A_ROM_BLOCK_LEN    0x5000
#define DFM_FAULT_RECORD_A_RAM_BLOCK_ADDR   NULL_PTR
#define DFM_FAULT_RECORD_A_RAM_BLOCK_LEN    0

#define DFM_FAULT_RECORD_B_ROM_BLOCK_ADDR   0xAF02A000
#define DFM_FAULT_RECORD_B_ROM_BLOCK_LEN    0x5000
#define DFM_FAULT_RECORD_B_RAM_BLOCK_ADDR   NULL_PTR
#define DFM_FAULT_RECORD_B_RAM_BLOCK_LEN    0

#define DFM_FAULT_RECORD_C_ROM_BLOCK_ADDR   0xAF02F000
#define DFM_FAULT_RECORD_C_ROM_BLOCK_LEN    0x5000
#define DFM_FAULT_RECORD_C_RAM_BLOCK_ADDR   NULL_PTR
#define DFM_FAULT_RECORD_C_RAM_BLOCK_LEN    0

#define DFM_FAULT_RECORD_D_ROM_BLOCK_ADDR   0xAF034000
#define DFM_FAULT_RECORD_D_ROM_BLOCK_LEN    0x3000
#define DFM_FAULT_RECORD_D_RAM_BLOCK_ADDR   NULL_PTR
#define DFM_FAULT_RECORD_D_RAM_BLOCK_LEN    0

#define DFM_FAULT_RECORD_E_ROM_BLOCK_ADDR   0xAF037000
#define DFM_FAULT_RECORD_E_ROM_BLOCK_LEN    0x3000
#define DFM_FAULT_RECORD_E_RAM_BLOCK_ADDR   NULL_PTR
#define DFM_FAULT_RECORD_E_RAM_BLOCK_LEN    0

#define DFM_FAULT_RECORD_F_ROM_BLOCK_ADDR   0xAF03A000
#define DFM_FAULT_RECORD_F_ROM_BLOCK_LEN    0x3000
#define DFM_FAULT_RECORD_F_RAM_BLOCK_ADDR   NULL_PTR
#define DFM_FAULT_RECORD_F_RAM_BLOCK_LEN    0

#define DFM_FAULT_RECORD_G_ROM_BLOCK_ADDR   0xAF040000
#define DFM_FAULT_RECORD_G_ROM_BLOCK_LEN    0x1000
#define DFM_FAULT_RECORD_G_RAM_BLOCK_ADDR   NULL_PTR
#define DFM_FAULT_RECORD_G_RAM_BLOCK_LEN    0

#define DFM_FAULT_RECORD_H_ROM_BLOCK_ADDR   0xAF041000
#define DFM_FAULT_RECORD_H_ROM_BLOCK_LEN    0x1000
#define DFM_FAULT_RECORD_H_RAM_BLOCK_ADDR   NULL_PTR
#define DFM_FAULT_RECORD_H_RAM_BLOCK_LEN    0


#define DFM_FAULT_RECORD_I_ROM_BLOCK_ADDR   0xAF042000
#define DFM_FAULT_RECORD_I_ROM_BLOCK_LEN    0x1000
#define DFM_FAULT_RECORD_I_RAM_BLOCK_ADDR   NULL_PTR
#define DFM_FAULT_RECORD_I_RAM_BLOCK_LEN    0

typedef enum DFM_BLOCK_INDEX{
   DFM_OC_TRIM_BLOCK = 0,
   DFM_CUR_CAL_BLOCK,
   DFM_FRECORD_START_INDEX,
   DFM_MGTCU_FRECORD_A_BLOCK = DFM_FRECORD_START_INDEX,
   DFM_MGTCU_FRECORD_B_BLOCK,
   DFM_MGTCU_FRECORD_C_BLOCK,
   DFM_MGTCU_FRECORD_D_BLOCK,
   DFM_MGTCU_FRECORD_E_BLOCK,
   DFM_MGTCU_FRECORD_F_BLOCK,
   DFM_MGTCU_FRECORD_G_BLOCK,
   DFM_MGTCU_FRECORD_H_BLOCK,
   DFM_MGTCU_FRECORD_I_BLOCK,
   DFM_FRECORD_END_INDEX,

   DFM_MAX_BLOCK_NO = DFM_FRECORD_END_INDEX
}DFM_BLOCK_INDEX;



/* Set it to 2^n, n >= 1 */
#define DFM_CFG_RING_Q_SIZE(n)     (1 << n)

#define DFM_CFG_CORE0_RING_Q_SIZE  DFM_CFG_RING_Q_SIZE(2)  /* 2^2 = 4 */
#define DFM_CFG_CORE1_RING_Q_SIZE  DFM_CFG_RING_Q_SIZE(3)  /* 2^3 = 8 */
#define DFM_CFG_CORE2_RING_Q_SIZE  DFM_CFG_RING_Q_SIZE(0)
#define DFM_CFG_CORE3_RING_Q_SIZE  DFM_CFG_RING_Q_SIZE(0)
#define DFM_CFG_CORE4_RING_Q_SIZE  DFM_CFG_RING_Q_SIZE(0)
#define DFM_CFG_CORE5_RING_Q_SIZE  DFM_CFG_RING_Q_SIZE(0)

#if ((defined DFM_CORE0_Q_ENABLE) && (DFM_CORE0_Q_ENABLE == TRUE))
#if (DFM_CFG_CORE0_RING_Q_SIZE == DFM_CFG_RING_Q_SIZE(0))
#error "DFM_Cfg.h : The queue 0 length is unreasonable. Set it to 2^n, n >= 1"
#endif
#endif
#if ((defined DFM_CORE1_Q_ENABLE) && (DFM_CORE1_Q_ENABLE == TRUE))
#if (DFM_CFG_CORE1_RING_Q_SIZE == DFM_CFG_RING_Q_SIZE(0))
#error "DFM_Cfg.h : The queue 1 length is unreasonable. Set it to 2^n, n >= 1"
#endif
#endif
#if ((defined DFM_CORE2_Q_ENABLE) && (DFM_CORE2_Q_ENABLE == TRUE))
#if (DFM_CFG_CORE2_RING_Q_SIZE == DFM_CFG_RING_Q_SIZE(0))
#error "DFM_Cfg.h : The queue 2 length is unreasonable. Set it to 2^n, n >= 1"
#endif
#endif
#if ((defined DFM_CORE3_Q_ENABLE) && (DFM_CORE3_Q_ENABLE == TRUE))
#if (DFM_CFG_CORE3_RING_Q_SIZE == DFM_CFG_RING_Q_SIZE(0))
#error "DFM_Cfg.h : The queue 3 length is unreasonable. Set it to 2^n, n >= 1"
#endif
#endif
#if ((defined DFM_CORE4_Q_ENABLE) && (DFM_CORE4_Q_ENABLE == TRUE))
#if (DFM_CFG_CORE4_RING_Q_SIZE == DFM_CFG_RING_Q_SIZE(0))
#error "DFM_Cfg.h : The queue 4 length is unreasonable. Set it to 2^n, n >= 1"
#endif
#endif
#if ((defined DFM_CORE5_Q_ENABLE) && (DFM_CORE5_Q_ENABLE == TRUE))
#if (DFM_CFG_CORE5_RING_Q_SIZE == DFM_CFG_RING_Q_SIZE(0))
#error "DFM_Cfg.h : The queue 5 length is unreasonable. Set it to 2^n, n >= 1"
#endif
#endif

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "DFM_Type.h"

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/
extern const DFM_Block DFM_Blocks[];

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/ 
   
/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

#endif /* __DFM_LCFG_H_ */
