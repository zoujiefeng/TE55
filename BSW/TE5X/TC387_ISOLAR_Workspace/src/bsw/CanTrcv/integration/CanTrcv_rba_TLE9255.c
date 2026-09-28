/*Please remove the conditional compilation and its corresponding #endif to enable integration code below*/
#if 0u
/* BSW-15603 */
#include "CanTrcv_rba_TLE9255.h"
#include "CanIf.h"
#include "CanIf_Cbk.h"

#define CANTRCV_START_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"
/* Bitmask to store activities and states and requests. */
uint16  CanTrcv_Prv_CDD_SpiState[CANTRCV_CFG_NUMBER_OF_SPI_CDD_CANTRCV];
// Buffer for SPI to receive init data from trcv. Possibility to check initialization
uint16  CanTrcv_Prv_CDD_SpiInitRxBuf_ao[CANTRCV_CFG_NUMBER_OF_SPI_CDD_CANTRCV][CANTRCV_CFG_CDD_INIT_REGISTER_LENGTH_MAX];
// Buffer for SPI to receive data from trcv
uint16  CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[CANTRCV_CFG_NUMBER_OF_SPI_CDD_CANTRCV][CANTRCV_CFG_CDD_CTRL_REGISTER_LENGTH_MAX];
// Buffer for SPI to transmit changed data to trcv
uint16  CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[CANTRCV_CFG_NUMBER_OF_SPI_CDD_CANTRCV][CANTRCV_CFG_CDD_CTRL_REGISTER_LENGTH_MAX];
/*PreCompile SPI command specific to a CanTransceiver to save runtime*/
/*Other alternative is to compute SPI data at using generated configuration in struct CanTrcv_PnTrcvCdd_ast*/
/*This has direct impact on CANTRCV_CFG_CDD_INIT_REGISTER_LENGTH_MAX, CANTRCV_CFG_CDD_CTRL_REGISTER_LENGTH_MAX and */
/* and CANTRCV_CFG_CDD_INIT_REGISTER_START_POS, CANTRCV_CFG_CDD_CTRL_REGISTER_START_POS, CANTRCV_CFG_CDD_CTRL_REGISTER_END_POS*/
const uint16 CanTrcv_CDDCfgSpiChannel_ao[]=
{
    // CDD CanTrcvChannel_CANNODE_0
    0x8202,   // Reg 2 Hardware control register
    0x8304,   // Reg 3 TXD Timeout
    0x84FF,   // Reg 4 Supply control
    0x8684,   // Reg 6 Baud rate control register
    0x8710,   // Reg 7 Identifier 3
    0x8800,   // Reg 8 Identifier 2
    0x8900,   // Reg 9 Identifier 1
    0x8a00,   // Reg A Identifier 0
    0x8b1C,   // Reg B Mask3
    0x8c00,   // Reg C Mask2
    0x8d00,   // Reg D Mask1
    0x8e00,   // Reg E Mask0
    0x8f08,   // Reg F Data Length Code control - TO REVIEW
    0x9000,   // Reg 10 Data Mask7
    0x9100,   // Reg 11 Data Mask6
    0x9200,   // Reg 12 Data Mask5
    0x9300,   // Reg 13 Data Mask4
    0x9400,   // Reg 14 Data Mask3
    0x9580,   // Reg 15 Data Mask2
    0x9600,   // Reg 16 Data Mask1
    0x9700,   // Reg 17 Data Mask0
    0x8501,   // Reg 5 selective wakeup control
    0x9800,   // Reg 18 Transceiver status Not clear register and old errors
    0x9900,   // Reg 19 Transceiver under voltage status Not clear register and old errors
    0x9a00,   // Reg 1A Error status Not clear register and old errors
    0x9b00,   // Reg 1B Wakeup status Not clear register and old errors
    0x9c00,   // Reg 1C Selective wakeup status Not clear register and old errors
    0x9d00,   // Reg 1D Error counter status
    0x8108,   // Reg 1 Mode control
    // Startpos for Control Reg
    0x1800,   // 0 Reg 18 Transceiver status
    0x1900,   // 1 Reg 19 Transceiver under voltage status
    0x1a00,   // 2 Reg 1A Error status
    0x1b00,   // 3 Reg 1B Wakeup status
    0x1c00,   // 4 Reg 1C Selective wakeup status
    0x0501,   // 5 Reg 5 Selective wakeup control
    0x0108,   // 6 Reg 1 Mode control
    0x1d00,   // 7 Reg 1D Error counter status

};
#define CANTRCV_STOP_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"

#if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
#define CANTRCV_START_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"
/* Buffer for SPI to transmit ReInit data */
uint16 CanTrcv_Prv_CDD_SpiReInitTxBuf_ao[CANTRCV_CFG_NUMBER_OF_SPI_CDD_CANTRCV][CANTRCV_CFG_CDD_INIT_REGISTER_LENGTH_MAX];
#define CANTRCV_STOP_SEC_VAR_CLEARED_16
#include "CanTrcv_MemMap.h"
#endif

#define CANTRCV_START_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

uint8   CanTrcv_Prv_CDD_Wakeup_au8[CANTRCV_CFG_NUMBER_OF_SPI_CDD_CANTRCV];   /* 0=no wakeup; 1=wakeup detected */

#define CANTRCV_STOP_SEC_VAR_CLEARED_8
#include "CanTrcv_MemMap.h"

#define CANTRCV_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"

CanTrcv_TrcvModeType   CanTrcv_Prv_CDD_State[CANTRCV_CFG_NUMBER_OF_SPI_CDD_CANTRCV];
CanTrcv_TrcvModeType   CanTrcv_Prv_CDD_ReqState[CANTRCV_CFG_NUMBER_OF_SPI_CDD_CANTRCV];

#define CANTRCV_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "CanTrcv_MemMap.h"


#define CANTRCV_START_SEC_CODE
#include "CanTrcv_MemMap.h"

uint8 CanTrcv_Specify_SPI_CDD_Element(uint8 Transceiver)
{
	uint8 retVal = 0u;
	switch(Transceiver)
	{
		case 0u:
			retVal = 0u;
	}
	return retVal;
}

