/*Please change the macro definition to enable integration code below*/

/*Please remove the conditional compilation and its corresponding #endif to enable integration code below*/
#if 0u
/* BSW-15603 */
#ifndef CANTRCV_RBA_TLE9255_H_
#define CANTRCV_RBA_TLE9255_H_
#include "CanTrcv_Prv.h"
#if (CANTRCV_DEV_ERROR_DETECT  == STD_ON)
# include "Det.h"
#endif

#define CANTRCV_CDD_SPI_STATE_INIT_MASK             0x0001u   // Bit-Mask in CanTrcv_Prv_CDD_SpiState
#define CANTRCV_CDD_SPI_STATE_INITDATA_MASK         0x0002u   // Bit-Maks in CanTrcv_Prv_CDD_SpiState shown possibly init data
#define CANTRCV_CDD_SPI_STATE_CLEAR_WUP_MASK        0x0004u   // Bit-Mask in CanTrcv_Prv_CDD_SpiState to clear wakeup reasons
#define CANTRCV_CDD_SPI_STATE_CLEAR_TIMEOUT_MASK    0x0008u   // Bit-Mask in CanTrcv_Prv_CDD_SpiState to clear timeout flag
#define CANTRCV_CDD_SPI_STATE_CLEAR_PNACTIVATE_MASK 0x0010u  // Bit-Mask in CanTrcv_Prv_CDD_SpiState to clear ActivationState
#define CANTRCV_CDD_SPI_STATE_SET_PNACTIVATE_MASK   0x0020u  // Bit-Mask in CanTrcv_Prv_CDD_SpiState to set  ActivationState
#define CANTRCV_CDD_SPI_STATE_MODE_INDICATION_MASK  0x0040u  // Bit-Mask in CanTrcv_Prv_CDD_SpiState to set  CanTrcvSetOpMode called
#define CANTRCV_CDD_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK  0x0080u // Bit-Mask in CanTrcv_Prv_CDD_SpiState to set  CanIf_ClearTrcvWufFlagIndication called
#define CANTRCV_CDD_SPI_STATE_SETOPMODE             0x0100u  // function SetOpMode was called
#define CANTRCV_CDD_SPI_STATE_CHECK_WAKEUP_READ     0x0200u  // CheckWakeup was called
#define CANTRCV_CDD_SPI_STATE_CHECK_WAKEUP_CHECK    0x0400u  // CheckWakeup was called and read data should be analyzed

#define CANTRCV_CFG_CDD_WRITE_MASK  	0x8000u

#define CANTRCV_CFG_CDD_SPI_REG18       0
#define CANTRCV_CFG_CDD_SPI_POR_MASK    0x80u
#define CANTRCV_CFG_CDD_SPI_REG19       1
#define CANTRCV_CFG_CDD_SPI_REG1A       2
#define CANTRCV_CFG_CDD_SPI_ERR_MASK	0x03u
#define CANTRCV_CFG_CDD_SPI_REG1B       3
#define CANTRCV_CFG_CDD_SPI_WUX_MASK    0x03u
#define CANTRCV_CFG_CDD_SPI_LWU_MASK    0x04u
#define CANTRCV_CFG_CDD_SPI_REG1C       4
#define CANTRCV_CFG_CDD_SPI_CANSIL_MASK 2u
#define CANTRCV_CFG_CDD_SPI_SWK_ACTIVE_MASK   1u
#define CANTRCV_CFG_CDD_SPI_CANTO_MASK  4u
#define CANTRCV_CFG_CDD_SPI_REG05       5
#define CANTRCV_CFG_CDD_SPI_CFG_VAL_MASK 0x01u
#define CANTRCV_CFG_CDD_SPI_REG01       6
#define CANTRCV_CFG_CDD_SPI_MC_AND_MASK      0x000Fu // Mask to read out Mode
#define CANTRCV_CFG_CDD_SPI_MC_NM_AND_MASK   0xFFF0u // Mask for normal Mode and Cleared ReadOnlyBit
#define CANTRCV_CFG_CDD_SPI_MC_NM_OR_MASK    0x0008u // Mask for normal Mode
#define CANTRCV_CFG_CDD_SPI_MC_SM_AND_MASK   0xFFF0u // Mask for sleep Mode and Cleared ReadOnlyBit
#define CANTRCV_CFG_CDD_SPI_MC_SM_OR_MASK    0x0001u // Mask for sleep Mode
#define CANTRCV_CFG_CDD_SPI_MC_SBM_AND_MASK  0xFFF0u // Mask for standby Mode and Cleared ReadOnlyBit
#define CANTRCV_CFG_CDD_SPI_MC_SBM_OR_MASK   0x0002u // Mask for standby Mode
#define CANTRCV_CFG_CDD_SPI_REG1D       7

