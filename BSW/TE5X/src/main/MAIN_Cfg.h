#ifndef __MAIN_CFG_H_
#define __MAIN_CFG_H_


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/
#define _PLATFORM_GEN_CODE_BSW_          1
//#define _PLATFORM_GEN_CODE_EMB_          1
//#define _PLATFORM_GEN_CODE_SA_           1

#define _MAIN_J1939_MODULE_ENABLE_         STD_ON    // The J1939 function switch is generally not modified.
#define _MAIN_ACM_MODULE_SEND_ENABLE_      STD_ON    // ACM J1939 message transmission switch control
#define _MAIN_EPS_MODULE_SEND_ENABLE_      STD_ON    // EPS J1939 message transmission switch control
#define _MAIN_MCU1_MODULE_SEND_ENABLE_     STD_ON    // MCU1 J1939 message transmission switch control
#define _MAIN_MCU2_MODULE_SEND_ENABLE_     STD_OFF    // MCU2 J1939 message transmission switch control
#define _MAIN_PDU_MODULE_SEND_ENABLE_      STD_ON    // PDU J1939 message transmission switch control
#define _MAIN_ROLL_ERR_CODE_MERGE_ENABLE_  STD_OFF   // Default not modified.

#define _MAIN_J1939_DM1_NOERR_TX_SW_       FALSE     // Control of the message transmission switch when the J1939-DM1 message is error-free

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
   
/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

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


#endif /* __MAIN_CFG_H_ */