void CanTrcvMainFunction_CDD_Integration_SPI(uint8 Transceiver)
{
    /*  SPI_SEQ_OK,               !< Sequence transfer complete. */
    /*  SPI_SEQ_PENDING,          !< Sequence transfer pending. */
    /*  SPI_SEQ_FAILED,           !< Sequence transfer has failed.*/
    /*  SPI_SEQ_CANCELED,         !< Sequence was canceled. */
    /*  SPI_SEQ_CANCEL_PENDING    !< Cancel was requested but not yet executed.*/

    Std_ReturnType RetVal_o = E_NOT_OK;
    uint16  start_u16;
    uint16  size_u16;
    uint16  SpiPos_u16;
    uint16  n_u16;
    uint8   TrcvNo_u8;
    boolean ChangeFlag_b = FALSE;
    uint8  Trcv_WakePinReg = 1u;
    uint8 PncTrcvCDD_Pos_u8;
    Spi_SequenceType        sequence;
    Spi_SeqResultType       Spi_SeqResult;


	/*Get relevant configuration parameter*/
    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST  should be used*/
    SpiPos_u16 = CanTrcv_Specify_SPI_CDD_Element(Transceiver);
	TrcvNo_u8 = CANTRCV_SPICDD_ST[SpiPos_u16].No;
	sequence    = CANTRCV_SPICDD_ST[SpiPos_u16].Sequence;
    /*Get index of this CanTrcv in CANTRCV_PNTRCVCDD_ST*/
    PncTrcvCDD_Pos_u8 = CANTRCV_FCTP_ST[Transceiver].CddNo;
	/*Customer decide WakePin Register by themselves - in this case it is 1 aka configured*/
	/*Can refer to CanTrcv_Specify_SPI_CDD_Element to set Trcv_WakePinReg according to Transceiver*/
	Trcv_WakePinReg = 1u;

	/*Get result from the last sequence*/
	Spi_SeqResult = Spi_GetSequenceResult(sequence);

	/*Check for the correct SPI*/
	if (Spi_SeqResult == SPI_SEQ_OK)
	{
		// Check if initdata are written/read in last spi-transfer
		if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_INIT_MASK) != 0u)
		{
			// Set global flag that next SPI data are not initdata any more
			// Only for first call of main function. In that function Spi was directly filled in CanTrcv_Init_CDD with Rom-Config data
			// in CanTrcv_Init_CDD CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao is also filled with control registers
			// Change state and clear INIT-Flag
			CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &=(uint16)~((uint16)CANTRCV_CDD_SPI_STATE_INIT_MASK);
		}
		else // if read-registers are valid with control registers
		{
			CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &=(uint16)~((uint16)CANTRCV_CDD_SPI_STATE_INIT_MASK);

			if(((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1B] & CANTRCV_CFG_CDD_SPI_WUX_MASK)   != 0u) || // Reg 0x1B: WUF WUP in Transceiver event status
			   (((Trcv_WakePinReg == 1u) && ((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1B] & CANTRCV_CFG_CDD_SPI_LWU_MASK) != 0u))))   // Reg 0x1B: WAKE pin status
			{
				/*Store the wake-up trigger*/
				CanTrcv_Prv_CDD_Wakeup_au8[TrcvNo_u8] = 1u;   /* 0 = no wakeup; 1 = wakeup detected */
			}
			// Only check POR-Wakeup if configured at PN
#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
			if( ((CANTRCV_PNTRCVCDD_ST[PncTrcvCDD_Pos_u8].PnEnabled == FALSE) || (CANTRCV_PNTRCVCDD_ST[PncTrcvCDD_Pos_u8].PowerOnFlag == TRUE)) &&
			   ((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG18] & CANTRCV_CFG_CDD_SPI_POR_MASK)   != 0u))   // Reg 0x18: Power on status
			{
				CanTrcv_Prv_CDD_Wakeup_au8[TrcvNo_u8] = 1u;   /* 0 = no wakeup; 1 = wakeup detected */
			}
# endif
			/*Add implementation of CanTrcv_MainFunctionPreparation_CDD*/
			CanTrcv_MainFunctionPreparation_CDD(TrcvNo_u8,  Transceiver);
		}
		/*Set SPI Tx buffer for PN and check wakeup*/
		CanTrcv_MainFunctionCheckWake_CDD(TrcvNo_u8, &ChangeFlag_b, Trcv_WakePinReg);
		/*Set SPI Tx buffer for Mode Change*/
		CanTrcv_MainFunctionModeChange_CDD(TrcvNo_u8, &ChangeFlag_b, Trcv_WakePinReg);

		// Set number of Ctrl register
		size_u16  =  CANTRCV_CFG_CDD_CTRL_REGISTER_END_POS - CANTRCV_CFG_CDD_CTRL_REGISTER_START_POS;

		// Check if any above line needs an update of registers in trcv
		if (ChangeFlag_b == FALSE)
		{
			// Nothing changed -> nothing to write
			// Set all "ReadOnlybits"
			/* Maximum Ctrl register that may get modified - in this configuration is 8*/
			for(n_u16 = 0; n_u16 < size_u16 ; n_u16++)
			{
				CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][n_u16] &= (uint16)(~CANTRCV_CFG_CDD_WRITE_MASK);
			}
		}
        // Prepare spi access
#if CANTRCV_SPI_EXTERNBUFFER == STD_ON
		/* MR12 RULE 11.3 VIOLATION: The buffer-parametertypes are given by Autosar as uint8. But HW works with uint16. */
		RetVal_o = Spi_RbSetupEB(CANTRCV_SPICDD_ST[SpiPos_u16].Channel,    // generated by SPI
					(const uint8*)&CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][0],     // points to RAM-Tx buffer
					(uint8*)&CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][0],     // points to RAM-Rx buffer
					size_u16 );
#else
        RetVal_o = Spi_ReadIB(CANTRCV_SPICDD_ST[SpiPos_u16].Channel,  &CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][0]);

        if( RetVal_o == E_OK)
        {
            RetVal_o = Spi_WriteIB(CANTRCV_SPICDD_ST[SpiPos_u16].Channel, &CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][0]);

            if(RetVal_o != E_OK)
            {
                CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
            }
        }
        else
        {
            CANTRCV_DET_REPORTERROR(0, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
        }

#endif
		if( RetVal_o == E_OK)
		{
			RetVal_o = CANTRCV_SPI_TRANSMIT(sequence );

			if(RetVal_o != E_OK)
			{
				CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
			}
# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
           }
           else   // Spi_SeqResult == SPI_SEQ_OK
           {
                /* Change state and clear ReInit-Flag */
                CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_CDD_SPI_STATE_SET_REINIT_MASK);
            }
# endif
		}
		else
		{
			CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_SPI)
		}
	}
	else   // Spi_SeqResult == SPI_SEQ_OK
	{
		// SPI Communication fails
		CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_PARAM_TRCV_WRONG_CONF)
	}
}

void CanTrcvMainFunction_CDD_Integration(uint8 Transceiver)
{
    /*Validate Transceiver ID*/
    if(Transceiver < CANTRCV_CFG_NUMBER_OF_CANTRCV)
    {
    	CanTrcvMainFunction_CDD_Integration_SPI(Transceiver);
    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_MAINFUNCTION, CANTRCV_E_INVALID_TRANSCEIVER)
    }
}