/* enables multiple wakeup reasons */
#define CANTRCV_CFG_WU_BY_BUS_AND_PIN                CANTRCV_WU_BY_BUS
#define CANTRCV_CFG_WU_BY_BUS_AND_POWER_ON           CANTRCV_WU_BY_BUS
#define CANTRCV_CFG_WU_BY_PIN_AND_POWER_ON           CANTRCV_WU_POWER_ON
#define CANTRCV_CFG_WU_BY_BUS_AND_PIN_AND_POWER_ON   CANTRCV_WU_BY_BUS

#define CANTRCV_CFG_CDD_INIT_REGISTER_START_POS  	0u
#define CANTRCV_CFG_CDD_CTRL_REGISTER_START_POS  	29u
#define CANTRCV_CFG_CDD_CTRL_REGISTER_END_POS  	37u
#define CANTRCV_CFG_CDD_INIT_REGISTER_LENGTH_MAX  	29u
#define CANTRCV_CFG_CDD_CTRL_REGISTER_LENGTH_MAX  	8u

#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"

extern void CanTrcv_rba_TLE9255_CanTrcvInit (void);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvSetOpMode (CanTrcv_TrcvModeType OpMode);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvGetOpMode (CanTrcv_TrcvModeType * OpMode);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvGetBusWuReason (CanTrcv_TrcvWakeupReasonType * reason);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvSetWakeupMode (CanTrcv_TrcvWakeupModeType TrcvWakeupMode);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvCheckWakeup (void);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvCheckWakeFlag (void);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvSetPNActivationState (CanTrcv_PNActivationType ActivationState);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvReadTrcvTimeoutFlag (CanTrcv_TrcvFlagStateType* FlagState);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvClearTrcvTimeoutFlag (void);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvReadTrcvSilenceFlag (CanTrcv_TrcvFlagStateType* FlagState);
extern Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvClearTrcvWufFlag (void);
void CanTrcv_MainFunctionCheckWake_CDD(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8);
void CanTrcv_MainFunctionModeChange_CDD(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8);
void CanTrcv_MainFunctionPreparation_CDD(uint8 TrcvNo_u8, uint8 Transceiver);
void CanTrcv_MainFunctionCheckWakeup_CDD(uint8 TrcvNo_u8, uint8 Transceiver);
void CanTrcv_MainFunctionHwPnSupport_CDD(uint8 TrcvNo_u8, uint8 Transceiver);
void CanTrcv_MainFunctionRbIndicationBehaviour_CDD(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver);
void CanTrcv_MainFunctionCheckForState_CDD(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver);
void CanTrcv_MainFunctionCheckState_CDD( uint8 TrcvNo_u8, CanTrcv_TrcvModeType *StateReadBack );
void CanTrcv_MainFunctionDemHandling_CDD(uint8 TrcvNo_u8, uint8 Transceiver);

#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"

#endif //end of define CANTRCV_RBA_TLE9255_H_
/* END BSW-15603 */
#endif /*End of #if 0*/