#if ( CANTRCV_CDD_SPI_CONFIGURED == STD_ON )
void CanTrcv_MainFunctionModeChange_CDD(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8)
{
    // Mode Change requested?
    if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_SETOPMODE) != 0u)
    {
        // Clear request and set registers for requested state
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_CDD_SPI_STATE_SETOPMODE);

        switch (CanTrcv_Prv_CDD_ReqState[TrcvNo_u8])
        {
            case CANTRCV_TRCVMODE_SLEEP:
            {
                // clear outstanding error and statusbits
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG18] |= (uint16)(0xFFu+CANTRCV_CFG_CDD_WRITE_MASK);   // write 1 = clear bits for Reg18
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG19] |= (uint16)(0xFFu+CANTRCV_CFG_CDD_WRITE_MASK);   // write 1 = clear bits for Reg19
                if(Trcv_WakeReg_u8 == 1u)
                {
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1B] |= (uint16)(0xFFu+CANTRCV_CFG_CDD_WRITE_MASK);   // write 1 = clear bits for Reg1B
		        }
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1C] |= (uint16)(0xFFu+CANTRCV_CFG_CDD_WRITE_MASK);   // write 1 = clear bits for Reg1C

                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] &= (uint16)CANTRCV_CFG_CDD_SPI_MC_SM_AND_MASK;
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] |= (uint16)CANTRCV_CFG_CDD_SPI_MC_SM_OR_MASK;
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] |= (uint16)CANTRCV_CFG_CDD_WRITE_MASK;
            }
            break;
            case CANTRCV_TRCVMODE_STANDBY:
            {
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] &= (uint16)CANTRCV_CFG_CDD_SPI_MC_SBM_AND_MASK;
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] |= (uint16)CANTRCV_CFG_CDD_SPI_MC_SBM_OR_MASK;
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] |= (uint16)CANTRCV_CFG_CDD_WRITE_MASK;
            }
            break;
            default:    // case CANTRCV_TRCVMODE_NORMAL: By design (enum type) no different state possible
            {
                // Entering CAN Active is possible only while the TXD pin is HIGH (ApplHint P26)
                // During CAN Active, a LOW level on pin TXD that persists longer than tto(dom)TXD will disable the transmitter, releasing the bus lines to recessive state
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] &= (uint16)CANTRCV_CFG_CDD_SPI_MC_NM_AND_MASK;
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] |= (uint16)CANTRCV_CFG_CDD_SPI_MC_NM_OR_MASK;
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] |= (uint16)CANTRCV_CFG_CDD_WRITE_MASK;
            }
            break;
        }
        *ChangeFlag_b = TRUE;
    }
}
#endif


#if CANTRCV_CDD_SPI_CONFIGURED == STD_ON
# if (CANTRCV_CFG_CDD_DEM_ENABLE == STD_ON)
void CanTrcv_MainFunctionDemHandling_CDD(uint8 TrcvNo_u8, uint8 Transceiver)
{
	uint8 CddNo;
    CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;

    // Check for correct communication with Trcv:
    // in normal  : Reg  01 should not all FF or SPI_ERR and SPI_CMD should be equal to 0
    if(((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1A] & CANTRCV_CFG_CDD_SPI_ERR_MASK) != 0) ||
        ((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] & 0x0Fu) == 0x0Fu))
    {
        CAN_TRCV_DEM_REPORTERRORSTATUS( CANTRCV_CDD_FCTP_ST[CddNo].CddIncorrectComDemEvent, DEM_EVENT_STATUS_FAILED);
    }
    else
    {
        CAN_TRCV_DEM_REPORTERRORSTATUS( CANTRCV_CDD_FCTP_ST[CddNo].CddIncorrectComDemEvent, DEM_EVENT_STATUS_PASSED);
    }
}
# endif
#endif

#if ( CANTRCV_CDD_SPI_CONFIGURED == STD_ON )
void CanTrcv_MainFunctionPreparation_CDD(uint8 TrcvNo_u8, uint8 Transceiver)
{
    CanTrcv_TrcvModeType    StateReadBack;

    /*Process the async CheckWakeUp request to call EcuM_SetWakeupEvent*/
# if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_ASYNC)
#  if(CANTRCV_ECUM_USED == STD_ON)
    CanTrcv_MainFunctionCheckWakeup_CDD(TrcvNo_u8, Transceiver);
#  endif
# endif

# if (CANTRCV_CFG_CDD_DEM_ENABLE == STD_ON)
    CanTrcv_MainFunctionDemHandling_CDD(TrcvNo_u8, Transceiver);
# endif

    // Check if CanIf_ClearTrcvWufFlagIndication should be called
    //  This is done if the request CANTRCV_TLE9255_SPI_STATE_CLEAR_WUP_MASK is already done and correct sent
    //  (see note1 in AR SWS4.0.3 chapter 9.4)
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
    CanTrcv_MainFunctionHwPnSupport_CDD(TrcvNo_u8, Transceiver);
# endif

    /*Reads the transceiver diagnostic status periodically*/
    CanTrcv_MainFunctionCheckState_CDD(TrcvNo_u8, &StateReadBack);

# if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR != CANTRCV_INDICATION_IMMEDIATELY)
    CanTrcv_MainFunctionRbIndicationBehaviour_CDD(TrcvNo_u8, StateReadBack, Transceiver);
# endif

    // Check if read state if different than expected state.
    CanTrcv_MainFunctionCheckForState_CDD(TrcvNo_u8, StateReadBack, Transceiver);

}
#endif

/**
 ***************************************************************************************************
 * \moduledescription
 * Reads the transceiver diagnostic status periodically and sets product/development accordingly
 ***************************************************************************************************
 */
#if CANTRCV_CDD_SPI_CONFIGURED == STD_ON
# if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_ASYNC)
#  if(CANTRCV_ECUM_USED == STD_ON)
void CanTrcv_MainFunctionCheckWakeup_CDD(uint8 TrcvNo_u8, uint8 Transceiver)
{
    if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_CHECK_WAKEUP_CHECK) != 0u)
    {
        // Clear status bit
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &= ~CANTRCV_CDD_SPI_STATE_CHECK_WAKEUP_CHECK;
        // Check if wakeupsource is configured
        if(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] != 0u)
        {
            if(CanTrcv_Prv_CDD_Wakeup_au8[TrcvNo_u8] == 1u)  // Check if wakeup detected by cyclic reading in Main function
            {
                EcuM_SetWakeupEvent(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
            }
            EcuM_EndCheckWakeup(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
        }
    }
    // Check if an asynchron checkwakeup is requested
    if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_CHECK_WAKEUP_READ) != 0u)
    {   // Yes -> in this main cycle the registers are requested to read
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &= ~CANTRCV_CDD_SPI_STATE_CHECK_WAKEUP_READ;
        // In next main-cycle the data are received and valid and can be evaluated
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_CHECK_WAKEUP_CHECK;
    }
}
#  endif
# endif
#endif

#if CANTRCV_CDD_SPI_CONFIGURED == STD_ON
# if (CANTRCV_HW_PN_SUPPORT == STD_ON)
void CanTrcv_MainFunctionHwPnSupport_CDD(uint8 TrcvNo_u8, uint8 Transceiver)
{
    if(((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK) != 0u) &&
        ((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_CLEAR_WUP_MASK) == 0u))
    {
        // Clear global request-flag
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_CDD_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK);

        // call indication function
        (void) CanIf_ClearTrcvWufFlagIndication(Transceiver);
    }
}
# endif
#endif

#if CANTRCV_CDD_SPI_CONFIGURED == STD_ON
# if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR != CANTRCV_INDICATION_IMMEDIATELY)
void CanTrcv_MainFunctionRbIndicationBehaviour_CDD(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver)
{
    // Check if Mode-indication function should be called
    // Send async mode indication if read back state is same as requested state
    // Com-Stack does not request sleep state, so it is no problem if this indication is never sent
    if(((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_MODE_INDICATION_MASK) != 0u) &&
        (StateReadBack == CanTrcv_Prv_CDD_ReqState[TrcvNo_u8]))
    {
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_CDD_SPI_STATE_MODE_INDICATION_MASK);
        CanIf_TrcvModeIndication((uint8)Transceiver, StateReadBack);
    }
}
# endif
#endif


#if ( CANTRCV_CDD_SPI_CONFIGURED == STD_ON )
void CanTrcv_MainFunctionCheckForState_CDD(uint8 TrcvNo_u8, CanTrcv_TrcvModeType StateReadBack, uint8 Transceiver)
{
	uint8 CddNo;
    CddNo = CANTRCV_FCTP_ST[Transceiver].CddNo;

    // Check if read state if different than expected state.
    if(StateReadBack != CanTrcv_Prv_CDD_ReqState[TrcvNo_u8])
    {
        /*If the requested stae is sleep then Trcv may trasit to standby on reception of wakeup hence
            * no dem reporting if previous state is sleep */
        if(CanTrcv_Prv_CDD_ReqState[TrcvNo_u8] != CANTRCV_TRCVMODE_SLEEP )
        {
            /*If mode propogation is enabled then report dem*/
            CAN_TRCV_DEM_REPORTERRORSTATUS( CANTRCV_CDD_FCTP_ST[CddNo].CddPropModeDemEvent, DEM_EVENT_STATUS_PREFAILED);
        }
        else
        {
            if(StateReadBack == CANTRCV_TRCVMODE_NORMAL)
            {
                /*If mode propogation is enabled then report dem*/
                CAN_TRCV_DEM_REPORTERRORSTATUS( CANTRCV_CDD_FCTP_ST[CddNo].CddPropModeDemEvent, DEM_EVENT_STATUS_PREFAILED);
            }
        }


# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
        /* Check if Trcv is forced to sleep and if undervoltage is detected at Vcc/Vio or Over temperature warning is detected by masking FSMS and OTW bits respectively */
        if((StateReadBack == CANTRCV_TRCVMODE_SLEEP) &&
          (((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG19] & CANTRCV_CFG_CDD_SPI_VIO_LTUV_MASK) != 0u) ||
		  ((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG19] & CANTRCV_CFG_CDD_SPI_VCC_LTUV_MASK) != 0u)))
        {
            /* Set the ReInit flag, Init mask and Init Data mask  */
            CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] = CANTRCV_CDD_SPI_STATE_INIT_MASK + CANTRCV_CDD_SPI_STATE_INITDATA_MASK + CANTRCV_CDD_SPI_STATE_SET_REINIT_MASK;
            /*ReInit Transceiver if needed - which is similar as CanTrcv_rba_TLE9255_CanTrcvInit */
            //CanTrcv_Rb_ReInit_CDD(Transceiver);
        }
# else
        (void) Transceiver; /* To avoid unused parameter-compiler-warning. If CANTRCV_RB_UNDERVOLTAGE_RECOVERY is not configured, the variable is not used */
# endif
    }
    else
    {
# if (CANTRCV_MODE_PROPOGATION_REPORTING_SPI_BASED == STD_ON)
            CAN_TRCV_DEM_REPORTERRORSTATUS( CANTRCV_CDD_FCTP_ST[CddNo].CddPropModeDemEvent, DEM_EVENT_STATUS_PREPASSED);
# endif
    }
}
#endif

/*Processed async request such as CanTrcv_SetWakeupMode_CDD*/
/*Modify Tx Spi buffer content of register and the corresponding write mask*/
#if ( CANTRCV_CDD_SPI_CONFIGURED == STD_ON )
void CanTrcv_MainFunctionCheckWake_CDD(uint8 TrcvNo_u8, boolean *ChangeFlag_b, uint8 Trcv_WakeReg_u8)
{
    // CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao is set in init-function. So it can be written even in first function-call
    // Check if wakeup should be cleared
    if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_CLEAR_WUP_MASK) != 0u)  // Check if request is set in CanTrcv_SetWakeupMode_CDD
    {
        // Write register values in mirror RAM to clear wakeup
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_CDD_SPI_STATE_CLEAR_WUP_MASK);
        // Clear WakePinEvent and CAN wake-up event detected   CW
        if(Trcv_WakeReg_u8 == 1u)
        {
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1B] |= CANTRCV_CFG_CDD_SPI_LWU_MASK + CANTRCV_CFG_CDD_SPI_WUX_MASK;
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1B] |= (uint16)CANTRCV_CFG_CDD_WRITE_MASK;
        }
	// Clear PowerOn event
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG18] |= CANTRCV_CFG_CDD_SPI_POR_MASK;
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG18] |= (uint16)CANTRCV_CFG_CDD_WRITE_MASK;
        // Clear stored wakeup
        CanTrcv_Prv_CDD_Wakeup_au8[TrcvNo_u8] = 0; /* 0: no wakeup; 1=wakeup detected */
        *ChangeFlag_b = TRUE;
    }

    // Check if timeout flag should be cleared
    if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_CLEAR_TIMEOUT_MASK) != 0u) // Check if request is set in CanTrcv_ClearTrcvTimeoutFlag
    {
        // Write register values in mirror RAM to clear timeout flag
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_CDD_SPI_STATE_CLEAR_TIMEOUT_MASK);
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1C] |= (CANTRCV_CFG_CDD_SPI_CANSIL_MASK + CANTRCV_CFG_CDD_SPI_CANTO_MASK);
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1C] |= (uint16)CANTRCV_CFG_CDD_WRITE_MASK;
        *ChangeFlag_b = TRUE;
    }

    // check if PNActivationState should be cleared
    if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_CLEAR_PNACTIVATE_MASK) != 0u)   // Check if request is set to clear CanTrcv_SetPNActivationState
    {   // Write register values in mirror RAM to clear PNActivationState
        // CFG_VAL =0 = disable CAN selective wake-up
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &= (uint16)~((uint16)CANTRCV_CDD_SPI_STATE_CLEAR_PNACTIVATE_MASK);
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG05]   &=  (uint16)~((uint16)CANTRCV_CFG_CDD_SPI_CFG_VAL_MASK);
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG05]   |= (uint16)CANTRCV_CFG_CDD_WRITE_MASK;
        *ChangeFlag_b = TRUE;
    }

    // Check if request is set in CanTrcv_SetPNActivationState
    if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_SET_PNACTIVATE_MASK) != 0u)
    {
        // Write register values in mirror RAM to set PNActivationState
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] &=  (uint16)~((uint16)CANTRCV_CDD_SPI_STATE_SET_PNACTIVATE_MASK);
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG05]   |=  CANTRCV_CFG_CDD_SPI_CFG_VAL_MASK;
        CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG05]   |= (uint16)CANTRCV_CFG_CDD_WRITE_MASK;
        *ChangeFlag_b = TRUE;
    }
}
#endif

#if ( CANTRCV_CDD_SPI_CONFIGURED == STD_ON )
void CanTrcv_MainFunctionCheckState_CDD( uint8 TrcvNo_u8, CanTrcv_TrcvModeType *StateReadBack )
{
    uint16                  RegVal01_o;

    // Get Register values
    RegVal01_o  = CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] & CANTRCV_CFG_CDD_SPI_MC_AND_MASK;

    // Change StateReadBack according register values
    if( RegVal01_o ==  CANTRCV_CFG_CDD_SPI_MC_NM_OR_MASK)
    {   // If in mode is on, check if there is a failure to disable the CAN-communication by checking bit CTS in Reg22
        *StateReadBack = CANTRCV_TRCVMODE_NORMAL;
    }
    else if ( RegVal01_o ==  CANTRCV_CFG_CDD_SPI_MC_SBM_OR_MASK)
    {
        *StateReadBack = CANTRCV_TRCVMODE_STANDBY;
    }
    else if ( RegVal01_o ==  CANTRCV_CFG_CDD_SPI_MC_SM_OR_MASK)
    {
        *StateReadBack = CANTRCV_TRCVMODE_SLEEP;
    }
    else
    {   // in error case, set StateReadBack same as CanTrcv_Prv_CDD_State
        *StateReadBack = CanTrcv_Prv_CDD_ReqState[TrcvNo_u8];
    }
}
#endif

void CanTrcv_rba_TLE9255_CanTrcvInit (void)
{
    uint8  TrcvNo_u8;
    uint8  start_u16;
    uint8  size_u16;
    uint16  SpiPos_u16;
    Spi_SequenceType sequence;
    const uint16     *src_o;
    uint16 n;
    Std_ReturnType Ret_Spi = E_OK;
    /*TransceiverId can be derived from CANTRCV_CDD_FCTP_ST. The index of CanTrcv shall be determined manually*/
    uint8 Transceiver = CANTRCV_CDD_FCTP_ST[0].TransceiverId;

	/*Get relevant configuration parameter*/
    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST  should be used based on CanTrcv name*/
    SpiPos_u16 = 0u;
    TrcvNo_u8 = CANTRCV_SPICDD_ST[SpiPos_u16].No;
    sequence    = CANTRCV_SPICDD_ST[SpiPos_u16].Sequence;

    /*Specify the start and the the size of Trcv generated data for initialization in CanTrcv_CDDCfgSpiChannel_ao*/
    start_u16   = CANTRCV_CFG_CDD_INIT_REGISTER_START_POS;
    size_u16    = CANTRCV_CFG_CDD_CTRL_REGISTER_START_POS - start_u16;

	/* Set global flag to write mode in main function*/
	/*Set the SPI state - INIT MASK and INITDATA Mask*/
    CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] = CANTRCV_CDD_SPI_STATE_INIT_MASK + CANTRCV_CDD_SPI_STATE_INITDATA_MASK;

# if ( CANTRCV_RB_UNDERVOLTAGE_RECOVERY == STD_ON )
		/* Prepare ReInit Table */
		/* Copy Rom-Table into Ram */
		src_o	= &(CANTRCV_CFGSPICHANNEL_AO[start_u16]);
		for(n = 0; n < size_u16; n++)
		{
			CanTrcv_Prv_CDD_SpiReInitTxBuf_ao[TrcvNo_u8][n] = src_o[n];
		}
# endif

	/*Prepare the array of commands for init sent through SPI - this can be prepared or can be derived from information available to customer*/
	/*Prepare SPI buffer communication either EB or IB*/
    // Write Initdata in SPI-Buffer
#if CANTRCV_SPI_EXTERNBUFFER == STD_ON
    /* MR12 RULE 11.3 VIOLATION: The buffer-parametertypes are given by Autosar as uint8. But HW works with uint16. */
    if(E_OK != Spi_RbSetupEB(CANTRCV_SPICDD_ST[SpiPos_u16].Channel,// Channel: get out of SPI config
                (const uint8*)&CanTrcv_CDDCfgSpiChannel_ao[start_u16],         // points to Trcv generated data in ROM for initdata
                (uint8*)&CanTrcv_Prv_CDD_SpiInitRxBuf_ao[TrcvNo_u8][0], // points to Trcv reserved array to read result of initdata. Not used in curr impl
                size_u16 ))
    {
        Ret_Spi = E_NOT_OK;
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_SPI)
    }
#else
    if(E_OK != Spi_WriteIB(CANTRCV_SPICDD_ST[SpiPos_u16].Channel,
                &CANTRCV_CFGSPICHANNEL_AO[start_u16]))     // points to Trcv generated data in ROM for initdata
    {
        Ret_Spi = E_NOT_OK;
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_SPI)
    }
#endif
	/*Transmit SPI*/
	/*Prepare array of command for control*/
    if (Ret_Spi == E_OK)
    {
        if(CANTRCV_SPI_TRANSMIT(sequence ) == E_OK)
        {
            // Prepare Control Table
            // Copy Rom-Table into Ram (values are modified and read out in main trcv-function)
            // Initmode is set by generated Register values. No extra setmode is required.
            start_u16   = CANTRCV_CFG_CDD_CTRL_REGISTER_START_POS;
            size_u16    = CANTRCV_CFG_CDD_CTRL_REGISTER_END_POS - start_u16;
            src_o       = &(CanTrcv_CDDCfgSpiChannel_ao[start_u16]);
            for(n = 0; n < size_u16; n++)
            {
                CanTrcv_Prv_CDD_SpiCtrlTxBuf_ao[TrcvNo_u8][n] = src_o[n];
            }
        }
        else
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_INIT, CANTRCV_E_PARAM_TRCV_WRONG_CONF)
        }
    }
}

Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvSetOpMode (CanTrcv_TrcvModeType OpMode)
{
	Std_ReturnType RetVal_o = E_NOT_OK;
	uint8  TrcvNo_u8;
	uint16 SpiPos_u16;
    /*TransceiverId can be derived from CANTRCV_CDD_FCTP_ST. The index of CanTrcv shall be determined manually*/
    uint8 Transceiver = CANTRCV_CDD_FCTP_ST[0].TransceiverId;

	/*Get SPI sequence and channel through SPI CDD Array*/
    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16 = 0u;
    TrcvNo_u8 = CANTRCV_SPICDD_ST[SpiPos_u16].No;
    CanTrcv_Prv_CDD_ReqState[TrcvNo_u8] = OpMode;

	/* Set global flag to write mode in main function*/
    CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_SETOPMODE;

	/* Call CanIf_ConfirmPnAvailability if macro CANTRCV_HW_PN_SUPPORT == STD_ON and requested OpMode is CANTRCV_TRCVMODE_NORMAL*/
#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
	if(OpMode == CANTRCV_TRCVMODE_NORMAL)
	{
		(void) CanIf_ConfirmPnAvailability(Transceiver);
	}
#endif
	/* Calling CanIf_TrcvModeIndication or setting up CANTRCV_TJA1145_SPI_STATE_MODE_INDICATION_MASK*/
#if (CANTRCV_CFG_USE_ASR31_API == STD_OFF)
#if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR == CANTRCV_INDICATION_IMMEDIATELY)
        CanIf_TrcvModeIndication(Transceiver, OpMode);
#else
        // Set global flag. Processed in main function
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_MODE_INDICATION_MASK;
#endif
#endif
        RetVal_o = E_OK;
        return RetVal_o;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the actual state of the transceiver.
 *
 * \param   CanTrcv_TrcvModeType*   CanTrcv_TrcvModeType
 * \arg     OpMode                  Current state of the transceiver
 * \return     E_OK:        The state can be evaluated
 *             E_NOT_OK:    The state could not be evaluated, either because of transceiver error
 *                          or wrong parameters
 * \see
 * \note
 *
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvGetOpMode (CanTrcv_TrcvModeType * OpMode)
{
	uint8  TrcvNo_u8;
	Std_ReturnType RetVal_o = E_NOT_OK;
	uint16 RegVal01_o;
	uint16 SpiPos_u16;
    /*TransceiverId can be derived from CANTRCV_CDD_FCTP_ST. The index of CanTrcv shall be determined manually*/
    uint8 Transceiver = CANTRCV_CDD_FCTP_ST[0].TransceiverId;

	/*Get SPI sequence and channel through SPI CDD Array*/
    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16 = 0u;
	TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;

	// Check if data are valid
    /*Validate the module state*/
	if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_INITDATA_MASK) == 0u)
	{
		// Calculated state out of register values
		RegVal01_o  = CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG01] & CANTRCV_CFG_CDD_SPI_MC_AND_MASK;
	    switch(RegVal01_o)
	    {
	        case CANTRCV_CFG_CDD_SPI_MC_NM_OR_MASK:
	            *OpMode = CANTRCV_TRCVMODE_NORMAL;
	            RetVal_o = E_OK;
	            break;
	        case CANTRCV_CFG_CDD_SPI_MC_SBM_OR_MASK:
	            *OpMode  = CANTRCV_TRCVMODE_STANDBY;
	            RetVal_o = E_OK;
	            break;
	        case CANTRCV_CFG_CDD_SPI_MC_SM_OR_MASK:
	            *OpMode  = CANTRCV_TRCVMODE_SLEEP;
	            RetVal_o = E_OK;
	            break;
	        default:    /* RBA_TRCV_TRCVMODE_STANDBY */
	            break;
	    }
        if(RetVal_o != E_OK)
        {
            CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_GETOPMODE, CANTRCV_E_PARAM_TRCV_WRONG_CONF)
        }
	}
	else
	{

	}
	return RetVal_o;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * This function returns the wakeup reason.
 *
 * \param   CanTrcv_TrcvWakeupReasonType*  reason
 * \arg     reason                      Evaluated wakeup reason
 * \return     E_OK:                    The wakeup reason can be evaluated
 *             E_NOT_OK:                The wakeup reason could not be evaluated, either because of transceiver error
 *                                      or wrong parameters
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvGetBusWuReason (CanTrcv_TrcvWakeupReasonType * reason)
{
	Std_ReturnType RetVal_o = E_NOT_OK;
	uint8  TrcvNo_u8;
	uint8  Trcv_WakePinReg = 1u;
	uint16 mask_u16 = 0;
	uint16 SpiPos_u16;
	uint8 	PncTrcvCDD_Pos_u8;
    /*TransceiverId can be derived from CANTRCV_CDD_FCTP_ST. The index of CanTrcv in CANTRCV_CDD_FCTP_ST shall be determined manually*/
    uint8 Transceiver = CANTRCV_CDD_FCTP_ST[0].TransceiverId;

    /*Get index of this CanTrcv in CANTRCV_PNTRCVCDD_ST*/
    PncTrcvCDD_Pos_u8 = CANTRCV_FCTP_ST[Transceiver].CddNo;

	/*Get SPI sequence and channel through SPI CDD Array*/
    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16 = 0u;
    TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;
	/* Set-up Trcv_WakePinReg check manually*/
	Trcv_WakePinReg = 1u;

	// Check if data are valid
    if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_INITDATA_MASK) == 0u)
    {
        // Calculate Wakeupreason out of register values (RAM mirror)
        *reason = CANTRCV_WU_NOT_SUPPORTED;
        if ((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1B] & CANTRCV_CFG_CDD_SPI_WUX_MASK) != 0u)  // Reg 0x1B: WUF,WUP in Wakeup status
        {
            mask_u16 |= 1u;
        }
        /*Check the local Wake Pin register only if register is avialbe. In TLE9255 this register is aviable*/
        if ((Trcv_WakePinReg == 1u) && ((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1B] & CANTRCV_CFG_CDD_SPI_LWU_MASK) != 0u))  // Reg 0x1B: WAKE pin status
        {
            mask_u16 |= 2u;
        }
        if ((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG18] & CANTRCV_CFG_CDD_SPI_POR_MASK) != 0u)  // Reg 0x18: Power on status
        {
#if (CANTRCV_HW_PN_SUPPORT == STD_ON)
            if((CANTRCV_PNTRCVCDD_ST[PncTrcvCDD_Pos_u8].PnEnabled == FALSE) || (CANTRCV_PNTRCVCDD_ST[PncTrcvCDD_Pos_u8].PowerOnFlag == TRUE))
            {
                mask_u16 |= 4u;
            }
#endif
        }
        switch (mask_u16)
        {
			case 1u:
				*reason = CANTRCV_WU_BY_BUS;
			break;
			case 2u:
				*reason = CANTRCV_WU_BY_PIN;
			break;
			case 3u:
				*reason = CANTRCV_CFG_WU_BY_BUS_AND_PIN;
			break;
			case 4u:
				*reason = CANTRCV_WU_POWER_ON;
			break;
			case 5u:
				*reason = CANTRCV_CFG_WU_BY_BUS_AND_POWER_ON;
			break;
			case 6u:
				*reason = CANTRCV_CFG_WU_BY_PIN_AND_POWER_ON;
			break;
			case 7u:
				*reason = CANTRCV_CFG_WU_BY_BUS_AND_PIN_AND_POWER_ON;
			break;
			default:    // 0 = CANTRCV_WU_NOT_SUPPORTED
				*reason = CANTRCV_WU_NOT_SUPPORTED;
			break;
        }

        RetVal_o = E_OK;
    }
    else
    {
       /*Do nothing*/
    }
    return RetVal_o;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * Enables, disables or clears wake-up events of the Transceiver according to TrcvWakeupMode..
 *
 * \param   CanTrcv_TrcvWakeupModeType  WakeupMode
 * \arg     TrcvWakeupMode            requested wakeup mode
 * \return  E_OK:           The wakeup reason can be changed
 *          E_NOT_OK:       Error orrcured
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvSetWakeupMode (CanTrcv_TrcvWakeupModeType TrcvWakeupMode)
{
	Std_ReturnType RetVal = E_NOT_OK;

    /*TransceiverId can be derived from CANTRCV_CDD_FCTP_ST. The index of CanTrcv in CANTRCV_CDD_FCTP_ST shall be determined manually*/
    uint8 Transceiver = CANTRCV_CDD_FCTP_ST[0].TransceiverId;

	switch(TrcvWakeupMode)
	{
		case CANTRCV_WUMODE_CLEAR:
		{
			uint16 SpiPos_u16;
			uint8  TrcvNo_u8;
			/*Set the global variables */
			/*Get SPI sequence and channel through SPI CDD Array*/
		    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
		    SpiPos_u16 = 0u;
			TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;
			CanTrcv_Prv_CDD_Wakeup_au8[TrcvNo_u8] = 0u; /* 0: no wakeup; 1=wakeup detected */
			/* Set CanTrcv_Prv_TLE9255_SpiState to CANTRCV_TLE9255_SPI_STATE_CLEAR_WUP_MASK*/
			CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_CLEAR_WUP_MASK;
		}
		break;
        case CANTRCV_WUMODE_DISABLE:
        {
        	/*Set the global variables*/
        	CanTrcv_WakeupModeState_ab[Transceiver] = FALSE;
        }
        break;
        default:   // CANTRCV_WUMODE_ENABLE:
        {
            // Set relevant global variables CanTrcv_WakeupModeState_ab
            /* Mode is change as requested (TRCV_WU_ENABLE)  */
        	CanTrcv_WakeupModeState_ab[Transceiver] = TRUE;
        }
        break;
	}
	return RetVal;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * Checks HW for current or previous wakeup and returns value
 * This function notifies the calling function if a wakeup is detected in the Transceiver by returning E_OK else returns E_NOT_OK
 *
 * \return     E_OK:                    The wakeup occured
 *             E_NOT_OK:                The wakeup not occured
 * \see
 * \note       Service is called by underlying CANIF in case a wake up interrupt is detected.
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvCheckWakeup (void)
{
	Std_ReturnType RetVal_o = E_NOT_OK;
	uint8  TrcvNo_u8;
	uint16 SpiPos_u16;

	/*TransceiverId can be derived from CANTRCV_CDD_FCTP_ST. The index of CanTrcv in CANTRCV_CDD_FCTP_ST shall be determined manually*/
    uint8 Transceiver = CANTRCV_CDD_FCTP_ST[0].TransceiverId;

    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16 = 0u;
	TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;
    /* Check if mode allowes wakeup-check - CanTrcv_WakeupModeState_ab*/
	if ( FALSE != CanTrcv_WakeupModeState_ab[Transceiver])
	{
#  if (CANTRCV_RB_CHECKWAKEUP_ASYNC_MODE == CANTRCV_CFG_CHECKWAKEUP_SYNC)

        if( CanTrcv_Prv_CDD_Wakeup_au8[TrcvNo_u8] == 1)   /* 0=no wakeup; 1=wakeup detected */
        {
            // set return value out of result
            RetVal_o = E_OK;
        }
#   if(CANTRCV_ECUM_USED == STD_ON)
            // Check if Wakeupsource is configured
            if(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] != 0u)
            {
                if(E_OK == RetVal_o)  // Check if wakeup detected
                {
                    EcuM_SetWakeupEvent(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
                }
                EcuM_EndCheckWakeup(CanTrcv_WakeupSource_ao[(Transceiver * CANTRCV_WAKEUPSOURCE_PER_TRCV) + CANTRCV_WAKEUPSOURCEREF_OFFSET] );
            }
#   endif
#  else
		// Set global mask to read out wakeup info
		CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_CHECK_WAKEUP_READ;
#  endif
	}
	return RetVal_o;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * Requests to check the status of the wakeup flag from the transceiver hardware.
 *
 * \return     E_OK:                    Check was allowed
 *             E_NOT_OK:                Error in function
 * \see
 * \note    This function is not used as the wakeupflag is read cyclicly in main function
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvCheckWakeFlag (void){
	Std_ReturnType RetVal_o = E_NOT_OK;
#if(CANTRCV_ECUM_USED == STD_ON)
    uint8  TrcvNo_u8;
    uint16 SpiPos_u16;
    /*TransceiverId can be derived from CANTRCV_CDD_FCTP_ST. The index of CanTrcv in CANTRCV_CDD_FCTP_ST shall be determined manually*/
    uint8 Transceiver = CANTRCV_CDD_FCTP_ST[0].TransceiverId;

    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16 = 0u;
	// Check if mode allowes wakeup-check
	if (FALSE != CanTrcv_WakeupModeState_ab[Transceiver])
	{
		// Get relevant configuration parameter
		TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;

		// Check if wakeup was stored in global variable
		if(0 != CanTrcv_Prv_CDD_Wakeup_au8[TrcvNo_u8])
		{
			// Check if Wakeupsource is configured
			if(CANTRCV_SPICDD_ST[SpiPos_u16].WakeupSourceRef != 0u)
			{
				EcuM_SetWakeupEvent(CANTRCV_SPICDD_ST[SpiPos_u16].WakeupSourceRef );
			}
		}
	}
#endif
	// Always give indication as AR4.x Req is wrong. See sequence diagramm in AR4.0 spec
	// As the bits are cyclic read out in main function, this callback can be given sync.
	(void) CanIf_CheckTrcvWakeFlagIndication(Transceiver);
	// Set return value to E_OK
	RetVal_o = E_OK;
	return RetVal_o;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * The API configures the wake-up of the transceiver for Standby and Sleep Mode: Either the CAN
 * transceiver is woken up by a remote wake-up pattern (standard CAN wake-up) or by the
 * configured remote wake-up frame.
 *
 * \param   CanTrcv_PNActivationType    CANTRCV_PN_ENABLED  = 0,    CANTRCV_PN_DISABLED = 1
 * \arg     ActivationState             identifies Transceiver to which the API has to be applied
 * \return      E_OK: Will be returned, if the PN has been changed to the requested configuration.
 *              E_NOT_OK: Will be returned, if the PN configuration change has failed. The previous
 *                        configuration has not been changed.
 * \see
 * \note
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvSetPNActivationState (CanTrcv_PNActivationType ActivationState)
{
    Std_ReturnType RetVal_o = E_OK;
    uint8  TrcvNo_u8;
    uint16 SpiPos_u16;

    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16 = 0u;

	// Get relevant configuration parameter
	TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;

    if( ActivationState == CANTRCV_PN_ENABLED)
    {
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_SET_PNACTIVATE_MASK;
    }
    else    // CANTRCV_PN_DISABLED = 1
    {
        CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_CLEAR_PNACTIVATE_MASK;
    }

    return RetVal_o;
}


Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvReadTrcvTimeoutFlag (CanTrcv_TrcvFlagStateType* FlagState)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;

    /*TransceiverId can be derived from CANTRCV_CDD_FCTP_ST. The index of CanTrcv in CANTRCV_CDD_FCTP_ST shall be determined manually*/
    uint8 Transceiver = CANTRCV_CDD_FCTP_ST[0].TransceiverId;

    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16 = 0u;

    /*Validate the pointer*/
    if(FlagState != NULL_PTR )
    {
        TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;

        // Check for valid register data
        if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_INITDATA_MASK) == 0u)
        {
            // Calculate  parameter FlagState
            *FlagState = CANTRCV_FLAG_CLEARED;
            if((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1C] & CANTRCV_CFG_CDD_SPI_CANTO_MASK) != 0u)
            {
                *FlagState = CANTRCV_FLAG_SET;
            }

            RetVal_o = E_OK;
        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVTIMEOUTFLAG, CANTRCV_E_PARAM_POINTER)

    }
    return RetVal_o;
}

/**
 ***************************************************************************************************
 * \moduledescription
 * Clears the status of the timeout flag in the transceiver hardware.
 *
 * \return     E_OK:                    Check was allowed
 *             E_NOT_OK:                Error in function
 * \see
 * \note  This API shall exist only if CanTrcvHwPnSupport = TRUE..
 *!Reg 63  CBS R/W 0 CAN bus is active
 *                 1 no activity on CAN bus for tto(silence)
 *
 * Reg 22 CBSS R   0 CAN bus active (communication detected on bus)
 *                 1 CAN bus inactive (for longer than tto(silence))
 * Reg 23 CBSE R/W 0 CAN bus silence detection disabled
 * Reg 22  CFS R   0 no TXD dominant timeout event detected
 ***************************************************************************************************
 */
Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvClearTrcvTimeoutFlag (void)
{
	Std_ReturnType RetVal_o = E_NOT_OK;
    uint8  TrcvNo_u8;
    uint16 SpiPos_u16;

    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16  = 0u;
    TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;

    // Set global Flag to start activity in main function
    CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_CLEAR_TIMEOUT_MASK;

    RetVal_o= E_OK;
    return RetVal_o;
}


Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvReadTrcvSilenceFlag (CanTrcv_TrcvFlagStateType* FlagState)
{
    Std_ReturnType RetVal_o = E_NOT_OK;

    uint16 SpiPos_u16;
    uint8  TrcvNo_u8;

    /*TransceiverId can be derived from CANTRCV_CDD_FCTP_ST. The index of CanTrcv in CANTRCV_CDD_FCTP_ST shall be determined manually*/
    uint8 Transceiver = CANTRCV_CDD_FCTP_ST[0].TransceiverId;

    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16  = 0u;
    TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;

    if(FlagState != NULL_PTR)
    {
        // Check for valid register data
        if((CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] & CANTRCV_CDD_SPI_STATE_INITDATA_MASK) == 0u)
        {
            // Calculate  parameter FlagState
            *FlagState = CANTRCV_FLAG_SET;  // Value=0
            if((CanTrcv_Prv_CDD_SpiCtrlRxBuf_ao[TrcvNo_u8][CANTRCV_CFG_CDD_SPI_REG1C] & CANTRCV_CFG_CDD_SPI_CANSIL_MASK) != 0u)
            {
                *FlagState = CANTRCV_FLAG_CLEARED;  // Value 1
            }

            RetVal_o = E_OK;
        }

    }
    else
    {
        CANTRCV_DET_REPORTERROR(Transceiver, CANTRCV_SID_READTRCVSILENCEFLAG, CANTRCV_E_PARAM_POINTER)
    }
    return RetVal_o;
}


Std_ReturnType CanTrcv_rba_TLE9255_CanTrcvClearTrcvWufFlag (void)
{
    Std_ReturnType RetVal_o = E_NOT_OK;
    uint8  TrcvNo_u8;
    uint16 SpiPos_u16;

    /*Manually specify which SPI CDD element in CANTRCV_SPICDD_ST. It should be based on CanTrcv name*/
    SpiPos_u16  = 0u;
	/*Get relevant parameters*/
    TrcvNo_u8   = CANTRCV_SPICDD_ST[SpiPos_u16].No;

    // clear global wakeup information
    CanTrcv_Prv_CDD_Wakeup_au8[TrcvNo_u8] = 0;

    // Set global Flag to start activity in main function
    CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_CLEAR_WUP_MASK;

#if (CANTRCV_CFG_RB_INDICATION_BEHAVIOUR == CANTRCV_INDICATION_IMMEDIATELY)
    CanIf_ClearTrcvWufFlagIndication(0);
#else
    CanTrcv_Prv_CDD_SpiState[TrcvNo_u8] |= CANTRCV_CDD_SPI_STATE_CLEAR_TRCV_WUF_FLAG_INDICATION_MASK;
#endif

    RetVal_o = E_OK;
    return RetVal_o;
}

#define CANTRCV_STOP_SEC_CODE
#include "CanTrcv_MemMap.h"
/* END BSW-15603 */
#endif /*End of #if 0*/
